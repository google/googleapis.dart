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
///     - [ProjectsLocationsWorkflowTemplatesResource]
///   - [ProjectsRegionsResource]
///     - [ProjectsRegionsAutoscalingPoliciesResource]
///     - [ProjectsRegionsClustersResource]
///     - [ProjectsRegionsJobsResource]
///     - [ProjectsRegionsOperationsResource]
///     - [ProjectsRegionsWorkflowTemplatesResource]
library dataproc.v1;

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

/// Manages Hadoop-based clusters and jobs on Google Cloud Platform.
class DataprocApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataprocApi(http.Client client,
      {core.String rootUrl = 'https://dataproc.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/autoscalingPolicies';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AutoscalingPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AutoscalingPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/autoscalingPolicies';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAutoscalingPoliciesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return AutoscalingPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBatchesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBatchesResource(commons.ApiRequester client)
      : _requester = client;

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (batchId != null) 'batchId': [batchId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/batches';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the batch workload resource.
  ///
  /// If the batch is not in terminal state, the delete fails and the response
  /// returns FAILED_PRECONDITION.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the batch resource to delete.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the batch workload resource representation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the batch to retrieve.
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
  async.Future<Batch> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Batch.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists batch workloads.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of batches.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/batches';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBatchesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return WorkflowTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (version != null) 'version': ['${version}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (version != null) 'version': ['${version}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return WorkflowTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':instantiate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/workflowTemplates:instantiateInline';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListWorkflowTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return WorkflowTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/autoscalingPolicies';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AutoscalingPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AutoscalingPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/autoscalingPolicies';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAutoscalingPoliciesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return AutoscalingPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsRegionsClustersResource {
  final commons.ApiRequester _requester;

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (actionOnFailedPrimaryWorkers != null)
        'actionOnFailedPrimaryWorkers': [actionOnFailedPrimaryWorkers],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (clusterUuid != null) 'clusterUuid': [clusterUuid],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName') +
        ':diagnose';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Cluster.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$project') +
        '/' +
        core.Uri.encodeFull('$region') +
        '/' +
        core.Uri.encodeFull('$cluster') +
        ':injectCredentials';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// CREATING, RUNNING, ERROR, DELETING, or UPDATING. ACTIVE contains the
  /// CREATING, UPDATING, and RUNNING states. INACTIVE contains the DELETING and
  /// ERROR states. clusterName is the name of the cluster provided at creation
  /// time. Only the logical AND operator is supported; space-separated items
  /// are treated as having an implicit AND operator.Example filter:status.state
  /// = ACTIVE AND clusterName = mycluster AND labels.env = staging AND
  /// labels.starred = *
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClustersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// decomissioning. Graceful decommissioning allows removing nodes from the
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (gracefulDecommissionTimeout != null)
        'gracefulDecommissionTimeout': [gracefulDecommissionTimeout],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName') +
        ':repair';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName') +
        ':start';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/clusters/' +
        commons.escapeVariable('$clusterName') +
        ':stop';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (clusterName != null) 'clusterName': [clusterName],
      if (filter != null) 'filter': [filter],
      if (jobStateMatcher != null) 'jobStateMatcher': [jobStateMatcher],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs:submit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/regions/' +
        commons.escapeVariable('$region') +
        '/jobs:submitAsOperation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE:
  /// the name binding allows API services to override the binding to use
  /// different resource name schemes, such as users / * /operations. To
  /// override the binding, API services can add a binding such as
  /// "/v1/{name=users / * }/operations" to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return WorkflowTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (version != null) 'version': ['${version}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (version != null) 'version': ['${version}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return WorkflowTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':instantiate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/workflowTemplates:instantiateInline';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/workflowTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListWorkflowTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return WorkflowTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// (https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes).Examples:
  /// https://www.googleapis.com/compute/beta/projects/\[project_id\]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80
  /// projects/\[project_id\]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80
  /// nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto
  /// Zone Placement
  /// (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement)
  /// feature, you must use the short name of the accelerator type resource, for
  /// example, nvidia-tesla-k80.
  core.String? acceleratorTypeUri;

  AcceleratorConfig({
    this.acceleratorCount,
    this.acceleratorTypeUri,
  });

  AcceleratorConfig.fromJson(core.Map _json)
      : this(
          acceleratorCount: _json.containsKey('acceleratorCount')
              ? _json['acceleratorCount'] as core.int
              : null,
          acceleratorTypeUri: _json.containsKey('acceleratorTypeUri')
              ? _json['acceleratorTypeUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorCount != null) 'acceleratorCount': acceleratorCount!,
        if (acceleratorTypeUri != null)
          'acceleratorTypeUri': acceleratorTypeUri!,
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

  AutoscalingConfig({
    this.policyUri,
  });

  AutoscalingConfig.fromJson(core.Map _json)
      : this(
          policyUri: _json.containsKey('policyUri')
              ? _json['policyUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyUri != null) 'policyUri': policyUri!,
      };
}

/// Describes an autoscaling policy for Dataproc cluster autoscaler.
class AutoscalingPolicy {
  BasicAutoscalingAlgorithm? basicAlgorithm;

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
    this.id,
    this.labels,
    this.name,
    this.secondaryWorkerConfig,
    this.workerConfig,
  });

  AutoscalingPolicy.fromJson(core.Map _json)
      : this(
          basicAlgorithm: _json.containsKey('basicAlgorithm')
              ? BasicAutoscalingAlgorithm.fromJson(_json['basicAlgorithm']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          secondaryWorkerConfig: _json.containsKey('secondaryWorkerConfig')
              ? InstanceGroupAutoscalingPolicyConfig.fromJson(
                  _json['secondaryWorkerConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          workerConfig: _json.containsKey('workerConfig')
              ? InstanceGroupAutoscalingPolicyConfig.fromJson(
                  _json['workerConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicAlgorithm != null) 'basicAlgorithm': basicAlgorithm!,
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (secondaryWorkerConfig != null)
          'secondaryWorkerConfig': secondaryWorkerConfig!,
        if (workerConfig != null) 'workerConfig': workerConfig!,
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

  AuxiliaryServicesConfig.fromJson(core.Map _json)
      : this(
          metastoreConfig: _json.containsKey('metastoreConfig')
              ? MetastoreConfig.fromJson(_json['metastoreConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sparkHistoryServerConfig:
              _json.containsKey('sparkHistoryServerConfig')
                  ? SparkHistoryServerConfig.fromJson(
                      _json['sparkHistoryServerConfig']
                          as core.Map<core.String, core.dynamic>)
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

  BasicAutoscalingAlgorithm.fromJson(core.Map _json)
      : this(
          cooldownPeriod: _json.containsKey('cooldownPeriod')
              ? _json['cooldownPeriod'] as core.String
              : null,
          sparkStandaloneConfig: _json.containsKey('sparkStandaloneConfig')
              ? SparkStandaloneAutoscalingConfig.fromJson(
                  _json['sparkStandaloneConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          yarnConfig: _json.containsKey('yarnConfig')
              ? BasicYarnAutoscalingConfig.fromJson(
                  _json['yarnConfig'] as core.Map<core.String, core.dynamic>)
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

  BasicYarnAutoscalingConfig.fromJson(core.Map _json)
      : this(
          gracefulDecommissionTimeout:
              _json.containsKey('gracefulDecommissionTimeout')
                  ? _json['gracefulDecommissionTimeout'] as core.String
                  : null,
          scaleDownFactor: _json.containsKey('scaleDownFactor')
              ? (_json['scaleDownFactor'] as core.num).toDouble()
              : null,
          scaleDownMinWorkerFraction:
              _json.containsKey('scaleDownMinWorkerFraction')
                  ? (_json['scaleDownMinWorkerFraction'] as core.num).toDouble()
                  : null,
          scaleUpFactor: _json.containsKey('scaleUpFactor')
              ? (_json['scaleUpFactor'] as core.num).toDouble()
              : null,
          scaleUpMinWorkerFraction:
              _json.containsKey('scaleUpMinWorkerFraction')
                  ? (_json['scaleUpMinWorkerFraction'] as core.num).toDouble()
                  : null,
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

  Batch.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creator: _json.containsKey('creator')
              ? _json['creator'] as core.String
              : null,
          environmentConfig: _json.containsKey('environmentConfig')
              ? EnvironmentConfig.fromJson(_json['environmentConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          operation: _json.containsKey('operation')
              ? _json['operation'] as core.String
              : null,
          pysparkBatch: _json.containsKey('pysparkBatch')
              ? PySparkBatch.fromJson(
                  _json['pysparkBatch'] as core.Map<core.String, core.dynamic>)
              : null,
          runtimeConfig: _json.containsKey('runtimeConfig')
              ? RuntimeConfig.fromJson(
                  _json['runtimeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          runtimeInfo: _json.containsKey('runtimeInfo')
              ? RuntimeInfo.fromJson(
                  _json['runtimeInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkBatch: _json.containsKey('sparkBatch')
              ? SparkBatch.fromJson(
                  _json['sparkBatch'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkRBatch: _json.containsKey('sparkRBatch')
              ? SparkRBatch.fromJson(
                  _json['sparkRBatch'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkSqlBatch: _json.containsKey('sparkSqlBatch')
              ? SparkSqlBatch.fromJson(
                  _json['sparkSqlBatch'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateHistory: _json.containsKey('stateHistory')
              ? (_json['stateHistory'] as core.List)
                  .map((value) => StateHistory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          stateTime: _json.containsKey('stateTime')
              ? _json['stateTime'] as core.String
              : null,
          uuid: _json.containsKey('uuid') ? _json['uuid'] as core.String : null,
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
  /// user:{emailid}: An email address that represents a specific Google
  /// account. For example, alice@example.com . serviceAccount:{emailid}: An
  /// email address that represents a service account. For example,
  /// my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email
  /// address that represents a Google group. For example, admins@example.com.
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
  /// role in the binding. domain:{domain}: The G Suite domain (primary) that
  /// represents all the users of that domain. For example, google.com or
  /// example.com.
  core.List<core.String>? members;

  /// Role that is assigned to the list of members, or principals.
  ///
  /// For example, roles/viewer, roles/editor, or roles/owner.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? Expr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
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
  /// (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke).
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

  Cluster.fromJson(core.Map _json)
      : this(
          clusterName: _json.containsKey('clusterName')
              ? _json['clusterName'] as core.String
              : null,
          clusterUuid: _json.containsKey('clusterUuid')
              ? _json['clusterUuid'] as core.String
              : null,
          config: _json.containsKey('config')
              ? ClusterConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          metrics: _json.containsKey('metrics')
              ? ClusterMetrics.fromJson(
                  _json['metrics'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          status: _json.containsKey('status')
              ? ClusterStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          statusHistory: _json.containsKey('statusHistory')
              ? (_json['statusHistory'] as core.List)
                  .map((value) => ClusterStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          virtualClusterConfig: _json.containsKey('virtualClusterConfig')
              ? VirtualClusterConfig.fromJson(_json['virtualClusterConfig']
                  as core.Map<core.String, core.dynamic>)
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

  ClusterConfig.fromJson(core.Map _json)
      : this(
          autoscalingConfig: _json.containsKey('autoscalingConfig')
              ? AutoscalingConfig.fromJson(_json['autoscalingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          configBucket: _json.containsKey('configBucket')
              ? _json['configBucket'] as core.String
              : null,
          dataprocMetricConfig: _json.containsKey('dataprocMetricConfig')
              ? DataprocMetricConfig.fromJson(_json['dataprocMetricConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryptionConfig: _json.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(_json['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endpointConfig: _json.containsKey('endpointConfig')
              ? EndpointConfig.fromJson(_json['endpointConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gceClusterConfig: _json.containsKey('gceClusterConfig')
              ? GceClusterConfig.fromJson(_json['gceClusterConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gkeClusterConfig: _json.containsKey('gkeClusterConfig')
              ? GkeClusterConfig.fromJson(_json['gkeClusterConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          initializationActions: _json.containsKey('initializationActions')
              ? (_json['initializationActions'] as core.List)
                  .map((value) => NodeInitializationAction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lifecycleConfig: _json.containsKey('lifecycleConfig')
              ? LifecycleConfig.fromJson(_json['lifecycleConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          masterConfig: _json.containsKey('masterConfig')
              ? InstanceGroupConfig.fromJson(
                  _json['masterConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          metastoreConfig: _json.containsKey('metastoreConfig')
              ? MetastoreConfig.fromJson(_json['metastoreConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondaryWorkerConfig: _json.containsKey('secondaryWorkerConfig')
              ? InstanceGroupConfig.fromJson(_json['secondaryWorkerConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          securityConfig: _json.containsKey('securityConfig')
              ? SecurityConfig.fromJson(_json['securityConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          softwareConfig: _json.containsKey('softwareConfig')
              ? SoftwareConfig.fromJson(_json['softwareConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tempBucket: _json.containsKey('tempBucket')
              ? _json['tempBucket'] as core.String
              : null,
          workerConfig: _json.containsKey('workerConfig')
              ? InstanceGroupConfig.fromJson(
                  _json['workerConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscalingConfig != null) 'autoscalingConfig': autoscalingConfig!,
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

  ClusterMetrics({
    this.hdfsMetrics,
    this.yarnMetrics,
  });

  ClusterMetrics.fromJson(core.Map _json)
      : this(
          hdfsMetrics: _json.containsKey('hdfsMetrics')
              ? (_json['hdfsMetrics'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          yarnMetrics: _json.containsKey('yarnMetrics')
              ? (_json['yarnMetrics'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  ClusterSelector({
    this.clusterLabels,
    this.zone,
  });

  ClusterSelector.fromJson(core.Map _json)
      : this(
          clusterLabels: _json.containsKey('clusterLabels')
              ? (_json['clusterLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
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

  ClusterStatus({
    this.detail,
    this.state,
    this.stateStartTime,
    this.substate,
  });

  ClusterStatus.fromJson(core.Map _json)
      : this(
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateStartTime: _json.containsKey('stateStartTime')
              ? _json['stateStartTime'] as core.String
              : null,
          substate: _json.containsKey('substate')
              ? _json['substate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detail != null) 'detail': detail!,
        if (state != null) 'state': state!,
        if (stateStartTime != null) 'stateStartTime': stateStartTime!,
        if (substate != null) 'substate': substate!,
      };
}

/// Confidential Instance Config for clusters using Confidential VMs
/// (https://cloud.google.com/compute/confidential-vm/docs)
class ConfidentialInstanceConfig {
  /// Defines whether the instance should have confidential compute enabled.
  ///
  /// Optional.
  core.bool? enableConfidentialCompute;

  ConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  ConfidentialInstanceConfig.fromJson(core.Map _json)
      : this(
          enableConfidentialCompute:
              _json.containsKey('enableConfidentialCompute')
                  ? _json['enableConfidentialCompute'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableConfidentialCompute != null)
          'enableConfidentialCompute': enableConfidentialCompute!,
      };
}

/// Dataproc metric config.
class DataprocMetricConfig {
  /// Metrics sources to enable.
  ///
  /// Required.
  core.List<Metric>? metrics;

  DataprocMetricConfig({
    this.metrics,
  });

  DataprocMetricConfig.fromJson(core.Map _json)
      : this(
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
      };
}

/// A request to collect cluster diagnostic information.
typedef DiagnoseClusterRequest = $Empty;

/// Specifies the config of disk options for a group of VM instances.
class DiskConfig {
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
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
  });

  DiskConfig.fromJson(core.Map _json)
      : this(
          bootDiskSizeGb: _json.containsKey('bootDiskSizeGb')
              ? _json['bootDiskSizeGb'] as core.int
              : null,
          bootDiskType: _json.containsKey('bootDiskType')
              ? _json['bootDiskType'] as core.String
              : null,
          localSsdInterface: _json.containsKey('localSsdInterface')
              ? _json['localSsdInterface'] as core.String
              : null,
          numLocalSsds: _json.containsKey('numLocalSsds')
              ? _json['numLocalSsds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootDiskSizeGb != null) 'bootDiskSizeGb': bootDiskSizeGb!,
        if (bootDiskType != null) 'bootDiskType': bootDiskType!,
        if (localSsdInterface != null) 'localSsdInterface': localSsdInterface!,
        if (numLocalSsds != null) 'numLocalSsds': numLocalSsds!,
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
  /// The Cloud KMS key name to use for PD disk encryption for all instances in
  /// the cluster.
  ///
  /// Optional.
  core.String? gcePdKmsKeyName;

  EncryptionConfig({
    this.gcePdKmsKeyName,
  });

  EncryptionConfig.fromJson(core.Map _json)
      : this(
          gcePdKmsKeyName: _json.containsKey('gcePdKmsKeyName')
              ? _json['gcePdKmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcePdKmsKeyName != null) 'gcePdKmsKeyName': gcePdKmsKeyName!,
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

  EndpointConfig({
    this.enableHttpPortAccess,
    this.httpPorts,
  });

  EndpointConfig.fromJson(core.Map _json)
      : this(
          enableHttpPortAccess: _json.containsKey('enableHttpPortAccess')
              ? _json['enableHttpPortAccess'] as core.bool
              : null,
          httpPorts: _json.containsKey('httpPorts')
              ? (_json['httpPorts'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  EnvironmentConfig({
    this.executionConfig,
    this.peripheralsConfig,
  });

  EnvironmentConfig.fromJson(core.Map _json)
      : this(
          executionConfig: _json.containsKey('executionConfig')
              ? ExecutionConfig.fromJson(_json['executionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          peripheralsConfig: _json.containsKey('peripheralsConfig')
              ? PeripheralsConfig.fromJson(_json['peripheralsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionConfig != null) 'executionConfig': executionConfig!,
        if (peripheralsConfig != null) 'peripheralsConfig': peripheralsConfig!,
      };
}

/// Execution configuration for a workload.
class ExecutionConfig {
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

  /// Subnetwork URI to connect workload to.
  ///
  /// Optional.
  core.String? subnetworkUri;

  ExecutionConfig({
    this.kmsKey,
    this.networkTags,
    this.networkUri,
    this.serviceAccount,
    this.subnetworkUri,
  });

  ExecutionConfig.fromJson(core.Map _json)
      : this(
          kmsKey: _json.containsKey('kmsKey')
              ? _json['kmsKey'] as core.String
              : null,
          networkTags: _json.containsKey('networkTags')
              ? (_json['networkTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          networkUri: _json.containsKey('networkUri')
              ? _json['networkUri'] as core.String
              : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
          subnetworkUri: _json.containsKey('subnetworkUri')
              ? _json['subnetworkUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (networkTags != null) 'networkTags': networkTags!,
        if (networkUri != null) 'networkUri': networkUri!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (subnetworkUri != null) 'subnetworkUri': subnetworkUri!,
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

/// Common config settings for resources of Compute Engine cluster instances,
/// applicable to all instances in the cluster.
class GceClusterConfig {
  /// Confidential Instance Config for clusters using Confidential VMs
  /// (https://cloud.google.com/compute/confidential-vm/docs).
  ///
  /// Optional.
  ConfidentialInstanceConfig? confidentialInstanceConfig;

  /// If true, all instances in the cluster will only have internal IP
  /// addresses.
  ///
  /// By default, clusters are not restricted to internal IP addresses, and will
  /// have ephemeral external IP addresses assigned to each instance. This
  /// internal_ip_only restriction can only be enabled for subnetwork enabled
  /// networks, and all off-cluster dependencies must be configured to be
  /// accessible without external IP addresses.
  ///
  /// Optional.
  core.bool? internalIpOnly;

  /// The Compute Engine metadata entries to add to all instances (see Project
  /// and instance metadata
  /// (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  core.Map<core.String, core.String>? metadata;

  /// The Compute Engine network to be used for machine communications.
  ///
  /// Cannot be specified with subnetwork_uri. If neither network_uri nor
  /// subnetwork_uri is specified, the "default" network of the project is used,
  /// if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks
  /// (https://cloud.google.com/compute/docs/subnetworks) for more
  /// information).A full URL, partial URI, or short name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/regions/global/default
  /// projects/\[project_id\]/regions/global/default default
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
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/regions/us-east1/subnetworks/sub0
  /// projects/\[project_id\]/regions/us-east1/subnetworks/sub0 sub0
  ///
  /// Optional.
  core.String? subnetworkUri;

  /// The Compute Engine tags to add to all instances (see Tagging instances
  /// (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  core.List<core.String>? tags;

  /// The zone where the Compute Engine cluster will be located.
  ///
  /// On a create request, it is required in the "global" region. If omitted in
  /// a non-global Dataproc region, the service will pick a zone in the
  /// corresponding Compute Engine region. On a get request, zone will always be
  /// present.A full URL, partial URI, or short name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/zones/\[zone\]
  /// projects/\[project_id\]/zones/\[zone\] us-central1-f
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
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnetworkUri,
    this.tags,
    this.zoneUri,
  });

  GceClusterConfig.fromJson(core.Map _json)
      : this(
          confidentialInstanceConfig:
              _json.containsKey('confidentialInstanceConfig')
                  ? ConfidentialInstanceConfig.fromJson(
                      _json['confidentialInstanceConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          internalIpOnly: _json.containsKey('internalIpOnly')
              ? _json['internalIpOnly'] as core.bool
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          networkUri: _json.containsKey('networkUri')
              ? _json['networkUri'] as core.String
              : null,
          nodeGroupAffinity: _json.containsKey('nodeGroupAffinity')
              ? NodeGroupAffinity.fromJson(_json['nodeGroupAffinity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          privateIpv6GoogleAccess: _json.containsKey('privateIpv6GoogleAccess')
              ? _json['privateIpv6GoogleAccess'] as core.String
              : null,
          reservationAffinity: _json.containsKey('reservationAffinity')
              ? ReservationAffinity.fromJson(_json['reservationAffinity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
          serviceAccountScopes: _json.containsKey('serviceAccountScopes')
              ? (_json['serviceAccountScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          shieldedInstanceConfig: _json.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(_json['shieldedInstanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subnetworkUri: _json.containsKey('subnetworkUri')
              ? _json['subnetworkUri'] as core.String
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          zoneUri: _json.containsKey('zoneUri')
              ? _json['zoneUri'] as core.String
              : null,
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

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
class GetPolicyOptions {
  /// The maximum policy version that will be used to format the policy.Valid
  /// values are 0, 1, and 3.
  ///
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// Optional.
  core.int? requestedPolicyVersion;

  GetPolicyOptions({
    this.requestedPolicyVersion,
  });

  GetPolicyOptions.fromJson(core.Map _json)
      : this(
          requestedPolicyVersion: _json.containsKey('requestedPolicyVersion')
              ? _json['requestedPolicyVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestedPolicyVersion != null)
          'requestedPolicyVersion': requestedPolicyVersion!,
      };
}

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

  GkeClusterConfig.fromJson(core.Map _json)
      : this(
          gkeClusterTarget: _json.containsKey('gkeClusterTarget')
              ? _json['gkeClusterTarget'] as core.String
              : null,
          namespacedGkeDeploymentTarget:
              _json.containsKey('namespacedGkeDeploymentTarget')
                  ? NamespacedGkeDeploymentTarget.fromJson(
                      _json['namespacedGkeDeploymentTarget']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          nodePoolTarget: _json.containsKey('nodePoolTarget')
              ? (_json['nodePoolTarget'] as core.List)
                  .map((value) => GkeNodePoolTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
  /// projects/KEY_PROJECT_ID/locations/LOCATION
  /// /keyRings/RING_NAME/cryptoKeys/KEY_NAME.
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

  /// Whether the nodes are created as preemptible VM instances
  /// (https://cloud.google.com/compute/docs/instances/preemptible).
  ///
  /// Preemptible nodes cannot be used in a node pool with the CONTROLLER role
  /// or in the DEFAULT node pool if the CONTROLLER role is not assigned (the
  /// DEFAULT node pool will assume the CONTROLLER role).
  ///
  /// Optional.
  core.bool? preemptible;

  /// Spot flag for enabling Spot VM, which is a rebrand of the existing
  /// preemptible flag.
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

  GkeNodeConfig.fromJson(core.Map _json)
      : this(
          accelerators: _json.containsKey('accelerators')
              ? (_json['accelerators'] as core.List)
                  .map((value) => GkeNodePoolAcceleratorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bootDiskKmsKey: _json.containsKey('bootDiskKmsKey')
              ? _json['bootDiskKmsKey'] as core.String
              : null,
          localSsdCount: _json.containsKey('localSsdCount')
              ? _json['localSsdCount'] as core.int
              : null,
          machineType: _json.containsKey('machineType')
              ? _json['machineType'] as core.String
              : null,
          minCpuPlatform: _json.containsKey('minCpuPlatform')
              ? _json['minCpuPlatform'] as core.String
              : null,
          preemptible: _json.containsKey('preemptible')
              ? _json['preemptible'] as core.bool
              : null,
          spot: _json.containsKey('spot') ? _json['spot'] as core.bool : null,
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

  GkeNodePoolAcceleratorConfig.fromJson(core.Map _json)
      : this(
          acceleratorCount: _json.containsKey('acceleratorCount')
              ? _json['acceleratorCount'] as core.String
              : null,
          acceleratorType: _json.containsKey('acceleratorType')
              ? _json['acceleratorType'] as core.String
              : null,
          gpuPartitionSize: _json.containsKey('gpuPartitionSize')
              ? _json['gpuPartitionSize'] as core.String
              : null,
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

  GkeNodePoolAutoscalingConfig({
    this.maxNodeCount,
    this.minNodeCount,
  });

  GkeNodePoolAutoscalingConfig.fromJson(core.Map _json)
      : this(
          maxNodeCount: _json.containsKey('maxNodeCount')
              ? _json['maxNodeCount'] as core.int
              : null,
          minNodeCount: _json.containsKey('minNodeCount')
              ? _json['minNodeCount'] as core.int
              : null,
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

  GkeNodePoolConfig({
    this.autoscaling,
    this.config,
    this.locations,
  });

  GkeNodePoolConfig.fromJson(core.Map _json)
      : this(
          autoscaling: _json.containsKey('autoscaling')
              ? GkeNodePoolAutoscalingConfig.fromJson(
                  _json['autoscaling'] as core.Map<core.String, core.dynamic>)
              : null,
          config: _json.containsKey('config')
              ? GkeNodeConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  GkeNodePoolTarget({
    this.nodePool,
    this.nodePoolConfig,
    this.roles,
  });

  GkeNodePoolTarget.fromJson(core.Map _json)
      : this(
          nodePool: _json.containsKey('nodePool')
              ? _json['nodePool'] as core.String
              : null,
          nodePoolConfig: _json.containsKey('nodePoolConfig')
              ? GkeNodePoolConfig.fromJson(_json['nodePoolConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          roles: _json.containsKey('roles')
              ? (_json['roles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodePool != null) 'nodePool': nodePool!,
        if (nodePoolConfig != null) 'nodePoolConfig': nodePoolConfig!,
        if (roles != null) 'roles': roles!,
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
  /// as job properties, since a collision may occur that causes an incorrect
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
  /// Properties that conflict with values set by the Dataproc API may be
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

  HadoopJob.fromJson(core.Map _json)
      : this(
          archiveUris: _json.containsKey('archiveUris')
              ? (_json['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: _json.containsKey('fileUris')
              ? (_json['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          mainClass: _json.containsKey('mainClass')
              ? _json['mainClass'] as core.String
              : null,
          mainJarFileUri: _json.containsKey('mainJarFileUri')
              ? _json['mainJarFileUri'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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
  /// Properties that conflict with values set by the Dataproc API may be
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

  HiveJob.fromJson(core.Map _json)
      : this(
          continueOnFailure: _json.containsKey('continueOnFailure')
              ? _json['continueOnFailure'] as core.bool
              : null,
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          queryFileUri: _json.containsKey('queryFileUri')
              ? _json['queryFileUri'] as core.String
              : null,
          queryList: _json.containsKey('queryList')
              ? QueryList.fromJson(
                  _json['queryList'] as core.Map<core.String, core.dynamic>)
              : null,
          scriptVariables: _json.containsKey('scriptVariables')
              ? (_json['scriptVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  IdentityConfig({
    this.userServiceAccountMapping,
  });

  IdentityConfig.fromJson(core.Map _json)
      : this(
          userServiceAccountMapping:
              _json.containsKey('userServiceAccountMapping')
                  ? (_json['userServiceAccountMapping']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, item) => core.MapEntry(
                        key,
                        item as core.String,
                      ),
                    )
                  : null,
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

  InjectCredentialsRequest({
    this.clusterUuid,
    this.credentialsCiphertext,
  });

  InjectCredentialsRequest.fromJson(core.Map _json)
      : this(
          clusterUuid: _json.containsKey('clusterUuid')
              ? _json['clusterUuid'] as core.String
              : null,
          credentialsCiphertext: _json.containsKey('credentialsCiphertext')
              ? _json['credentialsCiphertext'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterUuid != null) 'clusterUuid': clusterUuid!,
        if (credentialsCiphertext != null)
          'credentialsCiphertext': credentialsCiphertext!,
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

  InstanceGroupAutoscalingPolicyConfig.fromJson(core.Map _json)
      : this(
          maxInstances: _json.containsKey('maxInstances')
              ? _json['maxInstances'] as core.int
              : null,
          minInstances: _json.containsKey('minInstances')
              ? _json['minInstances'] as core.int
              : null,
          weight:
              _json.containsKey('weight') ? _json['weight'] as core.int : null,
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
  /// https://www.googleapis.com/compute/beta/projects/\[project_id\]/global/images/\[image-id\]
  /// projects/\[project_id\]/global/images/\[image-id\] image-idImage family
  /// examples.
  ///
  /// Dataproc will use the most recent image from the family:
  /// https://www.googleapis.com/compute/beta/projects/\[project_id\]/global/images/family/\[custom-image-family-name\]
  /// projects/\[project_id\]/global/images/family/\[custom-image-family-name\]If
  /// the URI is unspecified, it will be inferred from
  /// SoftwareConfig.image_version or the system default.
  ///
  /// Optional.
  core.String? imageUri;

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
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/zones/us-east1-a/machineTypes/n1-standard-2
  /// projects/\[project_id\]/zones/us-east1-a/machineTypes/n1-standard-2
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
  /// - "PREEMPTIBLE" : Instances are preemptible.This option is allowed only
  /// for secondary worker groups.
  core.String? preemptibility;

  InstanceGroupConfig({
    this.accelerators,
    this.diskConfig,
    this.imageUri,
    this.instanceNames,
    this.instanceReferences,
    this.isPreemptible,
    this.machineTypeUri,
    this.managedGroupConfig,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
  });

  InstanceGroupConfig.fromJson(core.Map _json)
      : this(
          accelerators: _json.containsKey('accelerators')
              ? (_json['accelerators'] as core.List)
                  .map((value) => AcceleratorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          diskConfig: _json.containsKey('diskConfig')
              ? DiskConfig.fromJson(
                  _json['diskConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
          instanceNames: _json.containsKey('instanceNames')
              ? (_json['instanceNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instanceReferences: _json.containsKey('instanceReferences')
              ? (_json['instanceReferences'] as core.List)
                  .map((value) => InstanceReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          isPreemptible: _json.containsKey('isPreemptible')
              ? _json['isPreemptible'] as core.bool
              : null,
          machineTypeUri: _json.containsKey('machineTypeUri')
              ? _json['machineTypeUri'] as core.String
              : null,
          managedGroupConfig: _json.containsKey('managedGroupConfig')
              ? ManagedGroupConfig.fromJson(_json['managedGroupConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minCpuPlatform: _json.containsKey('minCpuPlatform')
              ? _json['minCpuPlatform'] as core.String
              : null,
          numInstances: _json.containsKey('numInstances')
              ? _json['numInstances'] as core.int
              : null,
          preemptibility: _json.containsKey('preemptibility')
              ? _json['preemptibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelerators != null) 'accelerators': accelerators!,
        if (diskConfig != null) 'diskConfig': diskConfig!,
        if (imageUri != null) 'imageUri': imageUri!,
        if (instanceNames != null) 'instanceNames': instanceNames!,
        if (instanceReferences != null)
          'instanceReferences': instanceReferences!,
        if (isPreemptible != null) 'isPreemptible': isPreemptible!,
        if (machineTypeUri != null) 'machineTypeUri': machineTypeUri!,
        if (managedGroupConfig != null)
          'managedGroupConfig': managedGroupConfig!,
        if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
        if (numInstances != null) 'numInstances': numInstances!,
        if (preemptibility != null) 'preemptibility': preemptibility!,
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

  InstanceReference.fromJson(core.Map _json)
      : this(
          instanceId: _json.containsKey('instanceId')
              ? _json['instanceId'] as core.String
              : null,
          instanceName: _json.containsKey('instanceName')
              ? _json['instanceName'] as core.String
              : null,
          publicEciesKey: _json.containsKey('publicEciesKey')
              ? _json['publicEciesKey'] as core.String
              : null,
          publicKey: _json.containsKey('publicKey')
              ? _json['publicKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceId != null) 'instanceId': instanceId!,
        if (instanceName != null) 'instanceName': instanceName!,
        if (publicEciesKey != null) 'publicEciesKey': publicEciesKey!,
        if (publicKey != null) 'publicKey': publicKey!,
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

  InstantiateWorkflowTemplateRequest.fromJson(core.Map _json)
      : this(
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
        if (requestId != null) 'requestId': requestId!,
        if (version != null) 'version': version!,
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

  /// If present, the location of miscellaneous control files which may be used
  /// as part of job setup and handling.
  ///
  /// If not present, control files may be placed in the same location as
  /// driver_output_uri.
  ///
  /// Output only.
  core.String? driverControlFilesUri;

  /// A URI pointing to the location of the stdout of the job's driver program.
  ///
  /// Output only.
  core.String? driverOutputResourceUri;

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
  /// This is in contrast to a user-settable reference.job_id that may be reused
  /// over time.
  ///
  /// Output only.
  core.String? jobUuid;

  /// The labels to associate with this job.
  ///
  /// Label keys must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if
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
  /// Additional application-specific status information may be contained in the
  /// type_job and yarn_applications fields.
  ///
  /// Output only.
  JobStatus? status;

  /// The previous job status.
  ///
  /// Output only.
  core.List<JobStatus>? statusHistory;

  /// The collection of YARN applications spun up by this job.Beta Feature: This
  /// report is available for testing purposes only.
  ///
  /// It may be changed before final release.
  ///
  /// Output only.
  core.List<YarnApplication>? yarnApplications;

  Job({
    this.done,
    this.driverControlFilesUri,
    this.driverOutputResourceUri,
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
    this.yarnApplications,
  });

  Job.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          driverControlFilesUri: _json.containsKey('driverControlFilesUri')
              ? _json['driverControlFilesUri'] as core.String
              : null,
          driverOutputResourceUri: _json.containsKey('driverOutputResourceUri')
              ? _json['driverOutputResourceUri'] as core.String
              : null,
          hadoopJob: _json.containsKey('hadoopJob')
              ? HadoopJob.fromJson(
                  _json['hadoopJob'] as core.Map<core.String, core.dynamic>)
              : null,
          hiveJob: _json.containsKey('hiveJob')
              ? HiveJob.fromJson(
                  _json['hiveJob'] as core.Map<core.String, core.dynamic>)
              : null,
          jobUuid: _json.containsKey('jobUuid')
              ? _json['jobUuid'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pigJob: _json.containsKey('pigJob')
              ? PigJob.fromJson(
                  _json['pigJob'] as core.Map<core.String, core.dynamic>)
              : null,
          placement: _json.containsKey('placement')
              ? JobPlacement.fromJson(
                  _json['placement'] as core.Map<core.String, core.dynamic>)
              : null,
          prestoJob: _json.containsKey('prestoJob')
              ? PrestoJob.fromJson(
                  _json['prestoJob'] as core.Map<core.String, core.dynamic>)
              : null,
          pysparkJob: _json.containsKey('pysparkJob')
              ? PySparkJob.fromJson(
                  _json['pysparkJob'] as core.Map<core.String, core.dynamic>)
              : null,
          reference: _json.containsKey('reference')
              ? JobReference.fromJson(
                  _json['reference'] as core.Map<core.String, core.dynamic>)
              : null,
          scheduling: _json.containsKey('scheduling')
              ? JobScheduling.fromJson(
                  _json['scheduling'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkJob: _json.containsKey('sparkJob')
              ? SparkJob.fromJson(
                  _json['sparkJob'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkRJob: _json.containsKey('sparkRJob')
              ? SparkRJob.fromJson(
                  _json['sparkRJob'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkSqlJob: _json.containsKey('sparkSqlJob')
              ? SparkSqlJob.fromJson(
                  _json['sparkSqlJob'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? JobStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          statusHistory: _json.containsKey('statusHistory')
              ? (_json['statusHistory'] as core.List)
                  .map((value) => JobStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          yarnApplications: _json.containsKey('yarnApplications')
              ? (_json['yarnApplications'] as core.List)
                  .map((value) => YarnApplication.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (driverControlFilesUri != null)
          'driverControlFilesUri': driverControlFilesUri!,
        if (driverOutputResourceUri != null)
          'driverOutputResourceUri': driverOutputResourceUri!,
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
        if (yarnApplications != null) 'yarnApplications': yarnApplications!,
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

  JobPlacement({
    this.clusterLabels,
    this.clusterName,
    this.clusterUuid,
  });

  JobPlacement.fromJson(core.Map _json)
      : this(
          clusterLabels: _json.containsKey('clusterLabels')
              ? (_json['clusterLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          clusterName: _json.containsKey('clusterName')
              ? _json['clusterName'] as core.String
              : null,
          clusterUuid: _json.containsKey('clusterUuid')
              ? _json['clusterUuid'] as core.String
              : null,
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

  JobReference({
    this.jobId,
    this.projectId,
  });

  JobReference.fromJson(core.Map _json)
      : this(
          jobId:
              _json.containsKey('jobId') ? _json['jobId'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobId != null) 'jobId': jobId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Job scheduling options.
class JobScheduling {
  /// Maximum number of times per hour a driver may be restarted as a result of
  /// driver exiting with non-zero code before job is reported failed.A job may
  /// be reported as thrashing if driver exits with non-zero code 4 times within
  /// 10 minute window.Maximum value is 10.Note: Currently, this restartable job
  /// option is not supported in Dataproc workflow template
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template)
  /// jobs.
  ///
  /// Optional.
  core.int? maxFailuresPerHour;

  /// Maximum number of times in total a driver may be restarted as a result of
  /// driver exiting with non-zero code before job is reported failed.
  ///
  /// Maximum value is 240.Note: Currently, this restartable job option is not
  /// supported in Dataproc workflow template
  /// (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template)
  /// jobs.
  ///
  /// Optional.
  core.int? maxFailuresTotal;

  JobScheduling({
    this.maxFailuresPerHour,
    this.maxFailuresTotal,
  });

  JobScheduling.fromJson(core.Map _json)
      : this(
          maxFailuresPerHour: _json.containsKey('maxFailuresPerHour')
              ? _json['maxFailuresPerHour'] as core.int
              : null,
          maxFailuresTotal: _json.containsKey('maxFailuresTotal')
              ? _json['maxFailuresTotal'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxFailuresPerHour != null)
          'maxFailuresPerHour': maxFailuresPerHour!,
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
  /// - "QUEUED" : The Job has been received and is awaiting execution (it may
  /// be waiting for a condition to be met). See the "details" field for the
  /// reason for the delay.Applies to RUNNING state.
  /// - "STALE_STATUS" : The agent-reported status is out of date, which may be
  /// caused by a loss of communication between the agent and Dataproc. If the
  /// agent does not send a timely update, the job will fail.Applies to RUNNING
  /// state.
  core.String? substate;

  JobStatus({
    this.details,
    this.state,
    this.stateStartTime,
    this.substate,
  });

  JobStatus.fromJson(core.Map _json)
      : this(
          details: _json.containsKey('details')
              ? _json['details'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateStartTime: _json.containsKey('stateStartTime')
              ? _json['stateStartTime'] as core.String
              : null,
          substate: _json.containsKey('substate')
              ? _json['substate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (state != null) 'state': state!,
        if (stateStartTime != null) 'stateStartTime': stateStartTime!,
        if (substate != null) 'substate': substate!,
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

  /// The uri of the KMS key used to encrypt various sensitive files.
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

  KerberosConfig.fromJson(core.Map _json)
      : this(
          crossRealmTrustAdminServer:
              _json.containsKey('crossRealmTrustAdminServer')
                  ? _json['crossRealmTrustAdminServer'] as core.String
                  : null,
          crossRealmTrustKdc: _json.containsKey('crossRealmTrustKdc')
              ? _json['crossRealmTrustKdc'] as core.String
              : null,
          crossRealmTrustRealm: _json.containsKey('crossRealmTrustRealm')
              ? _json['crossRealmTrustRealm'] as core.String
              : null,
          crossRealmTrustSharedPasswordUri:
              _json.containsKey('crossRealmTrustSharedPasswordUri')
                  ? _json['crossRealmTrustSharedPasswordUri'] as core.String
                  : null,
          enableKerberos: _json.containsKey('enableKerberos')
              ? _json['enableKerberos'] as core.bool
              : null,
          kdcDbKeyUri: _json.containsKey('kdcDbKeyUri')
              ? _json['kdcDbKeyUri'] as core.String
              : null,
          keyPasswordUri: _json.containsKey('keyPasswordUri')
              ? _json['keyPasswordUri'] as core.String
              : null,
          keystorePasswordUri: _json.containsKey('keystorePasswordUri')
              ? _json['keystorePasswordUri'] as core.String
              : null,
          keystoreUri: _json.containsKey('keystoreUri')
              ? _json['keystoreUri'] as core.String
              : null,
          kmsKeyUri: _json.containsKey('kmsKeyUri')
              ? _json['kmsKeyUri'] as core.String
              : null,
          realm:
              _json.containsKey('realm') ? _json['realm'] as core.String : null,
          rootPrincipalPasswordUri:
              _json.containsKey('rootPrincipalPasswordUri')
                  ? _json['rootPrincipalPasswordUri'] as core.String
                  : null,
          tgtLifetimeHours: _json.containsKey('tgtLifetimeHours')
              ? _json['tgtLifetimeHours'] as core.int
              : null,
          truststorePasswordUri: _json.containsKey('truststorePasswordUri')
              ? _json['truststorePasswordUri'] as core.String
              : null,
          truststoreUri: _json.containsKey('truststoreUri')
              ? _json['truststoreUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crossRealmTrustAdminServer != null)
          'crossRealmTrustAdminServer': crossRealmTrustAdminServer!,
        if (crossRealmTrustKdc != null)
          'crossRealmTrustKdc': crossRealmTrustKdc!,
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

  KubernetesClusterConfig.fromJson(core.Map _json)
      : this(
          gkeClusterConfig: _json.containsKey('gkeClusterConfig')
              ? GkeClusterConfig.fromJson(_json['gkeClusterConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kubernetesNamespace: _json.containsKey('kubernetesNamespace')
              ? _json['kubernetesNamespace'] as core.String
              : null,
          kubernetesSoftwareConfig:
              _json.containsKey('kubernetesSoftwareConfig')
                  ? KubernetesSoftwareConfig.fromJson(
                      _json['kubernetesSoftwareConfig']
                          as core.Map<core.String, core.dynamic>)
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

  KubernetesSoftwareConfig({
    this.componentVersion,
    this.properties,
  });

  KubernetesSoftwareConfig.fromJson(core.Map _json)
      : this(
          componentVersion: _json.containsKey('componentVersion')
              ? (_json['componentVersion']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  LifecycleConfig({
    this.autoDeleteTime,
    this.autoDeleteTtl,
    this.idleDeleteTtl,
    this.idleStartTime,
  });

  LifecycleConfig.fromJson(core.Map _json)
      : this(
          autoDeleteTime: _json.containsKey('autoDeleteTime')
              ? _json['autoDeleteTime'] as core.String
              : null,
          autoDeleteTtl: _json.containsKey('autoDeleteTtl')
              ? _json['autoDeleteTtl'] as core.String
              : null,
          idleDeleteTtl: _json.containsKey('idleDeleteTtl')
              ? _json['idleDeleteTtl'] as core.String
              : null,
          idleStartTime: _json.containsKey('idleStartTime')
              ? _json['idleStartTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoDeleteTime != null) 'autoDeleteTime': autoDeleteTime!,
        if (autoDeleteTtl != null) 'autoDeleteTtl': autoDeleteTtl!,
        if (idleDeleteTtl != null) 'idleDeleteTtl': idleDeleteTtl!,
        if (idleStartTime != null) 'idleStartTime': idleStartTime!,
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

  ListAutoscalingPoliciesResponse({
    this.nextPageToken,
    this.policies,
  });

  ListAutoscalingPoliciesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          policies: _json.containsKey('policies')
              ? (_json['policies'] as core.List)
                  .map((value) => AutoscalingPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policies != null) 'policies': policies!,
      };
}

/// A list of batch workloads.
class ListBatchesResponse {
  /// The batches from the specified collection.
  core.List<Batch>? batches;

  /// A token, which can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListBatchesResponse({
    this.batches,
    this.nextPageToken,
  });

  ListBatchesResponse.fromJson(core.Map _json)
      : this(
          batches: _json.containsKey('batches')
              ? (_json['batches'] as core.List)
                  .map((value) => Batch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batches != null) 'batches': batches!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListClustersResponse({
    this.clusters,
    this.nextPageToken,
  });

  ListClustersResponse.fromJson(core.Map _json)
      : this(
          clusters: _json.containsKey('clusters')
              ? (_json['clusters'] as core.List)
                  .map((value) => Cluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
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

  ListJobsResponse({
    this.jobs,
    this.nextPageToken,
  });

  ListJobsResponse.fromJson(core.Map _json)
      : this(
          jobs: _json.containsKey('jobs')
              ? (_json['jobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
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

  ListWorkflowTemplatesResponse({
    this.nextPageToken,
    this.templates,
  });

  ListWorkflowTemplatesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          templates: _json.containsKey('templates')
              ? (_json['templates'] as core.List)
                  .map((value) => WorkflowTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (templates != null) 'templates': templates!,
      };
}

/// The runtime logging config of the job.
class LoggingConfig {
  /// The per-package log levels for the driver.
  ///
  /// This may include "root" package name to configure rootLogger. Examples:
  /// 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  core.Map<core.String, core.String>? driverLogLevels;

  LoggingConfig({
    this.driverLogLevels,
  });

  LoggingConfig.fromJson(core.Map _json)
      : this(
          driverLogLevels: _json.containsKey('driverLogLevels')
              ? (_json['driverLogLevels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  ManagedCluster({
    this.clusterName,
    this.config,
    this.labels,
  });

  ManagedCluster.fromJson(core.Map _json)
      : this(
          clusterName: _json.containsKey('clusterName')
              ? _json['clusterName'] as core.String
              : null,
          config: _json.containsKey('config')
              ? ClusterConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  /// The name of the Instance Template used for the Managed Instance Group.
  ///
  /// Output only.
  core.String? instanceTemplateName;

  ManagedGroupConfig({
    this.instanceGroupManagerName,
    this.instanceTemplateName,
  });

  ManagedGroupConfig.fromJson(core.Map _json)
      : this(
          instanceGroupManagerName:
              _json.containsKey('instanceGroupManagerName')
                  ? _json['instanceGroupManagerName'] as core.String
                  : null,
          instanceTemplateName: _json.containsKey('instanceTemplateName')
              ? _json['instanceTemplateName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceGroupManagerName != null)
          'instanceGroupManagerName': instanceGroupManagerName!,
        if (instanceTemplateName != null)
          'instanceTemplateName': instanceTemplateName!,
      };
}

/// Specifies a Metastore configuration.
class MetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.Example:
  /// projects/\[project_id\]/locations/\[dataproc_region\]/services/\[service-name\]
  ///
  /// Required.
  core.String? dataprocMetastoreService;

  MetastoreConfig({
    this.dataprocMetastoreService,
  });

  MetastoreConfig.fromJson(core.Map _json)
      : this(
          dataprocMetastoreService:
              _json.containsKey('dataprocMetastoreService')
                  ? _json['dataprocMetastoreService'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataprocMetastoreService != null)
          'dataprocMetastoreService': dataprocMetastoreService!,
      };
}

/// A Dataproc OSS metric.
class Metric {
  /// Specify one or more available OSS metrics
  /// (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics)
  /// to collect for the metric course (for the SPARK metric source, any Spark
  /// metric (https://spark.apache.org/docs/latest/monitoring.html#metrics) can
  /// be specified).Provide metrics in the following format: METRIC_SOURCE:
  /// INSTANCE:GROUP:METRIC Use camelcase as appropriate.Examples:
  /// yarn:ResourceManager:QueueMetrics:AppsCompleted
  /// spark:driver:DAGScheduler:job.allJobs
  /// sparkHistoryServer:JVM:Memory:NonHeapMemoryUsage.committed
  /// hiveserver2:JVM:Memory:NonHeapMemoryUsage.used Notes: Only the specified
  /// overridden metrics will be collected for the metric source.
  ///
  /// For example, if one or more spark:executive metrics are listed as metric
  /// overrides, other SPARK metrics will not be collected. The collection of
  /// the default metrics for other OSS metric sources is unaffected. For
  /// example, if both SPARK andd YARN metric sources are enabled, and overrides
  /// are provided for Spark metrics only, all default YARN metrics will be
  /// collected.
  ///
  /// Optional.
  core.List<core.String>? metricOverrides;

  /// Default metrics are collected unless metricOverrides are specified for the
  /// metric source (see Available OSS metrics
  /// (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics)
  /// for more information).
  ///
  /// Required.
  /// Possible string values are:
  /// - "METRIC_SOURCE_UNSPECIFIED" : Required unspecified metric source.
  /// - "MONITORING_AGENT_DEFAULTS" : Default monitoring agent metrics. If this
  /// source is enabled, Dataproc enables the monitoring agent in Compute
  /// Engine, and collects default monitoring agent metrics, which are published
  /// with an agent.googleapis.com prefix.
  /// - "HDFS" : HDFS metric source.
  /// - "SPARK" : Spark metric source.
  /// - "YARN" : YARN metric source.
  /// - "SPARK_HISTORY_SERVER" : Spark History Server metric source.
  /// - "HIVESERVER2" : Hiveserver2 metric source.
  core.String? metricSource;

  Metric({
    this.metricOverrides,
    this.metricSource,
  });

  Metric.fromJson(core.Map _json)
      : this(
          metricOverrides: _json.containsKey('metricOverrides')
              ? (_json['metricOverrides'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metricSource: _json.containsKey('metricSource')
              ? _json['metricSource'] as core.String
              : null,
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

  NamespacedGkeDeploymentTarget({
    this.clusterNamespace,
    this.targetGkeCluster,
  });

  NamespacedGkeDeploymentTarget.fromJson(core.Map _json)
      : this(
          clusterNamespace: _json.containsKey('clusterNamespace')
              ? _json['clusterNamespace'] as core.String
              : null,
          targetGkeCluster: _json.containsKey('targetGkeCluster')
              ? _json['targetGkeCluster'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterNamespace != null) 'clusterNamespace': clusterNamespace!,
        if (targetGkeCluster != null) 'targetGkeCluster': targetGkeCluster!,
      };
}

/// Node Group Affinity for clusters using sole-tenant node groups.
class NodeGroupAffinity {
  /// The URI of a sole-tenant node group resource
  /// (https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that
  /// the cluster will be created on.A full URL, partial URI, or node group name
  /// are valid.
  ///
  /// Examples:
  /// https://www.googleapis.com/compute/v1/projects/\[project_id\]/zones/us-central1-a/nodeGroups/node-group-1
  /// projects/\[project_id\]/zones/us-central1-a/nodeGroups/node-group-1
  /// node-group-1
  ///
  /// Required.
  core.String? nodeGroupUri;

  NodeGroupAffinity({
    this.nodeGroupUri,
  });

  NodeGroupAffinity.fromJson(core.Map _json)
      : this(
          nodeGroupUri: _json.containsKey('nodeGroupUri')
              ? _json['nodeGroupUri'] as core.String
              : null,
        );

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

  NodeInitializationAction({
    this.executableFile,
    this.executionTimeout,
  });

  NodeInitializationAction.fromJson(core.Map _json)
      : this(
          executableFile: _json.containsKey('executableFile')
              ? _json['executableFile'] as core.String
              : null,
          executionTimeout: _json.containsKey('executionTimeout')
              ? _json['executionTimeout'] as core.String
              : null,
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

  NodePool({
    this.id,
    this.instanceNames,
    this.repairAction,
  });

  NodePool.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          instanceNames: _json.containsKey('instanceNames')
              ? (_json['instanceNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          repairAction: _json.containsKey('repairAction')
              ? _json['repairAction'] as core.String
              : null,
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

  /// The normal response of the operation in case of success.
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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

  OrderedJob({
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
  });

  OrderedJob.fromJson(core.Map _json)
      : this(
          hadoopJob: _json.containsKey('hadoopJob')
              ? HadoopJob.fromJson(
                  _json['hadoopJob'] as core.Map<core.String, core.dynamic>)
              : null,
          hiveJob: _json.containsKey('hiveJob')
              ? HiveJob.fromJson(
                  _json['hiveJob'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pigJob: _json.containsKey('pigJob')
              ? PigJob.fromJson(
                  _json['pigJob'] as core.Map<core.String, core.dynamic>)
              : null,
          prerequisiteStepIds: _json.containsKey('prerequisiteStepIds')
              ? (_json['prerequisiteStepIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          prestoJob: _json.containsKey('prestoJob')
              ? PrestoJob.fromJson(
                  _json['prestoJob'] as core.Map<core.String, core.dynamic>)
              : null,
          pysparkJob: _json.containsKey('pysparkJob')
              ? PySparkJob.fromJson(
                  _json['pysparkJob'] as core.Map<core.String, core.dynamic>)
              : null,
          scheduling: _json.containsKey('scheduling')
              ? JobScheduling.fromJson(
                  _json['scheduling'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkJob: _json.containsKey('sparkJob')
              ? SparkJob.fromJson(
                  _json['sparkJob'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkRJob: _json.containsKey('sparkRJob')
              ? SparkRJob.fromJson(
                  _json['sparkRJob'] as core.Map<core.String, core.dynamic>)
              : null,
          sparkSqlJob: _json.containsKey('sparkSqlJob')
              ? SparkSqlJob.fromJson(
                  _json['sparkSqlJob'] as core.Map<core.String, core.dynamic>)
              : null,
          stepId: _json.containsKey('stepId')
              ? _json['stepId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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
      };
}

/// Configuration for parameter validation.
class ParameterValidation {
  /// Validation based on regular expressions.
  RegexValidation? regex;

  /// Validation based on a list of allowed values.
  ValueValidation? values;

  ParameterValidation({
    this.regex,
    this.values,
  });

  ParameterValidation.fromJson(core.Map _json)
      : this(
          regex: _json.containsKey('regex')
              ? RegexValidation.fromJson(
                  _json['regex'] as core.Map<core.String, core.dynamic>)
              : null,
          values: _json.containsKey('values')
              ? ValueValidation.fromJson(
                  _json['values'] as core.Map<core.String, core.dynamic>)
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

  PeripheralsConfig({
    this.metastoreService,
    this.sparkHistoryServerConfig,
  });

  PeripheralsConfig.fromJson(core.Map _json)
      : this(
          metastoreService: _json.containsKey('metastoreService')
              ? _json['metastoreService'] as core.String
              : null,
          sparkHistoryServerConfig:
              _json.containsKey('sparkHistoryServerConfig')
                  ? SparkHistoryServerConfig.fromJson(
                      _json['sparkHistoryServerConfig']
                          as core.Map<core.String, core.dynamic>)
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
  /// Properties that conflict with values set by the Dataproc API may be
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

  PigJob.fromJson(core.Map _json)
      : this(
          continueOnFailure: _json.containsKey('continueOnFailure')
              ? _json['continueOnFailure'] as core.bool
              : null,
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          queryFileUri: _json.containsKey('queryFileUri')
              ? _json['queryFileUri'] as core.String
              : null,
          queryList: _json.containsKey('queryList')
              ? QueryList.fromJson(
                  _json['queryList'] as core.Map<core.String, core.dynamic>)
              : null,
          scriptVariables: _json.containsKey('scriptVariables')
              ? (_json['scriptVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy({
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map _json)
      : this(
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
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

  PrestoJob.fromJson(core.Map _json)
      : this(
          clientTags: _json.containsKey('clientTags')
              ? (_json['clientTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          continueOnFailure: _json.containsKey('continueOnFailure')
              ? _json['continueOnFailure'] as core.bool
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          outputFormat: _json.containsKey('outputFormat')
              ? _json['outputFormat'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          queryFileUri: _json.containsKey('queryFileUri')
              ? _json['queryFileUri'] as core.String
              : null,
          queryList: _json.containsKey('queryList')
              ? QueryList.fromJson(
                  _json['queryList'] as core.Map<core.String, core.dynamic>)
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

  PySparkBatch.fromJson(core.Map _json)
      : this(
          archiveUris: _json.containsKey('archiveUris')
              ? (_json['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: _json.containsKey('fileUris')
              ? (_json['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mainPythonFileUri: _json.containsKey('mainPythonFileUri')
              ? _json['mainPythonFileUri'] as core.String
              : null,
          pythonFileUris: _json.containsKey('pythonFileUris')
              ? (_json['pythonFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
/// (https://spark.apache.org/docs/0.9.0/python-programming-guide.html)
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
  /// Properties that conflict with values set by the Dataproc API may be
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

  PySparkJob.fromJson(core.Map _json)
      : this(
          archiveUris: _json.containsKey('archiveUris')
              ? (_json['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: _json.containsKey('fileUris')
              ? (_json['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          mainPythonFileUri: _json.containsKey('mainPythonFileUri')
              ? _json['mainPythonFileUri'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pythonFileUris: _json.containsKey('pythonFileUris')
              ? (_json['pythonFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  QueryList({
    this.queries,
  });

  QueryList.fromJson(core.Map _json)
      : this(
          queries: _json.containsKey('queries')
              ? (_json['queries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queries != null) 'queries': queries!,
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

  RegexValidation({
    this.regexes,
  });

  RegexValidation.fromJson(core.Map _json)
      : this(
          regexes: _json.containsKey('regexes')
              ? (_json['regexes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regexes != null) 'regexes': regexes!,
      };
}

/// A request to repair a cluster.
class RepairClusterRequest {
  /// Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND)
  /// if a cluster with the specified UUID does not exist.
  ///
  /// Optional.
  core.String? clusterUuid;

  /// Timeout for graceful YARN decomissioning.
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
    this.clusterUuid,
    this.gracefulDecommissionTimeout,
    this.nodePools,
    this.parentOperationId,
    this.requestId,
  });

  RepairClusterRequest.fromJson(core.Map _json)
      : this(
          clusterUuid: _json.containsKey('clusterUuid')
              ? _json['clusterUuid'] as core.String
              : null,
          gracefulDecommissionTimeout:
              _json.containsKey('gracefulDecommissionTimeout')
                  ? _json['gracefulDecommissionTimeout'] as core.String
                  : null,
          nodePools: _json.containsKey('nodePools')
              ? (_json['nodePools'] as core.List)
                  .map((value) => NodePool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentOperationId: _json.containsKey('parentOperationId')
              ? _json['parentOperationId'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterUuid != null) 'clusterUuid': clusterUuid!,
        if (gracefulDecommissionTimeout != null)
          'gracefulDecommissionTimeout': gracefulDecommissionTimeout!,
        if (nodePools != null) 'nodePools': nodePools!,
        if (parentOperationId != null) 'parentOperationId': parentOperationId!,
        if (requestId != null) 'requestId': requestId!,
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

  ReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  ReservationAffinity.fromJson(core.Map _json)
      : this(
          consumeReservationType: _json.containsKey('consumeReservationType')
              ? _json['consumeReservationType'] as core.String
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumeReservationType != null)
          'consumeReservationType': consumeReservationType!,
        if (key != null) 'key': key!,
        if (values != null) 'values': values!,
      };
}

/// Runtime configuration for a workload.
class RuntimeConfig {
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

  /// Version of the batch runtime.
  ///
  /// Optional.
  core.String? version;

  RuntimeConfig({
    this.containerImage,
    this.properties,
    this.version,
  });

  RuntimeConfig.fromJson(core.Map _json)
      : this(
          containerImage: _json.containsKey('containerImage')
              ? _json['containerImage'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerImage != null) 'containerImage': containerImage!,
        if (properties != null) 'properties': properties!,
        if (version != null) 'version': version!,
      };
}

/// Runtime information about workload execution.
class RuntimeInfo {
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

  RuntimeInfo({
    this.diagnosticOutputUri,
    this.endpoints,
    this.outputUri,
  });

  RuntimeInfo.fromJson(core.Map _json)
      : this(
          diagnosticOutputUri: _json.containsKey('diagnosticOutputUri')
              ? _json['diagnosticOutputUri'] as core.String
              : null,
          endpoints: _json.containsKey('endpoints')
              ? (_json['endpoints'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          outputUri: _json.containsKey('outputUri')
              ? _json['outputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diagnosticOutputUri != null)
          'diagnosticOutputUri': diagnosticOutputUri!,
        if (endpoints != null) 'endpoints': endpoints!,
        if (outputUri != null) 'outputUri': outputUri!,
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

  SecurityConfig({
    this.identityConfig,
    this.kerberosConfig,
  });

  SecurityConfig.fromJson(core.Map _json)
      : this(
          identityConfig: _json.containsKey('identityConfig')
              ? IdentityConfig.fromJson(_json['identityConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kerberosConfig: _json.containsKey('kerberosConfig')
              ? KerberosConfig.fromJson(_json['kerberosConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identityConfig != null) 'identityConfig': identityConfig!,
        if (kerberosConfig != null) 'kerberosConfig': kerberosConfig!,
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

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
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

  ShieldedInstanceConfig.fromJson(core.Map _json)
      : this(
          enableIntegrityMonitoring:
              _json.containsKey('enableIntegrityMonitoring')
                  ? _json['enableIntegrityMonitoring'] as core.bool
                  : null,
          enableSecureBoot: _json.containsKey('enableSecureBoot')
              ? _json['enableSecureBoot'] as core.bool
              : null,
          enableVtpm: _json.containsKey('enableVtpm')
              ? _json['enableVtpm'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableIntegrityMonitoring != null)
          'enableIntegrityMonitoring': enableIntegrityMonitoring!,
        if (enableSecureBoot != null) 'enableSecureBoot': enableSecureBoot!,
        if (enableVtpm != null) 'enableVtpm': enableVtpm!,
      };
}

/// Specifies the selection and config of software inside the cluster.
class SoftwareConfig {
  /// The version of software inside the cluster.
  ///
  /// It must be one of the supported Dataproc Versions
  /// (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions),
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

  SoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.properties,
  });

  SoftwareConfig.fromJson(core.Map _json)
      : this(
          imageVersion: _json.containsKey('imageVersion')
              ? _json['imageVersion'] as core.String
              : null,
          optionalComponents: _json.containsKey('optionalComponents')
              ? (_json['optionalComponents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageVersion != null) 'imageVersion': imageVersion!,
        if (optionalComponents != null)
          'optionalComponents': optionalComponents!,
        if (properties != null) 'properties': properties!,
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

  SparkBatch.fromJson(core.Map _json)
      : this(
          archiveUris: _json.containsKey('archiveUris')
              ? (_json['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: _json.containsKey('fileUris')
              ? (_json['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mainClass: _json.containsKey('mainClass')
              ? _json['mainClass'] as core.String
              : null,
          mainJarFileUri: _json.containsKey('mainJarFileUri')
              ? _json['mainJarFileUri'] as core.String
              : null,
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

/// Spark History Server configuration for the workload.
class SparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History
  /// Server for the workload.Example:
  /// projects/\[project_id\]/regions/\[region\]/clusters/\[cluster_name\]
  ///
  /// Optional.
  core.String? dataprocCluster;

  SparkHistoryServerConfig({
    this.dataprocCluster,
  });

  SparkHistoryServerConfig.fromJson(core.Map _json)
      : this(
          dataprocCluster: _json.containsKey('dataprocCluster')
              ? _json['dataprocCluster'] as core.String
              : null,
        );

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
  /// specified in jar_file_uris.
  core.String? mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  core.String? mainJarFileUri;

  /// A mapping of property names to values, used to configure Spark.
  ///
  /// Properties that conflict with values set by the Dataproc API may be
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

  SparkJob.fromJson(core.Map _json)
      : this(
          archiveUris: _json.containsKey('archiveUris')
              ? (_json['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: _json.containsKey('fileUris')
              ? (_json['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          mainClass: _json.containsKey('mainClass')
              ? _json['mainClass'] as core.String
              : null,
          mainJarFileUri: _json.containsKey('mainJarFileUri')
              ? _json['mainJarFileUri'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  SparkRBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.mainRFileUri,
  });

  SparkRBatch.fromJson(core.Map _json)
      : this(
          archiveUris: _json.containsKey('archiveUris')
              ? (_json['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: _json.containsKey('fileUris')
              ? (_json['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mainRFileUri: _json.containsKey('mainRFileUri')
              ? _json['mainRFileUri'] as core.String
              : null,
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
  /// Properties that conflict with values set by the Dataproc API may be
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

  SparkRJob.fromJson(core.Map _json)
      : this(
          archiveUris: _json.containsKey('archiveUris')
              ? (_json['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: _json.containsKey('fileUris')
              ? (_json['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          mainRFileUri: _json.containsKey('mainRFileUri')
              ? _json['mainRFileUri'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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

  SparkSqlBatch({
    this.jarFileUris,
    this.queryFileUri,
    this.queryVariables,
  });

  SparkSqlBatch.fromJson(core.Map _json)
      : this(
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          queryFileUri: _json.containsKey('queryFileUri')
              ? _json['queryFileUri'] as core.String
              : null,
          queryVariables: _json.containsKey('queryVariables')
              ? (_json['queryVariables'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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
  /// Properties that conflict with values set by the Dataproc API may be
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

  SparkSqlJob.fromJson(core.Map _json)
      : this(
          jarFileUris: _json.containsKey('jarFileUris')
              ? (_json['jarFileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          queryFileUri: _json.containsKey('queryFileUri')
              ? _json['queryFileUri'] as core.String
              : null,
          queryList: _json.containsKey('queryList')
              ? QueryList.fromJson(
                  _json['queryList'] as core.Map<core.String, core.dynamic>)
              : null,
          scriptVariables: _json.containsKey('scriptVariables')
              ? (_json['scriptVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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
  /// decomissioning tasks before forcefully removing workers. Only applicable
  /// to downscaling operations.Bounds: 0s, 1d.
  ///
  /// Required.
  core.String? gracefulDecommissionTimeout;

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
    this.scaleDownFactor,
    this.scaleDownMinWorkerFraction,
    this.scaleUpFactor,
    this.scaleUpMinWorkerFraction,
  });

  SparkStandaloneAutoscalingConfig.fromJson(core.Map _json)
      : this(
          gracefulDecommissionTimeout:
              _json.containsKey('gracefulDecommissionTimeout')
                  ? _json['gracefulDecommissionTimeout'] as core.String
                  : null,
          scaleDownFactor: _json.containsKey('scaleDownFactor')
              ? (_json['scaleDownFactor'] as core.num).toDouble()
              : null,
          scaleDownMinWorkerFraction:
              _json.containsKey('scaleDownMinWorkerFraction')
                  ? (_json['scaleDownMinWorkerFraction'] as core.num).toDouble()
                  : null,
          scaleUpFactor: _json.containsKey('scaleUpFactor')
              ? (_json['scaleUpFactor'] as core.num).toDouble()
              : null,
          scaleUpMinWorkerFraction:
              _json.containsKey('scaleUpMinWorkerFraction')
                  ? (_json['scaleUpMinWorkerFraction'] as core.num).toDouble()
                  : null,
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

  StartClusterRequest({
    this.clusterUuid,
    this.requestId,
  });

  StartClusterRequest.fromJson(core.Map _json)
      : this(
          clusterUuid: _json.containsKey('clusterUuid')
              ? _json['clusterUuid'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterUuid != null) 'clusterUuid': clusterUuid!,
        if (requestId != null) 'requestId': requestId!,
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

  StateHistory({
    this.state,
    this.stateMessage,
    this.stateStartTime,
  });

  StateHistory.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          stateStartTime: _json.containsKey('stateStartTime')
              ? _json['stateStartTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (stateStartTime != null) 'stateStartTime': stateStartTime!,
      };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

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

  StopClusterRequest({
    this.clusterUuid,
    this.requestId,
  });

  StopClusterRequest.fromJson(core.Map _json)
      : this(
          clusterUuid: _json.containsKey('clusterUuid')
              ? _json['clusterUuid'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterUuid != null) 'clusterUuid': clusterUuid!,
        if (requestId != null) 'requestId': requestId!,
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

  SubmitJobRequest({
    this.job,
    this.requestId,
  });

  SubmitJobRequest.fromJson(core.Map _json)
      : this(
          job: _json.containsKey('job')
              ? Job.fromJson(
                  _json['job'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
        if (requestId != null) 'requestId': requestId!,
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

  TemplateParameter.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          validation: _json.containsKey('validation')
              ? ParameterValidation.fromJson(
                  _json['validation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
        if (validation != null) 'validation': validation!,
      };
}

/// Request message for TestIamPermissions method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest01;

/// Response message for TestIamPermissions method.
typedef TestIamPermissionsResponse = $TestIamPermissionsResponse;

/// Validation based on a list of allowed values.
class ValueValidation {
  /// List of allowed values for the parameter.
  ///
  /// Required.
  core.List<core.String>? values;

  ValueValidation({
    this.values,
  });

  ValueValidation.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// The Dataproc cluster config for a cluster that does not directly control the
/// underlying compute resources, such as a Dataproc-on-GKE cluster
/// (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke).
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

  VirtualClusterConfig.fromJson(core.Map _json)
      : this(
          auxiliaryServicesConfig: _json.containsKey('auxiliaryServicesConfig')
              ? AuxiliaryServicesConfig.fromJson(
                  _json['auxiliaryServicesConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          kubernetesClusterConfig: _json.containsKey('kubernetesClusterConfig')
              ? KubernetesClusterConfig.fromJson(
                  _json['kubernetesClusterConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          stagingBucket: _json.containsKey('stagingBucket')
              ? _json['stagingBucket'] as core.String
              : null,
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
    this.id,
    this.jobs,
    this.labels,
    this.name,
    this.parameters,
    this.placement,
    this.updateTime,
    this.version,
  });

  WorkflowTemplate.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dagTimeout: _json.containsKey('dagTimeout')
              ? _json['dagTimeout'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          jobs: _json.containsKey('jobs')
              ? (_json['jobs'] as core.List)
                  .map((value) => OrderedJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) => TemplateParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          placement: _json.containsKey('placement')
              ? WorkflowTemplatePlacement.fromJson(
                  _json['placement'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dagTimeout != null) 'dagTimeout': dagTimeout!,
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

  WorkflowTemplatePlacement({
    this.clusterSelector,
    this.managedCluster,
  });

  WorkflowTemplatePlacement.fromJson(core.Map _json)
      : this(
          clusterSelector: _json.containsKey('clusterSelector')
              ? ClusterSelector.fromJson(_json['clusterSelector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          managedCluster: _json.containsKey('managedCluster')
              ? ManagedCluster.fromJson(_json['managedCluster']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterSelector != null) 'clusterSelector': clusterSelector!,
        if (managedCluster != null) 'managedCluster': managedCluster!,
      };
}

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

  YarnApplication({
    this.name,
    this.progress,
    this.state,
    this.trackingUrl,
  });

  YarnApplication.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          progress: _json.containsKey('progress')
              ? (_json['progress'] as core.num).toDouble()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          trackingUrl: _json.containsKey('trackingUrl')
              ? _json['trackingUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (progress != null) 'progress': progress!,
        if (state != null) 'state': state!,
        if (trackingUrl != null) 'trackingUrl': trackingUrl!,
      };
}
