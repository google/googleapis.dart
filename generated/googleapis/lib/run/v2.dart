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
///     - [ProjectsLocationsBuildsResource]
///     - [ProjectsLocationsJobsResource]
///       - [ProjectsLocationsJobsExecutionsResource]
///         - [ProjectsLocationsJobsExecutionsTasksResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServicesResource]
///       - [ProjectsLocationsServicesRevisionsResource]
///     - [ProjectsLocationsWorkerPoolsResource]
///       - [ProjectsLocationsWorkerPoolsRevisionsResource]
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

  CloudRunApi(
    http.Client client, {
    core.String rootUrl = 'https://run.googleapis.com/',
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

  ProjectsLocationsBuildsResource get builds =>
      ProjectsLocationsBuildsResource(_requester);
  ProjectsLocationsJobsResource get jobs =>
      ProjectsLocationsJobsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);
  ProjectsLocationsWorkerPoolsResource get workerPools =>
      ProjectsLocationsWorkerPoolsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Export image for a given resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource of which image metadata should
  /// be exported. Format:
  /// `projects/{project_id_or_number}/locations/{location}/services/{service}/revisions/{revision}`
  /// for Revision
  /// `projects/{project_id_or_number}/locations/{location}/jobs/{job}/executions/{execution}`
  /// for Execution
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ExportImageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ExportImageResponse> exportImage(
    GoogleCloudRunV2ExportImageRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':exportImage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ExportImageResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Export image metadata for a given resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource of which image metadata should
  /// be exported. Format:
  /// `projects/{project_id_or_number}/locations/{location}/services/{service}/revisions/{revision}`
  /// for Revision
  /// `projects/{project_id_or_number}/locations/{location}/jobs/{job}/executions/{execution}`
  /// for Execution
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2Metadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2Metadata> exportImageMetadata(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':exportImageMetadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2Metadata.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Export generated customer metadata for a given resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource of which metadata should be
  /// exported. Format:
  /// `projects/{project_id_or_number}/locations/{location}/services/{service}`
  /// for Service
  /// `projects/{project_id_or_number}/locations/{location}/services/{service}/revisions/{revision}`
  /// for Revision
  /// `projects/{project_id_or_number}/locations/{location}/jobs/{job}/executions/{execution}`
  /// for Execution {project_id_or_number} may contains domain-scoped project
  /// IDs
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2Metadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2Metadata> exportMetadata(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':exportMetadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2Metadata.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Export generated customer metadata for a given project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the project of which metadata should be
  /// exported. Format: `projects/{project_id_or_number}/locations/{location}`
  /// for Project in a given location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2Metadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2Metadata> exportProjectMetadata(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$name') + ':exportProjectMetadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2Metadata.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBuildsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBuildsResource(commons.ApiRequester client)
    : _requester = client;

  /// Submits a build in a given project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location to build in. Location must
  /// be a region, e.g., 'us-central1' or 'global' if the global builder is to
  /// be used. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2SubmitBuildResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2SubmitBuildResponse> submit(
    GoogleCloudRunV2SubmitBuildRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/builds:submit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2SubmitBuildResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Jobs.
  ///
  /// Results are sorted by creation time, descending.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [allowMissing] - Optional. If set to true, and if the Job does not exist,
  /// it will create a new one. Caller must have both create and update
  /// permissions for this call if this is set to true.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsJobsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsExecutionsTasksResource get tasks =>
      ProjectsLocationsJobsExecutionsTasksResource(_requester);

  ProjectsLocationsJobsExecutionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Cancels an Execution.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Execution to cancel. Format:
  /// `projects/{project}/locations/{location}/jobs/{job}/executions/{execution}`,
  /// where `{project}` can be project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+/executions/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> cancel(
    GoogleCloudRunV2CancelExecutionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an Execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Execution to delete. Format:
  /// `projects/{project}/locations/{location}/jobs/{job}/executions/{execution}`,
  /// where `{project}` can be project id or number.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Read the status of an image export operation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource of which image export
  /// operation status has to be fetched. Format:
  /// `projects/{project_id_or_number}/locations/{location}/services/{service}/revisions/{revision}`
  /// for Revision
  /// `projects/{project_id_or_number}/locations/{location}/jobs/{job}/executions/{execution}`
  /// for Execution
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [operationId] - Required. The operation id returned from ExportImage.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ExportStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ExportStatusResponse> exportStatus(
    core.String name,
    core.String operationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$name') +
        '/' +
        core.Uri.encodeFull('$operationId') +
        ':exportStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ExportStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about an Execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Execution. Format:
  /// `projects/{project}/locations/{location}/jobs/{job}/executions/{execution}`,
  /// where `{project}` can be project id or number.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Executions from a Job.
  ///
  /// Results are sorted by creation time, descending.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Execution from which the Executions should be
  /// listed. To list all Executions across Jobs, use "-" instead of Job name.
  /// Format: `projects/{project}/locations/{location}/jobs/{job}`, where
  /// `{project}` can be project id or number.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Waits until the specified long-running operation is done or reaches at
  /// most a specified timeout, returning the latest state.
  ///
  /// If the operation is already done, the latest state is immediately
  /// returned. If the timeout specified is greater than the default HTTP/RPC
  /// timeout, the HTTP/RPC timeout is used. If the server does not support this
  /// method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method
  /// is on a best-effort basis. It may return the latest state before the
  /// specified timeout (including immediately), meaning even an immediate
  /// response is no guarantee that the operation is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to wait on.
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
  async.Future<GoogleLongrunningOperation> wait(
    GoogleLongrunningWaitOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':wait';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Services.
  ///
  /// Results are sorted by creation time, descending.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [allowMissing] - Optional. If set to true, and if the Service does not
  /// exist, it will create a new one. The caller must have
  /// 'run.services.create' permissions if this is set to true and the Service
  /// does not exist.
  ///
  /// [updateMask] - Optional. The list of fields to be updated.
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
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Read the status of an image export operation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource of which image export
  /// operation status has to be fetched. Format:
  /// `projects/{project_id_or_number}/locations/{location}/services/{service}/revisions/{revision}`
  /// for Revision
  /// `projects/{project_id_or_number}/locations/{location}/jobs/{job}/executions/{execution}`
  /// for Execution
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [operationId] - Required. The operation id returned from ExportImage.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ExportStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ExportStatusResponse> exportStatus(
    core.String name,
    core.String operationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$name') +
        '/' +
        core.Uri.encodeFull('$operationId') +
        ':exportStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ExportStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Revisions from a given Service, or from a given location.
  ///
  /// Results are sorted by creation time, descending.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsWorkerPoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkerPoolsRevisionsResource get revisions =>
      ProjectsLocationsWorkerPoolsRevisionsResource(_requester);

  ProjectsLocationsWorkerPoolsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new WorkerPool in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location and project in which this worker pool
  /// should be created. Format: `projects/{project}/locations/{location}`,
  /// where `{project}` can be project id or number. Only lowercase characters,
  /// digits, and hyphens.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or creating
  /// any resources.
  ///
  /// [workerPoolId] - Required. The unique identifier for the WorkerPool. It
  /// must begin with letter, and cannot end with hyphen; must contain fewer
  /// than 50 characters. The name of the worker pool becomes
  /// `{parent}/workerPools/{worker_pool_id}`.
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
    GoogleCloudRunV2WorkerPool request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? workerPoolId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (workerPoolId != null) 'workerPoolId': [workerPoolId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/workerPools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a WorkerPool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the WorkerPool. Format:
  /// `projects/{project}/locations/{location}/workerPools/{worker_pool}`, where
  /// `{project}` can be project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
  ///
  /// [etag] - A system-generated fingerprint for this version of the resource.
  /// May be used to detect modification conflict during updates.
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// without actually deleting any resources.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about a WorkerPool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the WorkerPool. Format:
  /// `projects/{project}/locations/{location}/workerPools/{worker_pool}`, where
  /// `{project}` can be project id or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2WorkerPool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2WorkerPool> get(
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
    return GoogleCloudRunV2WorkerPool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the IAM Access Control policy currently in effect for the given Cloud
  /// Run WorkerPool.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists WorkerPools.
  ///
  /// Results are sorted by creation time, descending.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location and project to list resources on.
  /// Location must be a valid Google Cloud region, and cannot be the "-"
  /// wildcard. Format: `projects/{project}/locations/{location}`, where
  /// `{project}` can be project id or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of WorkerPools to return in this call.
  ///
  /// [pageToken] - A page token received from a previous call to
  /// ListWorkerPools. All other parameters must match.
  ///
  /// [showDeleted] - If true, returns deleted (but unexpired) resources along
  /// with active ones.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRunV2ListWorkerPoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRunV2ListWorkerPoolsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/workerPools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRunV2ListWorkerPoolsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a WorkerPool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified name of this WorkerPool. In
  /// CreateWorkerPoolRequest, this field is ignored, and instead composed from
  /// CreateWorkerPoolRequest.parent and CreateWorkerPoolRequest.worker_id.
  /// Format: `projects/{project}/locations/{location}/workerPools/{worker_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and if the WorkerPool does not
  /// exist, it will create a new one. The caller must have
  /// 'run.workerpools.create' permissions if this is set to true and the
  /// WorkerPool does not exist.
  ///
  /// [forceNewRevision] - Optional. If set to true, a new revision will be
  /// created from the template even if the system doesn't detect any changes
  /// from the previously deployed revision. This may be useful for cases where
  /// the underlying resources need to be recreated or reinitialized. For
  /// example if the image is specified by label, but the underlying image
  /// digest has changed) or if the container performs deployment initialization
  /// work that needs to be performed again.
  ///
  /// [updateMask] - Optional. The list of fields to be updated.
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or updating
  /// any resources.
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
    GoogleCloudRunV2WorkerPool request,
    core.String name, {
    core.bool? allowMissing,
    core.bool? forceNewRevision,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (forceNewRevision != null) 'forceNewRevision': ['${forceNewRevision}'],
      if (updateMask != null) 'updateMask': [updateMask],
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the IAM Access control policy for the specified WorkerPool.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsWorkerPoolsRevisionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkerPoolsRevisionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a Revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Revision to delete. Format:
  /// projects/{project}/locations/{location}/services/{service}/revisions/{revision}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+/revisions/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about a Revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the Revision. Format:
  /// projects/{project}/locations/{location}/services/{service}/revisions/{revision}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+/revisions/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Revisions from a given Service, or from a given location.
  ///
  /// Results are sorted by creation time, descending.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Service from which the Revisions should be
  /// listed. To list all Revisions across Services, use "-" instead of Service
  /// name. Format: projects/{project}/locations/{location}/services/{service}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workerPools/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Settings for Binary Authorization feature.
class GoogleCloudRunV2BinaryAuthorization {
  /// If present, indicates to use Breakglass using this justification.
  ///
  /// If use_default is False, then it must be empty. For more information on
  /// breakglass, see
  /// https://cloud.google.com/binary-authorization/docs/using-breakglass
  ///
  /// Optional.
  core.String? breakglassJustification;

  /// The path to a binary authorization policy.
  ///
  /// Format: `projects/{project}/platforms/cloudRun/{policy-name}`
  ///
  /// Optional.
  core.String? policy;

  /// If True, indicates to use the default project's binary authorization
  /// policy.
  ///
  /// If False, binary authorization will be disabled.
  ///
  /// Optional.
  core.bool? useDefault;

  GoogleCloudRunV2BinaryAuthorization({
    this.breakglassJustification,
    this.policy,
    this.useDefault,
  });

  GoogleCloudRunV2BinaryAuthorization.fromJson(core.Map json_)
    : this(
        breakglassJustification:
            json_['breakglassJustification'] as core.String?,
        policy: json_['policy'] as core.String?,
        useDefault: json_['useDefault'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (breakglassJustification != null)
      'breakglassJustification': breakglassJustification!,
    if (policy != null) 'policy': policy!,
    if (useDefault != null) 'useDefault': useDefault!,
  };
}

/// Describes the Build step of the function that builds a container from the
/// given source.
class GoogleCloudRunV2BuildConfig {
  /// The base image used to build the function.
  ///
  /// Optional.
  core.String? baseImage;

  /// Sets whether the function will receive automatic base image updates.
  ///
  /// Optional.
  core.bool? enableAutomaticUpdates;

  /// User-provided build-time environment variables for the function
  ///
  /// Optional.
  core.Map<core.String, core.String>? environmentVariables;

  /// The name of the function (as defined in source code) that will be
  /// executed.
  ///
  /// Defaults to the resource name suffix, if not specified. For backward
  /// compatibility, if function with given name is not found, then the system
  /// will try to use function named "function".
  ///
  /// Optional.
  core.String? functionTarget;

  /// Artifact Registry URI to store the built image.
  ///
  /// Optional.
  core.String? imageUri;

  /// The Cloud Build name of the latest successful deployment of the function.
  ///
  /// Output only.
  core.String? name;

  /// Service account to be used for building the container.
  ///
  /// The format of this field is
  /// `projects/{projectId}/serviceAccounts/{serviceAccountEmail}`.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// The Cloud Storage bucket URI where the function source code is located.
  core.String? sourceLocation;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build
  /// the Cloud Run function.
  ///
  /// The format of this field is
  /// `projects/{project}/locations/{region}/workerPools/{workerPool}` where
  /// `{project}` and `{region}` are the project id and region respectively
  /// where the worker pool is defined and `{workerPool}` is the short name of
  /// the worker pool.
  ///
  /// Optional.
  core.String? workerPool;

  GoogleCloudRunV2BuildConfig({
    this.baseImage,
    this.enableAutomaticUpdates,
    this.environmentVariables,
    this.functionTarget,
    this.imageUri,
    this.name,
    this.serviceAccount,
    this.sourceLocation,
    this.workerPool,
  });

  GoogleCloudRunV2BuildConfig.fromJson(core.Map json_)
    : this(
        baseImage: json_['baseImage'] as core.String?,
        enableAutomaticUpdates: json_['enableAutomaticUpdates'] as core.bool?,
        environmentVariables: (json_['environmentVariables']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        functionTarget: json_['functionTarget'] as core.String?,
        imageUri: json_['imageUri'] as core.String?,
        name: json_['name'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        sourceLocation: json_['sourceLocation'] as core.String?,
        workerPool: json_['workerPool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseImage != null) 'baseImage': baseImage!,
    if (enableAutomaticUpdates != null)
      'enableAutomaticUpdates': enableAutomaticUpdates!,
    if (environmentVariables != null)
      'environmentVariables': environmentVariables!,
    if (functionTarget != null) 'functionTarget': functionTarget!,
    if (imageUri != null) 'imageUri': imageUri!,
    if (name != null) 'name': name!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (sourceLocation != null) 'sourceLocation': sourceLocation!,
    if (workerPool != null) 'workerPool': workerPool!,
  };
}

/// Build information of the image.
class GoogleCloudRunV2BuildInfo {
  /// Entry point of the function when the image is a Cloud Run function.
  ///
  /// Output only.
  core.String? functionTarget;

  /// Source code location of the image.
  ///
  /// Output only.
  core.String? sourceLocation;

  GoogleCloudRunV2BuildInfo({this.functionTarget, this.sourceLocation});

  GoogleCloudRunV2BuildInfo.fromJson(core.Map json_)
    : this(
        functionTarget: json_['functionTarget'] as core.String?,
        sourceLocation: json_['sourceLocation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (functionTarget != null) 'functionTarget': functionTarget!,
    if (sourceLocation != null) 'sourceLocation': sourceLocation!,
  };
}

/// Build the source using Buildpacks.
class GoogleCloudRunV2BuildpacksBuild {
  /// The base image to use for the build.
  ///
  /// Optional.
  core.String? baseImage;

  /// cache_image_uri is the GCR/AR URL where the cache image will be stored.
  ///
  /// cache_image_uri is optional and omitting it will disable caching. This URL
  /// must be stable across builds. It is used to derive a build-specific
  /// temporary URL by substituting the tag with the build ID. The build will
  /// clean up the temporary image on a best-effort basis.
  ///
  /// Optional.
  core.String? cacheImageUri;

  /// Whether or not the application container will be enrolled in automatic
  /// base image updates.
  ///
  /// When true, the application will be built on a scratch base image, so the
  /// base layers can be appended at run time.
  ///
  /// Optional.
  core.bool? enableAutomaticUpdates;

  /// User-provided build-time environment variables.
  ///
  /// Optional.
  core.Map<core.String, core.String>? environmentVariables;

  /// Name of the function target if the source is a function source.
  ///
  /// Required for function builds.
  ///
  /// Optional.
  core.String? functionTarget;

  /// project_descriptor stores the path to the project descriptor file.
  ///
  /// When empty, it means that there is no project descriptor file in the
  /// source.
  ///
  /// Optional.
  core.String? projectDescriptor;

  /// The runtime name, e.g. 'go113'.
  ///
  /// Leave blank for generic builds.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? runtime;

  GoogleCloudRunV2BuildpacksBuild({
    this.baseImage,
    this.cacheImageUri,
    this.enableAutomaticUpdates,
    this.environmentVariables,
    this.functionTarget,
    this.projectDescriptor,
    this.runtime,
  });

  GoogleCloudRunV2BuildpacksBuild.fromJson(core.Map json_)
    : this(
        baseImage: json_['baseImage'] as core.String?,
        cacheImageUri: json_['cacheImageUri'] as core.String?,
        enableAutomaticUpdates: json_['enableAutomaticUpdates'] as core.bool?,
        environmentVariables: (json_['environmentVariables']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        functionTarget: json_['functionTarget'] as core.String?,
        projectDescriptor: json_['projectDescriptor'] as core.String?,
        runtime: json_['runtime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseImage != null) 'baseImage': baseImage!,
    if (cacheImageUri != null) 'cacheImageUri': cacheImageUri!,
    if (enableAutomaticUpdates != null)
      'enableAutomaticUpdates': enableAutomaticUpdates!,
    if (environmentVariables != null)
      'environmentVariables': environmentVariables!,
    if (functionTarget != null) 'functionTarget': functionTarget!,
    if (projectDescriptor != null) 'projectDescriptor': projectDescriptor!,
    if (runtime != null) 'runtime': runtime!,
  };
}

/// Request message for deleting an Execution.
class GoogleCloudRunV2CancelExecutionRequest {
  /// A system-generated fingerprint for this version of the resource.
  ///
  /// This may be used to detect modification conflict during updates.
  core.String? etag;

  /// Indicates that the request should be validated without actually cancelling
  /// any resources.
  core.bool? validateOnly;

  GoogleCloudRunV2CancelExecutionRequest({this.etag, this.validateOnly});

  GoogleCloudRunV2CancelExecutionRequest.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (etag != null) 'etag': etag!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Represents a set of Cloud SQL instances.
///
/// Each one will be available under /cloudsql/\[instance\]. Visit
/// https://cloud.google.com/sql/docs/mysql/connect-run for more information on
/// how to connect Cloud SQL and Cloud Run.
class GoogleCloudRunV2CloudSqlInstance {
  /// The Cloud SQL instance connection names, as can be found in
  /// https://console.cloud.google.com/sql/instances.
  ///
  /// Visit https://cloud.google.com/sql/docs/mysql/connect-run for more
  /// information on how to connect Cloud SQL and Cloud Run. Format:
  /// {project}:{location}:{instance}
  core.List<core.String>? instances;

  GoogleCloudRunV2CloudSqlInstance({this.instances});

  GoogleCloudRunV2CloudSqlInstance.fromJson(core.Map json_)
    : this(
        instances:
            (json_['instances'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (instances != null) 'instances': instances!,
  };
}

/// Defines a status condition for a resource.
class GoogleCloudRunV2Condition {
  /// A reason for the execution condition.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXECUTION_REASON_UNDEFINED" : Default value.
  /// - "JOB_STATUS_SERVICE_POLLING_ERROR" : Internal system error getting
  /// execution status. System will retry.
  /// - "NON_ZERO_EXIT_CODE" : A task reached its retry limit and the last
  /// attempt failed due to the user container exiting with a non-zero exit
  /// code.
  /// - "CANCELLED" : The execution was cancelled by users.
  /// - "CANCELLING" : The execution is in the process of being cancelled.
  /// - "DELETED" : The execution was deleted.
  core.String? executionReason;

  /// Last time the condition transitioned from one status to another.
  core.String? lastTransitionTime;

  /// Human readable message indicating details about the current status.
  core.String? message;

  /// A common (service-level) reason for this condition.
  ///
  /// Output only.
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
  /// - "VPC_NETWORK_NOT_FOUND" : User-provided VPC network was not found.
  core.String? reason;

  /// A reason for the revision condition.
  ///
  /// Output only.
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
        executionReason: json_['executionReason'] as core.String?,
        lastTransitionTime: json_['lastTransitionTime'] as core.String?,
        message: json_['message'] as core.String?,
        reason: json_['reason'] as core.String?,
        revisionReason: json_['revisionReason'] as core.String?,
        severity: json_['severity'] as core.String?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionReason != null) 'executionReason': executionReason!,
    if (lastTransitionTime != null) 'lastTransitionTime': lastTransitionTime!,
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
/// can be supplied by the system to the container at runtime.
class GoogleCloudRunV2Container {
  /// Arguments to the entrypoint.
  ///
  /// The docker image's CMD is used if this is not provided.
  core.List<core.String>? args;

  /// Base image for this container.
  ///
  /// Only supported for services. If set, it indicates that the service is
  /// enrolled into automatic base image update.
  core.String? baseImageUri;

  /// The build info of the container image.
  ///
  /// Output only.
  GoogleCloudRunV2BuildInfo? buildInfo;

  /// Entrypoint array.
  ///
  /// Not executed within a shell. The docker image's ENTRYPOINT is used if this
  /// is not provided.
  core.List<core.String>? command;

  /// Names of the containers that must start before this container.
  core.List<core.String>? dependsOn;

  /// List of environment variables to set in the container.
  core.List<GoogleCloudRunV2EnvVar>? env;

  /// Name of the container image in Dockerhub, Google Artifact Registry, or
  /// Google Container Registry.
  ///
  /// If the host is not provided, Dockerhub is assumed.
  ///
  /// Required.
  core.String? image;

  /// Periodic probe of container liveness.
  ///
  /// Container will be restarted if the probe fails.
  GoogleCloudRunV2Probe? livenessProbe;

  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  core.String? name;

  /// List of ports to expose from the container.
  ///
  /// Only a single port can be specified. The specified ports must be listening
  /// on all interfaces (0.0.0.0) within the container to be accessible. If
  /// omitted, a port number will be chosen and passed to the container through
  /// the PORT environment variable for the container to listen on.
  core.List<GoogleCloudRunV2ContainerPort>? ports;

  /// Compute Resource requirements by this container.
  GoogleCloudRunV2ResourceRequirements? resources;

  /// Startup probe of application within the container.
  ///
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe
  /// fails.
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
    this.baseImageUri,
    this.buildInfo,
    this.command,
    this.dependsOn,
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
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        baseImageUri: json_['baseImageUri'] as core.String?,
        buildInfo:
            json_.containsKey('buildInfo')
                ? GoogleCloudRunV2BuildInfo.fromJson(
                  json_['buildInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        command:
            (json_['command'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        dependsOn:
            (json_['dependsOn'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        env:
            (json_['env'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2EnvVar.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        image: json_['image'] as core.String?,
        livenessProbe:
            json_.containsKey('livenessProbe')
                ? GoogleCloudRunV2Probe.fromJson(
                  json_['livenessProbe'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        ports:
            (json_['ports'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2ContainerPort.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        resources:
            json_.containsKey('resources')
                ? GoogleCloudRunV2ResourceRequirements.fromJson(
                  json_['resources'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startupProbe:
            json_.containsKey('startupProbe')
                ? GoogleCloudRunV2Probe.fromJson(
                  json_['startupProbe'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        volumeMounts:
            (json_['volumeMounts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2VolumeMount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        workingDir: json_['workingDir'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (args != null) 'args': args!,
    if (baseImageUri != null) 'baseImageUri': baseImageUri!,
    if (buildInfo != null) 'buildInfo': buildInfo!,
    if (command != null) 'command': command!,
    if (dependsOn != null) 'dependsOn': dependsOn!,
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

/// Per-container override specification.
class GoogleCloudRunV2ContainerOverride {
  /// Arguments to the entrypoint.
  ///
  /// Will replace existing args for override.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// True if the intention is to clear out existing args list.
  ///
  /// Optional.
  core.bool? clearArgs;

  /// List of environment variables to set in the container.
  ///
  /// Will be merged with existing env for override.
  core.List<GoogleCloudRunV2EnvVar>? env;

  /// The name of the container specified as a DNS_LABEL.
  core.String? name;

  GoogleCloudRunV2ContainerOverride({
    this.args,
    this.clearArgs,
    this.env,
    this.name,
  });

  GoogleCloudRunV2ContainerOverride.fromJson(core.Map json_)
    : this(
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        clearArgs: json_['clearArgs'] as core.bool?,
        env:
            (json_['env'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2EnvVar.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (args != null) 'args': args!,
    if (clearArgs != null) 'clearArgs': clearArgs!,
    if (env != null) 'env': env!,
    if (name != null) 'name': name!,
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

  GoogleCloudRunV2ContainerPort({this.containerPort, this.name});

  GoogleCloudRunV2ContainerPort.fromJson(core.Map json_)
    : this(
        containerPort: json_['containerPort'] as core.int?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (containerPort != null) 'containerPort': containerPort!,
    if (name != null) 'name': name!,
  };
}

/// Build the source using Docker.
///
/// This means the source has a Dockerfile.
typedef GoogleCloudRunV2DockerBuild = $Empty;

/// In memory (tmpfs) ephemeral storage.
///
/// It is ephemeral in the sense that when the sandbox is taken down, the data
/// is destroyed with it (it does not persist across sandbox runs).
class GoogleCloudRunV2EmptyDirVolumeSource {
  /// The medium on which the data is stored.
  ///
  /// Acceptable values today is only MEMORY or none. When none, the default
  /// will currently be backed by memory but could change over time. +optional
  /// Possible string values are:
  /// - "MEDIUM_UNSPECIFIED" : When not specified, falls back to the default
  /// implementation which is currently in memory (this may change over time).
  /// - "MEMORY" : Explicitly set the EmptyDir to be in memory. Uses tmpfs.
  core.String? medium;

  /// Limit on the storage usable by this EmptyDir volume.
  ///
  /// The size limit is also applicable for memory medium. The maximum usage on
  /// memory medium EmptyDir would be the minimum value between the SizeLimit
  /// specified here and the sum of memory limits of all containers. The default
  /// is nil which means that the limit is undefined. More info:
  /// https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume.
  /// Info in Kubernetes:
  /// https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  core.String? sizeLimit;

  GoogleCloudRunV2EmptyDirVolumeSource({this.medium, this.sizeLimit});

  GoogleCloudRunV2EmptyDirVolumeSource.fromJson(core.Map json_)
    : this(
        medium: json_['medium'] as core.String?,
        sizeLimit: json_['sizeLimit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (medium != null) 'medium': medium!,
    if (sizeLimit != null) 'sizeLimit': sizeLimit!,
  };
}

/// EnvVar represents an environment variable present in a Container.
class GoogleCloudRunV2EnvVar {
  /// Name of the environment variable.
  ///
  /// Must not exceed 32768 characters.
  ///
  /// Required.
  core.String? name;

  /// Literal value of the environment variable.
  ///
  /// Defaults to "", and the maximum length is 32768 bytes. Variable references
  /// are not supported in Cloud Run.
  core.String? value;

  /// Source for the environment variable's value.
  GoogleCloudRunV2EnvVarSource? valueSource;

  GoogleCloudRunV2EnvVar({this.name, this.value, this.valueSource});

  GoogleCloudRunV2EnvVar.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
        valueSource:
            json_.containsKey('valueSource')
                ? GoogleCloudRunV2EnvVarSource.fromJson(
                  json_['valueSource'] as core.Map<core.String, core.dynamic>,
                )
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

  GoogleCloudRunV2EnvVarSource({this.secretKeyRef});

  GoogleCloudRunV2EnvVarSource.fromJson(core.Map json_)
    : this(
        secretKeyRef:
            json_.containsKey('secretKeyRef')
                ? GoogleCloudRunV2SecretKeySelector.fromJson(
                  json_['secretKeyRef'] as core.Map<core.String, core.dynamic>,
                )
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
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  ///
  /// Output only.
  core.Map<core.String, core.String>? annotations;

  /// The number of tasks which reached phase Cancelled.
  ///
  /// Output only.
  core.int? cancelledCount;

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

  /// Email address of the authenticated creator.
  ///
  /// Output only.
  core.String? creator;

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

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels
  ///
  /// Output only.
  core.Map<core.String, core.String>? labels;

  /// The least stable launch stage needed to create this resource, as defined
  /// by
  /// [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).
  ///
  /// Cloud Run supports `ALPHA`, `BETA`, and `GA`. Note that this value might
  /// not be what was used as input. For example, if ALPHA was provided as input
  /// in the parent resource, but only BETA and GA-level features are were, this
  /// field will be BETA.
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

  /// URI where logs for this execution can be found in Cloud Console.
  ///
  /// Output only.
  core.String? logUri;

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
  /// is less than max parallelism.
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

  /// The number of tasks which have retried at least once.
  ///
  /// Output only.
  core.int? retriedCount;

  /// The number of actively running tasks.
  ///
  /// Output only.
  core.int? runningCount;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

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
  /// that task signals the success of the execution.
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
    this.cancelledCount,
    this.completionTime,
    this.conditions,
    this.createTime,
    this.creator,
    this.deleteTime,
    this.etag,
    this.expireTime,
    this.failedCount,
    this.generation,
    this.job,
    this.labels,
    this.launchStage,
    this.logUri,
    this.name,
    this.observedGeneration,
    this.parallelism,
    this.reconciling,
    this.retriedCount,
    this.runningCount,
    this.satisfiesPzs,
    this.startTime,
    this.succeededCount,
    this.taskCount,
    this.template,
    this.uid,
    this.updateTime,
  });

  GoogleCloudRunV2Execution.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        cancelledCount: json_['cancelledCount'] as core.int?,
        completionTime: json_['completionTime'] as core.String?,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Condition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        failedCount: json_['failedCount'] as core.int?,
        generation: json_['generation'] as core.String?,
        job: json_['job'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        launchStage: json_['launchStage'] as core.String?,
        logUri: json_['logUri'] as core.String?,
        name: json_['name'] as core.String?,
        observedGeneration: json_['observedGeneration'] as core.String?,
        parallelism: json_['parallelism'] as core.int?,
        reconciling: json_['reconciling'] as core.bool?,
        retriedCount: json_['retriedCount'] as core.int?,
        runningCount: json_['runningCount'] as core.int?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        startTime: json_['startTime'] as core.String?,
        succeededCount: json_['succeededCount'] as core.int?,
        taskCount: json_['taskCount'] as core.int?,
        template:
            json_.containsKey('template')
                ? GoogleCloudRunV2TaskTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (cancelledCount != null) 'cancelledCount': cancelledCount!,
    if (completionTime != null) 'completionTime': completionTime!,
    if (conditions != null) 'conditions': conditions!,
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (etag != null) 'etag': etag!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (failedCount != null) 'failedCount': failedCount!,
    if (generation != null) 'generation': generation!,
    if (job != null) 'job': job!,
    if (labels != null) 'labels': labels!,
    if (launchStage != null) 'launchStage': launchStage!,
    if (logUri != null) 'logUri': logUri!,
    if (name != null) 'name': name!,
    if (observedGeneration != null) 'observedGeneration': observedGeneration!,
    if (parallelism != null) 'parallelism': parallelism!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (retriedCount != null) 'retriedCount': retriedCount!,
    if (runningCount != null) 'runningCount': runningCount!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
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
  /// Status for the execution completion.
  /// Possible string values are:
  /// - "COMPLETION_STATUS_UNSPECIFIED" : The default value. This value is used
  /// if the state is omitted.
  /// - "EXECUTION_SUCCEEDED" : Job execution has succeeded.
  /// - "EXECUTION_FAILED" : Job execution has failed.
  /// - "EXECUTION_RUNNING" : Job execution is running normally.
  /// - "EXECUTION_PENDING" : Waiting for backing resources to be provisioned.
  /// - "EXECUTION_CANCELLED" : Job execution has been cancelled by the user.
  core.String? completionStatus;

  /// Creation timestamp of the execution.
  core.String? completionTime;

  /// Creation timestamp of the execution.
  core.String? createTime;

  /// The deletion time of the execution.
  ///
  /// It is only populated as a response to a Delete request.
  core.String? deleteTime;

  /// Name of the execution.
  core.String? name;

  GoogleCloudRunV2ExecutionReference({
    this.completionStatus,
    this.completionTime,
    this.createTime,
    this.deleteTime,
    this.name,
  });

  GoogleCloudRunV2ExecutionReference.fromJson(core.Map json_)
    : this(
        completionStatus: json_['completionStatus'] as core.String?,
        completionTime: json_['completionTime'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (completionStatus != null) 'completionStatus': completionStatus!,
    if (completionTime != null) 'completionTime': completionTime!,
    if (createTime != null) 'createTime': createTime!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (name != null) 'name': name!,
  };
}

/// ExecutionTemplate describes the data an execution should have when created
/// from a template.
class GoogleCloudRunV2ExecutionTemplate {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system annotations in v1 now have a corresponding field in v2
  /// ExecutionTemplate. This field follows Kubernetes annotations' namespacing,
  /// limits, and rules.
  core.Map<core.String, core.String>? annotations;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2
  /// does not support labels with `run.googleapis.com`, `cloud.googleapis.com`,
  /// `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they
  /// will be rejected. All system labels in v1 now have a corresponding field
  /// in v2 ExecutionTemplate.
  core.Map<core.String, core.String>? labels;

  /// Specifies the maximum desired number of tasks the execution should run at
  /// given time.
  ///
  /// When the job is run, if this field is 0 or unset, the maximum possible
  /// value will be used for that execution. The actual number of tasks running
  /// in steady state will be less than this number when there are fewer tasks
  /// waiting to be completed remaining, i.e. when the work left to do is less
  /// than max parallelism.
  ///
  /// Optional.
  core.int? parallelism;

  /// Specifies the desired number of tasks the execution should run.
  ///
  /// Setting to 1 means that parallelism is limited to 1 and the success of
  /// that task signals the success of the execution. Defaults to 1.
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
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        parallelism: json_['parallelism'] as core.int?,
        taskCount: json_['taskCount'] as core.int?,
        template:
            json_.containsKey('template')
                ? GoogleCloudRunV2TaskTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>,
                )
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

/// Request message for exporting Cloud Run image.
class GoogleCloudRunV2ExportImageRequest {
  /// The export destination url (the Artifact Registry repo).
  ///
  /// Required.
  core.String? destinationRepo;

  GoogleCloudRunV2ExportImageRequest({this.destinationRepo});

  GoogleCloudRunV2ExportImageRequest.fromJson(core.Map json_)
    : this(destinationRepo: json_['destinationRepo'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinationRepo != null) 'destinationRepo': destinationRepo!,
  };
}

/// ExportImageResponse contains an operation Id to track the image export
/// operation.
class GoogleCloudRunV2ExportImageResponse {
  /// An operation ID used to track the status of image exports tied to the
  /// original pod ID in the request.
  core.String? operationId;

  GoogleCloudRunV2ExportImageResponse({this.operationId});

  GoogleCloudRunV2ExportImageResponse.fromJson(core.Map json_)
    : this(operationId: json_['operationId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (operationId != null) 'operationId': operationId!,
  };
}

/// ExportStatusResponse contains the status of image export operation, with the
/// status of each image export job.
class GoogleCloudRunV2ExportStatusResponse {
  /// The status of each image export job.
  core.List<GoogleCloudRunV2ImageExportStatus>? imageExportStatuses;

  /// The operation id.
  core.String? operationId;

  /// The state of the overall export operation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OPERATION_STATE_UNSPECIFIED" : State unspecified.
  /// - "IN_PROGRESS" : Operation still in progress.
  /// - "FINISHED" : Operation finished.
  core.String? operationState;

  GoogleCloudRunV2ExportStatusResponse({
    this.imageExportStatuses,
    this.operationId,
    this.operationState,
  });

  GoogleCloudRunV2ExportStatusResponse.fromJson(core.Map json_)
    : this(
        imageExportStatuses:
            (json_['imageExportStatuses'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2ImageExportStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        operationId: json_['operationId'] as core.String?,
        operationState: json_['operationState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageExportStatuses != null)
      'imageExportStatuses': imageExportStatuses!,
    if (operationId != null) 'operationId': operationId!,
    if (operationState != null) 'operationState': operationState!,
  };
}

/// Represents a volume backed by a Cloud Storage bucket using Cloud Storage
/// FUSE.
class GoogleCloudRunV2GCSVolumeSource {
  /// Cloud Storage Bucket name.
  core.String? bucket;

  /// A list of additional flags to pass to the gcsfuse CLI.
  ///
  /// Options should be specified without the leading "--".
  core.List<core.String>? mountOptions;

  /// If true, the volume will be mounted as read only for all mounts.
  core.bool? readOnly;

  GoogleCloudRunV2GCSVolumeSource({
    this.bucket,
    this.mountOptions,
    this.readOnly,
  });

  GoogleCloudRunV2GCSVolumeSource.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        mountOptions:
            (json_['mountOptions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        readOnly: json_['readOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (mountOptions != null) 'mountOptions': mountOptions!,
    if (readOnly != null) 'readOnly': readOnly!,
  };
}

/// GRPCAction describes an action involving a GRPC port.
class GoogleCloudRunV2GRPCAction {
  /// Port number of the gRPC service.
  ///
  /// Number must be in the range 1 to 65535. If not specified, defaults to the
  /// exposed port of the container, which is the value of
  /// container.ports\[0\].containerPort.
  ///
  /// Optional.
  core.int? port;

  /// Service is the name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ).
  ///
  /// If this is not specified, the default behavior is defined by gRPC.
  ///
  /// Optional.
  core.String? service;

  GoogleCloudRunV2GRPCAction({this.port, this.service});

  GoogleCloudRunV2GRPCAction.fromJson(core.Map json_)
    : this(
        port: json_['port'] as core.int?,
        service: json_['service'] as core.String?,
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
  ///
  /// Optional.
  core.List<GoogleCloudRunV2HTTPHeader>? httpHeaders;

  /// Path to access on the HTTP server.
  ///
  /// Defaults to '/'.
  ///
  /// Optional.
  core.String? path;

  /// Port number to access on the container.
  ///
  /// Must be in the range 1 to 65535. If not specified, defaults to the exposed
  /// port of the container, which is the value of
  /// container.ports\[0\].containerPort.
  ///
  /// Optional.
  core.int? port;

  GoogleCloudRunV2HTTPGetAction({this.httpHeaders, this.path, this.port});

  GoogleCloudRunV2HTTPGetAction.fromJson(core.Map json_)
    : this(
        httpHeaders:
            (json_['httpHeaders'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2HTTPHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        path: json_['path'] as core.String?,
        port: json_['port'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (httpHeaders != null) 'httpHeaders': httpHeaders!,
    if (path != null) 'path': path!,
    if (port != null) 'port': port!,
  };
}

/// HTTPHeader describes a custom header to be used in HTTP probes
class GoogleCloudRunV2HTTPHeader {
  /// The header field name
  ///
  /// Required.
  core.String? name;

  /// The header field value
  ///
  /// Optional.
  core.String? value;

  GoogleCloudRunV2HTTPHeader({this.name, this.value});

  GoogleCloudRunV2HTTPHeader.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
  };
}

/// The status of an image export job.
class GoogleCloudRunV2ImageExportStatus {
  /// Has the image export job finished (regardless of successful or failure).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXPORT_JOB_STATE_UNSPECIFIED" : State unspecified.
  /// - "IN_PROGRESS" : Job still in progress.
  /// - "FINISHED" : Job finished.
  core.String? exportJobState;

  /// The exported image ID as it will appear in Artifact Registry.
  core.String? exportedImageDigest;

  /// The status of the export task if done.
  UtilStatusProto? status;

  /// The image tag as it will appear in Artifact Registry.
  core.String? tag;

  GoogleCloudRunV2ImageExportStatus({
    this.exportJobState,
    this.exportedImageDigest,
    this.status,
    this.tag,
  });

  GoogleCloudRunV2ImageExportStatus.fromJson(core.Map json_)
    : this(
        exportJobState: json_['exportJobState'] as core.String?,
        exportedImageDigest: json_['exportedImageDigest'] as core.String?,
        status:
            json_.containsKey('status')
                ? UtilStatusProto.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tag: json_['tag'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exportJobState != null) 'exportJobState': exportJobState!,
    if (exportedImageDigest != null)
      'exportedImageDigest': exportedImageDigest!,
    if (status != null) 'status': status!,
    if (tag != null) 'tag': tag!,
  };
}

/// Holds a single instance split entry for the Worker.
///
/// Allocations can be done to a specific Revision name, or pointing to the
/// latest Ready Revision.
class GoogleCloudRunV2InstanceSplit {
  /// Specifies percent of the instance split to this Revision.
  ///
  /// This defaults to zero if unspecified.
  core.int? percent;

  /// Revision to which to assign this portion of instances, if split allocation
  /// is by revision.
  core.String? revision;

  /// The allocation type for this instance split.
  /// Possible string values are:
  /// - "INSTANCE_SPLIT_ALLOCATION_TYPE_UNSPECIFIED" : Unspecified instance
  /// allocation type.
  /// - "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST" : Allocates instances to the
  /// Service's latest ready Revision.
  /// - "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION" : Allocates instances to a
  /// Revision by name.
  core.String? type;

  GoogleCloudRunV2InstanceSplit({this.percent, this.revision, this.type});

  GoogleCloudRunV2InstanceSplit.fromJson(core.Map json_)
    : this(
        percent: json_['percent'] as core.int?,
        revision: json_['revision'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (percent != null) 'percent': percent!,
    if (revision != null) 'revision': revision!,
    if (type != null) 'type': type!,
  };
}

/// Represents the observed state of a single `InstanceSplit` entry.
class GoogleCloudRunV2InstanceSplitStatus {
  /// Specifies percent of the instance split to this Revision.
  core.int? percent;

  /// Revision to which this instance split is assigned.
  core.String? revision;

  /// The allocation type for this instance split.
  /// Possible string values are:
  /// - "INSTANCE_SPLIT_ALLOCATION_TYPE_UNSPECIFIED" : Unspecified instance
  /// allocation type.
  /// - "INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST" : Allocates instances to the
  /// Service's latest ready Revision.
  /// - "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION" : Allocates instances to a
  /// Revision by name.
  core.String? type;

  GoogleCloudRunV2InstanceSplitStatus({this.percent, this.revision, this.type});

  GoogleCloudRunV2InstanceSplitStatus.fromJson(core.Map json_)
    : this(
        percent: json_['percent'] as core.int?,
        revision: json_['revision'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (percent != null) 'percent': percent!,
    if (revision != null) 'revision': revision!,
    if (type != null) 'type': type!,
  };
}

/// Job represents the configuration of a single job, which references a
/// container image that is run to completion.
class GoogleCloudRunV2Job {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected on new
  /// resources. All system annotations in v1 now have a corresponding field in
  /// v2 Job. This field follows Kubernetes annotations' namespacing, limits,
  /// and rules.
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
  /// It is only populated as a response to a Delete request.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A system-generated fingerprint for this version of the resource.
  ///
  /// May be used to detect modification conflict during updates.
  ///
  /// Optional.
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

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2
  /// does not support labels with `run.googleapis.com`, `cloud.googleapis.com`,
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
  /// is assumed. Set the launch stage to a preview stage on input to allow use
  /// of preview features in that stage. On read (or output), describes whether
  /// the resource uses preview features. For example, if ALPHA is provided as
  /// input, but only BETA and GA-level features are used, this field will be
  /// BETA on output.
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

  /// A unique string used as a suffix for creating a new execution.
  ///
  /// The Job will become ready when the execution is successfully completed.
  /// The sum of job name and token length must be fewer than 63 characters.
  core.String? runExecutionToken;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// A unique string used as a suffix creating a new execution.
  ///
  /// The Job will become ready when the execution is successfully started. The
  /// sum of job name and token length must be fewer than 63 characters.
  core.String? startExecutionToken;

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
    this.runExecutionToken,
    this.satisfiesPzs,
    this.startExecutionToken,
    this.template,
    this.terminalCondition,
    this.uid,
    this.updateTime,
  });

  GoogleCloudRunV2Job.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        binaryAuthorization:
            json_.containsKey('binaryAuthorization')
                ? GoogleCloudRunV2BinaryAuthorization.fromJson(
                  json_['binaryAuthorization']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        client: json_['client'] as core.String?,
        clientVersion: json_['clientVersion'] as core.String?,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Condition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        executionCount: json_['executionCount'] as core.int?,
        expireTime: json_['expireTime'] as core.String?,
        generation: json_['generation'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lastModifier: json_['lastModifier'] as core.String?,
        latestCreatedExecution:
            json_.containsKey('latestCreatedExecution')
                ? GoogleCloudRunV2ExecutionReference.fromJson(
                  json_['latestCreatedExecution']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        launchStage: json_['launchStage'] as core.String?,
        name: json_['name'] as core.String?,
        observedGeneration: json_['observedGeneration'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        runExecutionToken: json_['runExecutionToken'] as core.String?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        startExecutionToken: json_['startExecutionToken'] as core.String?,
        template:
            json_.containsKey('template')
                ? GoogleCloudRunV2ExecutionTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        terminalCondition:
            json_.containsKey('terminalCondition')
                ? GoogleCloudRunV2Condition.fromJson(
                  json_['terminalCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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
    if (observedGeneration != null) 'observedGeneration': observedGeneration!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (runExecutionToken != null) 'runExecutionToken': runExecutionToken!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (startExecutionToken != null)
      'startExecutionToken': startExecutionToken!,
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

  GoogleCloudRunV2ListExecutionsResponse({this.executions, this.nextPageToken});

  GoogleCloudRunV2ListExecutionsResponse.fromJson(core.Map json_)
    : this(
        executions:
            (json_['executions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Execution.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  GoogleCloudRunV2ListJobsResponse({this.jobs, this.nextPageToken});

  GoogleCloudRunV2ListJobsResponse.fromJson(core.Map json_)
    : this(
        jobs:
            (json_['jobs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Job.fromJson(
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

/// Response message containing a list of Revisions.
class GoogleCloudRunV2ListRevisionsResponse {
  /// A token indicating there are more items than page_size.
  ///
  /// Use it in the next ListRevisions request to continue.
  core.String? nextPageToken;

  /// The resulting list of Revisions.
  core.List<GoogleCloudRunV2Revision>? revisions;

  GoogleCloudRunV2ListRevisionsResponse({this.nextPageToken, this.revisions});

  GoogleCloudRunV2ListRevisionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        revisions:
            (json_['revisions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Revision.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  GoogleCloudRunV2ListServicesResponse({this.nextPageToken, this.services});

  GoogleCloudRunV2ListServicesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        services:
            (json_['services'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Service.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  GoogleCloudRunV2ListTasksResponse({this.nextPageToken, this.tasks});

  GoogleCloudRunV2ListTasksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tasks:
            (json_['tasks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Task.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (tasks != null) 'tasks': tasks!,
  };
}

/// Response message containing a list of WorkerPools.
class GoogleCloudRunV2ListWorkerPoolsResponse {
  /// A token indicating there are more items than page_size.
  ///
  /// Use it in the next ListWorkerPools request to continue.
  core.String? nextPageToken;

  /// The resulting list of WorkerPools.
  core.List<GoogleCloudRunV2WorkerPool>? workerPools;

  GoogleCloudRunV2ListWorkerPoolsResponse({
    this.nextPageToken,
    this.workerPools,
  });

  GoogleCloudRunV2ListWorkerPoolsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        workerPools:
            (json_['workerPools'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2WorkerPool.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (workerPools != null) 'workerPools': workerPools!,
  };
}

/// Metadata represents the JSON encoded generated customer metadata.
class GoogleCloudRunV2Metadata {
  /// JSON encoded Google-generated Customer Metadata for a given
  /// resource/project.
  core.String? metadata;

  GoogleCloudRunV2Metadata({this.metadata});

  GoogleCloudRunV2Metadata.fromJson(core.Map json_)
    : this(metadata: json_['metadata'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (metadata != null) 'metadata': metadata!,
  };
}

/// Settings for multi-region deployment.
class GoogleCloudRunV2MultiRegionSettings {
  /// System-generated unique id for the multi-region Service.
  ///
  /// Optional.
  core.String? multiRegionId;

  /// List of regions to deploy to, including primary region.
  ///
  /// Required.
  core.List<core.String>? regions;

  GoogleCloudRunV2MultiRegionSettings({this.multiRegionId, this.regions});

  GoogleCloudRunV2MultiRegionSettings.fromJson(core.Map json_)
    : this(
        multiRegionId: json_['multiRegionId'] as core.String?,
        regions:
            (json_['regions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (multiRegionId != null) 'multiRegionId': multiRegionId!,
    if (regions != null) 'regions': regions!,
  };
}

/// Represents an NFS mount.
class GoogleCloudRunV2NFSVolumeSource {
  /// Path that is exported by the NFS server.
  core.String? path;

  /// If true, the volume will be mounted as read only for all mounts.
  core.bool? readOnly;

  /// Hostname or IP address of the NFS server
  core.String? server;

  GoogleCloudRunV2NFSVolumeSource({this.path, this.readOnly, this.server});

  GoogleCloudRunV2NFSVolumeSource.fromJson(core.Map json_)
    : this(
        path: json_['path'] as core.String?,
        readOnly: json_['readOnly'] as core.bool?,
        server: json_['server'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (path != null) 'path': path!,
    if (readOnly != null) 'readOnly': readOnly!,
    if (server != null) 'server': server!,
  };
}

/// Direct VPC egress settings.
class GoogleCloudRunV2NetworkInterface {
  /// The VPC network that the Cloud Run resource will be able to send traffic
  /// to.
  ///
  /// At least one of network or subnetwork must be specified. If both network
  /// and subnetwork are specified, the given VPC subnetwork must belong to the
  /// given VPC network. If network is not specified, it will be looked up from
  /// the subnetwork.
  ///
  /// Optional.
  core.String? network;

  /// The VPC subnetwork that the Cloud Run resource will get IPs from.
  ///
  /// At least one of network or subnetwork must be specified. If both network
  /// and subnetwork are specified, the given VPC subnetwork must belong to the
  /// given VPC network. If subnetwork is not specified, the subnetwork with the
  /// same name with the network will be used.
  ///
  /// Optional.
  core.String? subnetwork;

  /// Network tags applied to this Cloud Run resource.
  ///
  /// Optional.
  core.List<core.String>? tags;

  GoogleCloudRunV2NetworkInterface({this.network, this.subnetwork, this.tags});

  GoogleCloudRunV2NetworkInterface.fromJson(core.Map json_)
    : this(
        network: json_['network'] as core.String?,
        subnetwork: json_['subnetwork'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (network != null) 'network': network!,
    if (subnetwork != null) 'subnetwork': subnetwork!,
    if (tags != null) 'tags': tags!,
  };
}

/// Hardware constraints configuration.
class GoogleCloudRunV2NodeSelector {
  /// GPU accelerator type to attach to an instance.
  ///
  /// Required.
  core.String? accelerator;

  GoogleCloudRunV2NodeSelector({this.accelerator});

  GoogleCloudRunV2NodeSelector.fromJson(core.Map json_)
    : this(accelerator: json_['accelerator'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (accelerator != null) 'accelerator': accelerator!,
  };
}

/// RunJob Overrides that contains Execution fields to be overridden.
class GoogleCloudRunV2Overrides {
  /// Per container override specification.
  core.List<GoogleCloudRunV2ContainerOverride>? containerOverrides;

  /// The desired number of tasks the execution should run.
  ///
  /// Will replace existing task_count value.
  ///
  /// Optional.
  core.int? taskCount;

  /// Duration in seconds the task may be active before the system will actively
  /// try to mark it failed and kill associated containers.
  ///
  /// Will replace existing timeout_seconds value.
  core.String? timeout;

  GoogleCloudRunV2Overrides({
    this.containerOverrides,
    this.taskCount,
    this.timeout,
  });

  GoogleCloudRunV2Overrides.fromJson(core.Map json_)
    : this(
        containerOverrides:
            (json_['containerOverrides'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2ContainerOverride.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        taskCount: json_['taskCount'] as core.int?,
        timeout: json_['timeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (containerOverrides != null) 'containerOverrides': containerOverrides!,
    if (taskCount != null) 'taskCount': taskCount!,
    if (timeout != null) 'timeout': timeout!,
  };
}

/// Probe describes a health check to be performed against a container to
/// determine whether it is alive or ready to receive traffic.
class GoogleCloudRunV2Probe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded.
  ///
  /// Defaults to 3. Minimum value is 1.
  ///
  /// Optional.
  core.int? failureThreshold;

  /// GRPC specifies an action involving a gRPC port.
  ///
  /// Exactly one of httpGet, tcpSocket, or grpc must be specified.
  ///
  /// Optional.
  GoogleCloudRunV2GRPCAction? grpc;

  /// HTTPGet specifies the http request to perform.
  ///
  /// Exactly one of httpGet, tcpSocket, or grpc must be specified.
  ///
  /// Optional.
  GoogleCloudRunV2HTTPGetAction? httpGet;

  /// Number of seconds after the container has started before the probe is
  /// initiated.
  ///
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness
  /// probe is 3600. Maximum value for startup probe is 240.
  ///
  /// Optional.
  core.int? initialDelaySeconds;

  /// How often (in seconds) to perform the probe.
  ///
  /// Default to 10 seconds. Minimum value is 1. Maximum value for liveness
  /// probe is 3600. Maximum value for startup probe is 240. Must be greater or
  /// equal than timeout_seconds.
  ///
  /// Optional.
  core.int? periodSeconds;

  /// TCPSocket specifies an action involving a TCP port.
  ///
  /// Exactly one of httpGet, tcpSocket, or grpc must be specified.
  ///
  /// Optional.
  GoogleCloudRunV2TCPSocketAction? tcpSocket;

  /// Number of seconds after which the probe times out.
  ///
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be
  /// smaller than period_seconds.
  ///
  /// Optional.
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
        failureThreshold: json_['failureThreshold'] as core.int?,
        grpc:
            json_.containsKey('grpc')
                ? GoogleCloudRunV2GRPCAction.fromJson(
                  json_['grpc'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        httpGet:
            json_.containsKey('httpGet')
                ? GoogleCloudRunV2HTTPGetAction.fromJson(
                  json_['httpGet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        initialDelaySeconds: json_['initialDelaySeconds'] as core.int?,
        periodSeconds: json_['periodSeconds'] as core.int?,
        tcpSocket:
            json_.containsKey('tcpSocket')
                ? GoogleCloudRunV2TCPSocketAction.fromJson(
                  json_['tcpSocket'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeoutSeconds: json_['timeoutSeconds'] as core.int?,
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
  /// Determines whether CPU is only allocated during requests (true by
  /// default).
  ///
  /// However, if ResourceRequirements is set, the caller must explicitly set
  /// this field to true to preserve the default behavior.
  core.bool? cpuIdle;

  /// Only `memory` and `cpu` keys in the map are supported.
  ///
  /// Notes: * The only supported values for CPU are '1', '2', '4', and '8'.
  /// Setting 4 CPU requires at least 2Gi of memory. For more information, go to
  /// https://cloud.google.com/run/docs/configuring/cpu. * For supported
  /// 'memory' values and syntax, go to
  /// https://cloud.google.com/run/docs/configuring/memory-limits
  core.Map<core.String, core.String>? limits;

  /// Determines whether CPU should be boosted on startup of a new container
  /// instance above the requested CPU threshold, this can help reduce
  /// cold-start latency.
  core.bool? startupCpuBoost;

  GoogleCloudRunV2ResourceRequirements({
    this.cpuIdle,
    this.limits,
    this.startupCpuBoost,
  });

  GoogleCloudRunV2ResourceRequirements.fromJson(core.Map json_)
    : this(
        cpuIdle: json_['cpuIdle'] as core.bool?,
        limits: (json_['limits'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        startupCpuBoost: json_['startupCpuBoost'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpuIdle != null) 'cpuIdle': cpuIdle!,
    if (limits != null) 'limits': limits!,
    if (startupCpuBoost != null) 'startupCpuBoost': startupCpuBoost!,
  };
}

/// A Revision is an immutable snapshot of code and configuration.
///
/// A Revision references a container image. Revisions are only created by
/// updates to its parent Service.
class GoogleCloudRunV2Revision {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  ///
  /// Output only.
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

  /// Email address of the authenticated creator.
  ///
  /// Output only.
  core.String? creator;

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

  /// The action to take if the encryption key is revoked.
  /// Possible string values are:
  /// - "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" : Unspecified
  /// - "PREVENT_NEW" : Prevents the creation of new instances.
  /// - "SHUTDOWN" : Shuts down existing instances, and prevents creation of new
  /// ones.
  core.String? encryptionKeyRevocationAction;

  /// If encryption_key_revocation_action is SHUTDOWN, the duration before
  /// shutting down all instances.
  ///
  /// The minimum increment is 1 hour.
  core.String? encryptionKeyShutdownDuration;

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

  /// True if GPU zonal redundancy is disabled on this revision.
  ///
  /// Optional. Output only.
  core.bool? gpuZonalRedundancyDisabled;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels.
  ///
  /// Output only.
  core.Map<core.String, core.String>? labels;

  /// The least stable launch stage needed to create this resource, as defined
  /// by
  /// [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).
  ///
  /// Cloud Run supports `ALPHA`, `BETA`, and `GA`. Note that this value might
  /// not be what was used as input. For example, if ALPHA was provided as input
  /// in the parent resource, but only BETA and GA-level features are were, this
  /// field will be BETA.
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

  /// The node selector for the revision.
  GoogleCloudRunV2NodeSelector? nodeSelector;

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

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Scaling settings for this revision.
  GoogleCloudRunV2RevisionScaling? scaling;

  /// The current effective scaling settings for the revision.
  ///
  /// Output only.
  GoogleCloudRunV2RevisionScalingStatus? scalingStatus;

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

  /// Enables service mesh connectivity.
  GoogleCloudRunV2ServiceMesh? serviceMesh;

  /// Enable session affinity.
  core.bool? sessionAffinity;

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
    this.creator,
    this.deleteTime,
    this.encryptionKey,
    this.encryptionKeyRevocationAction,
    this.encryptionKeyShutdownDuration,
    this.etag,
    this.executionEnvironment,
    this.expireTime,
    this.generation,
    this.gpuZonalRedundancyDisabled,
    this.labels,
    this.launchStage,
    this.logUri,
    this.maxInstanceRequestConcurrency,
    this.name,
    this.nodeSelector,
    this.observedGeneration,
    this.reconciling,
    this.satisfiesPzs,
    this.scaling,
    this.scalingStatus,
    this.service,
    this.serviceAccount,
    this.serviceMesh,
    this.sessionAffinity,
    this.timeout,
    this.uid,
    this.updateTime,
    this.volumes,
    this.vpcAccess,
  });

  GoogleCloudRunV2Revision.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Condition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        containers:
            (json_['containers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Container.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        encryptionKey: json_['encryptionKey'] as core.String?,
        encryptionKeyRevocationAction:
            json_['encryptionKeyRevocationAction'] as core.String?,
        encryptionKeyShutdownDuration:
            json_['encryptionKeyShutdownDuration'] as core.String?,
        etag: json_['etag'] as core.String?,
        executionEnvironment: json_['executionEnvironment'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        generation: json_['generation'] as core.String?,
        gpuZonalRedundancyDisabled:
            json_['gpuZonalRedundancyDisabled'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        launchStage: json_['launchStage'] as core.String?,
        logUri: json_['logUri'] as core.String?,
        maxInstanceRequestConcurrency:
            json_['maxInstanceRequestConcurrency'] as core.int?,
        name: json_['name'] as core.String?,
        nodeSelector:
            json_.containsKey('nodeSelector')
                ? GoogleCloudRunV2NodeSelector.fromJson(
                  json_['nodeSelector'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        observedGeneration: json_['observedGeneration'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        scaling:
            json_.containsKey('scaling')
                ? GoogleCloudRunV2RevisionScaling.fromJson(
                  json_['scaling'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        scalingStatus:
            json_.containsKey('scalingStatus')
                ? GoogleCloudRunV2RevisionScalingStatus.fromJson(
                  json_['scalingStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        service: json_['service'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceMesh:
            json_.containsKey('serviceMesh')
                ? GoogleCloudRunV2ServiceMesh.fromJson(
                  json_['serviceMesh'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sessionAffinity: json_['sessionAffinity'] as core.bool?,
        timeout: json_['timeout'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        volumes:
            (json_['volumes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Volume.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        vpcAccess:
            json_.containsKey('vpcAccess')
                ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (conditions != null) 'conditions': conditions!,
    if (containers != null) 'containers': containers!,
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (encryptionKey != null) 'encryptionKey': encryptionKey!,
    if (encryptionKeyRevocationAction != null)
      'encryptionKeyRevocationAction': encryptionKeyRevocationAction!,
    if (encryptionKeyShutdownDuration != null)
      'encryptionKeyShutdownDuration': encryptionKeyShutdownDuration!,
    if (etag != null) 'etag': etag!,
    if (executionEnvironment != null)
      'executionEnvironment': executionEnvironment!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (generation != null) 'generation': generation!,
    if (gpuZonalRedundancyDisabled != null)
      'gpuZonalRedundancyDisabled': gpuZonalRedundancyDisabled!,
    if (labels != null) 'labels': labels!,
    if (launchStage != null) 'launchStage': launchStage!,
    if (logUri != null) 'logUri': logUri!,
    if (maxInstanceRequestConcurrency != null)
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency!,
    if (name != null) 'name': name!,
    if (nodeSelector != null) 'nodeSelector': nodeSelector!,
    if (observedGeneration != null) 'observedGeneration': observedGeneration!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (scaling != null) 'scaling': scaling!,
    if (scalingStatus != null) 'scalingStatus': scalingStatus!,
    if (service != null) 'service': service!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceMesh != null) 'serviceMesh': serviceMesh!,
    if (sessionAffinity != null) 'sessionAffinity': sessionAffinity!,
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
  ///
  /// When unspecified, the field is set to the server default value of 100. For
  /// more information see
  /// https://cloud.google.com/run/docs/configuring/max-instances
  ///
  /// Optional.
  core.int? maxInstanceCount;

  /// Minimum number of serving instances that this resource should have.
  ///
  /// Optional.
  core.int? minInstanceCount;

  GoogleCloudRunV2RevisionScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
  });

  GoogleCloudRunV2RevisionScaling.fromJson(core.Map json_)
    : this(
        maxInstanceCount: json_['maxInstanceCount'] as core.int?,
        minInstanceCount: json_['minInstanceCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxInstanceCount != null) 'maxInstanceCount': maxInstanceCount!,
    if (minInstanceCount != null) 'minInstanceCount': minInstanceCount!,
  };
}

/// Effective settings for the current revision
class GoogleCloudRunV2RevisionScalingStatus {
  /// The current number of min instances provisioned for this revision.
  core.int? desiredMinInstanceCount;

  GoogleCloudRunV2RevisionScalingStatus({this.desiredMinInstanceCount});

  GoogleCloudRunV2RevisionScalingStatus.fromJson(core.Map json_)
    : this(
        desiredMinInstanceCount: json_['desiredMinInstanceCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (desiredMinInstanceCount != null)
      'desiredMinInstanceCount': desiredMinInstanceCount!,
  };
}

/// RevisionTemplate describes the data a revision should have when created from
/// a template.
class GoogleCloudRunV2RevisionTemplate {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system annotations in v1 now have a corresponding field in v2
  /// RevisionTemplate. This field follows Kubernetes annotations' namespacing,
  /// limits, and rules.
  ///
  /// Optional.
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

  /// The action to take if the encryption key is revoked.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" : Unspecified
  /// - "PREVENT_NEW" : Prevents the creation of new instances.
  /// - "SHUTDOWN" : Shuts down existing instances, and prevents creation of new
  /// ones.
  core.String? encryptionKeyRevocationAction;

  /// If encryption_key_revocation_action is SHUTDOWN, the duration before
  /// shutting down all instances.
  ///
  /// The minimum increment is 1 hour.
  ///
  /// Optional.
  core.String? encryptionKeyShutdownDuration;

  /// The sandbox environment to host this Revision.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXECUTION_ENVIRONMENT_UNSPECIFIED" : Unspecified
  /// - "EXECUTION_ENVIRONMENT_GEN1" : Uses the First Generation environment.
  /// - "EXECUTION_ENVIRONMENT_GEN2" : Uses Second Generation environment.
  core.String? executionEnvironment;

  /// True if GPU zonal redundancy is disabled on this revision.
  ///
  /// Optional.
  core.bool? gpuZonalRedundancyDisabled;

  /// Disables health checking containers during deployment.
  ///
  /// Optional.
  core.bool? healthCheckDisabled;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2
  /// does not support labels with `run.googleapis.com`, `cloud.googleapis.com`,
  /// `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they
  /// will be rejected. All system labels in v1 now have a corresponding field
  /// in v2 RevisionTemplate.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Sets the maximum number of requests that each serving instance can
  /// receive.
  ///
  /// If not specified or 0, concurrency defaults to 80 when requested `CPU >=
  /// 1` and defaults to 1 when requested `CPU < 1`.
  ///
  /// Optional.
  core.int? maxInstanceRequestConcurrency;

  /// The node selector for the revision template.
  ///
  /// Optional.
  GoogleCloudRunV2NodeSelector? nodeSelector;

  /// The unique name for the revision.
  ///
  /// If this field is omitted, it will be automatically generated based on the
  /// Service name.
  ///
  /// Optional.
  core.String? revision;

  /// Scaling settings for this Revision.
  ///
  /// Optional.
  GoogleCloudRunV2RevisionScaling? scaling;

  /// Email address of the IAM service account associated with the revision of
  /// the service.
  ///
  /// The service account represents the identity of the running revision, and
  /// determines what permissions the revision has. If not provided, the
  /// revision will use the project's default service account.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Enables service mesh connectivity.
  ///
  /// Optional.
  GoogleCloudRunV2ServiceMesh? serviceMesh;

  /// Enable session affinity.
  ///
  /// Optional.
  core.bool? sessionAffinity;

  /// Max allowed time for an instance to respond to a request.
  ///
  /// Optional.
  core.String? timeout;

  /// A list of Volumes to make available to containers.
  ///
  /// Optional.
  core.List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration to use for this Revision.
  ///
  /// For more information, visit
  /// https://cloud.google.com/run/docs/configuring/connecting-vpc.
  ///
  /// Optional.
  GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2RevisionTemplate({
    this.annotations,
    this.containers,
    this.encryptionKey,
    this.encryptionKeyRevocationAction,
    this.encryptionKeyShutdownDuration,
    this.executionEnvironment,
    this.gpuZonalRedundancyDisabled,
    this.healthCheckDisabled,
    this.labels,
    this.maxInstanceRequestConcurrency,
    this.nodeSelector,
    this.revision,
    this.scaling,
    this.serviceAccount,
    this.serviceMesh,
    this.sessionAffinity,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  GoogleCloudRunV2RevisionTemplate.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        containers:
            (json_['containers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Container.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        encryptionKey: json_['encryptionKey'] as core.String?,
        encryptionKeyRevocationAction:
            json_['encryptionKeyRevocationAction'] as core.String?,
        encryptionKeyShutdownDuration:
            json_['encryptionKeyShutdownDuration'] as core.String?,
        executionEnvironment: json_['executionEnvironment'] as core.String?,
        gpuZonalRedundancyDisabled:
            json_['gpuZonalRedundancyDisabled'] as core.bool?,
        healthCheckDisabled: json_['healthCheckDisabled'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        maxInstanceRequestConcurrency:
            json_['maxInstanceRequestConcurrency'] as core.int?,
        nodeSelector:
            json_.containsKey('nodeSelector')
                ? GoogleCloudRunV2NodeSelector.fromJson(
                  json_['nodeSelector'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        revision: json_['revision'] as core.String?,
        scaling:
            json_.containsKey('scaling')
                ? GoogleCloudRunV2RevisionScaling.fromJson(
                  json_['scaling'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceMesh:
            json_.containsKey('serviceMesh')
                ? GoogleCloudRunV2ServiceMesh.fromJson(
                  json_['serviceMesh'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sessionAffinity: json_['sessionAffinity'] as core.bool?,
        timeout: json_['timeout'] as core.String?,
        volumes:
            (json_['volumes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Volume.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        vpcAccess:
            json_.containsKey('vpcAccess')
                ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (containers != null) 'containers': containers!,
    if (encryptionKey != null) 'encryptionKey': encryptionKey!,
    if (encryptionKeyRevocationAction != null)
      'encryptionKeyRevocationAction': encryptionKeyRevocationAction!,
    if (encryptionKeyShutdownDuration != null)
      'encryptionKeyShutdownDuration': encryptionKeyShutdownDuration!,
    if (executionEnvironment != null)
      'executionEnvironment': executionEnvironment!,
    if (gpuZonalRedundancyDisabled != null)
      'gpuZonalRedundancyDisabled': gpuZonalRedundancyDisabled!,
    if (healthCheckDisabled != null)
      'healthCheckDisabled': healthCheckDisabled!,
    if (labels != null) 'labels': labels!,
    if (maxInstanceRequestConcurrency != null)
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency!,
    if (nodeSelector != null) 'nodeSelector': nodeSelector!,
    if (revision != null) 'revision': revision!,
    if (scaling != null) 'scaling': scaling!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceMesh != null) 'serviceMesh': serviceMesh!,
    if (sessionAffinity != null) 'sessionAffinity': sessionAffinity!,
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

  /// Overrides specification for a given execution of a job.
  ///
  /// If provided, overrides will be applied to update the execution or task
  /// spec.
  GoogleCloudRunV2Overrides? overrides;

  /// Indicates that the request should be validated without actually deleting
  /// any resources.
  core.bool? validateOnly;

  GoogleCloudRunV2RunJobRequest({this.etag, this.overrides, this.validateOnly});

  GoogleCloudRunV2RunJobRequest.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        overrides:
            json_.containsKey('overrides')
                ? GoogleCloudRunV2Overrides.fromJson(
                  json_['overrides'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (etag != null) 'etag': etag!,
    if (overrides != null) 'overrides': overrides!,
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

  GoogleCloudRunV2SecretKeySelector({this.secret, this.version});

  GoogleCloudRunV2SecretKeySelector.fromJson(core.Map json_)
    : this(
        secret: json_['secret'] as core.String?,
        version: json_['version'] as core.String?,
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
  /// Some examples: for chmod 640 (u=rw,g=r), set to 0640 (octal) or 416
  /// (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493
  /// (base-10). * This might be in conflict with other options that affect the
  /// file mode, like fsGroup, and the result can be other mode bits set. This
  /// might be in conflict with other options that affect the file mode, like
  /// fsGroup, and as a result, other mode bits could be set.
  core.int? defaultMode;

  /// If unspecified, the volume will expose a file whose name is the secret,
  /// relative to VolumeMount.mount_path + VolumeMount.sub_path.
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
        defaultMode: json_['defaultMode'] as core.int?,
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2VersionToPath.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        secret: json_['secret'] as core.String?,
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
  /// `autoscaling.knative.dev` namespaces, and they will be rejected in new
  /// resources. All system annotations in v1 now have a corresponding field in
  /// v2 Service. This field follows Kubernetes annotations' namespacing,
  /// limits, and rules.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Settings for the Binary Authorization feature.
  ///
  /// Optional.
  GoogleCloudRunV2BinaryAuthorization? binaryAuthorization;

  /// Configuration for building a Cloud Run function.
  ///
  /// Optional.
  GoogleCloudRunV2BuildConfig? buildConfig;

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

  /// One or more custom audiences that you want this service to support.
  ///
  /// Specify each custom audience as the full URL in a string. The custom
  /// audiences are encoded in the token and used to authenticate requests. For
  /// more information, see
  /// https://cloud.google.com/run/docs/configuring/custom-audiences.
  core.List<core.String>? customAudiences;

  /// Disables public resolution of the default URI of this service.
  ///
  /// Optional.
  core.bool? defaultUriDisabled;

  /// The deletion time.
  ///
  /// It is only populated as a response to a Delete request.
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
  /// Optional.
  core.String? etag;

  /// For a deleted resource, the time after which it will be permanently
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

  /// IAP settings on the Service.
  ///
  /// Optional.
  core.bool? iapEnabled;

  /// Provides the ingress settings for this Service.
  ///
  /// On output, returns the currently observed ingress settings, or
  /// INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INGRESS_TRAFFIC_UNSPECIFIED" : Unspecified
  /// - "INGRESS_TRAFFIC_ALL" : All inbound traffic is allowed.
  /// - "INGRESS_TRAFFIC_INTERNAL_ONLY" : Only internal traffic is allowed.
  /// - "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER" : Both internal and Google
  /// Cloud Load Balancer traffic is allowed.
  /// - "INGRESS_TRAFFIC_NONE" : No ingress traffic is allowed.
  core.String? ingress;

  /// Disables IAM permission check for run.routes.invoke for callers of this
  /// service.
  ///
  /// For more information, visit
  /// https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  ///
  /// Optional.
  core.bool? invokerIamDisabled;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2
  /// does not support labels with `run.googleapis.com`, `cloud.googleapis.com`,
  /// `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they
  /// will be rejected. All system labels in v1 now have a corresponding field
  /// in v2 Service.
  ///
  /// Optional.
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
  /// is assumed. Set the launch stage to a preview stage on input to allow use
  /// of preview features in that stage. On read (or output), describes whether
  /// the resource uses preview features. For example, if ALPHA is provided as
  /// input, but only BETA and GA-level features are used, this field will be
  /// BETA on output.
  ///
  /// Optional.
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

  /// Settings for multi-region deployment.
  ///
  /// Optional.
  GoogleCloudRunV2MultiRegionSettings? multiRegionSettings;

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
  /// `latest_ready_revision`, `traffic_statuses`, and `uri` will have transient
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

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Specifies service-level scaling settings
  ///
  /// Optional.
  GoogleCloudRunV2ServiceScaling? scaling;

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

  /// True if Cloud Run Threat Detection monitoring is enabled for the parent
  /// project of this Service.
  ///
  /// Output only.
  core.bool? threatDetectionEnabled;

  /// Specifies how to distribute traffic over a collection of Revisions
  /// belonging to the Service.
  ///
  /// If traffic is empty or not provided, defaults to 100% traffic to the
  /// latest `Ready` Revision.
  ///
  /// Optional.
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

  /// All URLs serving traffic for this Service.
  ///
  /// Output only.
  core.List<core.String>? urls;

  GoogleCloudRunV2Service({
    this.annotations,
    this.binaryAuthorization,
    this.buildConfig,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.customAudiences,
    this.defaultUriDisabled,
    this.deleteTime,
    this.description,
    this.etag,
    this.expireTime,
    this.generation,
    this.iapEnabled,
    this.ingress,
    this.invokerIamDisabled,
    this.labels,
    this.lastModifier,
    this.latestCreatedRevision,
    this.latestReadyRevision,
    this.launchStage,
    this.multiRegionSettings,
    this.name,
    this.observedGeneration,
    this.reconciling,
    this.satisfiesPzs,
    this.scaling,
    this.template,
    this.terminalCondition,
    this.threatDetectionEnabled,
    this.traffic,
    this.trafficStatuses,
    this.uid,
    this.updateTime,
    this.uri,
    this.urls,
  });

  GoogleCloudRunV2Service.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        binaryAuthorization:
            json_.containsKey('binaryAuthorization')
                ? GoogleCloudRunV2BinaryAuthorization.fromJson(
                  json_['binaryAuthorization']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        buildConfig:
            json_.containsKey('buildConfig')
                ? GoogleCloudRunV2BuildConfig.fromJson(
                  json_['buildConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        client: json_['client'] as core.String?,
        clientVersion: json_['clientVersion'] as core.String?,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Condition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        customAudiences:
            (json_['customAudiences'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        defaultUriDisabled: json_['defaultUriDisabled'] as core.bool?,
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        generation: json_['generation'] as core.String?,
        iapEnabled: json_['iapEnabled'] as core.bool?,
        ingress: json_['ingress'] as core.String?,
        invokerIamDisabled: json_['invokerIamDisabled'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lastModifier: json_['lastModifier'] as core.String?,
        latestCreatedRevision: json_['latestCreatedRevision'] as core.String?,
        latestReadyRevision: json_['latestReadyRevision'] as core.String?,
        launchStage: json_['launchStage'] as core.String?,
        multiRegionSettings:
            json_.containsKey('multiRegionSettings')
                ? GoogleCloudRunV2MultiRegionSettings.fromJson(
                  json_['multiRegionSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        observedGeneration: json_['observedGeneration'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        scaling:
            json_.containsKey('scaling')
                ? GoogleCloudRunV2ServiceScaling.fromJson(
                  json_['scaling'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        template:
            json_.containsKey('template')
                ? GoogleCloudRunV2RevisionTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        terminalCondition:
            json_.containsKey('terminalCondition')
                ? GoogleCloudRunV2Condition.fromJson(
                  json_['terminalCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        threatDetectionEnabled: json_['threatDetectionEnabled'] as core.bool?,
        traffic:
            (json_['traffic'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2TrafficTarget.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        trafficStatuses:
            (json_['trafficStatuses'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2TrafficTargetStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        uri: json_['uri'] as core.String?,
        urls:
            (json_['urls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (binaryAuthorization != null)
      'binaryAuthorization': binaryAuthorization!,
    if (buildConfig != null) 'buildConfig': buildConfig!,
    if (client != null) 'client': client!,
    if (clientVersion != null) 'clientVersion': clientVersion!,
    if (conditions != null) 'conditions': conditions!,
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (customAudiences != null) 'customAudiences': customAudiences!,
    if (defaultUriDisabled != null) 'defaultUriDisabled': defaultUriDisabled!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (generation != null) 'generation': generation!,
    if (iapEnabled != null) 'iapEnabled': iapEnabled!,
    if (ingress != null) 'ingress': ingress!,
    if (invokerIamDisabled != null) 'invokerIamDisabled': invokerIamDisabled!,
    if (labels != null) 'labels': labels!,
    if (lastModifier != null) 'lastModifier': lastModifier!,
    if (latestCreatedRevision != null)
      'latestCreatedRevision': latestCreatedRevision!,
    if (latestReadyRevision != null)
      'latestReadyRevision': latestReadyRevision!,
    if (launchStage != null) 'launchStage': launchStage!,
    if (multiRegionSettings != null)
      'multiRegionSettings': multiRegionSettings!,
    if (name != null) 'name': name!,
    if (observedGeneration != null) 'observedGeneration': observedGeneration!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (scaling != null) 'scaling': scaling!,
    if (template != null) 'template': template!,
    if (terminalCondition != null) 'terminalCondition': terminalCondition!,
    if (threatDetectionEnabled != null)
      'threatDetectionEnabled': threatDetectionEnabled!,
    if (traffic != null) 'traffic': traffic!,
    if (trafficStatuses != null) 'trafficStatuses': trafficStatuses!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (uri != null) 'uri': uri!,
    if (urls != null) 'urls': urls!,
  };
}

/// Settings for Cloud Service Mesh.
///
/// For more information see
/// https://cloud.google.com/service-mesh/docs/overview.
class GoogleCloudRunV2ServiceMesh {
  /// The Mesh resource name.
  ///
  /// Format: `projects/{project}/locations/global/meshes/{mesh}`, where
  /// `{project}` can be project id or number.
  core.String? mesh;

  GoogleCloudRunV2ServiceMesh({this.mesh});

  GoogleCloudRunV2ServiceMesh.fromJson(core.Map json_)
    : this(mesh: json_['mesh'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (mesh != null) 'mesh': mesh!,
  };
}

/// Scaling settings applied at the service level rather than at the revision
/// level.
class GoogleCloudRunV2ServiceScaling {
  /// total instance count for the service in manual scaling mode.
  ///
  /// This number of instances is divided among all revisions with specified
  /// traffic based on the percent of traffic they are receiving.
  ///
  /// Optional.
  core.int? manualInstanceCount;

  /// total max instances for the service.
  ///
  /// This number of instances is divided among all revisions with specified
  /// traffic based on the percent of traffic they are receiving.
  ///
  /// Optional.
  core.int? maxInstanceCount;

  /// total min instances for the service.
  ///
  /// This number of instances is divided among all revisions with specified
  /// traffic based on the percent of traffic they are receiving.
  ///
  /// Optional.
  core.int? minInstanceCount;

  /// The scaling mode for the service.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCALING_MODE_UNSPECIFIED" : Unspecified.
  /// - "AUTOMATIC" : Scale based on traffic between min and max instances.
  /// - "MANUAL" : Scale to exactly min instances and ignore max instances.
  core.String? scalingMode;

  GoogleCloudRunV2ServiceScaling({
    this.manualInstanceCount,
    this.maxInstanceCount,
    this.minInstanceCount,
    this.scalingMode,
  });

  GoogleCloudRunV2ServiceScaling.fromJson(core.Map json_)
    : this(
        manualInstanceCount: json_['manualInstanceCount'] as core.int?,
        maxInstanceCount: json_['maxInstanceCount'] as core.int?,
        minInstanceCount: json_['minInstanceCount'] as core.int?,
        scalingMode: json_['scalingMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (manualInstanceCount != null)
      'manualInstanceCount': manualInstanceCount!,
    if (maxInstanceCount != null) 'maxInstanceCount': maxInstanceCount!,
    if (minInstanceCount != null) 'minInstanceCount': minInstanceCount!,
    if (scalingMode != null) 'scalingMode': scalingMode!,
  };
}

/// Location of the source in an archive file in Google Cloud Storage.
class GoogleCloudRunV2StorageSource {
  /// Google Cloud Storage bucket containing the source (see
  /// [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  ///
  /// Required.
  core.String? bucket;

  /// Google Cloud Storage generation for the object.
  ///
  /// If the generation is omitted, the latest generation will be used.
  ///
  /// Optional.
  core.String? generation;

  /// Google Cloud Storage object containing the source.
  ///
  /// This object must be a gzipped archive file (`.tar.gz`) containing source
  /// to build.
  ///
  /// Required.
  core.String? object;

  GoogleCloudRunV2StorageSource({this.bucket, this.generation, this.object});

  GoogleCloudRunV2StorageSource.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        generation: json_['generation'] as core.String?,
        object: json_['object'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (generation != null) 'generation': generation!,
    if (object != null) 'object': object!,
  };
}

/// Request message for submitting a Build.
class GoogleCloudRunV2SubmitBuildRequest {
  /// Build the source using Buildpacks.
  GoogleCloudRunV2BuildpacksBuild? buildpackBuild;

  /// Build the source using Docker.
  ///
  /// This means the source has a Dockerfile.
  GoogleCloudRunV2DockerBuild? dockerBuild;

  /// Artifact Registry URI to store the built image.
  ///
  /// Required.
  core.String? imageUri;

  /// The machine type from default pool to use for the build.
  ///
  /// If left blank, cloudbuild will use a sensible default. Currently only
  /// E2_HIGHCPU_8 is supported. If worker_pool is set, this field will be
  /// ignored.
  ///
  /// Optional.
  core.String? machineType;

  /// The release track of the client that initiated the build request.
  ///
  /// Optional.
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
  core.String? releaseTrack;

  /// The service account to use for the build.
  ///
  /// If not set, the default Cloud Build service account for the project will
  /// be used.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Source for the build.
  ///
  /// Required.
  GoogleCloudRunV2StorageSource? storageSource;

  /// Additional tags to annotate the build.
  ///
  /// Optional.
  core.List<core.String>? tags;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build
  /// the function.
  ///
  /// The format of this field is
  /// `projects/{project}/locations/{region}/workerPools/{workerPool}` where
  /// `{project}` and `{region}` are the project id and region respectively
  /// where the worker pool is defined and `{workerPool}` is the short name of
  /// the worker pool.
  ///
  /// Optional.
  core.String? workerPool;

  GoogleCloudRunV2SubmitBuildRequest({
    this.buildpackBuild,
    this.dockerBuild,
    this.imageUri,
    this.machineType,
    this.releaseTrack,
    this.serviceAccount,
    this.storageSource,
    this.tags,
    this.workerPool,
  });

  GoogleCloudRunV2SubmitBuildRequest.fromJson(core.Map json_)
    : this(
        buildpackBuild:
            json_.containsKey('buildpackBuild')
                ? GoogleCloudRunV2BuildpacksBuild.fromJson(
                  json_['buildpackBuild']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dockerBuild:
            json_.containsKey('dockerBuild')
                ? GoogleCloudRunV2DockerBuild.fromJson(
                  json_['dockerBuild'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        imageUri: json_['imageUri'] as core.String?,
        machineType: json_['machineType'] as core.String?,
        releaseTrack: json_['releaseTrack'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        storageSource:
            json_.containsKey('storageSource')
                ? GoogleCloudRunV2StorageSource.fromJson(
                  json_['storageSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        workerPool: json_['workerPool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buildpackBuild != null) 'buildpackBuild': buildpackBuild!,
    if (dockerBuild != null) 'dockerBuild': dockerBuild!,
    if (imageUri != null) 'imageUri': imageUri!,
    if (machineType != null) 'machineType': machineType!,
    if (releaseTrack != null) 'releaseTrack': releaseTrack!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (storageSource != null) 'storageSource': storageSource!,
    if (tags != null) 'tags': tags!,
    if (workerPool != null) 'workerPool': workerPool!,
  };
}

/// Response message for submitting a Build.
class GoogleCloudRunV2SubmitBuildResponse {
  /// URI of the base builder image in Artifact Registry being used in the
  /// build.
  ///
  /// Used to opt into automatic base image updates.
  core.String? baseImageUri;

  /// Warning message for the base image.
  core.String? baseImageWarning;

  /// Cloud Build operation to be polled via CloudBuild API.
  GoogleLongrunningOperation? buildOperation;

  GoogleCloudRunV2SubmitBuildResponse({
    this.baseImageUri,
    this.baseImageWarning,
    this.buildOperation,
  });

  GoogleCloudRunV2SubmitBuildResponse.fromJson(core.Map json_)
    : this(
        baseImageUri: json_['baseImageUri'] as core.String?,
        baseImageWarning: json_['baseImageWarning'] as core.String?,
        buildOperation:
            json_.containsKey('buildOperation')
                ? GoogleLongrunningOperation.fromJson(
                  json_['buildOperation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseImageUri != null) 'baseImageUri': baseImageUri!,
    if (baseImageWarning != null) 'baseImageWarning': baseImageWarning!,
    if (buildOperation != null) 'buildOperation': buildOperation!,
  };
}

/// TCPSocketAction describes an action based on opening a socket
class GoogleCloudRunV2TCPSocketAction {
  /// Port number to access on the container.
  ///
  /// Must be in the range 1 to 65535. If not specified, defaults to the exposed
  /// port of the container, which is the value of
  /// container.ports\[0\].containerPort.
  ///
  /// Optional.
  core.int? port;

  GoogleCloudRunV2TCPSocketAction({this.port});

  GoogleCloudRunV2TCPSocketAction.fromJson(core.Map json_)
    : this(port: json_['port'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (port != null) 'port': port!,
  };
}

/// Task represents a single run of a container to completion.
class GoogleCloudRunV2Task {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  ///
  /// Output only.
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

  /// Represents time when the task was created by the system.
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

  /// True if GPU zonal redundancy is disabled on this task.
  ///
  /// Optional. Output only.
  core.bool? gpuZonalRedundancyDisabled;

  /// Index of the Task, unique per execution, and beginning at 0.
  ///
  /// Output only.
  core.int? index;

  /// The name of the parent Job.
  ///
  /// Output only.
  core.String? job;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels
  ///
  /// Output only.
  core.Map<core.String, core.String>? labels;

  /// Result of the last attempt of this Task.
  ///
  /// Output only.
  GoogleCloudRunV2TaskAttemptResult? lastAttemptResult;

  /// URI where logs for this execution can be found in Cloud Console.
  ///
  /// Output only.
  core.String? logUri;

  /// Number of retries allowed per Task, before marking this Task failed.
  core.int? maxRetries;

  /// The unique name of this Task.
  ///
  /// Output only.
  core.String? name;

  /// The node selector for the task.
  ///
  /// Output only.
  GoogleCloudRunV2NodeSelector? nodeSelector;

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

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Represents time when the task was scheduled to run by the system.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations.
  ///
  /// Output only.
  core.String? scheduledTime;

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
    this.gpuZonalRedundancyDisabled,
    this.index,
    this.job,
    this.labels,
    this.lastAttemptResult,
    this.logUri,
    this.maxRetries,
    this.name,
    this.nodeSelector,
    this.observedGeneration,
    this.reconciling,
    this.retried,
    this.satisfiesPzs,
    this.scheduledTime,
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
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        completionTime: json_['completionTime'] as core.String?,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Condition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        containers:
            (json_['containers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Container.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        encryptionKey: json_['encryptionKey'] as core.String?,
        etag: json_['etag'] as core.String?,
        execution: json_['execution'] as core.String?,
        executionEnvironment: json_['executionEnvironment'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        generation: json_['generation'] as core.String?,
        gpuZonalRedundancyDisabled:
            json_['gpuZonalRedundancyDisabled'] as core.bool?,
        index: json_['index'] as core.int?,
        job: json_['job'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lastAttemptResult:
            json_.containsKey('lastAttemptResult')
                ? GoogleCloudRunV2TaskAttemptResult.fromJson(
                  json_['lastAttemptResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        logUri: json_['logUri'] as core.String?,
        maxRetries: json_['maxRetries'] as core.int?,
        name: json_['name'] as core.String?,
        nodeSelector:
            json_.containsKey('nodeSelector')
                ? GoogleCloudRunV2NodeSelector.fromJson(
                  json_['nodeSelector'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        observedGeneration: json_['observedGeneration'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        retried: json_['retried'] as core.int?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        scheduledTime: json_['scheduledTime'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        timeout: json_['timeout'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        volumes:
            (json_['volumes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Volume.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        vpcAccess:
            json_.containsKey('vpcAccess')
                ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>,
                )
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
    if (gpuZonalRedundancyDisabled != null)
      'gpuZonalRedundancyDisabled': gpuZonalRedundancyDisabled!,
    if (index != null) 'index': index!,
    if (job != null) 'job': job!,
    if (labels != null) 'labels': labels!,
    if (lastAttemptResult != null) 'lastAttemptResult': lastAttemptResult!,
    if (logUri != null) 'logUri': logUri!,
    if (maxRetries != null) 'maxRetries': maxRetries!,
    if (name != null) 'name': name!,
    if (nodeSelector != null) 'nodeSelector': nodeSelector!,
    if (observedGeneration != null) 'observedGeneration': observedGeneration!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (retried != null) 'retried': retried!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (scheduledTime != null) 'scheduledTime': scheduledTime!,
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
  /// At most one of exit_code or term_signal will be set.
  ///
  /// Output only.
  core.int? exitCode;

  /// The status of this attempt.
  ///
  /// If the status code is OK, then the attempt succeeded.
  ///
  /// Output only.
  GoogleRpcStatus? status;

  /// Termination signal of the container.
  ///
  /// This is set to non-zero if the container is terminated by the system. At
  /// most one of exit_code or term_signal will be set.
  ///
  /// Output only.
  core.int? termSignal;

  GoogleCloudRunV2TaskAttemptResult({
    this.exitCode,
    this.status,
    this.termSignal,
  });

  GoogleCloudRunV2TaskAttemptResult.fromJson(core.Map json_)
    : this(
        exitCode: json_['exitCode'] as core.int?,
        status:
            json_.containsKey('status')
                ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        termSignal: json_['termSignal'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exitCode != null) 'exitCode': exitCode!,
    if (status != null) 'status': status!,
    if (termSignal != null) 'termSignal': termSignal!,
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
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXECUTION_ENVIRONMENT_UNSPECIFIED" : Unspecified
  /// - "EXECUTION_ENVIRONMENT_GEN1" : Uses the First Generation environment.
  /// - "EXECUTION_ENVIRONMENT_GEN2" : Uses Second Generation environment.
  core.String? executionEnvironment;

  /// True if GPU zonal redundancy is disabled on this task template.
  ///
  /// Optional.
  core.bool? gpuZonalRedundancyDisabled;

  /// Number of retries allowed per Task, before marking this Task failed.
  ///
  /// Defaults to 3.
  core.int? maxRetries;

  /// The node selector for the task template.
  ///
  /// Optional.
  GoogleCloudRunV2NodeSelector? nodeSelector;

  /// Email address of the IAM service account associated with the Task of a
  /// Job.
  ///
  /// The service account represents the identity of the running task, and
  /// determines what permissions the task has. If not provided, the task will
  /// use the project's default service account.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Max allowed time duration the Task may be active before the system will
  /// actively try to mark it failed and kill associated containers.
  ///
  /// This applies per attempt of a task, meaning each retry can run for the
  /// full timeout. Defaults to 600 seconds.
  ///
  /// Optional.
  core.String? timeout;

  /// A list of Volumes to make available to containers.
  ///
  /// Optional.
  core.List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration to use for this Task.
  ///
  /// For more information, visit
  /// https://cloud.google.com/run/docs/configuring/connecting-vpc.
  ///
  /// Optional.
  GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2TaskTemplate({
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.gpuZonalRedundancyDisabled,
    this.maxRetries,
    this.nodeSelector,
    this.serviceAccount,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  GoogleCloudRunV2TaskTemplate.fromJson(core.Map json_)
    : this(
        containers:
            (json_['containers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Container.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        encryptionKey: json_['encryptionKey'] as core.String?,
        executionEnvironment: json_['executionEnvironment'] as core.String?,
        gpuZonalRedundancyDisabled:
            json_['gpuZonalRedundancyDisabled'] as core.bool?,
        maxRetries: json_['maxRetries'] as core.int?,
        nodeSelector:
            json_.containsKey('nodeSelector')
                ? GoogleCloudRunV2NodeSelector.fromJson(
                  json_['nodeSelector'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccount: json_['serviceAccount'] as core.String?,
        timeout: json_['timeout'] as core.String?,
        volumes:
            (json_['volumes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Volume.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        vpcAccess:
            json_.containsKey('vpcAccess')
                ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (containers != null) 'containers': containers!,
    if (encryptionKey != null) 'encryptionKey': encryptionKey!,
    if (executionEnvironment != null)
      'executionEnvironment': executionEnvironment!,
    if (gpuZonalRedundancyDisabled != null)
      'gpuZonalRedundancyDisabled': gpuZonalRedundancyDisabled!,
    if (maxRetries != null) 'maxRetries': maxRetries!,
    if (nodeSelector != null) 'nodeSelector': nodeSelector!,
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
        percent: json_['percent'] as core.int?,
        revision: json_['revision'] as core.String?,
        tag: json_['tag'] as core.String?,
        type: json_['type'] as core.String?,
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
        percent: json_['percent'] as core.int?,
        revision: json_['revision'] as core.String?,
        tag: json_['tag'] as core.String?,
        type: json_['type'] as core.String?,
        uri: json_['uri'] as core.String?,
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
  /// Some examples: for chmod 640 (u=rw,g=r), set to 0640 (octal) or 416
  /// (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493
  /// (base-10). * This might be in conflict with other options that affect the
  /// file mode, like fsGroup, and the result can be other mode bits set.
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

  GoogleCloudRunV2VersionToPath({this.mode, this.path, this.version});

  GoogleCloudRunV2VersionToPath.fromJson(core.Map json_)
    : this(
        mode: json_['mode'] as core.int?,
        path: json_['path'] as core.String?,
        version: json_['version'] as core.String?,
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

  /// Ephemeral storage used as a shared volume.
  GoogleCloudRunV2EmptyDirVolumeSource? emptyDir;

  /// Persistent storage backed by a Google Cloud Storage bucket.
  GoogleCloudRunV2GCSVolumeSource? gcs;

  /// Volume's name.
  ///
  /// Required.
  core.String? name;

  /// For NFS Voumes, contains the path to the nfs Volume
  GoogleCloudRunV2NFSVolumeSource? nfs;

  /// Secret represents a secret that should populate this volume.
  GoogleCloudRunV2SecretVolumeSource? secret;

  GoogleCloudRunV2Volume({
    this.cloudSqlInstance,
    this.emptyDir,
    this.gcs,
    this.name,
    this.nfs,
    this.secret,
  });

  GoogleCloudRunV2Volume.fromJson(core.Map json_)
    : this(
        cloudSqlInstance:
            json_.containsKey('cloudSqlInstance')
                ? GoogleCloudRunV2CloudSqlInstance.fromJson(
                  json_['cloudSqlInstance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        emptyDir:
            json_.containsKey('emptyDir')
                ? GoogleCloudRunV2EmptyDirVolumeSource.fromJson(
                  json_['emptyDir'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcs:
            json_.containsKey('gcs')
                ? GoogleCloudRunV2GCSVolumeSource.fromJson(
                  json_['gcs'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        nfs:
            json_.containsKey('nfs')
                ? GoogleCloudRunV2NFSVolumeSource.fromJson(
                  json_['nfs'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        secret:
            json_.containsKey('secret')
                ? GoogleCloudRunV2SecretVolumeSource.fromJson(
                  json_['secret'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudSqlInstance != null) 'cloudSqlInstance': cloudSqlInstance!,
    if (emptyDir != null) 'emptyDir': emptyDir!,
    if (gcs != null) 'gcs': gcs!,
    if (name != null) 'name': name!,
    if (nfs != null) 'nfs': nfs!,
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

  /// Path within the volume from which the container's volume should be
  /// mounted.
  ///
  /// Defaults to "" (volume's root).
  ///
  /// Optional.
  core.String? subPath;

  GoogleCloudRunV2VolumeMount({this.mountPath, this.name, this.subPath});

  GoogleCloudRunV2VolumeMount.fromJson(core.Map json_)
    : this(
        mountPath: json_['mountPath'] as core.String?,
        name: json_['name'] as core.String?,
        subPath: json_['subPath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mountPath != null) 'mountPath': mountPath!,
    if (name != null) 'name': name!,
    if (subPath != null) 'subPath': subPath!,
  };
}

/// VPC Access settings.
///
/// For more information on sending traffic to a VPC network, visit
/// https://cloud.google.com/run/docs/configuring/connecting-vpc.
class GoogleCloudRunV2VpcAccess {
  /// VPC Access connector name.
  ///
  /// Format: `projects/{project}/locations/{location}/connectors/{connector}`,
  /// where `{project}` can be project id or number. For more information on
  /// sending traffic to a VPC network via a connector, visit
  /// https://cloud.google.com/run/docs/configuring/vpc-connectors.
  core.String? connector;

  /// Traffic VPC egress settings.
  ///
  /// If not provided, it defaults to PRIVATE_RANGES_ONLY.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VPC_EGRESS_UNSPECIFIED" : Unspecified
  /// - "ALL_TRAFFIC" : All outbound traffic is routed through the VPC
  /// connector.
  /// - "PRIVATE_RANGES_ONLY" : Only private IP ranges are routed through the
  /// VPC connector.
  core.String? egress;

  /// Direct VPC egress settings.
  ///
  /// Currently only single network interface is supported.
  ///
  /// Optional.
  core.List<GoogleCloudRunV2NetworkInterface>? networkInterfaces;

  GoogleCloudRunV2VpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  GoogleCloudRunV2VpcAccess.fromJson(core.Map json_)
    : this(
        connector: json_['connector'] as core.String?,
        egress: json_['egress'] as core.String?,
        networkInterfaces:
            (json_['networkInterfaces'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2NetworkInterface.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connector != null) 'connector': connector!,
    if (egress != null) 'egress': egress!,
    if (networkInterfaces != null) 'networkInterfaces': networkInterfaces!,
  };
}

/// WorkerPool acts as a top-level container that manages a set of
/// configurations and revision templates which implement a pull-based workload.
///
/// WorkerPool exists to provide a singular abstraction which can be access
/// controlled, reasoned about, and which encapsulates software lifecycle
/// decisions such as rollout policy and team resource ownership.
class GoogleCloudRunV2WorkerPool {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected in new
  /// resources. All system annotations in v1 now have a corresponding field in
  /// v2 WorkerPool. This field follows Kubernetes annotations' namespacing,
  /// limits, and rules.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Settings for the Binary Authorization feature.
  ///
  /// Optional.
  GoogleCloudRunV2BinaryAuthorization? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  core.String? client;

  /// Arbitrary version identifier for the API client.
  core.String? clientVersion;

  /// The Conditions of all other associated sub-resources.
  ///
  /// They contain additional diagnostics information in case the WorkerPool
  /// does not reach its Serving state. See comments in `reconciling` for
  /// additional information on reconciliation process in Cloud Run.
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

  /// One or more custom audiences that you want this worker pool to support.
  ///
  /// Specify each custom audience as the full URL in a string. The custom
  /// audiences are encoded in the token and used to authenticate requests. For
  /// more information, see
  /// https://cloud.google.com/run/docs/configuring/custom-audiences.
  core.List<core.String>? customAudiences;

  /// The deletion time.
  ///
  /// It is only populated as a response to a Delete request.
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-provided description of the WorkerPool.
  ///
  /// This field currently has a 512-character limit.
  core.String? description;

  /// A system-generated fingerprint for this version of the resource.
  ///
  /// May be used to detect modification conflict during updates.
  ///
  /// Optional.
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

  /// Detailed status information for corresponding instance splits.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  core.List<GoogleCloudRunV2InstanceSplitStatus>? instanceSplitStatuses;

  /// Specifies how to distribute instances over a collection of Revisions
  /// belonging to the WorkerPool.
  ///
  /// If instance split is empty or not provided, defaults to 100% instances
  /// assigned to the latest `Ready` Revision.
  ///
  /// Optional.
  core.List<GoogleCloudRunV2InstanceSplit>? instanceSplits;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2
  /// does not support labels with `run.googleapis.com`, `cloud.googleapis.com`,
  /// `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they
  /// will be rejected. All system labels in v1 now have a corresponding field
  /// in v2 WorkerPool.
  ///
  /// Optional.
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

  /// Name of the latest revision that is serving workloads.
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
  /// is assumed. Set the launch stage to a preview stage on input to allow use
  /// of preview features in that stage. On read (or output), describes whether
  /// the resource uses preview features. For example, if ALPHA is provided as
  /// input, but only BETA and GA-level features are used, this field will be
  /// BETA on output.
  ///
  /// Optional.
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

  /// The fully qualified name of this WorkerPool.
  ///
  /// In CreateWorkerPoolRequest, this field is ignored, and instead composed
  /// from CreateWorkerPoolRequest.parent and CreateWorkerPoolRequest.worker_id.
  /// Format: `projects/{project}/locations/{location}/workerPools/{worker_id}`
  core.String? name;

  /// The generation of this WorkerPool currently serving workloads.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run. Please note that unlike v1, this is an int64 value.
  /// As with most Google APIs, its JSON representation will be a `string`
  /// instead of an `integer`.
  ///
  /// Output only.
  core.String? observedGeneration;

  /// Returns true if the WorkerPool is currently being acted upon by the system
  /// to bring it into the desired state.
  ///
  /// When a new WorkerPool is created, or an existing one is updated, Cloud Run
  /// will asynchronously perform all necessary steps to bring the WorkerPool to
  /// the desired serving state. This process is called reconciliation. While
  /// reconciliation is in process, `observed_generation`,
  /// `latest_ready_revison`, `instance_split_statuses`, and `uri` will have
  /// transient values that might mismatch the intended state: Once
  /// reconciliation is over (and this field is false), there are two possible
  /// outcomes: reconciliation succeeded and the serving state matches the
  /// WorkerPool, or there was an error, and reconciliation failed. This state
  /// can be found in `terminal_condition.state`. If reconciliation succeeded,
  /// the following fields will match: `instance_splits` and
  /// `instance_split_statuses`, `observed_generation` and `generation`,
  /// `latest_ready_revision` and `latest_created_revision`. If reconciliation
  /// failed, `instance_split_statuses`, `observed_generation`, and
  /// `latest_ready_revision` will have the state of the last serving revision,
  /// or empty for newly created WorkerPools. Additional information on the
  /// failure can be found in `terminal_condition` and `conditions`.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Specifies worker-pool-level scaling settings
  ///
  /// Optional.
  GoogleCloudRunV2WorkerPoolScaling? scaling;

  /// The template used to create revisions for this WorkerPool.
  ///
  /// Required.
  GoogleCloudRunV2WorkerPoolRevisionTemplate? template;

  /// The Condition of this WorkerPool, containing its readiness status, and
  /// detailed error information in case it did not reach a serving state.
  ///
  /// See comments in `reconciling` for additional information on reconciliation
  /// process in Cloud Run.
  ///
  /// Output only.
  GoogleCloudRunV2Condition? terminalCondition;

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

  GoogleCloudRunV2WorkerPool({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.conditions,
    this.createTime,
    this.creator,
    this.customAudiences,
    this.deleteTime,
    this.description,
    this.etag,
    this.expireTime,
    this.generation,
    this.instanceSplitStatuses,
    this.instanceSplits,
    this.labels,
    this.lastModifier,
    this.latestCreatedRevision,
    this.latestReadyRevision,
    this.launchStage,
    this.name,
    this.observedGeneration,
    this.reconciling,
    this.satisfiesPzs,
    this.scaling,
    this.template,
    this.terminalCondition,
    this.uid,
    this.updateTime,
  });

  GoogleCloudRunV2WorkerPool.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        binaryAuthorization:
            json_.containsKey('binaryAuthorization')
                ? GoogleCloudRunV2BinaryAuthorization.fromJson(
                  json_['binaryAuthorization']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        client: json_['client'] as core.String?,
        clientVersion: json_['clientVersion'] as core.String?,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Condition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        customAudiences:
            (json_['customAudiences'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        generation: json_['generation'] as core.String?,
        instanceSplitStatuses:
            (json_['instanceSplitStatuses'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2InstanceSplitStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        instanceSplits:
            (json_['instanceSplits'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2InstanceSplit.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lastModifier: json_['lastModifier'] as core.String?,
        latestCreatedRevision: json_['latestCreatedRevision'] as core.String?,
        latestReadyRevision: json_['latestReadyRevision'] as core.String?,
        launchStage: json_['launchStage'] as core.String?,
        name: json_['name'] as core.String?,
        observedGeneration: json_['observedGeneration'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        scaling:
            json_.containsKey('scaling')
                ? GoogleCloudRunV2WorkerPoolScaling.fromJson(
                  json_['scaling'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        template:
            json_.containsKey('template')
                ? GoogleCloudRunV2WorkerPoolRevisionTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        terminalCondition:
            json_.containsKey('terminalCondition')
                ? GoogleCloudRunV2Condition.fromJson(
                  json_['terminalCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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
    if (customAudiences != null) 'customAudiences': customAudiences!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (generation != null) 'generation': generation!,
    if (instanceSplitStatuses != null)
      'instanceSplitStatuses': instanceSplitStatuses!,
    if (instanceSplits != null) 'instanceSplits': instanceSplits!,
    if (labels != null) 'labels': labels!,
    if (lastModifier != null) 'lastModifier': lastModifier!,
    if (latestCreatedRevision != null)
      'latestCreatedRevision': latestCreatedRevision!,
    if (latestReadyRevision != null)
      'latestReadyRevision': latestReadyRevision!,
    if (launchStage != null) 'launchStage': launchStage!,
    if (name != null) 'name': name!,
    if (observedGeneration != null) 'observedGeneration': observedGeneration!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (scaling != null) 'scaling': scaling!,
    if (template != null) 'template': template!,
    if (terminalCondition != null) 'terminalCondition': terminalCondition!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// WorkerPoolRevisionTemplate describes the data a worker pool revision should
/// have when created from a template.
class GoogleCloudRunV2WorkerPoolRevisionTemplate {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`,
  /// `cloud.googleapis.com`, `serving.knative.dev`, or
  /// `autoscaling.knative.dev` namespaces, and they will be rejected. All
  /// system annotations in v1 now have a corresponding field in v2
  /// WorkerPoolRevisionTemplate. This field follows Kubernetes annotations'
  /// namespacing, limits, and rules.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Holds list of the containers that defines the unit of execution for this
  /// Revision.
  core.List<GoogleCloudRunV2Container>? containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt
  /// this container image.
  ///
  /// For more information, go to
  /// https://cloud.google.com/run/docs/securing/using-cmek
  core.String? encryptionKey;

  /// The action to take if the encryption key is revoked.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED" : Unspecified
  /// - "PREVENT_NEW" : Prevents the creation of new instances.
  /// - "SHUTDOWN" : Shuts down existing instances, and prevents creation of new
  /// ones.
  core.String? encryptionKeyRevocationAction;

  /// If encryption_key_revocation_action is SHUTDOWN, the duration before
  /// shutting down all instances.
  ///
  /// The minimum increment is 1 hour.
  ///
  /// Optional.
  core.String? encryptionKeyShutdownDuration;

  /// True if GPU zonal redundancy is disabled on this worker pool.
  ///
  /// Optional.
  core.bool? gpuZonalRedundancyDisabled;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// User-provided labels are shared with Google's billing system, so they can
  /// be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2
  /// does not support labels with `run.googleapis.com`, `cloud.googleapis.com`,
  /// `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they
  /// will be rejected. All system labels in v1 now have a corresponding field
  /// in v2 WorkerPoolRevisionTemplate.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The node selector for the revision template.
  ///
  /// Optional.
  GoogleCloudRunV2NodeSelector? nodeSelector;

  /// The unique name for the revision.
  ///
  /// If this field is omitted, it will be automatically generated based on the
  /// WorkerPool name.
  ///
  /// Optional.
  core.String? revision;

  /// Email address of the IAM service account associated with the revision of
  /// the service.
  ///
  /// The service account represents the identity of the running revision, and
  /// determines what permissions the revision has. If not provided, the
  /// revision will use the project's default service account.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Enables service mesh connectivity.
  ///
  /// Optional.
  GoogleCloudRunV2ServiceMesh? serviceMesh;

  /// A list of Volumes to make available to containers.
  ///
  /// Optional.
  core.List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration to use for this Revision.
  ///
  /// For more information, visit
  /// https://cloud.google.com/run/docs/configuring/connecting-vpc.
  ///
  /// Optional.
  GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2WorkerPoolRevisionTemplate({
    this.annotations,
    this.containers,
    this.encryptionKey,
    this.encryptionKeyRevocationAction,
    this.encryptionKeyShutdownDuration,
    this.gpuZonalRedundancyDisabled,
    this.labels,
    this.nodeSelector,
    this.revision,
    this.serviceAccount,
    this.serviceMesh,
    this.volumes,
    this.vpcAccess,
  });

  GoogleCloudRunV2WorkerPoolRevisionTemplate.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        containers:
            (json_['containers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Container.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        encryptionKey: json_['encryptionKey'] as core.String?,
        encryptionKeyRevocationAction:
            json_['encryptionKeyRevocationAction'] as core.String?,
        encryptionKeyShutdownDuration:
            json_['encryptionKeyShutdownDuration'] as core.String?,
        gpuZonalRedundancyDisabled:
            json_['gpuZonalRedundancyDisabled'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        nodeSelector:
            json_.containsKey('nodeSelector')
                ? GoogleCloudRunV2NodeSelector.fromJson(
                  json_['nodeSelector'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        revision: json_['revision'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceMesh:
            json_.containsKey('serviceMesh')
                ? GoogleCloudRunV2ServiceMesh.fromJson(
                  json_['serviceMesh'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        volumes:
            (json_['volumes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRunV2Volume.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        vpcAccess:
            json_.containsKey('vpcAccess')
                ? GoogleCloudRunV2VpcAccess.fromJson(
                  json_['vpcAccess'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (containers != null) 'containers': containers!,
    if (encryptionKey != null) 'encryptionKey': encryptionKey!,
    if (encryptionKeyRevocationAction != null)
      'encryptionKeyRevocationAction': encryptionKeyRevocationAction!,
    if (encryptionKeyShutdownDuration != null)
      'encryptionKeyShutdownDuration': encryptionKeyShutdownDuration!,
    if (gpuZonalRedundancyDisabled != null)
      'gpuZonalRedundancyDisabled': gpuZonalRedundancyDisabled!,
    if (labels != null) 'labels': labels!,
    if (nodeSelector != null) 'nodeSelector': nodeSelector!,
    if (revision != null) 'revision': revision!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceMesh != null) 'serviceMesh': serviceMesh!,
    if (volumes != null) 'volumes': volumes!,
    if (vpcAccess != null) 'vpcAccess': vpcAccess!,
  };
}

/// Worker pool scaling settings.
class GoogleCloudRunV2WorkerPoolScaling {
  /// The total number of instances in manual scaling mode.
  ///
  /// Optional.
  core.int? manualInstanceCount;

  GoogleCloudRunV2WorkerPoolScaling({this.manualInstanceCount});

  GoogleCloudRunV2WorkerPoolScaling.fromJson(core.Map json_)
    : this(manualInstanceCount: json_['manualInstanceCount'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (manualInstanceCount != null)
      'manualInstanceCount': manualInstanceCount!,
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

  GoogleIamV1AuditConfig({this.auditLogConfigs, this.service});

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs:
            (json_['auditLogConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1AuditLogConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        service: json_['service'] as core.String?,
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
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  GoogleIamV1Binding({this.condition, this.members, this.role});

  GoogleIamV1Binding.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? GoogleTypeExpr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        role: json_['role'] as core.String?,
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
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
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
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
        auditConfigs:
            (json_['auditConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1AuditConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
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

  GoogleIamV1SetIamPolicyRequest({this.policy, this.updateMask});

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => GoogleLongrunningOperation.fromJson(
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
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
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

/// The request message for Operations.WaitOperation.
typedef GoogleLongrunningWaitOperationRequest = $WaitOperationRequest;

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
typedef GoogleRpcStatus = $Status00;

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

/// This is proto2's version of MessageSet.
///
/// DEPRECATED: DO NOT USE FOR NEW FIELDS. If you are using editions or proto2,
/// please make your own extendable messages for your use case. If you are using
/// proto3, please use `Any` instead. MessageSet was the implementation of
/// extensions for proto1. When proto2 was introduced, extensions were
/// implemented as a first-class feature. This schema for MessageSet was meant
/// to be a "bridge" solution to migrate MessageSet-bearing messages from proto1
/// to proto2. This schema has been open-sourced only to facilitate the
/// migration of Google products with MessageSet-bearing messages to open-source
/// environments.
typedef Proto2BridgeMessageSet = $Shared02;

/// Wire-format for a Status object
class UtilStatusProto {
  /// copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional
  /// int32 canonical_code = 6;
  core.int? canonicalCode;

  /// Numeric code drawn from the space specified below.
  ///
  /// Often, this is the canonical error space, and code is drawn from
  /// google3/util/task/codes.proto copybara:strip_begin(b/383363683)
  /// copybara:strip_end_and_replace optional int32 code = 1;
  core.int? code;

  /// Detail message copybara:strip_begin(b/383363683)
  /// copybara:strip_end_and_replace optional string message = 3;
  core.String? message;

  /// message_set associates an arbitrary proto message with the status.
  ///
  /// copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional
  /// proto2.bridge.MessageSet message_set = 5;
  Proto2BridgeMessageSet? messageSet;

  /// copybara:strip_begin(b/383363683) Space to which this status belongs
  /// copybara:strip_end_and_replace optional string space = 2; // Space to
  /// which this status belongs
  core.String? space;

  UtilStatusProto({
    this.canonicalCode,
    this.code,
    this.message,
    this.messageSet,
    this.space,
  });

  UtilStatusProto.fromJson(core.Map json_)
    : this(
        canonicalCode: json_['canonicalCode'] as core.int?,
        code: json_['code'] as core.int?,
        message: json_['message'] as core.String?,
        messageSet:
            json_.containsKey('messageSet')
                ? Proto2BridgeMessageSet.fromJson(
                  json_['messageSet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        space: json_['space'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (canonicalCode != null) 'canonicalCode': canonicalCode!,
    if (code != null) 'code': code!,
    if (message != null) 'message': message!,
    if (messageSet != null) 'messageSet': messageSet!,
    if (space != null) 'space': space!,
  };
}
