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

/// OS Config API - v1alpha
///
/// OS management tools that can be used for patch management, patch compliance,
/// and configuration management on VM instances.
///
/// For more information, see
/// <https://cloud.google.com/compute/docs/osconfig/rest>
///
/// Create an instance of [OSConfigApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInstanceOSPoliciesCompliancesResource]
///     - [ProjectsLocationsInstancesResource]
///       - [ProjectsLocationsInstancesInventoriesResource]
///       - [ProjectsLocationsInstancesVulnerabilityReportsResource]
///     - [ProjectsLocationsOsPolicyAssignmentsResource]
///       - [ProjectsLocationsOsPolicyAssignmentsOperationsResource]
library osconfig.v1alpha;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// OS management tools that can be used for patch management, patch compliance,
/// and configuration management on VM instances.
class OSConfigApi {
  /// See, edit, configure, and delete your Google Cloud Platform data
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  OSConfigApi(http.Client client,
      {core.String rootUrl = 'https://osconfig.googleapis.com/',
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

  ProjectsLocationsInstanceOSPoliciesCompliancesResource
      get instanceOSPoliciesCompliances =>
          ProjectsLocationsInstanceOSPoliciesCompliancesResource(_requester);
  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsOsPolicyAssignmentsResource get osPolicyAssignments =>
      ProjectsLocationsOsPolicyAssignmentsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsInstanceOSPoliciesCompliancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstanceOSPoliciesCompliancesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Get OS policies compliance data for the specified Compute Engine VM
  /// instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. API resource name for instance OS policies compliance
  /// resource. Format:
  /// `projects/{project}/locations/{location}/instanceOSPoliciesCompliances/{instance}`
  /// For `{project}`, either Compute Engine project-number or project-id can be
  /// provided. For `{instance}`, either Compute Engine VM instance-id or
  /// instance-name can be provided.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instanceOSPoliciesCompliances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstanceOSPoliciesCompliance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstanceOSPoliciesCompliance> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InstanceOSPoliciesCompliance.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List OS policies compliance data for all Compute Engine VM instances in
  /// the specified zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. Format:
  /// `projects/{project}/locations/{location}` For `{project}`, either Compute
  /// Engine project-number or project-id can be provided.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by a `InstanceOSPoliciesCompliance` API resource to be included in the
  /// response.
  ///
  /// [pageSize] - The maximum number of results to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// `ListInstanceOSPoliciesCompliances` that indicates where this listing
  /// should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstanceOSPoliciesCompliancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstanceOSPoliciesCompliancesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/instanceOSPoliciesCompliances';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListInstanceOSPoliciesCompliancesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesInventoriesResource get inventories =>
      ProjectsLocationsInstancesInventoriesResource(_requester);
  ProjectsLocationsInstancesVulnerabilityReportsResource
      get vulnerabilityReports =>
          ProjectsLocationsInstancesVulnerabilityReportsResource(_requester);

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsInstancesInventoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesInventoriesResource(commons.ApiRequester client)
      : _requester = client;

  /// Get inventory data for the specified VM instance.
  ///
  /// If the VM has no associated inventory, the message `NOT_FOUND` is
  /// returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. API resource name for inventory resource. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}/inventory`
  /// For `{project}`, either `project-number` or `project-id` can be provided.
  /// For `{instance}`, either Compute Engine `instance-id` or `instance-name`
  /// can be provided.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/inventory$`.
  ///
  /// [view] - Inventory view indicating what information should be included in
  /// the inventory resource. If unspecified, the default view is BASIC.
  /// Possible string values are:
  /// - "INVENTORY_VIEW_UNSPECIFIED" : The default value. The API defaults to
  /// the BASIC view.
  /// - "BASIC" : Returns the basic inventory information that includes
  /// `os_info`.
  /// - "FULL" : Returns all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Inventory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Inventory> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Inventory.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List inventory data for all VM instances in the specified zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}` For
  /// `{project}`, either `project-number` or `project-id` can be provided. For
  /// `{instance}`, only hyphen or dash character is supported to list
  /// inventories across VMs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by a `Inventory` API resource to be included in the response.
  ///
  /// [pageSize] - The maximum number of results to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// `ListInventories` that indicates where this listing should continue from.
  ///
  /// [view] - Inventory view indicating what information should be included in
  /// the inventory resource. If unspecified, the default view is BASIC.
  /// Possible string values are:
  /// - "INVENTORY_VIEW_UNSPECIFIED" : The default value. The API defaults to
  /// the BASIC view.
  /// - "BASIC" : Returns the basic inventory information that includes
  /// `os_info`.
  /// - "FULL" : Returns all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInventoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInventoriesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/inventories';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListInventoriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesVulnerabilityReportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesVulnerabilityReportsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the vulnerability report for the specified VM instance.
  ///
  /// Only VMs with inventory data have vulnerability reports associated with
  /// them.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. API resource name for vulnerability resource. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}/vulnerabilityReport`
  /// For `{project}`, either `project-number` or `project-id` can be provided.
  /// For `{instance}`, either Compute Engine `instance-id` or `instance-name`
  /// can be provided.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/vulnerabilityReport$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VulnerabilityReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VulnerabilityReport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VulnerabilityReport.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List vulnerability reports for all VM instances in the specified zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}` For
  /// `{project}`, either `project-number` or `project-id` can be provided. For
  /// `{instance}`, only `-` character is supported to list vulnerability
  /// reports across VMs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by a `vulnerabilityReport` API resource to be included in the response.
  ///
  /// [pageSize] - The maximum number of results to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// `ListVulnerabilityReports` that indicates where this listing should
  /// continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVulnerabilityReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVulnerabilityReportsResponse> list(
    core.String parent, {
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

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/vulnerabilityReports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVulnerabilityReportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOsPolicyAssignmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOsPolicyAssignmentsOperationsResource get operations =>
      ProjectsLocationsOsPolicyAssignmentsOperationsResource(_requester);

  ProjectsLocationsOsPolicyAssignmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an OS policy assignment.
  ///
  /// This method also creates the first revision of the OS policy assignment.
  /// This method returns a long running operation (LRO) that contains the
  /// rollout details. The rollout can be cancelled by cancelling the LRO. For
  /// more information, see \[Method:
  /// projects.locations.osPolicyAssignments.operations.cancel\](https://cloud.google.com/compute/docs/osconfig/rest/v1alpha/projects.locations.osPolicyAssignments.operations/cancel).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name in the form:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [osPolicyAssignmentId] - Required. The logical name of the OS policy
  /// assignment in the project with the following restrictions: * Must contain
  /// only lowercase letters, numbers, and hyphens. * Must start with a letter.
  /// * Must be between 1-63 characters. * Must end with a number or a letter. *
  /// Must be unique within the project.
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
    OSPolicyAssignment request,
    core.String parent, {
    core.String? osPolicyAssignmentId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (osPolicyAssignmentId != null)
        'osPolicyAssignmentId': [osPolicyAssignmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/osPolicyAssignments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Delete the OS policy assignment.
  ///
  /// This method creates a new revision of the OS policy assignment. This
  /// method returns a long running operation (LRO) that contains the rollout
  /// details. The rollout can be cancelled by cancelling the LRO. If the LRO
  /// completes and is not cancelled, all revisions associated with the OS
  /// policy assignment are deleted. For more information, see \[Method:
  /// projects.locations.osPolicyAssignments.operations.cancel\](https://cloud.google.com/compute/docs/osconfig/rest/v1alpha/projects.locations.osPolicyAssignments.operations/cancel).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the OS policy assignment to be deleted
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/osPolicyAssignments/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an existing OS policy assignment.
  ///
  /// This method always returns the latest revision. In order to retrieve a
  /// previous revision of the assignment, also provide the revision ID in the
  /// `name` parameter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of OS policy assignment. Format:
  /// `projects/{project}/locations/{location}/osPolicyAssignments/{os_policy_assignment}@{revisionId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/osPolicyAssignments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OSPolicyAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OSPolicyAssignment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return OSPolicyAssignment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List the OS policy assignments under the parent resource.
  ///
  /// For each OS policy assignment, the latest revision is returned.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of assignments to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// `ListOSPolicyAssignments` that indicates where this listing should
  /// continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOSPolicyAssignmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOSPolicyAssignmentsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/osPolicyAssignments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOSPolicyAssignmentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List the OS policy assignment revisions for a given OS policy assignment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the OS policy assignment to list revisions
  /// for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/osPolicyAssignments/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of revisions to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// `ListOSPolicyAssignmentRevisions` that indicates where this listing should
  /// continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOSPolicyAssignmentRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOSPolicyAssignmentRevisionsResponse> listRevisions(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':listRevisions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOSPolicyAssignmentRevisionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update an existing OS policy assignment.
  ///
  /// This method creates a new revision of the OS policy assignment. This
  /// method returns a long running operation (LRO) that contains the rollout
  /// details. The rollout can be cancelled by cancelling the LRO. For more
  /// information, see \[Method:
  /// projects.locations.osPolicyAssignments.operations.cancel\](https://cloud.google.com/compute/docs/osconfig/rest/v1alpha/projects.locations.osPolicyAssignments.operations/cancel).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name. Format:
  /// `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}`
  /// This field is ignored when you create an OS policy assignment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/osPolicyAssignments/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask that controls which fields of the
  /// assignment should be updated.
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
    OSPolicyAssignment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOsPolicyAssignmentsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOsPolicyAssignmentsOperationsResource(
      commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/osPolicyAssignments/\[^/\]+/operations/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/osPolicyAssignments/\[^/\]+/operations/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Common Vulnerability Scoring System version 3.
///
/// For details, see https://www.first.org/cvss/specification-document
class CVSSv3 {
  /// This metric describes the conditions beyond the attacker's control that
  /// must exist in order to exploit the vulnerability.
  /// Possible string values are:
  /// - "ATTACK_COMPLEXITY_UNSPECIFIED" : Invalid value.
  /// - "ATTACK_COMPLEXITY_LOW" : Specialized access conditions or extenuating
  /// circumstances do not exist. An attacker can expect repeatable success when
  /// attacking the vulnerable component.
  /// - "ATTACK_COMPLEXITY_HIGH" : A successful attack depends on conditions
  /// beyond the attacker's control. That is, a successful attack cannot be
  /// accomplished at will, but requires the attacker to invest in some
  /// measurable amount of effort in preparation or execution against the
  /// vulnerable component before a successful attack can be expected.
  core.String? attackComplexity;

  /// This metric reflects the context by which vulnerability exploitation is
  /// possible.
  /// Possible string values are:
  /// - "ATTACK_VECTOR_UNSPECIFIED" : Invalid value.
  /// - "ATTACK_VECTOR_NETWORK" : The vulnerable component is bound to the
  /// network stack and the set of possible attackers extends beyond the other
  /// options listed below, up to and including the entire Internet.
  /// - "ATTACK_VECTOR_ADJACENT" : The vulnerable component is bound to the
  /// network stack, but the attack is limited at the protocol level to a
  /// logically adjacent topology.
  /// - "ATTACK_VECTOR_LOCAL" : The vulnerable component is not bound to the
  /// network stack and the attacker's path is via read/write/execute
  /// capabilities.
  /// - "ATTACK_VECTOR_PHYSICAL" : The attack requires the attacker to
  /// physically touch or manipulate the vulnerable component.
  core.String? attackVector;

  /// This metric measures the impact to the availability of the impacted
  /// component resulting from a successfully exploited vulnerability.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Invalid value.
  /// - "IMPACT_HIGH" : High impact.
  /// - "IMPACT_LOW" : Low impact.
  /// - "IMPACT_NONE" : No impact.
  core.String? availabilityImpact;

  /// The base score is a function of the base metric scores.
  ///
  /// https://www.first.org/cvss/specification-document#Base-Metrics
  core.double? baseScore;

  /// This metric measures the impact to the confidentiality of the information
  /// resources managed by a software component due to a successfully exploited
  /// vulnerability.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Invalid value.
  /// - "IMPACT_HIGH" : High impact.
  /// - "IMPACT_LOW" : Low impact.
  /// - "IMPACT_NONE" : No impact.
  core.String? confidentialityImpact;

  /// The Exploitability sub-score equation is derived from the Base
  /// Exploitability metrics.
  ///
  /// https://www.first.org/cvss/specification-document#2-1-Exploitability-Metrics
  core.double? exploitabilityScore;

  /// The Impact sub-score equation is derived from the Base Impact metrics.
  core.double? impactScore;

  /// This metric measures the impact to integrity of a successfully exploited
  /// vulnerability.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Invalid value.
  /// - "IMPACT_HIGH" : High impact.
  /// - "IMPACT_LOW" : Low impact.
  /// - "IMPACT_NONE" : No impact.
  core.String? integrityImpact;

  /// This metric describes the level of privileges an attacker must possess
  /// before successfully exploiting the vulnerability.
  /// Possible string values are:
  /// - "PRIVILEGES_REQUIRED_UNSPECIFIED" : Invalid value.
  /// - "PRIVILEGES_REQUIRED_NONE" : The attacker is unauthorized prior to
  /// attack, and therefore does not require any access to settings or files of
  /// the vulnerable system to carry out an attack.
  /// - "PRIVILEGES_REQUIRED_LOW" : The attacker requires privileges that
  /// provide basic user capabilities that could normally affect only settings
  /// and files owned by a user. Alternatively, an attacker with Low privileges
  /// has the ability to access only non-sensitive resources.
  /// - "PRIVILEGES_REQUIRED_HIGH" : The attacker requires privileges that
  /// provide significant (e.g., administrative) control over the vulnerable
  /// component allowing access to component-wide settings and files.
  core.String? privilegesRequired;

  /// The Scope metric captures whether a vulnerability in one vulnerable
  /// component impacts resources in components beyond its security scope.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : Invalid value.
  /// - "SCOPE_UNCHANGED" : An exploited vulnerability can only affect resources
  /// managed by the same security authority.
  /// - "SCOPE_CHANGED" : An exploited vulnerability can affect resources beyond
  /// the security scope managed by the security authority of the vulnerable
  /// component.
  core.String? scope;

  /// This metric captures the requirement for a human user, other than the
  /// attacker, to participate in the successful compromise of the vulnerable
  /// component.
  /// Possible string values are:
  /// - "USER_INTERACTION_UNSPECIFIED" : Invalid value.
  /// - "USER_INTERACTION_NONE" : The vulnerable system can be exploited without
  /// interaction from any user.
  /// - "USER_INTERACTION_REQUIRED" : Successful exploitation of this
  /// vulnerability requires a user to take some action before the vulnerability
  /// can be exploited.
  core.String? userInteraction;

  CVSSv3();

  CVSSv3.fromJson(core.Map _json) {
    if (_json.containsKey('attackComplexity')) {
      attackComplexity = _json['attackComplexity'] as core.String;
    }
    if (_json.containsKey('attackVector')) {
      attackVector = _json['attackVector'] as core.String;
    }
    if (_json.containsKey('availabilityImpact')) {
      availabilityImpact = _json['availabilityImpact'] as core.String;
    }
    if (_json.containsKey('baseScore')) {
      baseScore = (_json['baseScore'] as core.num).toDouble();
    }
    if (_json.containsKey('confidentialityImpact')) {
      confidentialityImpact = _json['confidentialityImpact'] as core.String;
    }
    if (_json.containsKey('exploitabilityScore')) {
      exploitabilityScore =
          (_json['exploitabilityScore'] as core.num).toDouble();
    }
    if (_json.containsKey('impactScore')) {
      impactScore = (_json['impactScore'] as core.num).toDouble();
    }
    if (_json.containsKey('integrityImpact')) {
      integrityImpact = _json['integrityImpact'] as core.String;
    }
    if (_json.containsKey('privilegesRequired')) {
      privilegesRequired = _json['privilegesRequired'] as core.String;
    }
    if (_json.containsKey('scope')) {
      scope = _json['scope'] as core.String;
    }
    if (_json.containsKey('userInteraction')) {
      userInteraction = _json['userInteraction'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (attackComplexity != null) 'attackComplexity': attackComplexity!,
        if (attackVector != null) 'attackVector': attackVector!,
        if (availabilityImpact != null)
          'availabilityImpact': availabilityImpact!,
        if (baseScore != null) 'baseScore': baseScore!,
        if (confidentialityImpact != null)
          'confidentialityImpact': confidentialityImpact!,
        if (exploitabilityScore != null)
          'exploitabilityScore': exploitabilityScore!,
        if (impactScore != null) 'impactScore': impactScore!,
        if (integrityImpact != null) 'integrityImpact': integrityImpact!,
        if (privilegesRequired != null)
          'privilegesRequired': privilegesRequired!,
        if (scope != null) 'scope': scope!,
        if (userInteraction != null) 'userInteraction': userInteraction!,
      };
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Message encapsulating a value that can be either absolute ("fixed") or
/// relative ("percent") to a value.
class FixedOrPercent {
  /// Specifies a fixed value.
  core.int? fixed;

  /// Specifies the relative value defined as a percentage, which will be
  /// multiplied by a reference value.
  core.int? percent;

  FixedOrPercent();

  FixedOrPercent.fromJson(core.Map _json) {
    if (_json.containsKey('fixed')) {
      fixed = _json['fixed'] as core.int;
    }
    if (_json.containsKey('percent')) {
      percent = _json['percent'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixed != null) 'fixed': fixed!,
        if (percent != null) 'percent': percent!,
      };
}

/// This API resource represents the OS policies compliance data for a Compute
/// Engine virtual machine (VM) instance at a given point in time.
///
/// A Compute Engine VM can have multiple OS policy assignments, and each
/// assignment can have multiple OS policies. As a result, multiple OS policies
/// could be applied to a single VM. You can use this API resource to determine
/// both the compliance state of your VM as well as the compliance state of an
/// individual OS policy. For more information, see
/// [View compliance](https://cloud.google.com/compute/docs/os-configuration-management/view-compliance).
class InstanceOSPoliciesCompliance {
  /// Detailed compliance state of the VM.
  ///
  /// This field is populated only when compliance state is `UNKNOWN`. It may
  /// contain one of the following values: * `no-compliance-data`: Compliance
  /// data is not available for this VM. * `no-agent-detected`: OS Config agent
  /// is not detected for this VM. * `config-not-supported-by-agent`: The
  /// version of the OS Config agent running on this VM does not support
  /// configuration management. * `inactive`: VM is not running. *
  /// `internal-service-errors`: There were internal service errors encountered
  /// while enforcing compliance. * `agent-errors`: OS config agent encountered
  /// errors while enforcing compliance.
  ///
  /// Output only.
  core.String? detailedState;

  /// The reason for the `detailed_state` of the VM (if any).
  ///
  /// Output only.
  core.String? detailedStateReason;

  /// The Compute Engine VM instance name.
  ///
  /// Output only.
  core.String? instance;

  /// Timestamp of the last compliance check for the VM.
  ///
  /// Output only.
  core.String? lastComplianceCheckTime;

  /// Unique identifier for the last compliance run.
  ///
  /// This id will be logged by the OS config agent during a compliance run and
  /// can be used for debugging and tracing purpose.
  ///
  /// Output only.
  core.String? lastComplianceRunId;

  /// The `InstanceOSPoliciesCompliance` API resource name.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/instanceOSPoliciesCompliances/{instance_id}`
  ///
  /// Output only.
  core.String? name;

  /// Compliance data for each `OSPolicy` that is applied to the VM.
  ///
  /// Output only.
  core.List<InstanceOSPoliciesComplianceOSPolicyCompliance>?
      osPolicyCompliances;

  /// Compliance state of the VM.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "COMPLIANT" : Compliant state.
  /// - "NON_COMPLIANT" : Non-compliant state
  /// - "UNKNOWN" : Unknown compliance state.
  /// - "NO_OS_POLICIES_APPLICABLE" : No applicable OS policies were found for
  /// the instance. This state is only applicable to the instance.
  core.String? state;

  InstanceOSPoliciesCompliance();

  InstanceOSPoliciesCompliance.fromJson(core.Map _json) {
    if (_json.containsKey('detailedState')) {
      detailedState = _json['detailedState'] as core.String;
    }
    if (_json.containsKey('detailedStateReason')) {
      detailedStateReason = _json['detailedStateReason'] as core.String;
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'] as core.String;
    }
    if (_json.containsKey('lastComplianceCheckTime')) {
      lastComplianceCheckTime = _json['lastComplianceCheckTime'] as core.String;
    }
    if (_json.containsKey('lastComplianceRunId')) {
      lastComplianceRunId = _json['lastComplianceRunId'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('osPolicyCompliances')) {
      osPolicyCompliances = (_json['osPolicyCompliances'] as core.List)
          .map<InstanceOSPoliciesComplianceOSPolicyCompliance>((value) =>
              InstanceOSPoliciesComplianceOSPolicyCompliance.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (detailedState != null) 'detailedState': detailedState!,
        if (detailedStateReason != null)
          'detailedStateReason': detailedStateReason!,
        if (instance != null) 'instance': instance!,
        if (lastComplianceCheckTime != null)
          'lastComplianceCheckTime': lastComplianceCheckTime!,
        if (lastComplianceRunId != null)
          'lastComplianceRunId': lastComplianceRunId!,
        if (name != null) 'name': name!,
        if (osPolicyCompliances != null)
          'osPolicyCompliances':
              osPolicyCompliances!.map((value) => value.toJson()).toList(),
        if (state != null) 'state': state!,
      };
}

/// Compliance data for an OS policy
class InstanceOSPoliciesComplianceOSPolicyCompliance {
  /// Reference to the `OSPolicyAssignment` API resource that the `OSPolicy`
  /// belongs to.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id@revision_id}`
  core.String? osPolicyAssignment;

  /// The OS policy id
  core.String? osPolicyId;

  /// Compliance data for each `OSPolicyResource` that is applied to the VM.
  core.List<OSPolicyResourceCompliance>? osPolicyResourceCompliances;

  /// Compliance state of the OS policy.
  /// Possible string values are:
  /// - "OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "COMPLIANT" : Compliant state.
  /// - "NON_COMPLIANT" : Non-compliant state
  /// - "UNKNOWN" : Unknown compliance state.
  /// - "NO_OS_POLICIES_APPLICABLE" : No applicable OS policies were found for
  /// the instance. This state is only applicable to the instance.
  core.String? state;

  InstanceOSPoliciesComplianceOSPolicyCompliance();

  InstanceOSPoliciesComplianceOSPolicyCompliance.fromJson(core.Map _json) {
    if (_json.containsKey('osPolicyAssignment')) {
      osPolicyAssignment = _json['osPolicyAssignment'] as core.String;
    }
    if (_json.containsKey('osPolicyId')) {
      osPolicyId = _json['osPolicyId'] as core.String;
    }
    if (_json.containsKey('osPolicyResourceCompliances')) {
      osPolicyResourceCompliances =
          (_json['osPolicyResourceCompliances'] as core.List)
              .map<OSPolicyResourceCompliance>((value) =>
                  OSPolicyResourceCompliance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (osPolicyAssignment != null)
          'osPolicyAssignment': osPolicyAssignment!,
        if (osPolicyId != null) 'osPolicyId': osPolicyId!,
        if (osPolicyResourceCompliances != null)
          'osPolicyResourceCompliances': osPolicyResourceCompliances!
              .map((value) => value.toJson())
              .toList(),
        if (state != null) 'state': state!,
      };
}

/// This API resource represents the available inventory data for a Compute
/// Engine virtual machine (VM) instance at a given point in time.
///
/// You can use this API resource to determine the inventory data of your VM.
/// For more information, see
/// [Information provided by OS inventory management](https://cloud.google.com/compute/docs/instances/os-inventory-management#data-collected).
class Inventory {
  /// Inventory items related to the VM keyed by an opaque unique identifier for
  /// each inventory item.
  ///
  /// The identifier is unique to each distinct and addressable inventory item
  /// and will change, when there is a new package version.
  ///
  /// Output only.
  core.Map<core.String, InventoryItem>? items;

  /// The `Inventory` API resource name.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/instances/{instance_id}/inventory`
  ///
  /// Output only.
  core.String? name;

  /// Base level operating system information for the VM.
  ///
  /// Output only.
  InventoryOsInfo? osInfo;

  /// Timestamp of the last reported inventory for the VM.
  ///
  /// Output only.
  core.String? updateTime;

  Inventory();

  Inventory.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          InventoryItem.fromJson(item as core.Map<core.String, core.dynamic>),
        ),
      );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('osInfo')) {
      osInfo = InventoryOsInfo.fromJson(
          _json['osInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((key, item) => core.MapEntry(key, item.toJson())),
        if (name != null) 'name': name!,
        if (osInfo != null) 'osInfo': osInfo!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A single piece of inventory on a VM.
class InventoryItem {
  /// Software package available to be installed on the VM instance.
  InventorySoftwarePackage? availablePackage;

  /// When this inventory item was first detected.
  core.String? createTime;

  /// Identifier for this item, unique across items for this VM.
  core.String? id;

  /// Software package present on the VM instance.
  InventorySoftwarePackage? installedPackage;

  /// The origin of this inventory item.
  /// Possible string values are:
  /// - "ORIGIN_TYPE_UNSPECIFIED" : Invalid. An origin type must be specified.
  /// - "INVENTORY_REPORT" : This inventory item was discovered as the result of
  /// the agent reporting inventory via the reporting API.
  core.String? originType;

  /// The specific type of inventory, correlating to its specific details.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Invalid. An type must be specified.
  /// - "INSTALLED_PACKAGE" : This represents a package that is installed on the
  /// VM.
  /// - "AVAILABLE_PACKAGE" : This represents an update that is available for a
  /// package.
  core.String? type;

  /// When this inventory item was last modified.
  core.String? updateTime;

  InventoryItem();

  InventoryItem.fromJson(core.Map _json) {
    if (_json.containsKey('availablePackage')) {
      availablePackage = InventorySoftwarePackage.fromJson(
          _json['availablePackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('installedPackage')) {
      installedPackage = InventorySoftwarePackage.fromJson(
          _json['installedPackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('originType')) {
      originType = _json['originType'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (availablePackage != null)
          'availablePackage': availablePackage!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (id != null) 'id': id!,
        if (installedPackage != null)
          'installedPackage': installedPackage!.toJson(),
        if (originType != null) 'originType': originType!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Operating system information for the VM.
class InventoryOsInfo {
  /// The system architecture of the operating system.
  core.String? architecture;

  /// The VM hostname.
  core.String? hostname;

  /// The kernel release of the operating system.
  core.String? kernelRelease;

  /// The kernel version of the operating system.
  core.String? kernelVersion;

  /// The operating system long name.
  ///
  /// For example 'Debian GNU/Linux 9' or 'Microsoft Window Server 2019
  /// Datacenter'.
  core.String? longName;

  /// The current version of the OS Config agent running on the VM.
  core.String? osconfigAgentVersion;

  /// The operating system short name.
  ///
  /// For example, 'windows' or 'debian'.
  core.String? shortName;

  /// The version of the operating system.
  core.String? version;

  InventoryOsInfo();

  InventoryOsInfo.fromJson(core.Map _json) {
    if (_json.containsKey('architecture')) {
      architecture = _json['architecture'] as core.String;
    }
    if (_json.containsKey('hostname')) {
      hostname = _json['hostname'] as core.String;
    }
    if (_json.containsKey('kernelRelease')) {
      kernelRelease = _json['kernelRelease'] as core.String;
    }
    if (_json.containsKey('kernelVersion')) {
      kernelVersion = _json['kernelVersion'] as core.String;
    }
    if (_json.containsKey('longName')) {
      longName = _json['longName'] as core.String;
    }
    if (_json.containsKey('osconfigAgentVersion')) {
      osconfigAgentVersion = _json['osconfigAgentVersion'] as core.String;
    }
    if (_json.containsKey('shortName')) {
      shortName = _json['shortName'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (hostname != null) 'hostname': hostname!,
        if (kernelRelease != null) 'kernelRelease': kernelRelease!,
        if (kernelVersion != null) 'kernelVersion': kernelVersion!,
        if (longName != null) 'longName': longName!,
        if (osconfigAgentVersion != null)
          'osconfigAgentVersion': osconfigAgentVersion!,
        if (shortName != null) 'shortName': shortName!,
        if (version != null) 'version': version!,
      };
}

/// Software package information of the operating system.
class InventorySoftwarePackage {
  /// Details of an APT package.
  ///
  /// For details about the apt package manager, see
  /// https://wiki.debian.org/Apt.
  InventoryVersionedPackage? aptPackage;

  /// Details of a COS package.
  InventoryVersionedPackage? cosPackage;

  /// Details of a Googet package.
  ///
  /// For details about the googet package manager, see
  /// https://github.com/google/googet.
  InventoryVersionedPackage? googetPackage;

  /// Details of a Windows Quick Fix engineering package.
  ///
  /// See
  /// https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
  /// for info in Windows Quick Fix Engineering.
  InventoryWindowsQuickFixEngineeringPackage? qfePackage;

  /// Details of a Windows Update package.
  ///
  /// See https://docs.microsoft.com/en-us/windows/win32/api/_wua/ for
  /// information about Windows Update.
  InventoryWindowsUpdatePackage? wuaPackage;

  /// Yum package info.
  ///
  /// For details about the yum package manager, see
  /// https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/ch-yum.
  InventoryVersionedPackage? yumPackage;

  /// Details of a Zypper package.
  ///
  /// For details about the Zypper package manager, see
  /// https://en.opensuse.org/SDB:Zypper_manual.
  InventoryVersionedPackage? zypperPackage;

  /// Details of a Zypper patch.
  ///
  /// For details about the Zypper package manager, see
  /// https://en.opensuse.org/SDB:Zypper_manual.
  InventoryZypperPatch? zypperPatch;

  InventorySoftwarePackage();

  InventorySoftwarePackage.fromJson(core.Map _json) {
    if (_json.containsKey('aptPackage')) {
      aptPackage = InventoryVersionedPackage.fromJson(
          _json['aptPackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('cosPackage')) {
      cosPackage = InventoryVersionedPackage.fromJson(
          _json['cosPackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('googetPackage')) {
      googetPackage = InventoryVersionedPackage.fromJson(
          _json['googetPackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('qfePackage')) {
      qfePackage = InventoryWindowsQuickFixEngineeringPackage.fromJson(
          _json['qfePackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('wuaPackage')) {
      wuaPackage = InventoryWindowsUpdatePackage.fromJson(
          _json['wuaPackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('yumPackage')) {
      yumPackage = InventoryVersionedPackage.fromJson(
          _json['yumPackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('zypperPackage')) {
      zypperPackage = InventoryVersionedPackage.fromJson(
          _json['zypperPackage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('zypperPatch')) {
      zypperPatch = InventoryZypperPatch.fromJson(
          _json['zypperPatch'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (aptPackage != null) 'aptPackage': aptPackage!.toJson(),
        if (cosPackage != null) 'cosPackage': cosPackage!.toJson(),
        if (googetPackage != null) 'googetPackage': googetPackage!.toJson(),
        if (qfePackage != null) 'qfePackage': qfePackage!.toJson(),
        if (wuaPackage != null) 'wuaPackage': wuaPackage!.toJson(),
        if (yumPackage != null) 'yumPackage': yumPackage!.toJson(),
        if (zypperPackage != null) 'zypperPackage': zypperPackage!.toJson(),
        if (zypperPatch != null) 'zypperPatch': zypperPatch!.toJson(),
      };
}

/// Information related to the a standard versioned package.
///
/// This includes package info for APT, Yum, Zypper, and Googet package
/// managers.
class InventoryVersionedPackage {
  /// The system architecture this package is intended for.
  core.String? architecture;

  /// The name of the package.
  core.String? packageName;

  /// The version of the package.
  core.String? version;

  InventoryVersionedPackage();

  InventoryVersionedPackage.fromJson(core.Map _json) {
    if (_json.containsKey('architecture')) {
      architecture = _json['architecture'] as core.String;
    }
    if (_json.containsKey('packageName')) {
      packageName = _json['packageName'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (packageName != null) 'packageName': packageName!,
        if (version != null) 'version': version!,
      };
}

/// Information related to a Quick Fix Engineering package.
///
/// Fields are taken from Windows QuickFixEngineering Interface and match the
/// source names:
/// https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
class InventoryWindowsQuickFixEngineeringPackage {
  /// A short textual description of the QFE update.
  core.String? caption;

  /// A textual description of the QFE update.
  core.String? description;

  /// Unique identifier associated with a particular QFE update.
  core.String? hotFixId;

  /// Date that the QFE update was installed.
  ///
  /// Mapped from installed_on field.
  core.String? installTime;

  InventoryWindowsQuickFixEngineeringPackage();

  InventoryWindowsQuickFixEngineeringPackage.fromJson(core.Map _json) {
    if (_json.containsKey('caption')) {
      caption = _json['caption'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('hotFixId')) {
      hotFixId = _json['hotFixId'] as core.String;
    }
    if (_json.containsKey('installTime')) {
      installTime = _json['installTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (caption != null) 'caption': caption!,
        if (description != null) 'description': description!,
        if (hotFixId != null) 'hotFixId': hotFixId!,
        if (installTime != null) 'installTime': installTime!,
      };
}

/// Details related to a Windows Update package.
///
/// Field data and names are taken from Windows Update API IUpdate Interface:
/// https://docs.microsoft.com/en-us/windows/win32/api/_wua/ Descriptive fields
/// like title, and description are localized based on the locale of the VM
/// being updated.
class InventoryWindowsUpdatePackage {
  /// The categories that are associated with this update package.
  core.List<InventoryWindowsUpdatePackageWindowsUpdateCategory>? categories;

  /// The localized description of the update package.
  core.String? description;

  /// A collection of Microsoft Knowledge Base article IDs that are associated
  /// with the update package.
  core.List<core.String>? kbArticleIds;

  /// The last published date of the update, in (UTC) date and time.
  core.String? lastDeploymentChangeTime;

  /// A collection of URLs that provide more information about the update
  /// package.
  core.List<core.String>? moreInfoUrls;

  /// The revision number of this update package.
  core.int? revisionNumber;

  /// A hyperlink to the language-specific support information for the update.
  core.String? supportUrl;

  /// The localized title of the update package.
  core.String? title;

  /// Gets the identifier of an update package.
  ///
  /// Stays the same across revisions.
  core.String? updateId;

  InventoryWindowsUpdatePackage();

  InventoryWindowsUpdatePackage.fromJson(core.Map _json) {
    if (_json.containsKey('categories')) {
      categories = (_json['categories'] as core.List)
          .map<InventoryWindowsUpdatePackageWindowsUpdateCategory>((value) =>
              InventoryWindowsUpdatePackageWindowsUpdateCategory.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('kbArticleIds')) {
      kbArticleIds = (_json['kbArticleIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('lastDeploymentChangeTime')) {
      lastDeploymentChangeTime =
          _json['lastDeploymentChangeTime'] as core.String;
    }
    if (_json.containsKey('moreInfoUrls')) {
      moreInfoUrls = (_json['moreInfoUrls'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('revisionNumber')) {
      revisionNumber = _json['revisionNumber'] as core.int;
    }
    if (_json.containsKey('supportUrl')) {
      supportUrl = _json['supportUrl'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('updateId')) {
      updateId = _json['updateId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null)
          'categories': categories!.map((value) => value.toJson()).toList(),
        if (description != null) 'description': description!,
        if (kbArticleIds != null) 'kbArticleIds': kbArticleIds!,
        if (lastDeploymentChangeTime != null)
          'lastDeploymentChangeTime': lastDeploymentChangeTime!,
        if (moreInfoUrls != null) 'moreInfoUrls': moreInfoUrls!,
        if (revisionNumber != null) 'revisionNumber': revisionNumber!,
        if (supportUrl != null) 'supportUrl': supportUrl!,
        if (title != null) 'title': title!,
        if (updateId != null) 'updateId': updateId!,
      };
}

/// Categories specified by the Windows Update.
class InventoryWindowsUpdatePackageWindowsUpdateCategory {
  /// The identifier of the windows update category.
  core.String? id;

  /// The name of the windows update category.
  core.String? name;

  InventoryWindowsUpdatePackageWindowsUpdateCategory();

  InventoryWindowsUpdatePackageWindowsUpdateCategory.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Details related to a Zypper Patch.
class InventoryZypperPatch {
  /// The category of the patch.
  core.String? category;

  /// The name of the patch.
  core.String? patchName;

  /// The severity specified for this patch
  core.String? severity;

  /// Any summary information provided about this patch.
  core.String? summary;

  InventoryZypperPatch();

  InventoryZypperPatch.fromJson(core.Map _json) {
    if (_json.containsKey('category')) {
      category = _json['category'] as core.String;
    }
    if (_json.containsKey('patchName')) {
      patchName = _json['patchName'] as core.String;
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('summary')) {
      summary = _json['summary'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (patchName != null) 'patchName': patchName!,
        if (severity != null) 'severity': severity!,
        if (summary != null) 'summary': summary!,
      };
}

/// A response message for listing OS policies compliance data for all Compute
/// Engine VMs in the given location.
class ListInstanceOSPoliciesCompliancesResponse {
  /// List of instance OS policies compliance objects.
  core.List<InstanceOSPoliciesCompliance>? instanceOsPoliciesCompliances;

  /// The pagination token to retrieve the next page of instance OS policies
  /// compliance objects.
  core.String? nextPageToken;

  ListInstanceOSPoliciesCompliancesResponse();

  ListInstanceOSPoliciesCompliancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('instanceOsPoliciesCompliances')) {
      instanceOsPoliciesCompliances =
          (_json['instanceOsPoliciesCompliances'] as core.List)
              .map<InstanceOSPoliciesCompliance>((value) =>
                  InstanceOSPoliciesCompliance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceOsPoliciesCompliances != null)
          'instanceOsPoliciesCompliances': instanceOsPoliciesCompliances!
              .map((value) => value.toJson())
              .toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response message for listing inventory data for all VMs in a specified
/// location.
class ListInventoriesResponse {
  /// List of inventory objects.
  core.List<Inventory>? inventories;

  /// The pagination token to retrieve the next page of inventory objects.
  core.String? nextPageToken;

  ListInventoriesResponse();

  ListInventoriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('inventories')) {
      inventories = (_json['inventories'] as core.List)
          .map<Inventory>((value) =>
              Inventory.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventories != null)
          'inventories': inventories!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response message for listing all revisions for a OS policy assignment.
class ListOSPolicyAssignmentRevisionsResponse {
  /// The pagination token to retrieve the next page of OS policy assignment
  /// revisions.
  core.String? nextPageToken;

  /// The OS policy assignment revisions
  core.List<OSPolicyAssignment>? osPolicyAssignments;

  ListOSPolicyAssignmentRevisionsResponse();

  ListOSPolicyAssignmentRevisionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('osPolicyAssignments')) {
      osPolicyAssignments = (_json['osPolicyAssignments'] as core.List)
          .map<OSPolicyAssignment>((value) => OSPolicyAssignment.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (osPolicyAssignments != null)
          'osPolicyAssignments':
              osPolicyAssignments!.map((value) => value.toJson()).toList(),
      };
}

/// A response message for listing all assignments under given parent.
class ListOSPolicyAssignmentsResponse {
  /// The pagination token to retrieve the next page of OS policy assignments.
  core.String? nextPageToken;

  /// The list of assignments
  core.List<OSPolicyAssignment>? osPolicyAssignments;

  ListOSPolicyAssignmentsResponse();

  ListOSPolicyAssignmentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('osPolicyAssignments')) {
      osPolicyAssignments = (_json['osPolicyAssignments'] as core.List)
          .map<OSPolicyAssignment>((value) => OSPolicyAssignment.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (osPolicyAssignments != null)
          'osPolicyAssignments':
              osPolicyAssignments!.map((value) => value.toJson()).toList(),
      };
}

/// A response message for listing vulnerability reports for all VM instances in
/// the specified location.
class ListVulnerabilityReportsResponse {
  /// The pagination token to retrieve the next page of vulnerabilityReports
  /// object.
  core.String? nextPageToken;

  /// List of vulnerabilityReport objects.
  core.List<VulnerabilityReport>? vulnerabilityReports;

  ListVulnerabilityReportsResponse();

  ListVulnerabilityReportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('vulnerabilityReports')) {
      vulnerabilityReports = (_json['vulnerabilityReports'] as core.List)
          .map<VulnerabilityReport>((value) => VulnerabilityReport.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (vulnerabilityReports != null)
          'vulnerabilityReports':
              vulnerabilityReports!.map((value) => value.toJson()).toList(),
      };
}

/// An OS policy defines the desired state configuration for a VM.
class OSPolicy {
  /// This flag determines the OS policy compliance status when none of the
  /// resource groups within the policy are applicable for a VM.
  ///
  /// Set this value to `true` if the policy needs to be reported as compliant
  /// even if the policy has nothing to validate or enforce.
  core.bool? allowNoResourceGroupMatch;

  /// Policy description.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// The id of the OS policy with the following restrictions: * Must contain
  /// only lowercase letters, numbers, and hyphens.
  ///
  /// * Must start with a letter. * Must be between 1-63 characters. * Must end
  /// with a number or a letter. * Must be unique within the assignment.
  ///
  /// Required.
  core.String? id;

  /// Policy mode
  ///
  /// Required.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Invalid mode
  /// - "VALIDATION" : This mode checks if the configuration resources in the
  /// policy are in their desired state. No actions are performed if they are
  /// not in the desired state. This mode is used for reporting purposes.
  /// - "ENFORCEMENT" : This mode checks if the configuration resources in the
  /// policy are in their desired state, and if not, enforces the desired state.
  core.String? mode;

  /// List of resource groups for the policy.
  ///
  /// For a particular VM, resource groups are evaluated in the order specified
  /// and the first resource group that is applicable is selected and the rest
  /// are ignored. If none of the resource groups are applicable for a VM, the
  /// VM is considered to be non-compliant w.r.t this policy. This behavior can
  /// be toggled by the flag `allow_no_resource_group_match`
  ///
  /// Required.
  core.List<OSPolicyResourceGroup>? resourceGroups;

  OSPolicy();

  OSPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('allowNoResourceGroupMatch')) {
      allowNoResourceGroupMatch =
          _json['allowNoResourceGroupMatch'] as core.bool;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('mode')) {
      mode = _json['mode'] as core.String;
    }
    if (_json.containsKey('resourceGroups')) {
      resourceGroups = (_json['resourceGroups'] as core.List)
          .map<OSPolicyResourceGroup>((value) => OSPolicyResourceGroup.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowNoResourceGroupMatch != null)
          'allowNoResourceGroupMatch': allowNoResourceGroupMatch!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (mode != null) 'mode': mode!,
        if (resourceGroups != null)
          'resourceGroups':
              resourceGroups!.map((value) => value.toJson()).toList(),
      };
}

/// OS policy assignment is an API resource that is used to apply a set of OS
/// policies to a dynamically targeted group of Compute Engine VM instances.
///
/// An OS policy is used to define the desired state configuration for a Compute
/// Engine VM instance through a set of configuration resources that provide
/// capabilities such as installing or removing software packages, or executing
/// a script. For more information, see
/// [OS policy and OS policy assignment](https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies).
class OSPolicyAssignment {
  /// Indicates that this revision has been successfully rolled out in this zone
  /// and new VMs will be assigned OS policies from this revision.
  ///
  /// For a given OS policy assignment, there is only one revision with a value
  /// of `true` for this field.
  ///
  /// Output only.
  core.bool? baseline;

  /// Indicates that this revision deletes the OS policy assignment.
  ///
  /// Output only.
  core.bool? deleted;

  /// OS policy assignment description.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// Filter to select VMs.
  ///
  /// Required.
  OSPolicyAssignmentInstanceFilter? instanceFilter;

  /// Resource name.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}`
  /// This field is ignored when you create an OS policy assignment.
  core.String? name;

  /// List of OS policies to be applied to the VMs.
  ///
  /// Required.
  core.List<OSPolicy>? osPolicies;

  /// Indicates that reconciliation is in progress for the revision.
  ///
  /// This value is `true` when the `rollout_state` is one of: * IN_PROGRESS *
  /// CANCELLING
  ///
  /// Output only.
  core.bool? reconciling;

  /// The timestamp that the revision was created.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The assignment revision ID A new revision is committed whenever a rollout
  /// is triggered for a OS policy assignment
  ///
  /// Output only.
  core.String? revisionId;

  /// Rollout to deploy the OS policy assignment.
  ///
  /// A rollout is triggered in the following situations: 1) OSPolicyAssignment
  /// is created. 2) OSPolicyAssignment is updated and the update contains
  /// changes to one of the following fields: - instance_filter - os_policies 3)
  /// OSPolicyAssignment is deleted.
  ///
  /// Required.
  OSPolicyAssignmentRollout? rollout;

  /// OS policy assignment rollout state
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ROLLOUT_STATE_UNSPECIFIED" : Invalid value
  /// - "IN_PROGRESS" : The rollout is in progress.
  /// - "CANCELLING" : The rollout is being cancelled.
  /// - "CANCELLED" : The rollout is cancelled.
  /// - "SUCCEEDED" : The rollout has completed successfully.
  core.String? rolloutState;

  /// Server generated unique id for the OS policy assignment resource.
  ///
  /// Output only.
  core.String? uid;

  OSPolicyAssignment();

  OSPolicyAssignment.fromJson(core.Map _json) {
    if (_json.containsKey('baseline')) {
      baseline = _json['baseline'] as core.bool;
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('instanceFilter')) {
      instanceFilter = OSPolicyAssignmentInstanceFilter.fromJson(
          _json['instanceFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('osPolicies')) {
      osPolicies = (_json['osPolicies'] as core.List)
          .map<OSPolicy>((value) =>
              OSPolicy.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('reconciling')) {
      reconciling = _json['reconciling'] as core.bool;
    }
    if (_json.containsKey('revisionCreateTime')) {
      revisionCreateTime = _json['revisionCreateTime'] as core.String;
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
    if (_json.containsKey('rollout')) {
      rollout = OSPolicyAssignmentRollout.fromJson(
          _json['rollout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rolloutState')) {
      rolloutState = _json['rolloutState'] as core.String;
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseline != null) 'baseline': baseline!,
        if (deleted != null) 'deleted': deleted!,
        if (description != null) 'description': description!,
        if (instanceFilter != null) 'instanceFilter': instanceFilter!.toJson(),
        if (name != null) 'name': name!,
        if (osPolicies != null)
          'osPolicies': osPolicies!.map((value) => value.toJson()).toList(),
        if (reconciling != null) 'reconciling': reconciling!,
        if (revisionCreateTime != null)
          'revisionCreateTime': revisionCreateTime!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (rollout != null) 'rollout': rollout!.toJson(),
        if (rolloutState != null) 'rolloutState': rolloutState!,
        if (uid != null) 'uid': uid!,
      };
}

/// Message to represent the filters to select VMs for an assignment
class OSPolicyAssignmentInstanceFilter {
  /// Target all VMs in the project.
  ///
  /// If true, no other criteria is permitted.
  core.bool? all;

  /// List of label sets used for VM exclusion.
  ///
  /// If the list has more than one label set, the VM is excluded if any of the
  /// label sets are applicable for the VM. This filter is applied last in the
  /// filtering chain and therefore a VM is guaranteed to be excluded if it
  /// satisfies one of the below label sets.
  core.List<OSPolicyAssignmentLabelSet>? exclusionLabels;

  /// List of label sets used for VM inclusion.
  ///
  /// If the list has more than one `LabelSet`, the VM is included if any of the
  /// label sets are applicable for the VM.
  core.List<OSPolicyAssignmentLabelSet>? inclusionLabels;

  /// A VM is included if it's OS short name matches with any of the values
  /// provided in this list.
  core.List<core.String>? osShortNames;

  OSPolicyAssignmentInstanceFilter();

  OSPolicyAssignmentInstanceFilter.fromJson(core.Map _json) {
    if (_json.containsKey('all')) {
      all = _json['all'] as core.bool;
    }
    if (_json.containsKey('exclusionLabels')) {
      exclusionLabels = (_json['exclusionLabels'] as core.List)
          .map<OSPolicyAssignmentLabelSet>((value) =>
              OSPolicyAssignmentLabelSet.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('inclusionLabels')) {
      inclusionLabels = (_json['inclusionLabels'] as core.List)
          .map<OSPolicyAssignmentLabelSet>((value) =>
              OSPolicyAssignmentLabelSet.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('osShortNames')) {
      osShortNames = (_json['osShortNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (all != null) 'all': all!,
        if (exclusionLabels != null)
          'exclusionLabels':
              exclusionLabels!.map((value) => value.toJson()).toList(),
        if (inclusionLabels != null)
          'inclusionLabels':
              inclusionLabels!.map((value) => value.toJson()).toList(),
        if (osShortNames != null) 'osShortNames': osShortNames!,
      };
}

/// Message representing label set.
///
/// * A label is a key value pair set for a VM. * A LabelSet is a set of labels.
/// * Labels within a LabelSet are ANDed. In other words, a LabelSet is
/// applicable for a VM only if it matches all the labels in the LabelSet. *
/// Example: A LabelSet with 2 labels: `env=prod` and `type=webserver` will only
/// be applicable for those VMs with both labels present.
class OSPolicyAssignmentLabelSet {
  /// Labels are identified by key/value pairs in this map.
  ///
  /// A VM should contain all the key/value pairs specified in this map to be
  /// selected.
  core.Map<core.String, core.String>? labels;

  OSPolicyAssignmentLabelSet();

  OSPolicyAssignmentLabelSet.fromJson(core.Map _json) {
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

/// OS policy assignment operation metadata provided by OS policy assignment API
/// methods that return long running operations.
class OSPolicyAssignmentOperationMetadata {
  /// The OS policy assignment API method.
  /// Possible string values are:
  /// - "API_METHOD_UNSPECIFIED" : Invalid value
  /// - "CREATE" : Create OS policy assignment API method
  /// - "UPDATE" : Update OS policy assignment API method
  /// - "DELETE" : Delete OS policy assignment API method
  core.String? apiMethod;

  /// Reference to the `OSPolicyAssignment` API resource.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id@revision_id}`
  core.String? osPolicyAssignment;

  /// Rollout start time
  core.String? rolloutStartTime;

  /// State of the rollout
  /// Possible string values are:
  /// - "ROLLOUT_STATE_UNSPECIFIED" : Invalid value
  /// - "IN_PROGRESS" : The rollout is in progress.
  /// - "CANCELLING" : The rollout is being cancelled.
  /// - "CANCELLED" : The rollout is cancelled.
  /// - "SUCCEEDED" : The rollout has completed successfully.
  core.String? rolloutState;

  /// Rollout update time
  core.String? rolloutUpdateTime;

  OSPolicyAssignmentOperationMetadata();

  OSPolicyAssignmentOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiMethod')) {
      apiMethod = _json['apiMethod'] as core.String;
    }
    if (_json.containsKey('osPolicyAssignment')) {
      osPolicyAssignment = _json['osPolicyAssignment'] as core.String;
    }
    if (_json.containsKey('rolloutStartTime')) {
      rolloutStartTime = _json['rolloutStartTime'] as core.String;
    }
    if (_json.containsKey('rolloutState')) {
      rolloutState = _json['rolloutState'] as core.String;
    }
    if (_json.containsKey('rolloutUpdateTime')) {
      rolloutUpdateTime = _json['rolloutUpdateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiMethod != null) 'apiMethod': apiMethod!,
        if (osPolicyAssignment != null)
          'osPolicyAssignment': osPolicyAssignment!,
        if (rolloutStartTime != null) 'rolloutStartTime': rolloutStartTime!,
        if (rolloutState != null) 'rolloutState': rolloutState!,
        if (rolloutUpdateTime != null) 'rolloutUpdateTime': rolloutUpdateTime!,
      };
}

/// Message to configure the rollout at the zonal level for the OS policy
/// assignment.
class OSPolicyAssignmentRollout {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given
  /// moment.
  ///
  /// Required.
  FixedOrPercent? disruptionBudget;

  /// This determines the minimum duration of time to wait after the
  /// configuration changes are applied through the current rollout.
  ///
  /// A VM continues to count towards the `disruption_budget` at least until
  /// this duration of time has passed after configuration changes are applied.
  ///
  /// Required.
  core.String? minWaitDuration;

  OSPolicyAssignmentRollout();

  OSPolicyAssignmentRollout.fromJson(core.Map _json) {
    if (_json.containsKey('disruptionBudget')) {
      disruptionBudget = FixedOrPercent.fromJson(
          _json['disruptionBudget'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('minWaitDuration')) {
      minWaitDuration = _json['minWaitDuration'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (disruptionBudget != null)
          'disruptionBudget': disruptionBudget!.toJson(),
        if (minWaitDuration != null) 'minWaitDuration': minWaitDuration!,
      };
}

/// The `OSFilter` is used to specify the OS filtering criteria for the resource
/// group.
class OSPolicyOSFilter {
  /// This should match OS short name emitted by the OS inventory agent.
  ///
  /// An empty value matches any OS.
  core.String? osShortName;

  /// This value should match the version emitted by the OS inventory agent.
  ///
  /// Prefix matches are supported if asterisk(*) is provided as the last
  /// character. For example, to match all versions with a major version of `7`,
  /// specify the following value for this field `7.*`
  core.String? osVersion;

  OSPolicyOSFilter();

  OSPolicyOSFilter.fromJson(core.Map _json) {
    if (_json.containsKey('osShortName')) {
      osShortName = _json['osShortName'] as core.String;
    }
    if (_json.containsKey('osVersion')) {
      osVersion = _json['osVersion'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (osShortName != null) 'osShortName': osShortName!,
        if (osVersion != null) 'osVersion': osVersion!,
      };
}

/// An OS policy resource is used to define the desired state configuration and
/// provides a specific functionality like installing/removing packages,
/// executing a script etc.
///
/// The system ensures that resources are always in their desired state by
/// taking necessary actions if they have drifted from their desired state.
class OSPolicyResource {
  /// Exec resource
  OSPolicyResourceExecResource? exec;

  /// File resource
  OSPolicyResourceFileResource? file;

  /// The id of the resource with the following restrictions: * Must contain
  /// only lowercase letters, numbers, and hyphens.
  ///
  /// * Must start with a letter. * Must be between 1-63 characters. * Must end
  /// with a number or a letter. * Must be unique within the OS policy.
  ///
  /// Required.
  core.String? id;

  /// Package resource
  OSPolicyResourcePackageResource? pkg;

  /// Package repository resource
  OSPolicyResourceRepositoryResource? repository;

  OSPolicyResource();

  OSPolicyResource.fromJson(core.Map _json) {
    if (_json.containsKey('exec')) {
      exec = OSPolicyResourceExecResource.fromJson(
          _json['exec'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('file')) {
      file = OSPolicyResourceFileResource.fromJson(
          _json['file'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('pkg')) {
      pkg = OSPolicyResourcePackageResource.fromJson(
          _json['pkg'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('repository')) {
      repository = OSPolicyResourceRepositoryResource.fromJson(
          _json['repository'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (exec != null) 'exec': exec!.toJson(),
        if (file != null) 'file': file!.toJson(),
        if (id != null) 'id': id!,
        if (pkg != null) 'pkg': pkg!.toJson(),
        if (repository != null) 'repository': repository!.toJson(),
      };
}

/// Compliance data for an OS policy resource.
class OSPolicyResourceCompliance {
  /// Ordered list of configuration steps taken by the agent for the OS policy
  /// resource.
  core.List<OSPolicyResourceConfigStep>? configSteps;

  /// ExecResource specific output.
  OSPolicyResourceComplianceExecResourceOutput? execResourceOutput;

  /// The id of the OS policy resource.
  core.String? osPolicyResourceId;

  /// Compliance state of the OS policy resource.
  /// Possible string values are:
  /// - "OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "COMPLIANT" : Compliant state.
  /// - "NON_COMPLIANT" : Non-compliant state
  /// - "UNKNOWN" : Unknown compliance state.
  /// - "NO_OS_POLICIES_APPLICABLE" : No applicable OS policies were found for
  /// the instance. This state is only applicable to the instance.
  core.String? state;

  OSPolicyResourceCompliance();

  OSPolicyResourceCompliance.fromJson(core.Map _json) {
    if (_json.containsKey('configSteps')) {
      configSteps = (_json['configSteps'] as core.List)
          .map<OSPolicyResourceConfigStep>((value) =>
              OSPolicyResourceConfigStep.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('execResourceOutput')) {
      execResourceOutput =
          OSPolicyResourceComplianceExecResourceOutput.fromJson(
              _json['execResourceOutput']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('osPolicyResourceId')) {
      osPolicyResourceId = _json['osPolicyResourceId'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (configSteps != null)
          'configSteps': configSteps!.map((value) => value.toJson()).toList(),
        if (execResourceOutput != null)
          'execResourceOutput': execResourceOutput!.toJson(),
        if (osPolicyResourceId != null)
          'osPolicyResourceId': osPolicyResourceId!,
        if (state != null) 'state': state!,
      };
}

/// ExecResource specific output.
class OSPolicyResourceComplianceExecResourceOutput {
  /// Output from Enforcement phase output file (if run).
  ///
  /// Output size is limited to 100K bytes.
  core.String? enforcementOutput;
  core.List<core.int> get enforcementOutputAsBytes =>
      convert.base64.decode(enforcementOutput!);

  set enforcementOutputAsBytes(core.List<core.int> _bytes) {
    enforcementOutput =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  OSPolicyResourceComplianceExecResourceOutput();

  OSPolicyResourceComplianceExecResourceOutput.fromJson(core.Map _json) {
    if (_json.containsKey('enforcementOutput')) {
      enforcementOutput = _json['enforcementOutput'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforcementOutput != null) 'enforcementOutput': enforcementOutput!,
      };
}

/// Step performed by the OS Config agent for configuring an `OSPolicyResource`
/// to its desired state.
class OSPolicyResourceConfigStep {
  /// An error message recorded during the execution of this step.
  ///
  /// Only populated when outcome is FAILED.
  core.String? errorMessage;

  /// Outcome of the configuration step.
  /// Possible string values are:
  /// - "OUTCOME_UNSPECIFIED" : Default value. This value is unused.
  /// - "SUCCEEDED" : The step succeeded.
  /// - "FAILED" : The step failed.
  core.String? outcome;

  /// Configuration step type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "VALIDATION" : Validation to detect resource conflicts, schema errors,
  /// etc.
  /// - "DESIRED_STATE_CHECK" : Check the current desired state status of the
  /// resource.
  /// - "DESIRED_STATE_ENFORCEMENT" : Enforce the desired state for a resource
  /// that is not in desired state.
  /// - "DESIRED_STATE_CHECK_POST_ENFORCEMENT" : Re-check desired state status
  /// for a resource after enforcement of all resources in the current
  /// configuration run. This step is used to determine the final desired state
  /// status for the resource. It accounts for any resources that might have
  /// drifted from their desired state due to side effects from configuring
  /// other resources during the current configuration run.
  core.String? type;

  OSPolicyResourceConfigStep();

  OSPolicyResourceConfigStep.fromJson(core.Map _json) {
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'] as core.String;
    }
    if (_json.containsKey('outcome')) {
      outcome = _json['outcome'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (outcome != null) 'outcome': outcome!,
        if (type != null) 'type': type!,
      };
}

/// A resource that allows executing scripts on the VM.
///
/// The `ExecResource` has 2 stages: `validate` and `enforce` and both stages
/// accept a script as an argument to execute. When the `ExecResource` is
/// applied by the agent, it first executes the script in the `validate` stage.
/// The `validate` stage can signal that the `ExecResource` is already in the
/// desired state by returning an exit code of `100`. If the `ExecResource` is
/// not in the desired state, it should return an exit code of `101`. Any other
/// exit code returned by this stage is considered an error. If the
/// `ExecResource` is not in the desired state based on the exit code from the
/// `validate` stage, the agent proceeds to execute the script from the
/// `enforce` stage. If the `ExecResource` is already in the desired state, the
/// `enforce` stage will not be run. Similar to `validate` stage, the `enforce`
/// stage should return an exit code of `100` to indicate that the resource in
/// now in its desired state. Any other exit code is considered an error. NOTE:
/// An exit code of `100` was chosen over `0` (and `101` vs `1`) to have an
/// explicit indicator of `in desired state`, `not in desired state` and errors.
/// Because, for example, Powershell will always return an exit code of `0`
/// unless an `exit` statement is provided in the script. So, for reasons of
/// consistency and being explicit, exit codes `100` and `101` were chosen.
class OSPolicyResourceExecResource {
  /// What to run to bring this resource into the desired state.
  ///
  /// An exit code of 100 indicates "success", any other exit code indicates a
  /// failure running enforce.
  OSPolicyResourceExecResourceExec? enforce;

  /// What to run to validate this resource is in the desired state.
  ///
  /// An exit code of 100 indicates "in desired state", and exit code of 101
  /// indicates "not in desired state". Any other exit code indicates a failure
  /// running validate.
  ///
  /// Required.
  OSPolicyResourceExecResourceExec? validate;

  OSPolicyResourceExecResource();

  OSPolicyResourceExecResource.fromJson(core.Map _json) {
    if (_json.containsKey('enforce')) {
      enforce = OSPolicyResourceExecResourceExec.fromJson(
          _json['enforce'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('validate')) {
      validate = OSPolicyResourceExecResourceExec.fromJson(
          _json['validate'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforce != null) 'enforce': enforce!.toJson(),
        if (validate != null) 'validate': validate!.toJson(),
      };
}

/// A file or script to execute.
class OSPolicyResourceExecResourceExec {
  /// Optional arguments to pass to the source during execution.
  core.List<core.String>? args;

  /// A remote or local file.
  OSPolicyResourceFile? file;

  /// The script interpreter to use.
  ///
  /// Required.
  /// Possible string values are:
  /// - "INTERPRETER_UNSPECIFIED" : Defaults to NONE.
  /// - "NONE" : If an interpreter is not specified, the source is executed
  /// directly. This execution, without an interpreter, only succeeds for
  /// executables and scripts that have shebang lines.
  /// - "SHELL" : Indicates that the script runs with `/bin/sh` on Linux and
  /// `cmd.exe` on Windows.
  /// - "POWERSHELL" : Indicates that the script runs with PowerShell.
  core.String? interpreter;

  /// Only recorded for enforce Exec.
  ///
  /// Path to an output file (that is created by this Exec) whose content will
  /// be recorded in OSPolicyResourceCompliance after a successful run. Absence
  /// or failure to read this file will result in this ExecResource being
  /// non-compliant. Output file size is limited to 100K bytes.
  core.String? outputFilePath;

  /// An inline script.
  ///
  /// The size of the script is limited to 1024 characters.
  core.String? script;

  OSPolicyResourceExecResourceExec();

  OSPolicyResourceExecResourceExec.fromJson(core.Map _json) {
    if (_json.containsKey('args')) {
      args = (_json['args'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('file')) {
      file = OSPolicyResourceFile.fromJson(
          _json['file'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('interpreter')) {
      interpreter = _json['interpreter'] as core.String;
    }
    if (_json.containsKey('outputFilePath')) {
      outputFilePath = _json['outputFilePath'] as core.String;
    }
    if (_json.containsKey('script')) {
      script = _json['script'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (file != null) 'file': file!.toJson(),
        if (interpreter != null) 'interpreter': interpreter!,
        if (outputFilePath != null) 'outputFilePath': outputFilePath!,
        if (script != null) 'script': script!,
      };
}

/// A remote or local file.
class OSPolicyResourceFile {
  /// Defaults to false.
  ///
  /// When false, files are subject to validations based on the file type:
  /// Remote: A checksum must be specified. Cloud Storage: An object generation
  /// number must be specified.
  core.bool? allowInsecure;

  /// A Cloud Storage object.
  OSPolicyResourceFileGcs? gcs;

  /// A local path within the VM to use.
  core.String? localPath;

  /// A generic remote file.
  OSPolicyResourceFileRemote? remote;

  OSPolicyResourceFile();

  OSPolicyResourceFile.fromJson(core.Map _json) {
    if (_json.containsKey('allowInsecure')) {
      allowInsecure = _json['allowInsecure'] as core.bool;
    }
    if (_json.containsKey('gcs')) {
      gcs = OSPolicyResourceFileGcs.fromJson(
          _json['gcs'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('localPath')) {
      localPath = _json['localPath'] as core.String;
    }
    if (_json.containsKey('remote')) {
      remote = OSPolicyResourceFileRemote.fromJson(
          _json['remote'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowInsecure != null) 'allowInsecure': allowInsecure!,
        if (gcs != null) 'gcs': gcs!.toJson(),
        if (localPath != null) 'localPath': localPath!,
        if (remote != null) 'remote': remote!.toJson(),
      };
}

/// Specifies a file available as a Cloud Storage Object.
class OSPolicyResourceFileGcs {
  /// Bucket of the Cloud Storage object.
  ///
  /// Required.
  core.String? bucket;

  /// Generation number of the Cloud Storage object.
  core.String? generation;

  /// Name of the Cloud Storage object.
  ///
  /// Required.
  core.String? object;

  OSPolicyResourceFileGcs();

  OSPolicyResourceFileGcs.fromJson(core.Map _json) {
    if (_json.containsKey('bucket')) {
      bucket = _json['bucket'] as core.String;
    }
    if (_json.containsKey('generation')) {
      generation = _json['generation'] as core.String;
    }
    if (_json.containsKey('object')) {
      object = _json['object'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (generation != null) 'generation': generation!,
        if (object != null) 'object': object!,
      };
}

/// Specifies a file available via some URI.
class OSPolicyResourceFileRemote {
  /// SHA256 checksum of the remote file.
  core.String? sha256Checksum;

  /// URI from which to fetch the object.
  ///
  /// It should contain both the protocol and path following the format
  /// `{protocol}://{location}`.
  ///
  /// Required.
  core.String? uri;

  OSPolicyResourceFileRemote();

  OSPolicyResourceFileRemote.fromJson(core.Map _json) {
    if (_json.containsKey('sha256Checksum')) {
      sha256Checksum = _json['sha256Checksum'] as core.String;
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256Checksum != null) 'sha256Checksum': sha256Checksum!,
        if (uri != null) 'uri': uri!,
      };
}

/// A resource that manages the state of a file.
class OSPolicyResourceFileResource {
  /// A a file with this content.
  ///
  /// The size of the content is limited to 1024 characters.
  core.String? content;

  /// A remote or local source.
  OSPolicyResourceFile? file;

  /// The absolute path of the file within the VM.
  ///
  /// Required.
  core.String? path;

  /// Consists of three octal digits which represent, in order, the permissions
  /// of the owner, group, and other users for the file (similarly to the
  /// numeric mode used in the linux chmod utility).
  ///
  /// Each digit represents a three bit number with the 4 bit corresponding to
  /// the read permissions, the 2 bit corresponds to the write bit, and the one
  /// bit corresponds to the execute permission. Default behavior is 755. Below
  /// are some examples of permissions and their associated values: read, write,
  /// and execute: 7 read and execute: 5 read and write: 6 read only: 4
  core.String? permissions;

  /// Desired state of the file.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DESIRED_STATE_UNSPECIFIED" : Unspecified is invalid.
  /// - "PRESENT" : Ensure file at path is present.
  /// - "ABSENT" : Ensure file at path is absent.
  /// - "CONTENTS_MATCH" : Ensure the contents of the file at path matches. If
  /// the file does not exist it will be created.
  core.String? state;

  OSPolicyResourceFileResource();

  OSPolicyResourceFileResource.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('file')) {
      file = OSPolicyResourceFile.fromJson(
          _json['file'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('permissions')) {
      permissions = _json['permissions'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (file != null) 'file': file!.toJson(),
        if (path != null) 'path': path!,
        if (permissions != null) 'permissions': permissions!,
        if (state != null) 'state': state!,
      };
}

/// Resource groups provide a mechanism to group OS policy resources.
///
/// Resource groups enable OS policy authors to create a single OS policy to be
/// applied to VMs running different operating Systems. When the OS policy is
/// applied to a target VM, the appropriate resource group within the OS policy
/// is selected based on the `OSFilter` specified within the resource group.
class OSPolicyResourceGroup {
  /// Used to specify the OS filter for a resource group
  OSPolicyOSFilter? osFilter;

  /// List of resources configured for this resource group.
  ///
  /// The resources are executed in the exact order specified here.
  ///
  /// Required.
  core.List<OSPolicyResource>? resources;

  OSPolicyResourceGroup();

  OSPolicyResourceGroup.fromJson(core.Map _json) {
    if (_json.containsKey('osFilter')) {
      osFilter = OSPolicyOSFilter.fromJson(
          _json['osFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<OSPolicyResource>((value) => OSPolicyResource.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (osFilter != null) 'osFilter': osFilter!.toJson(),
        if (resources != null)
          'resources': resources!.map((value) => value.toJson()).toList(),
      };
}

/// A resource that manages a system package.
class OSPolicyResourcePackageResource {
  /// A package managed by Apt.
  OSPolicyResourcePackageResourceAPT? apt;

  /// A deb package file.
  OSPolicyResourcePackageResourceDeb? deb;

  /// The desired state the agent should maintain for this package.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DESIRED_STATE_UNSPECIFIED" : Unspecified is invalid.
  /// - "INSTALLED" : Ensure that the package is installed.
  /// - "REMOVED" : The agent ensures that the package is not installed and
  /// uninstalls it if detected.
  core.String? desiredState;

  /// A package managed by GooGet.
  OSPolicyResourcePackageResourceGooGet? googet;

  /// An MSI package.
  OSPolicyResourcePackageResourceMSI? msi;

  /// An rpm package file.
  OSPolicyResourcePackageResourceRPM? rpm;

  /// A package managed by YUM.
  OSPolicyResourcePackageResourceYUM? yum;

  /// A package managed by Zypper.
  OSPolicyResourcePackageResourceZypper? zypper;

  OSPolicyResourcePackageResource();

  OSPolicyResourcePackageResource.fromJson(core.Map _json) {
    if (_json.containsKey('apt')) {
      apt = OSPolicyResourcePackageResourceAPT.fromJson(
          _json['apt'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('deb')) {
      deb = OSPolicyResourcePackageResourceDeb.fromJson(
          _json['deb'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('desiredState')) {
      desiredState = _json['desiredState'] as core.String;
    }
    if (_json.containsKey('googet')) {
      googet = OSPolicyResourcePackageResourceGooGet.fromJson(
          _json['googet'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('msi')) {
      msi = OSPolicyResourcePackageResourceMSI.fromJson(
          _json['msi'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rpm')) {
      rpm = OSPolicyResourcePackageResourceRPM.fromJson(
          _json['rpm'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('yum')) {
      yum = OSPolicyResourcePackageResourceYUM.fromJson(
          _json['yum'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('zypper')) {
      zypper = OSPolicyResourcePackageResourceZypper.fromJson(
          _json['zypper'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (apt != null) 'apt': apt!.toJson(),
        if (deb != null) 'deb': deb!.toJson(),
        if (desiredState != null) 'desiredState': desiredState!,
        if (googet != null) 'googet': googet!.toJson(),
        if (msi != null) 'msi': msi!.toJson(),
        if (rpm != null) 'rpm': rpm!.toJson(),
        if (yum != null) 'yum': yum!.toJson(),
        if (zypper != null) 'zypper': zypper!.toJson(),
      };
}

/// A package managed by APT.
///
/// - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get
/// -y remove [name]`
class OSPolicyResourcePackageResourceAPT {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  OSPolicyResourcePackageResourceAPT();

  OSPolicyResourcePackageResourceAPT.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A deb package file.
///
/// dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDeb {
  /// Whether dependencies should also be installed.
  ///
  /// - install when false: `dpkg -i package` - install when true: `apt-get
  /// update && apt-get -y install package.deb`
  core.bool? pullDeps;

  /// A deb package.
  ///
  /// Required.
  OSPolicyResourceFile? source;

  OSPolicyResourcePackageResourceDeb();

  OSPolicyResourcePackageResourceDeb.fromJson(core.Map _json) {
    if (_json.containsKey('pullDeps')) {
      pullDeps = _json['pullDeps'] as core.bool;
    }
    if (_json.containsKey('source')) {
      source = OSPolicyResourceFile.fromJson(
          _json['source'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (pullDeps != null) 'pullDeps': pullDeps!,
        if (source != null) 'source': source!.toJson(),
      };
}

/// A package managed by GooGet.
///
/// - install: `googet -noconfirm install package` - remove: `googet -noconfirm
/// remove package`
class OSPolicyResourcePackageResourceGooGet {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  OSPolicyResourcePackageResourceGooGet();

  OSPolicyResourcePackageResourceGooGet.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// An MSI package.
///
/// MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSI {
  /// Additional properties to use during installation.
  ///
  /// This should be in the format of Property=Setting. Appended to the defaults
  /// of `ACTION=INSTALL REBOOT=ReallySuppress`.
  core.List<core.String>? properties;

  /// The MSI package.
  ///
  /// Required.
  OSPolicyResourceFile? source;

  OSPolicyResourcePackageResourceMSI();

  OSPolicyResourcePackageResourceMSI.fromJson(core.Map _json) {
    if (_json.containsKey('properties')) {
      properties = (_json['properties'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('source')) {
      source = OSPolicyResourceFile.fromJson(
          _json['source'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
        if (source != null) 'source': source!.toJson(),
      };
}

/// An RPM package file.
///
/// RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPM {
  /// Whether dependencies should also be installed.
  ///
  /// - install when false: `rpm --upgrade --replacepkgs package.rpm` - install
  /// when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  core.bool? pullDeps;

  /// An rpm package.
  ///
  /// Required.
  OSPolicyResourceFile? source;

  OSPolicyResourcePackageResourceRPM();

  OSPolicyResourcePackageResourceRPM.fromJson(core.Map _json) {
    if (_json.containsKey('pullDeps')) {
      pullDeps = _json['pullDeps'] as core.bool;
    }
    if (_json.containsKey('source')) {
      source = OSPolicyResourceFile.fromJson(
          _json['source'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (pullDeps != null) 'pullDeps': pullDeps!,
        if (source != null) 'source': source!.toJson(),
      };
}

/// A package managed by YUM.
///
/// - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUM {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  OSPolicyResourcePackageResourceYUM();

  OSPolicyResourcePackageResourceYUM.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A package managed by Zypper.
///
/// - install: `zypper -y install package` - remove: `zypper -y rm package`
class OSPolicyResourcePackageResourceZypper {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  OSPolicyResourcePackageResourceZypper();

  OSPolicyResourcePackageResourceZypper.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResource {
  /// An Apt Repository.
  OSPolicyResourceRepositoryResourceAptRepository? apt;

  /// A Goo Repository.
  OSPolicyResourceRepositoryResourceGooRepository? goo;

  /// A Yum Repository.
  OSPolicyResourceRepositoryResourceYumRepository? yum;

  /// A Zypper Repository.
  OSPolicyResourceRepositoryResourceZypperRepository? zypper;

  OSPolicyResourceRepositoryResource();

  OSPolicyResourceRepositoryResource.fromJson(core.Map _json) {
    if (_json.containsKey('apt')) {
      apt = OSPolicyResourceRepositoryResourceAptRepository.fromJson(
          _json['apt'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('goo')) {
      goo = OSPolicyResourceRepositoryResourceGooRepository.fromJson(
          _json['goo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('yum')) {
      yum = OSPolicyResourceRepositoryResourceYumRepository.fromJson(
          _json['yum'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('zypper')) {
      zypper = OSPolicyResourceRepositoryResourceZypperRepository.fromJson(
          _json['zypper'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (apt != null) 'apt': apt!.toJson(),
        if (goo != null) 'goo': goo!.toJson(),
        if (yum != null) 'yum': yum!.toJson(),
        if (zypper != null) 'zypper': zypper!.toJson(),
      };
}

/// Represents a single apt package repository.
///
/// These will be added to a repo file that will be managed at
/// `/etc/apt/sources.list.d/google_osconfig.list`.
class OSPolicyResourceRepositoryResourceAptRepository {
  /// Type of archive files in this repository.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ARCHIVE_TYPE_UNSPECIFIED" : Unspecified is invalid.
  /// - "DEB" : Deb indicates that the archive contains binary files.
  /// - "DEB_SRC" : Deb-src indicates that the archive contains source files.
  core.String? archiveType;

  /// List of components for this repository.
  ///
  /// Must contain at least one item.
  ///
  /// Required.
  core.List<core.String>? components;

  /// Distribution of this repository.
  ///
  /// Required.
  core.String? distribution;

  /// URI of the key file for this repository.
  ///
  /// The agent maintains a keyring at
  /// `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  core.String? gpgKey;

  /// URI for this repository.
  ///
  /// Required.
  core.String? uri;

  OSPolicyResourceRepositoryResourceAptRepository();

  OSPolicyResourceRepositoryResourceAptRepository.fromJson(core.Map _json) {
    if (_json.containsKey('archiveType')) {
      archiveType = _json['archiveType'] as core.String;
    }
    if (_json.containsKey('components')) {
      components = (_json['components'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('distribution')) {
      distribution = _json['distribution'] as core.String;
    }
    if (_json.containsKey('gpgKey')) {
      gpgKey = _json['gpgKey'] as core.String;
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (archiveType != null) 'archiveType': archiveType!,
        if (components != null) 'components': components!,
        if (distribution != null) 'distribution': distribution!,
        if (gpgKey != null) 'gpgKey': gpgKey!,
        if (uri != null) 'uri': uri!,
      };
}

/// Represents a Goo package repository.
///
/// These are added to a repo file that is managed at
/// `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceGooRepository {
  /// The name of the repository.
  ///
  /// Required.
  core.String? name;

  /// The url of the repository.
  ///
  /// Required.
  core.String? url;

  OSPolicyResourceRepositoryResourceGooRepository();

  OSPolicyResourceRepositoryResourceGooRepository.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (url != null) 'url': url!,
      };
}

/// Represents a single yum package repository.
///
/// These are added to a repo file that is managed at
/// `/etc/yum.repos.d/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceYumRepository {
  /// The location of the repository directory.
  ///
  /// Required.
  core.String? baseUrl;

  /// The display name of the repository.
  core.String? displayName;

  /// URIs of GPG keys.
  core.List<core.String>? gpgKeys;

  /// A one word, unique name for this repository.
  ///
  /// This is the `repo id` in the yum config file and also the `display_name`
  /// if `display_name` is omitted. This id is also used as the unique
  /// identifier when checking for resource conflicts.
  ///
  /// Required.
  core.String? id;

  OSPolicyResourceRepositoryResourceYumRepository();

  OSPolicyResourceRepositoryResourceYumRepository.fromJson(core.Map _json) {
    if (_json.containsKey('baseUrl')) {
      baseUrl = _json['baseUrl'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('gpgKeys')) {
      gpgKeys = (_json['gpgKeys'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (displayName != null) 'displayName': displayName!,
        if (gpgKeys != null) 'gpgKeys': gpgKeys!,
        if (id != null) 'id': id!,
      };
}

/// Represents a single zypper package repository.
///
/// These are added to a repo file that is managed at
/// `/etc/zypp/repos.d/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceZypperRepository {
  /// The location of the repository directory.
  ///
  /// Required.
  core.String? baseUrl;

  /// The display name of the repository.
  core.String? displayName;

  /// URIs of GPG keys.
  core.List<core.String>? gpgKeys;

  /// A one word, unique name for this repository.
  ///
  /// This is the `repo id` in the zypper config file and also the
  /// `display_name` if `display_name` is omitted. This id is also used as the
  /// unique identifier when checking for GuestPolicy conflicts.
  ///
  /// Required.
  core.String? id;

  OSPolicyResourceRepositoryResourceZypperRepository();

  OSPolicyResourceRepositoryResourceZypperRepository.fromJson(core.Map _json) {
    if (_json.containsKey('baseUrl')) {
      baseUrl = _json['baseUrl'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('gpgKeys')) {
      gpgKeys = (_json['gpgKeys'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (displayName != null) 'displayName': displayName!,
        if (gpgKeys != null) 'gpgKeys': gpgKeys!,
        if (id != null) 'id': id!,
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
  core.Map<core.String, core.Object>? metadata;

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
  core.Map<core.String, core.Object>? response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata = (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response = (_json['response'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map<core.String, core.dynamic>).map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// This API resource represents the vulnerability report for a specified
/// Compute Engine virtual machine (VM) instance at a given point in time.
///
/// For more information, see
/// [Vulnerability reports](https://cloud.google.com/compute/docs/instances/os-inventory-management#vulnerability-reports).
class VulnerabilityReport {
  /// The `vulnerabilityReport` API resource name.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/instances/{instance_id}/vulnerabilityReport`
  ///
  /// Output only.
  core.String? name;

  /// The timestamp for when the last vulnerability report was generated for the
  /// VM.
  ///
  /// Output only.
  core.String? updateTime;

  /// List of vulnerabilities affecting the VM.
  ///
  /// Output only.
  core.List<VulnerabilityReportVulnerability>? vulnerabilities;

  VulnerabilityReport();

  VulnerabilityReport.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('vulnerabilities')) {
      vulnerabilities = (_json['vulnerabilities'] as core.List)
          .map<VulnerabilityReportVulnerability>((value) =>
              VulnerabilityReportVulnerability.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vulnerabilities != null)
          'vulnerabilities':
              vulnerabilities!.map((value) => value.toJson()).toList(),
      };
}

/// A vulnerability affecting the VM instance.
class VulnerabilityReportVulnerability {
  /// Corresponds to the `AVAILABLE_PACKAGE` inventory item on the VM.
  ///
  /// If the vulnerability report was not updated after the VM inventory update,
  /// these values might not display in VM inventory. If there is no available
  /// fix, the field is empty. The `inventory_item` value specifies the latest
  /// `SoftwarePackage` available to the VM that fixes the vulnerability.
  core.List<core.String>? availableInventoryItemIds;

  /// The timestamp for when the vulnerability was first detected.
  core.String? createTime;

  /// Contains metadata as per the upstream feed of the operating system and
  /// NVD.
  VulnerabilityReportVulnerabilityDetails? details;

  /// Corresponds to the `INSTALLED_PACKAGE` inventory item on the VM.
  ///
  /// This field displays the inventory items affected by this vulnerability. If
  /// the vulnerability report was not updated after the VM inventory update,
  /// these values might not display in VM inventory. For some distros, this
  /// field may be empty.
  core.List<core.String>? installedInventoryItemIds;

  /// The timestamp for when the vulnerability was last modified.
  core.String? updateTime;

  VulnerabilityReportVulnerability();

  VulnerabilityReportVulnerability.fromJson(core.Map _json) {
    if (_json.containsKey('availableInventoryItemIds')) {
      availableInventoryItemIds =
          (_json['availableInventoryItemIds'] as core.List)
              .map<core.String>((value) => value as core.String)
              .toList();
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('details')) {
      details = VulnerabilityReportVulnerabilityDetails.fromJson(
          _json['details'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('installedInventoryItemIds')) {
      installedInventoryItemIds =
          (_json['installedInventoryItemIds'] as core.List)
              .map<core.String>((value) => value as core.String)
              .toList();
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableInventoryItemIds != null)
          'availableInventoryItemIds': availableInventoryItemIds!,
        if (createTime != null) 'createTime': createTime!,
        if (details != null) 'details': details!.toJson(),
        if (installedInventoryItemIds != null)
          'installedInventoryItemIds': installedInventoryItemIds!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Contains metadata information for the vulnerability.
///
/// This information is collected from the upstream feed of the operating
/// system.
class VulnerabilityReportVulnerabilityDetails {
  /// The CVE of the vulnerability.
  ///
  /// CVE cannot be empty and the combination of should be unique across
  /// vulnerabilities for a VM.
  core.String? cve;

  /// The CVSS V2 score of this vulnerability.
  ///
  /// CVSS V2 score is on a scale of 0 - 10 where 0 indicates low severity and
  /// 10 indicates high severity.
  core.double? cvssV2Score;

  /// The full description of the CVSSv3 for this vulnerability from NVD.
  CVSSv3? cvssV3;

  /// The note or description describing the vulnerability from the distro.
  core.String? description;

  /// Corresponds to the references attached to the `VulnerabilityDetails`.
  core.List<VulnerabilityReportVulnerabilityDetailsReference>? references;

  /// Assigned severity/impact ranking from the distro.
  core.String? severity;

  VulnerabilityReportVulnerabilityDetails();

  VulnerabilityReportVulnerabilityDetails.fromJson(core.Map _json) {
    if (_json.containsKey('cve')) {
      cve = _json['cve'] as core.String;
    }
    if (_json.containsKey('cvssV2Score')) {
      cvssV2Score = (_json['cvssV2Score'] as core.num).toDouble();
    }
    if (_json.containsKey('cvssV3')) {
      cvssV3 = CVSSv3.fromJson(
          _json['cvssV3'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('references')) {
      references = (_json['references'] as core.List)
          .map<VulnerabilityReportVulnerabilityDetailsReference>((value) =>
              VulnerabilityReportVulnerabilityDetailsReference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cve != null) 'cve': cve!,
        if (cvssV2Score != null) 'cvssV2Score': cvssV2Score!,
        if (cvssV3 != null) 'cvssV3': cvssV3!.toJson(),
        if (description != null) 'description': description!,
        if (references != null)
          'references': references!.map((value) => value.toJson()).toList(),
        if (severity != null) 'severity': severity!,
      };
}

/// A reference for this vulnerability.
class VulnerabilityReportVulnerabilityDetailsReference {
  /// The url of the reference.
  core.String? url;

  VulnerabilityReportVulnerabilityDetailsReference();

  VulnerabilityReportVulnerabilityDetailsReference.fromJson(core.Map _json) {
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}
