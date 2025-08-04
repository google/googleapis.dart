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

/// Cloud Dataproc API - v1
///
/// Manages Hadoop-based clusters and jobs on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/dataproc/>
///
/// Create an instance of [DataprocApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAutoscalingPoliciesResource]
///     - [ProjectsLocationsBatchesResource]
///       - [ProjectsLocationsBatchesSparkApplicationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSessionTemplatesResource]
///     - [ProjectsLocationsSessionsResource]
///       - [ProjectsLocationsSessionsSparkApplicationsResource]
///     - [ProjectsLocationsWorkflowTemplatesResource]
///   - [ProjectsRegionsResource]
///     - [ProjectsRegionsAutoscalingPoliciesResource]
///     - [ProjectsRegionsClustersResource]
///       - [ProjectsRegionsClustersNodeGroupsResource]
///     - [ProjectsRegionsJobsResource]
///     - [ProjectsRegionsOperationsResource]
///     - [ProjectsRegionsWorkflowTemplatesResource]
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

/// Manages Hadoop-based clusters and jobs on Google Cloud Platform.
class DataprocApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataprocApi(
    http.Client client, {
    core.String rootUrl = 'https://dataproc.googleapis.com/',
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
  ProjectsRegionsResource get regions => ProjectsRegionsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutoscalingPoliciesResource get autoscalingPolicies =>
      ProjectsLocationsAutoscalingPoliciesResource(_requester);
  ProjectsLocationsBatchesResource get batches =>
      ProjectsLocationsBatchesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSessionTemplatesResource get sessionTemplates =>
      ProjectsLocationsSessionTemplatesResource(_requester);
  ProjectsLocationsSessionsResource get sessions =>
      ProjectsLocationsSessionsResource(_requester);
  ProjectsLocationsWorkflowTemplatesResource get workflowTemplates =>
      ProjectsLocationsWorkflowTemplatesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsAutoscalingPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutoscalingPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates new autoscaling policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies.create, the resource name of the
  /// region has the following format: projects/{project_id}/regions/{region}
  /// For projects.locations.autoscalingPolicies.create, the resource name of
  /// the location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutoscalingPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutoscalingPolicy> create(
    AutoscalingPolicy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autoscalingPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AutoscalingPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an autoscaling policy.
  ///
  /// It is an error to delete an autoscaling policy that is in use by one or
  /// more clusters.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the autoscaling policy, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies.delete, the resource name of the
  /// policy has the following format:
  /// projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For
  /// projects.locations.autoscalingPolicies.delete, the resource name of the
  /// policy has the following format:
  /// projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
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

  /// Retrieves autoscaling policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the autoscaling policy, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies.get, the resource name of the policy
  /// has the following format:
  /// projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For
  /// projects.locations.autoscalingPolicies.get, the resource name of the
  /// policy has the following format:
  /// projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutoscalingPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutoscalingPolicy> get(
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
    return AutoscalingPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists autoscaling policies in the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies.list, the resource name of the region
  /// has the following format: projects/{project_id}/regions/{region} For
  /// projects.locations.autoscalingPolicies.list, the resource name of the
  /// location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return in each
  /// response. Must be less than or equal to 1000. Defaults to 100.
  ///
  /// [pageToken] - Optional. The page token, returned by a previous call, to
  /// request the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAutoscalingPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAutoscalingPoliciesResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autoscalingPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutoscalingPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
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
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates (replaces) autoscaling policy.Disabled check for update_mask,
  /// because all updates will be full replacements.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The "resource name" of the autoscaling policy, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies, the resource name of the policy has
  /// the following format:
  /// projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For
  /// projects.locations.autoscalingPolicies, the resource name of the policy
  /// has the following format:
  /// projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutoscalingPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutoscalingPolicy> update(
    AutoscalingPolicy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AutoscalingPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBatchesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBatchesSparkApplicationsResource get sparkApplications =>
      ProjectsLocationsBatchesSparkApplicationsResource(_requester);

  ProjectsLocationsBatchesResource(commons.ApiRequester client)
    : _requester = client;

  /// Analyze a Batch for possible recommendations and insights.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to analyze in the
  /// format "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+$`.
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
  async.Future<Operation> analyze(
    AnalyzeBatchRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':analyze';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a batch workload that executes asynchronously.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this batch will be created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [batchId] - Optional. The ID to use for the batch, which will become the
  /// final component of the batch's resource name.This value must be 4-63
  /// characters. Valid characters are /\[a-z\]\[0-9\]-/.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// service receives two CreateBatchRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s
  /// with the same request_id, the second request is ignored and the Operation
  /// that corresponds to the first Batch created and stored in the backend is
  /// returned.Recommendation: Set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value
  /// must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
    Batch request,
    core.String parent, {
    core.String? batchId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (batchId != null) 'batchId': [batchId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/batches';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the batch workload resource.
  ///
  /// If the batch is not in a CANCELLED, SUCCEEDED or FAILED State, the delete
  /// operation fails and the response returns FAILED_PRECONDITION.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+$`.
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

  /// Gets the batch workload resource representation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Batch].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Batch> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Batch.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists batch workloads.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of batches.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter for the batches to return in the response.A
  /// filter is a logical expression constraining the values of various fields
  /// in each batch resource. Filters are case sensitive, and may contain
  /// multiple clauses combined with logical operators (AND/OR). Supported
  /// fields are batch_id, batch_uuid, state, create_time, and labels.e.g. state
  /// = RUNNING and create_time \< "2023-01-01T00:00:00Z" filters for batches in
  /// state RUNNING that were created before 2023-01-01. state = RUNNING and
  /// labels.environment=production filters for batches in state in a RUNNING
  /// state that have a production environment label.See
  /// https://google.aip.dev/assets/misc/ebnf-filtering.txt for a detailed
  /// description of the filter syntax and a list of supported comparisons.
  ///
  /// [orderBy] - Optional. Field(s) on which to sort the list of
  /// batches.Currently the only supported sort orders are unspecified (empty)
  /// and create_time desc to sort by most recently created batches first.See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. The maximum number of batches to return in each
  /// response. The service may return fewer than this value. The default page
  /// size is 20; the maximum page size is 1000.
  ///
  /// [pageToken] - Optional. A page token received from a previous ListBatches
  /// call. Provide this token to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBatchesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBatchesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/batches';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBatchesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBatchesSparkApplicationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBatchesSparkApplicationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Obtain high level information corresponding to a single Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSparkApplicationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSparkApplicationResponse> access(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':access';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSparkApplicationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain environment details for a Spark Application
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSparkApplicationEnvironmentInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSparkApplicationEnvironmentInfoResponse>
  accessEnvironmentInfo(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':accessEnvironmentInfo';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSparkApplicationEnvironmentInfoResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to a spark job for a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [jobId] - Required. Job ID to fetch data for.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSparkApplicationJobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSparkApplicationJobResponse> accessJob(
    core.String name, {
    core.String? jobId,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessJob';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSparkApplicationJobResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain Spark Plan Graph for a Spark Application SQL execution.
  ///
  /// Limits the number of clusters returned as part of the graph to 10000.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [executionId] - Required. Execution ID
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSparkApplicationSqlSparkPlanGraphResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSparkApplicationSqlSparkPlanGraphResponse> accessSqlPlan(
    core.String name, {
    core.String? executionId,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (executionId != null) 'executionId': [executionId],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessSqlPlan';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSparkApplicationSqlSparkPlanGraphResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to a particular SQL Query for a Spark
  /// Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [details] - Optional. Lists/ hides details of Spark plan nodes. True is
  /// set to list and false to hide.
  ///
  /// [executionId] - Required. Execution ID
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [planDescription] - Optional. Enables/ disables physical plan description
  /// on demand
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSparkApplicationSqlQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSparkApplicationSqlQueryResponse> accessSqlQuery(
    core.String name, {
    core.bool? details,
    core.String? executionId,
    core.String? parent,
    core.bool? planDescription,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (details != null) 'details': ['${details}'],
      if (executionId != null) 'executionId': [executionId],
      if (parent != null) 'parent': [parent],
      if (planDescription != null) 'planDescription': ['${planDescription}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessSqlQuery';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSparkApplicationSqlQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to a spark stage attempt for a Spark
  /// Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [stageAttemptId] - Required. Stage Attempt ID
  ///
  /// [stageId] - Required. Stage ID
  ///
  /// [summaryMetricsMask] - Optional. The list of summary metrics fields to
  /// include. Empty list will default to skip all summary metrics fields.
  /// Example, if the response should include TaskQuantileMetrics, the request
  /// should have task_quantile_metrics in summary_metrics_mask field
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSparkApplicationStageAttemptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSparkApplicationStageAttemptResponse> accessStageAttempt(
    core.String name, {
    core.String? parent,
    core.int? stageAttemptId,
    core.String? stageId,
    core.String? summaryMetricsMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (stageAttemptId != null) 'stageAttemptId': ['${stageAttemptId}'],
      if (stageId != null) 'stageId': [stageId],
      if (summaryMetricsMask != null)
        'summaryMetricsMask': [summaryMetricsMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessStageAttempt';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSparkApplicationStageAttemptResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain RDD operation graph for a Spark Application Stage.
  ///
  /// Limits the number of clusters returned as part of the graph to 10000.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [stageId] - Required. Stage ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSparkApplicationStageRddOperationGraphResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSparkApplicationStageRddOperationGraphResponse>
  accessStageRddGraph(
    core.String name, {
    core.String? parent,
    core.String? stageId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (stageId != null) 'stageId': [stageId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessStageRddGraph';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSparkApplicationStageRddOperationGraphResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain high level information and list of Spark Applications corresponding
  /// to a batch
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+$`.
  ///
  /// [applicationStatus] - Optional. Search only applications in the chosen
  /// state.
  /// Possible string values are:
  /// - "APPLICATION_STATUS_UNSPECIFIED"
  /// - "APPLICATION_STATUS_RUNNING"
  /// - "APPLICATION_STATUS_COMPLETED"
  ///
  /// [maxEndTime] - Optional. Latest end timestamp to list.
  ///
  /// [maxTime] - Optional. Latest start timestamp to list.
  ///
  /// [minEndTime] - Optional. Earliest end timestamp to list.
  ///
  /// [minTime] - Optional. Earliest start timestamp to list.
  ///
  /// [pageSize] - Optional. Maximum number of applications to return in each
  /// response. The service may return fewer than this. The default page size is
  /// 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSparkApplications call. Provide this token to retrieve the
  /// subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSparkApplicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSparkApplicationsResponse> search(
    core.String parent, {
    core.String? applicationStatus,
    core.String? maxEndTime,
    core.String? maxTime,
    core.String? minEndTime,
    core.String? minTime,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (applicationStatus != null) 'applicationStatus': [applicationStatus],
      if (maxEndTime != null) 'maxEndTime': [maxEndTime],
      if (maxTime != null) 'maxTime': [maxTime],
      if (minEndTime != null) 'minEndTime': [minEndTime],
      if (minTime != null) 'minTime': [minTime],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/sparkApplications:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSparkApplicationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain executor summary with respect to a spark stage attempt.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of executors to return in each
  /// response. The service may return fewer than this. The default page size is
  /// 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// AccessSparkApplicationExecutorsList call. Provide this token to retrieve
  /// the subsequent page.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [stageAttemptId] - Required. Stage Attempt ID
  ///
  /// [stageId] - Required. Stage ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSparkApplicationExecutorStageSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSparkApplicationExecutorStageSummaryResponse>
  searchExecutorStageSummary(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.int? stageAttemptId,
    core.String? stageId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (stageAttemptId != null) 'stageAttemptId': ['${stageAttemptId}'],
      if (stageId != null) 'stageId': [stageId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':searchExecutorStageSummary';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSparkApplicationExecutorStageSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to executors for a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [executorStatus] - Optional. Filter to select whether active/ dead or all
  /// executors should be selected.
  /// Possible string values are:
  /// - "EXECUTOR_STATUS_UNSPECIFIED"
  /// - "EXECUTOR_STATUS_ACTIVE"
  /// - "EXECUTOR_STATUS_DEAD"
  ///
  /// [pageSize] - Optional. Maximum number of executors to return in each
  /// response. The service may return fewer than this. The default page size is
  /// 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// AccessSparkApplicationExecutorsList call. Provide this token to retrieve
  /// the subsequent page.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSparkApplicationExecutorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSparkApplicationExecutorsResponse> searchExecutors(
    core.String name, {
    core.String? executorStatus,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (executorStatus != null) 'executorStatus': [executorStatus],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchExecutors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSparkApplicationExecutorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain list of spark jobs corresponding to a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [jobStatus] - Optional. List only jobs in the specific state.
  /// Possible string values are:
  /// - "JOB_EXECUTION_STATUS_UNSPECIFIED"
  /// - "JOB_EXECUTION_STATUS_RUNNING"
  /// - "JOB_EXECUTION_STATUS_SUCCEEDED"
  /// - "JOB_EXECUTION_STATUS_FAILED"
  /// - "JOB_EXECUTION_STATUS_UNKNOWN"
  ///
  /// [pageSize] - Optional. Maximum number of jobs to return in each response.
  /// The service may return fewer than this. The default page size is 10; the
  /// maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSparkApplicationJobs call. Provide this token to retrieve the
  /// subsequent page.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSparkApplicationJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSparkApplicationJobsResponse> searchJobs(
    core.String name, {
    core.String? jobStatus,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobStatus != null) 'jobStatus': [jobStatus],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSparkApplicationJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to SQL Queries for a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [details] - Optional. Lists/ hides details of Spark plan nodes. True is
  /// set to list and false to hide.
  ///
  /// [pageSize] - Optional. Maximum number of queries to return in each
  /// response. The service may return fewer than this. The default page size is
  /// 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSparkApplicationSqlQueries call. Provide this token to retrieve the
  /// subsequent page.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [planDescription] - Optional. Enables/ disables physical plan description
  /// on demand
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSparkApplicationSqlQueriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSparkApplicationSqlQueriesResponse> searchSqlQueries(
    core.String name, {
    core.bool? details,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.bool? planDescription,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (details != null) 'details': ['${details}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (planDescription != null) 'planDescription': ['${planDescription}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchSqlQueries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSparkApplicationSqlQueriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to tasks for a spark stage attempt for a Spark
  /// Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of tasks to return in each response.
  /// The service may return fewer than this. The default page size is 10; the
  /// maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// ListSparkApplicationStageAttemptTasks call. Provide this token to retrieve
  /// the subsequent page.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [sortRuntime] - Optional. Sort the tasks by runtime.
  ///
  /// [stageAttemptId] - Optional. Stage Attempt ID
  ///
  /// [stageId] - Optional. Stage ID
  ///
  /// [taskStatus] - Optional. List only tasks in the state.
  /// Possible string values are:
  /// - "TASK_STATUS_UNSPECIFIED"
  /// - "TASK_STATUS_RUNNING"
  /// - "TASK_STATUS_SUCCESS"
  /// - "TASK_STATUS_FAILED"
  /// - "TASK_STATUS_KILLED"
  /// - "TASK_STATUS_PENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSparkApplicationStageAttemptTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSparkApplicationStageAttemptTasksResponse>
  searchStageAttemptTasks(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.bool? sortRuntime,
    core.int? stageAttemptId,
    core.String? stageId,
    core.String? taskStatus,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (sortRuntime != null) 'sortRuntime': ['${sortRuntime}'],
      if (stageAttemptId != null) 'stageAttemptId': ['${stageAttemptId}'],
      if (stageId != null) 'stageId': [stageId],
      if (taskStatus != null) 'taskStatus': [taskStatus],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':searchStageAttemptTasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSparkApplicationStageAttemptTasksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to a spark stage attempts for a Spark
  /// Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of stage attempts (paging based on
  /// stage_attempt_id) to return in each response. The service may return fewer
  /// than this. The default page size is 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSparkApplicationStageAttempts call. Provide this token to retrieve
  /// the subsequent page.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [stageId] - Required. Stage ID for which attempts are to be fetched
  ///
  /// [summaryMetricsMask] - Optional. The list of summary metrics fields to
  /// include. Empty list will default to skip all summary metrics fields.
  /// Example, if the response should include TaskQuantileMetrics, the request
  /// should have task_quantile_metrics in summary_metrics_mask field
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSparkApplicationStageAttemptsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSparkApplicationStageAttemptsResponse> searchStageAttempts(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? stageId,
    core.String? summaryMetricsMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (stageId != null) 'stageId': [stageId],
      if (summaryMetricsMask != null)
        'summaryMetricsMask': [summaryMetricsMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchStageAttempts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSparkApplicationStageAttemptsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to stages for a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of stages (paging based on stage_id)
  /// to return in each response. The service may return fewer than this. The
  /// default page size is 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// FetchSparkApplicationStagesList call. Provide this token to retrieve the
  /// subsequent page.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [stageStatus] - Optional. List only stages in the given state.
  /// Possible string values are:
  /// - "STAGE_STATUS_UNSPECIFIED"
  /// - "STAGE_STATUS_ACTIVE"
  /// - "STAGE_STATUS_COMPLETE"
  /// - "STAGE_STATUS_FAILED"
  /// - "STAGE_STATUS_PENDING"
  /// - "STAGE_STATUS_SKIPPED"
  ///
  /// [summaryMetricsMask] - Optional. The list of summary metrics fields to
  /// include. Empty list will default to skip all summary metrics fields.
  /// Example, if the response should include TaskQuantileMetrics, the request
  /// should have task_quantile_metrics in summary_metrics_mask field
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSparkApplicationStagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSparkApplicationStagesResponse> searchStages(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? stageStatus,
    core.String? summaryMetricsMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (stageStatus != null) 'stageStatus': [stageStatus],
      if (summaryMetricsMask != null)
        'summaryMetricsMask': [summaryMetricsMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchStages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSparkApplicationStagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain summary of Executor Summary for a Spark Application
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SummarizeSparkApplicationExecutorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SummarizeSparkApplicationExecutorsResponse> summarizeExecutors(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':summarizeExecutors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SummarizeSparkApplicationExecutorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain summary of Jobs for a Spark Application
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SummarizeSparkApplicationJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SummarizeSparkApplicationJobsResponse> summarizeJobs(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':summarizeJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SummarizeSparkApplicationJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain summary of Tasks for a Spark Application Stage Attempt
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [stageAttemptId] - Required. Stage Attempt ID
  ///
  /// [stageId] - Required. Stage ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SummarizeSparkApplicationStageAttemptTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SummarizeSparkApplicationStageAttemptTasksResponse>
  summarizeStageAttemptTasks(
    core.String name, {
    core.String? parent,
    core.int? stageAttemptId,
    core.String? stageId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (stageAttemptId != null) 'stageAttemptId': ['${stageAttemptId}'],
      if (stageId != null) 'stageId': [stageId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':summarizeStageAttemptTasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SummarizeSparkApplicationStageAttemptTasksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain summary of Stages for a Spark Application
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the batch to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Batch) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SummarizeSparkApplicationStagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SummarizeSparkApplicationStagesResponse> summarizeStages(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':summarizeStages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SummarizeSparkApplicationStagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Write wrapper objects from dataplane to spanner
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the spark application to
  /// write data about in the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/batches/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteSparkApplicationContextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteSparkApplicationContextResponse> write(
    WriteSparkApplicationContextRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteSparkApplicationContextResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation, the
  /// operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// Code.CANCELLED.
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
  async.Future<Empty> cancel(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns google.rpc.Code.UNIMPLEMENTED.
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
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/operations$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

class ProjectsLocationsSessionTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSessionTemplatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a session template synchronously.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this session template will
  /// be created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SessionTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SessionTemplate> create(
    SessionTemplate request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessionTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SessionTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a session template.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session template resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessionTemplates/\[^/\]+$`.
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

  /// Gets the resource representation for a session template.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session template to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessionTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SessionTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SessionTemplate> get(
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
    return SessionTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists session templates.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns this collection of session
  /// templates.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter for the session templates to return in the
  /// response. Filters are case sensitive and have the following syntax:field =
  /// value AND field = value ...
  ///
  /// [pageSize] - Optional. The maximum number of sessions to return in each
  /// response. The service may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token received from a previous ListSessions
  /// call. Provide this token to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSessionTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSessionTemplatesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessionTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSessionTemplatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the session template synchronously.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the session template.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessionTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SessionTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SessionTemplate> patch(
    SessionTemplate request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SessionTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSessionsSparkApplicationsResource get sparkApplications =>
      ProjectsLocationsSessionsSparkApplicationsResource(_requester);

  ProjectsLocationsSessionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an interactive session asynchronously.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this session will be
  /// created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// service receives two CreateSessionRequests
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s
  /// with the same ID, the second request is ignored, and the first Session is
  /// created and stored in the backend.Recommendation: Set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value
  /// must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [sessionId] - Required. The ID to use for the session, which becomes the
  /// final component of the session's resource name.This value must be 4-63
  /// characters. Valid characters are /a-z-/.
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
    Session request,
    core.String parent, {
    core.String? requestId,
    core.String? sessionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (sessionId != null) 'sessionId': [sessionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the interactive session resource.
  ///
  /// If the session is not in terminal state, it is terminated, and then
  /// deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// service receives two DeleteSessionRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.DeleteSessionRequest)s
  /// with the same ID, the second request is ignored.Recommendation: Set this
  /// value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value
  /// must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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

  /// Gets the resource representation for an interactive session.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Session> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Session.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists interactive sessions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of sessions.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter for the sessions to return in the response.A
  /// filter is a logical expression constraining the values of various fields
  /// in each session resource. Filters are case sensitive, and may contain
  /// multiple clauses combined with logical operators (AND, OR). Supported
  /// fields are session_id, session_uuid, state, create_time, and
  /// labels.Example: state = ACTIVE and create_time \< "2023-01-01T00:00:00Z"
  /// is a filter for sessions in an ACTIVE state that were created before
  /// 2023-01-01. state = ACTIVE and labels.environment=production is a filter
  /// for sessions in an ACTIVE state that have a production environment
  /// label.See https://google.aip.dev/assets/misc/ebnf-filtering.txt for a
  /// detailed description of the filter syntax and a list of supported
  /// comparators.
  ///
  /// [pageSize] - Optional. The maximum number of sessions to return in each
  /// response. The service may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token received from a previous ListSessions
  /// call. Provide this token to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSessionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSessionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Terminates the interactive session.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session resource to terminate.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+$`.
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
  async.Future<Operation> terminate(
    TerminateSessionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':terminate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSessionsSparkApplicationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSessionsSparkApplicationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Obtain high level information corresponding to a single Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSessionSparkApplicationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSessionSparkApplicationResponse> access(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':access';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSessionSparkApplicationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain environment details for a Spark Application
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSessionSparkApplicationEnvironmentInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSessionSparkApplicationEnvironmentInfoResponse>
  accessEnvironmentInfo(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':accessEnvironmentInfo';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSessionSparkApplicationEnvironmentInfoResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to a spark job for a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [jobId] - Required. Job ID to fetch data for.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSessionSparkApplicationJobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSessionSparkApplicationJobResponse> accessJob(
    core.String name, {
    core.String? jobId,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessJob';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSessionSparkApplicationJobResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain Spark Plan Graph for a Spark Application SQL execution.
  ///
  /// Limits the number of clusters returned as part of the graph to 10000.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [executionId] - Required. Execution ID
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSessionSparkApplicationSqlSparkPlanGraphResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSessionSparkApplicationSqlSparkPlanGraphResponse>
  accessSqlPlan(
    core.String name, {
    core.String? executionId,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (executionId != null) 'executionId': [executionId],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessSqlPlan';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSessionSparkApplicationSqlSparkPlanGraphResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to a particular SQL Query for a Spark
  /// Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [details] - Optional. Lists/ hides details of Spark plan nodes. True is
  /// set to list and false to hide.
  ///
  /// [executionId] - Required. Execution ID
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [planDescription] - Optional. Enables/ disables physical plan description
  /// on demand
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSessionSparkApplicationSqlQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSessionSparkApplicationSqlQueryResponse> accessSqlQuery(
    core.String name, {
    core.bool? details,
    core.String? executionId,
    core.String? parent,
    core.bool? planDescription,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (details != null) 'details': ['${details}'],
      if (executionId != null) 'executionId': [executionId],
      if (parent != null) 'parent': [parent],
      if (planDescription != null) 'planDescription': ['${planDescription}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessSqlQuery';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSessionSparkApplicationSqlQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to a spark stage attempt for a Spark
  /// Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [stageAttemptId] - Required. Stage Attempt ID
  ///
  /// [stageId] - Required. Stage ID
  ///
  /// [summaryMetricsMask] - Optional. The list of summary metrics fields to
  /// include. Empty list will default to skip all summary metrics fields.
  /// Example, if the response should include TaskQuantileMetrics, the request
  /// should have task_quantile_metrics in summary_metrics_mask field
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSessionSparkApplicationStageAttemptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSessionSparkApplicationStageAttemptResponse>
  accessStageAttempt(
    core.String name, {
    core.String? parent,
    core.int? stageAttemptId,
    core.String? stageId,
    core.String? summaryMetricsMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (stageAttemptId != null) 'stageAttemptId': ['${stageAttemptId}'],
      if (stageId != null) 'stageId': [stageId],
      if (summaryMetricsMask != null)
        'summaryMetricsMask': [summaryMetricsMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessStageAttempt';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSessionSparkApplicationStageAttemptResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain RDD operation graph for a Spark Application Stage.
  ///
  /// Limits the number of clusters returned as part of the graph to 10000.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [stageId] - Required. Stage ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [AccessSessionSparkApplicationStageRddOperationGraphResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSessionSparkApplicationStageRddOperationGraphResponse>
  accessStageRddGraph(
    core.String name, {
    core.String? parent,
    core.String? stageId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (stageId != null) 'stageId': [stageId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':accessStageRddGraph';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSessionSparkApplicationStageRddOperationGraphResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain high level information and list of Spark Applications corresponding
  /// to a batch
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The fully qualified name of the session to retrieve
  /// in the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [applicationStatus] - Optional. Search only applications in the chosen
  /// state.
  /// Possible string values are:
  /// - "APPLICATION_STATUS_UNSPECIFIED"
  /// - "APPLICATION_STATUS_RUNNING"
  /// - "APPLICATION_STATUS_COMPLETED"
  ///
  /// [maxEndTime] - Optional. Latest end timestamp to list.
  ///
  /// [maxTime] - Optional. Latest start timestamp to list.
  ///
  /// [minEndTime] - Optional. Earliest end timestamp to list.
  ///
  /// [minTime] - Optional. Earliest start timestamp to list.
  ///
  /// [pageSize] - Optional. Maximum number of applications to return in each
  /// response. The service may return fewer than this. The default page size is
  /// 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSessionSparkApplications call. Provide this token to retrieve the
  /// subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSessionSparkApplicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSessionSparkApplicationsResponse> search(
    core.String parent, {
    core.String? applicationStatus,
    core.String? maxEndTime,
    core.String? maxTime,
    core.String? minEndTime,
    core.String? minTime,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (applicationStatus != null) 'applicationStatus': [applicationStatus],
      if (maxEndTime != null) 'maxEndTime': [maxEndTime],
      if (maxTime != null) 'maxTime': [maxTime],
      if (minEndTime != null) 'minEndTime': [minEndTime],
      if (minTime != null) 'minTime': [minTime],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/sparkApplications:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSessionSparkApplicationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain executor summary with respect to a spark stage attempt.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of executors to return in each
  /// response. The service may return fewer than this. The default page size is
  /// 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSessionSparkApplicationExecutorStageSummary call. Provide this token
  /// to retrieve the subsequent page.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [stageAttemptId] - Required. Stage Attempt ID
  ///
  /// [stageId] - Required. Stage ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [SearchSessionSparkApplicationExecutorStageSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSessionSparkApplicationExecutorStageSummaryResponse>
  searchExecutorStageSummary(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.int? stageAttemptId,
    core.String? stageId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (stageAttemptId != null) 'stageAttemptId': ['${stageAttemptId}'],
      if (stageId != null) 'stageId': [stageId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':searchExecutorStageSummary';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSessionSparkApplicationExecutorStageSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to executors for a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [executorStatus] - Optional. Filter to select whether active/ dead or all
  /// executors should be selected.
  /// Possible string values are:
  /// - "EXECUTOR_STATUS_UNSPECIFIED"
  /// - "EXECUTOR_STATUS_ACTIVE"
  /// - "EXECUTOR_STATUS_DEAD"
  ///
  /// [pageSize] - Optional. Maximum number of executors to return in each
  /// response. The service may return fewer than this. The default page size is
  /// 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSessionSparkApplicationExecutors call. Provide this token to
  /// retrieve the subsequent page.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSessionSparkApplicationExecutorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSessionSparkApplicationExecutorsResponse> searchExecutors(
    core.String name, {
    core.String? executorStatus,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (executorStatus != null) 'executorStatus': [executorStatus],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchExecutors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSessionSparkApplicationExecutorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain list of spark jobs corresponding to a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [jobIds] - Optional. List of Job IDs to filter by if provided.
  ///
  /// [jobStatus] - Optional. List only jobs in the specific state.
  /// Possible string values are:
  /// - "JOB_EXECUTION_STATUS_UNSPECIFIED"
  /// - "JOB_EXECUTION_STATUS_RUNNING"
  /// - "JOB_EXECUTION_STATUS_SUCCEEDED"
  /// - "JOB_EXECUTION_STATUS_FAILED"
  /// - "JOB_EXECUTION_STATUS_UNKNOWN"
  ///
  /// [pageSize] - Optional. Maximum number of jobs to return in each response.
  /// The service may return fewer than this. The default page size is 10; the
  /// maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSessionSparkApplicationJobs call. Provide this token to retrieve the
  /// subsequent page.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSessionSparkApplicationJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSessionSparkApplicationJobsResponse> searchJobs(
    core.String name, {
    core.List<core.String>? jobIds,
    core.String? jobStatus,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobIds != null) 'jobIds': jobIds,
      if (jobStatus != null) 'jobStatus': [jobStatus],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSessionSparkApplicationJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to SQL Queries for a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [details] - Optional. Lists/ hides details of Spark plan nodes. True is
  /// set to list and false to hide.
  ///
  /// [operationIds] - Optional. List of Spark Connect operation IDs to filter
  /// by if provided.
  ///
  /// [pageSize] - Optional. Maximum number of queries to return in each
  /// response. The service may return fewer than this. The default page size is
  /// 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSessionSparkApplicationSqlQueries call. Provide this token to
  /// retrieve the subsequent page.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [planDescription] - Optional. Enables/ disables physical plan description
  /// on demand
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSessionSparkApplicationSqlQueriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSessionSparkApplicationSqlQueriesResponse>
  searchSqlQueries(
    core.String name, {
    core.bool? details,
    core.List<core.String>? operationIds,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.bool? planDescription,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (details != null) 'details': ['${details}'],
      if (operationIds != null) 'operationIds': operationIds,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (planDescription != null) 'planDescription': ['${planDescription}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchSqlQueries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSessionSparkApplicationSqlQueriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to tasks for a spark stage attempt for a Spark
  /// Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of tasks to return in each response.
  /// The service may return fewer than this. The default page size is 10; the
  /// maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSessionSparkApplicationStageAttemptTasks call. Provide this token to
  /// retrieve the subsequent page.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [sortRuntime] - Optional. Sort the tasks by runtime.
  ///
  /// [stageAttemptId] - Optional. Stage Attempt ID
  ///
  /// [stageId] - Optional. Stage ID
  ///
  /// [taskStatus] - Optional. List only tasks in the state.
  /// Possible string values are:
  /// - "TASK_STATUS_UNSPECIFIED"
  /// - "TASK_STATUS_RUNNING"
  /// - "TASK_STATUS_SUCCESS"
  /// - "TASK_STATUS_FAILED"
  /// - "TASK_STATUS_KILLED"
  /// - "TASK_STATUS_PENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSessionSparkApplicationStageAttemptTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSessionSparkApplicationStageAttemptTasksResponse>
  searchStageAttemptTasks(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.bool? sortRuntime,
    core.int? stageAttemptId,
    core.String? stageId,
    core.String? taskStatus,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (sortRuntime != null) 'sortRuntime': ['${sortRuntime}'],
      if (stageAttemptId != null) 'stageAttemptId': ['${stageAttemptId}'],
      if (stageId != null) 'stageId': [stageId],
      if (taskStatus != null) 'taskStatus': [taskStatus],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':searchStageAttemptTasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSessionSparkApplicationStageAttemptTasksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to a spark stage attempts for a Spark
  /// Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of stage attempts (paging based on
  /// stage_attempt_id) to return in each response. The service may return fewer
  /// than this. The default page size is 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSessionSparkApplicationStageAttempts call. Provide this token to
  /// retrieve the subsequent page.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [stageId] - Required. Stage ID for which attempts are to be fetched
  ///
  /// [summaryMetricsMask] - Optional. The list of summary metrics fields to
  /// include. Empty list will default to skip all summary metrics fields.
  /// Example, if the response should include TaskQuantileMetrics, the request
  /// should have task_quantile_metrics in summary_metrics_mask field
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSessionSparkApplicationStageAttemptsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSessionSparkApplicationStageAttemptsResponse>
  searchStageAttempts(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? stageId,
    core.String? summaryMetricsMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (stageId != null) 'stageId': [stageId],
      if (summaryMetricsMask != null)
        'summaryMetricsMask': [summaryMetricsMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchStageAttempts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSessionSparkApplicationStageAttemptsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain data corresponding to stages for a Spark Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of stages (paging based on stage_id)
  /// to return in each response. The service may return fewer than this. The
  /// default page size is 10; the maximum page size is 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// SearchSessionSparkApplicationStages call. Provide this token to retrieve
  /// the subsequent page.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [stageIds] - Optional. List of Stage IDs to filter by if provided.
  ///
  /// [stageStatus] - Optional. List only stages in the given state.
  /// Possible string values are:
  /// - "STAGE_STATUS_UNSPECIFIED"
  /// - "STAGE_STATUS_ACTIVE"
  /// - "STAGE_STATUS_COMPLETE"
  /// - "STAGE_STATUS_FAILED"
  /// - "STAGE_STATUS_PENDING"
  /// - "STAGE_STATUS_SKIPPED"
  ///
  /// [summaryMetricsMask] - Optional. The list of summary metrics fields to
  /// include. Empty list will default to skip all summary metrics fields.
  /// Example, if the response should include TaskQuantileMetrics, the request
  /// should have task_quantile_metrics in summary_metrics_mask field
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSessionSparkApplicationStagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSessionSparkApplicationStagesResponse> searchStages(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.List<core.String>? stageIds,
    core.String? stageStatus,
    core.String? summaryMetricsMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (stageIds != null) 'stageIds': stageIds,
      if (stageStatus != null) 'stageStatus': [stageStatus],
      if (summaryMetricsMask != null)
        'summaryMetricsMask': [summaryMetricsMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':searchStages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSessionSparkApplicationStagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain summary of Executor Summary for a Spark Application
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SummarizeSessionSparkApplicationExecutorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SummarizeSessionSparkApplicationExecutorsResponse>
  summarizeExecutors(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':summarizeExecutors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SummarizeSessionSparkApplicationExecutorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain summary of Jobs for a Spark Application
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [jobIds] - Optional. List of Job IDs to filter by if provided.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SummarizeSessionSparkApplicationJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SummarizeSessionSparkApplicationJobsResponse> summarizeJobs(
    core.String name, {
    core.List<core.String>? jobIds,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobIds != null) 'jobIds': jobIds,
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':summarizeJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SummarizeSessionSparkApplicationJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain summary of Tasks for a Spark Application Stage Attempt
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [stageAttemptId] - Required. Stage Attempt ID
  ///
  /// [stageId] - Required. Stage ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [SummarizeSessionSparkApplicationStageAttemptTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SummarizeSessionSparkApplicationStageAttemptTasksResponse>
  summarizeStageAttemptTasks(
    core.String name, {
    core.String? parent,
    core.int? stageAttemptId,
    core.String? stageId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (stageAttemptId != null) 'stageAttemptId': ['${stageAttemptId}'],
      if (stageId != null) 'stageId': [stageId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':summarizeStageAttemptTasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SummarizeSessionSparkApplicationStageAttemptTasksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Obtain summary of Stages for a Spark Application
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the session to retrieve in
  /// the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [parent] - Required. Parent (Session) resource reference.
  ///
  /// [stageIds] - Optional. List of Stage IDs to filter by if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SummarizeSessionSparkApplicationStagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SummarizeSessionSparkApplicationStagesResponse> summarizeStages(
    core.String name, {
    core.String? parent,
    core.List<core.String>? stageIds,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (stageIds != null) 'stageIds': stageIds,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':summarizeStages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SummarizeSessionSparkApplicationStagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Write wrapper objects from dataplane to spanner
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the spark application to
  /// write data about in the format
  /// "projects/PROJECT_ID/locations/DATAPROC_REGION/sessions/SESSION_ID/sparkApplications/APPLICATION_ID"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sessions/\[^/\]+/sparkApplications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteSessionSparkApplicationContextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteSessionSparkApplicationContextResponse> write(
    WriteSessionSparkApplicationContextRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteSessionSparkApplicationContextResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsWorkflowTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkflowTemplatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates new workflow template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates.create, the resource name of the region
  /// has the following format: projects/{project_id}/regions/{region} For
  /// projects.locations.workflowTemplates.create, the resource name of the
  /// location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> create(
    WorkflowTemplate request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WorkflowTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a workflow template.
  ///
  /// It does not cancel in-progress workflows.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates.delete, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates.instantiate, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflowTemplates/\[^/\]+$`.
  ///
  /// [version] - Optional. The version of workflow template to delete. If
  /// specified, will only delete the template if the current server version
  /// matches specified version.
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
    core.int? version,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (version != null) 'version': ['${version}'],
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

  /// Retrieves the latest workflow template.Can retrieve previously
  /// instantiated template by specifying optional version parameter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates.get, the resource name of the template
  /// has the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates.get, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflowTemplates/\[^/\]+$`.
  ///
  /// [version] - Optional. The version of workflow template to retrieve. Only
  /// previously instantiated versions can be retrieved.If unspecified,
  /// retrieves the current version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> get(
    core.String name, {
    core.int? version,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (version != null) 'version': ['${version}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkflowTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflowTemplates/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Instantiates a template and begins execution.The returned Operation can be
  /// used to track execution of workflow by polling operations.get.
  ///
  /// The Operation will complete when entire workflow is finished.The running
  /// workflow can be aborted via operations.cancel. This will cause any
  /// inflight jobs to be cancelled and workflow-owned clusters to be
  /// deleted.The Operation.metadata will be WorkflowMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata).
  /// Also see Using WorkflowMetadata
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On
  /// successful completion, Operation.response will be Empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates.instantiate, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates.instantiate, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflowTemplates/\[^/\]+$`.
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
  async.Future<Operation> instantiate(
    InstantiateWorkflowTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':instantiate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Instantiates a template and begins execution.This method is equivalent to
  /// executing the sequence CreateWorkflowTemplate,
  /// InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation
  /// can be used to track execution of workflow by polling operations.get.
  ///
  /// The Operation will complete when entire workflow is finished.The running
  /// workflow can be aborted via operations.cancel. This will cause any
  /// inflight jobs to be cancelled and workflow-owned clusters to be
  /// deleted.The Operation.metadata will be WorkflowMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata).
  /// Also see Using WorkflowMetadata
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On
  /// successful completion, Operation.response will be Empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates,instantiateinline, the resource name of
  /// the region has the following format:
  /// projects/{project_id}/regions/{region} For
  /// projects.locations.workflowTemplates.instantiateinline, the resource name
  /// of the location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A tag that prevents multiple concurrent workflow
  /// instances with the same tag from running. This mitigates risk of
  /// concurrent instances started due to retries.It is recommended to always
  /// set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
  async.Future<Operation> instantiateInline(
    WorkflowTemplate request,
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/workflowTemplates:instantiateInline';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists workflows that match the specified filter in the request.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates,list, the resource name of the region
  /// has the following format: projects/{project_id}/regions/{region} For
  /// projects.locations.workflowTemplates.list, the resource name of the
  /// location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return in each
  /// response.
  ///
  /// [pageToken] - Optional. The page token, returned by a previous call, to
  /// request the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkflowTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkflowTemplatesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkflowTemplatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflowTemplates/\[^/\]+$`.
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
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflowTemplates/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates (replaces) workflow template.
  ///
  /// The updated template must contain version that matches the current server
  /// version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates, the resource name of the template has
  /// the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates, the resource name of the template
  /// has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflowTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> update(
    WorkflowTemplate request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return WorkflowTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsRegionsResource {
  final commons.ApiRequester _requester;

  ProjectsRegionsAutoscalingPoliciesResource get autoscalingPolicies =>
      ProjectsRegionsAutoscalingPoliciesResource(_requester);
  ProjectsRegionsClustersResource get clusters =>
      ProjectsRegionsClustersResource(_requester);
  ProjectsRegionsJobsResource get jobs =>
      ProjectsRegionsJobsResource(_requester);
  ProjectsRegionsOperationsResource get operations =>
      ProjectsRegionsOperationsResource(_requester);
  ProjectsRegionsWorkflowTemplatesResource get workflowTemplates =>
      ProjectsRegionsWorkflowTemplatesResource(_requester);

  ProjectsRegionsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsRegionsAutoscalingPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsRegionsAutoscalingPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates new autoscaling policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies.create, the resource name of the
  /// region has the following format: projects/{project_id}/regions/{region}
  /// For projects.locations.autoscalingPolicies.create, the resource name of
  /// the location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutoscalingPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutoscalingPolicy> create(
    AutoscalingPolicy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autoscalingPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AutoscalingPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an autoscaling policy.
  ///
  /// It is an error to delete an autoscaling policy that is in use by one or
  /// more clusters.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the autoscaling policy, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies.delete, the resource name of the
  /// policy has the following format:
  /// projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For
  /// projects.locations.autoscalingPolicies.delete, the resource name of the
  /// policy has the following format:
  /// projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
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

  /// Retrieves autoscaling policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the autoscaling policy, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies.get, the resource name of the policy
  /// has the following format:
  /// projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For
  /// projects.locations.autoscalingPolicies.get, the resource name of the
  /// policy has the following format:
  /// projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutoscalingPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutoscalingPolicy> get(
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
    return AutoscalingPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists autoscaling policies in the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies.list, the resource name of the region
  /// has the following format: projects/{project_id}/regions/{region} For
  /// projects.locations.autoscalingPolicies.list, the resource name of the
  /// location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return in each
  /// response. Must be less than or equal to 1000. Defaults to 100.
  ///
  /// [pageToken] - Optional. The page token, returned by a previous call, to
  /// request the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAutoscalingPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAutoscalingPoliciesResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autoscalingPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutoscalingPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
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
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates (replaces) autoscaling policy.Disabled check for update_mask,
  /// because all updates will be full replacements.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The "resource name" of the autoscaling policy, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.autoscalingPolicies, the resource name of the policy has
  /// the following format:
  /// projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For
  /// projects.locations.autoscalingPolicies, the resource name of the policy
  /// has the following format:
  /// projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/autoscalingPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutoscalingPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutoscalingPolicy> update(
    AutoscalingPolicy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AutoscalingPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsRegionsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsRegionsClustersNodeGroupsResource get nodeGroups =>
      ProjectsRegionsClustersNodeGroupsResource(_requester);

  ProjectsRegionsClustersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a cluster in a project.
  ///
  /// The returned Operation.metadata will be ClusterOperationMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [actionOnFailedPrimaryWorkers] - Optional. Failure action when primary
  /// worker creation fails.
  /// Possible string values are:
  /// - "FAILURE_ACTION_UNSPECIFIED" : When FailureAction is unspecified,
  /// failure action defaults to NO_ACTION.
  /// - "NO_ACTION" : Take no action on failure to create a cluster resource.
  /// NO_ACTION is the default.
  /// - "DELETE" : Delete the failed cluster resource.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two CreateClusterRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateClusterRequest)s
  /// with the same id, then the second request will be ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.It is recommended to always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
    Cluster request,
    core.String projectId,
    core.String region, {
    core.String? actionOnFailedPrimaryWorkers,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (actionOnFailedPrimaryWorkers != null)
        'actionOnFailedPrimaryWorkers': [actionOnFailedPrimaryWorkers],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a cluster in a project.
  ///
  /// The returned Operation.metadata will be ClusterOperationMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [clusterName] - Required. The cluster name.
  ///
  /// [clusterUuid] - Optional. Specifying the cluster_uuid means the RPC should
  /// fail (with error NOT_FOUND) if cluster with specified UUID does not exist.
  ///
  /// [gracefulTerminationTimeout] - Optional. The graceful termination timeout
  /// for the deletion of the cluster. Indicate the time the request will wait
  /// to complete the running jobs on the cluster before its forceful deletion.
  /// Default value is 0 indicating that the user has not enabled the graceful
  /// termination. Value can be between 60 second and 6 Hours, in case the
  /// graceful termination is enabled. (There is no separate flag to check the
  /// enabling or disabling of graceful termination, it can be checked by the
  /// values in the field).
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two DeleteClusterRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.DeleteClusterRequest)s
  /// with the same id, then the second request will be ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.It is recommended to always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
    core.String projectId,
    core.String region,
    core.String clusterName, {
    core.String? clusterUuid,
    core.String? gracefulTerminationTimeout,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterUuid != null) 'clusterUuid': [clusterUuid],
      if (gracefulTerminationTimeout != null)
        'gracefulTerminationTimeout': [gracefulTerminationTimeout],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets cluster diagnostic information.
  ///
  /// The returned Operation.metadata will be ClusterOperationMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
  /// After the operation completes, Operation.response contains
  /// DiagnoseClusterResults
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#diagnoseclusterresults).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [clusterName] - Required. The cluster name.
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
  async.Future<Operation> diagnose(
    DiagnoseClusterRequest request,
    core.String projectId,
    core.String region,
    core.String clusterName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName') +
        ':diagnose';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the resource representation for a cluster in a project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [clusterName] - Required. The cluster name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cluster> get(
    core.String projectId,
    core.String region,
    core.String clusterName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/clusters/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inject encrypted credentials into all of the VMs in a cluster.The target
  /// cluster must be a personal auth cluster assigned to the user who is
  /// issuing the RPC.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The ID of the Google Cloud Platform project the
  /// cluster belongs to, of the form projects/.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [region] - Required. The region containing the cluster, of the form
  /// regions/.
  /// Value must have pattern `^regions/\[^/\]+$`.
  ///
  /// [cluster] - Required. The cluster, in the form clusters/.
  /// Value must have pattern `^clusters/\[^/\]+$`.
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
  async.Future<Operation> injectCredentials(
    InjectCredentialsRequest request,
    core.String project,
    core.String region,
    core.String cluster, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$project') +
        '/' +
        core.Uri.encodeFull('$region') +
        '/' +
        core.Uri.encodeFull('$cluster') +
        ':injectCredentials';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all regions/{region}/clusters in a project alphabetically.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [filter] - Optional. A filter constraining the clusters to list. Filters
  /// are case-sensitive and have the following syntax:field = value AND field =
  /// value ...where field is one of status.state, clusterName, or
  /// labels.\[KEY\], and \[KEY\] is a label key. value can be * to match all
  /// values. status.state can be one of the following: ACTIVE, INACTIVE,
  /// CREATING, RUNNING, ERROR, DELETING, UPDATING, STOPPING, or STOPPED. ACTIVE
  /// contains the CREATING, UPDATING, and RUNNING states. INACTIVE contains the
  /// DELETING, ERROR, STOPPING, and STOPPED states. clusterName is the name of
  /// the cluster provided at creation time. Only the logical AND operator is
  /// supported; space-separated items are treated as having an implicit AND
  /// operator.Example filter:status.state = ACTIVE AND clusterName = mycluster
  /// AND labels.env = staging AND labels.starred = *
  ///
  /// [pageSize] - Optional. The standard List page size.
  ///
  /// [pageToken] - Optional. The standard List page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClustersResponse> list(
    core.String projectId,
    core.String region, {
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

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a cluster in a project.
  ///
  /// The returned Operation.metadata will be ClusterOperationMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
  /// The cluster must be in a RUNNING state or an error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project the
  /// cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [clusterName] - Required. The cluster name.
  ///
  /// [gracefulDecommissionTimeout] - Optional. Timeout for graceful YARN
  /// decommissioning. Graceful decommissioning allows removing nodes from the
  /// cluster without interrupting jobs in progress. Timeout specifies how long
  /// to wait for jobs in progress to finish before forcefully removing nodes
  /// (and potentially interrupting jobs). Default timeout is 0 (for forceful
  /// decommission), and the maximum allowed timeout is 1 day. (see JSON
  /// representation of Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).Only
  /// supported on Dataproc image versions 1.2 and higher.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two UpdateClusterRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.UpdateClusterRequest)s
  /// with the same id, then the second request will be ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.It is recommended to always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [updateMask] - Required. Specifies the path, relative to Cluster, of the
  /// field to update. For example, to change the number of workers in a cluster
  /// to 5, the update_mask parameter would be specified as
  /// config.worker_config.num_instances, and the PATCH request body would
  /// specify the new value, as follows: { "config":{ "workerConfig":{
  /// "numInstances":"5" } } } Similarly, to change the number of preemptible
  /// workers in a cluster to 5, the update_mask parameter would be
  /// config.secondary_worker_config.num_instances, and the PATCH request body
  /// would be set as follows: { "config":{ "secondaryWorkerConfig":{
  /// "numInstances":"5" } } } *Note:* Currently, only the following fields can
  /// be updated: *Mask* *Purpose* *labels* Update labels
  /// *config.worker_config.num_instances* Resize primary worker group
  /// *config.secondary_worker_config.num_instances* Resize secondary worker
  /// group config.autoscaling_config.policy_uri Use, stop using, or change
  /// autoscaling policies
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
  async.Future<Operation> patch(
    Cluster request,
    core.String projectId,
    core.String region,
    core.String clusterName, {
    core.String? gracefulDecommissionTimeout,
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gracefulDecommissionTimeout != null)
        'gracefulDecommissionTimeout': [gracefulDecommissionTimeout],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Repairs a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project the
  /// cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [clusterName] - Required. The cluster name.
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
  async.Future<Operation> repair(
    RepairClusterRequest request,
    core.String projectId,
    core.String region,
    core.String clusterName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName') +
        ':repair';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/clusters/\[^/\]+$`.
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

  /// Starts a cluster in a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project the
  /// cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [clusterName] - Required. The cluster name.
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
  async.Future<Operation> start(
    StartClusterRequest request,
    core.String projectId,
    core.String region,
    core.String clusterName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName') +
        ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops a cluster in a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project the
  /// cluster belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [clusterName] - Required. The cluster name.
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
  async.Future<Operation> stop(
    StopClusterRequest request,
    core.String projectId,
    core.String region,
    core.String clusterName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName') +
        ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/clusters/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsRegionsClustersNodeGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsRegionsClustersNodeGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a node group in a cluster.
  ///
  /// The returned Operation.metadata is NodeGroupOperationMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this node group will be
  /// created. Format: projects/{project}/regions/{region}/clusters/{cluster}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [nodeGroupId] - Optional. An optional node group ID. Generated if not
  /// specified.The ID must contain only letters (a-z, A-Z), numbers (0-9),
  /// underscores (_), and hyphens (-). Cannot begin or end with underscore or
  /// hyphen. Must consist of from 3 to 33 characters.
  ///
  /// [parentOperationId] - Optional. operation id of the parent operation
  /// sending the create request
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two CreateNodeGroupRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequest)
  /// with the same ID, the second request is ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.Recommendation: Set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
    NodeGroup request,
    core.String parent, {
    core.String? nodeGroupId,
    core.String? parentOperationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (nodeGroupId != null) 'nodeGroupId': [nodeGroupId],
      if (parentOperationId != null) 'parentOperationId': [parentOperationId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/nodeGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the resource representation for a node group in a cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node group to retrieve. Format:
  /// projects/{project}/regions/{region}/clusters/{cluster}/nodeGroups/{nodeGroup}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/clusters/\[^/\]+/nodeGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NodeGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NodeGroup> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NodeGroup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Repair nodes in a node group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node group to resize. Format:
  /// projects/{project}/regions/{region}/clusters/{cluster}/nodeGroups/{nodeGroup}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/clusters/\[^/\]+/nodeGroups/\[^/\]+$`.
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
  async.Future<Operation> repair(
    RepairNodeGroupRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':repair';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resizes a node group in a cluster.
  ///
  /// The returned Operation.metadata is NodeGroupOperationMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node group to resize. Format:
  /// projects/{project}/regions/{region}/clusters/{cluster}/nodeGroups/{nodeGroup}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/clusters/\[^/\]+/nodeGroups/\[^/\]+$`.
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
  async.Future<Operation> resize(
    ResizeNodeGroupRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsRegionsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsRegionsJobsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts a job cancellation request.
  ///
  /// To access the job resource after cancellation, call
  /// regions/{region}/jobs.list
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs/list)
  /// or regions/{region}/jobs.get
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs/get).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [jobId] - Required. The job ID.
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
  async.Future<Job> cancel(
    CancelJobRequest request,
    core.String projectId,
    core.String region,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the job from the project.
  ///
  /// If the job is active, the delete fails, and the response returns
  /// FAILED_PRECONDITION.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [jobId] - Required. The job ID.
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
    core.String projectId,
    core.String region,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the resource representation for a job in a project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [jobId] - Required. The job ID.
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
    core.String projectId,
    core.String region,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

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
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+/jobs/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists regions/{region}/jobs in a project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [clusterName] - Optional. If set, the returned jobs list includes only
  /// jobs that were submitted to the named cluster.
  ///
  /// [filter] - Optional. A filter constraining the jobs to list. Filters are
  /// case-sensitive and have the following syntax:field = value AND field =
  /// value ...where field is status.state or labels.\[KEY\], and \[KEY\] is a
  /// label key. value can be * to match all values. status.state can be either
  /// ACTIVE or NON_ACTIVE. Only the logical AND operator is supported;
  /// space-separated items are treated as having an implicit AND
  /// operator.Example filter:status.state = ACTIVE AND labels.env = staging AND
  /// labels.starred = *
  ///
  /// [jobStateMatcher] - Optional. Specifies enumerated categories of jobs to
  /// list. (default = match ALL jobs).If filter is provided, jobStateMatcher
  /// will be ignored.
  /// Possible string values are:
  /// - "ALL" : Match all jobs, regardless of state.
  /// - "ACTIVE" : Only match jobs in non-terminal states: PENDING, RUNNING, or
  /// CANCEL_PENDING.
  /// - "NON_ACTIVE" : Only match jobs in terminal states: CANCELLED, DONE, or
  /// ERROR.
  ///
  /// [pageSize] - Optional. The number of results to return in each response.
  ///
  /// [pageToken] - Optional. The page token, returned by a previous call, to
  /// request the next page of results.
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
    core.String projectId,
    core.String region, {
    core.String? clusterName,
    core.String? filter,
    core.String? jobStateMatcher,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterName != null) 'clusterName': [clusterName],
      if (filter != null) 'filter': [filter],
      if (jobStateMatcher != null) 'jobStateMatcher': [jobStateMatcher],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a job in a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
  ///
  /// [jobId] - Required. The job ID.
  ///
  /// [updateMask] - Required. Specifies the path, relative to Job, of the field
  /// to update. For example, to update the labels of a Job the update_mask
  /// parameter would be specified as labels, and the PATCH request body would
  /// specify the new value. *Note:* Currently, labels is the only field that
  /// can be updated.
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
    core.String projectId,
    core.String region,
    core.String jobId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+/jobs/\[^/\]+$`.
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

  /// Submits a job to a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
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
  async.Future<Job> submit(
    SubmitJobRequest request,
    core.String projectId,
    core.String region, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs:submit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Submits job to a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Dataproc region in which to handle the request.
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
  async.Future<Operation> submitAsOperation(
    SubmitJobRequest request,
    core.String projectId,
    core.String region, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs:submitAsOperation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+/jobs/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsRegionsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsRegionsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation, the
  /// operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// Code.CANCELLED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns google.rpc.Code.UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/regions/\[^/\]+/operations/\[^/\]+$`.
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

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/operations/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+/operations$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/operations/\[^/\]+$`.
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
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/operations/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsRegionsWorkflowTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsRegionsWorkflowTemplatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates new workflow template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates.create, the resource name of the region
  /// has the following format: projects/{project_id}/regions/{region} For
  /// projects.locations.workflowTemplates.create, the resource name of the
  /// location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> create(
    WorkflowTemplate request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WorkflowTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a workflow template.
  ///
  /// It does not cancel in-progress workflows.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates.delete, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates.instantiate, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/workflowTemplates/\[^/\]+$`.
  ///
  /// [version] - Optional. The version of workflow template to delete. If
  /// specified, will only delete the template if the current server version
  /// matches specified version.
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
    core.int? version,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (version != null) 'version': ['${version}'],
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

  /// Retrieves the latest workflow template.Can retrieve previously
  /// instantiated template by specifying optional version parameter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates.get, the resource name of the template
  /// has the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates.get, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/workflowTemplates/\[^/\]+$`.
  ///
  /// [version] - Optional. The version of workflow template to retrieve. Only
  /// previously instantiated versions can be retrieved.If unspecified,
  /// retrieves the current version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> get(
    core.String name, {
    core.int? version,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (version != null) 'version': ['${version}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkflowTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/workflowTemplates/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Instantiates a template and begins execution.The returned Operation can be
  /// used to track execution of workflow by polling operations.get.
  ///
  /// The Operation will complete when entire workflow is finished.The running
  /// workflow can be aborted via operations.cancel. This will cause any
  /// inflight jobs to be cancelled and workflow-owned clusters to be
  /// deleted.The Operation.metadata will be WorkflowMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata).
  /// Also see Using WorkflowMetadata
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On
  /// successful completion, Operation.response will be Empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates.instantiate, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates.instantiate, the resource name of the
  /// template has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/workflowTemplates/\[^/\]+$`.
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
  async.Future<Operation> instantiate(
    InstantiateWorkflowTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':instantiate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Instantiates a template and begins execution.This method is equivalent to
  /// executing the sequence CreateWorkflowTemplate,
  /// InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation
  /// can be used to track execution of workflow by polling operations.get.
  ///
  /// The Operation will complete when entire workflow is finished.The running
  /// workflow can be aborted via operations.cancel. This will cause any
  /// inflight jobs to be cancelled and workflow-owned clusters to be
  /// deleted.The Operation.metadata will be WorkflowMetadata
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata).
  /// Also see Using WorkflowMetadata
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On
  /// successful completion, Operation.response will be Empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates,instantiateinline, the resource name of
  /// the region has the following format:
  /// projects/{project_id}/regions/{region} For
  /// projects.locations.workflowTemplates.instantiateinline, the resource name
  /// of the location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A tag that prevents multiple concurrent workflow
  /// instances with the same tag from running. This mitigates risk of
  /// concurrent instances started due to retries.It is recommended to always
  /// set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
  async.Future<Operation> instantiateInline(
    WorkflowTemplate request,
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/workflowTemplates:instantiateInline';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists workflows that match the specified filter in the request.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the region or location, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates,list, the resource name of the region
  /// has the following format: projects/{project_id}/regions/{region} For
  /// projects.locations.workflowTemplates.list, the resource name of the
  /// location has the following format:
  /// projects/{project_id}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/regions/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return in each
  /// response.
  ///
  /// [pageToken] - Optional. The page token, returned by a previous call, to
  /// request the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkflowTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkflowTemplatesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkflowTemplatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/workflowTemplates/\[^/\]+$`.
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
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/workflowTemplates/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates (replaces) workflow template.
  ///
  /// The updated template must contain version that matches the current server
  /// version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names. For
  /// projects.regions.workflowTemplates, the resource name of the template has
  /// the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates, the resource name of the template
  /// has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/regions/\[^/\]+/workflowTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> update(
    WorkflowTemplate request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return WorkflowTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Specifies the type and number of accelerator cards attached to the instances
/// of an instance.
///
/// See GPUs on Compute Engine (https://cloud.google.com/compute/docs/gpus/).
class AcceleratorConfig {
  /// The number of the accelerator cards of this type exposed to this instance.
  core.int? acceleratorCount;

  /// Full URL, partial URI, or short name of the accelerator type resource to
  /// expose to this instance.
  ///
  /// See Compute Engine AcceleratorTypes
  /// (https://cloud.google.com/compute/docs/reference/v1/acceleratorTypes).Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/zones/\[zone\]/acceleratorTypes/nvidia-tesla-t4
  /// projects/\[project_id\]/zones/\[zone\]/acceleratorTypes/nvidia-tesla-t4
  /// nvidia-tesla-t4Auto Zone Exception: If you are using the Dataproc Auto
  /// Zone Placement
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement)
  /// feature, you must use the short name of the accelerator type resource, for
  /// example, nvidia-tesla-t4.
  core.String? acceleratorTypeUri;

  AcceleratorConfig({this.acceleratorCount, this.acceleratorTypeUri});

  AcceleratorConfig.fromJson(core.Map json_)
    : this(
        acceleratorCount: json_['acceleratorCount'] as core.int?,
        acceleratorTypeUri: json_['acceleratorTypeUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acceleratorCount != null) 'acceleratorCount': acceleratorCount!,
    if (acceleratorTypeUri != null) 'acceleratorTypeUri': acceleratorTypeUri!,
  };
}

/// Environment details of a Saprk Application.
class AccessSessionSparkApplicationEnvironmentInfoResponse {
  /// Details about the Environment that the application is running in.
  ApplicationEnvironmentInfo? applicationEnvironmentInfo;

  AccessSessionSparkApplicationEnvironmentInfoResponse({
    this.applicationEnvironmentInfo,
  });

  AccessSessionSparkApplicationEnvironmentInfoResponse.fromJson(core.Map json_)
    : this(
        applicationEnvironmentInfo:
            json_.containsKey('applicationEnvironmentInfo')
                ? ApplicationEnvironmentInfo.fromJson(
                  json_['applicationEnvironmentInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationEnvironmentInfo != null)
      'applicationEnvironmentInfo': applicationEnvironmentInfo!,
  };
}

/// Details of a particular job associated with Spark Application
class AccessSessionSparkApplicationJobResponse {
  /// Data corresponding to a spark job.
  ///
  /// Output only.
  JobData? jobData;

  AccessSessionSparkApplicationJobResponse({this.jobData});

  AccessSessionSparkApplicationJobResponse.fromJson(core.Map json_)
    : this(
        jobData:
            json_.containsKey('jobData')
                ? JobData.fromJson(
                  json_['jobData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobData != null) 'jobData': jobData!,
  };
}

/// A summary of Spark Application
class AccessSessionSparkApplicationResponse {
  /// High level information corresponding to an application.
  ///
  /// Output only.
  ApplicationInfo? application;

  AccessSessionSparkApplicationResponse({this.application});

  AccessSessionSparkApplicationResponse.fromJson(core.Map json_)
    : this(
        application:
            json_.containsKey('application')
                ? ApplicationInfo.fromJson(
                  json_['application'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (application != null) 'application': application!,
  };
}

/// Details of a query for a Spark Application
class AccessSessionSparkApplicationSqlQueryResponse {
  /// SQL Execution Data
  SqlExecutionUiData? executionData;

  AccessSessionSparkApplicationSqlQueryResponse({this.executionData});

  AccessSessionSparkApplicationSqlQueryResponse.fromJson(core.Map json_)
    : this(
        executionData:
            json_.containsKey('executionData')
                ? SqlExecutionUiData.fromJson(
                  json_['executionData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionData != null) 'executionData': executionData!,
  };
}

/// SparkPlanGraph for a Spark Application execution limited to maximum 10000
/// clusters.
class AccessSessionSparkApplicationSqlSparkPlanGraphResponse {
  /// SparkPlanGraph for a Spark Application execution.
  SparkPlanGraph? sparkPlanGraph;

  AccessSessionSparkApplicationSqlSparkPlanGraphResponse({this.sparkPlanGraph});

  AccessSessionSparkApplicationSqlSparkPlanGraphResponse.fromJson(
    core.Map json_,
  ) : this(
        sparkPlanGraph:
            json_.containsKey('sparkPlanGraph')
                ? SparkPlanGraph.fromJson(
                  json_['sparkPlanGraph']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sparkPlanGraph != null) 'sparkPlanGraph': sparkPlanGraph!,
  };
}

/// Stage Attempt for a Stage of a Spark Application
class AccessSessionSparkApplicationStageAttemptResponse {
  /// Data corresponding to a stage.
  ///
  /// Output only.
  StageData? stageData;

  AccessSessionSparkApplicationStageAttemptResponse({this.stageData});

  AccessSessionSparkApplicationStageAttemptResponse.fromJson(core.Map json_)
    : this(
        stageData:
            json_.containsKey('stageData')
                ? StageData.fromJson(
                  json_['stageData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (stageData != null) 'stageData': stageData!,
  };
}

/// RDD operation graph for a Spark Application Stage limited to maximum 10000
/// clusters.
class AccessSessionSparkApplicationStageRddOperationGraphResponse {
  /// RDD operation graph for a Spark Application Stage.
  RddOperationGraph? rddOperationGraph;

  AccessSessionSparkApplicationStageRddOperationGraphResponse({
    this.rddOperationGraph,
  });

  AccessSessionSparkApplicationStageRddOperationGraphResponse.fromJson(
    core.Map json_,
  ) : this(
        rddOperationGraph:
            json_.containsKey('rddOperationGraph')
                ? RddOperationGraph.fromJson(
                  json_['rddOperationGraph']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rddOperationGraph != null) 'rddOperationGraph': rddOperationGraph!,
  };
}

/// Environment details of a Saprk Application.
class AccessSparkApplicationEnvironmentInfoResponse {
  /// Details about the Environment that the application is running in.
  ApplicationEnvironmentInfo? applicationEnvironmentInfo;

  AccessSparkApplicationEnvironmentInfoResponse({
    this.applicationEnvironmentInfo,
  });

  AccessSparkApplicationEnvironmentInfoResponse.fromJson(core.Map json_)
    : this(
        applicationEnvironmentInfo:
            json_.containsKey('applicationEnvironmentInfo')
                ? ApplicationEnvironmentInfo.fromJson(
                  json_['applicationEnvironmentInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationEnvironmentInfo != null)
      'applicationEnvironmentInfo': applicationEnvironmentInfo!,
  };
}

/// Details of a particular job associated with Spark Application
class AccessSparkApplicationJobResponse {
  /// Data corresponding to a spark job.
  ///
  /// Output only.
  JobData? jobData;

  AccessSparkApplicationJobResponse({this.jobData});

  AccessSparkApplicationJobResponse.fromJson(core.Map json_)
    : this(
        jobData:
            json_.containsKey('jobData')
                ? JobData.fromJson(
                  json_['jobData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobData != null) 'jobData': jobData!,
  };
}

/// A summary of Spark Application
class AccessSparkApplicationResponse {
  /// High level information corresponding to an application.
  ///
  /// Output only.
  ApplicationInfo? application;

  AccessSparkApplicationResponse({this.application});

  AccessSparkApplicationResponse.fromJson(core.Map json_)
    : this(
        application:
            json_.containsKey('application')
                ? ApplicationInfo.fromJson(
                  json_['application'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (application != null) 'application': application!,
  };
}

/// Details of a query for a Spark Application
class AccessSparkApplicationSqlQueryResponse {
  /// SQL Execution Data
  SqlExecutionUiData? executionData;

  AccessSparkApplicationSqlQueryResponse({this.executionData});

  AccessSparkApplicationSqlQueryResponse.fromJson(core.Map json_)
    : this(
        executionData:
            json_.containsKey('executionData')
                ? SqlExecutionUiData.fromJson(
                  json_['executionData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionData != null) 'executionData': executionData!,
  };
}

/// SparkPlanGraph for a Spark Application execution limited to maximum 10000
/// clusters.
class AccessSparkApplicationSqlSparkPlanGraphResponse {
  /// SparkPlanGraph for a Spark Application execution.
  SparkPlanGraph? sparkPlanGraph;

  AccessSparkApplicationSqlSparkPlanGraphResponse({this.sparkPlanGraph});

  AccessSparkApplicationSqlSparkPlanGraphResponse.fromJson(core.Map json_)
    : this(
        sparkPlanGraph:
            json_.containsKey('sparkPlanGraph')
                ? SparkPlanGraph.fromJson(
                  json_['sparkPlanGraph']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sparkPlanGraph != null) 'sparkPlanGraph': sparkPlanGraph!,
  };
}

/// Stage Attempt for a Stage of a Spark Application
class AccessSparkApplicationStageAttemptResponse {
  /// Data corresponding to a stage.
  ///
  /// Output only.
  StageData? stageData;

  AccessSparkApplicationStageAttemptResponse({this.stageData});

  AccessSparkApplicationStageAttemptResponse.fromJson(core.Map json_)
    : this(
        stageData:
            json_.containsKey('stageData')
                ? StageData.fromJson(
                  json_['stageData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (stageData != null) 'stageData': stageData!,
  };
}

/// RDD operation graph for a Spark Application Stage limited to maximum 10000
/// clusters.
class AccessSparkApplicationStageRddOperationGraphResponse {
  /// RDD operation graph for a Spark Application Stage.
  RddOperationGraph? rddOperationGraph;

  AccessSparkApplicationStageRddOperationGraphResponse({
    this.rddOperationGraph,
  });

  AccessSparkApplicationStageRddOperationGraphResponse.fromJson(core.Map json_)
    : this(
        rddOperationGraph:
            json_.containsKey('rddOperationGraph')
                ? RddOperationGraph.fromJson(
                  json_['rddOperationGraph']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rddOperationGraph != null) 'rddOperationGraph': rddOperationGraph!,
  };
}

class AccumulableInfo {
  core.String? accumullableInfoId;
  core.String? name;
  core.String? update;
  core.String? value;

  AccumulableInfo({
    this.accumullableInfoId,
    this.name,
    this.update,
    this.value,
  });

  AccumulableInfo.fromJson(core.Map json_)
    : this(
        accumullableInfoId: json_['accumullableInfoId'] as core.String?,
        name: json_['name'] as core.String?,
        update: json_['update'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accumullableInfoId != null) 'accumullableInfoId': accumullableInfoId!,
    if (name != null) 'name': name!,
    if (update != null) 'update': update!,
    if (value != null) 'value': value!,
  };
}

/// A request to analyze a batch workload.
class AnalyzeBatchRequest {
  /// A unique ID used to identify the request.
  ///
  /// If the service receives two AnalyzeBatchRequest
  /// (http://cloud/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.AnalyzeBatchRequest)s
  /// with the same request_id, the second request is ignored and the Operation
  /// that corresponds to the first request created and stored in the backend is
  /// returned.Recommendation: Set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value
  /// must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  AnalyzeBatchRequest({this.requestId});

  AnalyzeBatchRequest.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
  };
}

class AppSummary {
  core.int? numCompletedJobs;
  core.int? numCompletedStages;

  AppSummary({this.numCompletedJobs, this.numCompletedStages});

  AppSummary.fromJson(core.Map json_)
    : this(
        numCompletedJobs: json_['numCompletedJobs'] as core.int?,
        numCompletedStages: json_['numCompletedStages'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (numCompletedJobs != null) 'numCompletedJobs': numCompletedJobs!,
    if (numCompletedStages != null) 'numCompletedStages': numCompletedStages!,
  };
}

/// Specific attempt of an application.
class ApplicationAttemptInfo {
  core.String? appSparkVersion;
  core.String? attemptId;
  core.bool? completed;
  core.String? durationMillis;
  core.String? endTime;
  core.String? lastUpdated;
  core.String? sparkUser;
  core.String? startTime;

  ApplicationAttemptInfo({
    this.appSparkVersion,
    this.attemptId,
    this.completed,
    this.durationMillis,
    this.endTime,
    this.lastUpdated,
    this.sparkUser,
    this.startTime,
  });

  ApplicationAttemptInfo.fromJson(core.Map json_)
    : this(
        appSparkVersion: json_['appSparkVersion'] as core.String?,
        attemptId: json_['attemptId'] as core.String?,
        completed: json_['completed'] as core.bool?,
        durationMillis: json_['durationMillis'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        lastUpdated: json_['lastUpdated'] as core.String?,
        sparkUser: json_['sparkUser'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appSparkVersion != null) 'appSparkVersion': appSparkVersion!,
    if (attemptId != null) 'attemptId': attemptId!,
    if (completed != null) 'completed': completed!,
    if (durationMillis != null) 'durationMillis': durationMillis!,
    if (endTime != null) 'endTime': endTime!,
    if (lastUpdated != null) 'lastUpdated': lastUpdated!,
    if (sparkUser != null) 'sparkUser': sparkUser!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Details about the Environment that the application is running in.
class ApplicationEnvironmentInfo {
  core.Map<core.String, core.String>? classpathEntries;
  core.Map<core.String, core.String>? hadoopProperties;
  core.Map<core.String, core.String>? metricsProperties;
  core.List<ResourceProfileInfo>? resourceProfiles;
  SparkRuntimeInfo? runtime;
  core.Map<core.String, core.String>? sparkProperties;
  core.Map<core.String, core.String>? systemProperties;

  ApplicationEnvironmentInfo({
    this.classpathEntries,
    this.hadoopProperties,
    this.metricsProperties,
    this.resourceProfiles,
    this.runtime,
    this.sparkProperties,
    this.systemProperties,
  });

  ApplicationEnvironmentInfo.fromJson(core.Map json_)
    : this(
        classpathEntries: (json_['classpathEntries']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        hadoopProperties: (json_['hadoopProperties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        metricsProperties: (json_['metricsProperties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        resourceProfiles:
            (json_['resourceProfiles'] as core.List?)
                ?.map(
                  (value) => ResourceProfileInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        runtime:
            json_.containsKey('runtime')
                ? SparkRuntimeInfo.fromJson(
                  json_['runtime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkProperties: (json_['sparkProperties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        systemProperties: (json_['systemProperties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (classpathEntries != null) 'classpathEntries': classpathEntries!,
    if (hadoopProperties != null) 'hadoopProperties': hadoopProperties!,
    if (metricsProperties != null) 'metricsProperties': metricsProperties!,
    if (resourceProfiles != null) 'resourceProfiles': resourceProfiles!,
    if (runtime != null) 'runtime': runtime!,
    if (sparkProperties != null) 'sparkProperties': sparkProperties!,
    if (systemProperties != null) 'systemProperties': systemProperties!,
  };
}

/// High level information corresponding to an application.
class ApplicationInfo {
  ///
  /// Possible string values are:
  /// - "APPLICATION_CONTEXT_INGESTION_STATUS_UNSPECIFIED"
  /// - "APPLICATION_CONTEXT_INGESTION_STATUS_COMPLETED"
  core.String? applicationContextIngestionStatus;
  core.String? applicationId;
  core.List<ApplicationAttemptInfo>? attempts;
  core.int? coresGranted;
  core.int? coresPerExecutor;
  core.int? maxCores;
  core.int? memoryPerExecutorMb;
  core.String? name;

  ///
  /// Possible string values are:
  /// - "QUANTILE_DATA_STATUS_UNSPECIFIED"
  /// - "QUANTILE_DATA_STATUS_COMPLETED"
  /// - "QUANTILE_DATA_STATUS_FAILED"
  core.String? quantileDataStatus;

  ApplicationInfo({
    this.applicationContextIngestionStatus,
    this.applicationId,
    this.attempts,
    this.coresGranted,
    this.coresPerExecutor,
    this.maxCores,
    this.memoryPerExecutorMb,
    this.name,
    this.quantileDataStatus,
  });

  ApplicationInfo.fromJson(core.Map json_)
    : this(
        applicationContextIngestionStatus:
            json_['applicationContextIngestionStatus'] as core.String?,
        applicationId: json_['applicationId'] as core.String?,
        attempts:
            (json_['attempts'] as core.List?)
                ?.map(
                  (value) => ApplicationAttemptInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        coresGranted: json_['coresGranted'] as core.int?,
        coresPerExecutor: json_['coresPerExecutor'] as core.int?,
        maxCores: json_['maxCores'] as core.int?,
        memoryPerExecutorMb: json_['memoryPerExecutorMb'] as core.int?,
        name: json_['name'] as core.String?,
        quantileDataStatus: json_['quantileDataStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationContextIngestionStatus != null)
      'applicationContextIngestionStatus': applicationContextIngestionStatus!,
    if (applicationId != null) 'applicationId': applicationId!,
    if (attempts != null) 'attempts': attempts!,
    if (coresGranted != null) 'coresGranted': coresGranted!,
    if (coresPerExecutor != null) 'coresPerExecutor': coresPerExecutor!,
    if (maxCores != null) 'maxCores': maxCores!,
    if (memoryPerExecutorMb != null)
      'memoryPerExecutorMb': memoryPerExecutorMb!,
    if (name != null) 'name': name!,
    if (quantileDataStatus != null) 'quantileDataStatus': quantileDataStatus!,
  };
}

/// Authentication configuration for a workload is used to set the default
/// identity for the workload execution.
///
/// The config specifies the type of identity (service account or user) that
/// will be used by workloads to access resources on the project(s).
class AuthenticationConfig {
  /// Authentication type for the user workload running in containers.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTHENTICATION_TYPE_UNSPECIFIED" : If AuthenticationType is unspecified
  /// then END_USER_CREDENTIALS is used for 3.0 and newer runtimes, and
  /// SERVICE_ACCOUNT is used for older runtimes.
  /// - "SERVICE_ACCOUNT" : Use service account credentials for authenticating
  /// to other services.
  /// - "END_USER_CREDENTIALS" : Use OAuth credentials associated with the
  /// workload creator/user for authenticating to other services.
  core.String? userWorkloadAuthenticationType;

  AuthenticationConfig({this.userWorkloadAuthenticationType});

  AuthenticationConfig.fromJson(core.Map json_)
    : this(
        userWorkloadAuthenticationType:
            json_['userWorkloadAuthenticationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (userWorkloadAuthenticationType != null)
      'userWorkloadAuthenticationType': userWorkloadAuthenticationType!,
  };
}

/// Autoscaling Policy config associated with the cluster.
class AutoscalingConfig {
  /// The autoscaling policy used by the cluster.Only resource names including
  /// projectid and location (region) are valid.
  ///
  /// Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/locations/\[dataproc_region\]/autoscalingPolicies/\[policy_id\]
  /// projects/\[project_id\]/locations/\[dataproc_region\]/autoscalingPolicies/\[policy_id\]Note
  /// that the policy must be in the same project and Dataproc region.
  ///
  /// Optional.
  core.String? policyUri;

  AutoscalingConfig({this.policyUri});

  AutoscalingConfig.fromJson(core.Map json_)
    : this(policyUri: json_['policyUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (policyUri != null) 'policyUri': policyUri!,
  };
}

/// Describes an autoscaling policy for Dataproc cluster autoscaler.
class AutoscalingPolicy {
  BasicAutoscalingAlgorithm? basicAlgorithm;

  /// The type of the clusters for which this autoscaling policy is to be
  /// configured.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLUSTER_TYPE_UNSPECIFIED" : Not set.
  /// - "STANDARD" : Standard dataproc cluster with a minimum of two primary
  /// workers.
  /// - "ZERO_SCALE" : Clusters that can use only secondary workers and be
  /// scaled down to zero secondary worker nodes.
  core.String? clusterType;

  /// The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9),
  /// underscores (_), and hyphens (-).
  ///
  /// Cannot begin or end with underscore or hyphen. Must consist of between 3
  /// and 50 characters.
  ///
  /// Required.
  core.String? id;

  /// The labels to associate with this autoscaling policy.
  ///
  /// Label keys must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if
  /// present, must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
  /// associated with an autoscaling policy.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The "resource name" of the autoscaling policy, as described in
  /// https://cloud.google.com/apis/design/resource_names.
  ///
  /// For projects.regions.autoscalingPolicies, the resource name of the policy
  /// has the following format:
  /// projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For
  /// projects.locations.autoscalingPolicies, the resource name of the policy
  /// has the following format:
  /// projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  ///
  /// Output only.
  core.String? name;

  /// Describes how the autoscaler will operate for secondary workers.
  ///
  /// Optional.
  InstanceGroupAutoscalingPolicyConfig? secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  ///
  /// Required.
  InstanceGroupAutoscalingPolicyConfig? workerConfig;

  AutoscalingPolicy({
    this.basicAlgorithm,
    this.clusterType,
    this.id,
    this.labels,
    this.name,
    this.secondaryWorkerConfig,
    this.workerConfig,
  });

  AutoscalingPolicy.fromJson(core.Map json_)
    : this(
        basicAlgorithm:
            json_.containsKey('basicAlgorithm')
                ? BasicAutoscalingAlgorithm.fromJson(
                  json_['basicAlgorithm']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        clusterType: json_['clusterType'] as core.String?,
        id: json_['id'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        secondaryWorkerConfig:
            json_.containsKey('secondaryWorkerConfig')
                ? InstanceGroupAutoscalingPolicyConfig.fromJson(
                  json_['secondaryWorkerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        workerConfig:
            json_.containsKey('workerConfig')
                ? InstanceGroupAutoscalingPolicyConfig.fromJson(
                  json_['workerConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (basicAlgorithm != null) 'basicAlgorithm': basicAlgorithm!,
    if (clusterType != null) 'clusterType': clusterType!,
    if (id != null) 'id': id!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (secondaryWorkerConfig != null)
      'secondaryWorkerConfig': secondaryWorkerConfig!,
    if (workerConfig != null) 'workerConfig': workerConfig!,
  };
}

/// Autotuning configuration of the workload.
class AutotuningConfig {
  /// Scenarios for which tunings are applied.
  ///
  /// Optional.
  core.List<core.String>? scenarios;

  AutotuningConfig({this.scenarios});

  AutotuningConfig.fromJson(core.Map json_)
    : this(
        scenarios:
            (json_['scenarios'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (scenarios != null) 'scenarios': scenarios!,
  };
}

/// Node group identification and configuration information.
class AuxiliaryNodeGroup {
  /// Node group configuration.
  ///
  /// Required.
  NodeGroup? nodeGroup;

  /// A node group ID.
  ///
  /// Generated if not specified.The ID must contain only letters (a-z, A-Z),
  /// numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with
  /// underscore or hyphen. Must consist of from 3 to 33 characters.
  ///
  /// Optional.
  core.String? nodeGroupId;

  AuxiliaryNodeGroup({this.nodeGroup, this.nodeGroupId});

  AuxiliaryNodeGroup.fromJson(core.Map json_)
    : this(
        nodeGroup:
            json_.containsKey('nodeGroup')
                ? NodeGroup.fromJson(
                  json_['nodeGroup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nodeGroupId: json_['nodeGroupId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nodeGroup != null) 'nodeGroup': nodeGroup!,
    if (nodeGroupId != null) 'nodeGroupId': nodeGroupId!,
  };
}

/// Auxiliary services configuration for a Cluster.
class AuxiliaryServicesConfig {
  /// The Hive Metastore configuration for this workload.
  ///
  /// Optional.
  MetastoreConfig? metastoreConfig;

  /// The Spark History Server configuration for the workload.
  ///
  /// Optional.
  SparkHistoryServerConfig? sparkHistoryServerConfig;

  AuxiliaryServicesConfig({
    this.metastoreConfig,
    this.sparkHistoryServerConfig,
  });

  AuxiliaryServicesConfig.fromJson(core.Map json_)
    : this(
        metastoreConfig:
            json_.containsKey('metastoreConfig')
                ? MetastoreConfig.fromJson(
                  json_['metastoreConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkHistoryServerConfig:
            json_.containsKey('sparkHistoryServerConfig')
                ? SparkHistoryServerConfig.fromJson(
                  json_['sparkHistoryServerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metastoreConfig != null) 'metastoreConfig': metastoreConfig!,
    if (sparkHistoryServerConfig != null)
      'sparkHistoryServerConfig': sparkHistoryServerConfig!,
  };
}

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithm {
  /// Duration between scaling events.
  ///
  /// A scaling period starts after the update operation from the previous event
  /// has completed.Bounds: 2m, 1d. Default: 2m.
  ///
  /// Optional.
  core.String? cooldownPeriod;

  /// Spark Standalone autoscaling configuration
  ///
  /// Optional.
  SparkStandaloneAutoscalingConfig? sparkStandaloneConfig;

  /// YARN autoscaling configuration.
  ///
  /// Optional.
  BasicYarnAutoscalingConfig? yarnConfig;

  BasicAutoscalingAlgorithm({
    this.cooldownPeriod,
    this.sparkStandaloneConfig,
    this.yarnConfig,
  });

  BasicAutoscalingAlgorithm.fromJson(core.Map json_)
    : this(
        cooldownPeriod: json_['cooldownPeriod'] as core.String?,
        sparkStandaloneConfig:
            json_.containsKey('sparkStandaloneConfig')
                ? SparkStandaloneAutoscalingConfig.fromJson(
                  json_['sparkStandaloneConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        yarnConfig:
            json_.containsKey('yarnConfig')
                ? BasicYarnAutoscalingConfig.fromJson(
                  json_['yarnConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cooldownPeriod != null) 'cooldownPeriod': cooldownPeriod!,
    if (sparkStandaloneConfig != null)
      'sparkStandaloneConfig': sparkStandaloneConfig!,
    if (yarnConfig != null) 'yarnConfig': yarnConfig!,
  };
}

/// Basic autoscaling configurations for YARN.
class BasicYarnAutoscalingConfig {
  /// Timeout for YARN graceful decommissioning of Node Managers.
  ///
  /// Specifies the duration to wait for jobs to complete before forcefully
  /// removing workers (and potentially interrupting jobs). Only applicable to
  /// downscaling operations.Bounds: 0s, 1d.
  ///
  /// Required.
  core.String? gracefulDecommissionTimeout;

  /// Fraction of average YARN pending memory in the last cooldown period for
  /// which to remove workers.
  ///
  /// A scale-down factor of 1 will result in scaling down so that there is no
  /// available memory remaining after the update (more aggressive scaling). A
  /// scale-down factor of 0 disables removing workers, which can be beneficial
  /// for autoscaling a single job. See How autoscaling works
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/autoscaling#how_autoscaling_works)
  /// for more information.Bounds: 0.0, 1.0.
  ///
  /// Required.
  core.double? scaleDownFactor;

  /// Minimum scale-down threshold as a fraction of total cluster size before
  /// scaling occurs.
  ///
  /// For example, in a 20-worker cluster, a threshold of 0.1 means the
  /// autoscaler must recommend at least a 2 worker scale-down for the cluster
  /// to scale. A threshold of 0 means the autoscaler will scale down on any
  /// recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  ///
  /// Optional.
  core.double? scaleDownMinWorkerFraction;

  /// Fraction of average YARN pending memory in the last cooldown period for
  /// which to add workers.
  ///
  /// A scale-up factor of 1.0 will result in scaling up so that there is no
  /// pending memory remaining after the update (more aggressive scaling). A
  /// scale-up factor closer to 0 will result in a smaller magnitude of scaling
  /// up (less aggressive scaling). See How autoscaling works
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/autoscaling#how_autoscaling_works)
  /// for more information.Bounds: 0.0, 1.0.
  ///
  /// Required.
  core.double? scaleUpFactor;

  /// Minimum scale-up threshold as a fraction of total cluster size before
  /// scaling occurs.
  ///
  /// For example, in a 20-worker cluster, a threshold of 0.1 means the
  /// autoscaler must recommend at least a 2-worker scale-up for the cluster to
  /// scale. A threshold of 0 means the autoscaler will scale up on any
  /// recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  ///
  /// Optional.
  core.double? scaleUpMinWorkerFraction;

  BasicYarnAutoscalingConfig({
    this.gracefulDecommissionTimeout,
    this.scaleDownFactor,
    this.scaleDownMinWorkerFraction,
    this.scaleUpFactor,
    this.scaleUpMinWorkerFraction,
  });

  BasicYarnAutoscalingConfig.fromJson(core.Map json_)
    : this(
        gracefulDecommissionTimeout:
            json_['gracefulDecommissionTimeout'] as core.String?,
        scaleDownFactor: (json_['scaleDownFactor'] as core.num?)?.toDouble(),
        scaleDownMinWorkerFraction:
            (json_['scaleDownMinWorkerFraction'] as core.num?)?.toDouble(),
        scaleUpFactor: (json_['scaleUpFactor'] as core.num?)?.toDouble(),
        scaleUpMinWorkerFraction:
            (json_['scaleUpMinWorkerFraction'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gracefulDecommissionTimeout != null)
      'gracefulDecommissionTimeout': gracefulDecommissionTimeout!,
    if (scaleDownFactor != null) 'scaleDownFactor': scaleDownFactor!,
    if (scaleDownMinWorkerFraction != null)
      'scaleDownMinWorkerFraction': scaleDownMinWorkerFraction!,
    if (scaleUpFactor != null) 'scaleUpFactor': scaleUpFactor!,
    if (scaleUpMinWorkerFraction != null)
      'scaleUpMinWorkerFraction': scaleUpMinWorkerFraction!,
  };
}

/// A representation of a batch workload in the service.
class Batch {
  /// The time when the batch was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The email address of the user who created the batch.
  ///
  /// Output only.
  core.String? creator;

  /// Environment configuration for the batch execution.
  ///
  /// Optional.
  EnvironmentConfig? environmentConfig;

  /// The labels to associate with this batch.
  ///
  /// Label keys must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if
  /// present, must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
  /// associated with a batch.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the batch.
  ///
  /// Output only.
  core.String? name;

  /// The resource name of the operation associated with this batch.
  ///
  /// Output only.
  core.String? operation;

  /// PySpark batch config.
  ///
  /// Optional.
  PySparkBatch? pysparkBatch;

  /// Runtime configuration for the batch execution.
  ///
  /// Optional.
  RuntimeConfig? runtimeConfig;

  /// Runtime information about batch execution.
  ///
  /// Output only.
  RuntimeInfo? runtimeInfo;

  /// Spark batch config.
  ///
  /// Optional.
  SparkBatch? sparkBatch;

  /// SparkR batch config.
  ///
  /// Optional.
  SparkRBatch? sparkRBatch;

  /// SparkSql batch config.
  ///
  /// Optional.
  SparkSqlBatch? sparkSqlBatch;

  /// The state of the batch.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The batch state is unknown.
  /// - "PENDING" : The batch is created before running.
  /// - "RUNNING" : The batch is running.
  /// - "CANCELLING" : The batch is cancelling.
  /// - "CANCELLED" : The batch cancellation was successful.
  /// - "SUCCEEDED" : The batch completed successfully.
  /// - "FAILED" : The batch is no longer running due to an error.
  core.String? state;

  /// Historical state information for the batch.
  ///
  /// Output only.
  core.List<StateHistory>? stateHistory;

  /// Batch state details, such as a failure description if the state is FAILED.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The time when the batch entered a current state.
  ///
  /// Output only.
  core.String? stateTime;

  /// A batch UUID (Unique Universal Identifier).
  ///
  /// The service generates this value when it creates the batch.
  ///
  /// Output only.
  core.String? uuid;

  Batch({
    this.createTime,
    this.creator,
    this.environmentConfig,
    this.labels,
    this.name,
    this.operation,
    this.pysparkBatch,
    this.runtimeConfig,
    this.runtimeInfo,
    this.sparkBatch,
    this.sparkRBatch,
    this.sparkSqlBatch,
    this.state,
    this.stateHistory,
    this.stateMessage,
    this.stateTime,
    this.uuid,
  });

  Batch.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        environmentConfig:
            json_.containsKey('environmentConfig')
                ? EnvironmentConfig.fromJson(
                  json_['environmentConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        operation: json_['operation'] as core.String?,
        pysparkBatch:
            json_.containsKey('pysparkBatch')
                ? PySparkBatch.fromJson(
                  json_['pysparkBatch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        runtimeConfig:
            json_.containsKey('runtimeConfig')
                ? RuntimeConfig.fromJson(
                  json_['runtimeConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        runtimeInfo:
            json_.containsKey('runtimeInfo')
                ? RuntimeInfo.fromJson(
                  json_['runtimeInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkBatch:
            json_.containsKey('sparkBatch')
                ? SparkBatch.fromJson(
                  json_['sparkBatch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkRBatch:
            json_.containsKey('sparkRBatch')
                ? SparkRBatch.fromJson(
                  json_['sparkRBatch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkSqlBatch:
            json_.containsKey('sparkSqlBatch')
                ? SparkSqlBatch.fromJson(
                  json_['sparkSqlBatch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        stateHistory:
            (json_['stateHistory'] as core.List?)
                ?.map(
                  (value) => StateHistory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        stateMessage: json_['stateMessage'] as core.String?,
        stateTime: json_['stateTime'] as core.String?,
        uuid: json_['uuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (environmentConfig != null) 'environmentConfig': environmentConfig!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (operation != null) 'operation': operation!,
    if (pysparkBatch != null) 'pysparkBatch': pysparkBatch!,
    if (runtimeConfig != null) 'runtimeConfig': runtimeConfig!,
    if (runtimeInfo != null) 'runtimeInfo': runtimeInfo!,
    if (sparkBatch != null) 'sparkBatch': sparkBatch!,
    if (sparkRBatch != null) 'sparkRBatch': sparkRBatch!,
    if (sparkSqlBatch != null) 'sparkSqlBatch': sparkSqlBatch!,
    if (state != null) 'state': state!,
    if (stateHistory != null) 'stateHistory': stateHistory!,
    if (stateMessage != null) 'stateMessage': stateMessage!,
    if (stateTime != null) 'stateTime': stateTime!,
    if (uuid != null) 'uuid': uuid!,
  };
}

/// Associates members, or principals, with a role.
class Binding {
  /// The condition that is associated with this binding.If the condition
  /// evaluates to true, then this binding applies to the current request.If the
  /// condition evaluates to false, then this binding does not apply to the
  /// current request.
  ///
  /// However, a different role binding might grant the same role to one or more
  /// of the principals in this binding.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// members can have the following values: allUsers: A special identifier that
  /// represents anyone who is on the internet; with or without a Google
  /// account. allAuthenticatedUsers: A special identifier that represents
  /// anyone who is authenticated with a Google account or a service account.
  /// Does not include identities that come from external identity providers
  /// (IdPs) through identity federation. user:{emailid}: An email address that
  /// represents a specific Google account. For example, alice@example.com .
  /// serviceAccount:{emailid}: An email address that represents a Google
  /// service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// serviceAccount:{projectid}.svc.id.goog\[{namespace}/{kubernetes-sa}\]: An
  /// identifier for a Kubernetes service account
  /// (https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, my-project.svc.id.goog\[my-namespace/my-kubernetes-sa\].
  /// group:{emailid}: An email address that represents a Google group. For
  /// example, admins@example.com. domain:{domain}: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, google.com or
  /// example.com.
  /// principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}:
  /// A single identity in a workforce identity pool.
  /// principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}:
  /// All workforce identities in a group.
  /// principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}:
  /// All workforce identities with a specific attribute value.
  /// principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * : All identities in a workforce identity pool.
  /// principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}:
  /// A single identity in a workload identity pool.
  /// principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}:
  /// A workload identity pool group.
  /// principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}:
  /// All identities in a workload identity pool with a certain attribute.
  /// principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * : All identities in a workload identity pool.
  /// deleted:user:{emailid}?uid={uniqueid}: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, alice@example.com?uid=123456789012345678901. If the user is
  /// recovered, this value reverts to user:{emailid} and the recovered user
  /// retains the role in the binding.
  /// deleted:serviceAccount:{emailid}?uid={uniqueid}: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901. If the
  /// service account is undeleted, this value reverts to
  /// serviceAccount:{emailid} and the undeleted service account retains the
  /// role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// admins@example.com?uid=123456789012345678901. If the group is recovered,
  /// this value reverts to group:{emailid} and the recovered group retains the
  /// role in the binding.
  /// deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}:
  /// Deleted single identity in a workforce identity pool. For example,
  /// deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value.
  core.List<core.String>? members;

  /// Role that is assigned to the list of members, or principals.
  ///
  /// For example, roles/viewer, roles/editor, or roles/owner.For an overview of
  /// the IAM roles and permissions, see the IAM documentation
  /// (https://cloud.google.com/iam/docs/roles-overview). For a list of the
  /// available pre-defined roles, see here
  /// (https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
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

/// Native Build Info
class BuildInfo {
  /// Build key.
  ///
  /// Optional.
  core.String? buildKey;

  /// Build value.
  ///
  /// Optional.
  core.String? buildValue;

  BuildInfo({this.buildKey, this.buildValue});

  BuildInfo.fromJson(core.Map json_)
    : this(
        buildKey: json_['buildKey'] as core.String?,
        buildValue: json_['buildValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buildKey != null) 'buildKey': buildKey!,
    if (buildValue != null) 'buildValue': buildValue!,
  };
}

/// A request to cancel a job.
typedef CancelJobRequest = $Empty;

/// Describes the identifying information, config, and status of a Dataproc
/// cluster
class Cluster {
  /// The cluster name, which must be unique within a project.
  ///
  /// The name must start with a lowercase letter, and can contain up to 51
  /// lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The
  /// name of a deleted cluster can be reused.
  ///
  /// Required.
  core.String? clusterName;

  /// A cluster UUID (Unique Universal Identifier).
  ///
  /// Dataproc generates this value when it creates the cluster.
  ///
  /// Output only.
  core.String? clusterUuid;

  /// The cluster config for a cluster of Compute Engine Instances.
  ///
  /// Note that Dataproc may set default values, and values may change when
  /// clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig
  /// must be specified.
  ///
  /// Optional.
  ClusterConfig? config;

  /// The labels to associate with this cluster.
  ///
  /// Label keys must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if
  /// present, must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
  /// associated with a cluster.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature:
  /// This report is available for testing purposes only.
  ///
  /// It may be changed before final release.
  ///
  /// Output only.
  ClusterMetrics? metrics;

  /// The Google Cloud Platform project ID that the cluster belongs to.
  ///
  /// Required.
  core.String? projectId;

  /// Cluster status.
  ///
  /// Output only.
  ClusterStatus? status;

  /// The previous cluster status.
  ///
  /// Output only.
  core.List<ClusterStatus>? statusHistory;

  /// The virtual cluster config is used when creating a Dataproc cluster that
  /// does not directly control the underlying compute resources, for example,
  /// when creating a Dataproc-on-GKE cluster
  /// (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview).
  ///
  /// Dataproc may set default values, and values may change when clusters are
  /// updated. Exactly one of config or virtual_cluster_config must be
  /// specified.
  ///
  /// Optional.
  VirtualClusterConfig? virtualClusterConfig;

  Cluster({
    this.clusterName,
    this.clusterUuid,
    this.config,
    this.labels,
    this.metrics,
    this.projectId,
    this.status,
    this.statusHistory,
    this.virtualClusterConfig,
  });

  Cluster.fromJson(core.Map json_)
    : this(
        clusterName: json_['clusterName'] as core.String?,
        clusterUuid: json_['clusterUuid'] as core.String?,
        config:
            json_.containsKey('config')
                ? ClusterConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        metrics:
            json_.containsKey('metrics')
                ? ClusterMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        projectId: json_['projectId'] as core.String?,
        status:
            json_.containsKey('status')
                ? ClusterStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        statusHistory:
            (json_['statusHistory'] as core.List?)
                ?.map(
                  (value) => ClusterStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        virtualClusterConfig:
            json_.containsKey('virtualClusterConfig')
                ? VirtualClusterConfig.fromJson(
                  json_['virtualClusterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterName != null) 'clusterName': clusterName!,
    if (clusterUuid != null) 'clusterUuid': clusterUuid!,
    if (config != null) 'config': config!,
    if (labels != null) 'labels': labels!,
    if (metrics != null) 'metrics': metrics!,
    if (projectId != null) 'projectId': projectId!,
    if (status != null) 'status': status!,
    if (statusHistory != null) 'statusHistory': statusHistory!,
    if (virtualClusterConfig != null)
      'virtualClusterConfig': virtualClusterConfig!,
  };
}

/// The cluster config.
class ClusterConfig {
  /// Autoscaling config for the policy associated with the cluster.
  ///
  /// Cluster does not autoscale if this field is unset.
  ///
  /// Optional.
  AutoscalingConfig? autoscalingConfig;

  /// The node group settings.
  ///
  /// Optional.
  core.List<AuxiliaryNodeGroup>? auxiliaryNodeGroups;

  /// The tier of the cluster.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLUSTER_TIER_UNSPECIFIED" : Not set. Works the same as
  /// CLUSTER_TIER_STANDARD.
  /// - "CLUSTER_TIER_STANDARD" : Standard dataproc cluster.
  /// - "CLUSTER_TIER_PREMIUM" : Premium dataproc cluster.
  core.String? clusterTier;

  /// The type of the cluster.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLUSTER_TYPE_UNSPECIFIED" : Not set.
  /// - "STANDARD" : Standard dataproc cluster with a minimum of two primary
  /// workers.
  /// - "SINGLE_NODE" :
  /// https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/single-node-clusters
  /// - "ZERO_SCALE" : Clusters that can use only secondary workers and be
  /// scaled down to zero secondary worker nodes.
  core.String? clusterType;

  /// A Cloud Storage bucket used to stage job dependencies, config files, and
  /// job driver console output.
  ///
  /// If you do not specify a staging bucket, Cloud Dataproc will determine a
  /// Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket
  /// according to the Compute Engine zone where your cluster is deployed, and
  /// then create and manage this project-level, per-location bucket (see
  /// Dataproc staging and temp buckets
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  /// This field requires a Cloud Storage bucket name, not a gs://... URI to a
  /// Cloud Storage bucket.
  ///
  /// Optional.
  core.String? configBucket;

  /// The config for Dataproc metrics.
  ///
  /// Optional.
  DataprocMetricConfig? dataprocMetricConfig;

  /// Encryption settings for the cluster.
  ///
  /// Optional.
  EncryptionConfig? encryptionConfig;

  /// Port/endpoint configuration for this cluster
  ///
  /// Optional.
  EndpointConfig? endpointConfig;

  /// The shared Compute Engine config settings for all instances in a cluster.
  ///
  /// Optional.
  GceClusterConfig? gceClusterConfig;

  /// BETA.
  ///
  /// The Kubernetes Engine config for Dataproc clusters deployed to The
  /// Kubernetes Engine config for Dataproc clusters deployed to Kubernetes.
  /// These config settings are mutually exclusive with Compute Engine-based
  /// options, such as gce_cluster_config, master_config, worker_config,
  /// secondary_worker_config, and autoscaling_config.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GkeClusterConfig? gkeClusterConfig;

  /// Commands to execute on each node after config is completed.
  ///
  /// By default, executables are run on master and all worker nodes. You can
  /// test a node's role metadata to run an executable on a master or worker
  /// node, as shown below using curl (you can also use wget): ROLE=$(curl -H
  /// Metadata-Flavor:Google
  /// http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if
  /// \[\[ "${ROLE}" == 'Master' \]\]; then ... master specific actions ... else
  /// ... worker specific actions ... fi
  ///
  /// Optional.
  core.List<NodeInitializationAction>? initializationActions;

  /// Lifecycle setting for the cluster.
  ///
  /// Optional.
  LifecycleConfig? lifecycleConfig;

  /// The Compute Engine config settings for the cluster's master instance.
  ///
  /// Optional.
  InstanceGroupConfig? masterConfig;

  /// Metastore configuration.
  ///
  /// Optional.
  MetastoreConfig? metastoreConfig;

  /// The Compute Engine config settings for a cluster's secondary worker
  /// instances
  ///
  /// Optional.
  InstanceGroupConfig? secondaryWorkerConfig;

  /// Security settings for the cluster.
  ///
  /// Optional.
  SecurityConfig? securityConfig;

  /// The config settings for cluster software.
  ///
  /// Optional.
  SoftwareConfig? softwareConfig;

  /// A Cloud Storage bucket used to store ephemeral cluster and jobs data, such
  /// as Spark and MapReduce history files.
  ///
  /// If you do not specify a temp bucket, Dataproc will determine a Cloud
  /// Storage location (US, ASIA, or EU) for your cluster's temp bucket
  /// according to the Compute Engine zone where your cluster is deployed, and
  /// then create and manage this project-level, per-location bucket. The
  /// default bucket has a TTL of 90 days, but you can use any TTL (or none) if
  /// you specify a bucket (see Dataproc staging and temp buckets
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  /// This field requires a Cloud Storage bucket name, not a gs://... URI to a
  /// Cloud Storage bucket.
  ///
  /// Optional.
  core.String? tempBucket;

  /// The Compute Engine config settings for the cluster's worker instances.
  ///
  /// Optional.
  InstanceGroupConfig? workerConfig;

  ClusterConfig({
    this.autoscalingConfig,
    this.auxiliaryNodeGroups,
    this.clusterTier,
    this.clusterType,
    this.configBucket,
    this.dataprocMetricConfig,
    this.encryptionConfig,
    this.endpointConfig,
    this.gceClusterConfig,
    this.gkeClusterConfig,
    this.initializationActions,
    this.lifecycleConfig,
    this.masterConfig,
    this.metastoreConfig,
    this.secondaryWorkerConfig,
    this.securityConfig,
    this.softwareConfig,
    this.tempBucket,
    this.workerConfig,
  });

  ClusterConfig.fromJson(core.Map json_)
    : this(
        autoscalingConfig:
            json_.containsKey('autoscalingConfig')
                ? AutoscalingConfig.fromJson(
                  json_['autoscalingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        auxiliaryNodeGroups:
            (json_['auxiliaryNodeGroups'] as core.List?)
                ?.map(
                  (value) => AuxiliaryNodeGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        clusterTier: json_['clusterTier'] as core.String?,
        clusterType: json_['clusterType'] as core.String?,
        configBucket: json_['configBucket'] as core.String?,
        dataprocMetricConfig:
            json_.containsKey('dataprocMetricConfig')
                ? DataprocMetricConfig.fromJson(
                  json_['dataprocMetricConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        encryptionConfig:
            json_.containsKey('encryptionConfig')
                ? EncryptionConfig.fromJson(
                  json_['encryptionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        endpointConfig:
            json_.containsKey('endpointConfig')
                ? EndpointConfig.fromJson(
                  json_['endpointConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gceClusterConfig:
            json_.containsKey('gceClusterConfig')
                ? GceClusterConfig.fromJson(
                  json_['gceClusterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gkeClusterConfig:
            json_.containsKey('gkeClusterConfig')
                ? GkeClusterConfig.fromJson(
                  json_['gkeClusterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        initializationActions:
            (json_['initializationActions'] as core.List?)
                ?.map(
                  (value) => NodeInitializationAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        lifecycleConfig:
            json_.containsKey('lifecycleConfig')
                ? LifecycleConfig.fromJson(
                  json_['lifecycleConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        masterConfig:
            json_.containsKey('masterConfig')
                ? InstanceGroupConfig.fromJson(
                  json_['masterConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metastoreConfig:
            json_.containsKey('metastoreConfig')
                ? MetastoreConfig.fromJson(
                  json_['metastoreConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        secondaryWorkerConfig:
            json_.containsKey('secondaryWorkerConfig')
                ? InstanceGroupConfig.fromJson(
                  json_['secondaryWorkerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        securityConfig:
            json_.containsKey('securityConfig')
                ? SecurityConfig.fromJson(
                  json_['securityConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        softwareConfig:
            json_.containsKey('softwareConfig')
                ? SoftwareConfig.fromJson(
                  json_['softwareConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tempBucket: json_['tempBucket'] as core.String?,
        workerConfig:
            json_.containsKey('workerConfig')
                ? InstanceGroupConfig.fromJson(
                  json_['workerConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoscalingConfig != null) 'autoscalingConfig': autoscalingConfig!,
    if (auxiliaryNodeGroups != null)
      'auxiliaryNodeGroups': auxiliaryNodeGroups!,
    if (clusterTier != null) 'clusterTier': clusterTier!,
    if (clusterType != null) 'clusterType': clusterType!,
    if (configBucket != null) 'configBucket': configBucket!,
    if (dataprocMetricConfig != null)
      'dataprocMetricConfig': dataprocMetricConfig!,
    if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
    if (endpointConfig != null) 'endpointConfig': endpointConfig!,
    if (gceClusterConfig != null) 'gceClusterConfig': gceClusterConfig!,
    if (gkeClusterConfig != null) 'gkeClusterConfig': gkeClusterConfig!,
    if (initializationActions != null)
      'initializationActions': initializationActions!,
    if (lifecycleConfig != null) 'lifecycleConfig': lifecycleConfig!,
    if (masterConfig != null) 'masterConfig': masterConfig!,
    if (metastoreConfig != null) 'metastoreConfig': metastoreConfig!,
    if (secondaryWorkerConfig != null)
      'secondaryWorkerConfig': secondaryWorkerConfig!,
    if (securityConfig != null) 'securityConfig': securityConfig!,
    if (softwareConfig != null) 'softwareConfig': softwareConfig!,
    if (tempBucket != null) 'tempBucket': tempBucket!,
    if (workerConfig != null) 'workerConfig': workerConfig!,
  };
}

/// Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature:
/// This report is available for testing purposes only.
///
/// It may be changed before final release.
class ClusterMetrics {
  /// The HDFS metrics.
  core.Map<core.String, core.String>? hdfsMetrics;

  /// YARN metrics.
  core.Map<core.String, core.String>? yarnMetrics;

  ClusterMetrics({this.hdfsMetrics, this.yarnMetrics});

  ClusterMetrics.fromJson(core.Map json_)
    : this(
        hdfsMetrics: (json_['hdfsMetrics']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        yarnMetrics: (json_['yarnMetrics']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hdfsMetrics != null) 'hdfsMetrics': hdfsMetrics!,
    if (yarnMetrics != null) 'yarnMetrics': yarnMetrics!,
  };
}

/// A selector that chooses target cluster for jobs based on metadata.
class ClusterSelector {
  /// The cluster labels.
  ///
  /// Cluster must have all labels to match.
  ///
  /// Required.
  core.Map<core.String, core.String>? clusterLabels;

  /// The zone where workflow process executes.
  ///
  /// This parameter does not affect the selection of the cluster.If
  /// unspecified, the zone of the first cluster matching the selector is used.
  ///
  /// Optional.
  core.String? zone;

  ClusterSelector({this.clusterLabels, this.zone});

  ClusterSelector.fromJson(core.Map json_)
    : this(
        clusterLabels: (json_['clusterLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        zone: json_['zone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterLabels != null) 'clusterLabels': clusterLabels!,
    if (zone != null) 'zone': zone!,
  };
}

/// The status of a cluster and its instances.
class ClusterStatus {
  /// Details of cluster's state.
  ///
  /// Optional. Output only.
  core.String? detail;

  /// The cluster's state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNKNOWN" : The cluster state is unknown.
  /// - "CREATING" : The cluster is being created and set up. It is not ready
  /// for use.
  /// - "RUNNING" : The cluster is currently running and healthy. It is ready
  /// for use.Note: The cluster state changes from "creating" to "running"
  /// status after the master node(s), first two primary worker nodes (and the
  /// last primary worker node if primary workers \> 2) are running.
  /// - "ERROR" : The cluster encountered an error. It is not ready for use.
  /// - "ERROR_DUE_TO_UPDATE" : The cluster has encountered an error while being
  /// updated. Jobs can be submitted to the cluster, but the cluster cannot be
  /// updated.
  /// - "DELETING" : The cluster is being deleted. It cannot be used.
  /// - "UPDATING" : The cluster is being updated. It continues to accept and
  /// process jobs.
  /// - "STOPPING" : The cluster is being stopped. It cannot be used.
  /// - "STOPPED" : The cluster is currently stopped. It is not ready for use.
  /// - "STARTING" : The cluster is being started. It is not ready for use.
  /// - "REPAIRING" : The cluster is being repaired. It is not ready for use.
  /// - "SCHEDULED" : Cluster creation is currently waiting for resources to be
  /// available. Once all resources are available, it will transition to
  /// CREATING and then RUNNING.
  core.String? state;

  /// Time when this state was entered (see JSON representation of Timestamp
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// Output only.
  core.String? stateStartTime;

  /// Additional state information that includes status reported by the agent.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The cluster substate is unknown.
  /// - "UNHEALTHY" : The cluster is known to be in an unhealthy state (for
  /// example, critical daemons are not running or HDFS capacity is
  /// exhausted).Applies to RUNNING state.
  /// - "STALE_STATUS" : The agent-reported status is out of date (may occur if
  /// Dataproc loses communication with Agent).Applies to RUNNING state.
  core.String? substate;

  ClusterStatus({this.detail, this.state, this.stateStartTime, this.substate});

  ClusterStatus.fromJson(core.Map json_)
    : this(
        detail: json_['detail'] as core.String?,
        state: json_['state'] as core.String?,
        stateStartTime: json_['stateStartTime'] as core.String?,
        substate: json_['substate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detail != null) 'detail': detail!,
    if (state != null) 'state': state!,
    if (stateStartTime != null) 'stateStartTime': stateStartTime!,
    if (substate != null) 'substate': substate!,
  };
}

/// Cluster to be repaired
class ClusterToRepair {
  /// Repair action to take on the cluster resource.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CLUSTER_REPAIR_ACTION_UNSPECIFIED" : No action will be taken by
  /// default.
  /// - "REPAIR_ERROR_DUE_TO_UPDATE_CLUSTER" : Repair cluster in
  /// ERROR_DUE_TO_UPDATE states.
  core.String? clusterRepairAction;

  ClusterToRepair({this.clusterRepairAction});

  ClusterToRepair.fromJson(core.Map json_)
    : this(clusterRepairAction: json_['clusterRepairAction'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterRepairAction != null)
      'clusterRepairAction': clusterRepairAction!,
  };
}

/// Confidential Instance Config for clusters using Confidential VMs
/// (https://cloud.google.com/compute/confidential-vm/docs)
typedef ConfidentialInstanceConfig = $ConfidentialInstanceConfig;

/// Consolidated summary about executors used by the application.
class ConsolidatedExecutorSummary {
  core.int? activeTasks;
  core.int? completedTasks;
  core.int? count;
  core.String? diskUsed;
  core.int? failedTasks;
  core.int? isExcluded;
  core.String? maxMemory;
  MemoryMetrics? memoryMetrics;
  core.String? memoryUsed;
  core.int? rddBlocks;
  core.int? totalCores;
  core.String? totalDurationMillis;
  core.String? totalGcTimeMillis;
  core.String? totalInputBytes;
  core.String? totalShuffleRead;
  core.String? totalShuffleWrite;
  core.int? totalTasks;

  ConsolidatedExecutorSummary({
    this.activeTasks,
    this.completedTasks,
    this.count,
    this.diskUsed,
    this.failedTasks,
    this.isExcluded,
    this.maxMemory,
    this.memoryMetrics,
    this.memoryUsed,
    this.rddBlocks,
    this.totalCores,
    this.totalDurationMillis,
    this.totalGcTimeMillis,
    this.totalInputBytes,
    this.totalShuffleRead,
    this.totalShuffleWrite,
    this.totalTasks,
  });

  ConsolidatedExecutorSummary.fromJson(core.Map json_)
    : this(
        activeTasks: json_['activeTasks'] as core.int?,
        completedTasks: json_['completedTasks'] as core.int?,
        count: json_['count'] as core.int?,
        diskUsed: json_['diskUsed'] as core.String?,
        failedTasks: json_['failedTasks'] as core.int?,
        isExcluded: json_['isExcluded'] as core.int?,
        maxMemory: json_['maxMemory'] as core.String?,
        memoryMetrics:
            json_.containsKey('memoryMetrics')
                ? MemoryMetrics.fromJson(
                  json_['memoryMetrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryUsed: json_['memoryUsed'] as core.String?,
        rddBlocks: json_['rddBlocks'] as core.int?,
        totalCores: json_['totalCores'] as core.int?,
        totalDurationMillis: json_['totalDurationMillis'] as core.String?,
        totalGcTimeMillis: json_['totalGcTimeMillis'] as core.String?,
        totalInputBytes: json_['totalInputBytes'] as core.String?,
        totalShuffleRead: json_['totalShuffleRead'] as core.String?,
        totalShuffleWrite: json_['totalShuffleWrite'] as core.String?,
        totalTasks: json_['totalTasks'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeTasks != null) 'activeTasks': activeTasks!,
    if (completedTasks != null) 'completedTasks': completedTasks!,
    if (count != null) 'count': count!,
    if (diskUsed != null) 'diskUsed': diskUsed!,
    if (failedTasks != null) 'failedTasks': failedTasks!,
    if (isExcluded != null) 'isExcluded': isExcluded!,
    if (maxMemory != null) 'maxMemory': maxMemory!,
    if (memoryMetrics != null) 'memoryMetrics': memoryMetrics!,
    if (memoryUsed != null) 'memoryUsed': memoryUsed!,
    if (rddBlocks != null) 'rddBlocks': rddBlocks!,
    if (totalCores != null) 'totalCores': totalCores!,
    if (totalDurationMillis != null)
      'totalDurationMillis': totalDurationMillis!,
    if (totalGcTimeMillis != null) 'totalGcTimeMillis': totalGcTimeMillis!,
    if (totalInputBytes != null) 'totalInputBytes': totalInputBytes!,
    if (totalShuffleRead != null) 'totalShuffleRead': totalShuffleRead!,
    if (totalShuffleWrite != null) 'totalShuffleWrite': totalShuffleWrite!,
    if (totalTasks != null) 'totalTasks': totalTasks!,
  };
}

/// Dataproc metric config.
class DataprocMetricConfig {
  /// Metrics sources to enable.
  ///
  /// Required.
  core.List<Metric>? metrics;

  DataprocMetricConfig({this.metrics});

  DataprocMetricConfig.fromJson(core.Map json_)
    : this(
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => Metric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metrics != null) 'metrics': metrics!,
  };
}

/// A request to collect cluster diagnostic information.
class DiagnoseClusterRequest {
  /// Time interval in which diagnosis should be carried out on the cluster.
  ///
  /// Optional.
  Interval? diagnosisInterval;

  /// DEPRECATED Specifies the job on which diagnosis is to be performed.
  ///
  /// Format: projects/{project}/regions/{region}/jobs/{job}
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? job;

  /// Specifies a list of jobs on which diagnosis is to be performed.
  ///
  /// Format: projects/{project}/regions/{region}/jobs/{job}
  ///
  /// Optional.
  core.List<core.String>? jobs;

  /// (Optional) The access type to the diagnostic tarball.
  ///
  /// If not specified, falls back to default access of the bucket
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TARBALL_ACCESS_UNSPECIFIED" : Tarball Access unspecified. Falls back to
  /// default access of the bucket
  /// - "GOOGLE_CLOUD_SUPPORT" : Google Cloud Support group has read access to
  /// the diagnostic tarball
  /// - "GOOGLE_DATAPROC_DIAGNOSE" : Google Cloud Dataproc Diagnose service
  /// account has read access to the diagnostic tarball
  core.String? tarballAccess;

  /// (Optional) The output Cloud Storage directory for the diagnostic tarball.
  ///
  /// If not specified, a task-specific directory in the cluster's staging
  /// bucket will be used.
  ///
  /// Optional.
  core.String? tarballGcsDir;

  /// DEPRECATED Specifies the yarn application on which diagnosis is to be
  /// performed.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? yarnApplicationId;

  /// Specifies a list of yarn applications on which diagnosis is to be
  /// performed.
  ///
  /// Optional.
  core.List<core.String>? yarnApplicationIds;

  DiagnoseClusterRequest({
    this.diagnosisInterval,
    this.job,
    this.jobs,
    this.tarballAccess,
    this.tarballGcsDir,
    this.yarnApplicationId,
    this.yarnApplicationIds,
  });

  DiagnoseClusterRequest.fromJson(core.Map json_)
    : this(
        diagnosisInterval:
            json_.containsKey('diagnosisInterval')
                ? Interval.fromJson(
                  json_['diagnosisInterval']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        job: json_['job'] as core.String?,
        jobs:
            (json_['jobs'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        tarballAccess: json_['tarballAccess'] as core.String?,
        tarballGcsDir: json_['tarballGcsDir'] as core.String?,
        yarnApplicationId: json_['yarnApplicationId'] as core.String?,
        yarnApplicationIds:
            (json_['yarnApplicationIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (diagnosisInterval != null) 'diagnosisInterval': diagnosisInterval!,
    if (job != null) 'job': job!,
    if (jobs != null) 'jobs': jobs!,
    if (tarballAccess != null) 'tarballAccess': tarballAccess!,
    if (tarballGcsDir != null) 'tarballGcsDir': tarballGcsDir!,
    if (yarnApplicationId != null) 'yarnApplicationId': yarnApplicationId!,
    if (yarnApplicationIds != null) 'yarnApplicationIds': yarnApplicationIds!,
  };
}

/// Specifies the config of boot disk and attached disk options for a group of
/// VM instances.
class DiskConfig {
  /// Indicates how many IOPS to provision for the disk.
  ///
  /// This sets the number of I/O operations per second that the disk can
  /// handle. This field is supported only if boot_disk_type is
  /// hyperdisk-balanced.
  ///
  /// Optional.
  core.String? bootDiskProvisionedIops;

  /// Indicates how much throughput to provision for the disk.
  ///
  /// This sets the number of throughput mb per second that the disk can handle.
  /// Values must be greater than or equal to 1. This field is supported only if
  /// boot_disk_type is hyperdisk-balanced.
  ///
  /// Optional.
  core.String? bootDiskProvisionedThroughput;

  /// Size in GB of the boot disk (default is 500GB).
  ///
  /// Optional.
  core.int? bootDiskSizeGb;

  /// Type of the boot disk (default is "pd-standard").
  ///
  /// Valid values: "pd-balanced" (Persistent Disk Balanced Solid State Drive),
  /// "pd-ssd" (Persistent Disk Solid State Drive), or "pd-standard" (Persistent
  /// Disk Hard Disk Drive). See Disk types
  /// (https://cloud.google.com/compute/docs/disks#disk-types).
  ///
  /// Optional.
  core.String? bootDiskType;

  /// Interface type of local SSDs (default is "scsi").
  ///
  /// Valid values: "scsi" (Small Computer System Interface), "nvme"
  /// (Non-Volatile Memory Express). See local SSD performance
  /// (https://cloud.google.com/compute/docs/disks/local-ssd#performance).
  ///
  /// Optional.
  core.String? localSsdInterface;

  /// Number of attached SSDs, from 0 to 8 (default is 0).
  ///
  /// If SSDs are not attached, the boot disk is used to store runtime logs and
  /// HDFS (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If
  /// one or more SSDs are attached, this runtime bulk data is spread across
  /// them, and the boot disk contains only basic config and installed
  /// binaries.Note: Local SSD options may vary by machine type and number of
  /// vCPUs selected.
  ///
  /// Optional.
  core.int? numLocalSsds;

  DiskConfig({
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
  });

  DiskConfig.fromJson(core.Map json_)
    : this(
        bootDiskProvisionedIops:
            json_['bootDiskProvisionedIops'] as core.String?,
        bootDiskProvisionedThroughput:
            json_['bootDiskProvisionedThroughput'] as core.String?,
        bootDiskSizeGb: json_['bootDiskSizeGb'] as core.int?,
        bootDiskType: json_['bootDiskType'] as core.String?,
        localSsdInterface: json_['localSsdInterface'] as core.String?,
        numLocalSsds: json_['numLocalSsds'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bootDiskProvisionedIops != null)
      'bootDiskProvisionedIops': bootDiskProvisionedIops!,
    if (bootDiskProvisionedThroughput != null)
      'bootDiskProvisionedThroughput': bootDiskProvisionedThroughput!,
    if (bootDiskSizeGb != null) 'bootDiskSizeGb': bootDiskSizeGb!,
    if (bootDiskType != null) 'bootDiskType': bootDiskType!,
    if (localSsdInterface != null) 'localSsdInterface': localSsdInterface!,
    if (numLocalSsds != null) 'numLocalSsds': numLocalSsds!,
  };
}

/// Driver scheduling configuration.
class DriverSchedulingConfig {
  /// The amount of memory in MB the driver is requesting.
  ///
  /// Required.
  core.int? memoryMb;

  /// The number of vCPUs the driver is requesting.
  ///
  /// Required.
  core.int? vcores;

  DriverSchedulingConfig({this.memoryMb, this.vcores});

  DriverSchedulingConfig.fromJson(core.Map json_)
    : this(
        memoryMb: json_['memoryMb'] as core.int?,
        vcores: json_['vcores'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (memoryMb != null) 'memoryMb': memoryMb!,
    if (vcores != null) 'vcores': vcores!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Encryption settings for the cluster.
class EncryptionConfig {
  /// The Cloud KMS key resource name to use for persistent disk encryption for
  /// all instances in the cluster.
  ///
  /// See Use CMEK with cluster data
  /// (https://cloud.google.com//dataproc/docs/concepts/configuring-clusters/customer-managed-encryption#use_cmek_with_cluster_data)
  /// for more information.
  ///
  /// Optional.
  core.String? gcePdKmsKeyName;

  /// The Cloud KMS key resource name to use for cluster persistent disk and job
  /// argument encryption.
  ///
  /// See Use CMEK with cluster data
  /// (https://cloud.google.com//dataproc/docs/concepts/configuring-clusters/customer-managed-encryption#use_cmek_with_cluster_data)
  /// for more information.When this key resource name is provided, the
  /// following job arguments of the following job types submitted to the
  /// cluster are encrypted using CMEK: FlinkJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/FlinkJob)
  /// HadoopJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/HadoopJob)
  /// SparkJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkJob)
  /// SparkRJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkRJob)
  /// PySparkJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/PySparkJob)
  /// SparkSqlJob
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkSqlJob)
  /// scriptVariables and queryList.queries HiveJob
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/HiveJob)
  /// scriptVariables and queryList.queries PigJob
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/PigJob)
  /// scriptVariables and queryList.queries PrestoJob
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/PrestoJob)
  /// scriptVariables and queryList.queries
  ///
  /// Optional.
  core.String? kmsKey;

  EncryptionConfig({this.gcePdKmsKeyName, this.kmsKey});

  EncryptionConfig.fromJson(core.Map json_)
    : this(
        gcePdKmsKeyName: json_['gcePdKmsKeyName'] as core.String?,
        kmsKey: json_['kmsKey'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcePdKmsKeyName != null) 'gcePdKmsKeyName': gcePdKmsKeyName!,
    if (kmsKey != null) 'kmsKey': kmsKey!,
  };
}

/// Endpoint config for this cluster
class EndpointConfig {
  /// If true, enable http access to specific ports on the cluster from external
  /// sources.
  ///
  /// Defaults to false.
  ///
  /// Optional.
  core.bool? enableHttpPortAccess;

  /// The map of port descriptions to URLs.
  ///
  /// Will only be populated if enable_http_port_access is true.
  ///
  /// Output only.
  core.Map<core.String, core.String>? httpPorts;

  EndpointConfig({this.enableHttpPortAccess, this.httpPorts});

  EndpointConfig.fromJson(core.Map json_)
    : this(
        enableHttpPortAccess: json_['enableHttpPortAccess'] as core.bool?,
        httpPorts: (json_['httpPorts'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enableHttpPortAccess != null)
      'enableHttpPortAccess': enableHttpPortAccess!,
    if (httpPorts != null) 'httpPorts': httpPorts!,
  };
}

/// Environment configuration for a workload.
class EnvironmentConfig {
  /// Execution configuration for a workload.
  ///
  /// Optional.
  ExecutionConfig? executionConfig;

  /// Peripherals configuration that workload has access to.
  ///
  /// Optional.
  PeripheralsConfig? peripheralsConfig;

  EnvironmentConfig({this.executionConfig, this.peripheralsConfig});

  EnvironmentConfig.fromJson(core.Map json_)
    : this(
        executionConfig:
            json_.containsKey('executionConfig')
                ? ExecutionConfig.fromJson(
                  json_['executionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        peripheralsConfig:
            json_.containsKey('peripheralsConfig')
                ? PeripheralsConfig.fromJson(
                  json_['peripheralsConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionConfig != null) 'executionConfig': executionConfig!,
    if (peripheralsConfig != null) 'peripheralsConfig': peripheralsConfig!,
  };
}

/// Execution configuration for a workload.
class ExecutionConfig {
  /// Authentication configuration used to set the default identity for the
  /// workload execution.
  ///
  /// The config specifies the type of identity (service account or user) that
  /// will be used by workloads to access resources on the project(s).
  ///
  /// Optional.
  AuthenticationConfig? authenticationConfig;

  /// Applies to sessions only.
  ///
  /// The duration to keep the session alive while it's idling. Exceeding this
  /// threshold causes the session to terminate. This field cannot be set on a
  /// batch workload. Minimum value is 10 minutes; maximum value is 14 days (see
  /// JSON representation of Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// Defaults to 1 hour if not set. If both ttl and idle_ttl are specified for
  /// an interactive session, the conditions are treated as OR conditions: the
  /// workload will be terminated when it has been idle for idle_ttl or when ttl
  /// has been exceeded, whichever occurs first.
  ///
  /// Optional.
  core.String? idleTtl;

  /// The Cloud KMS key to use for encryption.
  ///
  /// Optional.
  core.String? kmsKey;

  /// Tags used for network traffic control.
  ///
  /// Optional.
  core.List<core.String>? networkTags;

  /// Network URI to connect workload to.
  ///
  /// Optional.
  core.String? networkUri;

  /// Service account that used to execute workload.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// A Cloud Storage bucket used to stage workload dependencies, config files,
  /// and store workload output and other ephemeral data, such as Spark history
  /// files.
  ///
  /// If you do not specify a staging bucket, Cloud Dataproc will determine a
  /// Cloud Storage location according to the region where your workload is
  /// running, and then create and manage project-level, per-location staging
  /// and temporary buckets. This field requires a Cloud Storage bucket name,
  /// not a gs://... URI to a Cloud Storage bucket.
  ///
  /// Optional.
  core.String? stagingBucket;

  /// Subnetwork URI to connect workload to.
  ///
  /// Optional.
  core.String? subnetworkUri;

  /// The duration after which the workload will be terminated, specified as the
  /// JSON representation for Duration
  /// (https://protobuf.dev/programming-guides/proto3/#json).
  ///
  /// When the workload exceeds this duration, it will be unconditionally
  /// terminated without waiting for ongoing work to finish. If ttl is not
  /// specified for a batch workload, the workload will be allowed to run until
  /// it exits naturally (or run forever without exiting). If ttl is not
  /// specified for an interactive session, it defaults to 24 hours. If ttl is
  /// not specified for a batch that uses 2.1+ runtime version, it defaults to 4
  /// hours. Minimum value is 10 minutes; maximum value is 14 days. If both ttl
  /// and idle_ttl are specified (for an interactive session), the conditions
  /// are treated as OR conditions: the workload will be terminated when it has
  /// been idle for idle_ttl or when ttl has been exceeded, whichever occurs
  /// first.
  ///
  /// Optional.
  core.String? ttl;

  ExecutionConfig({
    this.authenticationConfig,
    this.idleTtl,
    this.kmsKey,
    this.networkTags,
    this.networkUri,
    this.serviceAccount,
    this.stagingBucket,
    this.subnetworkUri,
    this.ttl,
  });

  ExecutionConfig.fromJson(core.Map json_)
    : this(
        authenticationConfig:
            json_.containsKey('authenticationConfig')
                ? AuthenticationConfig.fromJson(
                  json_['authenticationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        idleTtl: json_['idleTtl'] as core.String?,
        kmsKey: json_['kmsKey'] as core.String?,
        networkTags:
            (json_['networkTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        networkUri: json_['networkUri'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        stagingBucket: json_['stagingBucket'] as core.String?,
        subnetworkUri: json_['subnetworkUri'] as core.String?,
        ttl: json_['ttl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authenticationConfig != null)
      'authenticationConfig': authenticationConfig!,
    if (idleTtl != null) 'idleTtl': idleTtl!,
    if (kmsKey != null) 'kmsKey': kmsKey!,
    if (networkTags != null) 'networkTags': networkTags!,
    if (networkUri != null) 'networkUri': networkUri!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (stagingBucket != null) 'stagingBucket': stagingBucket!,
    if (subnetworkUri != null) 'subnetworkUri': subnetworkUri!,
    if (ttl != null) 'ttl': ttl!,
  };
}

class ExecutorMetrics {
  core.Map<core.String, core.String>? metrics;

  ExecutorMetrics({this.metrics});

  ExecutorMetrics.fromJson(core.Map json_)
    : this(
        metrics: (json_['metrics'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metrics != null) 'metrics': metrics!,
  };
}

class ExecutorMetricsDistributions {
  core.List<core.double>? diskBytesSpilled;
  core.List<core.double>? failedTasks;
  core.List<core.double>? inputBytes;
  core.List<core.double>? inputRecords;
  core.List<core.double>? killedTasks;
  core.List<core.double>? memoryBytesSpilled;
  core.List<core.double>? outputBytes;
  core.List<core.double>? outputRecords;
  ExecutorPeakMetricsDistributions? peakMemoryMetrics;
  core.List<core.double>? quantiles;
  core.List<core.double>? shuffleRead;
  core.List<core.double>? shuffleReadRecords;
  core.List<core.double>? shuffleWrite;
  core.List<core.double>? shuffleWriteRecords;
  core.List<core.double>? succeededTasks;
  core.List<core.double>? taskTimeMillis;

  ExecutorMetricsDistributions({
    this.diskBytesSpilled,
    this.failedTasks,
    this.inputBytes,
    this.inputRecords,
    this.killedTasks,
    this.memoryBytesSpilled,
    this.outputBytes,
    this.outputRecords,
    this.peakMemoryMetrics,
    this.quantiles,
    this.shuffleRead,
    this.shuffleReadRecords,
    this.shuffleWrite,
    this.shuffleWriteRecords,
    this.succeededTasks,
    this.taskTimeMillis,
  });

  ExecutorMetricsDistributions.fromJson(core.Map json_)
    : this(
        diskBytesSpilled:
            (json_['diskBytesSpilled'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        failedTasks:
            (json_['failedTasks'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        inputBytes:
            (json_['inputBytes'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        inputRecords:
            (json_['inputRecords'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        killedTasks:
            (json_['killedTasks'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        memoryBytesSpilled:
            (json_['memoryBytesSpilled'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        outputBytes:
            (json_['outputBytes'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        outputRecords:
            (json_['outputRecords'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        peakMemoryMetrics:
            json_.containsKey('peakMemoryMetrics')
                ? ExecutorPeakMetricsDistributions.fromJson(
                  json_['peakMemoryMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantiles:
            (json_['quantiles'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        shuffleRead:
            (json_['shuffleRead'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        shuffleReadRecords:
            (json_['shuffleReadRecords'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        shuffleWrite:
            (json_['shuffleWrite'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        shuffleWriteRecords:
            (json_['shuffleWriteRecords'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        succeededTasks:
            (json_['succeededTasks'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        taskTimeMillis:
            (json_['taskTimeMillis'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (diskBytesSpilled != null) 'diskBytesSpilled': diskBytesSpilled!,
    if (failedTasks != null) 'failedTasks': failedTasks!,
    if (inputBytes != null) 'inputBytes': inputBytes!,
    if (inputRecords != null) 'inputRecords': inputRecords!,
    if (killedTasks != null) 'killedTasks': killedTasks!,
    if (memoryBytesSpilled != null) 'memoryBytesSpilled': memoryBytesSpilled!,
    if (outputBytes != null) 'outputBytes': outputBytes!,
    if (outputRecords != null) 'outputRecords': outputRecords!,
    if (peakMemoryMetrics != null) 'peakMemoryMetrics': peakMemoryMetrics!,
    if (quantiles != null) 'quantiles': quantiles!,
    if (shuffleRead != null) 'shuffleRead': shuffleRead!,
    if (shuffleReadRecords != null) 'shuffleReadRecords': shuffleReadRecords!,
    if (shuffleWrite != null) 'shuffleWrite': shuffleWrite!,
    if (shuffleWriteRecords != null)
      'shuffleWriteRecords': shuffleWriteRecords!,
    if (succeededTasks != null) 'succeededTasks': succeededTasks!,
    if (taskTimeMillis != null) 'taskTimeMillis': taskTimeMillis!,
  };
}

class ExecutorPeakMetricsDistributions {
  core.List<ExecutorMetrics>? executorMetrics;
  core.List<core.double>? quantiles;

  ExecutorPeakMetricsDistributions({this.executorMetrics, this.quantiles});

  ExecutorPeakMetricsDistributions.fromJson(core.Map json_)
    : this(
        executorMetrics:
            (json_['executorMetrics'] as core.List?)
                ?.map(
                  (value) => ExecutorMetrics.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        quantiles:
            (json_['quantiles'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executorMetrics != null) 'executorMetrics': executorMetrics!,
    if (quantiles != null) 'quantiles': quantiles!,
  };
}

/// Resources used per executor used by the application.
class ExecutorResourceRequest {
  core.String? amount;
  core.String? discoveryScript;
  core.String? resourceName;
  core.String? vendor;

  ExecutorResourceRequest({
    this.amount,
    this.discoveryScript,
    this.resourceName,
    this.vendor,
  });

  ExecutorResourceRequest.fromJson(core.Map json_)
    : this(
        amount: json_['amount'] as core.String?,
        discoveryScript: json_['discoveryScript'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        vendor: json_['vendor'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (amount != null) 'amount': amount!,
    if (discoveryScript != null) 'discoveryScript': discoveryScript!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (vendor != null) 'vendor': vendor!,
  };
}

/// Executor resources consumed by a stage.
class ExecutorStageSummary {
  core.String? diskBytesSpilled;
  core.String? executorId;
  core.int? failedTasks;
  core.String? inputBytes;
  core.String? inputRecords;
  core.bool? isExcludedForStage;
  core.int? killedTasks;
  core.String? memoryBytesSpilled;
  core.String? outputBytes;
  core.String? outputRecords;
  ExecutorMetrics? peakMemoryMetrics;
  core.String? shuffleRead;
  core.String? shuffleReadRecords;
  core.String? shuffleWrite;
  core.String? shuffleWriteRecords;
  core.int? stageAttemptId;
  core.String? stageId;
  core.int? succeededTasks;
  core.String? taskTimeMillis;

  ExecutorStageSummary({
    this.diskBytesSpilled,
    this.executorId,
    this.failedTasks,
    this.inputBytes,
    this.inputRecords,
    this.isExcludedForStage,
    this.killedTasks,
    this.memoryBytesSpilled,
    this.outputBytes,
    this.outputRecords,
    this.peakMemoryMetrics,
    this.shuffleRead,
    this.shuffleReadRecords,
    this.shuffleWrite,
    this.shuffleWriteRecords,
    this.stageAttemptId,
    this.stageId,
    this.succeededTasks,
    this.taskTimeMillis,
  });

  ExecutorStageSummary.fromJson(core.Map json_)
    : this(
        diskBytesSpilled: json_['diskBytesSpilled'] as core.String?,
        executorId: json_['executorId'] as core.String?,
        failedTasks: json_['failedTasks'] as core.int?,
        inputBytes: json_['inputBytes'] as core.String?,
        inputRecords: json_['inputRecords'] as core.String?,
        isExcludedForStage: json_['isExcludedForStage'] as core.bool?,
        killedTasks: json_['killedTasks'] as core.int?,
        memoryBytesSpilled: json_['memoryBytesSpilled'] as core.String?,
        outputBytes: json_['outputBytes'] as core.String?,
        outputRecords: json_['outputRecords'] as core.String?,
        peakMemoryMetrics:
            json_.containsKey('peakMemoryMetrics')
                ? ExecutorMetrics.fromJson(
                  json_['peakMemoryMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        shuffleRead: json_['shuffleRead'] as core.String?,
        shuffleReadRecords: json_['shuffleReadRecords'] as core.String?,
        shuffleWrite: json_['shuffleWrite'] as core.String?,
        shuffleWriteRecords: json_['shuffleWriteRecords'] as core.String?,
        stageAttemptId: json_['stageAttemptId'] as core.int?,
        stageId: json_['stageId'] as core.String?,
        succeededTasks: json_['succeededTasks'] as core.int?,
        taskTimeMillis: json_['taskTimeMillis'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (diskBytesSpilled != null) 'diskBytesSpilled': diskBytesSpilled!,
    if (executorId != null) 'executorId': executorId!,
    if (failedTasks != null) 'failedTasks': failedTasks!,
    if (inputBytes != null) 'inputBytes': inputBytes!,
    if (inputRecords != null) 'inputRecords': inputRecords!,
    if (isExcludedForStage != null) 'isExcludedForStage': isExcludedForStage!,
    if (killedTasks != null) 'killedTasks': killedTasks!,
    if (memoryBytesSpilled != null) 'memoryBytesSpilled': memoryBytesSpilled!,
    if (outputBytes != null) 'outputBytes': outputBytes!,
    if (outputRecords != null) 'outputRecords': outputRecords!,
    if (peakMemoryMetrics != null) 'peakMemoryMetrics': peakMemoryMetrics!,
    if (shuffleRead != null) 'shuffleRead': shuffleRead!,
    if (shuffleReadRecords != null) 'shuffleReadRecords': shuffleReadRecords!,
    if (shuffleWrite != null) 'shuffleWrite': shuffleWrite!,
    if (shuffleWriteRecords != null)
      'shuffleWriteRecords': shuffleWriteRecords!,
    if (stageAttemptId != null) 'stageAttemptId': stageAttemptId!,
    if (stageId != null) 'stageId': stageId!,
    if (succeededTasks != null) 'succeededTasks': succeededTasks!,
    if (taskTimeMillis != null) 'taskTimeMillis': taskTimeMillis!,
  };
}

/// Details about executors used by the application.
class ExecutorSummary {
  core.int? activeTasks;
  core.String? addTime;
  core.Map<core.String, core.String>? attributes;
  core.int? completedTasks;
  core.String? diskUsed;
  core.List<core.String>? excludedInStages;
  core.String? executorId;
  core.Map<core.String, core.String>? executorLogs;
  core.int? failedTasks;
  core.String? hostPort;
  core.bool? isActive;
  core.bool? isExcluded;
  core.String? maxMemory;
  core.int? maxTasks;
  MemoryMetrics? memoryMetrics;
  core.String? memoryUsed;
  ExecutorMetrics? peakMemoryMetrics;
  core.int? rddBlocks;
  core.String? removeReason;
  core.String? removeTime;
  core.int? resourceProfileId;
  core.Map<core.String, ResourceInformation>? resources;
  core.int? totalCores;
  core.String? totalDurationMillis;
  core.String? totalGcTimeMillis;
  core.String? totalInputBytes;
  core.String? totalShuffleRead;
  core.String? totalShuffleWrite;
  core.int? totalTasks;

  ExecutorSummary({
    this.activeTasks,
    this.addTime,
    this.attributes,
    this.completedTasks,
    this.diskUsed,
    this.excludedInStages,
    this.executorId,
    this.executorLogs,
    this.failedTasks,
    this.hostPort,
    this.isActive,
    this.isExcluded,
    this.maxMemory,
    this.maxTasks,
    this.memoryMetrics,
    this.memoryUsed,
    this.peakMemoryMetrics,
    this.rddBlocks,
    this.removeReason,
    this.removeTime,
    this.resourceProfileId,
    this.resources,
    this.totalCores,
    this.totalDurationMillis,
    this.totalGcTimeMillis,
    this.totalInputBytes,
    this.totalShuffleRead,
    this.totalShuffleWrite,
    this.totalTasks,
  });

  ExecutorSummary.fromJson(core.Map json_)
    : this(
        activeTasks: json_['activeTasks'] as core.int?,
        addTime: json_['addTime'] as core.String?,
        attributes: (json_['attributes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        completedTasks: json_['completedTasks'] as core.int?,
        diskUsed: json_['diskUsed'] as core.String?,
        excludedInStages:
            (json_['excludedInStages'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        executorId: json_['executorId'] as core.String?,
        executorLogs: (json_['executorLogs']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        failedTasks: json_['failedTasks'] as core.int?,
        hostPort: json_['hostPort'] as core.String?,
        isActive: json_['isActive'] as core.bool?,
        isExcluded: json_['isExcluded'] as core.bool?,
        maxMemory: json_['maxMemory'] as core.String?,
        maxTasks: json_['maxTasks'] as core.int?,
        memoryMetrics:
            json_.containsKey('memoryMetrics')
                ? MemoryMetrics.fromJson(
                  json_['memoryMetrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryUsed: json_['memoryUsed'] as core.String?,
        peakMemoryMetrics:
            json_.containsKey('peakMemoryMetrics')
                ? ExecutorMetrics.fromJson(
                  json_['peakMemoryMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rddBlocks: json_['rddBlocks'] as core.int?,
        removeReason: json_['removeReason'] as core.String?,
        removeTime: json_['removeTime'] as core.String?,
        resourceProfileId: json_['resourceProfileId'] as core.int?,
        resources: (json_['resources'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ResourceInformation.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        totalCores: json_['totalCores'] as core.int?,
        totalDurationMillis: json_['totalDurationMillis'] as core.String?,
        totalGcTimeMillis: json_['totalGcTimeMillis'] as core.String?,
        totalInputBytes: json_['totalInputBytes'] as core.String?,
        totalShuffleRead: json_['totalShuffleRead'] as core.String?,
        totalShuffleWrite: json_['totalShuffleWrite'] as core.String?,
        totalTasks: json_['totalTasks'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeTasks != null) 'activeTasks': activeTasks!,
    if (addTime != null) 'addTime': addTime!,
    if (attributes != null) 'attributes': attributes!,
    if (completedTasks != null) 'completedTasks': completedTasks!,
    if (diskUsed != null) 'diskUsed': diskUsed!,
    if (excludedInStages != null) 'excludedInStages': excludedInStages!,
    if (executorId != null) 'executorId': executorId!,
    if (executorLogs != null) 'executorLogs': executorLogs!,
    if (failedTasks != null) 'failedTasks': failedTasks!,
    if (hostPort != null) 'hostPort': hostPort!,
    if (isActive != null) 'isActive': isActive!,
    if (isExcluded != null) 'isExcluded': isExcluded!,
    if (maxMemory != null) 'maxMemory': maxMemory!,
    if (maxTasks != null) 'maxTasks': maxTasks!,
    if (memoryMetrics != null) 'memoryMetrics': memoryMetrics!,
    if (memoryUsed != null) 'memoryUsed': memoryUsed!,
    if (peakMemoryMetrics != null) 'peakMemoryMetrics': peakMemoryMetrics!,
    if (rddBlocks != null) 'rddBlocks': rddBlocks!,
    if (removeReason != null) 'removeReason': removeReason!,
    if (removeTime != null) 'removeTime': removeTime!,
    if (resourceProfileId != null) 'resourceProfileId': resourceProfileId!,
    if (resources != null) 'resources': resources!,
    if (totalCores != null) 'totalCores': totalCores!,
    if (totalDurationMillis != null)
      'totalDurationMillis': totalDurationMillis!,
    if (totalGcTimeMillis != null) 'totalGcTimeMillis': totalGcTimeMillis!,
    if (totalInputBytes != null) 'totalInputBytes': totalInputBytes!,
    if (totalShuffleRead != null) 'totalShuffleRead': totalShuffleRead!,
    if (totalShuffleWrite != null) 'totalShuffleWrite': totalShuffleWrite!,
    if (totalTasks != null) 'totalTasks': totalTasks!,
  };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec.Example (Comparison):
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

/// Native SQL Execution Data
class FallbackReason {
  /// Fallback node information.
  ///
  /// Optional.
  core.String? fallbackNode;

  /// Fallback to Spark reason.
  ///
  /// Optional.
  core.String? fallbackReason;

  FallbackReason({this.fallbackNode, this.fallbackReason});

  FallbackReason.fromJson(core.Map json_)
    : this(
        fallbackNode: json_['fallbackNode'] as core.String?,
        fallbackReason: json_['fallbackReason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fallbackNode != null) 'fallbackNode': fallbackNode!,
    if (fallbackReason != null) 'fallbackReason': fallbackReason!,
  };
}

/// A Dataproc job for running Apache Flink applications on YARN.
class FlinkJob {
  /// The arguments to pass to the driver.
  ///
  /// Do not include arguments, such as --conf, that can be set as job
  /// properties, since a collision might occur that causes an incorrect job
  /// submission.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver and
  /// tasks.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// The name of the driver's main class.
  ///
  /// The jar file that contains the class must be in the default CLASSPATH or
  /// specified in jarFileUris.
  core.String? mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  core.String? mainJarFileUri;

  /// A mapping of property names to values, used to configure Flink.
  ///
  /// Properties that conflict with values set by the Dataproc API might be
  /// overwritten. Can include properties set in
  /// /etc/flink/conf/flink-defaults.conf and classes in user code.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// HCFS URI of the savepoint, which contains the last saved progress for
  /// starting the current job.
  ///
  /// Optional.
  core.String? savepointUri;

  FlinkJob({
    this.args,
    this.jarFileUris,
    this.loggingConfig,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
    this.savepointUri,
  });

  FlinkJob.fromJson(core.Map json_)
    : this(
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mainClass: json_['mainClass'] as core.String?,
        mainJarFileUri: json_['mainJarFileUri'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        savepointUri: json_['savepointUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (args != null) 'args': args!,
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (mainClass != null) 'mainClass': mainClass!,
    if (mainJarFileUri != null) 'mainJarFileUri': mainJarFileUri!,
    if (properties != null) 'properties': properties!,
    if (savepointUri != null) 'savepointUri': savepointUri!,
  };
}

/// Common config settings for resources of Compute Engine cluster instances,
/// applicable to all instances in the cluster.
class GceClusterConfig {
  /// Confidential Instance Config for clusters using Confidential VMs
  /// (https://cloud.google.com/compute/confidential-vm/docs).
  ///
  /// Optional.
  ConfidentialInstanceConfig? confidentialInstanceConfig;

  /// This setting applies to subnetwork-enabled networks.
  ///
  /// It is set to true by default in clusters created with image versions
  /// 2.2.x.When set to true: All cluster VMs have internal IP addresses. Google
  /// Private Access (https://cloud.google.com/vpc/docs/private-google-access)
  /// must be enabled to access Dataproc and other Google Cloud APIs.
  /// Off-cluster dependencies must be configured to be accessible without
  /// external IP addresses.When set to false: Cluster VMs are not restricted to
  /// internal IP addresses. Ephemeral external IP addresses are assigned to
  /// each cluster VM.
  ///
  /// Optional.
  core.bool? internalIpOnly;

  /// The Compute Engine metadata entries to add to all instances (see Project
  /// and instance metadata
  /// (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// The Compute Engine network to be used for machine communications.
  ///
  /// Cannot be specified with subnetwork_uri. If neither network_uri nor
  /// subnetwork_uri is specified, the "default" network of the project is used,
  /// if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks
  /// (https://cloud.google.com/compute/docs/subnetworks) for more
  /// information).A full URL, partial URI, or short name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/global/networks/default
  /// projects/\[project_id\]/global/networks/default default
  ///
  /// Optional.
  core.String? networkUri;

  /// Node Group Affinity for sole-tenant clusters.
  ///
  /// Optional.
  NodeGroupAffinity? nodeGroupAffinity;

  /// The type of IPv6 access for a cluster.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED" : If unspecified, Compute
  /// Engine default behavior will apply, which is the same as
  /// INHERIT_FROM_SUBNETWORK.
  /// - "INHERIT_FROM_SUBNETWORK" : Private access to and from Google Services
  /// configuration inherited from the subnetwork configuration. This is the
  /// default Compute Engine behavior.
  /// - "OUTBOUND" : Enables outbound private IPv6 access to Google Services
  /// from the Dataproc cluster.
  /// - "BIDIRECTIONAL" : Enables bidirectional private IPv6 access between
  /// Google Services and the Dataproc cluster.
  core.String? privateIpv6GoogleAccess;

  /// Reservation Affinity for consuming Zonal reservation.
  ///
  /// Optional.
  ReservationAffinity? reservationAffinity;

  /// Resource manager tags
  /// (https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
  /// to add to all instances (see Use secure tags in Dataproc
  /// (https://cloud.google.com/dataproc/docs/guides/attach-secure-tags)).
  ///
  /// Optional.
  core.Map<core.String, core.String>? resourceManagerTags;

  /// The Dataproc service account
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc)
  /// (also see VM Data Plane identity
  /// (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity))
  /// used by Dataproc cluster VM instances to access Google Cloud Platform
  /// services.If not specified, the Compute Engine default service account
  /// (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account)
  /// is used.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// The URIs of service account scopes to be included in Compute Engine
  /// instances.
  ///
  /// The following base set of scopes is always included:
  /// https://www.googleapis.com/auth/cloud.useraccounts.readonly
  /// https://www.googleapis.com/auth/devstorage.read_write
  /// https://www.googleapis.com/auth/logging.writeIf no scopes are specified,
  /// the following defaults are also provided:
  /// https://www.googleapis.com/auth/bigquery
  /// https://www.googleapis.com/auth/bigtable.admin.table
  /// https://www.googleapis.com/auth/bigtable.data
  /// https://www.googleapis.com/auth/devstorage.full_control
  ///
  /// Optional.
  core.List<core.String>? serviceAccountScopes;

  /// Shielded Instance Config for clusters using Compute Engine Shielded VMs
  /// (https://cloud.google.com/security/shielded-cloud/shielded-vm).
  ///
  /// Optional.
  ShieldedInstanceConfig? shieldedInstanceConfig;

  /// The Compute Engine subnetwork to be used for machine communications.
  ///
  /// Cannot be specified with network_uri.A full URL, partial URI, or short
  /// name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/regions/\[region\]/subnetworks/sub0
  /// projects/\[project_id\]/regions/\[region\]/subnetworks/sub0 sub0
  ///
  /// Optional.
  core.String? subnetworkUri;

  /// The Compute Engine network tags to add to all instances (see Tagging
  /// instances (https://cloud.google.com/vpc/docs/add-remove-network-tags)).
  core.List<core.String>? tags;

  /// The Compute Engine zone where the Dataproc cluster will be located.
  ///
  /// If omitted, the service will pick a zone in the cluster's Compute Engine
  /// region. On a get request, zone will always be present.A full URL, partial
  /// URI, or short name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/zones/\[zone\]
  /// projects/\[project_id\]/zones/\[zone\] \[zone\]
  ///
  /// Optional.
  core.String? zoneUri;

  GceClusterConfig({
    this.confidentialInstanceConfig,
    this.internalIpOnly,
    this.metadata,
    this.networkUri,
    this.nodeGroupAffinity,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnetworkUri,
    this.tags,
    this.zoneUri,
  });

  GceClusterConfig.fromJson(core.Map json_)
    : this(
        confidentialInstanceConfig:
            json_.containsKey('confidentialInstanceConfig')
                ? ConfidentialInstanceConfig.fromJson(
                  json_['confidentialInstanceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        internalIpOnly: json_['internalIpOnly'] as core.bool?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        networkUri: json_['networkUri'] as core.String?,
        nodeGroupAffinity:
            json_.containsKey('nodeGroupAffinity')
                ? NodeGroupAffinity.fromJson(
                  json_['nodeGroupAffinity']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        privateIpv6GoogleAccess:
            json_['privateIpv6GoogleAccess'] as core.String?,
        reservationAffinity:
            json_.containsKey('reservationAffinity')
                ? ReservationAffinity.fromJson(
                  json_['reservationAffinity']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceManagerTags: (json_['resourceManagerTags']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceAccountScopes:
            (json_['serviceAccountScopes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        shieldedInstanceConfig:
            json_.containsKey('shieldedInstanceConfig')
                ? ShieldedInstanceConfig.fromJson(
                  json_['shieldedInstanceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        subnetworkUri: json_['subnetworkUri'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        zoneUri: json_['zoneUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (confidentialInstanceConfig != null)
      'confidentialInstanceConfig': confidentialInstanceConfig!,
    if (internalIpOnly != null) 'internalIpOnly': internalIpOnly!,
    if (metadata != null) 'metadata': metadata!,
    if (networkUri != null) 'networkUri': networkUri!,
    if (nodeGroupAffinity != null) 'nodeGroupAffinity': nodeGroupAffinity!,
    if (privateIpv6GoogleAccess != null)
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess!,
    if (reservationAffinity != null)
      'reservationAffinity': reservationAffinity!,
    if (resourceManagerTags != null)
      'resourceManagerTags': resourceManagerTags!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceAccountScopes != null)
      'serviceAccountScopes': serviceAccountScopes!,
    if (shieldedInstanceConfig != null)
      'shieldedInstanceConfig': shieldedInstanceConfig!,
    if (subnetworkUri != null) 'subnetworkUri': subnetworkUri!,
    if (tags != null) 'tags': tags!,
    if (zoneUri != null) 'zoneUri': zoneUri!,
  };
}

/// Request message for GetIamPolicy method.
class GetIamPolicyRequest {
  /// OPTIONAL: A GetPolicyOptions object for specifying options to
  /// GetIamPolicy.
  GetPolicyOptions? options;

  GetIamPolicyRequest({this.options});

  GetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        options:
            json_.containsKey('options')
                ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (options != null) 'options': options!,
  };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions01;

/// The cluster's GKE config.
class GkeClusterConfig {
  /// A target GKE cluster to deploy to.
  ///
  /// It must be in the same project and region as the Dataproc cluster (the GKE
  /// cluster can be zonal or regional). Format:
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  ///
  /// Optional.
  core.String? gkeClusterTarget;

  /// Use gkeClusterTarget.
  ///
  /// Used only for the deprecated beta. A target for the deployment.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  NamespacedGkeDeploymentTarget? namespacedGkeDeploymentTarget;

  /// GKE node pools where workloads will be scheduled.
  ///
  /// At least one node pool must be assigned the DEFAULT
  /// GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc
  /// constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one
  /// GkeNodePoolTarget. All node pools must have the same location settings.
  ///
  /// Optional.
  core.List<GkeNodePoolTarget>? nodePoolTarget;

  GkeClusterConfig({
    this.gkeClusterTarget,
    this.namespacedGkeDeploymentTarget,
    this.nodePoolTarget,
  });

  GkeClusterConfig.fromJson(core.Map json_)
    : this(
        gkeClusterTarget: json_['gkeClusterTarget'] as core.String?,
        namespacedGkeDeploymentTarget:
            json_.containsKey('namespacedGkeDeploymentTarget')
                ? NamespacedGkeDeploymentTarget.fromJson(
                  json_['namespacedGkeDeploymentTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        nodePoolTarget:
            (json_['nodePoolTarget'] as core.List?)
                ?.map(
                  (value) => GkeNodePoolTarget.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gkeClusterTarget != null) 'gkeClusterTarget': gkeClusterTarget!,
    if (namespacedGkeDeploymentTarget != null)
      'namespacedGkeDeploymentTarget': namespacedGkeDeploymentTarget!,
    if (nodePoolTarget != null) 'nodePoolTarget': nodePoolTarget!,
  };
}

/// Parameters that describe cluster nodes.
class GkeNodeConfig {
  /// A list of hardware accelerators
  /// (https://cloud.google.com/compute/docs/gpus) to attach to each node.
  ///
  /// Optional.
  core.List<GkeNodePoolAcceleratorConfig>? accelerators;

  /// The Customer Managed Encryption Key (CMEK)
  /// (https://cloud.google.com/kubernetes-engine/docs/how-to/using-cmek) used
  /// to encrypt the boot disk attached to each node in the node pool.
  ///
  /// Specify the key using the following format:
  /// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}
  ///
  /// Optional.
  core.String? bootDiskKmsKey;

  /// The number of local SSD disks to attach to the node, which is limited by
  /// the maximum number of disks allowable per zone (see Adding Local SSDs
  /// (https://cloud.google.com/compute/docs/disks/local-ssd)).
  ///
  /// Optional.
  core.int? localSsdCount;

  /// The name of a Compute Engine machine type
  /// (https://cloud.google.com/compute/docs/machine-types).
  ///
  /// Optional.
  core.String? machineType;

  /// Minimum CPU platform
  /// (https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// to be used by this instance.
  ///
  /// The instance may be scheduled on the specified or a newer CPU platform.
  /// Specify the friendly names of CPU platforms, such as "Intel Haswell"\` or
  /// Intel Sandy Bridge".
  ///
  /// Optional.
  core.String? minCpuPlatform;

  /// Whether the nodes are created as legacy preemptible VM instances
  /// (https://cloud.google.com/compute/docs/instances/preemptible).
  ///
  /// Also see Spot VMs, preemptible VM instances without a maximum lifetime.
  /// Legacy and Spot preemptible nodes cannot be used in a node pool with the
  /// CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not
  /// assigned (the DEFAULT node pool will assume the CONTROLLER role).
  ///
  /// Optional.
  core.bool? preemptible;

  /// Whether the nodes are created as Spot VM instances
  /// (https://cloud.google.com/compute/docs/instances/spot).
  ///
  /// Spot VMs are the latest update to legacy preemptible VMs. Spot VMs do not
  /// have a maximum lifetime. Legacy and Spot preemptible nodes cannot be used
  /// in a node pool with the CONTROLLER role or in the DEFAULT node pool if the
  /// CONTROLLER role is not assigned (the DEFAULT node pool will assume the
  /// CONTROLLER role).
  ///
  /// Optional.
  core.bool? spot;

  GkeNodeConfig({
    this.accelerators,
    this.bootDiskKmsKey,
    this.localSsdCount,
    this.machineType,
    this.minCpuPlatform,
    this.preemptible,
    this.spot,
  });

  GkeNodeConfig.fromJson(core.Map json_)
    : this(
        accelerators:
            (json_['accelerators'] as core.List?)
                ?.map(
                  (value) => GkeNodePoolAcceleratorConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        bootDiskKmsKey: json_['bootDiskKmsKey'] as core.String?,
        localSsdCount: json_['localSsdCount'] as core.int?,
        machineType: json_['machineType'] as core.String?,
        minCpuPlatform: json_['minCpuPlatform'] as core.String?,
        preemptible: json_['preemptible'] as core.bool?,
        spot: json_['spot'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accelerators != null) 'accelerators': accelerators!,
    if (bootDiskKmsKey != null) 'bootDiskKmsKey': bootDiskKmsKey!,
    if (localSsdCount != null) 'localSsdCount': localSsdCount!,
    if (machineType != null) 'machineType': machineType!,
    if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
    if (preemptible != null) 'preemptible': preemptible!,
    if (spot != null) 'spot': spot!,
  };
}

/// A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request
/// for a node pool.
class GkeNodePoolAcceleratorConfig {
  /// The number of accelerator cards exposed to an instance.
  core.String? acceleratorCount;

  /// The accelerator type resource namename (see GPUs on Compute Engine).
  core.String? acceleratorType;

  /// Size of partitions to create on the GPU.
  ///
  /// Valid values are described in the NVIDIA mig user guide
  /// (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  core.String? gpuPartitionSize;

  GkeNodePoolAcceleratorConfig({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuPartitionSize,
  });

  GkeNodePoolAcceleratorConfig.fromJson(core.Map json_)
    : this(
        acceleratorCount: json_['acceleratorCount'] as core.String?,
        acceleratorType: json_['acceleratorType'] as core.String?,
        gpuPartitionSize: json_['gpuPartitionSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acceleratorCount != null) 'acceleratorCount': acceleratorCount!,
    if (acceleratorType != null) 'acceleratorType': acceleratorType!,
    if (gpuPartitionSize != null) 'gpuPartitionSize': gpuPartitionSize!,
  };
}

/// GkeNodePoolAutoscaling contains information the cluster autoscaler needs to
/// adjust the size of the node pool to the current cluster usage.
class GkeNodePoolAutoscalingConfig {
  /// The maximum number of nodes in the node pool.
  ///
  /// Must be \>= min_node_count, and must be \> 0. Note: Quota must be
  /// sufficient to scale up the cluster.
  core.int? maxNodeCount;

  /// The minimum number of nodes in the node pool.
  ///
  /// Must be \>= 0 and \<= max_node_count.
  core.int? minNodeCount;

  GkeNodePoolAutoscalingConfig({this.maxNodeCount, this.minNodeCount});

  GkeNodePoolAutoscalingConfig.fromJson(core.Map json_)
    : this(
        maxNodeCount: json_['maxNodeCount'] as core.int?,
        minNodeCount: json_['minNodeCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxNodeCount != null) 'maxNodeCount': maxNodeCount!,
    if (minNodeCount != null) 'minNodeCount': minNodeCount!,
  };
}

/// The configuration of a GKE node pool used by a Dataproc-on-GKE cluster
/// (https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).
class GkeNodePoolConfig {
  /// The autoscaler configuration for this node pool.
  ///
  /// The autoscaler is enabled only when a valid configuration is present.
  ///
  /// Optional.
  GkeNodePoolAutoscalingConfig? autoscaling;

  /// The node pool configuration.
  ///
  /// Optional.
  GkeNodeConfig? config;

  /// The list of Compute Engine zones
  /// (https://cloud.google.com/compute/docs/zones#available) where node pool
  /// nodes associated with a Dataproc on GKE virtual cluster will be
  /// located.Note: All node pools associated with a virtual cluster must be
  /// located in the same region as the virtual cluster, and they must be
  /// located in the same zone within that region.If a location is not specified
  /// during node pool creation, Dataproc on GKE will choose the zone.
  ///
  /// Optional.
  core.List<core.String>? locations;

  GkeNodePoolConfig({this.autoscaling, this.config, this.locations});

  GkeNodePoolConfig.fromJson(core.Map json_)
    : this(
        autoscaling:
            json_.containsKey('autoscaling')
                ? GkeNodePoolAutoscalingConfig.fromJson(
                  json_['autoscaling'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        config:
            json_.containsKey('config')
                ? GkeNodeConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        locations:
            (json_['locations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoscaling != null) 'autoscaling': autoscaling!,
    if (config != null) 'config': config!,
    if (locations != null) 'locations': locations!,
  };
}

/// GKE node pools that Dataproc workloads run on.
class GkeNodePoolTarget {
  /// The target GKE node pool.
  ///
  /// Format:
  /// 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{node_pool}'
  ///
  /// Required.
  core.String? nodePool;

  /// Input only.
  ///
  /// The configuration for the GKE node pool.If specified, Dataproc attempts to
  /// create a node pool with the specified shape. If one with the same name
  /// already exists, it is verified against all specified fields. If a field
  /// differs, the virtual cluster creation will fail.If omitted, any node pool
  /// with the specified name is used. If a node pool with the specified name
  /// does not exist, Dataproc create a node pool with default values.This is an
  /// input only field. It will not be returned by the API.
  GkeNodePoolConfig? nodePoolConfig;

  /// The roles associated with the GKE node pool.
  ///
  /// Required.
  core.List<core.String>? roles;

  GkeNodePoolTarget({this.nodePool, this.nodePoolConfig, this.roles});

  GkeNodePoolTarget.fromJson(core.Map json_)
    : this(
        nodePool: json_['nodePool'] as core.String?,
        nodePoolConfig:
            json_.containsKey('nodePoolConfig')
                ? GkeNodePoolConfig.fromJson(
                  json_['nodePoolConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        roles:
            (json_['roles'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nodePool != null) 'nodePool': nodePool!,
    if (nodePoolConfig != null) 'nodePoolConfig': nodePoolConfig!,
    if (roles != null) 'roles': roles!,
  };
}

/// Encryption settings for encrypting workflow template job arguments.
class GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig {
  /// The Cloud KMS key name to use for encrypting workflow template job
  /// arguments.When this this key is provided, the following workflow template
  /// job arguments
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/use-workflows#adding_jobs_to_a_template),
  /// if present, are CMEK encrypted
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/customer-managed-encryption#use_cmek_with_workflow_template_data):
  /// FlinkJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/FlinkJob)
  /// HadoopJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/HadoopJob)
  /// SparkJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkJob)
  /// SparkRJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkRJob)
  /// PySparkJob args
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/PySparkJob)
  /// SparkSqlJob
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/SparkSqlJob)
  /// scriptVariables and queryList.queries HiveJob
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/HiveJob)
  /// scriptVariables and queryList.queries PigJob
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/PigJob)
  /// scriptVariables and queryList.queries PrestoJob
  /// (https://cloud.google.com/dataproc/docs/reference/rest/v1/PrestoJob)
  /// scriptVariables and queryList.queries
  ///
  /// Optional.
  core.String? kmsKey;

  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig({this.kmsKey});

  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig.fromJson(core.Map json_)
    : this(kmsKey: json_['kmsKey'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsKey != null) 'kmsKey': kmsKey!,
  };
}

/// A Dataproc job for running Apache Hadoop MapReduce
/// (https://hadoop.apache.org/docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html)
/// jobs on Apache Hadoop YARN
/// (https://hadoop.apache.org/docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).
class HadoopJob {
  /// HCFS URIs of archives to be extracted in the working directory of Hadoop
  /// drivers and tasks.
  ///
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip.
  ///
  /// Optional.
  core.List<core.String>? archiveUris;

  /// The arguments to pass to the driver.
  ///
  /// Do not include arguments, such as -libjars or -Dfoo=bar, that can be set
  /// as job properties, since a collision might occur that causes an incorrect
  /// job submission.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the
  /// working directory of Hadoop drivers and distributed tasks.
  ///
  /// Useful for naively parallel tasks.
  ///
  /// Optional.
  core.List<core.String>? fileUris;

  /// Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// The name of the driver's main class.
  ///
  /// The jar file containing the class must be in the default CLASSPATH or
  /// specified in jar_file_uris.
  core.String? mainClass;

  /// The HCFS URI of the jar file containing the main class.
  ///
  /// Examples:
  /// 'gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar'
  /// 'hdfs:/tmp/test-samples/custom-wordcount.jar'
  /// 'file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar'
  core.String? mainJarFileUri;

  /// A mapping of property names to values, used to configure Hadoop.
  ///
  /// Properties that conflict with values set by the Dataproc API might be
  /// overwritten. Can include properties set in /etc/hadoop/conf / * -site and
  /// classes in user code.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  HadoopJob({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.loggingConfig,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
  });

  HadoopJob.fromJson(core.Map json_)
    : this(
        archiveUris:
            (json_['archiveUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fileUris:
            (json_['fileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mainClass: json_['mainClass'] as core.String?,
        mainJarFileUri: json_['mainJarFileUri'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveUris != null) 'archiveUris': archiveUris!,
    if (args != null) 'args': args!,
    if (fileUris != null) 'fileUris': fileUris!,
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (mainClass != null) 'mainClass': mainClass!,
    if (mainJarFileUri != null) 'mainJarFileUri': mainJarFileUri!,
    if (properties != null) 'properties': properties!,
  };
}

/// A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on
/// YARN.
class HiveJob {
  /// Whether to continue executing queries if a query fails.
  ///
  /// The default value is false. Setting to true can be useful when executing
  /// independent parallel queries.
  ///
  /// Optional.
  core.bool? continueOnFailure;

  /// HCFS URIs of jar files to add to the CLASSPATH of the Hive server and
  /// Hadoop MapReduce (MR) tasks.
  ///
  /// Can contain Hive SerDes and UDFs.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// A mapping of property names and values, used to configure Hive.
  ///
  /// Properties that conflict with values set by the Dataproc API might be
  /// overwritten. Can include properties set in /etc/hadoop/conf / * -site.xml,
  /// /etc/hive/conf/hive-site.xml, and classes in user code.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// The HCFS URI of the script that contains Hive queries.
  core.String? queryFileUri;

  /// A list of queries.
  QueryList? queryList;

  /// Mapping of query variable names to values (equivalent to the Hive command:
  /// SET name="value";).
  ///
  /// Optional.
  core.Map<core.String, core.String>? scriptVariables;

  HiveJob({
    this.continueOnFailure,
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  HiveJob.fromJson(core.Map json_)
    : this(
        continueOnFailure: json_['continueOnFailure'] as core.bool?,
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        queryFileUri: json_['queryFileUri'] as core.String?,
        queryList:
            json_.containsKey('queryList')
                ? QueryList.fromJson(
                  json_['queryList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        scriptVariables: (json_['scriptVariables']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (continueOnFailure != null) 'continueOnFailure': continueOnFailure!,
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (properties != null) 'properties': properties!,
    if (queryFileUri != null) 'queryFileUri': queryFileUri!,
    if (queryList != null) 'queryList': queryList!,
    if (scriptVariables != null) 'scriptVariables': scriptVariables!,
  };
}

/// Identity related configuration, including service account based secure
/// multi-tenancy user mappings.
class IdentityConfig {
  /// Map of user to service account.
  ///
  /// Required.
  core.Map<core.String, core.String>? userServiceAccountMapping;

  IdentityConfig({this.userServiceAccountMapping});

  IdentityConfig.fromJson(core.Map json_)
    : this(
        userServiceAccountMapping: (json_['userServiceAccountMapping']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (userServiceAccountMapping != null)
      'userServiceAccountMapping': userServiceAccountMapping!,
  };
}

/// A request to inject credentials into a cluster.
class InjectCredentialsRequest {
  /// The cluster UUID.
  ///
  /// Required.
  core.String? clusterUuid;

  /// The encrypted credentials being injected in to the cluster.The client is
  /// responsible for encrypting the credentials in a way that is supported by
  /// the cluster.A wrapped value is used here so that the actual contents of
  /// the encrypted credentials are not written to audit logs.
  ///
  /// Required.
  core.String? credentialsCiphertext;

  InjectCredentialsRequest({this.clusterUuid, this.credentialsCiphertext});

  InjectCredentialsRequest.fromJson(core.Map json_)
    : this(
        clusterUuid: json_['clusterUuid'] as core.String?,
        credentialsCiphertext: json_['credentialsCiphertext'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterUuid != null) 'clusterUuid': clusterUuid!,
    if (credentialsCiphertext != null)
      'credentialsCiphertext': credentialsCiphertext!,
  };
}

/// Metrics about the input data read by the task.
typedef InputMetrics = $InputMetrics;

class InputQuantileMetrics {
  Quantiles? bytesRead;
  Quantiles? recordsRead;

  InputQuantileMetrics({this.bytesRead, this.recordsRead});

  InputQuantileMetrics.fromJson(core.Map json_)
    : this(
        bytesRead:
            json_.containsKey('bytesRead')
                ? Quantiles.fromJson(
                  json_['bytesRead'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        recordsRead:
            json_.containsKey('recordsRead')
                ? Quantiles.fromJson(
                  json_['recordsRead'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bytesRead != null) 'bytesRead': bytesRead!,
    if (recordsRead != null) 'recordsRead': recordsRead!,
  };
}

/// Instance flexibility Policy allowing a mixture of VM shapes and provisioning
/// models.
class InstanceFlexibilityPolicy {
  /// List of instance selection options that the group will use when creating
  /// new VMs.
  ///
  /// Optional.
  core.List<InstanceSelection>? instanceSelectionList;

  /// A list of instance selection results in the group.
  ///
  /// Output only.
  core.List<InstanceSelectionResult>? instanceSelectionResults;

  /// Defines how the Group selects the provisioning model to ensure required
  /// reliability.
  ///
  /// Optional.
  ProvisioningModelMix? provisioningModelMix;

  InstanceFlexibilityPolicy({
    this.instanceSelectionList,
    this.instanceSelectionResults,
    this.provisioningModelMix,
  });

  InstanceFlexibilityPolicy.fromJson(core.Map json_)
    : this(
        instanceSelectionList:
            (json_['instanceSelectionList'] as core.List?)
                ?.map(
                  (value) => InstanceSelection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        instanceSelectionResults:
            (json_['instanceSelectionResults'] as core.List?)
                ?.map(
                  (value) => InstanceSelectionResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        provisioningModelMix:
            json_.containsKey('provisioningModelMix')
                ? ProvisioningModelMix.fromJson(
                  json_['provisioningModelMix']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (instanceSelectionList != null)
      'instanceSelectionList': instanceSelectionList!,
    if (instanceSelectionResults != null)
      'instanceSelectionResults': instanceSelectionResults!,
    if (provisioningModelMix != null)
      'provisioningModelMix': provisioningModelMix!,
  };
}

/// Configuration for the size bounds of an instance group, including its
/// proportional size to other groups.
class InstanceGroupAutoscalingPolicyConfig {
  /// Maximum number of instances for this group.
  ///
  /// Required for primary workers. Note that by default, clusters will not use
  /// secondary workers. Required for secondary workers if the minimum secondary
  /// instances is set.Primary workers - Bounds: \[min_instances, ). Secondary
  /// workers - Bounds: \[min_instances, ). Default: 0.
  ///
  /// Required.
  core.int? maxInstances;

  /// Minimum number of instances for this group.Primary workers - Bounds: 2,
  /// max_instances.
  ///
  /// Default: 2. Secondary workers - Bounds: 0, max_instances. Default: 0.
  ///
  /// Optional.
  core.int? minInstances;

  /// Weight for the instance group, which is used to determine the fraction of
  /// total workers in the cluster from this instance group.
  ///
  /// For example, if primary workers have weight 2, and secondary workers have
  /// weight 1, the cluster will have approximately 2 primary workers for each
  /// secondary worker.The cluster may not reach the specified balance if
  /// constrained by min/max bounds or other autoscaling settings. For example,
  /// if max_instances for secondary workers is 0, then only primary workers
  /// will be added. The cluster can also be out of balance when created.If
  /// weight is not set on any instance group, the cluster will default to equal
  /// weight for all groups: the cluster will attempt to maintain an equal
  /// number of workers in each group within the configured size bounds for each
  /// group. If weight is set for one group only, the cluster will default to
  /// zero weight on the unset group. For example if weight is set only on
  /// primary workers, the cluster will use primary workers only and no
  /// secondary workers.
  ///
  /// Optional.
  core.int? weight;

  InstanceGroupAutoscalingPolicyConfig({
    this.maxInstances,
    this.minInstances,
    this.weight,
  });

  InstanceGroupAutoscalingPolicyConfig.fromJson(core.Map json_)
    : this(
        maxInstances: json_['maxInstances'] as core.int?,
        minInstances: json_['minInstances'] as core.int?,
        weight: json_['weight'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxInstances != null) 'maxInstances': maxInstances!,
    if (minInstances != null) 'minInstances': minInstances!,
    if (weight != null) 'weight': weight!,
  };
}

/// The config settings for Compute Engine resources in an instance group, such
/// as a master or worker group.
class InstanceGroupConfig {
  /// The Compute Engine accelerator configuration for these instances.
  ///
  /// Optional.
  core.List<AcceleratorConfig>? accelerators;

  /// Disk option config settings.
  ///
  /// Optional.
  DiskConfig? diskConfig;

  /// The Compute Engine image resource used for cluster instances.The URI can
  /// represent an image or image family.Image examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/global/images/\[image-id\]
  /// projects/\[project_id\]/global/images/\[image-id\] image-idImage family
  /// examples.
  ///
  /// Dataproc will use the most recent image from the family:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/global/images/family/\[custom-image-family-name\]
  /// projects/\[project_id\]/global/images/family/\[custom-image-family-name\]If
  /// the URI is unspecified, it will be inferred from
  /// SoftwareConfig.image_version or the system default.
  ///
  /// Optional.
  core.String? imageUri;

  /// Instance flexibility Policy allowing a mixture of VM shapes and
  /// provisioning models.
  ///
  /// Optional.
  InstanceFlexibilityPolicy? instanceFlexibilityPolicy;

  /// The list of instance names.
  ///
  /// Dataproc derives the names from cluster_name, num_instances, and the
  /// instance group.
  ///
  /// Output only.
  core.List<core.String>? instanceNames;

  /// List of references to Compute Engine instances.
  ///
  /// Output only.
  core.List<InstanceReference>? instanceReferences;

  /// Specifies that this instance group contains preemptible instances.
  ///
  /// Output only.
  core.bool? isPreemptible;

  /// The Compute Engine machine type used for cluster instances.A full URL,
  /// partial URI, or short name are valid.
  ///
  /// Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/zones/\[zone\]/machineTypes/n1-standard-2
  /// projects/\[project_id\]/zones/\[zone\]/machineTypes/n1-standard-2
  /// n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone
  /// Placement
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement)
  /// feature, you must use the short name of the machine type resource, for
  /// example, n1-standard-2.
  ///
  /// Optional.
  core.String? machineTypeUri;

  /// The config for Compute Engine Instance Group Manager that manages this
  /// group.
  ///
  /// This is only used for preemptible instance groups.
  ///
  /// Output only.
  ManagedGroupConfig? managedGroupConfig;

  /// Specifies the minimum cpu platform for the Instance Group.
  ///
  /// See Dataproc -\> Minimum CPU Platform
  /// (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  ///
  /// Optional.
  core.String? minCpuPlatform;

  /// The minimum number of primary worker instances to create.
  ///
  /// If min_num_instances is set, cluster creation will succeed if the number
  /// of primary workers created is at least equal to the min_num_instances
  /// number.Example: Cluster creation request with num_instances = 5 and
  /// min_num_instances = 3: If 4 VMs are created and 1 instance fails, the
  /// failed VM is deleted. The cluster is resized to 4 instances and placed in
  /// a RUNNING state. If 2 instances are created and 3 instances fail, the
  /// cluster in placed in an ERROR state. The failed VMs are not deleted.
  ///
  /// Optional.
  core.int? minNumInstances;

  /// The number of VM instances in the instance group.
  ///
  /// For HA cluster master_config groups, must be set to 3. For standard
  /// cluster master_config groups, must be set to 1.
  ///
  /// Optional.
  core.int? numInstances;

  /// Specifies the preemptibility of the instance group.The default value for
  /// master and worker groups is NON_PREEMPTIBLE.
  ///
  /// This default cannot be changed.The default value for secondary instances
  /// is PREEMPTIBLE.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PREEMPTIBILITY_UNSPECIFIED" : Preemptibility is unspecified, the system
  /// will choose the appropriate setting for each instance group.
  /// - "NON_PREEMPTIBLE" : Instances are non-preemptible.This option is allowed
  /// for all instance groups and is the only valid value for Master and Worker
  /// instance groups.
  /// - "PREEMPTIBLE" : Instances are preemptible
  /// (https://cloud.google.com/compute/docs/instances/preemptible).This option
  /// is allowed only for secondary worker
  /// (https://cloud.google.com/dataproc/docs/concepts/compute/secondary-vms)
  /// groups.
  /// - "SPOT" : Instances are Spot VMs
  /// (https://cloud.google.com/compute/docs/instances/spot).This option is
  /// allowed only for secondary worker
  /// (https://cloud.google.com/dataproc/docs/concepts/compute/secondary-vms)
  /// groups. Spot VMs are the latest version of preemptible VMs
  /// (https://cloud.google.com/compute/docs/instances/preemptible), and provide
  /// additional features.
  core.String? preemptibility;

  /// Configuration to handle the startup of instances during cluster create and
  /// update process.
  ///
  /// Optional.
  StartupConfig? startupConfig;

  InstanceGroupConfig({
    this.accelerators,
    this.diskConfig,
    this.imageUri,
    this.instanceFlexibilityPolicy,
    this.instanceNames,
    this.instanceReferences,
    this.isPreemptible,
    this.machineTypeUri,
    this.managedGroupConfig,
    this.minCpuPlatform,
    this.minNumInstances,
    this.numInstances,
    this.preemptibility,
    this.startupConfig,
  });

  InstanceGroupConfig.fromJson(core.Map json_)
    : this(
        accelerators:
            (json_['accelerators'] as core.List?)
                ?.map(
                  (value) => AcceleratorConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        diskConfig:
            json_.containsKey('diskConfig')
                ? DiskConfig.fromJson(
                  json_['diskConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        imageUri: json_['imageUri'] as core.String?,
        instanceFlexibilityPolicy:
            json_.containsKey('instanceFlexibilityPolicy')
                ? InstanceFlexibilityPolicy.fromJson(
                  json_['instanceFlexibilityPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        instanceNames:
            (json_['instanceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        instanceReferences:
            (json_['instanceReferences'] as core.List?)
                ?.map(
                  (value) => InstanceReference.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        isPreemptible: json_['isPreemptible'] as core.bool?,
        machineTypeUri: json_['machineTypeUri'] as core.String?,
        managedGroupConfig:
            json_.containsKey('managedGroupConfig')
                ? ManagedGroupConfig.fromJson(
                  json_['managedGroupConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        minCpuPlatform: json_['minCpuPlatform'] as core.String?,
        minNumInstances: json_['minNumInstances'] as core.int?,
        numInstances: json_['numInstances'] as core.int?,
        preemptibility: json_['preemptibility'] as core.String?,
        startupConfig:
            json_.containsKey('startupConfig')
                ? StartupConfig.fromJson(
                  json_['startupConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accelerators != null) 'accelerators': accelerators!,
    if (diskConfig != null) 'diskConfig': diskConfig!,
    if (imageUri != null) 'imageUri': imageUri!,
    if (instanceFlexibilityPolicy != null)
      'instanceFlexibilityPolicy': instanceFlexibilityPolicy!,
    if (instanceNames != null) 'instanceNames': instanceNames!,
    if (instanceReferences != null) 'instanceReferences': instanceReferences!,
    if (isPreemptible != null) 'isPreemptible': isPreemptible!,
    if (machineTypeUri != null) 'machineTypeUri': machineTypeUri!,
    if (managedGroupConfig != null) 'managedGroupConfig': managedGroupConfig!,
    if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
    if (minNumInstances != null) 'minNumInstances': minNumInstances!,
    if (numInstances != null) 'numInstances': numInstances!,
    if (preemptibility != null) 'preemptibility': preemptibility!,
    if (startupConfig != null) 'startupConfig': startupConfig!,
  };
}

/// A reference to a Compute Engine instance.
class InstanceReference {
  /// The unique identifier of the Compute Engine instance.
  core.String? instanceId;

  /// The user-friendly name of the Compute Engine instance.
  core.String? instanceName;

  /// The public ECIES key used for sharing data with this instance.
  core.String? publicEciesKey;

  /// The public RSA key used for sharing data with this instance.
  core.String? publicKey;

  InstanceReference({
    this.instanceId,
    this.instanceName,
    this.publicEciesKey,
    this.publicKey,
  });

  InstanceReference.fromJson(core.Map json_)
    : this(
        instanceId: json_['instanceId'] as core.String?,
        instanceName: json_['instanceName'] as core.String?,
        publicEciesKey: json_['publicEciesKey'] as core.String?,
        publicKey: json_['publicKey'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (instanceId != null) 'instanceId': instanceId!,
    if (instanceName != null) 'instanceName': instanceName!,
    if (publicEciesKey != null) 'publicEciesKey': publicEciesKey!,
    if (publicKey != null) 'publicKey': publicKey!,
  };
}

/// Defines machines types and a rank to which the machines types belong.
class InstanceSelection {
  /// Full machine-type names, e.g. "n1-standard-16".
  ///
  /// Optional.
  core.List<core.String>? machineTypes;

  /// Preference of this instance selection.
  ///
  /// Lower number means higher preference. Dataproc will first try to create a
  /// VM based on the machine-type with priority rank and fallback to next rank
  /// based on availability. Machine types and instance selections with the same
  /// priority have the same preference.
  ///
  /// Optional.
  core.int? rank;

  InstanceSelection({this.machineTypes, this.rank});

  InstanceSelection.fromJson(core.Map json_)
    : this(
        machineTypes:
            (json_['machineTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        rank: json_['rank'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (machineTypes != null) 'machineTypes': machineTypes!,
    if (rank != null) 'rank': rank!,
  };
}

/// Defines a mapping from machine types to the number of VMs that are created
/// with each machine type.
class InstanceSelectionResult {
  /// Full machine-type names, e.g. "n1-standard-16".
  ///
  /// Output only.
  core.String? machineType;

  /// Number of VM provisioned with the machine_type.
  ///
  /// Output only.
  core.int? vmCount;

  InstanceSelectionResult({this.machineType, this.vmCount});

  InstanceSelectionResult.fromJson(core.Map json_)
    : this(
        machineType: json_['machineType'] as core.String?,
        vmCount: json_['vmCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (machineType != null) 'machineType': machineType!,
    if (vmCount != null) 'vmCount': vmCount!,
  };
}

/// A request to instantiate a workflow template.
class InstantiateWorkflowTemplateRequest {
  /// Map from parameter names to values that should be used for those
  /// parameters.
  ///
  /// Values may not exceed 1000 characters.
  ///
  /// Optional.
  core.Map<core.String, core.String>? parameters;

  /// A tag that prevents multiple concurrent workflow instances with the same
  /// tag from running.
  ///
  /// This mitigates risk of concurrent instances started due to retries.It is
  /// recommended to always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  /// The version of workflow template to instantiate.
  ///
  /// If specified, the workflow will be instantiated only if the current
  /// version of the workflow template has the supplied version.This option
  /// cannot be used to instantiate a previous version of workflow template.
  ///
  /// Optional.
  core.int? version;

  InstantiateWorkflowTemplateRequest({
    this.parameters,
    this.requestId,
    this.version,
  });

  InstantiateWorkflowTemplateRequest.fromJson(core.Map json_)
    : this(
        parameters: (json_['parameters']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        requestId: json_['requestId'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameters != null) 'parameters': parameters!,
    if (requestId != null) 'requestId': requestId!,
    if (version != null) 'version': version!,
  };
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).The start must be less than or equal to the end.
///
/// When the start equals the end, the interval is empty (matches no time). When
/// both start and end are unspecified, the interval matches any time.
class Interval {
  /// Exclusive end of the interval.If specified, a Timestamp matching this
  /// interval will have to be before the end.
  ///
  /// Optional.
  core.String? endTime;

  /// Inclusive start of the interval.If specified, a Timestamp matching this
  /// interval will have to be the same or after the start.
  ///
  /// Optional.
  core.String? startTime;

  Interval({this.endTime, this.startTime});

  Interval.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// A Dataproc job resource.
class Job {
  /// Indicates whether the job is completed.
  ///
  /// If the value is false, the job is still in progress. If true, the job is
  /// completed, and status.state field will indicate if it was successful,
  /// failed, or cancelled.
  ///
  /// Output only.
  core.bool? done;

  /// If present, the location of miscellaneous control files which can be used
  /// as part of job setup and handling.
  ///
  /// If not present, control files might be placed in the same location as
  /// driver_output_uri.
  ///
  /// Output only.
  core.String? driverControlFilesUri;

  /// A URI pointing to the location of the stdout of the job's driver program.
  ///
  /// Output only.
  core.String? driverOutputResourceUri;

  /// Driver scheduling configuration.
  ///
  /// Optional.
  DriverSchedulingConfig? driverSchedulingConfig;

  /// Job is a Flink job.
  ///
  /// Optional.
  FlinkJob? flinkJob;

  /// Job is a Hadoop job.
  ///
  /// Optional.
  HadoopJob? hadoopJob;

  /// Job is a Hive job.
  ///
  /// Optional.
  HiveJob? hiveJob;

  /// A UUID that uniquely identifies a job within the project over time.
  ///
  /// This is in contrast to a user-settable reference.job_id that might be
  /// reused over time.
  ///
  /// Output only.
  core.String? jobUuid;

  /// The labels to associate with this job.
  ///
  /// Label keys must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if
  /// present, must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
  /// associated with a job.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Job is a Pig job.
  ///
  /// Optional.
  PigJob? pigJob;

  /// Job information, including how, when, and where to run the job.
  ///
  /// Required.
  JobPlacement? placement;

  /// Job is a Presto job.
  ///
  /// Optional.
  PrestoJob? prestoJob;

  /// Job is a PySpark job.
  ///
  /// Optional.
  PySparkJob? pysparkJob;

  /// The fully qualified reference to the job, which can be used to obtain the
  /// equivalent REST path of the job resource.
  ///
  /// If this property is not specified when a job is created, the server
  /// generates a job_id.
  ///
  /// Optional.
  JobReference? reference;

  /// Job scheduling configuration.
  ///
  /// Optional.
  JobScheduling? scheduling;

  /// Job is a Spark job.
  ///
  /// Optional.
  SparkJob? sparkJob;

  /// Job is a SparkR job.
  ///
  /// Optional.
  SparkRJob? sparkRJob;

  /// Job is a SparkSql job.
  ///
  /// Optional.
  SparkSqlJob? sparkSqlJob;

  /// The job status.
  ///
  /// Additional application-specific status information might be contained in
  /// the type_job and yarn_applications fields.
  ///
  /// Output only.
  JobStatus? status;

  /// The previous job status.
  ///
  /// Output only.
  core.List<JobStatus>? statusHistory;

  /// Job is a Trino job.
  ///
  /// Optional.
  TrinoJob? trinoJob;

  /// The collection of YARN applications spun up by this job.Beta Feature: This
  /// report is available for testing purposes only.
  ///
  /// It might be changed before final release.
  ///
  /// Output only.
  core.List<YarnApplication>? yarnApplications;

  Job({
    this.done,
    this.driverControlFilesUri,
    this.driverOutputResourceUri,
    this.driverSchedulingConfig,
    this.flinkJob,
    this.hadoopJob,
    this.hiveJob,
    this.jobUuid,
    this.labels,
    this.pigJob,
    this.placement,
    this.prestoJob,
    this.pysparkJob,
    this.reference,
    this.scheduling,
    this.sparkJob,
    this.sparkRJob,
    this.sparkSqlJob,
    this.status,
    this.statusHistory,
    this.trinoJob,
    this.yarnApplications,
  });

  Job.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        driverControlFilesUri: json_['driverControlFilesUri'] as core.String?,
        driverOutputResourceUri:
            json_['driverOutputResourceUri'] as core.String?,
        driverSchedulingConfig:
            json_.containsKey('driverSchedulingConfig')
                ? DriverSchedulingConfig.fromJson(
                  json_['driverSchedulingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        flinkJob:
            json_.containsKey('flinkJob')
                ? FlinkJob.fromJson(
                  json_['flinkJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hadoopJob:
            json_.containsKey('hadoopJob')
                ? HadoopJob.fromJson(
                  json_['hadoopJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hiveJob:
            json_.containsKey('hiveJob')
                ? HiveJob.fromJson(
                  json_['hiveJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jobUuid: json_['jobUuid'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        pigJob:
            json_.containsKey('pigJob')
                ? PigJob.fromJson(
                  json_['pigJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        placement:
            json_.containsKey('placement')
                ? JobPlacement.fromJson(
                  json_['placement'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        prestoJob:
            json_.containsKey('prestoJob')
                ? PrestoJob.fromJson(
                  json_['prestoJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pysparkJob:
            json_.containsKey('pysparkJob')
                ? PySparkJob.fromJson(
                  json_['pysparkJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reference:
            json_.containsKey('reference')
                ? JobReference.fromJson(
                  json_['reference'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        scheduling:
            json_.containsKey('scheduling')
                ? JobScheduling.fromJson(
                  json_['scheduling'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkJob:
            json_.containsKey('sparkJob')
                ? SparkJob.fromJson(
                  json_['sparkJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkRJob:
            json_.containsKey('sparkRJob')
                ? SparkRJob.fromJson(
                  json_['sparkRJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkSqlJob:
            json_.containsKey('sparkSqlJob')
                ? SparkSqlJob.fromJson(
                  json_['sparkSqlJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        status:
            json_.containsKey('status')
                ? JobStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        statusHistory:
            (json_['statusHistory'] as core.List?)
                ?.map(
                  (value) => JobStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        trinoJob:
            json_.containsKey('trinoJob')
                ? TrinoJob.fromJson(
                  json_['trinoJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        yarnApplications:
            (json_['yarnApplications'] as core.List?)
                ?.map(
                  (value) => YarnApplication.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (driverControlFilesUri != null)
      'driverControlFilesUri': driverControlFilesUri!,
    if (driverOutputResourceUri != null)
      'driverOutputResourceUri': driverOutputResourceUri!,
    if (driverSchedulingConfig != null)
      'driverSchedulingConfig': driverSchedulingConfig!,
    if (flinkJob != null) 'flinkJob': flinkJob!,
    if (hadoopJob != null) 'hadoopJob': hadoopJob!,
    if (hiveJob != null) 'hiveJob': hiveJob!,
    if (jobUuid != null) 'jobUuid': jobUuid!,
    if (labels != null) 'labels': labels!,
    if (pigJob != null) 'pigJob': pigJob!,
    if (placement != null) 'placement': placement!,
    if (prestoJob != null) 'prestoJob': prestoJob!,
    if (pysparkJob != null) 'pysparkJob': pysparkJob!,
    if (reference != null) 'reference': reference!,
    if (scheduling != null) 'scheduling': scheduling!,
    if (sparkJob != null) 'sparkJob': sparkJob!,
    if (sparkRJob != null) 'sparkRJob': sparkRJob!,
    if (sparkSqlJob != null) 'sparkSqlJob': sparkSqlJob!,
    if (status != null) 'status': status!,
    if (statusHistory != null) 'statusHistory': statusHistory!,
    if (trinoJob != null) 'trinoJob': trinoJob!,
    if (yarnApplications != null) 'yarnApplications': yarnApplications!,
  };
}

/// Data corresponding to a spark job.
class JobData {
  core.String? completionTime;
  core.String? description;
  core.String? jobGroup;
  core.String? jobId;
  core.Map<core.String, core.int>? killTasksSummary;
  core.String? name;
  core.int? numActiveStages;
  core.int? numActiveTasks;
  core.int? numCompletedIndices;
  core.int? numCompletedStages;
  core.int? numCompletedTasks;
  core.int? numFailedStages;
  core.int? numFailedTasks;
  core.int? numKilledTasks;
  core.int? numSkippedStages;
  core.int? numSkippedTasks;
  core.int? numTasks;
  core.List<core.int>? skippedStages;
  core.String? sqlExecutionId;
  core.List<core.String>? stageIds;

  ///
  /// Possible string values are:
  /// - "JOB_EXECUTION_STATUS_UNSPECIFIED"
  /// - "JOB_EXECUTION_STATUS_RUNNING"
  /// - "JOB_EXECUTION_STATUS_SUCCEEDED"
  /// - "JOB_EXECUTION_STATUS_FAILED"
  /// - "JOB_EXECUTION_STATUS_UNKNOWN"
  core.String? status;
  core.String? submissionTime;

  JobData({
    this.completionTime,
    this.description,
    this.jobGroup,
    this.jobId,
    this.killTasksSummary,
    this.name,
    this.numActiveStages,
    this.numActiveTasks,
    this.numCompletedIndices,
    this.numCompletedStages,
    this.numCompletedTasks,
    this.numFailedStages,
    this.numFailedTasks,
    this.numKilledTasks,
    this.numSkippedStages,
    this.numSkippedTasks,
    this.numTasks,
    this.skippedStages,
    this.sqlExecutionId,
    this.stageIds,
    this.status,
    this.submissionTime,
  });

  JobData.fromJson(core.Map json_)
    : this(
        completionTime: json_['completionTime'] as core.String?,
        description: json_['description'] as core.String?,
        jobGroup: json_['jobGroup'] as core.String?,
        jobId: json_['jobId'] as core.String?,
        killTasksSummary: (json_['killTasksSummary']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.int)),
        name: json_['name'] as core.String?,
        numActiveStages: json_['numActiveStages'] as core.int?,
        numActiveTasks: json_['numActiveTasks'] as core.int?,
        numCompletedIndices: json_['numCompletedIndices'] as core.int?,
        numCompletedStages: json_['numCompletedStages'] as core.int?,
        numCompletedTasks: json_['numCompletedTasks'] as core.int?,
        numFailedStages: json_['numFailedStages'] as core.int?,
        numFailedTasks: json_['numFailedTasks'] as core.int?,
        numKilledTasks: json_['numKilledTasks'] as core.int?,
        numSkippedStages: json_['numSkippedStages'] as core.int?,
        numSkippedTasks: json_['numSkippedTasks'] as core.int?,
        numTasks: json_['numTasks'] as core.int?,
        skippedStages:
            (json_['skippedStages'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        sqlExecutionId: json_['sqlExecutionId'] as core.String?,
        stageIds:
            (json_['stageIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        status: json_['status'] as core.String?,
        submissionTime: json_['submissionTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (completionTime != null) 'completionTime': completionTime!,
    if (description != null) 'description': description!,
    if (jobGroup != null) 'jobGroup': jobGroup!,
    if (jobId != null) 'jobId': jobId!,
    if (killTasksSummary != null) 'killTasksSummary': killTasksSummary!,
    if (name != null) 'name': name!,
    if (numActiveStages != null) 'numActiveStages': numActiveStages!,
    if (numActiveTasks != null) 'numActiveTasks': numActiveTasks!,
    if (numCompletedIndices != null)
      'numCompletedIndices': numCompletedIndices!,
    if (numCompletedStages != null) 'numCompletedStages': numCompletedStages!,
    if (numCompletedTasks != null) 'numCompletedTasks': numCompletedTasks!,
    if (numFailedStages != null) 'numFailedStages': numFailedStages!,
    if (numFailedTasks != null) 'numFailedTasks': numFailedTasks!,
    if (numKilledTasks != null) 'numKilledTasks': numKilledTasks!,
    if (numSkippedStages != null) 'numSkippedStages': numSkippedStages!,
    if (numSkippedTasks != null) 'numSkippedTasks': numSkippedTasks!,
    if (numTasks != null) 'numTasks': numTasks!,
    if (skippedStages != null) 'skippedStages': skippedStages!,
    if (sqlExecutionId != null) 'sqlExecutionId': sqlExecutionId!,
    if (stageIds != null) 'stageIds': stageIds!,
    if (status != null) 'status': status!,
    if (submissionTime != null) 'submissionTime': submissionTime!,
  };
}

/// Dataproc job config.
class JobPlacement {
  /// Cluster labels to identify a cluster where the job will be submitted.
  ///
  /// Optional.
  core.Map<core.String, core.String>? clusterLabels;

  /// The name of the cluster where the job will be submitted.
  ///
  /// Required.
  core.String? clusterName;

  /// A cluster UUID generated by the Dataproc service when the job is
  /// submitted.
  ///
  /// Output only.
  core.String? clusterUuid;

  JobPlacement({this.clusterLabels, this.clusterName, this.clusterUuid});

  JobPlacement.fromJson(core.Map json_)
    : this(
        clusterLabels: (json_['clusterLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        clusterName: json_['clusterName'] as core.String?,
        clusterUuid: json_['clusterUuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterLabels != null) 'clusterLabels': clusterLabels!,
    if (clusterName != null) 'clusterName': clusterName!,
    if (clusterUuid != null) 'clusterUuid': clusterUuid!,
  };
}

/// Encapsulates the full scoping used to reference a job.
class JobReference {
  /// The job ID, which must be unique within the project.The ID must contain
  /// only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-).
  ///
  /// The maximum length is 100 characters.If not specified by the caller, the
  /// job ID will be provided by the server.
  ///
  /// Optional.
  core.String? jobId;

  /// The ID of the Google Cloud Platform project that the job belongs to.
  ///
  /// If specified, must match the request project ID.
  ///
  /// Optional.
  core.String? projectId;

  JobReference({this.jobId, this.projectId});

  JobReference.fromJson(core.Map json_)
    : this(
        jobId: json_['jobId'] as core.String?,
        projectId: json_['projectId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobId != null) 'jobId': jobId!,
    if (projectId != null) 'projectId': projectId!,
  };
}

/// Job scheduling options.
class JobScheduling {
  /// Maximum number of times per hour a driver can be restarted as a result of
  /// driver exiting with non-zero code before job is reported failed.A job
  /// might be reported as thrashing if the driver exits with a non-zero code
  /// four times within a 10-minute window.Maximum value is 10.Note: This
  /// restartable job option is not supported in Dataproc workflow templates
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).
  ///
  /// Optional.
  core.int? maxFailuresPerHour;

  /// Maximum total number of times a driver can be restarted as a result of the
  /// driver exiting with a non-zero code.
  ///
  /// After the maximum number is reached, the job will be reported as
  /// failed.Maximum value is 240.Note: Currently, this restartable job option
  /// is not supported in Dataproc workflow templates
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).
  ///
  /// Optional.
  core.int? maxFailuresTotal;

  JobScheduling({this.maxFailuresPerHour, this.maxFailuresTotal});

  JobScheduling.fromJson(core.Map json_)
    : this(
        maxFailuresPerHour: json_['maxFailuresPerHour'] as core.int?,
        maxFailuresTotal: json_['maxFailuresTotal'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxFailuresPerHour != null) 'maxFailuresPerHour': maxFailuresPerHour!,
    if (maxFailuresTotal != null) 'maxFailuresTotal': maxFailuresTotal!,
  };
}

/// Dataproc job status.
class JobStatus {
  /// Job state details, such as an error description if the state is ERROR.
  ///
  /// Optional. Output only.
  core.String? details;

  /// A state message specifying the overall job state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The job state is unknown.
  /// - "PENDING" : The job is pending; it has been submitted, but is not yet
  /// running.
  /// - "SETUP_DONE" : Job has been received by the service and completed
  /// initial setup; it will soon be submitted to the cluster.
  /// - "RUNNING" : The job is running on the cluster.
  /// - "CANCEL_PENDING" : A CancelJob request has been received, but is
  /// pending.
  /// - "CANCEL_STARTED" : Transient in-flight resources have been canceled, and
  /// the request to cancel the running job has been issued to the cluster.
  /// - "CANCELLED" : The job cancellation was successful.
  /// - "DONE" : The job has completed successfully.
  /// - "ERROR" : The job has completed, but encountered an error.
  /// - "ATTEMPT_FAILURE" : Job attempt has failed. The detail field contains
  /// failure details for this attempt.Applies to restartable jobs only.
  core.String? state;

  /// The time when this state was entered.
  ///
  /// Output only.
  core.String? stateStartTime;

  /// Additional state information, which includes status reported by the agent.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The job substate is unknown.
  /// - "SUBMITTED" : The Job is submitted to the agent.Applies to RUNNING
  /// state.
  /// - "QUEUED" : The Job has been received and is awaiting execution (it might
  /// be waiting for a condition to be met). See the "details" field for the
  /// reason for the delay.Applies to RUNNING state.
  /// - "STALE_STATUS" : The agent-reported status is out of date, which can be
  /// caused by a loss of communication between the agent and Dataproc. If the
  /// agent does not send a timely update, the job will fail.Applies to RUNNING
  /// state.
  core.String? substate;

  JobStatus({this.details, this.state, this.stateStartTime, this.substate});

  JobStatus.fromJson(core.Map json_)
    : this(
        details: json_['details'] as core.String?,
        state: json_['state'] as core.String?,
        stateStartTime: json_['stateStartTime'] as core.String?,
        substate: json_['substate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (details != null) 'details': details!,
    if (state != null) 'state': state!,
    if (stateStartTime != null) 'stateStartTime': stateStartTime!,
    if (substate != null) 'substate': substate!,
  };
}

/// Data related to Jobs page summary
class JobsSummary {
  /// Number of active jobs
  core.int? activeJobs;

  /// Spark Application Id
  core.String? applicationId;

  /// Attempts info
  core.List<ApplicationAttemptInfo>? attempts;

  /// Number of completed jobs
  core.int? completedJobs;

  /// Number of failed jobs
  core.int? failedJobs;

  /// Spark Scheduling mode
  core.String? schedulingMode;

  JobsSummary({
    this.activeJobs,
    this.applicationId,
    this.attempts,
    this.completedJobs,
    this.failedJobs,
    this.schedulingMode,
  });

  JobsSummary.fromJson(core.Map json_)
    : this(
        activeJobs: json_['activeJobs'] as core.int?,
        applicationId: json_['applicationId'] as core.String?,
        attempts:
            (json_['attempts'] as core.List?)
                ?.map(
                  (value) => ApplicationAttemptInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        completedJobs: json_['completedJobs'] as core.int?,
        failedJobs: json_['failedJobs'] as core.int?,
        schedulingMode: json_['schedulingMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeJobs != null) 'activeJobs': activeJobs!,
    if (applicationId != null) 'applicationId': applicationId!,
    if (attempts != null) 'attempts': attempts!,
    if (completedJobs != null) 'completedJobs': completedJobs!,
    if (failedJobs != null) 'failedJobs': failedJobs!,
    if (schedulingMode != null) 'schedulingMode': schedulingMode!,
  };
}

/// Jupyter configuration for an interactive session.
class JupyterConfig {
  /// Display name, shown in the Jupyter kernelspec card.
  ///
  /// Optional.
  core.String? displayName;

  /// Kernel
  ///
  /// Optional.
  /// Possible string values are:
  /// - "KERNEL_UNSPECIFIED" : The kernel is unknown.
  /// - "PYTHON" : Python kernel.
  /// - "SCALA" : Scala kernel.
  core.String? kernel;

  JupyterConfig({this.displayName, this.kernel});

  JupyterConfig.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        kernel: json_['kernel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (kernel != null) 'kernel': kernel!,
  };
}

/// Specifies Kerberos related configuration.
class KerberosConfig {
  /// The admin server (IP or hostname) for the remote trusted realm in a cross
  /// realm trust relationship.
  ///
  /// Optional.
  core.String? crossRealmTrustAdminServer;

  /// The KDC (IP or hostname) for the remote trusted realm in a cross realm
  /// trust relationship.
  ///
  /// Optional.
  core.String? crossRealmTrustKdc;

  /// The remote realm the Dataproc on-cluster KDC will trust, should the user
  /// enable cross realm trust.
  ///
  /// Optional.
  core.String? crossRealmTrustRealm;

  /// The Cloud Storage URI of a KMS encrypted file containing the shared
  /// password between the on-cluster Kerberos realm and the remote trusted
  /// realm, in a cross realm trust relationship.
  ///
  /// Optional.
  core.String? crossRealmTrustSharedPasswordUri;

  /// Flag to indicate whether to Kerberize the cluster (default: false).
  ///
  /// Set this field to true to enable Kerberos on a cluster.
  ///
  /// Optional.
  core.bool? enableKerberos;

  /// The Cloud Storage URI of a KMS encrypted file containing the master key of
  /// the KDC database.
  ///
  /// Optional.
  core.String? kdcDbKeyUri;

  /// The Cloud Storage URI of a KMS encrypted file containing the password to
  /// the user provided key.
  ///
  /// For the self-signed certificate, this password is generated by Dataproc.
  ///
  /// Optional.
  core.String? keyPasswordUri;

  /// The Cloud Storage URI of a KMS encrypted file containing the password to
  /// the user provided keystore.
  ///
  /// For the self-signed certificate, this password is generated by Dataproc.
  ///
  /// Optional.
  core.String? keystorePasswordUri;

  /// The Cloud Storage URI of the keystore file used for SSL encryption.
  ///
  /// If not provided, Dataproc will provide a self-signed certificate.
  ///
  /// Optional.
  core.String? keystoreUri;

  /// The URI of the KMS key used to encrypt sensitive files.
  ///
  /// Optional.
  core.String? kmsKeyUri;

  /// The name of the on-cluster Kerberos realm.
  ///
  /// If not specified, the uppercased domain of hostnames will be the realm.
  ///
  /// Optional.
  core.String? realm;

  /// The Cloud Storage URI of a KMS encrypted file containing the root
  /// principal password.
  ///
  /// Optional.
  core.String? rootPrincipalPasswordUri;

  /// The lifetime of the ticket granting ticket, in hours.
  ///
  /// If not specified, or user specifies 0, then default value 10 will be used.
  ///
  /// Optional.
  core.int? tgtLifetimeHours;

  /// The Cloud Storage URI of a KMS encrypted file containing the password to
  /// the user provided truststore.
  ///
  /// For the self-signed certificate, this password is generated by Dataproc.
  ///
  /// Optional.
  core.String? truststorePasswordUri;

  /// The Cloud Storage URI of the truststore file used for SSL encryption.
  ///
  /// If not provided, Dataproc will provide a self-signed certificate.
  ///
  /// Optional.
  core.String? truststoreUri;

  KerberosConfig({
    this.crossRealmTrustAdminServer,
    this.crossRealmTrustKdc,
    this.crossRealmTrustRealm,
    this.crossRealmTrustSharedPasswordUri,
    this.enableKerberos,
    this.kdcDbKeyUri,
    this.keyPasswordUri,
    this.keystorePasswordUri,
    this.keystoreUri,
    this.kmsKeyUri,
    this.realm,
    this.rootPrincipalPasswordUri,
    this.tgtLifetimeHours,
    this.truststorePasswordUri,
    this.truststoreUri,
  });

  KerberosConfig.fromJson(core.Map json_)
    : this(
        crossRealmTrustAdminServer:
            json_['crossRealmTrustAdminServer'] as core.String?,
        crossRealmTrustKdc: json_['crossRealmTrustKdc'] as core.String?,
        crossRealmTrustRealm: json_['crossRealmTrustRealm'] as core.String?,
        crossRealmTrustSharedPasswordUri:
            json_['crossRealmTrustSharedPasswordUri'] as core.String?,
        enableKerberos: json_['enableKerberos'] as core.bool?,
        kdcDbKeyUri: json_['kdcDbKeyUri'] as core.String?,
        keyPasswordUri: json_['keyPasswordUri'] as core.String?,
        keystorePasswordUri: json_['keystorePasswordUri'] as core.String?,
        keystoreUri: json_['keystoreUri'] as core.String?,
        kmsKeyUri: json_['kmsKeyUri'] as core.String?,
        realm: json_['realm'] as core.String?,
        rootPrincipalPasswordUri:
            json_['rootPrincipalPasswordUri'] as core.String?,
        tgtLifetimeHours: json_['tgtLifetimeHours'] as core.int?,
        truststorePasswordUri: json_['truststorePasswordUri'] as core.String?,
        truststoreUri: json_['truststoreUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (crossRealmTrustAdminServer != null)
      'crossRealmTrustAdminServer': crossRealmTrustAdminServer!,
    if (crossRealmTrustKdc != null) 'crossRealmTrustKdc': crossRealmTrustKdc!,
    if (crossRealmTrustRealm != null)
      'crossRealmTrustRealm': crossRealmTrustRealm!,
    if (crossRealmTrustSharedPasswordUri != null)
      'crossRealmTrustSharedPasswordUri': crossRealmTrustSharedPasswordUri!,
    if (enableKerberos != null) 'enableKerberos': enableKerberos!,
    if (kdcDbKeyUri != null) 'kdcDbKeyUri': kdcDbKeyUri!,
    if (keyPasswordUri != null) 'keyPasswordUri': keyPasswordUri!,
    if (keystorePasswordUri != null)
      'keystorePasswordUri': keystorePasswordUri!,
    if (keystoreUri != null) 'keystoreUri': keystoreUri!,
    if (kmsKeyUri != null) 'kmsKeyUri': kmsKeyUri!,
    if (realm != null) 'realm': realm!,
    if (rootPrincipalPasswordUri != null)
      'rootPrincipalPasswordUri': rootPrincipalPasswordUri!,
    if (tgtLifetimeHours != null) 'tgtLifetimeHours': tgtLifetimeHours!,
    if (truststorePasswordUri != null)
      'truststorePasswordUri': truststorePasswordUri!,
    if (truststoreUri != null) 'truststoreUri': truststoreUri!,
  };
}

/// The configuration for running the Dataproc cluster on Kubernetes.
class KubernetesClusterConfig {
  /// The configuration for running the Dataproc cluster on GKE.
  ///
  /// Required.
  GkeClusterConfig? gkeClusterConfig;

  /// A namespace within the Kubernetes cluster to deploy into.
  ///
  /// If this namespace does not exist, it is created. If it exists, Dataproc
  /// verifies that another Dataproc VirtualCluster is not installed into it. If
  /// not specified, the name of the Dataproc Cluster is used.
  ///
  /// Optional.
  core.String? kubernetesNamespace;

  /// The software configuration for this Dataproc cluster running on
  /// Kubernetes.
  ///
  /// Optional.
  KubernetesSoftwareConfig? kubernetesSoftwareConfig;

  KubernetesClusterConfig({
    this.gkeClusterConfig,
    this.kubernetesNamespace,
    this.kubernetesSoftwareConfig,
  });

  KubernetesClusterConfig.fromJson(core.Map json_)
    : this(
        gkeClusterConfig:
            json_.containsKey('gkeClusterConfig')
                ? GkeClusterConfig.fromJson(
                  json_['gkeClusterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kubernetesNamespace: json_['kubernetesNamespace'] as core.String?,
        kubernetesSoftwareConfig:
            json_.containsKey('kubernetesSoftwareConfig')
                ? KubernetesSoftwareConfig.fromJson(
                  json_['kubernetesSoftwareConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gkeClusterConfig != null) 'gkeClusterConfig': gkeClusterConfig!,
    if (kubernetesNamespace != null)
      'kubernetesNamespace': kubernetesNamespace!,
    if (kubernetesSoftwareConfig != null)
      'kubernetesSoftwareConfig': kubernetesSoftwareConfig!,
  };
}

/// The software configuration for this Dataproc cluster running on Kubernetes.
class KubernetesSoftwareConfig {
  /// The components that should be installed in this Dataproc cluster.
  ///
  /// The key must be a string from the KubernetesComponent enumeration. The
  /// value is the version of the software to be installed. At least one entry
  /// must be specified.
  core.Map<core.String, core.String>? componentVersion;

  /// The properties to set on daemon config files.Property keys are specified
  /// in prefix:property format, for example
  /// spark:spark.kubernetes.container.image.
  ///
  /// The following are supported prefixes and their mappings: spark:
  /// spark-defaults.confFor more information, see Cluster properties
  /// (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  core.Map<core.String, core.String>? properties;

  KubernetesSoftwareConfig({this.componentVersion, this.properties});

  KubernetesSoftwareConfig.fromJson(core.Map json_)
    : this(
        componentVersion: (json_['componentVersion']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (componentVersion != null) 'componentVersion': componentVersion!,
    if (properties != null) 'properties': properties!,
  };
}

/// Specifies the cluster auto-delete schedule configuration.
class LifecycleConfig {
  /// The time when cluster will be auto-deleted (see JSON representation of
  /// Timestamp
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// Optional.
  core.String? autoDeleteTime;

  /// The lifetime duration of cluster.
  ///
  /// The cluster will be auto-deleted at the end of this period. Minimum value
  /// is 10 minutes; maximum value is 14 days (see JSON representation of
  /// Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// Optional.
  core.String? autoDeleteTtl;

  /// The time when cluster will be auto-stopped (see JSON representation of
  /// Timestamp
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// Optional.
  core.String? autoStopTime;

  /// The lifetime duration of the cluster.
  ///
  /// The cluster will be auto-stopped at the end of this period, calculated
  /// from the time of submission of the create or update cluster request.
  /// Minimum value is 10 minutes; maximum value is 14 days (see JSON
  /// representation of Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// Optional.
  core.String? autoStopTtl;

  /// The duration to keep the cluster alive while idling (when no jobs are
  /// running).
  ///
  /// Passing this threshold will cause the cluster to be deleted. Minimum value
  /// is 5 minutes; maximum value is 14 days (see JSON representation of
  /// Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// Optional.
  core.String? idleDeleteTtl;

  /// The time when cluster became idle (most recent job finished) and became
  /// eligible for deletion due to idleness (see JSON representation of
  /// Timestamp
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// Output only.
  core.String? idleStartTime;

  /// The duration to keep the cluster started while idling (when no jobs are
  /// running).
  ///
  /// Passing this threshold will cause the cluster to be stopped. Minimum value
  /// is 5 minutes; maximum value is 14 days (see JSON representation of
  /// Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// Optional.
  core.String? idleStopTtl;

  LifecycleConfig({
    this.autoDeleteTime,
    this.autoDeleteTtl,
    this.autoStopTime,
    this.autoStopTtl,
    this.idleDeleteTtl,
    this.idleStartTime,
    this.idleStopTtl,
  });

  LifecycleConfig.fromJson(core.Map json_)
    : this(
        autoDeleteTime: json_['autoDeleteTime'] as core.String?,
        autoDeleteTtl: json_['autoDeleteTtl'] as core.String?,
        autoStopTime: json_['autoStopTime'] as core.String?,
        autoStopTtl: json_['autoStopTtl'] as core.String?,
        idleDeleteTtl: json_['idleDeleteTtl'] as core.String?,
        idleStartTime: json_['idleStartTime'] as core.String?,
        idleStopTtl: json_['idleStopTtl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoDeleteTime != null) 'autoDeleteTime': autoDeleteTime!,
    if (autoDeleteTtl != null) 'autoDeleteTtl': autoDeleteTtl!,
    if (autoStopTime != null) 'autoStopTime': autoStopTime!,
    if (autoStopTtl != null) 'autoStopTtl': autoStopTtl!,
    if (idleDeleteTtl != null) 'idleDeleteTtl': idleDeleteTtl!,
    if (idleStartTime != null) 'idleStartTime': idleStartTime!,
    if (idleStopTtl != null) 'idleStopTtl': idleStopTtl!,
  };
}

/// A response to a request to list autoscaling policies in a project.
class ListAutoscalingPoliciesResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Autoscaling policies list.
  ///
  /// Output only.
  core.List<AutoscalingPolicy>? policies;

  ListAutoscalingPoliciesResponse({this.nextPageToken, this.policies});

  ListAutoscalingPoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        policies:
            (json_['policies'] as core.List?)
                ?.map(
                  (value) => AutoscalingPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (policies != null) 'policies': policies!,
  };
}

/// A list of batch workloads.
class ListBatchesResponse {
  /// The batches from the specified collection.
  ///
  /// Output only.
  core.List<Batch>? batches;

  /// A token, which can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of Batches that could not be included in the response.
  ///
  /// Attempting to get one of these resources may indicate why it was not
  /// included in the list response.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListBatchesResponse({this.batches, this.nextPageToken, this.unreachable});

  ListBatchesResponse.fromJson(core.Map json_)
    : this(
        batches:
            (json_['batches'] as core.List?)
                ?.map(
                  (value) => Batch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batches != null) 'batches': batches!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The list of all clusters in a project.
class ListClustersResponse {
  /// The clusters in the project.
  ///
  /// Output only.
  core.List<Cluster>? clusters;

  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent ListClustersRequest.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListClustersResponse({this.clusters, this.nextPageToken});

  ListClustersResponse.fromJson(core.Map json_)
    : this(
        clusters:
            (json_['clusters'] as core.List?)
                ?.map(
                  (value) => Cluster.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusters != null) 'clusters': clusters!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// A list of jobs in a project.
class ListJobsResponse {
  /// Jobs list.
  ///
  /// Output only.
  core.List<Job>? jobs;

  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent ListJobsRequest.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// List of jobs with kms_key-encrypted parameters that could not be
  /// decrypted.
  ///
  /// A response to a jobs.get request may indicate the reason for the
  /// decryption failure for a specific job.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListJobsResponse({this.jobs, this.nextPageToken, this.unreachable});

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
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobs != null) 'jobs': jobs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
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

/// A list of session templates.
class ListSessionTemplatesResponse {
  /// A token, which can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Session template list
  ///
  /// Output only.
  core.List<SessionTemplate>? sessionTemplates;

  ListSessionTemplatesResponse({this.nextPageToken, this.sessionTemplates});

  ListSessionTemplatesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sessionTemplates:
            (json_['sessionTemplates'] as core.List?)
                ?.map(
                  (value) => SessionTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sessionTemplates != null) 'sessionTemplates': sessionTemplates!,
  };
}

/// A list of interactive sessions.
class ListSessionsResponse {
  /// A token, which can be sent as page_token, to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The sessions from the specified collection.
  ///
  /// Output only.
  core.List<Session>? sessions;

  ListSessionsResponse({this.nextPageToken, this.sessions});

  ListSessionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sessions:
            (json_['sessions'] as core.List?)
                ?.map(
                  (value) => Session.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sessions != null) 'sessions': sessions!,
  };
}

/// A response to a request to list workflow templates in a project.
class ListWorkflowTemplatesResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent ListWorkflowTemplatesRequest.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// WorkflowTemplates list.
  ///
  /// Output only.
  core.List<WorkflowTemplate>? templates;

  /// List of workflow templates that could not be included in the response.
  ///
  /// Attempting to get one of these resources may indicate why it was not
  /// included in the list response.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListWorkflowTemplatesResponse({
    this.nextPageToken,
    this.templates,
    this.unreachable,
  });

  ListWorkflowTemplatesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        templates:
            (json_['templates'] as core.List?)
                ?.map(
                  (value) => WorkflowTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (templates != null) 'templates': templates!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The runtime logging config of the job.
class LoggingConfig {
  /// The per-package log levels for the driver.
  ///
  /// This can include "root" package name to configure rootLogger. Examples: -
  /// 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'
  core.Map<core.String, core.String>? driverLogLevels;

  LoggingConfig({this.driverLogLevels});

  LoggingConfig.fromJson(core.Map json_)
    : this(
        driverLogLevels: (json_['driverLogLevels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (driverLogLevels != null) 'driverLogLevels': driverLogLevels!,
  };
}

/// Cluster that is managed by the workflow.
class ManagedCluster {
  /// The cluster name prefix.
  ///
  /// A unique cluster name will be formed by appending a random suffix.The name
  /// must contain only lower-case letters (a-z), numbers (0-9), and hyphens
  /// (-). Must begin with a letter. Cannot begin or end with hyphen. Must
  /// consist of between 2 and 35 characters.
  ///
  /// Required.
  core.String? clusterName;

  /// The cluster configuration.
  ///
  /// Required.
  ClusterConfig? config;

  /// The labels to associate with this cluster.Label keys must be between 1 and
  /// 63 characters long, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63
  /// characters long, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be
  /// associated with a given cluster.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  ManagedCluster({this.clusterName, this.config, this.labels});

  ManagedCluster.fromJson(core.Map json_)
    : this(
        clusterName: json_['clusterName'] as core.String?,
        config:
            json_.containsKey('config')
                ? ClusterConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterName != null) 'clusterName': clusterName!,
    if (config != null) 'config': config!,
    if (labels != null) 'labels': labels!,
  };
}

/// Specifies the resources used to actively manage an instance group.
class ManagedGroupConfig {
  /// The name of the Instance Group Manager for this group.
  ///
  /// Output only.
  core.String? instanceGroupManagerName;

  /// The partial URI to the instance group manager for this group.
  ///
  /// E.g. projects/my-project/regions/us-central1/instanceGroupManagers/my-igm.
  ///
  /// Output only.
  core.String? instanceGroupManagerUri;

  /// The name of the Instance Template used for the Managed Instance Group.
  ///
  /// Output only.
  core.String? instanceTemplateName;

  ManagedGroupConfig({
    this.instanceGroupManagerName,
    this.instanceGroupManagerUri,
    this.instanceTemplateName,
  });

  ManagedGroupConfig.fromJson(core.Map json_)
    : this(
        instanceGroupManagerName:
            json_['instanceGroupManagerName'] as core.String?,
        instanceGroupManagerUri:
            json_['instanceGroupManagerUri'] as core.String?,
        instanceTemplateName: json_['instanceTemplateName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (instanceGroupManagerName != null)
      'instanceGroupManagerName': instanceGroupManagerName!,
    if (instanceGroupManagerUri != null)
      'instanceGroupManagerUri': instanceGroupManagerUri!,
    if (instanceTemplateName != null)
      'instanceTemplateName': instanceTemplateName!,
  };
}

class MemoryMetrics {
  core.String? totalOffHeapStorageMemory;
  core.String? totalOnHeapStorageMemory;
  core.String? usedOffHeapStorageMemory;
  core.String? usedOnHeapStorageMemory;

  MemoryMetrics({
    this.totalOffHeapStorageMemory,
    this.totalOnHeapStorageMemory,
    this.usedOffHeapStorageMemory,
    this.usedOnHeapStorageMemory,
  });

  MemoryMetrics.fromJson(core.Map json_)
    : this(
        totalOffHeapStorageMemory:
            json_['totalOffHeapStorageMemory'] as core.String?,
        totalOnHeapStorageMemory:
            json_['totalOnHeapStorageMemory'] as core.String?,
        usedOffHeapStorageMemory:
            json_['usedOffHeapStorageMemory'] as core.String?,
        usedOnHeapStorageMemory:
            json_['usedOnHeapStorageMemory'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (totalOffHeapStorageMemory != null)
      'totalOffHeapStorageMemory': totalOffHeapStorageMemory!,
    if (totalOnHeapStorageMemory != null)
      'totalOnHeapStorageMemory': totalOnHeapStorageMemory!,
    if (usedOffHeapStorageMemory != null)
      'usedOffHeapStorageMemory': usedOffHeapStorageMemory!,
    if (usedOnHeapStorageMemory != null)
      'usedOnHeapStorageMemory': usedOnHeapStorageMemory!,
  };
}

/// Specifies a Metastore configuration.
class MetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.Example:
  /// projects/\[project_id\]/locations/\[dataproc_region\]/services/\[service-name\]
  ///
  /// Required.
  core.String? dataprocMetastoreService;

  MetastoreConfig({this.dataprocMetastoreService});

  MetastoreConfig.fromJson(core.Map json_)
    : this(
        dataprocMetastoreService:
            json_['dataprocMetastoreService'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataprocMetastoreService != null)
      'dataprocMetastoreService': dataprocMetastoreService!,
  };
}

/// A Dataproc custom metric.
class Metric {
  /// Specify one or more Custom metrics
  /// (https://cloud.google.com/dataproc/docs/guides/dataproc-metrics#custom_metrics)
  /// to collect for the metric course (for the SPARK metric source (any Spark
  /// metric (https://spark.apache.org/docs/latest/monitoring.html#metrics) can
  /// be specified).Provide metrics in the following format: METRIC_SOURCE:
  /// INSTANCE:GROUP:METRIC Use camelcase as appropriate.Examples:
  /// yarn:ResourceManager:QueueMetrics:AppsCompleted
  /// spark:driver:DAGScheduler:job.allJobs
  /// sparkHistoryServer:JVM:Memory:NonHeapMemoryUsage.committed
  /// hiveserver2:JVM:Memory:NonHeapMemoryUsage.used Notes: Only the specified
  /// overridden metrics are collected for the metric source.
  ///
  /// For example, if one or more spark:executive metrics are listed as metric
  /// overrides, other SPARK metrics are not collected. The collection of the
  /// metrics for other enabled custom metric sources is unaffected. For
  /// example, if both SPARK and YARN metric sources are enabled, and overrides
  /// are provided for Spark metrics only, all YARN metrics are collected.
  ///
  /// Optional.
  core.List<core.String>? metricOverrides;

  /// A standard set of metrics is collected unless metricOverrides are
  /// specified for the metric source (see Custom metrics
  /// (https://cloud.google.com/dataproc/docs/guides/dataproc-metrics#custom_metrics)
  /// for more information).
  ///
  /// Required.
  /// Possible string values are:
  /// - "METRIC_SOURCE_UNSPECIFIED" : Required unspecified metric source.
  /// - "MONITORING_AGENT_DEFAULTS" : Monitoring agent metrics. If this source
  /// is enabled, Dataproc enables the monitoring agent in Compute Engine, and
  /// collects monitoring agent metrics, which are published with an
  /// agent.googleapis.com prefix.
  /// - "HDFS" : HDFS metric source.
  /// - "SPARK" : Spark metric source.
  /// - "YARN" : YARN metric source.
  /// - "SPARK_HISTORY_SERVER" : Spark History Server metric source.
  /// - "HIVESERVER2" : Hiveserver2 metric source.
  /// - "HIVEMETASTORE" : hivemetastore metric source
  /// - "FLINK" : flink metric source
  core.String? metricSource;

  Metric({this.metricOverrides, this.metricSource});

  Metric.fromJson(core.Map json_)
    : this(
        metricOverrides:
            (json_['metricOverrides'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        metricSource: json_['metricSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metricOverrides != null) 'metricOverrides': metricOverrides!,
    if (metricSource != null) 'metricSource': metricSource!,
  };
}

/// Used only for the deprecated beta.
///
/// A full, namespace-isolated deployment target for an existing GKE cluster.
///
/// Deprecated.
class NamespacedGkeDeploymentTarget {
  /// A namespace within the GKE cluster to deploy into.
  ///
  /// Optional.
  core.String? clusterNamespace;

  /// The target GKE cluster to deploy to.
  ///
  /// Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  ///
  /// Optional.
  core.String? targetGkeCluster;

  NamespacedGkeDeploymentTarget({this.clusterNamespace, this.targetGkeCluster});

  NamespacedGkeDeploymentTarget.fromJson(core.Map json_)
    : this(
        clusterNamespace: json_['clusterNamespace'] as core.String?,
        targetGkeCluster: json_['targetGkeCluster'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterNamespace != null) 'clusterNamespace': clusterNamespace!,
    if (targetGkeCluster != null) 'targetGkeCluster': targetGkeCluster!,
  };
}

class NativeBuildInfoUiData {
  /// Build class of Native.
  ///
  /// Optional.
  core.String? buildClass;

  /// Build related details.
  ///
  /// Optional.
  core.List<BuildInfo>? buildInfo;

  NativeBuildInfoUiData({this.buildClass, this.buildInfo});

  NativeBuildInfoUiData.fromJson(core.Map json_)
    : this(
        buildClass: json_['buildClass'] as core.String?,
        buildInfo:
            (json_['buildInfo'] as core.List?)
                ?.map(
                  (value) => BuildInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buildClass != null) 'buildClass': buildClass!,
    if (buildInfo != null) 'buildInfo': buildInfo!,
  };
}

/// Native SQL Execution Data
class NativeSqlExecutionUiData {
  /// Description of the execution.
  ///
  /// Optional.
  core.String? description;

  /// Execution ID of the Native SQL Execution.
  ///
  /// Required.
  core.String? executionId;

  /// Description of the fallback.
  ///
  /// Optional.
  core.String? fallbackDescription;

  /// Fallback node to reason.
  ///
  /// Optional.
  core.List<FallbackReason>? fallbackNodeToReason;

  /// Number of nodes fallen back to Spark.
  ///
  /// Optional.
  core.int? numFallbackNodes;

  /// Number of nodes in Native.
  ///
  /// Optional.
  core.int? numNativeNodes;

  NativeSqlExecutionUiData({
    this.description,
    this.executionId,
    this.fallbackDescription,
    this.fallbackNodeToReason,
    this.numFallbackNodes,
    this.numNativeNodes,
  });

  NativeSqlExecutionUiData.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        executionId: json_['executionId'] as core.String?,
        fallbackDescription: json_['fallbackDescription'] as core.String?,
        fallbackNodeToReason:
            (json_['fallbackNodeToReason'] as core.List?)
                ?.map(
                  (value) => FallbackReason.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        numFallbackNodes: json_['numFallbackNodes'] as core.int?,
        numNativeNodes: json_['numNativeNodes'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (executionId != null) 'executionId': executionId!,
    if (fallbackDescription != null)
      'fallbackDescription': fallbackDescription!,
    if (fallbackNodeToReason != null)
      'fallbackNodeToReason': fallbackNodeToReason!,
    if (numFallbackNodes != null) 'numFallbackNodes': numFallbackNodes!,
    if (numNativeNodes != null) 'numNativeNodes': numNativeNodes!,
  };
}

/// Dataproc Node Group.
///
/// The Dataproc NodeGroup resource is not related to the Dataproc
/// NodeGroupAffinity resource.
class NodeGroup {
  /// Node group labels.
  ///
  /// Label keys must consist of from 1 to 63 characters and conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If
  /// specified, they must consist of from 1 to 63 characters and conform to RFC
  /// 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no
  /// more than 32 labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The Node group resource name (https://aip.dev/122).
  core.String? name;

  /// The node group instance group configuration.
  ///
  /// Optional.
  InstanceGroupConfig? nodeGroupConfig;

  /// Node group roles.
  ///
  /// Required.
  core.List<core.String>? roles;

  NodeGroup({this.labels, this.name, this.nodeGroupConfig, this.roles});

  NodeGroup.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        nodeGroupConfig:
            json_.containsKey('nodeGroupConfig')
                ? InstanceGroupConfig.fromJson(
                  json_['nodeGroupConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        roles:
            (json_['roles'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (nodeGroupConfig != null) 'nodeGroupConfig': nodeGroupConfig!,
    if (roles != null) 'roles': roles!,
  };
}

/// Node Group Affinity for clusters using sole-tenant node groups.
///
/// The Dataproc NodeGroupAffinity resource is not related to the Dataproc
/// NodeGroup resource.
class NodeGroupAffinity {
  /// The URI of a sole-tenant node group resource
  /// (https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that
  /// the cluster will be created on.A full URL, partial URI, or node group name
  /// are valid.
  ///
  /// Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/zones/\[zone\]/nodeGroups/node-group-1
  /// projects/\[project_id\]/zones/\[zone\]/nodeGroups/node-group-1
  /// node-group-1
  ///
  /// Required.
  core.String? nodeGroupUri;

  NodeGroupAffinity({this.nodeGroupUri});

  NodeGroupAffinity.fromJson(core.Map json_)
    : this(nodeGroupUri: json_['nodeGroupUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (nodeGroupUri != null) 'nodeGroupUri': nodeGroupUri!,
  };
}

/// Specifies an executable to run on a fully configured node and a timeout
/// period for executable completion.
class NodeInitializationAction {
  /// Cloud Storage URI of executable file.
  ///
  /// Required.
  core.String? executableFile;

  /// Amount of time executable has to complete.
  ///
  /// Default is 10 minutes (see JSON representation of Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).Cluster
  /// creation fails with an explanatory error message (the name of the
  /// executable that caused the error and the exceeded timeout period) if the
  /// executable is not completed at end of the timeout period.
  ///
  /// Optional.
  core.String? executionTimeout;

  NodeInitializationAction({this.executableFile, this.executionTimeout});

  NodeInitializationAction.fromJson(core.Map json_)
    : this(
        executableFile: json_['executableFile'] as core.String?,
        executionTimeout: json_['executionTimeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executableFile != null) 'executableFile': executableFile!,
    if (executionTimeout != null) 'executionTimeout': executionTimeout!,
  };
}

/// indicating a list of workers of same type
class NodePool {
  /// A unique id of the node pool.
  ///
  /// Primary and Secondary workers can be specified using special reserved ids
  /// PRIMARY_WORKER_POOL and SECONDARY_WORKER_POOL respectively. Aux node pools
  /// can be referenced using corresponding pool id.
  ///
  /// Required.
  core.String? id;

  /// Name of instances to be repaired.
  ///
  /// These instances must belong to specified node pool.
  core.List<core.String>? instanceNames;

  /// Repair action to take on specified resources of the node pool.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REPAIR_ACTION_UNSPECIFIED" : No action will be taken by default.
  /// - "DELETE" : delete the specified list of nodes.
  core.String? repairAction;

  NodePool({this.id, this.instanceNames, this.repairAction});

  NodePool.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        instanceNames:
            (json_['instanceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        repairAction: json_['repairAction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (instanceNames != null) 'instanceNames': instanceNames!,
    if (repairAction != null) 'repairAction': repairAction!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
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
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as Delete, the
  /// response is google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
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

/// A job executed by the workflow.
class OrderedJob {
  /// Job is a Flink job.
  ///
  /// Optional.
  FlinkJob? flinkJob;

  /// Job is a Hadoop job.
  ///
  /// Optional.
  HadoopJob? hadoopJob;

  /// Job is a Hive job.
  ///
  /// Optional.
  HiveJob? hiveJob;

  /// The labels to associate with this job.Label keys must be between 1 and 63
  /// characters long, and must conform to the following regular expression:
  /// \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long,
  /// and must conform to the following regular expression:
  /// \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a
  /// given job.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Job is a Pig job.
  ///
  /// Optional.
  PigJob? pigJob;

  /// The optional list of prerequisite job step_ids.
  ///
  /// If not specified, the job will start at the beginning of workflow.
  ///
  /// Optional.
  core.List<core.String>? prerequisiteStepIds;

  /// Job is a Presto job.
  ///
  /// Optional.
  PrestoJob? prestoJob;

  /// Job is a PySpark job.
  ///
  /// Optional.
  PySparkJob? pysparkJob;

  /// Job scheduling configuration.
  ///
  /// Optional.
  JobScheduling? scheduling;

  /// Job is a Spark job.
  ///
  /// Optional.
  SparkJob? sparkJob;

  /// Job is a SparkR job.
  ///
  /// Optional.
  SparkRJob? sparkRJob;

  /// Job is a SparkSql job.
  ///
  /// Optional.
  SparkSqlJob? sparkSqlJob;

  /// The step id.
  ///
  /// The id must be unique among all jobs within the template.The step id is
  /// used as prefix for job id, as job goog-dataproc-workflow-step-id label,
  /// and in prerequisiteStepIds field from other steps.The id must contain only
  /// letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-).
  /// Cannot begin or end with underscore or hyphen. Must consist of between 3
  /// and 50 characters.
  ///
  /// Required.
  core.String? stepId;

  /// Job is a Trino job.
  ///
  /// Optional.
  TrinoJob? trinoJob;

  OrderedJob({
    this.flinkJob,
    this.hadoopJob,
    this.hiveJob,
    this.labels,
    this.pigJob,
    this.prerequisiteStepIds,
    this.prestoJob,
    this.pysparkJob,
    this.scheduling,
    this.sparkJob,
    this.sparkRJob,
    this.sparkSqlJob,
    this.stepId,
    this.trinoJob,
  });

  OrderedJob.fromJson(core.Map json_)
    : this(
        flinkJob:
            json_.containsKey('flinkJob')
                ? FlinkJob.fromJson(
                  json_['flinkJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hadoopJob:
            json_.containsKey('hadoopJob')
                ? HadoopJob.fromJson(
                  json_['hadoopJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hiveJob:
            json_.containsKey('hiveJob')
                ? HiveJob.fromJson(
                  json_['hiveJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        pigJob:
            json_.containsKey('pigJob')
                ? PigJob.fromJson(
                  json_['pigJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        prerequisiteStepIds:
            (json_['prerequisiteStepIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        prestoJob:
            json_.containsKey('prestoJob')
                ? PrestoJob.fromJson(
                  json_['prestoJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pysparkJob:
            json_.containsKey('pysparkJob')
                ? PySparkJob.fromJson(
                  json_['pysparkJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        scheduling:
            json_.containsKey('scheduling')
                ? JobScheduling.fromJson(
                  json_['scheduling'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkJob:
            json_.containsKey('sparkJob')
                ? SparkJob.fromJson(
                  json_['sparkJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkRJob:
            json_.containsKey('sparkRJob')
                ? SparkRJob.fromJson(
                  json_['sparkRJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkSqlJob:
            json_.containsKey('sparkSqlJob')
                ? SparkSqlJob.fromJson(
                  json_['sparkSqlJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stepId: json_['stepId'] as core.String?,
        trinoJob:
            json_.containsKey('trinoJob')
                ? TrinoJob.fromJson(
                  json_['trinoJob'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (flinkJob != null) 'flinkJob': flinkJob!,
    if (hadoopJob != null) 'hadoopJob': hadoopJob!,
    if (hiveJob != null) 'hiveJob': hiveJob!,
    if (labels != null) 'labels': labels!,
    if (pigJob != null) 'pigJob': pigJob!,
    if (prerequisiteStepIds != null)
      'prerequisiteStepIds': prerequisiteStepIds!,
    if (prestoJob != null) 'prestoJob': prestoJob!,
    if (pysparkJob != null) 'pysparkJob': pysparkJob!,
    if (scheduling != null) 'scheduling': scheduling!,
    if (sparkJob != null) 'sparkJob': sparkJob!,
    if (sparkRJob != null) 'sparkRJob': sparkRJob!,
    if (sparkSqlJob != null) 'sparkSqlJob': sparkSqlJob!,
    if (stepId != null) 'stepId': stepId!,
    if (trinoJob != null) 'trinoJob': trinoJob!,
  };
}

/// Metrics about the data written by the task.
typedef OutputMetrics = $OutputMetrics;

class OutputQuantileMetrics {
  Quantiles? bytesWritten;
  Quantiles? recordsWritten;

  OutputQuantileMetrics({this.bytesWritten, this.recordsWritten});

  OutputQuantileMetrics.fromJson(core.Map json_)
    : this(
        bytesWritten:
            json_.containsKey('bytesWritten')
                ? Quantiles.fromJson(
                  json_['bytesWritten'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        recordsWritten:
            json_.containsKey('recordsWritten')
                ? Quantiles.fromJson(
                  json_['recordsWritten']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bytesWritten != null) 'bytesWritten': bytesWritten!,
    if (recordsWritten != null) 'recordsWritten': recordsWritten!,
  };
}

/// Configuration for parameter validation.
class ParameterValidation {
  /// Validation based on regular expressions.
  RegexValidation? regex;

  /// Validation based on a list of allowed values.
  ValueValidation? values;

  ParameterValidation({this.regex, this.values});

  ParameterValidation.fromJson(core.Map json_)
    : this(
        regex:
            json_.containsKey('regex')
                ? RegexValidation.fromJson(
                  json_['regex'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        values:
            json_.containsKey('values')
                ? ValueValidation.fromJson(
                  json_['values'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (regex != null) 'regex': regex!,
    if (values != null) 'values': values!,
  };
}

/// Auxiliary services configuration for a workload.
class PeripheralsConfig {
  /// Resource name of an existing Dataproc Metastore service.Example:
  /// projects/\[project_id\]/locations/\[region\]/services/\[service_id\]
  ///
  /// Optional.
  core.String? metastoreService;

  /// The Spark History Server configuration for the workload.
  ///
  /// Optional.
  SparkHistoryServerConfig? sparkHistoryServerConfig;

  PeripheralsConfig({this.metastoreService, this.sparkHistoryServerConfig});

  PeripheralsConfig.fromJson(core.Map json_)
    : this(
        metastoreService: json_['metastoreService'] as core.String?,
        sparkHistoryServerConfig:
            json_.containsKey('sparkHistoryServerConfig')
                ? SparkHistoryServerConfig.fromJson(
                  json_['sparkHistoryServerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metastoreService != null) 'metastoreService': metastoreService!,
    if (sparkHistoryServerConfig != null)
      'sparkHistoryServerConfig': sparkHistoryServerConfig!,
  };
}

/// A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on
/// YARN.
class PigJob {
  /// Whether to continue executing queries if a query fails.
  ///
  /// The default value is false. Setting to true can be useful when executing
  /// independent parallel queries.
  ///
  /// Optional.
  core.bool? continueOnFailure;

  /// HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and
  /// Hadoop MapReduce (MR) tasks.
  ///
  /// Can contain Pig UDFs.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// A mapping of property names to values, used to configure Pig.
  ///
  /// Properties that conflict with values set by the Dataproc API might be
  /// overwritten. Can include properties set in /etc/hadoop/conf / * -site.xml,
  /// /etc/pig/conf/pig.properties, and classes in user code.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// The HCFS URI of the script that contains the Pig queries.
  core.String? queryFileUri;

  /// A list of queries.
  QueryList? queryList;

  /// Mapping of query variable names to values (equivalent to the Pig command:
  /// name=\[value\]).
  ///
  /// Optional.
  core.Map<core.String, core.String>? scriptVariables;

  PigJob({
    this.continueOnFailure,
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  PigJob.fromJson(core.Map json_)
    : this(
        continueOnFailure: json_['continueOnFailure'] as core.bool?,
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        queryFileUri: json_['queryFileUri'] as core.String?,
        queryList:
            json_.containsKey('queryList')
                ? QueryList.fromJson(
                  json_['queryList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        scriptVariables: (json_['scriptVariables']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (continueOnFailure != null) 'continueOnFailure': continueOnFailure!,
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (properties != null) 'properties': properties!,
    if (queryFileUri != null) 'queryFileUri': queryFileUri!,
    if (queryList != null) 'queryList': queryList!,
    if (scriptVariables != null) 'scriptVariables': scriptVariables!,
  };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.A Policy is a collection of bindings.
///
/// A binding binds one or more members, or principals, to a single role.
/// Principals can be user accounts, service accounts, Google groups, and
/// domains (such as G Suite). A role is a named list of permissions; each role
/// can be an IAM predefined role or a user-created custom role.For some types
/// of Google Cloud resources, a binding can also specify a condition, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to true. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the IAM documentation
/// (https://cloud.google.com/iam/help/conditions/resource-policies).JSON
/// example: { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } YAML example: bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the IAM
/// documentation (https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of members, or principals, with a role.
  ///
  /// Optionally, may specify a condition that determines how and when the
  /// bindings are applied. Each of the bindings must contain at least one
  /// principal.The bindings in a Policy can refer to up to 1,500 principals; up
  /// to 250 of these principals can be Google groups. Each occurrence of a
  /// principal counts towards these limits. For example, if the bindings grant
  /// 50 different roles to user:alice@example.com, and not to any other
  /// principal, then you can add another 1,450 principals to the bindings in
  /// the Policy.
  core.List<Binding>? bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the etag in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An etag is returned in the response to getIamPolicy, and
  /// systems are expected to put that etag in the request to setIamPolicy to
  /// ensure that their change will be applied to the same version of the
  /// policy.Important: If you use IAM Conditions, you must include the etag
  /// field whenever you call setIamPolicy. If you omit this field, then IAM
  /// allows you to overwrite a version 3 policy with a version 1 policy, and
  /// all of the conditions in the version 3 policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specifies the format of the policy.Valid values are 0, 1, and 3.
  ///
  /// Requests that specify an invalid value are rejected.Any operation that
  /// affects conditional role bindings must specify version 3. This requirement
  /// applies to the following operations: Getting a policy that includes a
  /// conditional role binding Adding a conditional role binding to a policy
  /// Changing a conditional role binding in a policy Removing any role binding,
  /// with or without a condition, from a policy that includes
  /// conditionsImportant: If you use IAM Conditions, you must include the etag
  /// field whenever you call setIamPolicy. If you omit this field, then IAM
  /// allows you to overwrite a version 3 policy with a version 1 policy, and
  /// all of the conditions in the version 3 policy are lost.If a policy does
  /// not include any conditions, operations on that policy may specify any
  /// valid version or leave the field unset.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// Pool Data
class PoolData {
  core.String? name;
  core.List<core.String>? stageIds;

  PoolData({this.name, this.stageIds});

  PoolData.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        stageIds:
            (json_['stageIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (stageIds != null) 'stageIds': stageIds!,
  };
}

/// A Dataproc job for running Presto (https://prestosql.io/) queries.
///
/// IMPORTANT: The Dataproc Presto Optional Component
/// (https://cloud.google.com/dataproc/docs/concepts/components/presto) must be
/// enabled when the cluster is created to submit a Presto job to the cluster.
class PrestoJob {
  /// Presto client tags to attach to this query
  ///
  /// Optional.
  core.List<core.String>? clientTags;

  /// Whether to continue executing queries if a query fails.
  ///
  /// The default value is false. Setting to true can be useful when executing
  /// independent parallel queries.
  ///
  /// Optional.
  core.bool? continueOnFailure;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// The format in which query output will be displayed.
  ///
  /// See the Presto documentation for supported output formats
  ///
  /// Optional.
  core.String? outputFormat;

  /// A mapping of property names to values.
  ///
  /// Used to set Presto session properties
  /// (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to
  /// using the --session flag in the Presto CLI
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  core.String? queryFileUri;

  /// A list of queries.
  QueryList? queryList;

  PrestoJob({
    this.clientTags,
    this.continueOnFailure,
    this.loggingConfig,
    this.outputFormat,
    this.properties,
    this.queryFileUri,
    this.queryList,
  });

  PrestoJob.fromJson(core.Map json_)
    : this(
        clientTags:
            (json_['clientTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        continueOnFailure: json_['continueOnFailure'] as core.bool?,
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputFormat: json_['outputFormat'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        queryFileUri: json_['queryFileUri'] as core.String?,
        queryList:
            json_.containsKey('queryList')
                ? QueryList.fromJson(
                  json_['queryList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientTags != null) 'clientTags': clientTags!,
    if (continueOnFailure != null) 'continueOnFailure': continueOnFailure!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (outputFormat != null) 'outputFormat': outputFormat!,
    if (properties != null) 'properties': properties!,
    if (queryFileUri != null) 'queryFileUri': queryFileUri!,
    if (queryList != null) 'queryList': queryList!,
  };
}

/// Process Summary
class ProcessSummary {
  core.String? addTime;
  core.String? hostPort;
  core.bool? isActive;
  core.String? processId;
  core.Map<core.String, core.String>? processLogs;
  core.String? removeTime;
  core.int? totalCores;

  ProcessSummary({
    this.addTime,
    this.hostPort,
    this.isActive,
    this.processId,
    this.processLogs,
    this.removeTime,
    this.totalCores,
  });

  ProcessSummary.fromJson(core.Map json_)
    : this(
        addTime: json_['addTime'] as core.String?,
        hostPort: json_['hostPort'] as core.String?,
        isActive: json_['isActive'] as core.bool?,
        processId: json_['processId'] as core.String?,
        processLogs: (json_['processLogs']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        removeTime: json_['removeTime'] as core.String?,
        totalCores: json_['totalCores'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (addTime != null) 'addTime': addTime!,
    if (hostPort != null) 'hostPort': hostPort!,
    if (isActive != null) 'isActive': isActive!,
    if (processId != null) 'processId': processId!,
    if (processLogs != null) 'processLogs': processLogs!,
    if (removeTime != null) 'removeTime': removeTime!,
    if (totalCores != null) 'totalCores': totalCores!,
  };
}

/// Properties of the workload organized by origin.
class PropertiesInfo {
  /// Properties set by autotuning engine.
  ///
  /// Output only.
  core.Map<core.String, ValueInfo>? autotuningProperties;

  PropertiesInfo({this.autotuningProperties});

  PropertiesInfo.fromJson(core.Map json_)
    : this(
        autotuningProperties: (json_['autotuningProperties']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ValueInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autotuningProperties != null)
      'autotuningProperties': autotuningProperties!,
  };
}

/// Defines how Dataproc should create VMs with a mixture of provisioning
/// models.
class ProvisioningModelMix {
  /// The base capacity that will always use Standard VMs to avoid risk of more
  /// preemption than the minimum capacity you need.
  ///
  /// Dataproc will create only standard VMs until it reaches
  /// standard_capacity_base, then it will start using
  /// standard_capacity_percent_above_base to mix Spot with Standard VMs. eg. If
  /// 15 instances are requested and standard_capacity_base is 5, Dataproc will
  /// create 5 standard VMs and then start mixing spot and standard VMs for
  /// remaining 10 instances.
  ///
  /// Optional.
  core.int? standardCapacityBase;

  /// The percentage of target capacity that should use Standard VM.
  ///
  /// The remaining percentage will use Spot VMs. The percentage applies only to
  /// the capacity above standard_capacity_base. eg. If 15 instances are
  /// requested and standard_capacity_base is 5 and
  /// standard_capacity_percent_above_base is 30, Dataproc will create 5
  /// standard VMs and then start mixing spot and standard VMs for remaining 10
  /// instances. The mix will be 30% standard and 70% spot.
  ///
  /// Optional.
  core.int? standardCapacityPercentAboveBase;

  ProvisioningModelMix({
    this.standardCapacityBase,
    this.standardCapacityPercentAboveBase,
  });

  ProvisioningModelMix.fromJson(core.Map json_)
    : this(
        standardCapacityBase: json_['standardCapacityBase'] as core.int?,
        standardCapacityPercentAboveBase:
            json_['standardCapacityPercentAboveBase'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (standardCapacityBase != null)
      'standardCapacityBase': standardCapacityBase!,
    if (standardCapacityPercentAboveBase != null)
      'standardCapacityPercentAboveBase': standardCapacityPercentAboveBase!,
  };
}

/// Configuration for PyPi repository
class PyPiRepositoryConfig {
  /// PyPi repository address
  ///
  /// Optional.
  core.String? pypiRepository;

  PyPiRepositoryConfig({this.pypiRepository});

  PyPiRepositoryConfig.fromJson(core.Map json_)
    : this(pypiRepository: json_['pypiRepository'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (pypiRepository != null) 'pypiRepository': pypiRepository!,
  };
}

/// A configuration for running an Apache PySpark
/// (https://spark.apache.org/docs/latest/api/python/getting_started/quickstart.html)
/// batch workload.
class PySparkBatch {
  /// HCFS URIs of archives to be extracted into the working directory of each
  /// executor.
  ///
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  ///
  /// Optional.
  core.List<core.String>? archiveUris;

  /// The arguments to pass to the driver.
  ///
  /// Do not include arguments that can be set as batch properties, such as
  /// --conf, since a collision can occur that causes an incorrect batch
  /// submission.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  ///
  /// Optional.
  core.List<core.String>? fileUris;

  /// HCFS URIs of jar files to add to the classpath of the Spark driver and
  /// tasks.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The HCFS URI of the main Python file to use as the Spark driver.
  ///
  /// Must be a .py file.
  ///
  /// Required.
  core.String? mainPythonFileUri;

  /// HCFS file URIs of Python files to pass to the PySpark framework.
  ///
  /// Supported file types: .py, .egg, and .zip.
  ///
  /// Optional.
  core.List<core.String>? pythonFileUris;

  PySparkBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainPythonFileUri,
    this.pythonFileUris,
  });

  PySparkBatch.fromJson(core.Map json_)
    : this(
        archiveUris:
            (json_['archiveUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fileUris:
            (json_['fileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        mainPythonFileUri: json_['mainPythonFileUri'] as core.String?,
        pythonFileUris:
            (json_['pythonFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveUris != null) 'archiveUris': archiveUris!,
    if (args != null) 'args': args!,
    if (fileUris != null) 'fileUris': fileUris!,
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (mainPythonFileUri != null) 'mainPythonFileUri': mainPythonFileUri!,
    if (pythonFileUris != null) 'pythonFileUris': pythonFileUris!,
  };
}

/// A Dataproc job for running Apache PySpark
/// (https://spark.apache.org/docs/latest/api/python/index.html#pyspark-overview)
/// applications on YARN.
class PySparkJob {
  /// HCFS URIs of archives to be extracted into the working directory of each
  /// executor.
  ///
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  ///
  /// Optional.
  core.List<core.String>? archiveUris;

  /// The arguments to pass to the driver.
  ///
  /// Do not include arguments, such as --conf, that can be set as job
  /// properties, since a collision may occur that causes an incorrect job
  /// submission.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  ///
  /// Useful for naively parallel tasks.
  ///
  /// Optional.
  core.List<core.String>? fileUris;

  /// HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and
  /// tasks.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// The HCFS URI of the main Python file to use as the driver.
  ///
  /// Must be a .py file.
  ///
  /// Required.
  core.String? mainPythonFileUri;

  /// A mapping of property names to values, used to configure PySpark.
  ///
  /// Properties that conflict with values set by the Dataproc API might be
  /// overwritten. Can include properties set in
  /// /etc/spark/conf/spark-defaults.conf and classes in user code.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// HCFS file URIs of Python files to pass to the PySpark framework.
  ///
  /// Supported file types: .py, .egg, and .zip.
  ///
  /// Optional.
  core.List<core.String>? pythonFileUris;

  PySparkJob({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.loggingConfig,
    this.mainPythonFileUri,
    this.properties,
    this.pythonFileUris,
  });

  PySparkJob.fromJson(core.Map json_)
    : this(
        archiveUris:
            (json_['archiveUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fileUris:
            (json_['fileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mainPythonFileUri: json_['mainPythonFileUri'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        pythonFileUris:
            (json_['pythonFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveUris != null) 'archiveUris': archiveUris!,
    if (args != null) 'args': args!,
    if (fileUris != null) 'fileUris': fileUris!,
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (mainPythonFileUri != null) 'mainPythonFileUri': mainPythonFileUri!,
    if (properties != null) 'properties': properties!,
    if (pythonFileUris != null) 'pythonFileUris': pythonFileUris!,
  };
}

/// Quantile metrics data related to Tasks.
///
/// Units can be seconds, bytes, milliseconds, etc depending on the message
/// type.
class Quantiles {
  core.String? count;
  core.String? maximum;
  core.String? minimum;
  core.String? percentile25;
  core.String? percentile50;
  core.String? percentile75;
  core.String? sum;

  Quantiles({
    this.count,
    this.maximum,
    this.minimum,
    this.percentile25,
    this.percentile50,
    this.percentile75,
    this.sum,
  });

  Quantiles.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        maximum: json_['maximum'] as core.String?,
        minimum: json_['minimum'] as core.String?,
        percentile25: json_['percentile25'] as core.String?,
        percentile50: json_['percentile50'] as core.String?,
        percentile75: json_['percentile75'] as core.String?,
        sum: json_['sum'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (maximum != null) 'maximum': maximum!,
    if (minimum != null) 'minimum': minimum!,
    if (percentile25 != null) 'percentile25': percentile25!,
    if (percentile50 != null) 'percentile50': percentile50!,
    if (percentile75 != null) 'percentile75': percentile75!,
    if (sum != null) 'sum': sum!,
  };
}

/// A list of queries to run on a cluster.
class QueryList {
  /// The queries to execute.
  ///
  /// You do not need to end a query expression with a semicolon. Multiple
  /// queries can be specified in one string by separating each with a
  /// semicolon. Here is an example of a Dataproc API snippet that uses a
  /// QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": \[
  /// "query1", "query2", "query3;query4", \] } }
  ///
  /// Required.
  core.List<core.String>? queries;

  QueryList({this.queries});

  QueryList.fromJson(core.Map json_)
    : this(
        queries:
            (json_['queries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (queries != null) 'queries': queries!,
  };
}

/// Details about RDD usage.
class RddDataDistribution {
  core.String? address;
  core.String? diskUsed;
  core.String? memoryRemaining;
  core.String? memoryUsed;
  core.String? offHeapMemoryRemaining;
  core.String? offHeapMemoryUsed;
  core.String? onHeapMemoryRemaining;
  core.String? onHeapMemoryUsed;

  RddDataDistribution({
    this.address,
    this.diskUsed,
    this.memoryRemaining,
    this.memoryUsed,
    this.offHeapMemoryRemaining,
    this.offHeapMemoryUsed,
    this.onHeapMemoryRemaining,
    this.onHeapMemoryUsed,
  });

  RddDataDistribution.fromJson(core.Map json_)
    : this(
        address: json_['address'] as core.String?,
        diskUsed: json_['diskUsed'] as core.String?,
        memoryRemaining: json_['memoryRemaining'] as core.String?,
        memoryUsed: json_['memoryUsed'] as core.String?,
        offHeapMemoryRemaining: json_['offHeapMemoryRemaining'] as core.String?,
        offHeapMemoryUsed: json_['offHeapMemoryUsed'] as core.String?,
        onHeapMemoryRemaining: json_['onHeapMemoryRemaining'] as core.String?,
        onHeapMemoryUsed: json_['onHeapMemoryUsed'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (address != null) 'address': address!,
    if (diskUsed != null) 'diskUsed': diskUsed!,
    if (memoryRemaining != null) 'memoryRemaining': memoryRemaining!,
    if (memoryUsed != null) 'memoryUsed': memoryUsed!,
    if (offHeapMemoryRemaining != null)
      'offHeapMemoryRemaining': offHeapMemoryRemaining!,
    if (offHeapMemoryUsed != null) 'offHeapMemoryUsed': offHeapMemoryUsed!,
    if (onHeapMemoryRemaining != null)
      'onHeapMemoryRemaining': onHeapMemoryRemaining!,
    if (onHeapMemoryUsed != null) 'onHeapMemoryUsed': onHeapMemoryUsed!,
  };
}

/// A grouping of nodes representing higher level constructs (stage, job etc.).
class RddOperationCluster {
  core.List<RddOperationCluster>? childClusters;
  core.List<RddOperationNode>? childNodes;
  core.String? name;
  core.String? rddClusterId;

  RddOperationCluster({
    this.childClusters,
    this.childNodes,
    this.name,
    this.rddClusterId,
  });

  RddOperationCluster.fromJson(core.Map json_)
    : this(
        childClusters:
            (json_['childClusters'] as core.List?)
                ?.map(
                  (value) => RddOperationCluster.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        childNodes:
            (json_['childNodes'] as core.List?)
                ?.map(
                  (value) => RddOperationNode.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        rddClusterId: json_['rddClusterId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (childClusters != null) 'childClusters': childClusters!,
    if (childNodes != null) 'childNodes': childNodes!,
    if (name != null) 'name': name!,
    if (rddClusterId != null) 'rddClusterId': rddClusterId!,
  };
}

/// A directed edge representing dependency between two RDDs.
class RddOperationEdge {
  core.int? fromId;
  core.int? toId;

  RddOperationEdge({this.fromId, this.toId});

  RddOperationEdge.fromJson(core.Map json_)
    : this(
        fromId: json_['fromId'] as core.int?,
        toId: json_['toId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fromId != null) 'fromId': fromId!,
    if (toId != null) 'toId': toId!,
  };
}

/// Graph representing RDD dependencies.
///
/// Consists of edges and a root cluster.
class RddOperationGraph {
  core.List<RddOperationEdge>? edges;
  core.List<RddOperationEdge>? incomingEdges;
  core.List<RddOperationEdge>? outgoingEdges;
  RddOperationCluster? rootCluster;
  core.String? stageId;

  RddOperationGraph({
    this.edges,
    this.incomingEdges,
    this.outgoingEdges,
    this.rootCluster,
    this.stageId,
  });

  RddOperationGraph.fromJson(core.Map json_)
    : this(
        edges:
            (json_['edges'] as core.List?)
                ?.map(
                  (value) => RddOperationEdge.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        incomingEdges:
            (json_['incomingEdges'] as core.List?)
                ?.map(
                  (value) => RddOperationEdge.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        outgoingEdges:
            (json_['outgoingEdges'] as core.List?)
                ?.map(
                  (value) => RddOperationEdge.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        rootCluster:
            json_.containsKey('rootCluster')
                ? RddOperationCluster.fromJson(
                  json_['rootCluster'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stageId: json_['stageId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (edges != null) 'edges': edges!,
    if (incomingEdges != null) 'incomingEdges': incomingEdges!,
    if (outgoingEdges != null) 'outgoingEdges': outgoingEdges!,
    if (rootCluster != null) 'rootCluster': rootCluster!,
    if (stageId != null) 'stageId': stageId!,
  };
}

/// A node in the RDD operation graph.
///
/// Corresponds to a single RDD.
class RddOperationNode {
  core.bool? barrier;
  core.bool? cached;
  core.String? callsite;
  core.String? name;
  core.int? nodeId;

  ///
  /// Possible string values are:
  /// - "DETERMINISTIC_LEVEL_UNSPECIFIED"
  /// - "DETERMINISTIC_LEVEL_DETERMINATE"
  /// - "DETERMINISTIC_LEVEL_UNORDERED"
  /// - "DETERMINISTIC_LEVEL_INDETERMINATE"
  core.String? outputDeterministicLevel;

  RddOperationNode({
    this.barrier,
    this.cached,
    this.callsite,
    this.name,
    this.nodeId,
    this.outputDeterministicLevel,
  });

  RddOperationNode.fromJson(core.Map json_)
    : this(
        barrier: json_['barrier'] as core.bool?,
        cached: json_['cached'] as core.bool?,
        callsite: json_['callsite'] as core.String?,
        name: json_['name'] as core.String?,
        nodeId: json_['nodeId'] as core.int?,
        outputDeterministicLevel:
            json_['outputDeterministicLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (barrier != null) 'barrier': barrier!,
    if (cached != null) 'cached': cached!,
    if (callsite != null) 'callsite': callsite!,
    if (name != null) 'name': name!,
    if (nodeId != null) 'nodeId': nodeId!,
    if (outputDeterministicLevel != null)
      'outputDeterministicLevel': outputDeterministicLevel!,
  };
}

/// Information about RDD partitions.
class RddPartitionInfo {
  core.String? blockName;
  core.String? diskUsed;
  core.List<core.String>? executors;
  core.String? memoryUsed;
  core.String? storageLevel;

  RddPartitionInfo({
    this.blockName,
    this.diskUsed,
    this.executors,
    this.memoryUsed,
    this.storageLevel,
  });

  RddPartitionInfo.fromJson(core.Map json_)
    : this(
        blockName: json_['blockName'] as core.String?,
        diskUsed: json_['diskUsed'] as core.String?,
        executors:
            (json_['executors'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        memoryUsed: json_['memoryUsed'] as core.String?,
        storageLevel: json_['storageLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blockName != null) 'blockName': blockName!,
    if (diskUsed != null) 'diskUsed': diskUsed!,
    if (executors != null) 'executors': executors!,
    if (memoryUsed != null) 'memoryUsed': memoryUsed!,
    if (storageLevel != null) 'storageLevel': storageLevel!,
  };
}

/// Overall data about RDD storage.
class RddStorageInfo {
  core.List<RddDataDistribution>? dataDistribution;
  core.String? diskUsed;
  core.String? memoryUsed;
  core.String? name;
  core.int? numCachedPartitions;
  core.int? numPartitions;
  core.List<RddPartitionInfo>? partitions;
  core.int? rddStorageId;
  core.String? storageLevel;

  RddStorageInfo({
    this.dataDistribution,
    this.diskUsed,
    this.memoryUsed,
    this.name,
    this.numCachedPartitions,
    this.numPartitions,
    this.partitions,
    this.rddStorageId,
    this.storageLevel,
  });

  RddStorageInfo.fromJson(core.Map json_)
    : this(
        dataDistribution:
            (json_['dataDistribution'] as core.List?)
                ?.map(
                  (value) => RddDataDistribution.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        diskUsed: json_['diskUsed'] as core.String?,
        memoryUsed: json_['memoryUsed'] as core.String?,
        name: json_['name'] as core.String?,
        numCachedPartitions: json_['numCachedPartitions'] as core.int?,
        numPartitions: json_['numPartitions'] as core.int?,
        partitions:
            (json_['partitions'] as core.List?)
                ?.map(
                  (value) => RddPartitionInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        rddStorageId: json_['rddStorageId'] as core.int?,
        storageLevel: json_['storageLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataDistribution != null) 'dataDistribution': dataDistribution!,
    if (diskUsed != null) 'diskUsed': diskUsed!,
    if (memoryUsed != null) 'memoryUsed': memoryUsed!,
    if (name != null) 'name': name!,
    if (numCachedPartitions != null)
      'numCachedPartitions': numCachedPartitions!,
    if (numPartitions != null) 'numPartitions': numPartitions!,
    if (partitions != null) 'partitions': partitions!,
    if (rddStorageId != null) 'rddStorageId': rddStorageId!,
    if (storageLevel != null) 'storageLevel': storageLevel!,
  };
}

/// Validation based on regular expressions.
class RegexValidation {
  /// RE2 regular expressions used to validate the parameter's value.
  ///
  /// The value must match the regex in its entirety (substring matches are not
  /// sufficient).
  ///
  /// Required.
  core.List<core.String>? regexes;

  RegexValidation({this.regexes});

  RegexValidation.fromJson(core.Map json_)
    : this(
        regexes:
            (json_['regexes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (regexes != null) 'regexes': regexes!,
  };
}

/// A request to repair a cluster.
class RepairClusterRequest {
  /// Cluster to be repaired
  ///
  /// Optional.
  ClusterToRepair? cluster;

  /// Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND)
  /// if a cluster with the specified UUID does not exist.
  ///
  /// Optional.
  core.String? clusterUuid;

  /// Timeout for graceful YARN decommissioning.
  ///
  /// Graceful decommissioning facilitates the removal of cluster nodes without
  /// interrupting jobs in progress. The timeout specifies the amount of time to
  /// wait for jobs finish before forcefully removing nodes. The default timeout
  /// is 0 for forceful decommissioning, and the maximum timeout period is 1
  /// day. (see JSON Mapping—Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).graceful_decommission_timeout
  /// is supported in Dataproc image versions 1.2+.
  ///
  /// Optional.
  core.String? gracefulDecommissionTimeout;

  /// Node pools and corresponding repair action to be taken.
  ///
  /// All node pools should be unique in this request. i.e. Multiple entries for
  /// the same node pool id are not allowed.
  ///
  /// Optional.
  core.List<NodePool>? nodePools;

  /// operation id of the parent operation sending the repair request
  ///
  /// Optional.
  core.String? parentOperationId;

  /// A unique ID used to identify the request.
  ///
  /// If the server receives two RepairClusterRequests with the same ID, the
  /// second request is ignored, and the first google.longrunning.Operation
  /// created and stored in the backend is returned.Recommendation: Set this
  /// value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  RepairClusterRequest({
    this.cluster,
    this.clusterUuid,
    this.gracefulDecommissionTimeout,
    this.nodePools,
    this.parentOperationId,
    this.requestId,
  });

  RepairClusterRequest.fromJson(core.Map json_)
    : this(
        cluster:
            json_.containsKey('cluster')
                ? ClusterToRepair.fromJson(
                  json_['cluster'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        clusterUuid: json_['clusterUuid'] as core.String?,
        gracefulDecommissionTimeout:
            json_['gracefulDecommissionTimeout'] as core.String?,
        nodePools:
            (json_['nodePools'] as core.List?)
                ?.map(
                  (value) => NodePool.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        parentOperationId: json_['parentOperationId'] as core.String?,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cluster != null) 'cluster': cluster!,
    if (clusterUuid != null) 'clusterUuid': clusterUuid!,
    if (gracefulDecommissionTimeout != null)
      'gracefulDecommissionTimeout': gracefulDecommissionTimeout!,
    if (nodePools != null) 'nodePools': nodePools!,
    if (parentOperationId != null) 'parentOperationId': parentOperationId!,
    if (requestId != null) 'requestId': requestId!,
  };
}

class RepairNodeGroupRequest {
  /// Name of instances to be repaired.
  ///
  /// These instances must belong to specified node pool.
  ///
  /// Required.
  core.List<core.String>? instanceNames;

  /// Repair action to take on specified resources of the node pool.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REPAIR_ACTION_UNSPECIFIED" : No action will be taken by default.
  /// - "REPLACE" : replace the specified list of nodes.
  core.String? repairAction;

  /// A unique ID used to identify the request.
  ///
  /// If the server receives two RepairNodeGroupRequest with the same ID, the
  /// second request is ignored and the first google.longrunning.Operation
  /// created and stored in the backend is returned.Recommendation: Set this
  /// value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  RepairNodeGroupRequest({
    this.instanceNames,
    this.repairAction,
    this.requestId,
  });

  RepairNodeGroupRequest.fromJson(core.Map json_)
    : this(
        instanceNames:
            (json_['instanceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        repairAction: json_['repairAction'] as core.String?,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (instanceNames != null) 'instanceNames': instanceNames!,
    if (repairAction != null) 'repairAction': repairAction!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Configuration for dependency repositories
class RepositoryConfig {
  /// Configuration for PyPi repository.
  ///
  /// Optional.
  PyPiRepositoryConfig? pypiRepositoryConfig;

  RepositoryConfig({this.pypiRepositoryConfig});

  RepositoryConfig.fromJson(core.Map json_)
    : this(
        pypiRepositoryConfig:
            json_.containsKey('pypiRepositoryConfig')
                ? PyPiRepositoryConfig.fromJson(
                  json_['pypiRepositoryConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pypiRepositoryConfig != null)
      'pypiRepositoryConfig': pypiRepositoryConfig!,
  };
}

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinity {
  /// Type of reservation to consume
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "NO_RESERVATION" : Do not consume from any allocated capacity.
  /// - "ANY_RESERVATION" : Consume any reservation available.
  /// - "SPECIFIC_RESERVATION" : Must consume from a specific reservation. Must
  /// specify key value fields for specifying the reservations.
  core.String? consumeReservationType;

  /// Corresponds to the label key of reservation resource.
  ///
  /// Optional.
  core.String? key;

  /// Corresponds to the label values of reservation resource.
  ///
  /// Optional.
  core.List<core.String>? values;

  ReservationAffinity({this.consumeReservationType, this.key, this.values});

  ReservationAffinity.fromJson(core.Map json_)
    : this(
        consumeReservationType: json_['consumeReservationType'] as core.String?,
        key: json_['key'] as core.String?,
        values:
            (json_['values'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consumeReservationType != null)
      'consumeReservationType': consumeReservationType!,
    if (key != null) 'key': key!,
    if (values != null) 'values': values!,
  };
}

/// A request to resize a node group.
class ResizeNodeGroupRequest {
  /// Timeout for graceful YARN decommissioning.
  ///
  /// Graceful decommissioning
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/scaling-clusters#graceful_decommissioning)
  /// allows the removal of nodes from the Compute Engine node group without
  /// interrupting jobs in progress. This timeout specifies how long to wait for
  /// jobs in progress to finish before forcefully removing nodes (and
  /// potentially interrupting jobs). Default timeout is 0 (for forceful
  /// decommission), and the maximum allowed timeout is 1 day. (see JSON
  /// representation of Duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).Only
  /// supported on Dataproc image versions 1.2 and higher.
  ///
  /// Optional.
  core.String? gracefulDecommissionTimeout;

  /// operation id of the parent operation sending the resize request
  ///
  /// Optional.
  core.String? parentOperationId;

  /// A unique ID used to identify the request.
  ///
  /// If the server receives two ResizeNodeGroupRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.ResizeNodeGroupRequests)
  /// with the same ID, the second request is ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.Recommendation: Set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  /// The number of running instances for the node group to maintain.
  ///
  /// The group adds or removes instances to maintain the number of instances
  /// specified by this parameter.
  ///
  /// Required.
  core.int? size;

  ResizeNodeGroupRequest({
    this.gracefulDecommissionTimeout,
    this.parentOperationId,
    this.requestId,
    this.size,
  });

  ResizeNodeGroupRequest.fromJson(core.Map json_)
    : this(
        gracefulDecommissionTimeout:
            json_['gracefulDecommissionTimeout'] as core.String?,
        parentOperationId: json_['parentOperationId'] as core.String?,
        requestId: json_['requestId'] as core.String?,
        size: json_['size'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gracefulDecommissionTimeout != null)
      'gracefulDecommissionTimeout': gracefulDecommissionTimeout!,
    if (parentOperationId != null) 'parentOperationId': parentOperationId!,
    if (requestId != null) 'requestId': requestId!,
    if (size != null) 'size': size!,
  };
}

class ResourceInformation {
  core.List<core.String>? addresses;
  core.String? name;

  ResourceInformation({this.addresses, this.name});

  ResourceInformation.fromJson(core.Map json_)
    : this(
        addresses:
            (json_['addresses'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (addresses != null) 'addresses': addresses!,
    if (name != null) 'name': name!,
  };
}

/// Resource profile that contains information about all the resources required
/// by executors and tasks.
class ResourceProfileInfo {
  core.Map<core.String, ExecutorResourceRequest>? executorResources;
  core.int? resourceProfileId;
  core.Map<core.String, TaskResourceRequest>? taskResources;

  ResourceProfileInfo({
    this.executorResources,
    this.resourceProfileId,
    this.taskResources,
  });

  ResourceProfileInfo.fromJson(core.Map json_)
    : this(
        executorResources: (json_['executorResources']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ExecutorResourceRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        resourceProfileId: json_['resourceProfileId'] as core.int?,
        taskResources: (json_['taskResources']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                TaskResourceRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executorResources != null) 'executorResources': executorResources!,
    if (resourceProfileId != null) 'resourceProfileId': resourceProfileId!,
    if (taskResources != null) 'taskResources': taskResources!,
  };
}

/// Runtime configuration for a workload.
class RuntimeConfig {
  /// Autotuning configuration of the workload.
  ///
  /// Optional.
  AutotuningConfig? autotuningConfig;

  /// Cohort identifier.
  ///
  /// Identifies families of the workloads having the same shape, e.g. daily ETL
  /// jobs.
  ///
  /// Optional.
  core.String? cohort;

  /// Optional custom container image for the job runtime environment.
  ///
  /// If not specified, a default container image will be used.
  ///
  /// Optional.
  core.String? containerImage;

  /// A mapping of property names to values, which are used to configure
  /// workload execution.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// Dependency repository configuration.
  ///
  /// Optional.
  RepositoryConfig? repositoryConfig;

  /// Version of the batch runtime.
  ///
  /// Optional.
  core.String? version;

  RuntimeConfig({
    this.autotuningConfig,
    this.cohort,
    this.containerImage,
    this.properties,
    this.repositoryConfig,
    this.version,
  });

  RuntimeConfig.fromJson(core.Map json_)
    : this(
        autotuningConfig:
            json_.containsKey('autotuningConfig')
                ? AutotuningConfig.fromJson(
                  json_['autotuningConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cohort: json_['cohort'] as core.String?,
        containerImage: json_['containerImage'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        repositoryConfig:
            json_.containsKey('repositoryConfig')
                ? RepositoryConfig.fromJson(
                  json_['repositoryConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autotuningConfig != null) 'autotuningConfig': autotuningConfig!,
    if (cohort != null) 'cohort': cohort!,
    if (containerImage != null) 'containerImage': containerImage!,
    if (properties != null) 'properties': properties!,
    if (repositoryConfig != null) 'repositoryConfig': repositoryConfig!,
    if (version != null) 'version': version!,
  };
}

/// Runtime information about workload execution.
class RuntimeInfo {
  /// Approximate workload resource usage, calculated when the workload
  /// completes (see Dataproc Serverless pricing
  /// (https://cloud.google.com/dataproc-serverless/pricing)).Note: This metric
  /// calculation may change in the future, for example, to capture cumulative
  /// workload resource consumption during workload execution (see the Dataproc
  /// Serverless release notes
  /// (https://cloud.google.com/dataproc-serverless/docs/release-notes) for
  /// announcements, changes, fixes and other Dataproc developments).
  ///
  /// Output only.
  UsageMetrics? approximateUsage;

  /// Snapshot of current workload resource usage.
  ///
  /// Output only.
  UsageSnapshot? currentUsage;

  /// A URI pointing to the location of the diagnostics tarball.
  ///
  /// Output only.
  core.String? diagnosticOutputUri;

  /// Map of remote access endpoints (such as web interfaces and APIs) to their
  /// URIs.
  ///
  /// Output only.
  core.Map<core.String, core.String>? endpoints;

  /// A URI pointing to the location of the stdout and stderr of the workload.
  ///
  /// Output only.
  core.String? outputUri;

  /// Properties of the workload organized by origin.
  ///
  /// Optional.
  PropertiesInfo? propertiesInfo;

  RuntimeInfo({
    this.approximateUsage,
    this.currentUsage,
    this.diagnosticOutputUri,
    this.endpoints,
    this.outputUri,
    this.propertiesInfo,
  });

  RuntimeInfo.fromJson(core.Map json_)
    : this(
        approximateUsage:
            json_.containsKey('approximateUsage')
                ? UsageMetrics.fromJson(
                  json_['approximateUsage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        currentUsage:
            json_.containsKey('currentUsage')
                ? UsageSnapshot.fromJson(
                  json_['currentUsage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        diagnosticOutputUri: json_['diagnosticOutputUri'] as core.String?,
        endpoints: (json_['endpoints'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        outputUri: json_['outputUri'] as core.String?,
        propertiesInfo:
            json_.containsKey('propertiesInfo')
                ? PropertiesInfo.fromJson(
                  json_['propertiesInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (approximateUsage != null) 'approximateUsage': approximateUsage!,
    if (currentUsage != null) 'currentUsage': currentUsage!,
    if (diagnosticOutputUri != null)
      'diagnosticOutputUri': diagnosticOutputUri!,
    if (endpoints != null) 'endpoints': endpoints!,
    if (outputUri != null) 'outputUri': outputUri!,
    if (propertiesInfo != null) 'propertiesInfo': propertiesInfo!,
  };
}

/// List of Executors associated with a Spark Application Stage.
class SearchSessionSparkApplicationExecutorStageSummaryResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSessionSparkApplicationExecutorStageSummaryRequest.
  core.String? nextPageToken;

  /// Details about executors used by the application stage.
  core.List<ExecutorStageSummary>? sparkApplicationStageExecutors;

  SearchSessionSparkApplicationExecutorStageSummaryResponse({
    this.nextPageToken,
    this.sparkApplicationStageExecutors,
  });

  SearchSessionSparkApplicationExecutorStageSummaryResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationStageExecutors:
            (json_['sparkApplicationStageExecutors'] as core.List?)
                ?.map(
                  (value) => ExecutorStageSummary.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationStageExecutors != null)
      'sparkApplicationStageExecutors': sparkApplicationStageExecutors!,
  };
}

/// List of Executors associated with a Spark Application.
class SearchSessionSparkApplicationExecutorsResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSessionSparkApplicationExecutorsRequest.
  core.String? nextPageToken;

  /// Details about executors used by the application.
  core.List<ExecutorSummary>? sparkApplicationExecutors;

  SearchSessionSparkApplicationExecutorsResponse({
    this.nextPageToken,
    this.sparkApplicationExecutors,
  });

  SearchSessionSparkApplicationExecutorsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationExecutors:
            (json_['sparkApplicationExecutors'] as core.List?)
                ?.map(
                  (value) => ExecutorSummary.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationExecutors != null)
      'sparkApplicationExecutors': sparkApplicationExecutors!,
  };
}

/// A list of Jobs associated with a Spark Application.
class SearchSessionSparkApplicationJobsResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSessionSparkApplicationJobsRequest.
  core.String? nextPageToken;

  /// Data corresponding to a spark job.
  ///
  /// Output only.
  core.List<JobData>? sparkApplicationJobs;

  SearchSessionSparkApplicationJobsResponse({
    this.nextPageToken,
    this.sparkApplicationJobs,
  });

  SearchSessionSparkApplicationJobsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationJobs:
            (json_['sparkApplicationJobs'] as core.List?)
                ?.map(
                  (value) => JobData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationJobs != null)
      'sparkApplicationJobs': sparkApplicationJobs!,
  };
}

/// List of all queries for a Spark Application.
class SearchSessionSparkApplicationSqlQueriesResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSessionSparkApplicationSqlQueriesRequest.
  core.String? nextPageToken;

  /// SQL Execution Data
  ///
  /// Output only.
  core.List<SqlExecutionUiData>? sparkApplicationSqlQueries;

  SearchSessionSparkApplicationSqlQueriesResponse({
    this.nextPageToken,
    this.sparkApplicationSqlQueries,
  });

  SearchSessionSparkApplicationSqlQueriesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationSqlQueries:
            (json_['sparkApplicationSqlQueries'] as core.List?)
                ?.map(
                  (value) => SqlExecutionUiData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationSqlQueries != null)
      'sparkApplicationSqlQueries': sparkApplicationSqlQueries!,
  };
}

/// List of tasks for a stage of a Spark Application
class SearchSessionSparkApplicationStageAttemptTasksResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSessionSparkApplicationStageAttemptTasksRequest.
  core.String? nextPageToken;

  /// Data corresponding to tasks created by spark.
  ///
  /// Output only.
  core.List<TaskData>? sparkApplicationStageAttemptTasks;

  SearchSessionSparkApplicationStageAttemptTasksResponse({
    this.nextPageToken,
    this.sparkApplicationStageAttemptTasks,
  });

  SearchSessionSparkApplicationStageAttemptTasksResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationStageAttemptTasks:
            (json_['sparkApplicationStageAttemptTasks'] as core.List?)
                ?.map(
                  (value) => TaskData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationStageAttemptTasks != null)
      'sparkApplicationStageAttemptTasks': sparkApplicationStageAttemptTasks!,
  };
}

/// A list of Stage Attempts for a Stage of a Spark Application.
class SearchSessionSparkApplicationStageAttemptsResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSessionSparkApplicationStageAttemptsRequest.
  core.String? nextPageToken;

  /// Data corresponding to a stage attempts
  ///
  /// Output only.
  core.List<StageData>? sparkApplicationStageAttempts;

  SearchSessionSparkApplicationStageAttemptsResponse({
    this.nextPageToken,
    this.sparkApplicationStageAttempts,
  });

  SearchSessionSparkApplicationStageAttemptsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationStageAttempts:
            (json_['sparkApplicationStageAttempts'] as core.List?)
                ?.map(
                  (value) => StageData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationStageAttempts != null)
      'sparkApplicationStageAttempts': sparkApplicationStageAttempts!,
  };
}

/// A list of stages associated with a Spark Application.
class SearchSessionSparkApplicationStagesResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSessionSparkApplicationStages.
  core.String? nextPageToken;

  /// Data corresponding to a stage.
  ///
  /// Output only.
  core.List<StageData>? sparkApplicationStages;

  SearchSessionSparkApplicationStagesResponse({
    this.nextPageToken,
    this.sparkApplicationStages,
  });

  SearchSessionSparkApplicationStagesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationStages:
            (json_['sparkApplicationStages'] as core.List?)
                ?.map(
                  (value) => StageData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationStages != null)
      'sparkApplicationStages': sparkApplicationStages!,
  };
}

/// A list of summary of Spark Applications
class SearchSessionSparkApplicationsResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSessionSparkApplicationsRequest.
  core.String? nextPageToken;

  /// High level information corresponding to an application.
  ///
  /// Output only.
  core.List<SparkApplication>? sparkApplications;

  SearchSessionSparkApplicationsResponse({
    this.nextPageToken,
    this.sparkApplications,
  });

  SearchSessionSparkApplicationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplications:
            (json_['sparkApplications'] as core.List?)
                ?.map(
                  (value) => SparkApplication.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplications != null) 'sparkApplications': sparkApplications!,
  };
}

/// List of Executors associated with a Spark Application Stage.
class SearchSparkApplicationExecutorStageSummaryResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSparkApplicationExecutorsListRequest.
  core.String? nextPageToken;

  /// Details about executors used by the application stage.
  core.List<ExecutorStageSummary>? sparkApplicationStageExecutors;

  SearchSparkApplicationExecutorStageSummaryResponse({
    this.nextPageToken,
    this.sparkApplicationStageExecutors,
  });

  SearchSparkApplicationExecutorStageSummaryResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationStageExecutors:
            (json_['sparkApplicationStageExecutors'] as core.List?)
                ?.map(
                  (value) => ExecutorStageSummary.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationStageExecutors != null)
      'sparkApplicationStageExecutors': sparkApplicationStageExecutors!,
  };
}

/// List of Executors associated with a Spark Application.
class SearchSparkApplicationExecutorsResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSparkApplicationExecutorsListRequest.
  core.String? nextPageToken;

  /// Details about executors used by the application.
  core.List<ExecutorSummary>? sparkApplicationExecutors;

  SearchSparkApplicationExecutorsResponse({
    this.nextPageToken,
    this.sparkApplicationExecutors,
  });

  SearchSparkApplicationExecutorsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationExecutors:
            (json_['sparkApplicationExecutors'] as core.List?)
                ?.map(
                  (value) => ExecutorSummary.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationExecutors != null)
      'sparkApplicationExecutors': sparkApplicationExecutors!,
  };
}

/// A list of Jobs associated with a Spark Application.
class SearchSparkApplicationJobsResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSparkApplicationJobsRequest.
  core.String? nextPageToken;

  /// Data corresponding to a spark job.
  ///
  /// Output only.
  core.List<JobData>? sparkApplicationJobs;

  SearchSparkApplicationJobsResponse({
    this.nextPageToken,
    this.sparkApplicationJobs,
  });

  SearchSparkApplicationJobsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationJobs:
            (json_['sparkApplicationJobs'] as core.List?)
                ?.map(
                  (value) => JobData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationJobs != null)
      'sparkApplicationJobs': sparkApplicationJobs!,
  };
}

/// List of all queries for a Spark Application.
class SearchSparkApplicationSqlQueriesResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSparkApplicationSqlQueriesRequest.
  core.String? nextPageToken;

  /// SQL Execution Data
  ///
  /// Output only.
  core.List<SqlExecutionUiData>? sparkApplicationSqlQueries;

  SearchSparkApplicationSqlQueriesResponse({
    this.nextPageToken,
    this.sparkApplicationSqlQueries,
  });

  SearchSparkApplicationSqlQueriesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationSqlQueries:
            (json_['sparkApplicationSqlQueries'] as core.List?)
                ?.map(
                  (value) => SqlExecutionUiData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationSqlQueries != null)
      'sparkApplicationSqlQueries': sparkApplicationSqlQueries!,
  };
}

/// List of tasks for a stage of a Spark Application
class SearchSparkApplicationStageAttemptTasksResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent ListSparkApplicationStageAttemptTasksRequest.
  core.String? nextPageToken;

  /// Data corresponding to tasks created by spark.
  ///
  /// Output only.
  core.List<TaskData>? sparkApplicationStageAttemptTasks;

  SearchSparkApplicationStageAttemptTasksResponse({
    this.nextPageToken,
    this.sparkApplicationStageAttemptTasks,
  });

  SearchSparkApplicationStageAttemptTasksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationStageAttemptTasks:
            (json_['sparkApplicationStageAttemptTasks'] as core.List?)
                ?.map(
                  (value) => TaskData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationStageAttemptTasks != null)
      'sparkApplicationStageAttemptTasks': sparkApplicationStageAttemptTasks!,
  };
}

/// A list of Stage Attempts for a Stage of a Spark Application.
class SearchSparkApplicationStageAttemptsResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent ListSparkApplicationStageAttemptsRequest.
  core.String? nextPageToken;

  /// Data corresponding to a stage attempts
  ///
  /// Output only.
  core.List<StageData>? sparkApplicationStageAttempts;

  SearchSparkApplicationStageAttemptsResponse({
    this.nextPageToken,
    this.sparkApplicationStageAttempts,
  });

  SearchSparkApplicationStageAttemptsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationStageAttempts:
            (json_['sparkApplicationStageAttempts'] as core.List?)
                ?.map(
                  (value) => StageData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationStageAttempts != null)
      'sparkApplicationStageAttempts': sparkApplicationStageAttempts!,
  };
}

/// A list of stages associated with a Spark Application.
class SearchSparkApplicationStagesResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSparkApplicationStages.
  core.String? nextPageToken;

  /// Data corresponding to a stage.
  ///
  /// Output only.
  core.List<StageData>? sparkApplicationStages;

  SearchSparkApplicationStagesResponse({
    this.nextPageToken,
    this.sparkApplicationStages,
  });

  SearchSparkApplicationStagesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplicationStages:
            (json_['sparkApplicationStages'] as core.List?)
                ?.map(
                  (value) => StageData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplicationStages != null)
      'sparkApplicationStages': sparkApplicationStages!,
  };
}

/// A list of summary of Spark Applications
class SearchSparkApplicationsResponse {
  /// This token is included in the response if there are more results to fetch.
  ///
  /// To fetch additional results, provide this value as the page_token in a
  /// subsequent SearchSparkApplicationsRequest.
  core.String? nextPageToken;

  /// High level information corresponding to an application.
  ///
  /// Output only.
  core.List<SparkApplication>? sparkApplications;

  SearchSparkApplicationsResponse({this.nextPageToken, this.sparkApplications});

  SearchSparkApplicationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sparkApplications:
            (json_['sparkApplications'] as core.List?)
                ?.map(
                  (value) => SparkApplication.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sparkApplications != null) 'sparkApplications': sparkApplications!,
  };
}

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfig {
  /// Identity related configuration, including service account based secure
  /// multi-tenancy user mappings.
  ///
  /// Optional.
  IdentityConfig? identityConfig;

  /// Kerberos related configuration.
  ///
  /// Optional.
  KerberosConfig? kerberosConfig;

  SecurityConfig({this.identityConfig, this.kerberosConfig});

  SecurityConfig.fromJson(core.Map json_)
    : this(
        identityConfig:
            json_.containsKey('identityConfig')
                ? IdentityConfig.fromJson(
                  json_['identityConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kerberosConfig:
            json_.containsKey('kerberosConfig')
                ? KerberosConfig.fromJson(
                  json_['kerberosConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (identityConfig != null) 'identityConfig': identityConfig!,
    if (kerberosConfig != null) 'kerberosConfig': kerberosConfig!,
  };
}

/// A representation of a session.
class Session {
  /// The time when the session was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The email address of the user who created the session.
  ///
  /// Output only.
  core.String? creator;

  /// Environment configuration for the session execution.
  ///
  /// Optional.
  EnvironmentConfig? environmentConfig;

  /// Jupyter session config.
  ///
  /// Optional.
  JupyterConfig? jupyterSession;

  /// The labels to associate with the session.
  ///
  /// Label keys must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if
  /// present, must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
  /// associated with a session.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the session.
  core.String? name;

  /// Runtime configuration for the session execution.
  ///
  /// Optional.
  RuntimeConfig? runtimeConfig;

  /// Runtime information about session execution.
  ///
  /// Output only.
  RuntimeInfo? runtimeInfo;

  /// The session template used by the session.Only resource names, including
  /// project ID and location, are valid.Example: *
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/locations/\[dataproc_region\]/sessionTemplates/\[template_id\]
  /// *
  /// projects/\[project_id\]/locations/\[dataproc_region\]/sessionTemplates/\[template_id\]The
  /// template must be in the same project and Dataproc region as the session.
  ///
  /// Optional.
  core.String? sessionTemplate;

  /// Spark connect session config.
  ///
  /// Optional.
  SparkConnectConfig? sparkConnectSession;

  /// A state of the session.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The session state is unknown.
  /// - "CREATING" : The session is created prior to running.
  /// - "ACTIVE" : The session is running.
  /// - "TERMINATING" : The session is terminating.
  /// - "TERMINATED" : The session is terminated successfully.
  /// - "FAILED" : The session is no longer running due to an error.
  core.String? state;

  /// Historical state information for the session.
  ///
  /// Output only.
  core.List<SessionStateHistory>? stateHistory;

  /// Session state details, such as the failure description if the state is
  /// FAILED.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The time when the session entered the current state.
  ///
  /// Output only.
  core.String? stateTime;

  /// The email address of the user who owns the session.
  ///
  /// Optional.
  core.String? user;

  /// A session UUID (Unique Universal Identifier).
  ///
  /// The service generates this value when it creates the session.
  ///
  /// Output only.
  core.String? uuid;

  Session({
    this.createTime,
    this.creator,
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.name,
    this.runtimeConfig,
    this.runtimeInfo,
    this.sessionTemplate,
    this.sparkConnectSession,
    this.state,
    this.stateHistory,
    this.stateMessage,
    this.stateTime,
    this.user,
    this.uuid,
  });

  Session.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        environmentConfig:
            json_.containsKey('environmentConfig')
                ? EnvironmentConfig.fromJson(
                  json_['environmentConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        jupyterSession:
            json_.containsKey('jupyterSession')
                ? JupyterConfig.fromJson(
                  json_['jupyterSession']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        runtimeConfig:
            json_.containsKey('runtimeConfig')
                ? RuntimeConfig.fromJson(
                  json_['runtimeConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        runtimeInfo:
            json_.containsKey('runtimeInfo')
                ? RuntimeInfo.fromJson(
                  json_['runtimeInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sessionTemplate: json_['sessionTemplate'] as core.String?,
        sparkConnectSession:
            json_.containsKey('sparkConnectSession')
                ? SparkConnectConfig.fromJson(
                  json_['sparkConnectSession']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        stateHistory:
            (json_['stateHistory'] as core.List?)
                ?.map(
                  (value) => SessionStateHistory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        stateMessage: json_['stateMessage'] as core.String?,
        stateTime: json_['stateTime'] as core.String?,
        user: json_['user'] as core.String?,
        uuid: json_['uuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (environmentConfig != null) 'environmentConfig': environmentConfig!,
    if (jupyterSession != null) 'jupyterSession': jupyterSession!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (runtimeConfig != null) 'runtimeConfig': runtimeConfig!,
    if (runtimeInfo != null) 'runtimeInfo': runtimeInfo!,
    if (sessionTemplate != null) 'sessionTemplate': sessionTemplate!,
    if (sparkConnectSession != null)
      'sparkConnectSession': sparkConnectSession!,
    if (state != null) 'state': state!,
    if (stateHistory != null) 'stateHistory': stateHistory!,
    if (stateMessage != null) 'stateMessage': stateMessage!,
    if (stateTime != null) 'stateTime': stateTime!,
    if (user != null) 'user': user!,
    if (uuid != null) 'uuid': uuid!,
  };
}

/// Historical state information.
class SessionStateHistory {
  /// The state of the session at this point in the session history.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The session state is unknown.
  /// - "CREATING" : The session is created prior to running.
  /// - "ACTIVE" : The session is running.
  /// - "TERMINATING" : The session is terminating.
  /// - "TERMINATED" : The session is terminated successfully.
  /// - "FAILED" : The session is no longer running due to an error.
  core.String? state;

  /// Details about the state at this point in the session history.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The time when the session entered the historical state.
  ///
  /// Output only.
  core.String? stateStartTime;

  SessionStateHistory({this.state, this.stateMessage, this.stateStartTime});

  SessionStateHistory.fromJson(core.Map json_)
    : this(
        state: json_['state'] as core.String?,
        stateMessage: json_['stateMessage'] as core.String?,
        stateStartTime: json_['stateStartTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (state != null) 'state': state!,
    if (stateMessage != null) 'stateMessage': stateMessage!,
    if (stateStartTime != null) 'stateStartTime': stateStartTime!,
  };
}

/// A representation of a session template.
class SessionTemplate {
  /// The time when the template was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The email address of the user who created the template.
  ///
  /// Output only.
  core.String? creator;

  /// Brief description of the template.
  ///
  /// Optional.
  core.String? description;

  /// Environment configuration for session execution.
  ///
  /// Optional.
  EnvironmentConfig? environmentConfig;

  /// Jupyter session config.
  ///
  /// Optional.
  JupyterConfig? jupyterSession;

  /// Labels to associate with sessions created using this template.
  ///
  /// Label keys must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if
  /// present, must contain 1 to 63 characters and conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
  /// associated with a session.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the session template.
  ///
  /// Required.
  core.String? name;

  /// Runtime configuration for session execution.
  ///
  /// Optional.
  RuntimeConfig? runtimeConfig;

  /// Spark connect session config.
  ///
  /// Optional.
  SparkConnectConfig? sparkConnectSession;

  /// The time the template was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// A session template UUID (Unique Universal Identifier).
  ///
  /// The service generates this value when it creates the session template.
  ///
  /// Output only.
  core.String? uuid;

  SessionTemplate({
    this.createTime,
    this.creator,
    this.description,
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.name,
    this.runtimeConfig,
    this.sparkConnectSession,
    this.updateTime,
    this.uuid,
  });

  SessionTemplate.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        description: json_['description'] as core.String?,
        environmentConfig:
            json_.containsKey('environmentConfig')
                ? EnvironmentConfig.fromJson(
                  json_['environmentConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        jupyterSession:
            json_.containsKey('jupyterSession')
                ? JupyterConfig.fromJson(
                  json_['jupyterSession']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        runtimeConfig:
            json_.containsKey('runtimeConfig')
                ? RuntimeConfig.fromJson(
                  json_['runtimeConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkConnectSession:
            json_.containsKey('sparkConnectSession')
                ? SparkConnectConfig.fromJson(
                  json_['sparkConnectSession']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        uuid: json_['uuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (description != null) 'description': description!,
    if (environmentConfig != null) 'environmentConfig': environmentConfig!,
    if (jupyterSession != null) 'jupyterSession': jupyterSession!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (runtimeConfig != null) 'runtimeConfig': runtimeConfig!,
    if (sparkConnectSession != null)
      'sparkConnectSession': sparkConnectSession!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (uuid != null) 'uuid': uuid!,
  };
}

/// Request message for SetIamPolicy method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the resource.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  SetIamPolicyRequest({this.policy});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
  };
}

/// Shielded Instance Config for clusters using Compute Engine Shielded VMs
/// (https://cloud.google.com/security/shielded-cloud/shielded-vm).
class ShieldedInstanceConfig {
  /// Defines whether instances have integrity monitoring enabled.
  ///
  /// Optional.
  core.bool? enableIntegrityMonitoring;

  /// Defines whether instances have Secure Boot enabled.
  ///
  /// Optional.
  core.bool? enableSecureBoot;

  /// Defines whether instances have the vTPM enabled.
  ///
  /// Optional.
  core.bool? enableVtpm;

  ShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  ShieldedInstanceConfig.fromJson(core.Map json_)
    : this(
        enableIntegrityMonitoring:
            json_['enableIntegrityMonitoring'] as core.bool?,
        enableSecureBoot: json_['enableSecureBoot'] as core.bool?,
        enableVtpm: json_['enableVtpm'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enableIntegrityMonitoring != null)
      'enableIntegrityMonitoring': enableIntegrityMonitoring!,
    if (enableSecureBoot != null) 'enableSecureBoot': enableSecureBoot!,
    if (enableVtpm != null) 'enableVtpm': enableVtpm!,
  };
}

typedef ShufflePushReadMetrics = $ShufflePushReadMetrics;

class ShufflePushReadQuantileMetrics {
  Quantiles? corruptMergedBlockChunks;
  Quantiles? localMergedBlocksFetched;
  Quantiles? localMergedBytesRead;
  Quantiles? localMergedChunksFetched;
  Quantiles? mergedFetchFallbackCount;
  Quantiles? remoteMergedBlocksFetched;
  Quantiles? remoteMergedBytesRead;
  Quantiles? remoteMergedChunksFetched;
  Quantiles? remoteMergedReqsDuration;

  ShufflePushReadQuantileMetrics({
    this.corruptMergedBlockChunks,
    this.localMergedBlocksFetched,
    this.localMergedBytesRead,
    this.localMergedChunksFetched,
    this.mergedFetchFallbackCount,
    this.remoteMergedBlocksFetched,
    this.remoteMergedBytesRead,
    this.remoteMergedChunksFetched,
    this.remoteMergedReqsDuration,
  });

  ShufflePushReadQuantileMetrics.fromJson(core.Map json_)
    : this(
        corruptMergedBlockChunks:
            json_.containsKey('corruptMergedBlockChunks')
                ? Quantiles.fromJson(
                  json_['corruptMergedBlockChunks']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        localMergedBlocksFetched:
            json_.containsKey('localMergedBlocksFetched')
                ? Quantiles.fromJson(
                  json_['localMergedBlocksFetched']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        localMergedBytesRead:
            json_.containsKey('localMergedBytesRead')
                ? Quantiles.fromJson(
                  json_['localMergedBytesRead']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        localMergedChunksFetched:
            json_.containsKey('localMergedChunksFetched')
                ? Quantiles.fromJson(
                  json_['localMergedChunksFetched']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        mergedFetchFallbackCount:
            json_.containsKey('mergedFetchFallbackCount')
                ? Quantiles.fromJson(
                  json_['mergedFetchFallbackCount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteMergedBlocksFetched:
            json_.containsKey('remoteMergedBlocksFetched')
                ? Quantiles.fromJson(
                  json_['remoteMergedBlocksFetched']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteMergedBytesRead:
            json_.containsKey('remoteMergedBytesRead')
                ? Quantiles.fromJson(
                  json_['remoteMergedBytesRead']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteMergedChunksFetched:
            json_.containsKey('remoteMergedChunksFetched')
                ? Quantiles.fromJson(
                  json_['remoteMergedChunksFetched']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteMergedReqsDuration:
            json_.containsKey('remoteMergedReqsDuration')
                ? Quantiles.fromJson(
                  json_['remoteMergedReqsDuration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (corruptMergedBlockChunks != null)
      'corruptMergedBlockChunks': corruptMergedBlockChunks!,
    if (localMergedBlocksFetched != null)
      'localMergedBlocksFetched': localMergedBlocksFetched!,
    if (localMergedBytesRead != null)
      'localMergedBytesRead': localMergedBytesRead!,
    if (localMergedChunksFetched != null)
      'localMergedChunksFetched': localMergedChunksFetched!,
    if (mergedFetchFallbackCount != null)
      'mergedFetchFallbackCount': mergedFetchFallbackCount!,
    if (remoteMergedBlocksFetched != null)
      'remoteMergedBlocksFetched': remoteMergedBlocksFetched!,
    if (remoteMergedBytesRead != null)
      'remoteMergedBytesRead': remoteMergedBytesRead!,
    if (remoteMergedChunksFetched != null)
      'remoteMergedChunksFetched': remoteMergedChunksFetched!,
    if (remoteMergedReqsDuration != null)
      'remoteMergedReqsDuration': remoteMergedReqsDuration!,
  };
}

/// Shuffle data read by the task.
class ShuffleReadMetrics {
  core.String? fetchWaitTimeMillis;
  core.String? localBlocksFetched;
  core.String? localBytesRead;
  core.String? recordsRead;
  core.String? remoteBlocksFetched;
  core.String? remoteBytesRead;
  core.String? remoteBytesReadToDisk;
  core.String? remoteReqsDuration;
  ShufflePushReadMetrics? shufflePushReadMetrics;

  ShuffleReadMetrics({
    this.fetchWaitTimeMillis,
    this.localBlocksFetched,
    this.localBytesRead,
    this.recordsRead,
    this.remoteBlocksFetched,
    this.remoteBytesRead,
    this.remoteBytesReadToDisk,
    this.remoteReqsDuration,
    this.shufflePushReadMetrics,
  });

  ShuffleReadMetrics.fromJson(core.Map json_)
    : this(
        fetchWaitTimeMillis: json_['fetchWaitTimeMillis'] as core.String?,
        localBlocksFetched: json_['localBlocksFetched'] as core.String?,
        localBytesRead: json_['localBytesRead'] as core.String?,
        recordsRead: json_['recordsRead'] as core.String?,
        remoteBlocksFetched: json_['remoteBlocksFetched'] as core.String?,
        remoteBytesRead: json_['remoteBytesRead'] as core.String?,
        remoteBytesReadToDisk: json_['remoteBytesReadToDisk'] as core.String?,
        remoteReqsDuration: json_['remoteReqsDuration'] as core.String?,
        shufflePushReadMetrics:
            json_.containsKey('shufflePushReadMetrics')
                ? ShufflePushReadMetrics.fromJson(
                  json_['shufflePushReadMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fetchWaitTimeMillis != null)
      'fetchWaitTimeMillis': fetchWaitTimeMillis!,
    if (localBlocksFetched != null) 'localBlocksFetched': localBlocksFetched!,
    if (localBytesRead != null) 'localBytesRead': localBytesRead!,
    if (recordsRead != null) 'recordsRead': recordsRead!,
    if (remoteBlocksFetched != null)
      'remoteBlocksFetched': remoteBlocksFetched!,
    if (remoteBytesRead != null) 'remoteBytesRead': remoteBytesRead!,
    if (remoteBytesReadToDisk != null)
      'remoteBytesReadToDisk': remoteBytesReadToDisk!,
    if (remoteReqsDuration != null) 'remoteReqsDuration': remoteReqsDuration!,
    if (shufflePushReadMetrics != null)
      'shufflePushReadMetrics': shufflePushReadMetrics!,
  };
}

class ShuffleReadQuantileMetrics {
  Quantiles? fetchWaitTimeMillis;
  Quantiles? localBlocksFetched;
  Quantiles? readBytes;
  Quantiles? readRecords;
  Quantiles? remoteBlocksFetched;
  Quantiles? remoteBytesRead;
  Quantiles? remoteBytesReadToDisk;
  Quantiles? remoteReqsDuration;
  ShufflePushReadQuantileMetrics? shufflePushReadMetrics;
  Quantiles? totalBlocksFetched;

  ShuffleReadQuantileMetrics({
    this.fetchWaitTimeMillis,
    this.localBlocksFetched,
    this.readBytes,
    this.readRecords,
    this.remoteBlocksFetched,
    this.remoteBytesRead,
    this.remoteBytesReadToDisk,
    this.remoteReqsDuration,
    this.shufflePushReadMetrics,
    this.totalBlocksFetched,
  });

  ShuffleReadQuantileMetrics.fromJson(core.Map json_)
    : this(
        fetchWaitTimeMillis:
            json_.containsKey('fetchWaitTimeMillis')
                ? Quantiles.fromJson(
                  json_['fetchWaitTimeMillis']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        localBlocksFetched:
            json_.containsKey('localBlocksFetched')
                ? Quantiles.fromJson(
                  json_['localBlocksFetched']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        readBytes:
            json_.containsKey('readBytes')
                ? Quantiles.fromJson(
                  json_['readBytes'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readRecords:
            json_.containsKey('readRecords')
                ? Quantiles.fromJson(
                  json_['readRecords'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteBlocksFetched:
            json_.containsKey('remoteBlocksFetched')
                ? Quantiles.fromJson(
                  json_['remoteBlocksFetched']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteBytesRead:
            json_.containsKey('remoteBytesRead')
                ? Quantiles.fromJson(
                  json_['remoteBytesRead']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteBytesReadToDisk:
            json_.containsKey('remoteBytesReadToDisk')
                ? Quantiles.fromJson(
                  json_['remoteBytesReadToDisk']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteReqsDuration:
            json_.containsKey('remoteReqsDuration')
                ? Quantiles.fromJson(
                  json_['remoteReqsDuration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        shufflePushReadMetrics:
            json_.containsKey('shufflePushReadMetrics')
                ? ShufflePushReadQuantileMetrics.fromJson(
                  json_['shufflePushReadMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalBlocksFetched:
            json_.containsKey('totalBlocksFetched')
                ? Quantiles.fromJson(
                  json_['totalBlocksFetched']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fetchWaitTimeMillis != null)
      'fetchWaitTimeMillis': fetchWaitTimeMillis!,
    if (localBlocksFetched != null) 'localBlocksFetched': localBlocksFetched!,
    if (readBytes != null) 'readBytes': readBytes!,
    if (readRecords != null) 'readRecords': readRecords!,
    if (remoteBlocksFetched != null)
      'remoteBlocksFetched': remoteBlocksFetched!,
    if (remoteBytesRead != null) 'remoteBytesRead': remoteBytesRead!,
    if (remoteBytesReadToDisk != null)
      'remoteBytesReadToDisk': remoteBytesReadToDisk!,
    if (remoteReqsDuration != null) 'remoteReqsDuration': remoteReqsDuration!,
    if (shufflePushReadMetrics != null)
      'shufflePushReadMetrics': shufflePushReadMetrics!,
    if (totalBlocksFetched != null) 'totalBlocksFetched': totalBlocksFetched!,
  };
}

/// Shuffle data written by task.
typedef ShuffleWriteMetrics = $ShuffleWriteMetrics;

class ShuffleWriteQuantileMetrics {
  Quantiles? writeBytes;
  Quantiles? writeRecords;
  Quantiles? writeTimeNanos;

  ShuffleWriteQuantileMetrics({
    this.writeBytes,
    this.writeRecords,
    this.writeTimeNanos,
  });

  ShuffleWriteQuantileMetrics.fromJson(core.Map json_)
    : this(
        writeBytes:
            json_.containsKey('writeBytes')
                ? Quantiles.fromJson(
                  json_['writeBytes'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        writeRecords:
            json_.containsKey('writeRecords')
                ? Quantiles.fromJson(
                  json_['writeRecords'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        writeTimeNanos:
            json_.containsKey('writeTimeNanos')
                ? Quantiles.fromJson(
                  json_['writeTimeNanos']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (writeBytes != null) 'writeBytes': writeBytes!,
    if (writeRecords != null) 'writeRecords': writeRecords!,
    if (writeTimeNanos != null) 'writeTimeNanos': writeTimeNanos!,
  };
}

class SinkProgress {
  core.String? description;
  core.Map<core.String, core.String>? metrics;
  core.String? numOutputRows;

  SinkProgress({this.description, this.metrics, this.numOutputRows});

  SinkProgress.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        metrics: (json_['metrics'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        numOutputRows: json_['numOutputRows'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (metrics != null) 'metrics': metrics!,
    if (numOutputRows != null) 'numOutputRows': numOutputRows!,
  };
}

/// Specifies the selection and config of software inside the cluster.
class SoftwareConfig {
  /// The version of software inside the cluster.
  ///
  /// It must be one of the supported Dataproc Versions
  /// (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported-dataproc-image-versions),
  /// such as "1.2" (including a subminor version, such as "1.2.29"), or the
  /// "preview" version
  /// (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions).
  /// If unspecified, it defaults to the latest Debian version.
  ///
  /// Optional.
  core.String? imageVersion;

  /// The set of components to activate on the cluster.
  ///
  /// Optional.
  core.List<core.String>? optionalComponents;

  /// The properties to set on daemon config files.Property keys are specified
  /// in prefix:property format, for example core:hadoop.tmp.dir.
  ///
  /// The following are supported prefixes and their mappings:
  /// capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp:
  /// distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred:
  /// mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn:
  /// yarn-site.xmlFor more information, see Cluster properties
  /// (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  SoftwareConfig({this.imageVersion, this.optionalComponents, this.properties});

  SoftwareConfig.fromJson(core.Map json_)
    : this(
        imageVersion: json_['imageVersion'] as core.String?,
        optionalComponents:
            (json_['optionalComponents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageVersion != null) 'imageVersion': imageVersion!,
    if (optionalComponents != null) 'optionalComponents': optionalComponents!,
    if (properties != null) 'properties': properties!,
  };
}

class SourceProgress {
  core.String? description;
  core.String? endOffset;
  core.double? inputRowsPerSecond;
  core.String? latestOffset;
  core.Map<core.String, core.String>? metrics;
  core.String? numInputRows;
  core.double? processedRowsPerSecond;
  core.String? startOffset;

  SourceProgress({
    this.description,
    this.endOffset,
    this.inputRowsPerSecond,
    this.latestOffset,
    this.metrics,
    this.numInputRows,
    this.processedRowsPerSecond,
    this.startOffset,
  });

  SourceProgress.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        endOffset: json_['endOffset'] as core.String?,
        inputRowsPerSecond:
            (json_['inputRowsPerSecond'] as core.num?)?.toDouble(),
        latestOffset: json_['latestOffset'] as core.String?,
        metrics: (json_['metrics'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        numInputRows: json_['numInputRows'] as core.String?,
        processedRowsPerSecond:
            (json_['processedRowsPerSecond'] as core.num?)?.toDouble(),
        startOffset: json_['startOffset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (endOffset != null) 'endOffset': endOffset!,
    if (inputRowsPerSecond != null) 'inputRowsPerSecond': inputRowsPerSecond!,
    if (latestOffset != null) 'latestOffset': latestOffset!,
    if (metrics != null) 'metrics': metrics!,
    if (numInputRows != null) 'numInputRows': numInputRows!,
    if (processedRowsPerSecond != null)
      'processedRowsPerSecond': processedRowsPerSecond!,
    if (startOffset != null) 'startOffset': startOffset!,
  };
}

/// A summary of Spark Application
class SparkApplication {
  /// High level information corresponding to an application.
  ///
  /// Output only.
  ApplicationInfo? application;

  /// Identifier.
  ///
  /// Name of the spark application
  core.String? name;

  SparkApplication({this.application, this.name});

  SparkApplication.fromJson(core.Map json_)
    : this(
        application:
            json_.containsKey('application')
                ? ApplicationInfo.fromJson(
                  json_['application'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (application != null) 'application': application!,
    if (name != null) 'name': name!,
  };
}

/// A configuration for running an Apache Spark (https://spark.apache.org/)
/// batch workload.
class SparkBatch {
  /// HCFS URIs of archives to be extracted into the working directory of each
  /// executor.
  ///
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  ///
  /// Optional.
  core.List<core.String>? archiveUris;

  /// The arguments to pass to the driver.
  ///
  /// Do not include arguments that can be set as batch properties, such as
  /// --conf, since a collision can occur that causes an incorrect batch
  /// submission.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  ///
  /// Optional.
  core.List<core.String>? fileUris;

  /// HCFS URIs of jar files to add to the classpath of the Spark driver and
  /// tasks.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The name of the driver main class.
  ///
  /// The jar file that contains the class must be in the classpath or specified
  /// in jar_file_uris.
  ///
  /// Optional.
  core.String? mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  ///
  /// Optional.
  core.String? mainJarFileUri;

  SparkBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainClass,
    this.mainJarFileUri,
  });

  SparkBatch.fromJson(core.Map json_)
    : this(
        archiveUris:
            (json_['archiveUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fileUris:
            (json_['fileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        mainClass: json_['mainClass'] as core.String?,
        mainJarFileUri: json_['mainJarFileUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveUris != null) 'archiveUris': archiveUris!,
    if (args != null) 'args': args!,
    if (fileUris != null) 'fileUris': fileUris!,
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (mainClass != null) 'mainClass': mainClass!,
    if (mainJarFileUri != null) 'mainJarFileUri': mainJarFileUri!,
  };
}

/// Spark connect configuration for an interactive session.
typedef SparkConnectConfig = $Empty;

/// Spark History Server configuration for the workload.
class SparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History
  /// Server for the workload.Example:
  /// projects/\[project_id\]/regions/\[region\]/clusters/\[cluster_name\]
  ///
  /// Optional.
  core.String? dataprocCluster;

  SparkHistoryServerConfig({this.dataprocCluster});

  SparkHistoryServerConfig.fromJson(core.Map json_)
    : this(dataprocCluster: json_['dataprocCluster'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataprocCluster != null) 'dataprocCluster': dataprocCluster!,
  };
}

/// A Dataproc job for running Apache Spark (https://spark.apache.org/)
/// applications on YARN.
class SparkJob {
  /// HCFS URIs of archives to be extracted into the working directory of each
  /// executor.
  ///
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  ///
  /// Optional.
  core.List<core.String>? archiveUris;

  /// The arguments to pass to the driver.
  ///
  /// Do not include arguments, such as --conf, that can be set as job
  /// properties, since a collision may occur that causes an incorrect job
  /// submission.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  ///
  /// Useful for naively parallel tasks.
  ///
  /// Optional.
  core.List<core.String>? fileUris;

  /// HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and
  /// tasks.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// The name of the driver's main class.
  ///
  /// The jar file that contains the class must be in the default CLASSPATH or
  /// specified in SparkJob.jar_file_uris.
  core.String? mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  core.String? mainJarFileUri;

  /// A mapping of property names to values, used to configure Spark.
  ///
  /// Properties that conflict with values set by the Dataproc API might be
  /// overwritten. Can include properties set in
  /// /etc/spark/conf/spark-defaults.conf and classes in user code.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  SparkJob({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.loggingConfig,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
  });

  SparkJob.fromJson(core.Map json_)
    : this(
        archiveUris:
            (json_['archiveUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fileUris:
            (json_['fileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mainClass: json_['mainClass'] as core.String?,
        mainJarFileUri: json_['mainJarFileUri'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveUris != null) 'archiveUris': archiveUris!,
    if (args != null) 'args': args!,
    if (fileUris != null) 'fileUris': fileUris!,
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (mainClass != null) 'mainClass': mainClass!,
    if (mainJarFileUri != null) 'mainJarFileUri': mainJarFileUri!,
    if (properties != null) 'properties': properties!,
  };
}

/// A graph used for storing information of an executionPlan of DataFrame.
class SparkPlanGraph {
  core.List<SparkPlanGraphEdge>? edges;
  core.String? executionId;
  core.List<SparkPlanGraphNodeWrapper>? nodes;

  SparkPlanGraph({this.edges, this.executionId, this.nodes});

  SparkPlanGraph.fromJson(core.Map json_)
    : this(
        edges:
            (json_['edges'] as core.List?)
                ?.map(
                  (value) => SparkPlanGraphEdge.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        executionId: json_['executionId'] as core.String?,
        nodes:
            (json_['nodes'] as core.List?)
                ?.map(
                  (value) => SparkPlanGraphNodeWrapper.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (edges != null) 'edges': edges!,
    if (executionId != null) 'executionId': executionId!,
    if (nodes != null) 'nodes': nodes!,
  };
}

/// Represents a tree of spark plan.
class SparkPlanGraphCluster {
  core.String? desc;
  core.List<SqlPlanMetric>? metrics;
  core.String? name;
  core.List<SparkPlanGraphNodeWrapper>? nodes;
  core.String? sparkPlanGraphClusterId;

  SparkPlanGraphCluster({
    this.desc,
    this.metrics,
    this.name,
    this.nodes,
    this.sparkPlanGraphClusterId,
  });

  SparkPlanGraphCluster.fromJson(core.Map json_)
    : this(
        desc: json_['desc'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => SqlPlanMetric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        nodes:
            (json_['nodes'] as core.List?)
                ?.map(
                  (value) => SparkPlanGraphNodeWrapper.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sparkPlanGraphClusterId:
            json_['sparkPlanGraphClusterId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (desc != null) 'desc': desc!,
    if (metrics != null) 'metrics': metrics!,
    if (name != null) 'name': name!,
    if (nodes != null) 'nodes': nodes!,
    if (sparkPlanGraphClusterId != null)
      'sparkPlanGraphClusterId': sparkPlanGraphClusterId!,
  };
}

/// Represents a directed edge in the spark plan tree from child to parent.
class SparkPlanGraphEdge {
  core.String? fromId;
  core.String? toId;

  SparkPlanGraphEdge({this.fromId, this.toId});

  SparkPlanGraphEdge.fromJson(core.Map json_)
    : this(
        fromId: json_['fromId'] as core.String?,
        toId: json_['toId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fromId != null) 'fromId': fromId!,
    if (toId != null) 'toId': toId!,
  };
}

/// Represents a node in the spark plan tree.
class SparkPlanGraphNode {
  core.String? desc;
  core.List<SqlPlanMetric>? metrics;
  core.String? name;
  core.String? sparkPlanGraphNodeId;

  SparkPlanGraphNode({
    this.desc,
    this.metrics,
    this.name,
    this.sparkPlanGraphNodeId,
  });

  SparkPlanGraphNode.fromJson(core.Map json_)
    : this(
        desc: json_['desc'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => SqlPlanMetric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        sparkPlanGraphNodeId: json_['sparkPlanGraphNodeId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (desc != null) 'desc': desc!,
    if (metrics != null) 'metrics': metrics!,
    if (name != null) 'name': name!,
    if (sparkPlanGraphNodeId != null)
      'sparkPlanGraphNodeId': sparkPlanGraphNodeId!,
  };
}

/// Wrapper user to represent either a node or a cluster.
class SparkPlanGraphNodeWrapper {
  SparkPlanGraphCluster? cluster;
  SparkPlanGraphNode? node;

  SparkPlanGraphNodeWrapper({this.cluster, this.node});

  SparkPlanGraphNodeWrapper.fromJson(core.Map json_)
    : this(
        cluster:
            json_.containsKey('cluster')
                ? SparkPlanGraphCluster.fromJson(
                  json_['cluster'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        node:
            json_.containsKey('node')
                ? SparkPlanGraphNode.fromJson(
                  json_['node'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cluster != null) 'cluster': cluster!,
    if (node != null) 'node': node!,
  };
}

/// A configuration for running an Apache SparkR
/// (https://spark.apache.org/docs/latest/sparkr.html) batch workload.
class SparkRBatch {
  /// HCFS URIs of archives to be extracted into the working directory of each
  /// executor.
  ///
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  ///
  /// Optional.
  core.List<core.String>? archiveUris;

  /// The arguments to pass to the Spark driver.
  ///
  /// Do not include arguments that can be set as batch properties, such as
  /// --conf, since a collision can occur that causes an incorrect batch
  /// submission.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  ///
  /// Optional.
  core.List<core.String>? fileUris;

  /// The HCFS URI of the main R file to use as the driver.
  ///
  /// Must be a .R or .r file.
  ///
  /// Required.
  core.String? mainRFileUri;

  SparkRBatch({this.archiveUris, this.args, this.fileUris, this.mainRFileUri});

  SparkRBatch.fromJson(core.Map json_)
    : this(
        archiveUris:
            (json_['archiveUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fileUris:
            (json_['fileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        mainRFileUri: json_['mainRFileUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveUris != null) 'archiveUris': archiveUris!,
    if (args != null) 'args': args!,
    if (fileUris != null) 'fileUris': fileUris!,
    if (mainRFileUri != null) 'mainRFileUri': mainRFileUri!,
  };
}

/// A Dataproc job for running Apache SparkR
/// (https://spark.apache.org/docs/latest/sparkr.html) applications on YARN.
class SparkRJob {
  /// HCFS URIs of archives to be extracted into the working directory of each
  /// executor.
  ///
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  ///
  /// Optional.
  core.List<core.String>? archiveUris;

  /// The arguments to pass to the driver.
  ///
  /// Do not include arguments, such as --conf, that can be set as job
  /// properties, since a collision may occur that causes an incorrect job
  /// submission.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  ///
  /// Useful for naively parallel tasks.
  ///
  /// Optional.
  core.List<core.String>? fileUris;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// The HCFS URI of the main R file to use as the driver.
  ///
  /// Must be a .R file.
  ///
  /// Required.
  core.String? mainRFileUri;

  /// A mapping of property names to values, used to configure SparkR.
  ///
  /// Properties that conflict with values set by the Dataproc API might be
  /// overwritten. Can include properties set in
  /// /etc/spark/conf/spark-defaults.conf and classes in user code.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  SparkRJob({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.loggingConfig,
    this.mainRFileUri,
    this.properties,
  });

  SparkRJob.fromJson(core.Map json_)
    : this(
        archiveUris:
            (json_['archiveUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fileUris:
            (json_['fileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mainRFileUri: json_['mainRFileUri'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveUris != null) 'archiveUris': archiveUris!,
    if (args != null) 'args': args!,
    if (fileUris != null) 'fileUris': fileUris!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (mainRFileUri != null) 'mainRFileUri': mainRFileUri!,
    if (properties != null) 'properties': properties!,
  };
}

class SparkRuntimeInfo {
  core.String? javaHome;
  core.String? javaVersion;
  core.String? scalaVersion;

  SparkRuntimeInfo({this.javaHome, this.javaVersion, this.scalaVersion});

  SparkRuntimeInfo.fromJson(core.Map json_)
    : this(
        javaHome: json_['javaHome'] as core.String?,
        javaVersion: json_['javaVersion'] as core.String?,
        scalaVersion: json_['scalaVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (javaHome != null) 'javaHome': javaHome!,
    if (javaVersion != null) 'javaVersion': javaVersion!,
    if (scalaVersion != null) 'scalaVersion': scalaVersion!,
  };
}

/// A configuration for running Apache Spark SQL (https://spark.apache.org/sql/)
/// queries as a batch workload.
class SparkSqlBatch {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The HCFS URI of the script that contains Spark SQL queries to execute.
  ///
  /// Required.
  core.String? queryFileUri;

  /// Mapping of query variable names to values (equivalent to the Spark SQL
  /// command: SET name="value";).
  ///
  /// Optional.
  core.Map<core.String, core.String>? queryVariables;

  SparkSqlBatch({this.jarFileUris, this.queryFileUri, this.queryVariables});

  SparkSqlBatch.fromJson(core.Map json_)
    : this(
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        queryFileUri: json_['queryFileUri'] as core.String?,
        queryVariables: (json_['queryVariables']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (queryFileUri != null) 'queryFileUri': queryFileUri!,
    if (queryVariables != null) 'queryVariables': queryVariables!,
  };
}

/// A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/)
/// queries.
class SparkSqlJob {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  ///
  /// Optional.
  core.List<core.String>? jarFileUris;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// A mapping of property names to values, used to configure Spark SQL's
  /// SparkConf.
  ///
  /// Properties that conflict with values set by the Dataproc API might be
  /// overwritten.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  core.String? queryFileUri;

  /// A list of queries.
  QueryList? queryList;

  /// Mapping of query variable names to values (equivalent to the Spark SQL
  /// command: SET name="value";).
  ///
  /// Optional.
  core.Map<core.String, core.String>? scriptVariables;

  SparkSqlJob({
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  SparkSqlJob.fromJson(core.Map json_)
    : this(
        jarFileUris:
            (json_['jarFileUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        queryFileUri: json_['queryFileUri'] as core.String?,
        queryList:
            json_.containsKey('queryList')
                ? QueryList.fromJson(
                  json_['queryList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        scriptVariables: (json_['scriptVariables']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jarFileUris != null) 'jarFileUris': jarFileUris!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (properties != null) 'properties': properties!,
    if (queryFileUri != null) 'queryFileUri': queryFileUri!,
    if (queryList != null) 'queryList': queryList!,
    if (scriptVariables != null) 'scriptVariables': scriptVariables!,
  };
}

/// Basic autoscaling configurations for Spark Standalone.
class SparkStandaloneAutoscalingConfig {
  /// Timeout for Spark graceful decommissioning of spark workers.
  ///
  /// Specifies the duration to wait for spark worker to complete spark
  /// decommissioning tasks before forcefully removing workers. Only applicable
  /// to downscaling operations.Bounds: 0s, 1d.
  ///
  /// Required.
  core.String? gracefulDecommissionTimeout;

  /// Remove only idle workers when scaling down cluster
  ///
  /// Optional.
  core.bool? removeOnlyIdleWorkers;

  /// Fraction of required executors to remove from Spark Serverless clusters.
  ///
  /// A scale-down factor of 1.0 will result in scaling down so that there are
  /// no more executors for the Spark Job.(more aggressive scaling). A
  /// scale-down factor closer to 0 will result in a smaller magnitude of
  /// scaling donw (less aggressive scaling).Bounds: 0.0, 1.0.
  ///
  /// Required.
  core.double? scaleDownFactor;

  /// Minimum scale-down threshold as a fraction of total cluster size before
  /// scaling occurs.
  ///
  /// For example, in a 20-worker cluster, a threshold of 0.1 means the
  /// autoscaler must recommend at least a 2 worker scale-down for the cluster
  /// to scale. A threshold of 0 means the autoscaler will scale down on any
  /// recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  ///
  /// Optional.
  core.double? scaleDownMinWorkerFraction;

  /// Fraction of required workers to add to Spark Standalone clusters.
  ///
  /// A scale-up factor of 1.0 will result in scaling up so that there are no
  /// more required workers for the Spark Job (more aggressive scaling). A
  /// scale-up factor closer to 0 will result in a smaller magnitude of scaling
  /// up (less aggressive scaling).Bounds: 0.0, 1.0.
  ///
  /// Required.
  core.double? scaleUpFactor;

  /// Minimum scale-up threshold as a fraction of total cluster size before
  /// scaling occurs.
  ///
  /// For example, in a 20-worker cluster, a threshold of 0.1 means the
  /// autoscaler must recommend at least a 2-worker scale-up for the cluster to
  /// scale. A threshold of 0 means the autoscaler will scale up on any
  /// recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  ///
  /// Optional.
  core.double? scaleUpMinWorkerFraction;

  SparkStandaloneAutoscalingConfig({
    this.gracefulDecommissionTimeout,
    this.removeOnlyIdleWorkers,
    this.scaleDownFactor,
    this.scaleDownMinWorkerFraction,
    this.scaleUpFactor,
    this.scaleUpMinWorkerFraction,
  });

  SparkStandaloneAutoscalingConfig.fromJson(core.Map json_)
    : this(
        gracefulDecommissionTimeout:
            json_['gracefulDecommissionTimeout'] as core.String?,
        removeOnlyIdleWorkers: json_['removeOnlyIdleWorkers'] as core.bool?,
        scaleDownFactor: (json_['scaleDownFactor'] as core.num?)?.toDouble(),
        scaleDownMinWorkerFraction:
            (json_['scaleDownMinWorkerFraction'] as core.num?)?.toDouble(),
        scaleUpFactor: (json_['scaleUpFactor'] as core.num?)?.toDouble(),
        scaleUpMinWorkerFraction:
            (json_['scaleUpMinWorkerFraction'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gracefulDecommissionTimeout != null)
      'gracefulDecommissionTimeout': gracefulDecommissionTimeout!,
    if (removeOnlyIdleWorkers != null)
      'removeOnlyIdleWorkers': removeOnlyIdleWorkers!,
    if (scaleDownFactor != null) 'scaleDownFactor': scaleDownFactor!,
    if (scaleDownMinWorkerFraction != null)
      'scaleDownMinWorkerFraction': scaleDownMinWorkerFraction!,
    if (scaleUpFactor != null) 'scaleUpFactor': scaleUpFactor!,
    if (scaleUpMinWorkerFraction != null)
      'scaleUpMinWorkerFraction': scaleUpMinWorkerFraction!,
  };
}

/// Outer message that contains the data obtained from spark listener, packaged
/// with information that is required to process it.
class SparkWrapperObject {
  AppSummary? appSummary;
  ApplicationEnvironmentInfo? applicationEnvironmentInfo;

  /// Application Id created by Spark.
  core.String? applicationId;
  ApplicationInfo? applicationInfo;

  /// VM Timestamp associated with the data object.
  core.String? eventTimestamp;
  ExecutorStageSummary? executorStageSummary;
  ExecutorSummary? executorSummary;
  JobData? jobData;

  /// Native Build Info
  NativeBuildInfoUiData? nativeBuildInfoUiData;

  /// Native SQL Execution Info
  NativeSqlExecutionUiData? nativeSqlExecutionUiData;
  PoolData? poolData;
  ProcessSummary? processSummary;
  RddOperationGraph? rddOperationGraph;
  RddStorageInfo? rddStorageInfo;
  ResourceProfileInfo? resourceProfileInfo;
  SparkPlanGraph? sparkPlanGraph;
  SpeculationStageSummary? speculationStageSummary;
  SqlExecutionUiData? sqlExecutionUiData;
  StageData? stageData;
  StreamBlockData? streamBlockData;
  StreamingQueryData? streamingQueryData;
  StreamingQueryProgress? streamingQueryProgress;
  TaskData? taskData;

  SparkWrapperObject({
    this.appSummary,
    this.applicationEnvironmentInfo,
    this.applicationId,
    this.applicationInfo,
    this.eventTimestamp,
    this.executorStageSummary,
    this.executorSummary,
    this.jobData,
    this.nativeBuildInfoUiData,
    this.nativeSqlExecutionUiData,
    this.poolData,
    this.processSummary,
    this.rddOperationGraph,
    this.rddStorageInfo,
    this.resourceProfileInfo,
    this.sparkPlanGraph,
    this.speculationStageSummary,
    this.sqlExecutionUiData,
    this.stageData,
    this.streamBlockData,
    this.streamingQueryData,
    this.streamingQueryProgress,
    this.taskData,
  });

  SparkWrapperObject.fromJson(core.Map json_)
    : this(
        appSummary:
            json_.containsKey('appSummary')
                ? AppSummary.fromJson(
                  json_['appSummary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        applicationEnvironmentInfo:
            json_.containsKey('applicationEnvironmentInfo')
                ? ApplicationEnvironmentInfo.fromJson(
                  json_['applicationEnvironmentInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        applicationId: json_['applicationId'] as core.String?,
        applicationInfo:
            json_.containsKey('applicationInfo')
                ? ApplicationInfo.fromJson(
                  json_['applicationInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventTimestamp: json_['eventTimestamp'] as core.String?,
        executorStageSummary:
            json_.containsKey('executorStageSummary')
                ? ExecutorStageSummary.fromJson(
                  json_['executorStageSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executorSummary:
            json_.containsKey('executorSummary')
                ? ExecutorSummary.fromJson(
                  json_['executorSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        jobData:
            json_.containsKey('jobData')
                ? JobData.fromJson(
                  json_['jobData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nativeBuildInfoUiData:
            json_.containsKey('nativeBuildInfoUiData')
                ? NativeBuildInfoUiData.fromJson(
                  json_['nativeBuildInfoUiData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        nativeSqlExecutionUiData:
            json_.containsKey('nativeSqlExecutionUiData')
                ? NativeSqlExecutionUiData.fromJson(
                  json_['nativeSqlExecutionUiData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        poolData:
            json_.containsKey('poolData')
                ? PoolData.fromJson(
                  json_['poolData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        processSummary:
            json_.containsKey('processSummary')
                ? ProcessSummary.fromJson(
                  json_['processSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rddOperationGraph:
            json_.containsKey('rddOperationGraph')
                ? RddOperationGraph.fromJson(
                  json_['rddOperationGraph']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rddStorageInfo:
            json_.containsKey('rddStorageInfo')
                ? RddStorageInfo.fromJson(
                  json_['rddStorageInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceProfileInfo:
            json_.containsKey('resourceProfileInfo')
                ? ResourceProfileInfo.fromJson(
                  json_['resourceProfileInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sparkPlanGraph:
            json_.containsKey('sparkPlanGraph')
                ? SparkPlanGraph.fromJson(
                  json_['sparkPlanGraph']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        speculationStageSummary:
            json_.containsKey('speculationStageSummary')
                ? SpeculationStageSummary.fromJson(
                  json_['speculationStageSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sqlExecutionUiData:
            json_.containsKey('sqlExecutionUiData')
                ? SqlExecutionUiData.fromJson(
                  json_['sqlExecutionUiData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stageData:
            json_.containsKey('stageData')
                ? StageData.fromJson(
                  json_['stageData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        streamBlockData:
            json_.containsKey('streamBlockData')
                ? StreamBlockData.fromJson(
                  json_['streamBlockData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        streamingQueryData:
            json_.containsKey('streamingQueryData')
                ? StreamingQueryData.fromJson(
                  json_['streamingQueryData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        streamingQueryProgress:
            json_.containsKey('streamingQueryProgress')
                ? StreamingQueryProgress.fromJson(
                  json_['streamingQueryProgress']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        taskData:
            json_.containsKey('taskData')
                ? TaskData.fromJson(
                  json_['taskData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appSummary != null) 'appSummary': appSummary!,
    if (applicationEnvironmentInfo != null)
      'applicationEnvironmentInfo': applicationEnvironmentInfo!,
    if (applicationId != null) 'applicationId': applicationId!,
    if (applicationInfo != null) 'applicationInfo': applicationInfo!,
    if (eventTimestamp != null) 'eventTimestamp': eventTimestamp!,
    if (executorStageSummary != null)
      'executorStageSummary': executorStageSummary!,
    if (executorSummary != null) 'executorSummary': executorSummary!,
    if (jobData != null) 'jobData': jobData!,
    if (nativeBuildInfoUiData != null)
      'nativeBuildInfoUiData': nativeBuildInfoUiData!,
    if (nativeSqlExecutionUiData != null)
      'nativeSqlExecutionUiData': nativeSqlExecutionUiData!,
    if (poolData != null) 'poolData': poolData!,
    if (processSummary != null) 'processSummary': processSummary!,
    if (rddOperationGraph != null) 'rddOperationGraph': rddOperationGraph!,
    if (rddStorageInfo != null) 'rddStorageInfo': rddStorageInfo!,
    if (resourceProfileInfo != null)
      'resourceProfileInfo': resourceProfileInfo!,
    if (sparkPlanGraph != null) 'sparkPlanGraph': sparkPlanGraph!,
    if (speculationStageSummary != null)
      'speculationStageSummary': speculationStageSummary!,
    if (sqlExecutionUiData != null) 'sqlExecutionUiData': sqlExecutionUiData!,
    if (stageData != null) 'stageData': stageData!,
    if (streamBlockData != null) 'streamBlockData': streamBlockData!,
    if (streamingQueryData != null) 'streamingQueryData': streamingQueryData!,
    if (streamingQueryProgress != null)
      'streamingQueryProgress': streamingQueryProgress!,
    if (taskData != null) 'taskData': taskData!,
  };
}

/// Details of the speculation task when speculative execution is enabled.
class SpeculationStageSummary {
  core.int? numActiveTasks;
  core.int? numCompletedTasks;
  core.int? numFailedTasks;
  core.int? numKilledTasks;
  core.int? numTasks;
  core.int? stageAttemptId;
  core.String? stageId;

  SpeculationStageSummary({
    this.numActiveTasks,
    this.numCompletedTasks,
    this.numFailedTasks,
    this.numKilledTasks,
    this.numTasks,
    this.stageAttemptId,
    this.stageId,
  });

  SpeculationStageSummary.fromJson(core.Map json_)
    : this(
        numActiveTasks: json_['numActiveTasks'] as core.int?,
        numCompletedTasks: json_['numCompletedTasks'] as core.int?,
        numFailedTasks: json_['numFailedTasks'] as core.int?,
        numKilledTasks: json_['numKilledTasks'] as core.int?,
        numTasks: json_['numTasks'] as core.int?,
        stageAttemptId: json_['stageAttemptId'] as core.int?,
        stageId: json_['stageId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (numActiveTasks != null) 'numActiveTasks': numActiveTasks!,
    if (numCompletedTasks != null) 'numCompletedTasks': numCompletedTasks!,
    if (numFailedTasks != null) 'numFailedTasks': numFailedTasks!,
    if (numKilledTasks != null) 'numKilledTasks': numKilledTasks!,
    if (numTasks != null) 'numTasks': numTasks!,
    if (stageAttemptId != null) 'stageAttemptId': stageAttemptId!,
    if (stageId != null) 'stageId': stageId!,
  };
}

/// SQL Execution Data
class SqlExecutionUiData {
  core.String? completionTime;
  core.String? description;
  core.String? details;
  core.String? errorMessage;
  core.String? executionId;
  core.Map<core.String, core.String>? jobs;
  core.Map<core.String, core.String>? metricValues;
  core.bool? metricValuesIsNull;
  core.List<SqlPlanMetric>? metrics;
  core.Map<core.String, core.String>? modifiedConfigs;
  core.String? physicalPlanDescription;
  core.String? rootExecutionId;
  core.List<core.String>? stages;
  core.String? submissionTime;

  SqlExecutionUiData({
    this.completionTime,
    this.description,
    this.details,
    this.errorMessage,
    this.executionId,
    this.jobs,
    this.metricValues,
    this.metricValuesIsNull,
    this.metrics,
    this.modifiedConfigs,
    this.physicalPlanDescription,
    this.rootExecutionId,
    this.stages,
    this.submissionTime,
  });

  SqlExecutionUiData.fromJson(core.Map json_)
    : this(
        completionTime: json_['completionTime'] as core.String?,
        description: json_['description'] as core.String?,
        details: json_['details'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        executionId: json_['executionId'] as core.String?,
        jobs: (json_['jobs'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        metricValues: (json_['metricValues']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        metricValuesIsNull: json_['metricValuesIsNull'] as core.bool?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => SqlPlanMetric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        modifiedConfigs: (json_['modifiedConfigs']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        physicalPlanDescription:
            json_['physicalPlanDescription'] as core.String?,
        rootExecutionId: json_['rootExecutionId'] as core.String?,
        stages:
            (json_['stages'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        submissionTime: json_['submissionTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (completionTime != null) 'completionTime': completionTime!,
    if (description != null) 'description': description!,
    if (details != null) 'details': details!,
    if (errorMessage != null) 'errorMessage': errorMessage!,
    if (executionId != null) 'executionId': executionId!,
    if (jobs != null) 'jobs': jobs!,
    if (metricValues != null) 'metricValues': metricValues!,
    if (metricValuesIsNull != null) 'metricValuesIsNull': metricValuesIsNull!,
    if (metrics != null) 'metrics': metrics!,
    if (modifiedConfigs != null) 'modifiedConfigs': modifiedConfigs!,
    if (physicalPlanDescription != null)
      'physicalPlanDescription': physicalPlanDescription!,
    if (rootExecutionId != null) 'rootExecutionId': rootExecutionId!,
    if (stages != null) 'stages': stages!,
    if (submissionTime != null) 'submissionTime': submissionTime!,
  };
}

/// Metrics related to SQL execution.
class SqlPlanMetric {
  core.String? accumulatorId;
  core.String? metricType;
  core.String? name;

  SqlPlanMetric({this.accumulatorId, this.metricType, this.name});

  SqlPlanMetric.fromJson(core.Map json_)
    : this(
        accumulatorId: json_['accumulatorId'] as core.String?,
        metricType: json_['metricType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accumulatorId != null) 'accumulatorId': accumulatorId!,
    if (metricType != null) 'metricType': metricType!,
    if (name != null) 'name': name!,
  };
}

/// Data related to tasks summary for a Spark Stage Attempt
class StageAttemptTasksSummary {
  core.String? applicationId;
  core.int? numFailedTasks;
  core.int? numKilledTasks;
  core.int? numPendingTasks;
  core.int? numRunningTasks;
  core.int? numSuccessTasks;
  core.int? numTasks;
  core.int? stageAttemptId;
  core.String? stageId;

  StageAttemptTasksSummary({
    this.applicationId,
    this.numFailedTasks,
    this.numKilledTasks,
    this.numPendingTasks,
    this.numRunningTasks,
    this.numSuccessTasks,
    this.numTasks,
    this.stageAttemptId,
    this.stageId,
  });

  StageAttemptTasksSummary.fromJson(core.Map json_)
    : this(
        applicationId: json_['applicationId'] as core.String?,
        numFailedTasks: json_['numFailedTasks'] as core.int?,
        numKilledTasks: json_['numKilledTasks'] as core.int?,
        numPendingTasks: json_['numPendingTasks'] as core.int?,
        numRunningTasks: json_['numRunningTasks'] as core.int?,
        numSuccessTasks: json_['numSuccessTasks'] as core.int?,
        numTasks: json_['numTasks'] as core.int?,
        stageAttemptId: json_['stageAttemptId'] as core.int?,
        stageId: json_['stageId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationId != null) 'applicationId': applicationId!,
    if (numFailedTasks != null) 'numFailedTasks': numFailedTasks!,
    if (numKilledTasks != null) 'numKilledTasks': numKilledTasks!,
    if (numPendingTasks != null) 'numPendingTasks': numPendingTasks!,
    if (numRunningTasks != null) 'numRunningTasks': numRunningTasks!,
    if (numSuccessTasks != null) 'numSuccessTasks': numSuccessTasks!,
    if (numTasks != null) 'numTasks': numTasks!,
    if (stageAttemptId != null) 'stageAttemptId': stageAttemptId!,
    if (stageId != null) 'stageId': stageId!,
  };
}

/// Data corresponding to a stage.
class StageData {
  core.List<AccumulableInfo>? accumulatorUpdates;
  core.String? completionTime;
  core.String? description;
  core.String? details;
  ExecutorMetricsDistributions? executorMetricsDistributions;
  core.Map<core.String, ExecutorStageSummary>? executorSummary;
  core.String? failureReason;
  core.String? firstTaskLaunchedTime;
  core.bool? isShufflePushEnabled;
  core.List<core.String>? jobIds;
  core.Map<core.String, core.int>? killedTasksSummary;
  core.Map<core.String, core.String>? locality;
  core.String? name;
  core.int? numActiveTasks;
  core.int? numCompleteTasks;
  core.int? numCompletedIndices;
  core.int? numFailedTasks;
  core.int? numKilledTasks;
  core.int? numTasks;
  core.List<core.String>? parentStageIds;
  ExecutorMetrics? peakExecutorMetrics;
  core.List<core.String>? rddIds;
  core.int? resourceProfileId;
  core.String? schedulingPool;
  core.int? shuffleMergersCount;
  SpeculationStageSummary? speculationSummary;
  core.int? stageAttemptId;
  core.String? stageId;
  StageMetrics? stageMetrics;

  ///
  /// Possible string values are:
  /// - "STAGE_STATUS_UNSPECIFIED"
  /// - "STAGE_STATUS_ACTIVE"
  /// - "STAGE_STATUS_COMPLETE"
  /// - "STAGE_STATUS_FAILED"
  /// - "STAGE_STATUS_PENDING"
  /// - "STAGE_STATUS_SKIPPED"
  core.String? status;
  core.String? submissionTime;

  /// Summary metrics fields.
  ///
  /// These are included in response only if present in summary_metrics_mask
  /// field in request
  TaskQuantileMetrics? taskQuantileMetrics;
  core.Map<core.String, TaskData>? tasks;

  StageData({
    this.accumulatorUpdates,
    this.completionTime,
    this.description,
    this.details,
    this.executorMetricsDistributions,
    this.executorSummary,
    this.failureReason,
    this.firstTaskLaunchedTime,
    this.isShufflePushEnabled,
    this.jobIds,
    this.killedTasksSummary,
    this.locality,
    this.name,
    this.numActiveTasks,
    this.numCompleteTasks,
    this.numCompletedIndices,
    this.numFailedTasks,
    this.numKilledTasks,
    this.numTasks,
    this.parentStageIds,
    this.peakExecutorMetrics,
    this.rddIds,
    this.resourceProfileId,
    this.schedulingPool,
    this.shuffleMergersCount,
    this.speculationSummary,
    this.stageAttemptId,
    this.stageId,
    this.stageMetrics,
    this.status,
    this.submissionTime,
    this.taskQuantileMetrics,
    this.tasks,
  });

  StageData.fromJson(core.Map json_)
    : this(
        accumulatorUpdates:
            (json_['accumulatorUpdates'] as core.List?)
                ?.map(
                  (value) => AccumulableInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        completionTime: json_['completionTime'] as core.String?,
        description: json_['description'] as core.String?,
        details: json_['details'] as core.String?,
        executorMetricsDistributions:
            json_.containsKey('executorMetricsDistributions')
                ? ExecutorMetricsDistributions.fromJson(
                  json_['executorMetricsDistributions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executorSummary: (json_['executorSummary']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ExecutorStageSummary.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        failureReason: json_['failureReason'] as core.String?,
        firstTaskLaunchedTime: json_['firstTaskLaunchedTime'] as core.String?,
        isShufflePushEnabled: json_['isShufflePushEnabled'] as core.bool?,
        jobIds:
            (json_['jobIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        killedTasksSummary: (json_['killedTasksSummary']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.int)),
        locality: (json_['locality'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        name: json_['name'] as core.String?,
        numActiveTasks: json_['numActiveTasks'] as core.int?,
        numCompleteTasks: json_['numCompleteTasks'] as core.int?,
        numCompletedIndices: json_['numCompletedIndices'] as core.int?,
        numFailedTasks: json_['numFailedTasks'] as core.int?,
        numKilledTasks: json_['numKilledTasks'] as core.int?,
        numTasks: json_['numTasks'] as core.int?,
        parentStageIds:
            (json_['parentStageIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        peakExecutorMetrics:
            json_.containsKey('peakExecutorMetrics')
                ? ExecutorMetrics.fromJson(
                  json_['peakExecutorMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rddIds:
            (json_['rddIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        resourceProfileId: json_['resourceProfileId'] as core.int?,
        schedulingPool: json_['schedulingPool'] as core.String?,
        shuffleMergersCount: json_['shuffleMergersCount'] as core.int?,
        speculationSummary:
            json_.containsKey('speculationSummary')
                ? SpeculationStageSummary.fromJson(
                  json_['speculationSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stageAttemptId: json_['stageAttemptId'] as core.int?,
        stageId: json_['stageId'] as core.String?,
        stageMetrics:
            json_.containsKey('stageMetrics')
                ? StageMetrics.fromJson(
                  json_['stageMetrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        status: json_['status'] as core.String?,
        submissionTime: json_['submissionTime'] as core.String?,
        taskQuantileMetrics:
            json_.containsKey('taskQuantileMetrics')
                ? TaskQuantileMetrics.fromJson(
                  json_['taskQuantileMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tasks: (json_['tasks'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            TaskData.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accumulatorUpdates != null) 'accumulatorUpdates': accumulatorUpdates!,
    if (completionTime != null) 'completionTime': completionTime!,
    if (description != null) 'description': description!,
    if (details != null) 'details': details!,
    if (executorMetricsDistributions != null)
      'executorMetricsDistributions': executorMetricsDistributions!,
    if (executorSummary != null) 'executorSummary': executorSummary!,
    if (failureReason != null) 'failureReason': failureReason!,
    if (firstTaskLaunchedTime != null)
      'firstTaskLaunchedTime': firstTaskLaunchedTime!,
    if (isShufflePushEnabled != null)
      'isShufflePushEnabled': isShufflePushEnabled!,
    if (jobIds != null) 'jobIds': jobIds!,
    if (killedTasksSummary != null) 'killedTasksSummary': killedTasksSummary!,
    if (locality != null) 'locality': locality!,
    if (name != null) 'name': name!,
    if (numActiveTasks != null) 'numActiveTasks': numActiveTasks!,
    if (numCompleteTasks != null) 'numCompleteTasks': numCompleteTasks!,
    if (numCompletedIndices != null)
      'numCompletedIndices': numCompletedIndices!,
    if (numFailedTasks != null) 'numFailedTasks': numFailedTasks!,
    if (numKilledTasks != null) 'numKilledTasks': numKilledTasks!,
    if (numTasks != null) 'numTasks': numTasks!,
    if (parentStageIds != null) 'parentStageIds': parentStageIds!,
    if (peakExecutorMetrics != null)
      'peakExecutorMetrics': peakExecutorMetrics!,
    if (rddIds != null) 'rddIds': rddIds!,
    if (resourceProfileId != null) 'resourceProfileId': resourceProfileId!,
    if (schedulingPool != null) 'schedulingPool': schedulingPool!,
    if (shuffleMergersCount != null)
      'shuffleMergersCount': shuffleMergersCount!,
    if (speculationSummary != null) 'speculationSummary': speculationSummary!,
    if (stageAttemptId != null) 'stageAttemptId': stageAttemptId!,
    if (stageId != null) 'stageId': stageId!,
    if (stageMetrics != null) 'stageMetrics': stageMetrics!,
    if (status != null) 'status': status!,
    if (submissionTime != null) 'submissionTime': submissionTime!,
    if (taskQuantileMetrics != null)
      'taskQuantileMetrics': taskQuantileMetrics!,
    if (tasks != null) 'tasks': tasks!,
  };
}

/// Metrics about the input read by the stage.
typedef StageInputMetrics = $InputMetrics;

/// Stage Level Aggregated Metrics
class StageMetrics {
  core.String? diskBytesSpilled;
  core.String? executorCpuTimeNanos;
  core.String? executorDeserializeCpuTimeNanos;
  core.String? executorDeserializeTimeMillis;
  core.String? executorRunTimeMillis;
  core.String? jvmGcTimeMillis;
  core.String? memoryBytesSpilled;
  core.String? peakExecutionMemoryBytes;
  core.String? resultSerializationTimeMillis;
  core.String? resultSize;
  StageInputMetrics? stageInputMetrics;
  StageOutputMetrics? stageOutputMetrics;
  StageShuffleReadMetrics? stageShuffleReadMetrics;
  StageShuffleWriteMetrics? stageShuffleWriteMetrics;

  StageMetrics({
    this.diskBytesSpilled,
    this.executorCpuTimeNanos,
    this.executorDeserializeCpuTimeNanos,
    this.executorDeserializeTimeMillis,
    this.executorRunTimeMillis,
    this.jvmGcTimeMillis,
    this.memoryBytesSpilled,
    this.peakExecutionMemoryBytes,
    this.resultSerializationTimeMillis,
    this.resultSize,
    this.stageInputMetrics,
    this.stageOutputMetrics,
    this.stageShuffleReadMetrics,
    this.stageShuffleWriteMetrics,
  });

  StageMetrics.fromJson(core.Map json_)
    : this(
        diskBytesSpilled: json_['diskBytesSpilled'] as core.String?,
        executorCpuTimeNanos: json_['executorCpuTimeNanos'] as core.String?,
        executorDeserializeCpuTimeNanos:
            json_['executorDeserializeCpuTimeNanos'] as core.String?,
        executorDeserializeTimeMillis:
            json_['executorDeserializeTimeMillis'] as core.String?,
        executorRunTimeMillis: json_['executorRunTimeMillis'] as core.String?,
        jvmGcTimeMillis: json_['jvmGcTimeMillis'] as core.String?,
        memoryBytesSpilled: json_['memoryBytesSpilled'] as core.String?,
        peakExecutionMemoryBytes:
            json_['peakExecutionMemoryBytes'] as core.String?,
        resultSerializationTimeMillis:
            json_['resultSerializationTimeMillis'] as core.String?,
        resultSize: json_['resultSize'] as core.String?,
        stageInputMetrics:
            json_.containsKey('stageInputMetrics')
                ? StageInputMetrics.fromJson(
                  json_['stageInputMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stageOutputMetrics:
            json_.containsKey('stageOutputMetrics')
                ? StageOutputMetrics.fromJson(
                  json_['stageOutputMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stageShuffleReadMetrics:
            json_.containsKey('stageShuffleReadMetrics')
                ? StageShuffleReadMetrics.fromJson(
                  json_['stageShuffleReadMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stageShuffleWriteMetrics:
            json_.containsKey('stageShuffleWriteMetrics')
                ? StageShuffleWriteMetrics.fromJson(
                  json_['stageShuffleWriteMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (diskBytesSpilled != null) 'diskBytesSpilled': diskBytesSpilled!,
    if (executorCpuTimeNanos != null)
      'executorCpuTimeNanos': executorCpuTimeNanos!,
    if (executorDeserializeCpuTimeNanos != null)
      'executorDeserializeCpuTimeNanos': executorDeserializeCpuTimeNanos!,
    if (executorDeserializeTimeMillis != null)
      'executorDeserializeTimeMillis': executorDeserializeTimeMillis!,
    if (executorRunTimeMillis != null)
      'executorRunTimeMillis': executorRunTimeMillis!,
    if (jvmGcTimeMillis != null) 'jvmGcTimeMillis': jvmGcTimeMillis!,
    if (memoryBytesSpilled != null) 'memoryBytesSpilled': memoryBytesSpilled!,
    if (peakExecutionMemoryBytes != null)
      'peakExecutionMemoryBytes': peakExecutionMemoryBytes!,
    if (resultSerializationTimeMillis != null)
      'resultSerializationTimeMillis': resultSerializationTimeMillis!,
    if (resultSize != null) 'resultSize': resultSize!,
    if (stageInputMetrics != null) 'stageInputMetrics': stageInputMetrics!,
    if (stageOutputMetrics != null) 'stageOutputMetrics': stageOutputMetrics!,
    if (stageShuffleReadMetrics != null)
      'stageShuffleReadMetrics': stageShuffleReadMetrics!,
    if (stageShuffleWriteMetrics != null)
      'stageShuffleWriteMetrics': stageShuffleWriteMetrics!,
  };
}

/// Metrics about the output written by the stage.
typedef StageOutputMetrics = $OutputMetrics;
typedef StageShufflePushReadMetrics = $ShufflePushReadMetrics;

/// Shuffle data read for the stage.
class StageShuffleReadMetrics {
  core.String? bytesRead;
  core.String? fetchWaitTimeMillis;
  core.String? localBlocksFetched;
  core.String? localBytesRead;
  core.String? recordsRead;
  core.String? remoteBlocksFetched;
  core.String? remoteBytesRead;
  core.String? remoteBytesReadToDisk;
  core.String? remoteReqsDuration;
  StageShufflePushReadMetrics? stageShufflePushReadMetrics;

  StageShuffleReadMetrics({
    this.bytesRead,
    this.fetchWaitTimeMillis,
    this.localBlocksFetched,
    this.localBytesRead,
    this.recordsRead,
    this.remoteBlocksFetched,
    this.remoteBytesRead,
    this.remoteBytesReadToDisk,
    this.remoteReqsDuration,
    this.stageShufflePushReadMetrics,
  });

  StageShuffleReadMetrics.fromJson(core.Map json_)
    : this(
        bytesRead: json_['bytesRead'] as core.String?,
        fetchWaitTimeMillis: json_['fetchWaitTimeMillis'] as core.String?,
        localBlocksFetched: json_['localBlocksFetched'] as core.String?,
        localBytesRead: json_['localBytesRead'] as core.String?,
        recordsRead: json_['recordsRead'] as core.String?,
        remoteBlocksFetched: json_['remoteBlocksFetched'] as core.String?,
        remoteBytesRead: json_['remoteBytesRead'] as core.String?,
        remoteBytesReadToDisk: json_['remoteBytesReadToDisk'] as core.String?,
        remoteReqsDuration: json_['remoteReqsDuration'] as core.String?,
        stageShufflePushReadMetrics:
            json_.containsKey('stageShufflePushReadMetrics')
                ? StageShufflePushReadMetrics.fromJson(
                  json_['stageShufflePushReadMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bytesRead != null) 'bytesRead': bytesRead!,
    if (fetchWaitTimeMillis != null)
      'fetchWaitTimeMillis': fetchWaitTimeMillis!,
    if (localBlocksFetched != null) 'localBlocksFetched': localBlocksFetched!,
    if (localBytesRead != null) 'localBytesRead': localBytesRead!,
    if (recordsRead != null) 'recordsRead': recordsRead!,
    if (remoteBlocksFetched != null)
      'remoteBlocksFetched': remoteBlocksFetched!,
    if (remoteBytesRead != null) 'remoteBytesRead': remoteBytesRead!,
    if (remoteBytesReadToDisk != null)
      'remoteBytesReadToDisk': remoteBytesReadToDisk!,
    if (remoteReqsDuration != null) 'remoteReqsDuration': remoteReqsDuration!,
    if (stageShufflePushReadMetrics != null)
      'stageShufflePushReadMetrics': stageShufflePushReadMetrics!,
  };
}

/// Shuffle data written for the stage.
typedef StageShuffleWriteMetrics = $ShuffleWriteMetrics;

/// Data related to Stages page summary
class StagesSummary {
  core.String? applicationId;
  core.int? numActiveStages;
  core.int? numCompletedStages;
  core.int? numFailedStages;
  core.int? numPendingStages;
  core.int? numSkippedStages;

  StagesSummary({
    this.applicationId,
    this.numActiveStages,
    this.numCompletedStages,
    this.numFailedStages,
    this.numPendingStages,
    this.numSkippedStages,
  });

  StagesSummary.fromJson(core.Map json_)
    : this(
        applicationId: json_['applicationId'] as core.String?,
        numActiveStages: json_['numActiveStages'] as core.int?,
        numCompletedStages: json_['numCompletedStages'] as core.int?,
        numFailedStages: json_['numFailedStages'] as core.int?,
        numPendingStages: json_['numPendingStages'] as core.int?,
        numSkippedStages: json_['numSkippedStages'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationId != null) 'applicationId': applicationId!,
    if (numActiveStages != null) 'numActiveStages': numActiveStages!,
    if (numCompletedStages != null) 'numCompletedStages': numCompletedStages!,
    if (numFailedStages != null) 'numFailedStages': numFailedStages!,
    if (numPendingStages != null) 'numPendingStages': numPendingStages!,
    if (numSkippedStages != null) 'numSkippedStages': numSkippedStages!,
  };
}

/// A request to start a cluster.
class StartClusterRequest {
  /// Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND)
  /// if a cluster with the specified UUID does not exist.
  ///
  /// Optional.
  core.String? clusterUuid;

  /// A unique ID used to identify the request.
  ///
  /// If the server receives two StartClusterRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.StartClusterRequest)s
  /// with the same id, then the second request will be ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.Recommendation: Set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  StartClusterRequest({this.clusterUuid, this.requestId});

  StartClusterRequest.fromJson(core.Map json_)
    : this(
        clusterUuid: json_['clusterUuid'] as core.String?,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterUuid != null) 'clusterUuid': clusterUuid!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Configuration to handle the startup of instances during cluster create and
/// update process.
class StartupConfig {
  /// The config setting to enable cluster creation/ updation to be successful
  /// only after required_registration_fraction of instances are up and running.
  ///
  /// This configuration is applicable to only secondary workers for now. The
  /// cluster will fail if required_registration_fraction of instances are not
  /// available. This will include instance creation, agent registration, and
  /// service registration (if enabled).
  ///
  /// Optional.
  core.double? requiredRegistrationFraction;

  StartupConfig({this.requiredRegistrationFraction});

  StartupConfig.fromJson(core.Map json_)
    : this(
        requiredRegistrationFraction:
            (json_['requiredRegistrationFraction'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requiredRegistrationFraction != null)
      'requiredRegistrationFraction': requiredRegistrationFraction!,
  };
}

/// Historical state information.
class StateHistory {
  /// The state of the batch at this point in history.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The batch state is unknown.
  /// - "PENDING" : The batch is created before running.
  /// - "RUNNING" : The batch is running.
  /// - "CANCELLING" : The batch is cancelling.
  /// - "CANCELLED" : The batch cancellation was successful.
  /// - "SUCCEEDED" : The batch completed successfully.
  /// - "FAILED" : The batch is no longer running due to an error.
  core.String? state;

  /// Details about the state at this point in history.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The time when the batch entered the historical state.
  ///
  /// Output only.
  core.String? stateStartTime;

  StateHistory({this.state, this.stateMessage, this.stateStartTime});

  StateHistory.fromJson(core.Map json_)
    : this(
        state: json_['state'] as core.String?,
        stateMessage: json_['stateMessage'] as core.String?,
        stateStartTime: json_['stateStartTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (state != null) 'state': state!,
    if (stateMessage != null) 'stateMessage': stateMessage!,
    if (stateStartTime != null) 'stateStartTime': stateStartTime!,
  };
}

class StateOperatorProgress {
  core.String? allRemovalsTimeMs;
  core.String? allUpdatesTimeMs;
  core.String? commitTimeMs;
  core.Map<core.String, core.String>? customMetrics;
  core.String? memoryUsedBytes;
  core.String? numRowsDroppedByWatermark;
  core.String? numRowsRemoved;
  core.String? numRowsTotal;
  core.String? numRowsUpdated;
  core.String? numShufflePartitions;
  core.String? numStateStoreInstances;
  core.String? operatorName;

  StateOperatorProgress({
    this.allRemovalsTimeMs,
    this.allUpdatesTimeMs,
    this.commitTimeMs,
    this.customMetrics,
    this.memoryUsedBytes,
    this.numRowsDroppedByWatermark,
    this.numRowsRemoved,
    this.numRowsTotal,
    this.numRowsUpdated,
    this.numShufflePartitions,
    this.numStateStoreInstances,
    this.operatorName,
  });

  StateOperatorProgress.fromJson(core.Map json_)
    : this(
        allRemovalsTimeMs: json_['allRemovalsTimeMs'] as core.String?,
        allUpdatesTimeMs: json_['allUpdatesTimeMs'] as core.String?,
        commitTimeMs: json_['commitTimeMs'] as core.String?,
        customMetrics: (json_['customMetrics']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        memoryUsedBytes: json_['memoryUsedBytes'] as core.String?,
        numRowsDroppedByWatermark:
            json_['numRowsDroppedByWatermark'] as core.String?,
        numRowsRemoved: json_['numRowsRemoved'] as core.String?,
        numRowsTotal: json_['numRowsTotal'] as core.String?,
        numRowsUpdated: json_['numRowsUpdated'] as core.String?,
        numShufflePartitions: json_['numShufflePartitions'] as core.String?,
        numStateStoreInstances: json_['numStateStoreInstances'] as core.String?,
        operatorName: json_['operatorName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allRemovalsTimeMs != null) 'allRemovalsTimeMs': allRemovalsTimeMs!,
    if (allUpdatesTimeMs != null) 'allUpdatesTimeMs': allUpdatesTimeMs!,
    if (commitTimeMs != null) 'commitTimeMs': commitTimeMs!,
    if (customMetrics != null) 'customMetrics': customMetrics!,
    if (memoryUsedBytes != null) 'memoryUsedBytes': memoryUsedBytes!,
    if (numRowsDroppedByWatermark != null)
      'numRowsDroppedByWatermark': numRowsDroppedByWatermark!,
    if (numRowsRemoved != null) 'numRowsRemoved': numRowsRemoved!,
    if (numRowsTotal != null) 'numRowsTotal': numRowsTotal!,
    if (numRowsUpdated != null) 'numRowsUpdated': numRowsUpdated!,
    if (numShufflePartitions != null)
      'numShufflePartitions': numShufflePartitions!,
    if (numStateStoreInstances != null)
      'numStateStoreInstances': numStateStoreInstances!,
    if (operatorName != null) 'operatorName': operatorName!,
  };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// A request to stop a cluster.
class StopClusterRequest {
  /// Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND)
  /// if a cluster with the specified UUID does not exist.
  ///
  /// Optional.
  core.String? clusterUuid;

  /// A unique ID used to identify the request.
  ///
  /// If the server receives two StopClusterRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.StopClusterRequest)s
  /// with the same id, then the second request will be ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.Recommendation: Set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  StopClusterRequest({this.clusterUuid, this.requestId});

  StopClusterRequest.fromJson(core.Map json_)
    : this(
        clusterUuid: json_['clusterUuid'] as core.String?,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterUuid != null) 'clusterUuid': clusterUuid!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Stream Block Data.
class StreamBlockData {
  core.bool? deserialized;
  core.String? diskSize;
  core.String? executorId;
  core.String? hostPort;
  core.String? memSize;
  core.String? name;
  core.String? storageLevel;
  core.bool? useDisk;
  core.bool? useMemory;

  StreamBlockData({
    this.deserialized,
    this.diskSize,
    this.executorId,
    this.hostPort,
    this.memSize,
    this.name,
    this.storageLevel,
    this.useDisk,
    this.useMemory,
  });

  StreamBlockData.fromJson(core.Map json_)
    : this(
        deserialized: json_['deserialized'] as core.bool?,
        diskSize: json_['diskSize'] as core.String?,
        executorId: json_['executorId'] as core.String?,
        hostPort: json_['hostPort'] as core.String?,
        memSize: json_['memSize'] as core.String?,
        name: json_['name'] as core.String?,
        storageLevel: json_['storageLevel'] as core.String?,
        useDisk: json_['useDisk'] as core.bool?,
        useMemory: json_['useMemory'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deserialized != null) 'deserialized': deserialized!,
    if (diskSize != null) 'diskSize': diskSize!,
    if (executorId != null) 'executorId': executorId!,
    if (hostPort != null) 'hostPort': hostPort!,
    if (memSize != null) 'memSize': memSize!,
    if (name != null) 'name': name!,
    if (storageLevel != null) 'storageLevel': storageLevel!,
    if (useDisk != null) 'useDisk': useDisk!,
    if (useMemory != null) 'useMemory': useMemory!,
  };
}

/// Streaming
class StreamingQueryData {
  core.String? endTimestamp;
  core.String? exception;
  core.bool? isActive;
  core.String? name;
  core.String? runId;
  core.String? startTimestamp;
  core.String? streamingQueryId;

  StreamingQueryData({
    this.endTimestamp,
    this.exception,
    this.isActive,
    this.name,
    this.runId,
    this.startTimestamp,
    this.streamingQueryId,
  });

  StreamingQueryData.fromJson(core.Map json_)
    : this(
        endTimestamp: json_['endTimestamp'] as core.String?,
        exception: json_['exception'] as core.String?,
        isActive: json_['isActive'] as core.bool?,
        name: json_['name'] as core.String?,
        runId: json_['runId'] as core.String?,
        startTimestamp: json_['startTimestamp'] as core.String?,
        streamingQueryId: json_['streamingQueryId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTimestamp != null) 'endTimestamp': endTimestamp!,
    if (exception != null) 'exception': exception!,
    if (isActive != null) 'isActive': isActive!,
    if (name != null) 'name': name!,
    if (runId != null) 'runId': runId!,
    if (startTimestamp != null) 'startTimestamp': startTimestamp!,
    if (streamingQueryId != null) 'streamingQueryId': streamingQueryId!,
  };
}

class StreamingQueryProgress {
  core.String? batchDuration;
  core.String? batchId;
  core.Map<core.String, core.String>? durationMillis;
  core.Map<core.String, core.String>? eventTime;
  core.String? name;
  core.Map<core.String, core.String>? observedMetrics;
  core.String? runId;
  SinkProgress? sink;
  core.List<SourceProgress>? sources;
  core.List<StateOperatorProgress>? stateOperators;
  core.String? streamingQueryProgressId;
  core.String? timestamp;

  StreamingQueryProgress({
    this.batchDuration,
    this.batchId,
    this.durationMillis,
    this.eventTime,
    this.name,
    this.observedMetrics,
    this.runId,
    this.sink,
    this.sources,
    this.stateOperators,
    this.streamingQueryProgressId,
    this.timestamp,
  });

  StreamingQueryProgress.fromJson(core.Map json_)
    : this(
        batchDuration: json_['batchDuration'] as core.String?,
        batchId: json_['batchId'] as core.String?,
        durationMillis: (json_['durationMillis']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        eventTime: (json_['eventTime'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        name: json_['name'] as core.String?,
        observedMetrics: (json_['observedMetrics']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        runId: json_['runId'] as core.String?,
        sink:
            json_.containsKey('sink')
                ? SinkProgress.fromJson(
                  json_['sink'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) => SourceProgress.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        stateOperators:
            (json_['stateOperators'] as core.List?)
                ?.map(
                  (value) => StateOperatorProgress.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        streamingQueryProgressId:
            json_['streamingQueryProgressId'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batchDuration != null) 'batchDuration': batchDuration!,
    if (batchId != null) 'batchId': batchId!,
    if (durationMillis != null) 'durationMillis': durationMillis!,
    if (eventTime != null) 'eventTime': eventTime!,
    if (name != null) 'name': name!,
    if (observedMetrics != null) 'observedMetrics': observedMetrics!,
    if (runId != null) 'runId': runId!,
    if (sink != null) 'sink': sink!,
    if (sources != null) 'sources': sources!,
    if (stateOperators != null) 'stateOperators': stateOperators!,
    if (streamingQueryProgressId != null)
      'streamingQueryProgressId': streamingQueryProgressId!,
    if (timestamp != null) 'timestamp': timestamp!,
  };
}

/// A request to submit a job.
class SubmitJobRequest {
  /// The job resource.
  ///
  /// Required.
  Job? job;

  /// A unique id used to identify the request.
  ///
  /// If the server receives two SubmitJobRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s
  /// with the same id, then the second request will be ignored and the first
  /// Job created and stored in the backend is returned.It is recommended to
  /// always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  SubmitJobRequest({this.job, this.requestId});

  SubmitJobRequest.fromJson(core.Map json_)
    : this(
        job:
            json_.containsKey('job')
                ? Job.fromJson(
                  json_['job'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (job != null) 'job': job!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Consolidated summary of executors for a Spark Application.
class SummarizeSessionSparkApplicationExecutorsResponse {
  /// Consolidated summary for active executors.
  ConsolidatedExecutorSummary? activeExecutorSummary;

  /// Spark Application Id
  core.String? applicationId;

  /// Consolidated summary for dead executors.
  ConsolidatedExecutorSummary? deadExecutorSummary;

  /// Overall consolidated summary for all executors.
  ConsolidatedExecutorSummary? totalExecutorSummary;

  SummarizeSessionSparkApplicationExecutorsResponse({
    this.activeExecutorSummary,
    this.applicationId,
    this.deadExecutorSummary,
    this.totalExecutorSummary,
  });

  SummarizeSessionSparkApplicationExecutorsResponse.fromJson(core.Map json_)
    : this(
        activeExecutorSummary:
            json_.containsKey('activeExecutorSummary')
                ? ConsolidatedExecutorSummary.fromJson(
                  json_['activeExecutorSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        applicationId: json_['applicationId'] as core.String?,
        deadExecutorSummary:
            json_.containsKey('deadExecutorSummary')
                ? ConsolidatedExecutorSummary.fromJson(
                  json_['deadExecutorSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalExecutorSummary:
            json_.containsKey('totalExecutorSummary')
                ? ConsolidatedExecutorSummary.fromJson(
                  json_['totalExecutorSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeExecutorSummary != null)
      'activeExecutorSummary': activeExecutorSummary!,
    if (applicationId != null) 'applicationId': applicationId!,
    if (deadExecutorSummary != null)
      'deadExecutorSummary': deadExecutorSummary!,
    if (totalExecutorSummary != null)
      'totalExecutorSummary': totalExecutorSummary!,
  };
}

/// Summary of a Spark Application jobs.
class SummarizeSessionSparkApplicationJobsResponse {
  /// Summary of a Spark Application Jobs
  JobsSummary? jobsSummary;

  SummarizeSessionSparkApplicationJobsResponse({this.jobsSummary});

  SummarizeSessionSparkApplicationJobsResponse.fromJson(core.Map json_)
    : this(
        jobsSummary:
            json_.containsKey('jobsSummary')
                ? JobsSummary.fromJson(
                  json_['jobsSummary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobsSummary != null) 'jobsSummary': jobsSummary!,
  };
}

/// Summary of tasks for a Spark Application stage attempt.
class SummarizeSessionSparkApplicationStageAttemptTasksResponse {
  /// Summary of tasks for a Spark Application Stage Attempt
  StageAttemptTasksSummary? stageAttemptTasksSummary;

  SummarizeSessionSparkApplicationStageAttemptTasksResponse({
    this.stageAttemptTasksSummary,
  });

  SummarizeSessionSparkApplicationStageAttemptTasksResponse.fromJson(
    core.Map json_,
  ) : this(
        stageAttemptTasksSummary:
            json_.containsKey('stageAttemptTasksSummary')
                ? StageAttemptTasksSummary.fromJson(
                  json_['stageAttemptTasksSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (stageAttemptTasksSummary != null)
      'stageAttemptTasksSummary': stageAttemptTasksSummary!,
  };
}

/// Summary of a Spark Application stages.
class SummarizeSessionSparkApplicationStagesResponse {
  /// Summary of a Spark Application Stages
  StagesSummary? stagesSummary;

  SummarizeSessionSparkApplicationStagesResponse({this.stagesSummary});

  SummarizeSessionSparkApplicationStagesResponse.fromJson(core.Map json_)
    : this(
        stagesSummary:
            json_.containsKey('stagesSummary')
                ? StagesSummary.fromJson(
                  json_['stagesSummary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (stagesSummary != null) 'stagesSummary': stagesSummary!,
  };
}

/// Consolidated summary of executors for a Spark Application.
class SummarizeSparkApplicationExecutorsResponse {
  /// Consolidated summary for active executors.
  ConsolidatedExecutorSummary? activeExecutorSummary;

  /// Spark Application Id
  core.String? applicationId;

  /// Consolidated summary for dead executors.
  ConsolidatedExecutorSummary? deadExecutorSummary;

  /// Overall consolidated summary for all executors.
  ConsolidatedExecutorSummary? totalExecutorSummary;

  SummarizeSparkApplicationExecutorsResponse({
    this.activeExecutorSummary,
    this.applicationId,
    this.deadExecutorSummary,
    this.totalExecutorSummary,
  });

  SummarizeSparkApplicationExecutorsResponse.fromJson(core.Map json_)
    : this(
        activeExecutorSummary:
            json_.containsKey('activeExecutorSummary')
                ? ConsolidatedExecutorSummary.fromJson(
                  json_['activeExecutorSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        applicationId: json_['applicationId'] as core.String?,
        deadExecutorSummary:
            json_.containsKey('deadExecutorSummary')
                ? ConsolidatedExecutorSummary.fromJson(
                  json_['deadExecutorSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalExecutorSummary:
            json_.containsKey('totalExecutorSummary')
                ? ConsolidatedExecutorSummary.fromJson(
                  json_['totalExecutorSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeExecutorSummary != null)
      'activeExecutorSummary': activeExecutorSummary!,
    if (applicationId != null) 'applicationId': applicationId!,
    if (deadExecutorSummary != null)
      'deadExecutorSummary': deadExecutorSummary!,
    if (totalExecutorSummary != null)
      'totalExecutorSummary': totalExecutorSummary!,
  };
}

/// Summary of a Spark Application jobs.
class SummarizeSparkApplicationJobsResponse {
  /// Summary of a Spark Application Jobs
  JobsSummary? jobsSummary;

  SummarizeSparkApplicationJobsResponse({this.jobsSummary});

  SummarizeSparkApplicationJobsResponse.fromJson(core.Map json_)
    : this(
        jobsSummary:
            json_.containsKey('jobsSummary')
                ? JobsSummary.fromJson(
                  json_['jobsSummary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobsSummary != null) 'jobsSummary': jobsSummary!,
  };
}

/// Summary of tasks for a Spark Application stage attempt.
class SummarizeSparkApplicationStageAttemptTasksResponse {
  /// Summary of tasks for a Spark Application Stage Attempt
  StageAttemptTasksSummary? stageAttemptTasksSummary;

  SummarizeSparkApplicationStageAttemptTasksResponse({
    this.stageAttemptTasksSummary,
  });

  SummarizeSparkApplicationStageAttemptTasksResponse.fromJson(core.Map json_)
    : this(
        stageAttemptTasksSummary:
            json_.containsKey('stageAttemptTasksSummary')
                ? StageAttemptTasksSummary.fromJson(
                  json_['stageAttemptTasksSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (stageAttemptTasksSummary != null)
      'stageAttemptTasksSummary': stageAttemptTasksSummary!,
  };
}

/// Summary of a Spark Application stages.
class SummarizeSparkApplicationStagesResponse {
  /// Summary of a Spark Application Stages
  StagesSummary? stagesSummary;

  SummarizeSparkApplicationStagesResponse({this.stagesSummary});

  SummarizeSparkApplicationStagesResponse.fromJson(core.Map json_)
    : this(
        stagesSummary:
            json_.containsKey('stagesSummary')
                ? StagesSummary.fromJson(
                  json_['stagesSummary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (stagesSummary != null) 'stagesSummary': stagesSummary!,
  };
}

/// Data corresponding to tasks created by spark.
class TaskData {
  core.List<AccumulableInfo>? accumulatorUpdates;
  core.int? attempt;
  core.String? durationMillis;
  core.String? errorMessage;
  core.String? executorId;
  core.Map<core.String, core.String>? executorLogs;
  core.String? gettingResultTimeMillis;
  core.bool? hasMetrics;
  core.String? host;
  core.int? index;
  core.String? launchTime;
  core.int? partitionId;
  core.String? resultFetchStart;
  core.String? schedulerDelayMillis;
  core.bool? speculative;
  core.int? stageAttemptId;
  core.String? stageId;
  core.String? status;
  core.String? taskId;
  core.String? taskLocality;
  TaskMetrics? taskMetrics;

  TaskData({
    this.accumulatorUpdates,
    this.attempt,
    this.durationMillis,
    this.errorMessage,
    this.executorId,
    this.executorLogs,
    this.gettingResultTimeMillis,
    this.hasMetrics,
    this.host,
    this.index,
    this.launchTime,
    this.partitionId,
    this.resultFetchStart,
    this.schedulerDelayMillis,
    this.speculative,
    this.stageAttemptId,
    this.stageId,
    this.status,
    this.taskId,
    this.taskLocality,
    this.taskMetrics,
  });

  TaskData.fromJson(core.Map json_)
    : this(
        accumulatorUpdates:
            (json_['accumulatorUpdates'] as core.List?)
                ?.map(
                  (value) => AccumulableInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        attempt: json_['attempt'] as core.int?,
        durationMillis: json_['durationMillis'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        executorId: json_['executorId'] as core.String?,
        executorLogs: (json_['executorLogs']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        gettingResultTimeMillis:
            json_['gettingResultTimeMillis'] as core.String?,
        hasMetrics: json_['hasMetrics'] as core.bool?,
        host: json_['host'] as core.String?,
        index: json_['index'] as core.int?,
        launchTime: json_['launchTime'] as core.String?,
        partitionId: json_['partitionId'] as core.int?,
        resultFetchStart: json_['resultFetchStart'] as core.String?,
        schedulerDelayMillis: json_['schedulerDelayMillis'] as core.String?,
        speculative: json_['speculative'] as core.bool?,
        stageAttemptId: json_['stageAttemptId'] as core.int?,
        stageId: json_['stageId'] as core.String?,
        status: json_['status'] as core.String?,
        taskId: json_['taskId'] as core.String?,
        taskLocality: json_['taskLocality'] as core.String?,
        taskMetrics:
            json_.containsKey('taskMetrics')
                ? TaskMetrics.fromJson(
                  json_['taskMetrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accumulatorUpdates != null) 'accumulatorUpdates': accumulatorUpdates!,
    if (attempt != null) 'attempt': attempt!,
    if (durationMillis != null) 'durationMillis': durationMillis!,
    if (errorMessage != null) 'errorMessage': errorMessage!,
    if (executorId != null) 'executorId': executorId!,
    if (executorLogs != null) 'executorLogs': executorLogs!,
    if (gettingResultTimeMillis != null)
      'gettingResultTimeMillis': gettingResultTimeMillis!,
    if (hasMetrics != null) 'hasMetrics': hasMetrics!,
    if (host != null) 'host': host!,
    if (index != null) 'index': index!,
    if (launchTime != null) 'launchTime': launchTime!,
    if (partitionId != null) 'partitionId': partitionId!,
    if (resultFetchStart != null) 'resultFetchStart': resultFetchStart!,
    if (schedulerDelayMillis != null)
      'schedulerDelayMillis': schedulerDelayMillis!,
    if (speculative != null) 'speculative': speculative!,
    if (stageAttemptId != null) 'stageAttemptId': stageAttemptId!,
    if (stageId != null) 'stageId': stageId!,
    if (status != null) 'status': status!,
    if (taskId != null) 'taskId': taskId!,
    if (taskLocality != null) 'taskLocality': taskLocality!,
    if (taskMetrics != null) 'taskMetrics': taskMetrics!,
  };
}

/// Executor Task Metrics
class TaskMetrics {
  core.String? diskBytesSpilled;
  core.String? executorCpuTimeNanos;
  core.String? executorDeserializeCpuTimeNanos;
  core.String? executorDeserializeTimeMillis;
  core.String? executorRunTimeMillis;
  InputMetrics? inputMetrics;
  core.String? jvmGcTimeMillis;
  core.String? memoryBytesSpilled;
  OutputMetrics? outputMetrics;
  core.String? peakExecutionMemoryBytes;
  core.String? resultSerializationTimeMillis;
  core.String? resultSize;
  ShuffleReadMetrics? shuffleReadMetrics;
  ShuffleWriteMetrics? shuffleWriteMetrics;

  TaskMetrics({
    this.diskBytesSpilled,
    this.executorCpuTimeNanos,
    this.executorDeserializeCpuTimeNanos,
    this.executorDeserializeTimeMillis,
    this.executorRunTimeMillis,
    this.inputMetrics,
    this.jvmGcTimeMillis,
    this.memoryBytesSpilled,
    this.outputMetrics,
    this.peakExecutionMemoryBytes,
    this.resultSerializationTimeMillis,
    this.resultSize,
    this.shuffleReadMetrics,
    this.shuffleWriteMetrics,
  });

  TaskMetrics.fromJson(core.Map json_)
    : this(
        diskBytesSpilled: json_['diskBytesSpilled'] as core.String?,
        executorCpuTimeNanos: json_['executorCpuTimeNanos'] as core.String?,
        executorDeserializeCpuTimeNanos:
            json_['executorDeserializeCpuTimeNanos'] as core.String?,
        executorDeserializeTimeMillis:
            json_['executorDeserializeTimeMillis'] as core.String?,
        executorRunTimeMillis: json_['executorRunTimeMillis'] as core.String?,
        inputMetrics:
            json_.containsKey('inputMetrics')
                ? InputMetrics.fromJson(
                  json_['inputMetrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jvmGcTimeMillis: json_['jvmGcTimeMillis'] as core.String?,
        memoryBytesSpilled: json_['memoryBytesSpilled'] as core.String?,
        outputMetrics:
            json_.containsKey('outputMetrics')
                ? OutputMetrics.fromJson(
                  json_['outputMetrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        peakExecutionMemoryBytes:
            json_['peakExecutionMemoryBytes'] as core.String?,
        resultSerializationTimeMillis:
            json_['resultSerializationTimeMillis'] as core.String?,
        resultSize: json_['resultSize'] as core.String?,
        shuffleReadMetrics:
            json_.containsKey('shuffleReadMetrics')
                ? ShuffleReadMetrics.fromJson(
                  json_['shuffleReadMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        shuffleWriteMetrics:
            json_.containsKey('shuffleWriteMetrics')
                ? ShuffleWriteMetrics.fromJson(
                  json_['shuffleWriteMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (diskBytesSpilled != null) 'diskBytesSpilled': diskBytesSpilled!,
    if (executorCpuTimeNanos != null)
      'executorCpuTimeNanos': executorCpuTimeNanos!,
    if (executorDeserializeCpuTimeNanos != null)
      'executorDeserializeCpuTimeNanos': executorDeserializeCpuTimeNanos!,
    if (executorDeserializeTimeMillis != null)
      'executorDeserializeTimeMillis': executorDeserializeTimeMillis!,
    if (executorRunTimeMillis != null)
      'executorRunTimeMillis': executorRunTimeMillis!,
    if (inputMetrics != null) 'inputMetrics': inputMetrics!,
    if (jvmGcTimeMillis != null) 'jvmGcTimeMillis': jvmGcTimeMillis!,
    if (memoryBytesSpilled != null) 'memoryBytesSpilled': memoryBytesSpilled!,
    if (outputMetrics != null) 'outputMetrics': outputMetrics!,
    if (peakExecutionMemoryBytes != null)
      'peakExecutionMemoryBytes': peakExecutionMemoryBytes!,
    if (resultSerializationTimeMillis != null)
      'resultSerializationTimeMillis': resultSerializationTimeMillis!,
    if (resultSize != null) 'resultSize': resultSize!,
    if (shuffleReadMetrics != null) 'shuffleReadMetrics': shuffleReadMetrics!,
    if (shuffleWriteMetrics != null)
      'shuffleWriteMetrics': shuffleWriteMetrics!,
  };
}

class TaskQuantileMetrics {
  Quantiles? diskBytesSpilled;
  Quantiles? durationMillis;
  Quantiles? executorCpuTimeNanos;
  Quantiles? executorDeserializeCpuTimeNanos;
  Quantiles? executorDeserializeTimeMillis;
  Quantiles? executorRunTimeMillis;
  Quantiles? gettingResultTimeMillis;
  InputQuantileMetrics? inputMetrics;
  Quantiles? jvmGcTimeMillis;
  Quantiles? memoryBytesSpilled;
  OutputQuantileMetrics? outputMetrics;
  Quantiles? peakExecutionMemoryBytes;
  Quantiles? resultSerializationTimeMillis;
  Quantiles? resultSize;
  Quantiles? schedulerDelayMillis;
  ShuffleReadQuantileMetrics? shuffleReadMetrics;
  ShuffleWriteQuantileMetrics? shuffleWriteMetrics;

  TaskQuantileMetrics({
    this.diskBytesSpilled,
    this.durationMillis,
    this.executorCpuTimeNanos,
    this.executorDeserializeCpuTimeNanos,
    this.executorDeserializeTimeMillis,
    this.executorRunTimeMillis,
    this.gettingResultTimeMillis,
    this.inputMetrics,
    this.jvmGcTimeMillis,
    this.memoryBytesSpilled,
    this.outputMetrics,
    this.peakExecutionMemoryBytes,
    this.resultSerializationTimeMillis,
    this.resultSize,
    this.schedulerDelayMillis,
    this.shuffleReadMetrics,
    this.shuffleWriteMetrics,
  });

  TaskQuantileMetrics.fromJson(core.Map json_)
    : this(
        diskBytesSpilled:
            json_.containsKey('diskBytesSpilled')
                ? Quantiles.fromJson(
                  json_['diskBytesSpilled']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        durationMillis:
            json_.containsKey('durationMillis')
                ? Quantiles.fromJson(
                  json_['durationMillis']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executorCpuTimeNanos:
            json_.containsKey('executorCpuTimeNanos')
                ? Quantiles.fromJson(
                  json_['executorCpuTimeNanos']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executorDeserializeCpuTimeNanos:
            json_.containsKey('executorDeserializeCpuTimeNanos')
                ? Quantiles.fromJson(
                  json_['executorDeserializeCpuTimeNanos']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executorDeserializeTimeMillis:
            json_.containsKey('executorDeserializeTimeMillis')
                ? Quantiles.fromJson(
                  json_['executorDeserializeTimeMillis']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executorRunTimeMillis:
            json_.containsKey('executorRunTimeMillis')
                ? Quantiles.fromJson(
                  json_['executorRunTimeMillis']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gettingResultTimeMillis:
            json_.containsKey('gettingResultTimeMillis')
                ? Quantiles.fromJson(
                  json_['gettingResultTimeMillis']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputMetrics:
            json_.containsKey('inputMetrics')
                ? InputQuantileMetrics.fromJson(
                  json_['inputMetrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jvmGcTimeMillis:
            json_.containsKey('jvmGcTimeMillis')
                ? Quantiles.fromJson(
                  json_['jvmGcTimeMillis']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryBytesSpilled:
            json_.containsKey('memoryBytesSpilled')
                ? Quantiles.fromJson(
                  json_['memoryBytesSpilled']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputMetrics:
            json_.containsKey('outputMetrics')
                ? OutputQuantileMetrics.fromJson(
                  json_['outputMetrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        peakExecutionMemoryBytes:
            json_.containsKey('peakExecutionMemoryBytes')
                ? Quantiles.fromJson(
                  json_['peakExecutionMemoryBytes']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resultSerializationTimeMillis:
            json_.containsKey('resultSerializationTimeMillis')
                ? Quantiles.fromJson(
                  json_['resultSerializationTimeMillis']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resultSize:
            json_.containsKey('resultSize')
                ? Quantiles.fromJson(
                  json_['resultSize'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        schedulerDelayMillis:
            json_.containsKey('schedulerDelayMillis')
                ? Quantiles.fromJson(
                  json_['schedulerDelayMillis']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        shuffleReadMetrics:
            json_.containsKey('shuffleReadMetrics')
                ? ShuffleReadQuantileMetrics.fromJson(
                  json_['shuffleReadMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        shuffleWriteMetrics:
            json_.containsKey('shuffleWriteMetrics')
                ? ShuffleWriteQuantileMetrics.fromJson(
                  json_['shuffleWriteMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (diskBytesSpilled != null) 'diskBytesSpilled': diskBytesSpilled!,
    if (durationMillis != null) 'durationMillis': durationMillis!,
    if (executorCpuTimeNanos != null)
      'executorCpuTimeNanos': executorCpuTimeNanos!,
    if (executorDeserializeCpuTimeNanos != null)
      'executorDeserializeCpuTimeNanos': executorDeserializeCpuTimeNanos!,
    if (executorDeserializeTimeMillis != null)
      'executorDeserializeTimeMillis': executorDeserializeTimeMillis!,
    if (executorRunTimeMillis != null)
      'executorRunTimeMillis': executorRunTimeMillis!,
    if (gettingResultTimeMillis != null)
      'gettingResultTimeMillis': gettingResultTimeMillis!,
    if (inputMetrics != null) 'inputMetrics': inputMetrics!,
    if (jvmGcTimeMillis != null) 'jvmGcTimeMillis': jvmGcTimeMillis!,
    if (memoryBytesSpilled != null) 'memoryBytesSpilled': memoryBytesSpilled!,
    if (outputMetrics != null) 'outputMetrics': outputMetrics!,
    if (peakExecutionMemoryBytes != null)
      'peakExecutionMemoryBytes': peakExecutionMemoryBytes!,
    if (resultSerializationTimeMillis != null)
      'resultSerializationTimeMillis': resultSerializationTimeMillis!,
    if (resultSize != null) 'resultSize': resultSize!,
    if (schedulerDelayMillis != null)
      'schedulerDelayMillis': schedulerDelayMillis!,
    if (shuffleReadMetrics != null) 'shuffleReadMetrics': shuffleReadMetrics!,
    if (shuffleWriteMetrics != null)
      'shuffleWriteMetrics': shuffleWriteMetrics!,
  };
}

/// Resources used per task created by the application.
class TaskResourceRequest {
  core.double? amount;
  core.String? resourceName;

  TaskResourceRequest({this.amount, this.resourceName});

  TaskResourceRequest.fromJson(core.Map json_)
    : this(
        amount: (json_['amount'] as core.num?)?.toDouble(),
        resourceName: json_['resourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (amount != null) 'amount': amount!,
    if (resourceName != null) 'resourceName': resourceName!,
  };
}

/// A configurable parameter that replaces one or more fields in the template.
///
/// Parameterizable fields: - Labels - File uris - Job properties - Job
/// arguments - Script variables - Main class (in HadoopJob and SparkJob) - Zone
/// (in ClusterSelector)
class TemplateParameter {
  /// Brief description of the parameter.
  ///
  /// Must not exceed 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Paths to all fields that the parameter replaces.
  ///
  /// A field is allowed to appear in at most one parameter's list of field
  /// paths.A field path is similar in syntax to a google.protobuf.FieldMask.
  /// For example, a field path that references the zone field of a workflow
  /// template's cluster selector would be specified as
  /// placement.clusterSelector.zone.Also, field paths can reference fields
  /// using the following syntax: Values in maps can be referenced by key:
  /// labels'key' placement.clusterSelector.clusterLabels'key'
  /// placement.managedCluster.labels'key'
  /// placement.clusterSelector.clusterLabels'key' jobs'step-id'.labels'key'
  /// Jobs in the jobs list can be referenced by step-id:
  /// jobs'step-id'.hadoopJob.mainJarFileUri jobs'step-id'.hiveJob.queryFileUri
  /// jobs'step-id'.pySparkJob.mainPythonFileUri
  /// jobs'step-id'.hadoopJob.jarFileUris0 jobs'step-id'.hadoopJob.archiveUris0
  /// jobs'step-id'.hadoopJob.fileUris0 jobs'step-id'.pySparkJob.pythonFileUris0
  /// Items in repeated fields can be referenced by a zero-based index:
  /// jobs'step-id'.sparkJob.args0 Other examples:
  /// jobs'step-id'.hadoopJob.properties'key' jobs'step-id'.hadoopJob.args0
  /// jobs'step-id'.hiveJob.scriptVariables'key'
  /// jobs'step-id'.hadoopJob.mainJarFileUri placement.clusterSelector.zoneIt
  /// may not be possible to parameterize maps and repeated fields in their
  /// entirety since only individual map values and individual items in repeated
  /// fields can be referenced. For example, the following field paths are
  /// invalid: placement.clusterSelector.clusterLabels
  /// jobs'step-id'.sparkJob.args
  ///
  /// Required.
  core.List<core.String>? fields;

  /// Parameter name.
  ///
  /// The parameter name is used as the key, and paired with the parameter
  /// value, which are passed to the template when the template is instantiated.
  /// The name must contain only capital letters (A-Z), numbers (0-9), and
  /// underscores (_), and must not start with a number. The maximum length is
  /// 40 characters.
  ///
  /// Required.
  core.String? name;

  /// Validation rules to be applied to this parameter's value.
  ///
  /// Optional.
  ParameterValidation? validation;

  TemplateParameter({
    this.description,
    this.fields,
    this.name,
    this.validation,
  });

  TemplateParameter.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        fields:
            (json_['fields'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        validation:
            json_.containsKey('validation')
                ? ParameterValidation.fromJson(
                  json_['validation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (fields != null) 'fields': fields!,
    if (name != null) 'name': name!,
    if (validation != null) 'validation': validation!,
  };
}

/// A request to terminate an interactive session.
class TerminateSessionRequest {
  /// A unique ID used to identify the request.
  ///
  /// If the service receives two TerminateSessionRequest
  /// (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.TerminateSessionRequest)s
  /// with the same ID, the second request is ignored.Recommendation: Set this
  /// value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value
  /// must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// Optional.
  core.String? requestId;

  TerminateSessionRequest({this.requestId});

  TerminateSessionRequest.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Request message for TestIamPermissions method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest01;

/// Response message for TestIamPermissions method.
typedef TestIamPermissionsResponse = $TestIamPermissionsResponse;

/// A Dataproc job for running Trino (https://trino.io/) queries.
///
/// IMPORTANT: The Dataproc Trino Optional Component
/// (https://cloud.google.com/dataproc/docs/concepts/components/trino) must be
/// enabled when the cluster is created to submit a Trino job to the cluster.
class TrinoJob {
  /// Trino client tags to attach to this query
  ///
  /// Optional.
  core.List<core.String>? clientTags;

  /// Whether to continue executing queries if a query fails.
  ///
  /// The default value is false. Setting to true can be useful when executing
  /// independent parallel queries.
  ///
  /// Optional.
  core.bool? continueOnFailure;

  /// The runtime log config for job execution.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// The format in which query output will be displayed.
  ///
  /// See the Trino documentation for supported output formats
  ///
  /// Optional.
  core.String? outputFormat;

  /// A mapping of property names to values.
  ///
  /// Used to set Trino session properties
  /// (https://trino.io/docs/current/sql/set-session.html) Equivalent to using
  /// the --session flag in the Trino CLI
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  core.String? queryFileUri;

  /// A list of queries.
  QueryList? queryList;

  TrinoJob({
    this.clientTags,
    this.continueOnFailure,
    this.loggingConfig,
    this.outputFormat,
    this.properties,
    this.queryFileUri,
    this.queryList,
  });

  TrinoJob.fromJson(core.Map json_)
    : this(
        clientTags:
            (json_['clientTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        continueOnFailure: json_['continueOnFailure'] as core.bool?,
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputFormat: json_['outputFormat'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        queryFileUri: json_['queryFileUri'] as core.String?,
        queryList:
            json_.containsKey('queryList')
                ? QueryList.fromJson(
                  json_['queryList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientTags != null) 'clientTags': clientTags!,
    if (continueOnFailure != null) 'continueOnFailure': continueOnFailure!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (outputFormat != null) 'outputFormat': outputFormat!,
    if (properties != null) 'properties': properties!,
    if (queryFileUri != null) 'queryFileUri': queryFileUri!,
    if (queryList != null) 'queryList': queryList!,
  };
}

/// Usage metrics represent approximate total resources consumed by a workload.
class UsageMetrics {
  /// Accelerator type being used, if any
  ///
  /// Optional.
  core.String? acceleratorType;

  /// Accelerator usage in (milliAccelerator x seconds) (see Dataproc Serverless
  /// pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  ///
  /// Optional.
  core.String? milliAcceleratorSeconds;

  /// DCU (Dataproc Compute Units) usage in (milliDCU x seconds) (see Dataproc
  /// Serverless pricing
  /// (https://cloud.google.com/dataproc-serverless/pricing)).
  ///
  /// Optional.
  core.String? milliDcuSeconds;

  /// Slot usage in (milliSlot x seconds).
  ///
  /// Optional.
  core.String? milliSlotSeconds;

  /// Shuffle storage usage in (GB x seconds) (see Dataproc Serverless pricing
  /// (https://cloud.google.com/dataproc-serverless/pricing)).
  ///
  /// Optional.
  core.String? shuffleStorageGbSeconds;

  /// The timestamp of the usage metrics.
  ///
  /// Optional.
  core.String? updateTime;

  UsageMetrics({
    this.acceleratorType,
    this.milliAcceleratorSeconds,
    this.milliDcuSeconds,
    this.milliSlotSeconds,
    this.shuffleStorageGbSeconds,
    this.updateTime,
  });

  UsageMetrics.fromJson(core.Map json_)
    : this(
        acceleratorType: json_['acceleratorType'] as core.String?,
        milliAcceleratorSeconds:
            json_['milliAcceleratorSeconds'] as core.String?,
        milliDcuSeconds: json_['milliDcuSeconds'] as core.String?,
        milliSlotSeconds: json_['milliSlotSeconds'] as core.String?,
        shuffleStorageGbSeconds:
            json_['shuffleStorageGbSeconds'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acceleratorType != null) 'acceleratorType': acceleratorType!,
    if (milliAcceleratorSeconds != null)
      'milliAcceleratorSeconds': milliAcceleratorSeconds!,
    if (milliDcuSeconds != null) 'milliDcuSeconds': milliDcuSeconds!,
    if (milliSlotSeconds != null) 'milliSlotSeconds': milliSlotSeconds!,
    if (shuffleStorageGbSeconds != null)
      'shuffleStorageGbSeconds': shuffleStorageGbSeconds!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The usage snapshot represents the resources consumed by a workload at a
/// specified time.
class UsageSnapshot {
  /// Accelerator type being used, if any
  ///
  /// Optional.
  core.String? acceleratorType;

  /// Milli (one-thousandth) accelerator.
  ///
  /// (see Dataproc Serverless pricing
  /// (https://cloud.google.com/dataproc-serverless/pricing))
  ///
  /// Optional.
  core.String? milliAccelerator;

  /// Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc
  /// Serverless pricing
  /// (https://cloud.google.com/dataproc-serverless/pricing)).
  ///
  /// Optional.
  core.String? milliDcu;

  /// Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium
  /// tier (see Dataproc Serverless pricing
  /// (https://cloud.google.com/dataproc-serverless/pricing)).
  ///
  /// Optional.
  core.String? milliDcuPremium;

  /// Milli (one-thousandth) Slot usage of the workload.
  ///
  /// Optional.
  core.String? milliSlot;

  /// Shuffle Storage in gigabytes (GB).
  ///
  /// (see Dataproc Serverless pricing
  /// (https://cloud.google.com/dataproc-serverless/pricing))
  ///
  /// Optional.
  core.String? shuffleStorageGb;

  /// Shuffle Storage in gigabytes (GB) charged at premium tier.
  ///
  /// (see Dataproc Serverless pricing
  /// (https://cloud.google.com/dataproc-serverless/pricing))
  ///
  /// Optional.
  core.String? shuffleStorageGbPremium;

  /// The timestamp of the usage snapshot.
  ///
  /// Optional.
  core.String? snapshotTime;

  UsageSnapshot({
    this.acceleratorType,
    this.milliAccelerator,
    this.milliDcu,
    this.milliDcuPremium,
    this.milliSlot,
    this.shuffleStorageGb,
    this.shuffleStorageGbPremium,
    this.snapshotTime,
  });

  UsageSnapshot.fromJson(core.Map json_)
    : this(
        acceleratorType: json_['acceleratorType'] as core.String?,
        milliAccelerator: json_['milliAccelerator'] as core.String?,
        milliDcu: json_['milliDcu'] as core.String?,
        milliDcuPremium: json_['milliDcuPremium'] as core.String?,
        milliSlot: json_['milliSlot'] as core.String?,
        shuffleStorageGb: json_['shuffleStorageGb'] as core.String?,
        shuffleStorageGbPremium:
            json_['shuffleStorageGbPremium'] as core.String?,
        snapshotTime: json_['snapshotTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acceleratorType != null) 'acceleratorType': acceleratorType!,
    if (milliAccelerator != null) 'milliAccelerator': milliAccelerator!,
    if (milliDcu != null) 'milliDcu': milliDcu!,
    if (milliDcuPremium != null) 'milliDcuPremium': milliDcuPremium!,
    if (milliSlot != null) 'milliSlot': milliSlot!,
    if (shuffleStorageGb != null) 'shuffleStorageGb': shuffleStorageGb!,
    if (shuffleStorageGbPremium != null)
      'shuffleStorageGbPremium': shuffleStorageGbPremium!,
    if (snapshotTime != null) 'snapshotTime': snapshotTime!,
  };
}

/// Annotatated property value.
class ValueInfo {
  /// Annotation, comment or explanation why the property was set.
  core.String? annotation;

  /// Value which was replaced by the corresponding component.
  ///
  /// Optional.
  core.String? overriddenValue;

  /// Property value.
  core.String? value;

  ValueInfo({this.annotation, this.overriddenValue, this.value});

  ValueInfo.fromJson(core.Map json_)
    : this(
        annotation: json_['annotation'] as core.String?,
        overriddenValue: json_['overriddenValue'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotation != null) 'annotation': annotation!,
    if (overriddenValue != null) 'overriddenValue': overriddenValue!,
    if (value != null) 'value': value!,
  };
}

/// Validation based on a list of allowed values.
class ValueValidation {
  /// List of allowed values for the parameter.
  ///
  /// Required.
  core.List<core.String>? values;

  ValueValidation({this.values});

  ValueValidation.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// The Dataproc cluster config for a cluster that does not directly control the
/// underlying compute resources, such as a Dataproc-on-GKE cluster
/// (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview).
class VirtualClusterConfig {
  /// Configuration of auxiliary services used by this cluster.
  ///
  /// Optional.
  AuxiliaryServicesConfig? auxiliaryServicesConfig;

  /// The configuration for running the Dataproc cluster on Kubernetes.
  ///
  /// Required.
  KubernetesClusterConfig? kubernetesClusterConfig;

  /// A Cloud Storage bucket used to stage job dependencies, config files, and
  /// job driver console output.
  ///
  /// If you do not specify a staging bucket, Cloud Dataproc will determine a
  /// Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket
  /// according to the Compute Engine zone where your cluster is deployed, and
  /// then create and manage this project-level, per-location bucket (see
  /// Dataproc staging and temp buckets
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  /// This field requires a Cloud Storage bucket name, not a gs://... URI to a
  /// Cloud Storage bucket.
  ///
  /// Optional.
  core.String? stagingBucket;

  VirtualClusterConfig({
    this.auxiliaryServicesConfig,
    this.kubernetesClusterConfig,
    this.stagingBucket,
  });

  VirtualClusterConfig.fromJson(core.Map json_)
    : this(
        auxiliaryServicesConfig:
            json_.containsKey('auxiliaryServicesConfig')
                ? AuxiliaryServicesConfig.fromJson(
                  json_['auxiliaryServicesConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kubernetesClusterConfig:
            json_.containsKey('kubernetesClusterConfig')
                ? KubernetesClusterConfig.fromJson(
                  json_['kubernetesClusterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stagingBucket: json_['stagingBucket'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (auxiliaryServicesConfig != null)
      'auxiliaryServicesConfig': auxiliaryServicesConfig!,
    if (kubernetesClusterConfig != null)
      'kubernetesClusterConfig': kubernetesClusterConfig!,
    if (stagingBucket != null) 'stagingBucket': stagingBucket!,
  };
}

/// A Dataproc workflow template resource.
class WorkflowTemplate {
  /// The time template was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Timeout duration for the DAG of jobs, expressed in seconds (see JSON
  /// representation of duration
  /// (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  ///
  /// The timeout duration must be from 10 minutes ("600s") to 24 hours
  /// ("86400s"). The timer begins when the first job is submitted. If the
  /// workflow is running at the end of the timeout period, any remaining jobs
  /// are cancelled, the workflow is ended, and if the workflow was running on a
  /// managed cluster, the cluster is deleted.
  ///
  /// Optional.
  core.String? dagTimeout;

  /// Encryption settings for encrypting workflow template job arguments.
  ///
  /// Optional.
  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig? encryptionConfig;
  core.String? id;

  /// The Directed Acyclic Graph of Jobs to submit.
  ///
  /// Required.
  core.List<OrderedJob>? jobs;

  /// The labels to associate with this template.
  ///
  /// These labels will be propagated to all jobs and clusters created by the
  /// workflow instance.Label keys must contain 1 to 63 characters, and must
  /// conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values
  /// may be empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32
  /// labels can be associated with a template.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the workflow template, as described in
  /// https://cloud.google.com/apis/design/resource_names.
  ///
  /// For projects.regions.workflowTemplates, the resource name of the template
  /// has the following format:
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For
  /// projects.locations.workflowTemplates, the resource name of the template
  /// has the following format:
  /// projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  ///
  /// Output only.
  core.String? name;

  /// Template parameters whose values are substituted into the template.
  ///
  /// Values for parameters must be provided when the template is instantiated.
  ///
  /// Optional.
  core.List<TemplateParameter>? parameters;

  /// WorkflowTemplate scheduling information.
  ///
  /// Required.
  WorkflowTemplatePlacement? placement;

  /// The time template was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Used to perform a consistent read-modify-write.This field should be left
  /// blank for a CreateWorkflowTemplate request.
  ///
  /// It is required for an UpdateWorkflowTemplate request, and must match the
  /// current server version. A typical update template flow would fetch the
  /// current template with a GetWorkflowTemplate request, which will return the
  /// current template with the version field filled in with the current server
  /// version. The user updates other fields in the template, then returns it as
  /// part of the UpdateWorkflowTemplate request.
  ///
  /// Optional.
  core.int? version;

  WorkflowTemplate({
    this.createTime,
    this.dagTimeout,
    this.encryptionConfig,
    this.id,
    this.jobs,
    this.labels,
    this.name,
    this.parameters,
    this.placement,
    this.updateTime,
    this.version,
  });

  WorkflowTemplate.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        dagTimeout: json_['dagTimeout'] as core.String?,
        encryptionConfig:
            json_.containsKey('encryptionConfig')
                ? GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig.fromJson(
                  json_['encryptionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        jobs:
            (json_['jobs'] as core.List?)
                ?.map(
                  (value) => OrderedJob.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) => TemplateParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        placement:
            json_.containsKey('placement')
                ? WorkflowTemplatePlacement.fromJson(
                  json_['placement'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (dagTimeout != null) 'dagTimeout': dagTimeout!,
    if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
    if (id != null) 'id': id!,
    if (jobs != null) 'jobs': jobs!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (parameters != null) 'parameters': parameters!,
    if (placement != null) 'placement': placement!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (version != null) 'version': version!,
  };
}

/// Specifies workflow execution target.Either managed_cluster or
/// cluster_selector is required.
class WorkflowTemplatePlacement {
  /// A selector that chooses target cluster for jobs based on metadata.The
  /// selector is evaluated at the time each job is submitted.
  ///
  /// Optional.
  ClusterSelector? clusterSelector;

  /// A cluster that is managed by the workflow.
  ManagedCluster? managedCluster;

  WorkflowTemplatePlacement({this.clusterSelector, this.managedCluster});

  WorkflowTemplatePlacement.fromJson(core.Map json_)
    : this(
        clusterSelector:
            json_.containsKey('clusterSelector')
                ? ClusterSelector.fromJson(
                  json_['clusterSelector']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        managedCluster:
            json_.containsKey('managedCluster')
                ? ManagedCluster.fromJson(
                  json_['managedCluster']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterSelector != null) 'clusterSelector': clusterSelector!,
    if (managedCluster != null) 'managedCluster': managedCluster!,
  };
}

/// Write Spark Application data to internal storage systems
class WriteSessionSparkApplicationContextRequest {
  /// Parent (Batch) resource reference.
  ///
  /// Required.
  core.String? parent;

  /// The batch of spark application context objects sent for ingestion.
  ///
  /// Required.
  core.List<SparkWrapperObject>? sparkWrapperObjects;

  WriteSessionSparkApplicationContextRequest({
    this.parent,
    this.sparkWrapperObjects,
  });

  WriteSessionSparkApplicationContextRequest.fromJson(core.Map json_)
    : this(
        parent: json_['parent'] as core.String?,
        sparkWrapperObjects:
            (json_['sparkWrapperObjects'] as core.List?)
                ?.map(
                  (value) => SparkWrapperObject.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parent != null) 'parent': parent!,
    if (sparkWrapperObjects != null)
      'sparkWrapperObjects': sparkWrapperObjects!,
  };
}

/// Response returned as an acknowledgement of receipt of data.
typedef WriteSessionSparkApplicationContextResponse = $Empty;

/// Write Spark Application data to internal storage systems
class WriteSparkApplicationContextRequest {
  /// Parent (Batch) resource reference.
  ///
  /// Required.
  core.String? parent;
  core.List<SparkWrapperObject>? sparkWrapperObjects;

  WriteSparkApplicationContextRequest({this.parent, this.sparkWrapperObjects});

  WriteSparkApplicationContextRequest.fromJson(core.Map json_)
    : this(
        parent: json_['parent'] as core.String?,
        sparkWrapperObjects:
            (json_['sparkWrapperObjects'] as core.List?)
                ?.map(
                  (value) => SparkWrapperObject.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parent != null) 'parent': parent!,
    if (sparkWrapperObjects != null)
      'sparkWrapperObjects': sparkWrapperObjects!,
  };
}

/// Response returned as an acknowledgement of receipt of data.
typedef WriteSparkApplicationContextResponse = $Empty;

/// A YARN application created by a job.
///
/// Application information is a subset of
/// org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta Feature:
/// This report is available for testing purposes only. It may be changed before
/// final release.
class YarnApplication {
  /// The application name.
  ///
  /// Required.
  core.String? name;

  /// The numerical progress of the application, from 1 to 100.
  ///
  /// Required.
  core.double? progress;

  /// The application state.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Status is unspecified.
  /// - "NEW" : Status is NEW.
  /// - "NEW_SAVING" : Status is NEW_SAVING.
  /// - "SUBMITTED" : Status is SUBMITTED.
  /// - "ACCEPTED" : Status is ACCEPTED.
  /// - "RUNNING" : Status is RUNNING.
  /// - "FINISHED" : Status is FINISHED.
  /// - "FAILED" : Status is FAILED.
  /// - "KILLED" : Status is KILLED.
  core.String? state;

  /// The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer
  /// that provides application-specific information.
  ///
  /// The URL uses the internal hostname, and requires a proxy server for
  /// resolution and, possibly, access.
  ///
  /// Optional.
  core.String? trackingUrl;

  YarnApplication({this.name, this.progress, this.state, this.trackingUrl});

  YarnApplication.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        progress: (json_['progress'] as core.num?)?.toDouble(),
        state: json_['state'] as core.String?,
        trackingUrl: json_['trackingUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (progress != null) 'progress': progress!,
    if (state != null) 'state': state!,
    if (trackingUrl != null) 'trackingUrl': trackingUrl!,
  };
}
