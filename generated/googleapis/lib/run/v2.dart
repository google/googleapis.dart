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

/// Cloud Run Admin API - v2
///
/// Deploy and manage user provided container images that scale automatically
/// based on incoming requests. The Cloud Run Admin API v1 follows the Knative
/// Serving API specification, while v2 is aligned with Google Cloud AIP-based
/// API standards, as described in https://google.aip.dev/.
///
/// For more information, see <https://cloud.google.com/run/>
///
/// Create an instance of [CloudRunApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsJobsResource]
///       - [ProjectsLocationsJobsExecutionsResource]
///         - [ProjectsLocationsJobsExecutionsTasksResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServicesResource]
///       - [ProjectsLocationsServicesRevisionsResource]
library run.v2;

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

/// Deploy and manage user provided container images that scale automatically
/// based on incoming requests.
///
/// The Cloud Run Admin API v1 follows the Knative Serving API specification,
/// while v2 is aligned with Google Cloud AIP-based API standards, as described
/// in https://google.aip.dev/.
class CloudRunApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudRunApi(http.Client client,
      {core.String rootUrl = 'https://run.googleapis.com/',
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
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsExecutionsResource get executions =>
      ProjectsLocationsJobsExecutionsResource(_requester);

  ProjectsLocationsJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location and project in which this Job should be
  /// created. Format: projects/{project}/locations/{location}, where {project}
  /// can be project id or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [jobId] - Required. The unique identifier for the Job. The name of the job
  /// becomes {parent}/jobs/{job_id}.
  ///
  /// [validateOnly] - Indicates that the request should be validated and
  /// default values populated, without persisting the request or creating any
  /// resources.
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
    GoogleCloudRunV2Job request,
    core.String parent, {
    core.String? jobId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Job. Format:
  /// projects/{project}/locations/{location}/jobs/{job}, where {project} can be
  /// project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [etag] - A system-generated fingerprint for this version of the resource.
  /// May be used to detect modification conflict during updates.
  ///
  /// [validateOnly] - Indicates that the request should be validated without
  /// actually deleting any resources.
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
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a Job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Job. Format:
  /// projects/{project}/locations/{location}/jobs/{job}, where {project} can be
  /// project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2Job> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2Job.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM Access Control policy currently in effect for the given Job.
  ///
  /// This result does not include any inherited policies.
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
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Jobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location and project to list resources on.
  /// Format: projects/{project}/locations/{location}, where {project} can be
  /// project id or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Jobs to return in this call.
  ///
  /// [pageToken] - A page token received from a previous call to ListJobs. All
  /// other parameters must match.
  ///
  /// [showDeleted] - If true, returns deleted (but unexpired) resources along
  /// with active ones.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ListJobsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified name of this Job. Format:
  /// projects/{project}/locations/{location}/jobs/{job}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and if the Job does not exist, it will
  /// create a new one. Caller must have both create and update permissions for
  /// this call if this is set to true.
  ///
  /// [validateOnly] - Indicates that the request should be validated and
  /// default values populated, without persisting the request or updating any
  /// resources.
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
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudRunV2Job request,
    core.String name, {
    core.bool? allowMissing,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Triggers creation of a new Execution of this Job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Job. Format:
  /// projects/{project}/locations/{location}/jobs/{job}, where {project} can be
  /// project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> run(
    GoogleCloudRunV2RunJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM Access control policy for the specified Job.
  ///
  /// Overwrites any existing policy.
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
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified Project.
  ///
  /// There are no permissions required for making this API call.
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
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsExecutionsTasksResource get tasks =>
      ProjectsLocationsJobsExecutionsTasksResource(_requester);

  ProjectsLocationsJobsExecutionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an Execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Execution to delete. Format:
  /// projects/{project}/locations/{location}/jobs/{job}/executions/{execution},
  /// where {project} can be project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [etag] - A system-generated fingerprint for this version of the resource.
  /// This may be used to detect modification conflict during updates.
  ///
  /// [validateOnly] - Indicates that the request should be validated without
  /// actually deleting any resources.
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
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about an Execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Execution. Format:
  /// projects/{project}/locations/{location}/jobs/{job}/executions/{execution},
  /// where {project} can be project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2Execution> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2Execution.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Executions from a Job.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Execution from which the Executions should be
  /// listed. To list all Executions across Jobs, use "-" instead of Job name.
  /// Format: projects/{project}/locations/{location}/jobs/{job}, where
  /// {project} can be project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Executions to return in this call.
  ///
  /// [pageToken] - A page token received from a previous call to
  /// ListExecutions. All other parameters must match.
  ///
  /// [showDeleted] - If true, returns deleted (but unexpired) resources along
  /// with active ones.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ListExecutionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ListExecutionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsExecutionsTasksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsExecutionsTasksResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a Task.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Task. Format:
  /// projects/{project}/locations/{location}/jobs/{job}/executions/{execution}/tasks/{task}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+/executions/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2Task> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2Task.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Tasks from an Execution of a Job.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Execution from which the Tasks should be listed.
  /// To list all Tasks across Executions of a Job, use "-" instead of Execution
  /// name. To list all Tasks across Jobs, use "-" instead of Job name. Format:
  /// projects/{project}/locations/{location}/jobs/{job}/executions/{execution}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Tasks to return in this call.
  ///
  /// [pageToken] - A page token received from a previous call to ListTasks. All
  /// other parameters must match.
  ///
  /// [showDeleted] - If true, returns deleted (but unexpired) resources along
  /// with active ones.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ListTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ListTasksResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ListTasksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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
  /// [name] - Required. To query for all of the operations for a project.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter for matching the completed or in-progress
  /// operations. The supported formats of *filter* are: To query for only
  /// completed operations: done:true To query for only ongoing operations:
  /// done:false Must be empty to query for all of the latest operations for the
  /// given parent project.
  ///
  /// [pageSize] - The maximum number of records that should be returned.
  /// Requested page size cannot exceed 100. If not set or set to less than or
  /// equal to 0, the default page size is 100. .
  ///
  /// [pageToken] - Token identifying which result to start with, which is
  /// returned by a previous list call.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesRevisionsResource get revisions =>
      ProjectsLocationsServicesRevisionsResource(_requester);

  ProjectsLocationsServicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Service in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location and project in which this service should
  /// be created. Format: projects/{project}/locations/{location}, where
  /// {project} can be project id or number. Only lowercase characters, digits,
  /// and hyphens.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [serviceId] - Required. The unique identifier for the Service. It must
  /// begin with letter, and cannot end with hyphen; must contain fewer than 50
  /// characters. The name of the service becomes
  /// {parent}/services/{service_id}.
  ///
  /// [validateOnly] - Indicates that the request should be validated and
  /// default values populated, without persisting the request or creating any
  /// resources.
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
    GoogleCloudRunV2Service request,
    core.String parent, {
    core.String? serviceId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (serviceId != null) 'serviceId': [serviceId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Service.
  ///
  /// This will cause the Service to stop serving traffic and will delete all
  /// revisions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Service. Format:
  /// projects/{project}/locations/{location}/services/{service}, where
  /// {project} can be project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [etag] - A system-generated fingerprint for this version of the resource.
  /// May be used to detect modification conflict during updates.
  ///
  /// [validateOnly] - Indicates that the request should be validated without
  /// actually deleting any resources.
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
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a Service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Service. Format:
  /// projects/{project}/locations/{location}/services/{service}, where
  /// {project} can be project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2Service> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2Service.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM Access Control policy currently in effect for the given Cloud
  /// Run Service.
  ///
  /// This result does not include any inherited policies.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Services.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location and project to list resources on.
  /// Location must be a valid Google Cloud region, and cannot be the "-"
  /// wildcard. Format: projects/{project}/locations/{location}, where {project}
  /// can be project id or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Services to return in this call.
  ///
  /// [pageToken] - A page token received from a previous call to ListServices.
  /// All other parameters must match.
  ///
  /// [showDeleted] - If true, returns deleted (but unexpired) resources along
  /// with active ones.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ListServicesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ListServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified name of this Service. In
  /// CreateServiceRequest, this field is ignored, and instead composed from
  /// CreateServiceRequest.parent and CreateServiceRequest.service_id. Format:
  /// projects/{project}/locations/{location}/services/{service_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and if the Service does not exist, it
  /// will create a new one. Caller must have both create and update permissions
  /// for this call if this is set to true.
  ///
  /// [validateOnly] - Indicates that the request should be validated and
  /// default values populated, without persisting the request or updating any
  /// resources.
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
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudRunV2Service request,
    core.String name, {
    core.bool? allowMissing,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM Access control policy for the specified Service.
  ///
  /// Overwrites any existing policy.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified Project.
  ///
  /// There are no permissions required for making this API call.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesRevisionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesRevisionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a Revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Revision to delete. Format:
  /// projects/{project}/locations/{location}/services/{service}/revisions/{revision}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [etag] - A system-generated fingerprint for this version of the resource.
  /// This may be used to detect modification conflict during updates.
  ///
  /// [validateOnly] - Indicates that the request should be validated without
  /// actually deleting any resources.
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
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a Revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Revision. Format:
  /// projects/{project}/locations/{location}/services/{service}/revisions/{revision}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2Revision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2Revision> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2Revision.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Revisions from a given Service, or from a given location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Service from which the Revisions should be
  /// listed. To list all Revisions across Services, use "-" instead of Service
  /// name. Format: projects/{project}/locations/{location}/services/{service}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of revisions to return in this call.
  ///
  /// [pageToken] - A page token received from a previous call to ListRevisions.
  /// All other parameters must match.
  ///
  /// [showDeleted] - If true, returns deleted (but unexpired) resources along
  /// with active ones.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ListRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ListRevisionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/revisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ListRevisionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Settings for Binary Authorization feature.
class GoogleCloudRunV2BinaryAuthorization {
  /// If present, indicates to use Breakglass using this justification.
  ///
  /// If use_default is False, then it must be empty. For more information on
  /// breakglass, see
  /// https://cloud.google.com/binary-authorization/docs/using-breakglass
  core.String? breakglassJustification;

  /// If True, indicates to use the default project's binary authorization
  /// policy.
  ///
  /// If False, binary authorization will be disabled.
  core.bool? useDefault;

  GoogleCloudRunV2BinaryAuthorization({
    this.breakglassJustification,
    this.useDefault,
  });

  GoogleCloudRunV2BinaryAuthorization.fromJson(core.Map json_)
      : this(
          breakglassJustification: json_.containsKey('breakglassJustification')
              ? json_['breakglassJustification'] as core.String
              : null,
          useDefault: json_.containsKey('useDefault')
              ? json_['useDefault'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (breakglassJustification != null)
          'breakglassJustification': breakglassJustification!,
        if (useDefault != null) 'useDefault': useDefault!,
      };
}

/// Represents a specific Cloud SQL instance.
class GoogleCloudRunV2CloudSqlInstance {
  /// The Cloud SQL instance connection names, as can be found in
  /// https://console.cloud.google.com/sql/instances.
  ///
  /// Visit https://cloud.google.com/sql/docs/mysql/connect-run for more
  /// information on how to connect Cloud SQL and Cloud Run. Format:
  /// {project}:{location}:{instance}
  core.List<core.String>? instances;

  GoogleCloudRunV2CloudSqlInstance({
    this.instances,
  });

  GoogleCloudRunV2CloudSqlInstance.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
      };
}

/// Defines a status condition for a resource.
class GoogleCloudRunV2Condition {
  /// A reason for the execution condition.
  /// Possible string values are:
  /// - "EXECUTION_REASON_UNDEFINED" : Default value.
  /// - "JOB_STATUS_SERVICE_POLLING_ERROR" : Internal system error getting
  /// execution status. System will retry.
  /// - "NON_ZERO_EXIT_CODE" : A task reached its retry limit and the last
  /// attempt failed due to the user container exiting with a non-zero exit
  /// code.
  /// - "CANCELLED" : The execution was cancelled by users.
  core.String? executionReason;

  /// Last time the condition transitioned from one status to another.
  core.String? lastTransitionTime;

  /// Human readable message indicating details about the current status.
  core.String? message;

  /// A common (service-level) reason for this condition.
  /// Possible string values are:
  /// - "COMMON_REASON_UNDEFINED" : Default value.
  /// - "UNKNOWN" : Reason unknown. Further details will be in message.
  /// - "REVISION_FAILED" : Revision creation process failed.
  /// - "PROGRESS_DEADLINE_EXCEEDED" : Timed out waiting for completion.
  /// - "CONTAINER_MISSING" : The container image path is incorrect.
  /// - "CONTAINER_PERMISSION_DENIED" : Insufficient permissions on the
  /// container image.
  /// - "CONTAINER_IMAGE_UNAUTHORIZED" : Container image is not authorized by
  /// policy.
  /// - "CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED" : Container image policy
  /// authorization check failed.
  /// - "ENCRYPTION_KEY_PERMISSION_DENIED" : Insufficient permissions on
  /// encryption key.
  /// - "ENCRYPTION_KEY_CHECK_FAILED" : Permission check on encryption key
  /// failed.
  /// - "SECRETS_ACCESS_CHECK_FAILED" : At least one Access check on secrets
  /// failed.
  /// - "WAITING_FOR_OPERATION" : Waiting for operation to complete.
  /// - "IMMEDIATE_RETRY" : System will retry immediately.
  /// - "POSTPONED_RETRY" : System will retry later; current attempt failed.
  /// - "INTERNAL" : An internal error occurred. Further information may be in
  /// the message.
  core.String? reason;

  /// A reason for the revision condition.
  /// Possible string values are:
  /// - "REVISION_REASON_UNDEFINED" : Default value.
  /// - "PENDING" : Revision in Pending state.
  /// - "RESERVE" : Revision is in Reserve state.
  /// - "RETIRED" : Revision is Retired.
  /// - "RETIRING" : Revision is being retired.
  /// - "RECREATING" : Revision is being recreated.
  /// - "HEALTH_CHECK_CONTAINER_ERROR" : There was a health check error.
  /// - "CUSTOMIZED_PATH_RESPONSE_PENDING" : Health check failed due to user
  /// error from customized path of the container. System will retry.
  /// - "MIN_INSTANCES_NOT_PROVISIONED" : A revision with min_instance_count \>
  /// 0 was created and is reserved, but it was not configured to serve traffic,
  /// so it's not live. This can also happen momentarily during traffic
  /// migration.
  /// - "ACTIVE_REVISION_LIMIT_REACHED" : The maximum allowed number of active
  /// revisions has been reached.
  /// - "NO_DEPLOYMENT" : There was no deployment defined. This value is no
  /// longer used, but Services created in older versions of the API might
  /// contain this value.
  /// - "HEALTH_CHECK_SKIPPED" : A revision's container has no port specified
  /// since the revision is of a manually scaled service with 0 instance count
  /// - "MIN_INSTANCES_WARMING" : A revision with min_instance_count \> 0 was
  /// created and is waiting for enough instances to begin a traffic migration.
  core.String? revisionReason;

  /// How to interpret failures of this condition, one of Error, Warning, Info
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity
  /// - "ERROR" : Error severity.
  /// - "WARNING" : Warning severity.
  /// - "INFO" : Info severity.
  core.String? severity;

  /// State of the condition.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "CONDITION_PENDING" : Transient state: Reconciliation has not started
  /// yet.
  /// - "CONDITION_RECONCILING" : Transient state: reconciliation is still in
  /// progress.
  /// - "CONDITION_FAILED" : Terminal state: Reconciliation did not succeed.
  /// - "CONDITION_SUCCEEDED" : Terminal state: Reconciliation completed
  /// successfully.
  core.String? state;

  /// type is used to communicate the status of the reconciliation process.
  ///
  /// See also:
  /// https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting
  /// Types common to all resources include: * "Ready": True when the Resource
  /// is ready.
  core.String? type;

  GoogleCloudRunV2Condition({
    this.executionReason,
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.revisionReason,
    this.severity,
    this.state,
    this.type,
  });

  GoogleCloudRunV2Condition.fromJson(core.Map json_)
      : this(
          executionReason: json_.containsKey('executionReason')
              ? json_['executionReason'] as core.String
              : null,
          lastTransitionTime: json_.containsKey('lastTransitionTime')
              ? json_['lastTransitionTime'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          revisionReason: json_.containsKey('revisionReason')
              ? json_['revisionReason'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionReason != null) 'executionReason': executionReason!,
        if (lastTransitionTime != null)
          'lastTransitionTime': lastTransitionTime!,
        if (message != null) 'message': message!,
        if (reason != null) 'reason': reason!,
        if (revisionReason != null) 'revisionReason': revisionReason!,
        if (severity != null) 'severity': severity!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// A single application container.
///
/// This specifies both the container to run, the command to run in the
/// container and the arguments to supply to it. Note that additional arguments
/// may be supplied by the system to the container at runtime.
class GoogleCloudRunV2Container {
  /// Arguments to the entrypoint.
  ///
  /// The docker image's CMD is used if this is not provided. Variable
  /// references $(VAR_NAME) are expanded using the container's environment. If
  /// a variable cannot be resolved, the reference in the input string will be
  /// unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie:
  /// $$(VAR_NAME). Escaped references will never be expanded, regardless of
  /// whether the variable exists or not. More info:
  /// https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  core.List<core.String>? args;

  /// Entrypoint array.
  ///
  /// Not executed within a shell. The docker image's ENTRYPOINT is used if this
  /// is not provided. Variable references $(VAR_NAME) are expanded using the
  /// container's environment. If a variable cannot be resolved, the reference
  /// in the input string will be unchanged. The $(VAR_NAME) syntax can be
  /// escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never
  /// be expanded, regardless of whether the variable exists or not. More info:
  /// https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  core.List<core.String>? command;

  /// List of environment variables to set in the container.
  core.List<GoogleCloudRunV2EnvVar>? env;

  /// URL of the Container image in Google Container Registry or Google Artifact
  /// Registry.
  ///
  /// More info: https://kubernetes.io/docs/concepts/containers/images
  ///
  /// Required.
  core.String? image;

  /// Periodic probe of container liveness.
  ///
  /// Container will be restarted if the probe fails. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  GoogleCloudRunV2Probe? livenessProbe;

  /// Name of the container specified as a DNS_LABEL.
  core.String? name;

  /// List of ports to expose from the container.
  ///
  /// Only a single port can be specified. The specified ports must be listening
  /// on all interfaces (0.0.0.0) within the container to be accessible. If
  /// omitted, a port number will be chosen and passed to the container through
  /// the PORT environment variable for the container to listen on.
  core.List<GoogleCloudRunV2ContainerPort>? ports;

  /// Compute Resource requirements by this container.
  ///
  /// More info:
  /// https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  GoogleCloudRunV2ResourceRequirements? resources;

  /// Startup probe of application within the container.
  ///
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe
  /// fails. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  GoogleCloudRunV2Probe? startupProbe;

  /// Volume to mount into the container's filesystem.
  core.List<GoogleCloudRunV2VolumeMount>? volumeMounts;

  /// Container's working directory.
  ///
  /// If not specified, the container runtime's default will be used, which
  /// might be configured in the container image.
  core.String? workingDir;

  GoogleCloudRunV2Container({
    this.args,
    this.command,
    this.env,
    this.image,
    this.livenessProbe,
    this.name,
    this.ports,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  GoogleCloudRunV2Container.fromJson(core.Map json_)
      : this(
          args: json_.containsKey('args')
              ? (json_['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          command: json_.containsKey('command')
              ? (json_['command'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          env: json_.containsKey('env')
              ? (json_['env'] as core.List)
                  .map((value) => GoogleCloudRunV2EnvVar.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          livenessProbe: json_.containsKey('livenessProbe')
              ? GoogleCloudRunV2Probe.fromJson(
                  json_['livenessProbe'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ports: json_.containsKey('ports')
              ? (json_['ports'] as core.List)
                  .map((value) => GoogleCloudRunV2ContainerPort.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: json_.containsKey('resources')
              ? GoogleCloudRunV2ResourceRequirements.fromJson(
                  json_['resources'] as core.Map<core.String, core.dynamic>)
              : null,
          startupProbe: json_.containsKey('startupProbe')
              ? GoogleCloudRunV2Probe.fromJson(
                  json_['startupProbe'] as core.Map<core.String, core.dynamic>)
              : null,
          volumeMounts: json_.containsKey('volumeMounts')
              ? (json_['volumeMounts'] as core.List)
                  .map((value) => GoogleCloudRunV2VolumeMount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          workingDir: json_.containsKey('workingDir')
              ? json_['workingDir'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (command != null) 'command': command!,
        if (env != null) 'env': env!,
        if (image != null) 'image': image!,
        if (livenessProbe != null) 'livenessProbe': livenessProbe!,
        if (name != null) 'name': name!,
        if (ports != null) 'ports': ports!,
        if (resources != null) 'resources': resources!,
        if (startupProbe != null) 'startupProbe': startupProbe!,
        if (volumeMounts != null) 'volumeMounts': volumeMounts!,
        if (workingDir != null) 'workingDir': workingDir!,
      };
}

/// ContainerPort represents a network port in a single container.
class GoogleCloudRunV2ContainerPort {
  /// Port number the container listens on.
  ///
  /// This must be a valid TCP port number, 0 \< container_port \< 65536.
  core.int? containerPort;

  /// If specified, used to specify which protocol to use.
  ///
  /// Allowed values are "http1" and "h2c".
  core.String? name;

  GoogleCloudRunV2ContainerPort({
    this.containerPort,
    this.name,
  });

  GoogleCloudRunV2ContainerPort.fromJson(core.Map json_)
      : this(
          containerPort: json_.containsKey('containerPort')
              ? json_['containerPort'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerPort != null) 'containerPort': containerPort!,
        if (name != null) 'name': name!,
      };
}

/// EnvVar represents an environment variable present in a Container.
class GoogleCloudRunV2EnvVar {
  /// Name of the environment variable.
  ///
  /// Must be a C_IDENTIFIER, and mnay not exceed 32768 characters.
  ///
  /// Required.
  core.String? name;

  /// Variable references $(VAR_NAME) are expanded using the previous defined
  /// environment variables in the container and any route environment
  /// variables.
  ///
  /// If a variable cannot be resolved, the reference in the input string will
  /// be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie:
  /// $$(VAR_NAME). Escaped references will never be expanded, regardless of
  /// whether the variable exists or not. Defaults to "", and the maximum length
  /// is 32768 bytes.
  core.String? value;

  /// Source for the environment variable's value.
  GoogleCloudRunV2EnvVarSource? valueSource;

  GoogleCloudRunV2EnvVar({
    this.name,
    this.value,
    this.valueSource,
  });

  GoogleCloudRunV2EnvVar.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
          valueSource: json_.containsKey('valueSource')
              ? GoogleCloudRunV2EnvVarSource.fromJson(
                  json_['valueSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
        if (valueSource != null) 'valueSource': valueSource!,
      };
}

/// EnvVarSource represents a source for the value of an EnvVar.
class GoogleCloudRunV2EnvVarSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  GoogleCloudRunV2SecretKeySelector? secretKeyRef;

  GoogleCloudRunV2EnvVarSource({
    this.secretKeyRef,
  });

  GoogleCloudRunV2EnvVarSource.fromJson(core.Map json_)
      : this(
          secretKeyRef: json_.containsKey('secretKeyRef')
              ? GoogleCloudRunV2SecretKeySelector.fromJson(
                  json_['secretKeyRef'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secretKeyRef != null) 'secretKeyRef': secretKeyRef!,
      };
}

/// Execution represents the configuration of a single execution.
///
/// A execution an immutable resource that references a container image which is
/// run to completion.
class GoogleCloudRunV2Execution {
  /// KRM-style annotations for the resource.
  core.Map<core.String, core.String>? annotations;

  /// Represents time when the execution was completed.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations.
  ///
  /// Output only.
  core.String? completionTime;

  /// The Condition of this Execution, containing its readiness status, and
  /// detailed error information in case it did not reach the desired state.
  ///
  /// Output only.
  core.List<GoogleCloudRunV2Condition>? conditions;

  /// Represents time when the execution was acknowledged by the execution
  /// controller.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations.
  ///
  /// Output only.
  core.String? createTime;

  /// For a deleted resource, the deletion time.
  ///
  /// It is only populated as a response to a Delete request.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A system-generated fingerprint for this version of the resource.
  ///
  /// May be used to detect modification conflict during updates.
  ///
  /// Output only.
  core.String? etag;

  /// For a deleted resource, the time after which it will be permamently
  /// deleted.
  ///
  /// It is only populated as a response to a Delete request.
  ///
  /// Output only.
  core.String? expireTime;

  /// The number of tasks which reached phase Failed.
  ///
  /// Output only.
  core.int? failedCount;

  /// A number that monotonically increases every time the user modifies the
  /// desired state.
  ///
  /// Output only.
  core.String? generation;

  /// The name of the parent Job.
  ///
  /// Output only.
  core.String? job;

  /// KRM-style labels for the resource.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels
  core.Map<core.String, core.String>? labels;

  /// Set the launch stage to a preview stage on write to allow use of preview
  /// features in that stage.
  ///
  /// On read, describes whether the resource uses preview features. Launch
  /// Stages are defined at
  /// [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// The unique name of this Execution.
  ///
  /// Output only.
  core.String? name;

  /// The generation of this Execution.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  core.String? observedGeneration;

  /// Specifies the maximum desired number of tasks the execution should run at
  /// any given time.
  ///
  /// Must be \<= task_count. The actual number of tasks running in steady state
  /// will be less than this number when ((.spec.task_count -
  /// .status.successful) \< .spec.parallelism), i.e. when the work left to do
  /// is less than max parallelism. More info:
  /// https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  ///
  /// Output only.
  core.int? parallelism;

  /// Indicates whether the resource's reconciliation is still in progress.
  ///
  /// See comments in `Job.reconciling` for additional information on
  /// reconciliation process in Cloud Run.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The number of actively running tasks.
  ///
  /// Output only.
  core.int? runningCount;

  /// Represents time when the execution started to run.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations.
  ///
  /// Output only.
  core.String? startTime;

  /// The number of tasks which reached phase Succeeded.
  ///
  /// Output only.
  core.int? succeededCount;

  /// Specifies the desired number of tasks the execution should run.
  ///
  /// Setting to 1 means that parallelism is limited to 1 and the success of
  /// that task signals the success of the execution. More info:
  /// https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  ///
  /// Output only.
  core.int? taskCount;

  /// The template used to create tasks for this execution.
  ///
  /// Output only.
  GoogleCloudRunV2TaskTemplate? template;

  /// Server assigned unique identifier for the Execution.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudRunV2Execution({
    this.annotations,
    this.completionTime,
    this.conditions,
    this.createTime,
    this.deleteTime,
    this.etag,
    this.expireTime,
    this.failedCount,
    this.generation,
    this.job,
    this.labels,
    this.launchStage,
    this.name,
    this.observedGeneration,
    this.parallelism,
    this.reconciling,
    this.runningCount,
    this.startTime,
    this.succeededCount,
    this.taskCount,
    this.template,
    this.uid,
    this.updateTime,
  });

  GoogleCloudRunV2Execution.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          completionTime: json_.containsKey('completionTime')
              ? json_['completionTime'] as core.String
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV2Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          failedCount: json_.containsKey('failedCount')
              ? json_['failedCount'] as core.int
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          job: json_.containsKey('job') ? json_['job'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          launchStage: json_.containsKey('launchStage')
              ? json_['launchStage'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.String
              : null,
          parallelism: json_.containsKey('parallelism')
              ? json_['parallelism'] as core.int
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          runningCount: json_.containsKey('runningCount')
              ? json_['runningCount'] as core.int
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          succeededCount: json_.containsKey('succeededCount')
              ? json_['succeededCount'] as core.int
              : null,
          taskCount: json_.containsKey('taskCount')
              ? json_['taskCount'] as core.int
              : null,
          template: json_.containsKey('template')
              ? GoogleCloudRunV2TaskTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (completionTime != null) 'completionTime': completionTime!,
        if (conditions != null) 'conditions': conditions!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (failedCount != null) 'failedCount': failedCount!,
        if (generation != null) 'generation': generation!,
        if (job != null) 'job': job!,
        if (labels != null) 'labels': labels!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (parallelism != null) 'parallelism': parallelism!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (runningCount != null) 'runningCount': runningCount!,
        if (startTime != null) 'startTime': startTime!,
        if (succeededCount != null) 'succeededCount': succeededCount!,
        if (taskCount != null) 'taskCount': taskCount!,
        if (template != null) 'template': template!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Reference to an Execution.
///
/// Use /Executions.GetExecution with the given name to get full execution
/// including the latest status.
class GoogleCloudRunV2ExecutionReference {
  /// Creation timestamp of the execution.
  core.String? completionTime;

  /// Creation timestamp of the execution.
  core.String? createTime;

  /// Name of the execution.
  core.String? name;

  GoogleCloudRunV2ExecutionReference({
    this.completionTime,
    this.createTime,
    this.name,
  });

  GoogleCloudRunV2ExecutionReference.fromJson(core.Map json_)
      : this(
          completionTime: json_.containsKey('completionTime')
              ? json_['completionTime'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionTime != null) 'completionTime': completionTime!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
      };
}

/// ExecutionTemplate describes the data an execution should have when created
/// from a template.
class GoogleCloudRunV2ExecutionTemplate {
  /// KRM-style annotations for the resource.
  ///
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system annotations in v1 now have a corresponding field in v2
  /// ExecutionTemplate.
  core.Map<core.String, core.String>? annotations;

  /// KRM-style labels for the resource.
  ///
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system labels in v1 now have a corresponding field in v2
  /// ExecutionTemplate.
  core.Map<core.String, core.String>? labels;

  /// Specifies the maximum desired number of tasks the execution should run at
  /// given time.
  ///
  /// Must be \<= task_count. When the job is run, if this field is 0 or unset,
  /// the maximum possible value will be used for that execution. The actual
  /// number of tasks running in steady state will be less than this number when
  /// there are fewer tasks waiting to be completed remaining, i.e. when the
  /// work left to do is less than max parallelism.
  core.int? parallelism;

  /// Specifies the desired number of tasks the execution should run.
  ///
  /// Setting to 1 means that parallelism is limited to 1 and the success of
  /// that task signals the success of the execution. More info:
  /// https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  core.int? taskCount;

  /// Describes the task(s) that will be created when executing an execution.
  ///
  /// Required.
  GoogleCloudRunV2TaskTemplate? template;

  GoogleCloudRunV2ExecutionTemplate({
    this.annotations,
    this.labels,
    this.parallelism,
    this.taskCount,
    this.template,
  });

  GoogleCloudRunV2ExecutionTemplate.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          parallelism: json_.containsKey('parallelism')
              ? json_['parallelism'] as core.int
              : null,
          taskCount: json_.containsKey('taskCount')
              ? json_['taskCount'] as core.int
              : null,
          template: json_.containsKey('template')
              ? GoogleCloudRunV2TaskTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (labels != null) 'labels': labels!,
        if (parallelism != null) 'parallelism': parallelism!,
        if (taskCount != null) 'taskCount': taskCount!,
        if (template != null) 'template': template!,
      };
}

/// GRPCAction describes an action involving a GRPC port.
class GoogleCloudRunV2GRPCAction {
  /// Port number of the gRPC service.
  ///
  /// Number must be in the range 1 to 65535. If not specified, defaults to
  /// 8080.
  core.int? port;

  /// Service is the name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  ///
  /// If this is not specified, the default behavior is defined by gRPC.
  core.String? service;

  GoogleCloudRunV2GRPCAction({
    this.port,
    this.service,
  });

  GoogleCloudRunV2GRPCAction.fromJson(core.Map json_)
      : this(
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (port != null) 'port': port!,
        if (service != null) 'service': service!,
      };
}

/// HTTPGetAction describes an action based on HTTP Get requests.
class GoogleCloudRunV2HTTPGetAction {
  /// Custom headers to set in the request.
  ///
  /// HTTP allows repeated headers.
  core.List<GoogleCloudRunV2HTTPHeader>? httpHeaders;

  /// Path to access on the HTTP server.
  ///
  /// Defaults to '/'.
  core.String? path;

  GoogleCloudRunV2HTTPGetAction({
    this.httpHeaders,
    this.path,
  });

  GoogleCloudRunV2HTTPGetAction.fromJson(core.Map json_)
      : this(
          httpHeaders: json_.containsKey('httpHeaders')
              ? (json_['httpHeaders'] as core.List)
                  .map((value) => GoogleCloudRunV2HTTPHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpHeaders != null) 'httpHeaders': httpHeaders!,
        if (path != null) 'path': path!,
      };
}

/// HTTPHeader describes a custom header to be used in HTTP probes
typedef GoogleCloudRunV2HTTPHeader = $HTTPHeader;

/// Job represents the configuration of a single job, which references a
/// container image that is run to completion.
class GoogleCloudRunV2Job {
  /// KRM-style annotations for the resource.
  ///
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata. They are not queryable and should be preserved when
  /// modifying objects. Cloud Run API v2 does not support annotations with
  /// `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system annotations in v1 now have a corresponding field in v2 Job. This
  /// field follows Kubernetes annotations' namespacing, limits, and rules. More
  /// info: https://kubernetes.io/docs/user-guide/annotations
  core.Map<core.String, core.String>? annotations;

  /// Settings for the Binary Authorization feature.
  GoogleCloudRunV2BinaryAuthorization? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  core.String? client;

  /// Arbitrary version identifier for the API client.
  core.String? clientVersion;

  /// The Conditions of all other associated sub-resources.
  ///
  /// They contain additional diagnostics information in case the Job does not
  /// reach its desired state. See comments in `reconciling` for additional
  /// information on reconciliation process in Cloud Run.
  ///
  /// Output only.
  core.List<GoogleCloudRunV2Condition>? conditions;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Email address of the authenticated creator.
  ///
  /// Output only.
  core.String? creator;

  /// The deletion time.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A system-generated fingerprint for this version of the resource.
  ///
  /// May be used to detect modification conflict during updates.
  ///
  /// Output only.
  core.String? etag;

  /// Number of executions created for this job.
  ///
  /// Output only.
  core.int? executionCount;

  /// For a deleted resource, the time after which it will be permamently
  /// deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// A number that monotonically increases every time the user modifies the
  /// desired state.
  ///
  /// Output only.
  core.String? generation;

  /// KRM-style labels for the resource.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels Cloud Run API v2 does
  /// not support labels with `run.googleapis.com`, `cloud.googleapis.com`,
  /// `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they
  /// will be rejected. All system labels in v1 now have a corresponding field
  /// in v2 Job.
  core.Map<core.String, core.String>? labels;

  /// Email address of the last authenticated modifier.
  ///
  /// Output only.
  core.String? lastModifier;

  /// Name of the last created execution.
  ///
  /// Output only.
  GoogleCloudRunV2ExecutionReference? latestCreatedExecution;

  /// The launch stage as defined by
  /// [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).
  ///
  /// Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA
  /// is assumed.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// The fully qualified name of this Job.
  ///
  /// Format: projects/{project}/locations/{location}/jobs/{job}
  core.String? name;

  /// The generation of this Job.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  core.String? observedGeneration;

  /// Returns true if the Job is currently being acted upon by the system to
  /// bring it into the desired state.
  ///
  /// When a new Job is created, or an existing one is updated, Cloud Run will
  /// asynchronously perform all necessary steps to bring the Job to the desired
  /// state. This process is called reconciliation. While reconciliation is in
  /// process, `observed_generation` and `latest_succeeded_execution`, will have
  /// transient values that might mismatch the intended state: Once
  /// reconciliation is over (and this field is false), there are two possible
  /// outcomes: reconciliation succeeded and the state matches the Job, or there
  /// was an error, and reconciliation failed. This state can be found in
  /// `terminal_condition.state`. If reconciliation succeeded, the following
  /// fields will match: `observed_generation` and `generation`,
  /// `latest_succeeded_execution` and `latest_created_execution`. If
  /// reconciliation failed, `observed_generation` and
  /// `latest_succeeded_execution` will have the state of the last succeeded
  /// execution or empty for newly created Job. Additional information on the
  /// failure can be found in `terminal_condition` and `conditions`.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The template used to create executions for this Job.
  ///
  /// Required.
  GoogleCloudRunV2ExecutionTemplate? template;

  /// The Condition of this Job, containing its readiness status, and detailed
  /// error information in case it did not reach the desired state.
  ///
  /// Output only.
  GoogleCloudRunV2Condition? terminalCondition;

  /// Server assigned unique identifier for the Execution.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudRunV2Job({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.deleteTime,
    this.etag,
    this.executionCount,
    this.expireTime,
    this.generation,
    this.labels,
    this.lastModifier,
    this.latestCreatedExecution,
    this.launchStage,
    this.name,
    this.observedGeneration,
    this.reconciling,
    this.template,
    this.terminalCondition,
    this.uid,
    this.updateTime,
  });

  GoogleCloudRunV2Job.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          binaryAuthorization: json_.containsKey('binaryAuthorization')
              ? GoogleCloudRunV2BinaryAuthorization.fromJson(
                  json_['binaryAuthorization']
                      as core.Map<core.String, core.dynamic>)
              : null,
          client: json_.containsKey('client')
              ? json_['client'] as core.String
              : null,
          clientVersion: json_.containsKey('clientVersion')
              ? json_['clientVersion'] as core.String
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV2Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? json_['creator'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          executionCount: json_.containsKey('executionCount')
              ? json_['executionCount'] as core.int
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lastModifier: json_.containsKey('lastModifier')
              ? json_['lastModifier'] as core.String
              : null,
          latestCreatedExecution: json_.containsKey('latestCreatedExecution')
              ? GoogleCloudRunV2ExecutionReference.fromJson(
                  json_['latestCreatedExecution']
                      as core.Map<core.String, core.dynamic>)
              : null,
          launchStage: json_.containsKey('launchStage')
              ? json_['launchStage'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.String
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          template: json_.containsKey('template')
              ? GoogleCloudRunV2ExecutionTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>)
              : null,
          terminalCondition: json_.containsKey('terminalCondition')
              ? GoogleCloudRunV2Condition.fromJson(json_['terminalCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (binaryAuthorization != null)
          'binaryAuthorization': binaryAuthorization!,
        if (client != null) 'client': client!,
        if (clientVersion != null) 'clientVersion': clientVersion!,
        if (conditions != null) 'conditions': conditions!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (etag != null) 'etag': etag!,
        if (executionCount != null) 'executionCount': executionCount!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (generation != null) 'generation': generation!,
        if (labels != null) 'labels': labels!,
        if (lastModifier != null) 'lastModifier': lastModifier!,
        if (latestCreatedExecution != null)
          'latestCreatedExecution': latestCreatedExecution!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (template != null) 'template': template!,
        if (terminalCondition != null) 'terminalCondition': terminalCondition!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Response message containing a list of Executions.
class GoogleCloudRunV2ListExecutionsResponse {
  /// The resulting list of Executions.
  core.List<GoogleCloudRunV2Execution>? executions;

  /// A token indicating there are more items than page_size.
  ///
  /// Use it in the next ListExecutions request to continue.
  core.String? nextPageToken;

  GoogleCloudRunV2ListExecutionsResponse({
    this.executions,
    this.nextPageToken,
  });

  GoogleCloudRunV2ListExecutionsResponse.fromJson(core.Map json_)
      : this(
          executions: json_.containsKey('executions')
              ? (json_['executions'] as core.List)
                  .map((value) => GoogleCloudRunV2Execution.fromJson(
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

/// Response message containing a list of Jobs.
class GoogleCloudRunV2ListJobsResponse {
  /// The resulting list of Jobs.
  core.List<GoogleCloudRunV2Job>? jobs;

  /// A token indicating there are more items than page_size.
  ///
  /// Use it in the next ListJobs request to continue.
  core.String? nextPageToken;

  GoogleCloudRunV2ListJobsResponse({
    this.jobs,
    this.nextPageToken,
  });

  GoogleCloudRunV2ListJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => GoogleCloudRunV2Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message containing a list of Revisions.
class GoogleCloudRunV2ListRevisionsResponse {
  /// A token indicating there are more items than page_size.
  ///
  /// Use it in the next ListRevisions request to continue.
  core.String? nextPageToken;

  /// The resulting list of Revisions.
  core.List<GoogleCloudRunV2Revision>? revisions;

  GoogleCloudRunV2ListRevisionsResponse({
    this.nextPageToken,
    this.revisions,
  });

  GoogleCloudRunV2ListRevisionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          revisions: json_.containsKey('revisions')
              ? (json_['revisions'] as core.List)
                  .map((value) => GoogleCloudRunV2Revision.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (revisions != null) 'revisions': revisions!,
      };
}

/// Response message containing a list of Services.
class GoogleCloudRunV2ListServicesResponse {
  /// A token indicating there are more items than page_size.
  ///
  /// Use it in the next ListServices request to continue.
  core.String? nextPageToken;

  /// The resulting list of Services.
  core.List<GoogleCloudRunV2Service>? services;

  GoogleCloudRunV2ListServicesResponse({
    this.nextPageToken,
    this.services,
  });

  GoogleCloudRunV2ListServicesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          services: json_.containsKey('services')
              ? (json_['services'] as core.List)
                  .map((value) => GoogleCloudRunV2Service.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (services != null) 'services': services!,
      };
}

/// Response message containing a list of Tasks.
class GoogleCloudRunV2ListTasksResponse {
  /// A token indicating there are more items than page_size.
  ///
  /// Use it in the next ListTasks request to continue.
  core.String? nextPageToken;

  /// The resulting list of Tasks.
  core.List<GoogleCloudRunV2Task>? tasks;

  GoogleCloudRunV2ListTasksResponse({
    this.nextPageToken,
    this.tasks,
  });

  GoogleCloudRunV2ListTasksResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tasks: json_.containsKey('tasks')
              ? (json_['tasks'] as core.List)
                  .map((value) => GoogleCloudRunV2Task.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tasks != null) 'tasks': tasks!,
      };
}

/// Probe describes a health check to be performed against a container to
/// determine whether it is alive or ready to receive traffic.
class GoogleCloudRunV2Probe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded.
  ///
  /// Defaults to 3. Minimum value is 1.
  core.int? failureThreshold;

  /// GRPC specifies an action involving a gRPC port.
  ///
  /// Exactly one of httpGet, tcpSocket, or grpc must be specified.
  GoogleCloudRunV2GRPCAction? grpc;

  /// HTTPGet specifies the http request to perform.
  ///
  /// Exactly one of httpGet, tcpSocket, or grpc must be specified.
  GoogleCloudRunV2HTTPGetAction? httpGet;

  /// Number of seconds after the container has started before the probe is
  /// initiated.
  ///
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness
  /// probe is 3600. Maximum value for startup probe is 240. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  core.int? initialDelaySeconds;

  /// How often (in seconds) to perform the probe.
  ///
  /// Default to 10 seconds. Minimum value is 1. Maximum value for liveness
  /// probe is 3600. Maximum value for startup probe is 240. Must be greater or
  /// equal than timeout_seconds.
  core.int? periodSeconds;

  /// TCPSocket specifies an action involving a TCP port.
  ///
  /// Exactly one of httpGet, tcpSocket, or grpc must be specified.
  GoogleCloudRunV2TCPSocketAction? tcpSocket;

  /// Number of seconds after which the probe times out.
  ///
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be
  /// smaller than period_seconds. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  core.int? timeoutSeconds;

  GoogleCloudRunV2Probe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  GoogleCloudRunV2Probe.fromJson(core.Map json_)
      : this(
          failureThreshold: json_.containsKey('failureThreshold')
              ? json_['failureThreshold'] as core.int
              : null,
          grpc: json_.containsKey('grpc')
              ? GoogleCloudRunV2GRPCAction.fromJson(
                  json_['grpc'] as core.Map<core.String, core.dynamic>)
              : null,
          httpGet: json_.containsKey('httpGet')
              ? GoogleCloudRunV2HTTPGetAction.fromJson(
                  json_['httpGet'] as core.Map<core.String, core.dynamic>)
              : null,
          initialDelaySeconds: json_.containsKey('initialDelaySeconds')
              ? json_['initialDelaySeconds'] as core.int
              : null,
          periodSeconds: json_.containsKey('periodSeconds')
              ? json_['periodSeconds'] as core.int
              : null,
          tcpSocket: json_.containsKey('tcpSocket')
              ? GoogleCloudRunV2TCPSocketAction.fromJson(
                  json_['tcpSocket'] as core.Map<core.String, core.dynamic>)
              : null,
          timeoutSeconds: json_.containsKey('timeoutSeconds')
              ? json_['timeoutSeconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failureThreshold != null) 'failureThreshold': failureThreshold!,
        if (grpc != null) 'grpc': grpc!,
        if (httpGet != null) 'httpGet': httpGet!,
        if (initialDelaySeconds != null)
          'initialDelaySeconds': initialDelaySeconds!,
        if (periodSeconds != null) 'periodSeconds': periodSeconds!,
        if (tcpSocket != null) 'tcpSocket': tcpSocket!,
        if (timeoutSeconds != null) 'timeoutSeconds': timeoutSeconds!,
      };
}

/// ResourceRequirements describes the compute resource requirements.
class GoogleCloudRunV2ResourceRequirements {
  /// Determines whether CPU should be throttled or not outside of requests.
  core.bool? cpuIdle;

  /// Only memory and CPU are supported.
  ///
  /// Note: The only supported values for CPU are '1', '2', '4', and '8'.
  /// Setting 4 CPU requires at least 2Gi of memory. The values of the map is
  /// string form of the 'quantity' k8s type:
  /// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  core.Map<core.String, core.String>? limits;

  GoogleCloudRunV2ResourceRequirements({
    this.cpuIdle,
    this.limits,
  });

  GoogleCloudRunV2ResourceRequirements.fromJson(core.Map json_)
      : this(
          cpuIdle: json_.containsKey('cpuIdle')
              ? json_['cpuIdle'] as core.bool
              : null,
          limits: json_.containsKey('limits')
              ? (json_['limits'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuIdle != null) 'cpuIdle': cpuIdle!,
        if (limits != null) 'limits': limits!,
      };
}

/// A Revision is an immutable snapshot of code and configuration.
///
/// A Revision references a container image. Revisions are only created by
/// updates to its parent Service.
class GoogleCloudRunV2Revision {
  /// KRM-style annotations for the resource.
  core.Map<core.String, core.String>? annotations;

  /// The Condition of this Revision, containing its readiness status, and
  /// detailed error information in case it did not reach a serving state.
  ///
  /// Output only.
  core.List<GoogleCloudRunV2Condition>? conditions;

  /// Holds the single container that defines the unit of execution for this
  /// Revision.
  core.List<GoogleCloudRunV2Container>? containers;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// For a deleted resource, the deletion time.
  ///
  /// It is only populated as a response to a Delete request.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt
  /// this container image.
  ///
  /// For more information, go to
  /// https://cloud.google.com/run/docs/securing/using-cmek
  core.String? encryptionKey;

  /// A system-generated fingerprint for this version of the resource.
  ///
  /// May be used to detect modification conflict during updates.
  ///
  /// Output only.
  core.String? etag;

  /// The execution environment being used to host this Revision.
  /// Possible string values are:
  /// - "EXECUTION_ENVIRONMENT_UNSPECIFIED" : Unspecified
  /// - "EXECUTION_ENVIRONMENT_GEN1" : Uses the First Generation environment.
  /// - "EXECUTION_ENVIRONMENT_GEN2" : Uses Second Generation environment.
  core.String? executionEnvironment;

  /// For a deleted resource, the time after which it will be permamently
  /// deleted.
  ///
  /// It is only populated as a response to a Delete request.
  ///
  /// Output only.
  core.String? expireTime;

  /// A number that monotonically increases every time the user modifies the
  /// desired state.
  ///
  /// Output only.
  core.String? generation;

  /// KRM-style labels for the resource.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels
  core.Map<core.String, core.String>? labels;

  /// Set the launch stage to a preview stage on write to allow use of preview
  /// features in that stage.
  ///
  /// On read, describes whether the resource uses preview features. Launch
  /// Stages are defined at
  /// [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// The Google Console URI to obtain logs for the Revision.
  ///
  /// Output only.
  core.String? logUri;

  /// Sets the maximum number of requests that each serving instance can
  /// receive.
  core.int? maxInstanceRequestConcurrency;

  /// The unique name of this Revision.
  ///
  /// Output only.
  core.String? name;

  /// The generation of this Revision currently serving traffic.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  core.String? observedGeneration;

  /// Indicates whether the resource's reconciliation is still in progress.
  ///
  /// See comments in `Service.reconciling` for additional information on
  /// reconciliation process in Cloud Run.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Scaling settings for this revision.
  GoogleCloudRunV2RevisionScaling? scaling;

  /// The name of the parent service.
  ///
  /// Output only.
  core.String? service;

  /// Email address of the IAM service account associated with the revision of
  /// the service.
  ///
  /// The service account represents the identity of the running revision, and
  /// determines what permissions the revision has.
  core.String? serviceAccount;

  /// Max allowed time for an instance to respond to a request.
  core.String? timeout;

  /// Server assigned unique identifier for the Revision.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  /// A list of Volumes to make available to containers.
  core.List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration for this Revision.
  ///
  /// For more information, visit
  /// https://cloud.google.com/run/docs/configuring/connecting-vpc.
  GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2Revision({
    this.annotations,
    this.conditions,
    this.containers,
    this.createTime,
    this.deleteTime,
    this.encryptionKey,
    this.etag,
    this.executionEnvironment,
    this.expireTime,
    this.generation,
    this.labels,
    this.launchStage,
    this.logUri,
    this.maxInstanceRequestConcurrency,
    this.name,
    this.observedGeneration,
    this.reconciling,
    this.scaling,
    this.service,
    this.serviceAccount,
    this.timeout,
    this.uid,
    this.updateTime,
    this.volumes,
    this.vpcAccess,
  });

  GoogleCloudRunV2Revision.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV2Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          containers: json_.containsKey('containers')
              ? (json_['containers'] as core.List)
                  .map((value) => GoogleCloudRunV2Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          encryptionKey: json_.containsKey('encryptionKey')
              ? json_['encryptionKey'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          executionEnvironment: json_.containsKey('executionEnvironment')
              ? json_['executionEnvironment'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          launchStage: json_.containsKey('launchStage')
              ? json_['launchStage'] as core.String
              : null,
          logUri: json_.containsKey('logUri')
              ? json_['logUri'] as core.String
              : null,
          maxInstanceRequestConcurrency:
              json_.containsKey('maxInstanceRequestConcurrency')
                  ? json_['maxInstanceRequestConcurrency'] as core.int
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.String
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          scaling: json_.containsKey('scaling')
              ? GoogleCloudRunV2RevisionScaling.fromJson(
                  json_['scaling'] as core.Map<core.String, core.dynamic>)
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => GoogleCloudRunV2Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vpcAccess: json_.containsKey('vpcAccess')
              ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (conditions != null) 'conditions': conditions!,
        if (containers != null) 'containers': containers!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (encryptionKey != null) 'encryptionKey': encryptionKey!,
        if (etag != null) 'etag': etag!,
        if (executionEnvironment != null)
          'executionEnvironment': executionEnvironment!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (generation != null) 'generation': generation!,
        if (labels != null) 'labels': labels!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (logUri != null) 'logUri': logUri!,
        if (maxInstanceRequestConcurrency != null)
          'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency!,
        if (name != null) 'name': name!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (scaling != null) 'scaling': scaling!,
        if (service != null) 'service': service!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (timeout != null) 'timeout': timeout!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (volumes != null) 'volumes': volumes!,
        if (vpcAccess != null) 'vpcAccess': vpcAccess!,
      };
}

/// Settings for revision-level scaling settings.
class GoogleCloudRunV2RevisionScaling {
  /// Maximum number of serving instances that this resource should have.
  core.int? maxInstanceCount;

  /// Minimum number of serving instances that this resource should have.
  core.int? minInstanceCount;

  GoogleCloudRunV2RevisionScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
  });

  GoogleCloudRunV2RevisionScaling.fromJson(core.Map json_)
      : this(
          maxInstanceCount: json_.containsKey('maxInstanceCount')
              ? json_['maxInstanceCount'] as core.int
              : null,
          minInstanceCount: json_.containsKey('minInstanceCount')
              ? json_['minInstanceCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxInstanceCount != null) 'maxInstanceCount': maxInstanceCount!,
        if (minInstanceCount != null) 'minInstanceCount': minInstanceCount!,
      };
}

/// RevisionTemplate describes the data a revision should have when created from
/// a template.
class GoogleCloudRunV2RevisionTemplate {
  /// KRM-style annotations for the resource.
  ///
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system annotations in v1 now have a corresponding field in v2
  /// RevisionTemplate.
  core.Map<core.String, core.String>? annotations;

  /// Holds the single container that defines the unit of execution for this
  /// Revision.
  core.List<GoogleCloudRunV2Container>? containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt
  /// this container image.
  ///
  /// For more information, go to
  /// https://cloud.google.com/run/docs/securing/using-cmek
  core.String? encryptionKey;

  /// The sandbox environment to host this Revision.
  /// Possible string values are:
  /// - "EXECUTION_ENVIRONMENT_UNSPECIFIED" : Unspecified
  /// - "EXECUTION_ENVIRONMENT_GEN1" : Uses the First Generation environment.
  /// - "EXECUTION_ENVIRONMENT_GEN2" : Uses Second Generation environment.
  core.String? executionEnvironment;

  /// KRM-style labels for the resource.
  ///
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  core.Map<core.String, core.String>? labels;

  /// Sets the maximum number of requests that each serving instance can
  /// receive.
  core.int? maxInstanceRequestConcurrency;

  /// The unique name for the revision.
  ///
  /// If this field is omitted, it will be automatically generated based on the
  /// Service name.
  core.String? revision;

  /// Scaling settings for this Revision.
  GoogleCloudRunV2RevisionScaling? scaling;

  /// Email address of the IAM service account associated with the revision of
  /// the service.
  ///
  /// The service account represents the identity of the running revision, and
  /// determines what permissions the revision has. If not provided, the
  /// revision will use the project's default service account.
  core.String? serviceAccount;

  /// Max allowed time for an instance to respond to a request.
  core.String? timeout;

  /// A list of Volumes to make available to containers.
  core.List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration to use for this Revision.
  ///
  /// For more information, visit
  /// https://cloud.google.com/run/docs/configuring/connecting-vpc.
  GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2RevisionTemplate({
    this.annotations,
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.labels,
    this.maxInstanceRequestConcurrency,
    this.revision,
    this.scaling,
    this.serviceAccount,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  GoogleCloudRunV2RevisionTemplate.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          containers: json_.containsKey('containers')
              ? (json_['containers'] as core.List)
                  .map((value) => GoogleCloudRunV2Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          encryptionKey: json_.containsKey('encryptionKey')
              ? json_['encryptionKey'] as core.String
              : null,
          executionEnvironment: json_.containsKey('executionEnvironment')
              ? json_['executionEnvironment'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          maxInstanceRequestConcurrency:
              json_.containsKey('maxInstanceRequestConcurrency')
                  ? json_['maxInstanceRequestConcurrency'] as core.int
                  : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.String
              : null,
          scaling: json_.containsKey('scaling')
              ? GoogleCloudRunV2RevisionScaling.fromJson(
                  json_['scaling'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => GoogleCloudRunV2Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vpcAccess: json_.containsKey('vpcAccess')
              ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (containers != null) 'containers': containers!,
        if (encryptionKey != null) 'encryptionKey': encryptionKey!,
        if (executionEnvironment != null)
          'executionEnvironment': executionEnvironment!,
        if (labels != null) 'labels': labels!,
        if (maxInstanceRequestConcurrency != null)
          'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency!,
        if (revision != null) 'revision': revision!,
        if (scaling != null) 'scaling': scaling!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (timeout != null) 'timeout': timeout!,
        if (volumes != null) 'volumes': volumes!,
        if (vpcAccess != null) 'vpcAccess': vpcAccess!,
      };
}

/// Request message to create a new Execution of a Job.
class GoogleCloudRunV2RunJobRequest {
  /// A system-generated fingerprint for this version of the resource.
  ///
  /// May be used to detect modification conflict during updates.
  core.String? etag;

  /// Indicates that the request should be validated without actually deleting
  /// any resources.
  core.bool? validateOnly;

  GoogleCloudRunV2RunJobRequest({
    this.etag,
    this.validateOnly,
  });

  GoogleCloudRunV2RunJobRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// SecretEnvVarSource represents a source for the value of an EnvVar.
class GoogleCloudRunV2SecretKeySelector {
  /// The name of the secret in Cloud Secret Manager.
  ///
  /// Format: {secret_name} if the secret is in the same project.
  /// projects/{project}/secrets/{secret_name} if the secret is in a different
  /// project.
  ///
  /// Required.
  core.String? secret;

  /// The Cloud Secret Manager secret version.
  ///
  /// Can be 'latest' for the latest version, an integer for a specific version,
  /// or a version alias.
  core.String? version;

  GoogleCloudRunV2SecretKeySelector({
    this.secret,
    this.version,
  });

  GoogleCloudRunV2SecretKeySelector.fromJson(core.Map json_)
      : this(
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secret != null) 'secret': secret!,
        if (version != null) 'version': version!,
      };
}

/// The secret's value will be presented as the content of a file whose name is
/// defined in the item path.
///
/// If no items are defined, the name of the file is the secret.
class GoogleCloudRunV2SecretVolumeSource {
  /// Integer representation of mode bits to use on created files by default.
  ///
  /// Must be a value between 0000 and 0777 (octal), defaulting to 0444.
  /// Directories within the path are not affected by this setting. Notes *
  /// Internally, a umask of 0222 will be applied to any non-zero value. * This
  /// is an integer representation of the mode bits. So, the octal integer value
  /// should look exactly as the chmod numeric notation with a leading zero.
  /// Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511
  /// (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10).
  /// For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). *
  /// This might be in conflict with other options that affect the file mode,
  /// like fsGroup, and the result can be other mode bits set. This might be in
  /// conflict with other options that affect the file mode, like fsGroup, and
  /// as a result, other mode bits could be set.
  core.int? defaultMode;

  /// If unspecified, the volume will expose a file whose name is the secret,
  /// relative to VolumeMount.mount_path.
  ///
  /// If specified, the key will be used as the version to fetch from Cloud
  /// Secret Manager and the path will be the name of the file exposed in the
  /// volume. When items are defined, they must specify a path and a version.
  core.List<GoogleCloudRunV2VersionToPath>? items;

  /// The name of the secret in Cloud Secret Manager.
  ///
  /// Format: {secret} if the secret is in the same project.
  /// projects/{project}/secrets/{secret} if the secret is in a different
  /// project.
  ///
  /// Required.
  core.String? secret;

  GoogleCloudRunV2SecretVolumeSource({
    this.defaultMode,
    this.items,
    this.secret,
  });

  GoogleCloudRunV2SecretVolumeSource.fromJson(core.Map json_)
      : this(
          defaultMode: json_.containsKey('defaultMode')
              ? json_['defaultMode'] as core.int
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => GoogleCloudRunV2VersionToPath.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultMode != null) 'defaultMode': defaultMode!,
        if (items != null) 'items': items!,
        if (secret != null) 'secret': secret!,
      };
}

/// Service acts as a top-level container that manages a set of configurations
/// and revision templates which implement a network service.
///
/// Service exists to provide a singular abstraction which can be access
/// controlled, reasoned about, and which encapsulates software lifecycle
/// decisions such as rollout policy and team resource ownership.
class GoogleCloudRunV2Service {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system annotations in v1 now have a corresponding field in v2 Service.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  core.Map<core.String, core.String>? annotations;

  /// Settings for the Binary Authorization feature.
  GoogleCloudRunV2BinaryAuthorization? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  core.String? client;

  /// Arbitrary version identifier for the API client.
  core.String? clientVersion;

  /// The Conditions of all other associated sub-resources.
  ///
  /// They contain additional diagnostics information in case the Service does
  /// not reach its Serving state. See comments in `reconciling` for additional
  /// information on reconciliation process in Cloud Run.
  ///
  /// Output only.
  core.List<GoogleCloudRunV2Condition>? conditions;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Email address of the authenticated creator.
  ///
  /// Output only.
  core.String? creator;

  /// The deletion time.
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-provided description of the Service.
  ///
  /// This field currently has a 512-character limit.
  core.String? description;

  /// A system-generated fingerprint for this version of the resource.
  ///
  /// May be used to detect modification conflict during updates.
  ///
  /// Output only.
  core.String? etag;

  /// For a deleted resource, the time after which it will be permamently
  /// deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// A number that monotonically increases every time the user modifies the
  /// desired state.
  ///
  /// Please note that unlike v1, this is an int64 value. As with most Google
  /// APIs, its JSON representation will be a `string` instead of an `integer`.
  ///
  /// Output only.
  core.String? generation;

  /// Provides the ingress settings for this Service.
  ///
  /// On output, returns the currently observed ingress settings, or
  /// INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// Possible string values are:
  /// - "INGRESS_TRAFFIC_UNSPECIFIED" : Unspecified
  /// - "INGRESS_TRAFFIC_ALL" : All inbound traffic is allowed.
  /// - "INGRESS_TRAFFIC_INTERNAL_ONLY" : Only internal traffic is allowed.
  /// - "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER" : Both internal and Google
  /// Cloud Load Balancer traffic is allowed.
  core.String? ingress;

  /// Map of string keys and values that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels Cloud Run API v2 does
  /// not support labels with `run.googleapis.com`, `cloud.googleapis.com`,
  /// `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they
  /// will be rejected. All system labels in v1 now have a corresponding field
  /// in v2 Service.
  core.Map<core.String, core.String>? labels;

  /// Email address of the last authenticated modifier.
  ///
  /// Output only.
  core.String? lastModifier;

  /// Name of the last created revision.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  core.String? latestCreatedRevision;

  /// Name of the latest revision that is serving traffic.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  core.String? latestReadyRevision;

  /// The launch stage as defined by
  /// [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).
  ///
  /// Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA
  /// is assumed.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// The fully qualified name of this Service.
  ///
  /// In CreateServiceRequest, this field is ignored, and instead composed from
  /// CreateServiceRequest.parent and CreateServiceRequest.service_id. Format:
  /// projects/{project}/locations/{location}/services/{service_id}
  core.String? name;

  /// The generation of this Service currently serving traffic.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run. Please note that unlike v1, this is an int64 value.
  /// As with most Google APIs, its JSON representation will be a `string`
  /// instead of an `integer`.
  ///
  /// Output only.
  core.String? observedGeneration;

  /// Returns true if the Service is currently being acted upon by the system to
  /// bring it into the desired state.
  ///
  /// When a new Service is created, or an existing one is updated, Cloud Run
  /// will asynchronously perform all necessary steps to bring the Service to
  /// the desired serving state. This process is called reconciliation. While
  /// reconciliation is in process, `observed_generation`,
  /// `latest_ready_revison`, `traffic_statuses`, and `uri` will have transient
  /// values that might mismatch the intended state: Once reconciliation is over
  /// (and this field is false), there are two possible outcomes: reconciliation
  /// succeeded and the serving state matches the Service, or there was an
  /// error, and reconciliation failed. This state can be found in
  /// `terminal_condition.state`. If reconciliation succeeded, the following
  /// fields will match: `traffic` and `traffic_statuses`, `observed_generation`
  /// and `generation`, `latest_ready_revision` and `latest_created_revision`.
  /// If reconciliation failed, `traffic_statuses`, `observed_generation`, and
  /// `latest_ready_revision` will have the state of the last serving revision,
  /// or empty for newly created Services. Additional information on the failure
  /// can be found in `terminal_condition` and `conditions`.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The template used to create revisions for this Service.
  ///
  /// Required.
  GoogleCloudRunV2RevisionTemplate? template;

  /// The Condition of this Service, containing its readiness status, and
  /// detailed error information in case it did not reach a serving state.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  GoogleCloudRunV2Condition? terminalCondition;

  /// Specifies how to distribute traffic over a collection of Revisions
  /// belonging to the Service.
  ///
  /// If traffic is empty or not provided, defaults to 100% traffic to the
  /// latest `Ready` Revision.
  core.List<GoogleCloudRunV2TrafficTarget>? traffic;

  /// Detailed status information for corresponding traffic targets.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  core.List<GoogleCloudRunV2TrafficTargetStatus>? trafficStatuses;

  /// Server assigned unique identifier for the trigger.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  /// The main URI in which this Service is serving traffic.
  ///
  /// Output only.
  core.String? uri;

  GoogleCloudRunV2Service({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.deleteTime,
    this.description,
    this.etag,
    this.expireTime,
    this.generation,
    this.ingress,
    this.labels,
    this.lastModifier,
    this.latestCreatedRevision,
    this.latestReadyRevision,
    this.launchStage,
    this.name,
    this.observedGeneration,
    this.reconciling,
    this.template,
    this.terminalCondition,
    this.traffic,
    this.trafficStatuses,
    this.uid,
    this.updateTime,
    this.uri,
  });

  GoogleCloudRunV2Service.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          binaryAuthorization: json_.containsKey('binaryAuthorization')
              ? GoogleCloudRunV2BinaryAuthorization.fromJson(
                  json_['binaryAuthorization']
                      as core.Map<core.String, core.dynamic>)
              : null,
          client: json_.containsKey('client')
              ? json_['client'] as core.String
              : null,
          clientVersion: json_.containsKey('clientVersion')
              ? json_['clientVersion'] as core.String
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV2Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? json_['creator'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          ingress: json_.containsKey('ingress')
              ? json_['ingress'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lastModifier: json_.containsKey('lastModifier')
              ? json_['lastModifier'] as core.String
              : null,
          latestCreatedRevision: json_.containsKey('latestCreatedRevision')
              ? json_['latestCreatedRevision'] as core.String
              : null,
          latestReadyRevision: json_.containsKey('latestReadyRevision')
              ? json_['latestReadyRevision'] as core.String
              : null,
          launchStage: json_.containsKey('launchStage')
              ? json_['launchStage'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.String
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          template: json_.containsKey('template')
              ? GoogleCloudRunV2RevisionTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>)
              : null,
          terminalCondition: json_.containsKey('terminalCondition')
              ? GoogleCloudRunV2Condition.fromJson(json_['terminalCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          traffic: json_.containsKey('traffic')
              ? (json_['traffic'] as core.List)
                  .map((value) => GoogleCloudRunV2TrafficTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          trafficStatuses: json_.containsKey('trafficStatuses')
              ? (json_['trafficStatuses'] as core.List)
                  .map((value) => GoogleCloudRunV2TrafficTargetStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (binaryAuthorization != null)
          'binaryAuthorization': binaryAuthorization!,
        if (client != null) 'client': client!,
        if (clientVersion != null) 'clientVersion': clientVersion!,
        if (conditions != null) 'conditions': conditions!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (generation != null) 'generation': generation!,
        if (ingress != null) 'ingress': ingress!,
        if (labels != null) 'labels': labels!,
        if (lastModifier != null) 'lastModifier': lastModifier!,
        if (latestCreatedRevision != null)
          'latestCreatedRevision': latestCreatedRevision!,
        if (latestReadyRevision != null)
          'latestReadyRevision': latestReadyRevision!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (template != null) 'template': template!,
        if (terminalCondition != null) 'terminalCondition': terminalCondition!,
        if (traffic != null) 'traffic': traffic!,
        if (trafficStatuses != null) 'trafficStatuses': trafficStatuses!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (uri != null) 'uri': uri!,
      };
}

/// TCPSocketAction describes an action based on opening a socket
class GoogleCloudRunV2TCPSocketAction {
  /// Port number to access on the container.
  ///
  /// Must be in the range 1 to 65535. If not specified, defaults to 8080.
  core.int? port;

  GoogleCloudRunV2TCPSocketAction({
    this.port,
  });

  GoogleCloudRunV2TCPSocketAction.fromJson(core.Map json_)
      : this(
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (port != null) 'port': port!,
      };
}

/// Task represents a single run of a container to completion.
class GoogleCloudRunV2Task {
  /// KRM-style annotations for the resource.
  core.Map<core.String, core.String>? annotations;

  /// Represents time when the Task was completed.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations.
  ///
  /// Output only.
  core.String? completionTime;

  /// The Condition of this Task, containing its readiness status, and detailed
  /// error information in case it did not reach the desired state.
  ///
  /// Output only.
  core.List<GoogleCloudRunV2Condition>? conditions;

  /// Holds the single container that defines the unit of execution for this
  /// task.
  core.List<GoogleCloudRunV2Container>? containers;

  /// Represents time when the task was created by the job controller.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations.
  ///
  /// Output only.
  core.String? createTime;

  /// For a deleted resource, the deletion time.
  ///
  /// It is only populated as a response to a Delete request.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt
  /// this container image.
  ///
  /// For more information, go to
  /// https://cloud.google.com/run/docs/securing/using-cmek
  ///
  /// Output only.
  core.String? encryptionKey;

  /// A system-generated fingerprint for this version of the resource.
  ///
  /// May be used to detect modification conflict during updates.
  ///
  /// Output only.
  core.String? etag;

  /// The name of the parent Execution.
  ///
  /// Output only.
  core.String? execution;

  /// The execution environment being used to host this Task.
  /// Possible string values are:
  /// - "EXECUTION_ENVIRONMENT_UNSPECIFIED" : Unspecified
  /// - "EXECUTION_ENVIRONMENT_GEN1" : Uses the First Generation environment.
  /// - "EXECUTION_ENVIRONMENT_GEN2" : Uses Second Generation environment.
  core.String? executionEnvironment;

  /// For a deleted resource, the time after which it will be permamently
  /// deleted.
  ///
  /// It is only populated as a response to a Delete request.
  ///
  /// Output only.
  core.String? expireTime;

  /// A number that monotonically increases every time the user modifies the
  /// desired state.
  ///
  /// Output only.
  core.String? generation;

  /// Index of the Task, unique per execution, and beginning at 0.
  ///
  /// Output only.
  core.int? index;

  /// The name of the parent Job.
  ///
  /// Output only.
  core.String? job;

  /// KRM-style labels for the resource.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels
  core.Map<core.String, core.String>? labels;

  /// Result of the last attempt of this Task.
  ///
  /// Output only.
  GoogleCloudRunV2TaskAttemptResult? lastAttemptResult;

  /// Number of retries allowed per Task, before marking this Task failed.
  core.int? maxRetries;

  /// The unique name of this Task.
  ///
  /// Output only.
  core.String? name;

  /// The generation of this Task.
  ///
  /// See comments in `Job.reconciling` for additional information on
  /// reconciliation process in Cloud Run.
  ///
  /// Output only.
  core.String? observedGeneration;

  /// Indicates whether the resource's reconciliation is still in progress.
  ///
  /// See comments in `Job.reconciling` for additional information on
  /// reconciliation process in Cloud Run.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The number of times this Task was retried.
  ///
  /// Tasks are retried when they fail up to the maxRetries limit.
  ///
  /// Output only.
  core.int? retried;

  /// Email address of the IAM service account associated with the Task of a
  /// Job.
  ///
  /// The service account represents the identity of the running task, and
  /// determines what permissions the task has. If not provided, the task will
  /// use the project's default service account.
  core.String? serviceAccount;

  /// Represents time when the task started to run.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations.
  ///
  /// Output only.
  core.String? startTime;

  /// Max allowed time duration the Task may be active before the system will
  /// actively try to mark it failed and kill associated containers.
  ///
  /// This applies per attempt of a task, meaning each retry can run for the
  /// full timeout.
  core.String? timeout;

  /// Server assigned unique identifier for the Task.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  /// A list of Volumes to make available to containers.
  core.List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration to use for this Task.
  ///
  /// For more information, visit
  /// https://cloud.google.com/run/docs/configuring/connecting-vpc.
  ///
  /// Output only.
  GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2Task({
    this.annotations,
    this.completionTime,
    this.conditions,
    this.containers,
    this.createTime,
    this.deleteTime,
    this.encryptionKey,
    this.etag,
    this.execution,
    this.executionEnvironment,
    this.expireTime,
    this.generation,
    this.index,
    this.job,
    this.labels,
    this.lastAttemptResult,
    this.maxRetries,
    this.name,
    this.observedGeneration,
    this.reconciling,
    this.retried,
    this.serviceAccount,
    this.startTime,
    this.timeout,
    this.uid,
    this.updateTime,
    this.volumes,
    this.vpcAccess,
  });

  GoogleCloudRunV2Task.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          completionTime: json_.containsKey('completionTime')
              ? json_['completionTime'] as core.String
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV2Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          containers: json_.containsKey('containers')
              ? (json_['containers'] as core.List)
                  .map((value) => GoogleCloudRunV2Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          encryptionKey: json_.containsKey('encryptionKey')
              ? json_['encryptionKey'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          execution: json_.containsKey('execution')
              ? json_['execution'] as core.String
              : null,
          executionEnvironment: json_.containsKey('executionEnvironment')
              ? json_['executionEnvironment'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          job: json_.containsKey('job') ? json_['job'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lastAttemptResult: json_.containsKey('lastAttemptResult')
              ? GoogleCloudRunV2TaskAttemptResult.fromJson(
                  json_['lastAttemptResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maxRetries: json_.containsKey('maxRetries')
              ? json_['maxRetries'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.String
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          retried: json_.containsKey('retried')
              ? json_['retried'] as core.int
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => GoogleCloudRunV2Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vpcAccess: json_.containsKey('vpcAccess')
              ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (completionTime != null) 'completionTime': completionTime!,
        if (conditions != null) 'conditions': conditions!,
        if (containers != null) 'containers': containers!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (encryptionKey != null) 'encryptionKey': encryptionKey!,
        if (etag != null) 'etag': etag!,
        if (execution != null) 'execution': execution!,
        if (executionEnvironment != null)
          'executionEnvironment': executionEnvironment!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (generation != null) 'generation': generation!,
        if (index != null) 'index': index!,
        if (job != null) 'job': job!,
        if (labels != null) 'labels': labels!,
        if (lastAttemptResult != null) 'lastAttemptResult': lastAttemptResult!,
        if (maxRetries != null) 'maxRetries': maxRetries!,
        if (name != null) 'name': name!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (retried != null) 'retried': retried!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (startTime != null) 'startTime': startTime!,
        if (timeout != null) 'timeout': timeout!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (volumes != null) 'volumes': volumes!,
        if (vpcAccess != null) 'vpcAccess': vpcAccess!,
      };
}

/// Result of a task attempt.
class GoogleCloudRunV2TaskAttemptResult {
  /// The exit code of this attempt.
  ///
  /// This may be unset if the container was unable to exit cleanly with a code
  /// due to some other failure. See status field for possible failure details.
  ///
  /// Output only.
  core.int? exitCode;

  /// The status of this attempt.
  ///
  /// If the status code is OK, then the attempt succeeded.
  ///
  /// Output only.
  GoogleRpcStatus? status;

  GoogleCloudRunV2TaskAttemptResult({
    this.exitCode,
    this.status,
  });

  GoogleCloudRunV2TaskAttemptResult.fromJson(core.Map json_)
      : this(
          exitCode: json_.containsKey('exitCode')
              ? json_['exitCode'] as core.int
              : null,
          status: json_.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exitCode != null) 'exitCode': exitCode!,
        if (status != null) 'status': status!,
      };
}

/// TaskTemplate describes the data a task should have when created from a
/// template.
class GoogleCloudRunV2TaskTemplate {
  /// Holds the single container that defines the unit of execution for this
  /// task.
  core.List<GoogleCloudRunV2Container>? containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt
  /// this container image.
  ///
  /// For more information, go to
  /// https://cloud.google.com/run/docs/securing/using-cmek
  core.String? encryptionKey;

  /// The execution environment being used to host this Task.
  /// Possible string values are:
  /// - "EXECUTION_ENVIRONMENT_UNSPECIFIED" : Unspecified
  /// - "EXECUTION_ENVIRONMENT_GEN1" : Uses the First Generation environment.
  /// - "EXECUTION_ENVIRONMENT_GEN2" : Uses Second Generation environment.
  core.String? executionEnvironment;

  /// Number of retries allowed per Task, before marking this Task failed.
  core.int? maxRetries;

  /// Email address of the IAM service account associated with the Task of a
  /// Job.
  ///
  /// The service account represents the identity of the running task, and
  /// determines what permissions the task has. If not provided, the task will
  /// use the project's default service account.
  core.String? serviceAccount;

  /// Max allowed time duration the Task may be active before the system will
  /// actively try to mark it failed and kill associated containers.
  ///
  /// This applies per attempt of a task, meaning each retry can run for the
  /// full timeout.
  core.String? timeout;

  /// A list of Volumes to make available to containers.
  core.List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration to use for this Task.
  ///
  /// For more information, visit
  /// https://cloud.google.com/run/docs/configuring/connecting-vpc.
  GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2TaskTemplate({
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.maxRetries,
    this.serviceAccount,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  GoogleCloudRunV2TaskTemplate.fromJson(core.Map json_)
      : this(
          containers: json_.containsKey('containers')
              ? (json_['containers'] as core.List)
                  .map((value) => GoogleCloudRunV2Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          encryptionKey: json_.containsKey('encryptionKey')
              ? json_['encryptionKey'] as core.String
              : null,
          executionEnvironment: json_.containsKey('executionEnvironment')
              ? json_['executionEnvironment'] as core.String
              : null,
          maxRetries: json_.containsKey('maxRetries')
              ? json_['maxRetries'] as core.int
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => GoogleCloudRunV2Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vpcAccess: json_.containsKey('vpcAccess')
              ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containers != null) 'containers': containers!,
        if (encryptionKey != null) 'encryptionKey': encryptionKey!,
        if (executionEnvironment != null)
          'executionEnvironment': executionEnvironment!,
        if (maxRetries != null) 'maxRetries': maxRetries!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (timeout != null) 'timeout': timeout!,
        if (volumes != null) 'volumes': volumes!,
        if (vpcAccess != null) 'vpcAccess': vpcAccess!,
      };
}

/// Holds a single traffic routing entry for the Service.
///
/// Allocations can be done to a specific Revision name, or pointing to the
/// latest Ready Revision.
class GoogleCloudRunV2TrafficTarget {
  /// Specifies percent of the traffic to this Revision.
  ///
  /// This defaults to zero if unspecified.
  core.int? percent;

  /// Revision to which to send this portion of traffic, if traffic allocation
  /// is by revision.
  core.String? revision;

  /// Indicates a string to be part of the URI to exclusively reference this
  /// target.
  core.String? tag;

  /// The allocation type for this traffic target.
  /// Possible string values are:
  /// - "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED" : Unspecified instance
  /// allocation type.
  /// - "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST" : Allocates instances to the
  /// Service's latest ready Revision.
  /// - "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION" : Allocates instances to a
  /// Revision by name.
  core.String? type;

  GoogleCloudRunV2TrafficTarget({
    this.percent,
    this.revision,
    this.tag,
    this.type,
  });

  GoogleCloudRunV2TrafficTarget.fromJson(core.Map json_)
      : this(
          percent: json_.containsKey('percent')
              ? json_['percent'] as core.int
              : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.String
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percent != null) 'percent': percent!,
        if (revision != null) 'revision': revision!,
        if (tag != null) 'tag': tag!,
        if (type != null) 'type': type!,
      };
}

/// Represents the observed state of a single `TrafficTarget` entry.
class GoogleCloudRunV2TrafficTargetStatus {
  /// Specifies percent of the traffic to this Revision.
  core.int? percent;

  /// Revision to which this traffic is sent.
  core.String? revision;

  /// Indicates the string used in the URI to exclusively reference this target.
  core.String? tag;

  /// The allocation type for this traffic target.
  /// Possible string values are:
  /// - "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED" : Unspecified instance
  /// allocation type.
  /// - "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST" : Allocates instances to the
  /// Service's latest ready Revision.
  /// - "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION" : Allocates instances to a
  /// Revision by name.
  core.String? type;

  /// Displays the target URI.
  core.String? uri;

  GoogleCloudRunV2TrafficTargetStatus({
    this.percent,
    this.revision,
    this.tag,
    this.type,
    this.uri,
  });

  GoogleCloudRunV2TrafficTargetStatus.fromJson(core.Map json_)
      : this(
          percent: json_.containsKey('percent')
              ? json_['percent'] as core.int
              : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.String
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percent != null) 'percent': percent!,
        if (revision != null) 'revision': revision!,
        if (tag != null) 'tag': tag!,
        if (type != null) 'type': type!,
        if (uri != null) 'uri': uri!,
      };
}

/// VersionToPath maps a specific version of a secret to a relative file to
/// mount to, relative to VolumeMount's mount_path.
class GoogleCloudRunV2VersionToPath {
  /// Integer octal mode bits to use on this file, must be a value between 01
  /// and 0777 (octal).
  ///
  /// If 0 or not set, the Volume's default mode will be used. Notes *
  /// Internally, a umask of 0222 will be applied to any non-zero value. * This
  /// is an integer representation of the mode bits. So, the octal integer value
  /// should look exactly as the chmod numeric notation with a leading zero.
  /// Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511
  /// (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10).
  /// For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). *
  /// This might be in conflict with other options that affect the file mode,
  /// like fsGroup, and the result can be other mode bits set.
  core.int? mode;

  /// The relative path of the secret in the container.
  ///
  /// Required.
  core.String? path;

  /// The Cloud Secret Manager secret version.
  ///
  /// Can be 'latest' for the latest value, or an integer or a secret alias for
  /// a specific version.
  core.String? version;

  GoogleCloudRunV2VersionToPath({
    this.mode,
    this.path,
    this.version,
  });

  GoogleCloudRunV2VersionToPath.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.int : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
        if (path != null) 'path': path!,
        if (version != null) 'version': version!,
      };
}

/// Volume represents a named volume in a container.
class GoogleCloudRunV2Volume {
  /// For Cloud SQL volumes, contains the specific instances that should be
  /// mounted.
  ///
  /// Visit https://cloud.google.com/sql/docs/mysql/connect-run for more
  /// information on how to connect Cloud SQL and Cloud Run.
  GoogleCloudRunV2CloudSqlInstance? cloudSqlInstance;

  /// Volume's name.
  ///
  /// Required.
  core.String? name;

  /// Secret represents a secret that should populate this volume.
  ///
  /// More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  GoogleCloudRunV2SecretVolumeSource? secret;

  GoogleCloudRunV2Volume({
    this.cloudSqlInstance,
    this.name,
    this.secret,
  });

  GoogleCloudRunV2Volume.fromJson(core.Map json_)
      : this(
          cloudSqlInstance: json_.containsKey('cloudSqlInstance')
              ? GoogleCloudRunV2CloudSqlInstance.fromJson(
                  json_['cloudSqlInstance']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          secret: json_.containsKey('secret')
              ? GoogleCloudRunV2SecretVolumeSource.fromJson(
                  json_['secret'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSqlInstance != null) 'cloudSqlInstance': cloudSqlInstance!,
        if (name != null) 'name': name!,
        if (secret != null) 'secret': secret!,
      };
}

/// VolumeMount describes a mounting of a Volume within a container.
class GoogleCloudRunV2VolumeMount {
  /// Path within the container at which the volume should be mounted.
  ///
  /// Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must
  /// otherwise be `/cloudsql`. All instances defined in the Volume will be
  /// available as `/cloudsql/[instance]`. For more information on Cloud SQL
  /// volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  ///
  /// Required.
  core.String? mountPath;

  /// This must match the Name of a Volume.
  ///
  /// Required.
  core.String? name;

  GoogleCloudRunV2VolumeMount({
    this.mountPath,
    this.name,
  });

  GoogleCloudRunV2VolumeMount.fromJson(core.Map json_)
      : this(
          mountPath: json_.containsKey('mountPath')
              ? json_['mountPath'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mountPath != null) 'mountPath': mountPath!,
        if (name != null) 'name': name!,
      };
}

/// VPC Access settings.
///
/// For more information on creating a VPC Connector, visit
/// https://cloud.google.com/vpc/docs/configure-serverless-vpc-access For
/// information on how to configure Cloud Run with an existing VPC Connector,
/// visit https://cloud.google.com/run/docs/configuring/connecting-vpc
class GoogleCloudRunV2VpcAccess {
  /// VPC Access connector name.
  ///
  /// Format: projects/{project}/locations/{location}/connectors/{connector},
  /// where {project} can be project id or number.
  core.String? connector;

  /// Traffic VPC egress settings.
  /// Possible string values are:
  /// - "VPC_EGRESS_UNSPECIFIED" : Unspecified
  /// - "ALL_TRAFFIC" : All outbound traffic is routed through the VPC
  /// connector.
  /// - "PRIVATE_RANGES_ONLY" : Only private IP ranges are routed through the
  /// VPC connector.
  core.String? egress;

  GoogleCloudRunV2VpcAccess({
    this.connector,
    this.egress,
  });

  GoogleCloudRunV2VpcAccess.fromJson(core.Map json_)
      : this(
          connector: json_.containsKey('connector')
              ? json_['connector'] as core.String
              : null,
          egress: json_.containsKey('egress')
              ? json_['egress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connector != null) 'connector': connector!,
        if (egress != null) 'egress': egress!,
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
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditLogConfig.fromJson(
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
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

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

  GoogleIamV1Binding({
    this.condition,
    this.members,
    this.role,
  });

  GoogleIamV1Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
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
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

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
  core.List<GoogleIamV1Binding>? bindings;

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

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => GoogleIamV1Binding.fromJson(
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

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  GoogleIamV1Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  GoogleIamV1SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
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

/// Request message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsResponse = $PermissionsResponse;

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
              ? GoogleRpcStatus.fromJson(
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
typedef GoogleTypeExpr = $Expr;
