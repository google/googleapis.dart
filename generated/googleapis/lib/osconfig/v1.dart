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

/// OS Config API - v1
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
///     - [ProjectsLocationsInstancesResource]
///       - [ProjectsLocationsInstancesInventoriesResource]
///       - [ProjectsLocationsInstancesOsPolicyAssignmentsResource]
///         - [ProjectsLocationsInstancesOsPolicyAssignmentsReportsResource]
///       - [ProjectsLocationsInstancesVulnerabilityReportsResource]
///     - [ProjectsLocationsOsPolicyAssignmentsResource]
///       - [ProjectsLocationsOsPolicyAssignmentsOperationsResource]
///   - [ProjectsPatchDeploymentsResource]
///   - [ProjectsPatchJobsResource]
///     - [ProjectsPatchJobsInstanceDetailsResource]
library osconfig.v1;

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

/// OS management tools that can be used for patch management, patch compliance,
/// and configuration management on VM instances.
class OSConfigApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
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
  ProjectsPatchDeploymentsResource get patchDeployments =>
      ProjectsPatchDeploymentsResource(_requester);
  ProjectsPatchJobsResource get patchJobs =>
      ProjectsPatchJobsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsOsPolicyAssignmentsResource get osPolicyAssignments =>
      ProjectsLocationsOsPolicyAssignmentsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesInventoriesResource get inventories =>
      ProjectsLocationsInstancesInventoriesResource(_requester);
  ProjectsLocationsInstancesOsPolicyAssignmentsResource
      get osPolicyAssignments =>
          ProjectsLocationsInstancesOsPolicyAssignmentsResource(_requester);
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
    return Inventory.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List inventory data for all VM instances in the specified zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. Format:
  /// `projects/{project}/locations/{location}/instances/-` For `{project}`,
  /// either `project-number` or `project-id` can be provided.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/inventories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInventoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesOsPolicyAssignmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesOsPolicyAssignmentsReportsResource get reports =>
      ProjectsLocationsInstancesOsPolicyAssignmentsReportsResource(_requester);

  ProjectsLocationsInstancesOsPolicyAssignmentsResource(
      commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsInstancesOsPolicyAssignmentsReportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesOsPolicyAssignmentsReportsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Get the OS policy asssignment report for the specified Compute Engine VM
  /// instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. API resource name for OS policy assignment report.
  /// Format:
  /// `/projects/{project}/locations/{location}/instances/{instance}/osPolicyAssignments/{assignment}/report`
  /// For `{project}`, either `project-number` or `project-id` can be provided.
  /// For `{instance_id}`, either Compute Engine `instance-id` or
  /// `instance-name` can be provided. For `{assignment_id}`, the
  /// OSPolicyAssignment id must be provided.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/osPolicyAssignments/\[^/\]+/report$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OSPolicyAssignmentReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OSPolicyAssignmentReport> get(
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
    return OSPolicyAssignmentReport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List OS policy asssignment reports for all Compute Engine VM instances in
  /// the specified zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}/osPolicyAssignments/{assignment}/reports`
  /// For `{project}`, either `project-number` or `project-id` can be provided.
  /// For `{instance}`, either `instance-name`, `instance-id`, or `-` can be
  /// provided. If '-' is provided, the response will include
  /// OSPolicyAssignmentReports for all instances in the project/location. For
  /// `{assignment}`, either `assignment-id` or `-` can be provided. If '-' is
  /// provided, the response will include OSPolicyAssignmentReports for all
  /// OSPolicyAssignments in the project/location. Either {instance} or
  /// {assignment} must be `-`. For example:
  /// `projects/{project}/locations/{location}/instances/{instance}/osPolicyAssignments/-/reports`
  /// returns all reports for the instance
  /// `projects/{project}/locations/{location}/instances/-/osPolicyAssignments/{assignment-id}/reports`
  /// returns all the reports for the given assignment across all instances.
  /// `projects/{project}/locations/{location}/instances/-/osPolicyAssignments/-/reports`
  /// returns all the reports for all assignments across all instances.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/osPolicyAssignments/\[^/\]+$`.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by the `OSPolicyAssignmentReport` API resource that is included in the
  /// response.
  ///
  /// [pageSize] - The maximum number of results to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call to the
  /// `ListOSPolicyAssignmentReports` method that indicates where this listing
  /// should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOSPolicyAssignmentReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOSPolicyAssignmentReportsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOSPolicyAssignmentReportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VulnerabilityReport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List vulnerability reports for all VM instances in the specified zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. Format:
  /// `projects/{project}/locations/{location}/instances/-` For `{project}`,
  /// either `project-number` or `project-id` can be provided.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [filter] - This field supports filtering by the severity level for the
  /// vulnerability. For a list of severity levels, see
  /// [Severity levels for vulnerabilities](https://cloud.google.com/container-analysis/docs/container-scanning-overview#severity_levels_for_vulnerabilities).
  /// The filter field follows the rules described in the
  /// \[AIP-160\](https://google.aip.dev/160) guidelines as follows: + **Filter
  /// for a specific severity type**: you can list reports that contain
  /// vulnerabilities that are classified as medium by specifying
  /// `vulnerabilities.details.severity:MEDIUM`. + **Filter for a range of
  /// severities** : you can list reports that have vulnerabilities that are
  /// classified as critical or high by specifying
  /// `vulnerabilities.details.severity:HIGH OR
  /// vulnerabilities.details.severity:CRITICAL`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/vulnerabilityReports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVulnerabilityReportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects.locations.osPolicyAssignments.operations.cancel\](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (osPolicyAssignmentId != null)
        'osPolicyAssignmentId': [osPolicyAssignmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/osPolicyAssignments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete the OS policy assignment.
  ///
  /// This method creates a new revision of the OS policy assignment. This
  /// method returns a long running operation (LRO) that contains the rollout
  /// details. The rollout can be cancelled by cancelling the LRO. If the LRO
  /// completes and is not cancelled, all revisions associated with the OS
  /// policy assignment are deleted. For more information, see \[Method:
  /// projects.locations.osPolicyAssignments.operations.cancel\](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
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
    final queryParams_ = <core.String, core.List<core.String>>{
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OSPolicyAssignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/osPolicyAssignments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOSPolicyAssignmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':listRevisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOSPolicyAssignmentRevisionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update an existing OS policy assignment.
  ///
  /// This method creates a new revision of the OS policy assignment. This
  /// method returns a long running operation (LRO) that contains the rollout
  /// details. The rollout can be cancelled by cancelling the LRO. For more
  /// information, see \[Method:
  /// projects.locations.osPolicyAssignments.operations.cancel\](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
}

class ProjectsPatchDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsPatchDeploymentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an OS Config patch deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to apply this patch deployment to in the
  /// form `projects / * `.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [patchDeploymentId] - Required. A name for the patch deployment in the
  /// project. When creating a name the following rules apply: * Must contain
  /// only lowercase letters, numbers, and hyphens. * Must start with a letter.
  /// * Must be between 1-63 characters. * Must end with a number or a letter. *
  /// Must be unique within the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> create(
    PatchDeployment request,
    core.String parent, {
    core.String? patchDeploymentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (patchDeploymentId != null) 'patchDeploymentId': [patchDeploymentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/patchDeployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PatchDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an OS Config patch deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
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

  /// Get an OS Config patch deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> get(
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
    return PatchDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a page of OS Config patch deployments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent in the form `projects
  /// / * `.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of patch deployments to return.
  /// Default is 100.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to ListPatchDeployments that indicates where this listing should continue
  /// from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchDeploymentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/patchDeployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPatchDeploymentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update an OS Config patch deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Unique name for the patch deployment resource in a project. The
  /// patch deployment name is in the form:
  /// `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field
  /// is ignored when you create a new patch deployment.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask that controls which fields of the
  /// patch deployment should be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> patch(
    PatchDeployment request,
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
    return PatchDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Change state of patch deployment to "PAUSED".
  ///
  /// Patch deployment in paused state doesn't generate patch jobs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> pause(
    PausePatchDeploymentRequest request,
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
    return PatchDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Change state of patch deployment back to "ACTIVE".
  ///
  /// Patch deployment in active state continues to generate patch jobs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> resume(
    ResumePatchDeploymentRequest request,
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
    return PatchDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsPatchJobsResource {
  final commons.ApiRequester _requester;

  ProjectsPatchJobsInstanceDetailsResource get instanceDetails =>
      ProjectsPatchJobsInstanceDetailsResource(_requester);

  ProjectsPatchJobsResource(commons.ApiRequester client) : _requester = client;

  /// Cancel a patch job.
  ///
  /// The patch job must be active. Canceled patch jobs cannot be restarted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the patch in the form `projects / * /patchJobs
  /// / * `
  /// Value must have pattern `^projects/\[^/\]+/patchJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> cancel(
    CancelPatchJobRequest request,
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
    return PatchJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patch VM instances by creating and running a patch job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which to run this patch in the form
  /// `projects / * `
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> execute(
    ExecutePatchJobRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/patchJobs:execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PatchJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the patch job.
  ///
  /// This can be used to track the progress of an ongoing patch job or review
  /// the details of completed jobs.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the patch in the form `projects / * /patchJobs
  /// / * `
  /// Value must have pattern `^projects/\[^/\]+/patchJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> get(
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
    return PatchJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a list of patch jobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. In the form of `projects / * `
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by patch jobs to be included in the response. Currently, filtering is only
  /// available on the patch_deployment field.
  ///
  /// [pageSize] - The maximum number of instance status to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call that
  /// indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/patchJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPatchJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsPatchJobsInstanceDetailsResource {
  final commons.ApiRequester _requester;

  ProjectsPatchJobsInstanceDetailsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get a list of instance details for a given patch job.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for the instances are in the form of
  /// `projects / * /patchJobs / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchJobs/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters results listed in the
  /// response. This field supports filtering results by instance zone, name,
  /// state, or `failure_reason`.
  ///
  /// [pageSize] - The maximum number of instance details records to return.
  /// Default is 100.
  ///
  /// [pageToken] - A pagination token returned from a previous call that
  /// indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchJobInstanceDetailsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchJobInstanceDetailsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instanceDetails';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPatchJobInstanceDetailsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Apt patching is completed by executing `apt-get update && apt-get upgrade`.
///
/// Additional options can be set to control how this is executed.
class AptSettings {
  /// List of packages to exclude from update.
  ///
  /// These packages will be excluded
  core.List<core.String>? excludes;

  /// An exclusive list of packages to be updated.
  ///
  /// These are the only packages that will be updated. If these packages are
  /// not installed, they will be ignored. This field cannot be specified with
  /// any other patch configuration fields.
  core.List<core.String>? exclusivePackages;

  /// By changing the type to DIST, the patching is performed using `apt-get
  /// dist-upgrade` instead.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : By default, upgrade will be performed.
  /// - "DIST" : Runs `apt-get dist-upgrade`.
  /// - "UPGRADE" : Runs `apt-get upgrade`.
  core.String? type;

  AptSettings({
    this.excludes,
    this.exclusivePackages,
    this.type,
  });

  AptSettings.fromJson(core.Map json_)
      : this(
          excludes: json_.containsKey('excludes')
              ? (json_['excludes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exclusivePackages: json_.containsKey('exclusivePackages')
              ? (json_['exclusivePackages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludes != null) 'excludes': excludes!,
        if (exclusivePackages != null) 'exclusivePackages': exclusivePackages!,
        if (type != null) 'type': type!,
      };
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

  CVSSv3({
    this.attackComplexity,
    this.attackVector,
    this.availabilityImpact,
    this.baseScore,
    this.confidentialityImpact,
    this.exploitabilityScore,
    this.impactScore,
    this.integrityImpact,
    this.privilegesRequired,
    this.scope,
    this.userInteraction,
  });

  CVSSv3.fromJson(core.Map json_)
      : this(
          attackComplexity: json_.containsKey('attackComplexity')
              ? json_['attackComplexity'] as core.String
              : null,
          attackVector: json_.containsKey('attackVector')
              ? json_['attackVector'] as core.String
              : null,
          availabilityImpact: json_.containsKey('availabilityImpact')
              ? json_['availabilityImpact'] as core.String
              : null,
          baseScore: json_.containsKey('baseScore')
              ? (json_['baseScore'] as core.num).toDouble()
              : null,
          confidentialityImpact: json_.containsKey('confidentialityImpact')
              ? json_['confidentialityImpact'] as core.String
              : null,
          exploitabilityScore: json_.containsKey('exploitabilityScore')
              ? (json_['exploitabilityScore'] as core.num).toDouble()
              : null,
          impactScore: json_.containsKey('impactScore')
              ? (json_['impactScore'] as core.num).toDouble()
              : null,
          integrityImpact: json_.containsKey('integrityImpact')
              ? json_['integrityImpact'] as core.String
              : null,
          privilegesRequired: json_.containsKey('privilegesRequired')
              ? json_['privilegesRequired'] as core.String
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          userInteraction: json_.containsKey('userInteraction')
              ? json_['userInteraction'] as core.String
              : null,
        );

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
typedef CancelOperationRequest = $Empty;

/// Message for canceling a patch job.
typedef CancelPatchJobRequest = $Empty;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A step that runs an executable for a PatchJob.
class ExecStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  ExecStepConfig? linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStepConfig? windowsExecStepConfig;

  ExecStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  ExecStep.fromJson(core.Map json_)
      : this(
          linuxExecStepConfig: json_.containsKey('linuxExecStepConfig')
              ? ExecStepConfig.fromJson(json_['linuxExecStepConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          windowsExecStepConfig: json_.containsKey('windowsExecStepConfig')
              ? ExecStepConfig.fromJson(json_['windowsExecStepConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linuxExecStepConfig != null)
          'linuxExecStepConfig': linuxExecStepConfig!,
        if (windowsExecStepConfig != null)
          'windowsExecStepConfig': windowsExecStepConfig!,
      };
}

/// Common configurations for an ExecStep.
class ExecStepConfig {
  /// Defaults to \[0\].
  ///
  /// A list of possible return values that the execution can return to indicate
  /// a success.
  core.List<core.int>? allowedSuccessCodes;

  /// A Cloud Storage object containing the executable.
  GcsObject? gcsObject;

  /// The script interpreter to use to run the script.
  ///
  /// If no interpreter is specified the script will be executed directly, which
  /// will likely only succeed for scripts with
  /// [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// Possible string values are:
  /// - "INTERPRETER_UNSPECIFIED" : If the interpreter is not specified, the
  /// value defaults to `NONE`.
  /// - "NONE" : Indicates that the file is run as follows on each operating
  /// system: + For Linux VMs, the file is ran as an executable and the
  /// interpreter might be parsed from the
  /// [shebang line](https://wikipedia.org/wiki/Shebang_(Unix)) of the file. +
  /// For Windows VM, this value is not supported.
  /// - "SHELL" : Indicates that the file is run with `/bin/sh` on Linux and
  /// `cmd` on Windows.
  /// - "POWERSHELL" : Indicates that the file is run with PowerShell.
  core.String? interpreter;

  /// An absolute path to the executable on the VM.
  core.String? localPath;

  ExecStepConfig({
    this.allowedSuccessCodes,
    this.gcsObject,
    this.interpreter,
    this.localPath,
  });

  ExecStepConfig.fromJson(core.Map json_)
      : this(
          allowedSuccessCodes: json_.containsKey('allowedSuccessCodes')
              ? (json_['allowedSuccessCodes'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          gcsObject: json_.containsKey('gcsObject')
              ? GcsObject.fromJson(
                  json_['gcsObject'] as core.Map<core.String, core.dynamic>)
              : null,
          interpreter: json_.containsKey('interpreter')
              ? json_['interpreter'] as core.String
              : null,
          localPath: json_.containsKey('localPath')
              ? json_['localPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedSuccessCodes != null)
          'allowedSuccessCodes': allowedSuccessCodes!,
        if (gcsObject != null) 'gcsObject': gcsObject!,
        if (interpreter != null) 'interpreter': interpreter!,
        if (localPath != null) 'localPath': localPath!,
      };
}

/// A request message to initiate patching across Compute Engine instances.
class ExecutePatchJobRequest {
  /// Description of the patch job.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// Display name for this patch job.
  ///
  /// This does not have to be unique.
  core.String? displayName;

  /// If this patch is a dry-run only, instances are contacted but will do
  /// nothing.
  core.bool? dryRun;

  /// Duration of the patch job.
  ///
  /// After the duration ends, the patch job times out.
  core.String? duration;

  /// Instances to patch, either explicitly or filtered by some criteria such as
  /// zone or labels.
  ///
  /// Required.
  PatchInstanceFilter? instanceFilter;

  /// Patch configuration being applied.
  ///
  /// If omitted, instances are patched using the default configurations.
  PatchConfig? patchConfig;

  /// Rollout strategy of the patch job.
  PatchRollout? rollout;

  ExecutePatchJobRequest({
    this.description,
    this.displayName,
    this.dryRun,
    this.duration,
    this.instanceFilter,
    this.patchConfig,
    this.rollout,
  });

  ExecutePatchJobRequest.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          dryRun:
              json_.containsKey('dryRun') ? json_['dryRun'] as core.bool : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          instanceFilter: json_.containsKey('instanceFilter')
              ? PatchInstanceFilter.fromJson(json_['instanceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          patchConfig: json_.containsKey('patchConfig')
              ? PatchConfig.fromJson(
                  json_['patchConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          rollout: json_.containsKey('rollout')
              ? PatchRollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (dryRun != null) 'dryRun': dryRun!,
        if (duration != null) 'duration': duration!,
        if (instanceFilter != null) 'instanceFilter': instanceFilter!,
        if (patchConfig != null) 'patchConfig': patchConfig!,
        if (rollout != null) 'rollout': rollout!,
      };
}

/// Message encapsulating a value that can be either absolute ("fixed") or
/// relative ("percent") to a value.
class FixedOrPercent {
  /// Specifies a fixed value.
  core.int? fixed;

  /// Specifies the relative value defined as a percentage, which will be
  /// multiplied by a reference value.
  core.int? percent;

  FixedOrPercent({
    this.fixed,
    this.percent,
  });

  FixedOrPercent.fromJson(core.Map json_)
      : this(
          fixed: json_.containsKey('fixed') ? json_['fixed'] as core.int : null,
          percent: json_.containsKey('percent')
              ? json_['percent'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixed != null) 'fixed': fixed!,
        if (percent != null) 'percent': percent!,
      };
}

/// Cloud Storage object representation.
class GcsObject {
  /// Bucket of the Cloud Storage object.
  ///
  /// Required.
  core.String? bucket;

  /// Generation number of the Cloud Storage object.
  ///
  /// This is used to ensure that the ExecStep specified by this PatchJob does
  /// not change.
  ///
  /// Required.
  core.String? generationNumber;

  /// Name of the Cloud Storage object.
  ///
  /// Required.
  core.String? object;

  GcsObject({
    this.bucket,
    this.generationNumber,
    this.object,
  });

  GcsObject.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          generationNumber: json_.containsKey('generationNumber')
              ? json_['generationNumber'] as core.String
              : null,
          object: json_.containsKey('object')
              ? json_['object'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (generationNumber != null) 'generationNumber': generationNumber!,
        if (object != null) 'object': object!,
      };
}

/// Googet patching is performed by running `googet update`.
typedef GooSettings = $Empty;

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
  core.Map<core.String, InventoryItem>? items;

  /// The `Inventory` API resource name.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/instances/{instance_id}/inventory`
  ///
  /// Output only.
  core.String? name;

  /// Base level operating system information for the VM.
  InventoryOsInfo? osInfo;

  /// Timestamp of the last reported inventory for the VM.
  ///
  /// Output only.
  core.String? updateTime;

  Inventory({
    this.items,
    this.name,
    this.osInfo,
    this.updateTime,
  });

  Inventory.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    InventoryItem.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          osInfo: json_.containsKey('osInfo')
              ? InventoryOsInfo.fromJson(
                  json_['osInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (name != null) 'name': name!,
        if (osInfo != null) 'osInfo': osInfo!,
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

  InventoryItem({
    this.availablePackage,
    this.createTime,
    this.id,
    this.installedPackage,
    this.originType,
    this.type,
    this.updateTime,
  });

  InventoryItem.fromJson(core.Map json_)
      : this(
          availablePackage: json_.containsKey('availablePackage')
              ? InventorySoftwarePackage.fromJson(json_['availablePackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          installedPackage: json_.containsKey('installedPackage')
              ? InventorySoftwarePackage.fromJson(json_['installedPackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          originType: json_.containsKey('originType')
              ? json_['originType'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availablePackage != null) 'availablePackage': availablePackage!,
        if (createTime != null) 'createTime': createTime!,
        if (id != null) 'id': id!,
        if (installedPackage != null) 'installedPackage': installedPackage!,
        if (originType != null) 'originType': originType!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Operating system information for the VM.
typedef InventoryOsInfo = $OsInfo;

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

  /// Details of Windows Application.
  InventoryWindowsApplication? windowsApplication;

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

  InventorySoftwarePackage({
    this.aptPackage,
    this.cosPackage,
    this.googetPackage,
    this.qfePackage,
    this.windowsApplication,
    this.wuaPackage,
    this.yumPackage,
    this.zypperPackage,
    this.zypperPatch,
  });

  InventorySoftwarePackage.fromJson(core.Map json_)
      : this(
          aptPackage: json_.containsKey('aptPackage')
              ? InventoryVersionedPackage.fromJson(
                  json_['aptPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          cosPackage: json_.containsKey('cosPackage')
              ? InventoryVersionedPackage.fromJson(
                  json_['cosPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          googetPackage: json_.containsKey('googetPackage')
              ? InventoryVersionedPackage.fromJson(
                  json_['googetPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          qfePackage: json_.containsKey('qfePackage')
              ? InventoryWindowsQuickFixEngineeringPackage.fromJson(
                  json_['qfePackage'] as core.Map<core.String, core.dynamic>)
              : null,
          windowsApplication: json_.containsKey('windowsApplication')
              ? InventoryWindowsApplication.fromJson(json_['windowsApplication']
                  as core.Map<core.String, core.dynamic>)
              : null,
          wuaPackage: json_.containsKey('wuaPackage')
              ? InventoryWindowsUpdatePackage.fromJson(
                  json_['wuaPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          yumPackage: json_.containsKey('yumPackage')
              ? InventoryVersionedPackage.fromJson(
                  json_['yumPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          zypperPackage: json_.containsKey('zypperPackage')
              ? InventoryVersionedPackage.fromJson(
                  json_['zypperPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          zypperPatch: json_.containsKey('zypperPatch')
              ? InventoryZypperPatch.fromJson(
                  json_['zypperPatch'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aptPackage != null) 'aptPackage': aptPackage!,
        if (cosPackage != null) 'cosPackage': cosPackage!,
        if (googetPackage != null) 'googetPackage': googetPackage!,
        if (qfePackage != null) 'qfePackage': qfePackage!,
        if (windowsApplication != null)
          'windowsApplication': windowsApplication!,
        if (wuaPackage != null) 'wuaPackage': wuaPackage!,
        if (yumPackage != null) 'yumPackage': yumPackage!,
        if (zypperPackage != null) 'zypperPackage': zypperPackage!,
        if (zypperPatch != null) 'zypperPatch': zypperPatch!,
      };
}

/// Information related to the a standard versioned package.
///
/// This includes package info for APT, Yum, Zypper, and Googet package
/// managers.
typedef InventoryVersionedPackage = $VersionedPackage;

/// Contains information about a Windows application that is retrieved from the
/// Windows Registry.
///
/// For more information about these fields, see:
/// https://docs.microsoft.com/en-us/windows/win32/msi/uninstall-registry-key
class InventoryWindowsApplication {
  /// The name of the application or product.
  core.String? displayName;

  /// The version of the product or application in string format.
  core.String? displayVersion;

  /// The internet address for technical support.
  core.String? helpLink;

  /// The last time this product received service.
  ///
  /// The value of this property is replaced each time a patch is applied or
  /// removed from the product or the command-line option is used to repair the
  /// product.
  Date? installDate;

  /// The name of the manufacturer for the product or application.
  core.String? publisher;

  InventoryWindowsApplication({
    this.displayName,
    this.displayVersion,
    this.helpLink,
    this.installDate,
    this.publisher,
  });

  InventoryWindowsApplication.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          displayVersion: json_.containsKey('displayVersion')
              ? json_['displayVersion'] as core.String
              : null,
          helpLink: json_.containsKey('helpLink')
              ? json_['helpLink'] as core.String
              : null,
          installDate: json_.containsKey('installDate')
              ? Date.fromJson(
                  json_['installDate'] as core.Map<core.String, core.dynamic>)
              : null,
          publisher: json_.containsKey('publisher')
              ? json_['publisher'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (displayVersion != null) 'displayVersion': displayVersion!,
        if (helpLink != null) 'helpLink': helpLink!,
        if (installDate != null) 'installDate': installDate!,
        if (publisher != null) 'publisher': publisher!,
      };
}

/// Information related to a Quick Fix Engineering package.
///
/// Fields are taken from Windows QuickFixEngineering Interface and match the
/// source names:
/// https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
typedef InventoryWindowsQuickFixEngineeringPackage
    = $WindowsQuickFixEngineeringPackage;

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

  InventoryWindowsUpdatePackage({
    this.categories,
    this.description,
    this.kbArticleIds,
    this.lastDeploymentChangeTime,
    this.moreInfoUrls,
    this.revisionNumber,
    this.supportUrl,
    this.title,
    this.updateId,
  });

  InventoryWindowsUpdatePackage.fromJson(core.Map json_)
      : this(
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) =>
                      InventoryWindowsUpdatePackageWindowsUpdateCategory
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          kbArticleIds: json_.containsKey('kbArticleIds')
              ? (json_['kbArticleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastDeploymentChangeTime:
              json_.containsKey('lastDeploymentChangeTime')
                  ? json_['lastDeploymentChangeTime'] as core.String
                  : null,
          moreInfoUrls: json_.containsKey('moreInfoUrls')
              ? (json_['moreInfoUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          revisionNumber: json_.containsKey('revisionNumber')
              ? json_['revisionNumber'] as core.int
              : null,
          supportUrl: json_.containsKey('supportUrl')
              ? json_['supportUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          updateId: json_.containsKey('updateId')
              ? json_['updateId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
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
typedef InventoryWindowsUpdatePackageWindowsUpdateCategory
    = $WindowsUpdateCategory;

/// Details related to a Zypper Patch.
typedef InventoryZypperPatch = $ZypperPatch;

/// A response message for listing inventory data for all VMs in a specified
/// location.
class ListInventoriesResponse {
  /// List of inventory objects.
  core.List<Inventory>? inventories;

  /// The pagination token to retrieve the next page of inventory objects.
  core.String? nextPageToken;

  ListInventoriesResponse({
    this.inventories,
    this.nextPageToken,
  });

  ListInventoriesResponse.fromJson(core.Map json_)
      : this(
          inventories: json_.containsKey('inventories')
              ? (json_['inventories'] as core.List)
                  .map((value) => Inventory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventories != null) 'inventories': inventories!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response message for listing OS Policy assignment reports including the
/// page of results and page token.
class ListOSPolicyAssignmentReportsResponse {
  /// The pagination token to retrieve the next page of OS policy assignment
  /// report objects.
  core.String? nextPageToken;

  /// List of OS policy assignment reports.
  core.List<OSPolicyAssignmentReport>? osPolicyAssignmentReports;

  ListOSPolicyAssignmentReportsResponse({
    this.nextPageToken,
    this.osPolicyAssignmentReports,
  });

  ListOSPolicyAssignmentReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          osPolicyAssignmentReports:
              json_.containsKey('osPolicyAssignmentReports')
                  ? (json_['osPolicyAssignmentReports'] as core.List)
                      .map((value) => OSPolicyAssignmentReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (osPolicyAssignmentReports != null)
          'osPolicyAssignmentReports': osPolicyAssignmentReports!,
      };
}

/// A response message for listing all revisions for a OS policy assignment.
class ListOSPolicyAssignmentRevisionsResponse {
  /// The pagination token to retrieve the next page of OS policy assignment
  /// revisions.
  core.String? nextPageToken;

  /// The OS policy assignment revisions
  core.List<OSPolicyAssignment>? osPolicyAssignments;

  ListOSPolicyAssignmentRevisionsResponse({
    this.nextPageToken,
    this.osPolicyAssignments,
  });

  ListOSPolicyAssignmentRevisionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          osPolicyAssignments: json_.containsKey('osPolicyAssignments')
              ? (json_['osPolicyAssignments'] as core.List)
                  .map((value) => OSPolicyAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (osPolicyAssignments != null)
          'osPolicyAssignments': osPolicyAssignments!,
      };
}

/// A response message for listing all assignments under given parent.
class ListOSPolicyAssignmentsResponse {
  /// The pagination token to retrieve the next page of OS policy assignments.
  core.String? nextPageToken;

  /// The list of assignments
  core.List<OSPolicyAssignment>? osPolicyAssignments;

  ListOSPolicyAssignmentsResponse({
    this.nextPageToken,
    this.osPolicyAssignments,
  });

  ListOSPolicyAssignmentsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          osPolicyAssignments: json_.containsKey('osPolicyAssignments')
              ? (json_['osPolicyAssignments'] as core.List)
                  .map((value) => OSPolicyAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (osPolicyAssignments != null)
          'osPolicyAssignments': osPolicyAssignments!,
      };
}

/// A response message for listing patch deployments.
class ListPatchDeploymentsResponse {
  /// A pagination token that can be used to get the next page of patch
  /// deployments.
  core.String? nextPageToken;

  /// The list of patch deployments.
  core.List<PatchDeployment>? patchDeployments;

  ListPatchDeploymentsResponse({
    this.nextPageToken,
    this.patchDeployments,
  });

  ListPatchDeploymentsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          patchDeployments: json_.containsKey('patchDeployments')
              ? (json_['patchDeployments'] as core.List)
                  .map((value) => PatchDeployment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (patchDeployments != null) 'patchDeployments': patchDeployments!,
      };
}

/// A response message for listing the instances details for a patch job.
class ListPatchJobInstanceDetailsResponse {
  /// A pagination token that can be used to get the next page of results.
  core.String? nextPageToken;

  /// A list of instance status.
  core.List<PatchJobInstanceDetails>? patchJobInstanceDetails;

  ListPatchJobInstanceDetailsResponse({
    this.nextPageToken,
    this.patchJobInstanceDetails,
  });

  ListPatchJobInstanceDetailsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          patchJobInstanceDetails: json_.containsKey('patchJobInstanceDetails')
              ? (json_['patchJobInstanceDetails'] as core.List)
                  .map((value) => PatchJobInstanceDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (patchJobInstanceDetails != null)
          'patchJobInstanceDetails': patchJobInstanceDetails!,
      };
}

/// A response message for listing patch jobs.
class ListPatchJobsResponse {
  /// A pagination token that can be used to get the next page of results.
  core.String? nextPageToken;

  /// The list of patch jobs.
  core.List<PatchJob>? patchJobs;

  ListPatchJobsResponse({
    this.nextPageToken,
    this.patchJobs,
  });

  ListPatchJobsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          patchJobs: json_.containsKey('patchJobs')
              ? (json_['patchJobs'] as core.List)
                  .map((value) => PatchJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (patchJobs != null) 'patchJobs': patchJobs!,
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

  ListVulnerabilityReportsResponse({
    this.nextPageToken,
    this.vulnerabilityReports,
  });

  ListVulnerabilityReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          vulnerabilityReports: json_.containsKey('vulnerabilityReports')
              ? (json_['vulnerabilityReports'] as core.List)
                  .map((value) => VulnerabilityReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (vulnerabilityReports != null)
          'vulnerabilityReports': vulnerabilityReports!,
      };
}

/// Represents a monthly schedule.
///
/// An example of a valid monthly schedule is "on the third Tuesday of the
/// month" or "on the 15th of the month".
class MonthlySchedule {
  /// One day of the month.
  ///
  /// 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the
  /// month. Months without the target day will be skipped. For example, a
  /// schedule to run "every month on the 31st" will not run in February, April,
  /// June, etc.
  ///
  /// Required.
  core.int? monthDay;

  /// Week day in a month.
  ///
  /// Required.
  WeekDayOfMonth? weekDayOfMonth;

  MonthlySchedule({
    this.monthDay,
    this.weekDayOfMonth,
  });

  MonthlySchedule.fromJson(core.Map json_)
      : this(
          monthDay: json_.containsKey('monthDay')
              ? json_['monthDay'] as core.int
              : null,
          weekDayOfMonth: json_.containsKey('weekDayOfMonth')
              ? WeekDayOfMonth.fromJson(json_['weekDayOfMonth']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (monthDay != null) 'monthDay': monthDay!,
        if (weekDayOfMonth != null) 'weekDayOfMonth': weekDayOfMonth!,
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

  OSPolicy({
    this.allowNoResourceGroupMatch,
    this.description,
    this.id,
    this.mode,
    this.resourceGroups,
  });

  OSPolicy.fromJson(core.Map json_)
      : this(
          allowNoResourceGroupMatch:
              json_.containsKey('allowNoResourceGroupMatch')
                  ? json_['allowNoResourceGroupMatch'] as core.bool
                  : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          resourceGroups: json_.containsKey('resourceGroups')
              ? (json_['resourceGroups'] as core.List)
                  .map((value) => OSPolicyResourceGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowNoResourceGroupMatch != null)
          'allowNoResourceGroupMatch': allowNoResourceGroupMatch!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (mode != null) 'mode': mode!,
        if (resourceGroups != null) 'resourceGroups': resourceGroups!,
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

  /// The etag for this OS policy assignment.
  ///
  /// If this is provided on update, it must match the server's etag.
  core.String? etag;

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

  OSPolicyAssignment({
    this.baseline,
    this.deleted,
    this.description,
    this.etag,
    this.instanceFilter,
    this.name,
    this.osPolicies,
    this.reconciling,
    this.revisionCreateTime,
    this.revisionId,
    this.rollout,
    this.rolloutState,
    this.uid,
  });

  OSPolicyAssignment.fromJson(core.Map json_)
      : this(
          baseline: json_.containsKey('baseline')
              ? json_['baseline'] as core.bool
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          instanceFilter: json_.containsKey('instanceFilter')
              ? OSPolicyAssignmentInstanceFilter.fromJson(
                  json_['instanceFilter']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          osPolicies: json_.containsKey('osPolicies')
              ? (json_['osPolicies'] as core.List)
                  .map((value) => OSPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          revisionCreateTime: json_.containsKey('revisionCreateTime')
              ? json_['revisionCreateTime'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          rollout: json_.containsKey('rollout')
              ? OSPolicyAssignmentRollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>)
              : null,
          rolloutState: json_.containsKey('rolloutState')
              ? json_['rolloutState'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseline != null) 'baseline': baseline!,
        if (deleted != null) 'deleted': deleted!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (instanceFilter != null) 'instanceFilter': instanceFilter!,
        if (name != null) 'name': name!,
        if (osPolicies != null) 'osPolicies': osPolicies!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (revisionCreateTime != null)
          'revisionCreateTime': revisionCreateTime!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (rollout != null) 'rollout': rollout!,
        if (rolloutState != null) 'rolloutState': rolloutState!,
        if (uid != null) 'uid': uid!,
      };
}

/// Filters to select target VMs for an assignment.
///
/// If more than one filter criteria is specified below, a VM will be selected
/// if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilter {
  /// Target all VMs in the project.
  ///
  /// If true, no other criteria is permitted.
  core.bool? all;

  /// List of label sets used for VM exclusion.
  ///
  /// If the list has more than one label set, the VM is excluded if any of the
  /// label sets are applicable for the VM.
  core.List<OSPolicyAssignmentLabelSet>? exclusionLabels;

  /// List of label sets used for VM inclusion.
  ///
  /// If the list has more than one `LabelSet`, the VM is included if any of the
  /// label sets are applicable for the VM.
  core.List<OSPolicyAssignmentLabelSet>? inclusionLabels;

  /// List of inventories to select VMs.
  ///
  /// A VM is selected if its inventory data matches at least one of the
  /// following inventories.
  core.List<OSPolicyAssignmentInstanceFilterInventory>? inventories;

  OSPolicyAssignmentInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  OSPolicyAssignmentInstanceFilter.fromJson(core.Map json_)
      : this(
          all: json_.containsKey('all') ? json_['all'] as core.bool : null,
          exclusionLabels: json_.containsKey('exclusionLabels')
              ? (json_['exclusionLabels'] as core.List)
                  .map((value) => OSPolicyAssignmentLabelSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inclusionLabels: json_.containsKey('inclusionLabels')
              ? (json_['inclusionLabels'] as core.List)
                  .map((value) => OSPolicyAssignmentLabelSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inventories: json_.containsKey('inventories')
              ? (json_['inventories'] as core.List)
                  .map((value) =>
                      OSPolicyAssignmentInstanceFilterInventory.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (all != null) 'all': all!,
        if (exclusionLabels != null) 'exclusionLabels': exclusionLabels!,
        if (inclusionLabels != null) 'inclusionLabels': inclusionLabels!,
        if (inventories != null) 'inventories': inventories!,
      };
}

/// VM inventory details.
typedef OSPolicyAssignmentInstanceFilterInventory = $Shared05;

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

  OSPolicyAssignmentLabelSet({
    this.labels,
  });

  OSPolicyAssignmentLabelSet.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

/// A report of the OS policy assignment status for a given instance.
class OSPolicyAssignmentReport {
  /// The Compute Engine VM instance name.
  core.String? instance;

  /// Unique identifier of the last attempted run to apply the OS policies
  /// associated with this assignment on the VM.
  ///
  /// This ID is logged by the OS Config agent while applying the OS policies
  /// associated with this assignment on the VM. NOTE: If the service is unable
  /// to successfully connect to the agent for this run, then this id will not
  /// be available in the agent logs.
  core.String? lastRunId;

  /// The `OSPolicyAssignmentReport` API resource name.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/instances/{instance_id}/osPolicyAssignments/{os_policy_assignment_id}/report`
  core.String? name;

  /// Reference to the `OSPolicyAssignment` API resource that the `OSPolicy`
  /// belongs to.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id@revision_id}`
  core.String? osPolicyAssignment;

  /// Compliance data for each `OSPolicy` that is applied to the VM.
  core.List<OSPolicyAssignmentReportOSPolicyCompliance>? osPolicyCompliances;

  /// Timestamp for when the report was last generated.
  core.String? updateTime;

  OSPolicyAssignmentReport({
    this.instance,
    this.lastRunId,
    this.name,
    this.osPolicyAssignment,
    this.osPolicyCompliances,
    this.updateTime,
  });

  OSPolicyAssignmentReport.fromJson(core.Map json_)
      : this(
          instance: json_.containsKey('instance')
              ? json_['instance'] as core.String
              : null,
          lastRunId: json_.containsKey('lastRunId')
              ? json_['lastRunId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          osPolicyAssignment: json_.containsKey('osPolicyAssignment')
              ? json_['osPolicyAssignment'] as core.String
              : null,
          osPolicyCompliances: json_.containsKey('osPolicyCompliances')
              ? (json_['osPolicyCompliances'] as core.List)
                  .map((value) =>
                      OSPolicyAssignmentReportOSPolicyCompliance.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instance != null) 'instance': instance!,
        if (lastRunId != null) 'lastRunId': lastRunId!,
        if (name != null) 'name': name!,
        if (osPolicyAssignment != null)
          'osPolicyAssignment': osPolicyAssignment!,
        if (osPolicyCompliances != null)
          'osPolicyCompliances': osPolicyCompliances!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Compliance data for an OS policy
class OSPolicyAssignmentReportOSPolicyCompliance {
  /// The compliance state of the OS policy.
  /// Possible string values are:
  /// - "UNKNOWN" : The policy is in an unknown compliance state. Refer to the
  /// field `compliance_state_reason` to learn the exact reason for the policy
  /// to be in this compliance state.
  /// - "COMPLIANT" : Policy is compliant. The policy is compliant if all the
  /// underlying resources are also compliant.
  /// - "NON_COMPLIANT" : Policy is non-compliant. The policy is non-compliant
  /// if one or more underlying resources are non-compliant.
  core.String? complianceState;

  /// The reason for the OS policy to be in an unknown compliance state.
  ///
  /// This field is always populated when `compliance_state` is `UNKNOWN`. If
  /// populated, the field can contain one of the following values: *
  /// `vm-not-running`: The VM was not running. *
  /// `os-policies-not-supported-by-agent`: The version of the OS Config agent
  /// running on the VM does not support running OS policies. *
  /// `no-agent-detected`: The OS Config agent is not detected for the VM. *
  /// `resource-execution-errors`: The OS Config agent encountered errors while
  /// executing one or more resources in the policy. See
  /// `os_policy_resource_compliances` for details. * `task-timeout`: The task
  /// sent to the agent to apply the policy timed out. *
  /// `unexpected-agent-state`: The OS Config agent did not report the final
  /// status of the task that attempted to apply the policy. Instead, the agent
  /// unexpectedly started working on a different task. This mostly happens when
  /// the agent or VM unexpectedly restarts while applying OS policies. *
  /// `internal-service-errors`: Internal service errors were encountered while
  /// attempting to apply the policy.
  core.String? complianceStateReason;

  /// The OS policy id
  core.String? osPolicyId;

  /// Compliance data for each resource within the policy that is applied to the
  /// VM.
  core.List<
          OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance>?
      osPolicyResourceCompliances;

  OSPolicyAssignmentReportOSPolicyCompliance({
    this.complianceState,
    this.complianceStateReason,
    this.osPolicyId,
    this.osPolicyResourceCompliances,
  });

  OSPolicyAssignmentReportOSPolicyCompliance.fromJson(core.Map json_)
      : this(
          complianceState: json_.containsKey('complianceState')
              ? json_['complianceState'] as core.String
              : null,
          complianceStateReason: json_.containsKey('complianceStateReason')
              ? json_['complianceStateReason'] as core.String
              : null,
          osPolicyId: json_.containsKey('osPolicyId')
              ? json_['osPolicyId'] as core.String
              : null,
          osPolicyResourceCompliances: json_
                  .containsKey('osPolicyResourceCompliances')
              ? (json_['osPolicyResourceCompliances'] as core.List)
                  .map((value) =>
                      OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (complianceState != null) 'complianceState': complianceState!,
        if (complianceStateReason != null)
          'complianceStateReason': complianceStateReason!,
        if (osPolicyId != null) 'osPolicyId': osPolicyId!,
        if (osPolicyResourceCompliances != null)
          'osPolicyResourceCompliances': osPolicyResourceCompliances!,
      };
}

/// Compliance data for an OS policy resource.
class OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance {
  /// The compliance state of the resource.
  /// Possible string values are:
  /// - "UNKNOWN" : The resource is in an unknown compliance state. To get more
  /// details about why the policy is in this state, review the output of the
  /// `compliance_state_reason` field.
  /// - "COMPLIANT" : Resource is compliant.
  /// - "NON_COMPLIANT" : Resource is non-compliant.
  core.String? complianceState;

  /// A reason for the resource to be in the given compliance state.
  ///
  /// This field is always populated when `compliance_state` is `UNKNOWN`. The
  /// following values are supported when `compliance_state == UNKNOWN` *
  /// `execution-errors`: Errors were encountered by the agent while executing
  /// the resource and the compliance state couldn't be determined. *
  /// `execution-skipped-by-agent`: Resource execution was skipped by the agent
  /// because errors were encountered while executing prior resources in the OS
  /// policy. * `os-policy-execution-attempt-failed`: The execution of the OS
  /// policy containing this resource failed and the compliance state couldn't
  /// be determined.
  core.String? complianceStateReason;

  /// Ordered list of configuration completed by the agent for the OS policy
  /// resource.
  core.List<
          OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep>?
      configSteps;

  /// ExecResource specific output.
  OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput?
      execResourceOutput;

  /// The ID of the OS policy resource.
  core.String? osPolicyResourceId;

  OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance({
    this.complianceState,
    this.complianceStateReason,
    this.configSteps,
    this.execResourceOutput,
    this.osPolicyResourceId,
  });

  OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance.fromJson(
      core.Map json_)
      : this(
          complianceState: json_.containsKey('complianceState')
              ? json_['complianceState'] as core.String
              : null,
          complianceStateReason: json_.containsKey('complianceStateReason')
              ? json_['complianceStateReason'] as core.String
              : null,
          configSteps: json_.containsKey('configSteps')
              ? (json_['configSteps'] as core.List)
                  .map((value) =>
                      OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          execResourceOutput: json_.containsKey('execResourceOutput')
              ? OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput
                  .fromJson(json_['execResourceOutput']
                      as core.Map<core.String, core.dynamic>)
              : null,
          osPolicyResourceId: json_.containsKey('osPolicyResourceId')
              ? json_['osPolicyResourceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (complianceState != null) 'complianceState': complianceState!,
        if (complianceStateReason != null)
          'complianceStateReason': complianceStateReason!,
        if (configSteps != null) 'configSteps': configSteps!,
        if (execResourceOutput != null)
          'execResourceOutput': execResourceOutput!,
        if (osPolicyResourceId != null)
          'osPolicyResourceId': osPolicyResourceId!,
      };
}

/// ExecResource specific output.
class OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput {
  /// Output from enforcement phase output file (if run).
  ///
  /// Output size is limited to 100K bytes.
  core.String? enforcementOutput;
  core.List<core.int> get enforcementOutputAsBytes =>
      convert.base64.decode(enforcementOutput!);

  set enforcementOutputAsBytes(core.List<core.int> bytes_) {
    enforcementOutput =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput({
    this.enforcementOutput,
  });

  OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput.fromJson(
      core.Map json_)
      : this(
          enforcementOutput: json_.containsKey('enforcementOutput')
              ? json_['enforcementOutput'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforcementOutput != null) 'enforcementOutput': enforcementOutput!,
      };
}

/// Step performed by the OS Config agent for configuring an `OSPolicy` resource
/// to its desired state.
class OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep {
  /// An error message recorded during the execution of this step.
  ///
  /// Only populated if errors were encountered during this step execution.
  core.String? errorMessage;

  /// Configuration step type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "VALIDATION" : Checks for resource conflicts such as schema errors.
  /// - "DESIRED_STATE_CHECK" : Checks the current status of the desired state
  /// for a resource.
  /// - "DESIRED_STATE_ENFORCEMENT" : Enforces the desired state for a resource
  /// that is not in desired state.
  /// - "DESIRED_STATE_CHECK_POST_ENFORCEMENT" : Re-checks the status of the
  /// desired state. This check is done for a resource after the enforcement of
  /// all OS policies. This step is used to determine the final desired state
  /// status for the resource. It accounts for any resources that might have
  /// drifted from their desired state due to side effects from executing other
  /// resources.
  core.String? type;

  OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep({
    this.errorMessage,
    this.type,
  });

  OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep.fromJson(
      core.Map json_)
      : this(
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (type != null) 'type': type!,
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

  OSPolicyAssignmentRollout({
    this.disruptionBudget,
    this.minWaitDuration,
  });

  OSPolicyAssignmentRollout.fromJson(core.Map json_)
      : this(
          disruptionBudget: json_.containsKey('disruptionBudget')
              ? FixedOrPercent.fromJson(json_['disruptionBudget']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minWaitDuration: json_.containsKey('minWaitDuration')
              ? json_['minWaitDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disruptionBudget != null) 'disruptionBudget': disruptionBudget!,
        if (minWaitDuration != null) 'minWaitDuration': minWaitDuration!,
      };
}

/// Filtering criteria to select VMs based on inventory details.
typedef OSPolicyInventoryFilter = $Shared05;

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

  OSPolicyResource({
    this.exec,
    this.file,
    this.id,
    this.pkg,
    this.repository,
  });

  OSPolicyResource.fromJson(core.Map json_)
      : this(
          exec: json_.containsKey('exec')
              ? OSPolicyResourceExecResource.fromJson(
                  json_['exec'] as core.Map<core.String, core.dynamic>)
              : null,
          file: json_.containsKey('file')
              ? OSPolicyResourceFileResource.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          pkg: json_.containsKey('pkg')
              ? OSPolicyResourcePackageResource.fromJson(
                  json_['pkg'] as core.Map<core.String, core.dynamic>)
              : null,
          repository: json_.containsKey('repository')
              ? OSPolicyResourceRepositoryResource.fromJson(
                  json_['repository'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exec != null) 'exec': exec!,
        if (file != null) 'file': file!,
        if (id != null) 'id': id!,
        if (pkg != null) 'pkg': pkg!,
        if (repository != null) 'repository': repository!,
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

  OSPolicyResourceExecResource({
    this.enforce,
    this.validate,
  });

  OSPolicyResourceExecResource.fromJson(core.Map json_)
      : this(
          enforce: json_.containsKey('enforce')
              ? OSPolicyResourceExecResourceExec.fromJson(
                  json_['enforce'] as core.Map<core.String, core.dynamic>)
              : null,
          validate: json_.containsKey('validate')
              ? OSPolicyResourceExecResourceExec.fromJson(
                  json_['validate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforce != null) 'enforce': enforce!,
        if (validate != null) 'validate': validate!,
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
  /// - "INTERPRETER_UNSPECIFIED" : Invalid value, the request will return
  /// validation error.
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

  OSPolicyResourceExecResourceExec({
    this.args,
    this.file,
    this.interpreter,
    this.outputFilePath,
    this.script,
  });

  OSPolicyResourceExecResourceExec.fromJson(core.Map json_)
      : this(
          args: json_.containsKey('args')
              ? (json_['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          file: json_.containsKey('file')
              ? OSPolicyResourceFile.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>)
              : null,
          interpreter: json_.containsKey('interpreter')
              ? json_['interpreter'] as core.String
              : null,
          outputFilePath: json_.containsKey('outputFilePath')
              ? json_['outputFilePath'] as core.String
              : null,
          script: json_.containsKey('script')
              ? json_['script'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (file != null) 'file': file!,
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

  OSPolicyResourceFile({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  OSPolicyResourceFile.fromJson(core.Map json_)
      : this(
          allowInsecure: json_.containsKey('allowInsecure')
              ? json_['allowInsecure'] as core.bool
              : null,
          gcs: json_.containsKey('gcs')
              ? OSPolicyResourceFileGcs.fromJson(
                  json_['gcs'] as core.Map<core.String, core.dynamic>)
              : null,
          localPath: json_.containsKey('localPath')
              ? json_['localPath'] as core.String
              : null,
          remote: json_.containsKey('remote')
              ? OSPolicyResourceFileRemote.fromJson(
                  json_['remote'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowInsecure != null) 'allowInsecure': allowInsecure!,
        if (gcs != null) 'gcs': gcs!,
        if (localPath != null) 'localPath': localPath!,
        if (remote != null) 'remote': remote!,
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

  OSPolicyResourceFileGcs({
    this.bucket,
    this.generation,
    this.object,
  });

  OSPolicyResourceFileGcs.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          object: json_.containsKey('object')
              ? json_['object'] as core.String
              : null,
        );

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

  OSPolicyResourceFileRemote({
    this.sha256Checksum,
    this.uri,
  });

  OSPolicyResourceFileRemote.fromJson(core.Map json_)
      : this(
          sha256Checksum: json_.containsKey('sha256Checksum')
              ? json_['sha256Checksum'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

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

  OSPolicyResourceFileResource({
    this.content,
    this.file,
    this.path,
    this.permissions,
    this.state,
  });

  OSPolicyResourceFileResource.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          file: json_.containsKey('file')
              ? OSPolicyResourceFile.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          permissions: json_.containsKey('permissions')
              ? json_['permissions'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (file != null) 'file': file!,
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
  /// List of inventory filters for the resource group.
  ///
  /// The resources in this resource group are applied to the target VM if it
  /// satisfies at least one of the following inventory filters. For example, to
  /// apply this resource group to VMs running either `RHEL` or `CentOS`
  /// operating systems, specify 2 items for the list with following values:
  /// inventory_filters\[0\].os_short_name='rhel' and
  /// inventory_filters\[1\].os_short_name='centos' If the list is empty, this
  /// resource group will be applied to the target VM unconditionally.
  core.List<OSPolicyInventoryFilter>? inventoryFilters;

  /// List of resources configured for this resource group.
  ///
  /// The resources are executed in the exact order specified here.
  ///
  /// Required.
  core.List<OSPolicyResource>? resources;

  OSPolicyResourceGroup({
    this.inventoryFilters,
    this.resources,
  });

  OSPolicyResourceGroup.fromJson(core.Map json_)
      : this(
          inventoryFilters: json_.containsKey('inventoryFilters')
              ? (json_['inventoryFilters'] as core.List)
                  .map((value) => OSPolicyInventoryFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => OSPolicyResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventoryFilters != null) 'inventoryFilters': inventoryFilters!,
        if (resources != null) 'resources': resources!,
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

  OSPolicyResourcePackageResource({
    this.apt,
    this.deb,
    this.desiredState,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  OSPolicyResourcePackageResource.fromJson(core.Map json_)
      : this(
          apt: json_.containsKey('apt')
              ? OSPolicyResourcePackageResourceAPT.fromJson(
                  json_['apt'] as core.Map<core.String, core.dynamic>)
              : null,
          deb: json_.containsKey('deb')
              ? OSPolicyResourcePackageResourceDeb.fromJson(
                  json_['deb'] as core.Map<core.String, core.dynamic>)
              : null,
          desiredState: json_.containsKey('desiredState')
              ? json_['desiredState'] as core.String
              : null,
          googet: json_.containsKey('googet')
              ? OSPolicyResourcePackageResourceGooGet.fromJson(
                  json_['googet'] as core.Map<core.String, core.dynamic>)
              : null,
          msi: json_.containsKey('msi')
              ? OSPolicyResourcePackageResourceMSI.fromJson(
                  json_['msi'] as core.Map<core.String, core.dynamic>)
              : null,
          rpm: json_.containsKey('rpm')
              ? OSPolicyResourcePackageResourceRPM.fromJson(
                  json_['rpm'] as core.Map<core.String, core.dynamic>)
              : null,
          yum: json_.containsKey('yum')
              ? OSPolicyResourcePackageResourceYUM.fromJson(
                  json_['yum'] as core.Map<core.String, core.dynamic>)
              : null,
          zypper: json_.containsKey('zypper')
              ? OSPolicyResourcePackageResourceZypper.fromJson(
                  json_['zypper'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apt != null) 'apt': apt!,
        if (deb != null) 'deb': deb!,
        if (desiredState != null) 'desiredState': desiredState!,
        if (googet != null) 'googet': googet!,
        if (msi != null) 'msi': msi!,
        if (rpm != null) 'rpm': rpm!,
        if (yum != null) 'yum': yum!,
        if (zypper != null) 'zypper': zypper!,
      };
}

/// A package managed by APT.
///
/// - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get
/// -y remove [name]`
typedef OSPolicyResourcePackageResourceAPT = $Shared01;

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

  OSPolicyResourcePackageResourceDeb({
    this.pullDeps,
    this.source,
  });

  OSPolicyResourcePackageResourceDeb.fromJson(core.Map json_)
      : this(
          pullDeps: json_.containsKey('pullDeps')
              ? json_['pullDeps'] as core.bool
              : null,
          source: json_.containsKey('source')
              ? OSPolicyResourceFile.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pullDeps != null) 'pullDeps': pullDeps!,
        if (source != null) 'source': source!,
      };
}

/// A package managed by GooGet.
///
/// - install: `googet -noconfirm install package` - remove: `googet -noconfirm
/// remove package`
typedef OSPolicyResourcePackageResourceGooGet = $Shared01;

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

  OSPolicyResourcePackageResourceMSI({
    this.properties,
    this.source,
  });

  OSPolicyResourcePackageResourceMSI.fromJson(core.Map json_)
      : this(
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          source: json_.containsKey('source')
              ? OSPolicyResourceFile.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
        if (source != null) 'source': source!,
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

  OSPolicyResourcePackageResourceRPM({
    this.pullDeps,
    this.source,
  });

  OSPolicyResourcePackageResourceRPM.fromJson(core.Map json_)
      : this(
          pullDeps: json_.containsKey('pullDeps')
              ? json_['pullDeps'] as core.bool
              : null,
          source: json_.containsKey('source')
              ? OSPolicyResourceFile.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pullDeps != null) 'pullDeps': pullDeps!,
        if (source != null) 'source': source!,
      };
}

/// A package managed by YUM.
///
/// - install: `yum -y install package` - remove: `yum -y remove package`
typedef OSPolicyResourcePackageResourceYUM = $Shared01;

/// A package managed by Zypper.
///
/// - install: `zypper -y install package` - remove: `zypper -y rm package`
typedef OSPolicyResourcePackageResourceZypper = $Shared01;

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

  OSPolicyResourceRepositoryResource({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  OSPolicyResourceRepositoryResource.fromJson(core.Map json_)
      : this(
          apt: json_.containsKey('apt')
              ? OSPolicyResourceRepositoryResourceAptRepository.fromJson(
                  json_['apt'] as core.Map<core.String, core.dynamic>)
              : null,
          goo: json_.containsKey('goo')
              ? OSPolicyResourceRepositoryResourceGooRepository.fromJson(
                  json_['goo'] as core.Map<core.String, core.dynamic>)
              : null,
          yum: json_.containsKey('yum')
              ? OSPolicyResourceRepositoryResourceYumRepository.fromJson(
                  json_['yum'] as core.Map<core.String, core.dynamic>)
              : null,
          zypper: json_.containsKey('zypper')
              ? OSPolicyResourceRepositoryResourceZypperRepository.fromJson(
                  json_['zypper'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apt != null) 'apt': apt!,
        if (goo != null) 'goo': goo!,
        if (yum != null) 'yum': yum!,
        if (zypper != null) 'zypper': zypper!,
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

  OSPolicyResourceRepositoryResourceAptRepository({
    this.archiveType,
    this.components,
    this.distribution,
    this.gpgKey,
    this.uri,
  });

  OSPolicyResourceRepositoryResourceAptRepository.fromJson(core.Map json_)
      : this(
          archiveType: json_.containsKey('archiveType')
              ? json_['archiveType'] as core.String
              : null,
          components: json_.containsKey('components')
              ? (json_['components'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          distribution: json_.containsKey('distribution')
              ? json_['distribution'] as core.String
              : null,
          gpgKey: json_.containsKey('gpgKey')
              ? json_['gpgKey'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

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

  OSPolicyResourceRepositoryResourceGooRepository({
    this.name,
    this.url,
  });

  OSPolicyResourceRepositoryResourceGooRepository.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

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

  OSPolicyResourceRepositoryResourceYumRepository({
    this.baseUrl,
    this.displayName,
    this.gpgKeys,
    this.id,
  });

  OSPolicyResourceRepositoryResourceYumRepository.fromJson(core.Map json_)
      : this(
          baseUrl: json_.containsKey('baseUrl')
              ? json_['baseUrl'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          gpgKeys: json_.containsKey('gpgKeys')
              ? (json_['gpgKeys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

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

  OSPolicyResourceRepositoryResourceZypperRepository({
    this.baseUrl,
    this.displayName,
    this.gpgKeys,
    this.id,
  });

  OSPolicyResourceRepositoryResourceZypperRepository.fromJson(core.Map json_)
      : this(
          baseUrl: json_.containsKey('baseUrl')
              ? json_['baseUrl'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          gpgKeys: json_.containsKey('gpgKeys')
              ? (json_['gpgKeys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (displayName != null) 'displayName': displayName!,
        if (gpgKeys != null) 'gpgKeys': gpgKeys!,
        if (id != null) 'id': id!,
      };
}

/// Sets the time for a one time patch deployment.
///
/// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
class OneTimeSchedule {
  /// The desired patch job execution time.
  ///
  /// Required.
  core.String? executeTime;

  OneTimeSchedule({
    this.executeTime,
  });

  OneTimeSchedule.fromJson(core.Map json_)
      : this(
          executeTime: json_.containsKey('executeTime')
              ? json_['executeTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executeTime != null) 'executeTime': executeTime!,
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

/// Patch configuration specifications.
///
/// Contains details on how to apply the patch(es) to a VM instance.
class PatchConfig {
  /// Apt update settings.
  ///
  /// Use this setting to override the default `apt` patch rules.
  AptSettings? apt;

  /// Goo update settings.
  ///
  /// Use this setting to override the default `goo` patch rules.
  GooSettings? goo;

  /// Allows the patch job to run on Managed instance groups (MIGs).
  core.bool? migInstancesAllowed;

  /// The `ExecStep` to run after the patch update.
  ExecStep? postStep;

  /// The `ExecStep` to run before the patch update.
  ExecStep? preStep;

  /// Post-patch reboot settings.
  /// Possible string values are:
  /// - "REBOOT_CONFIG_UNSPECIFIED" : The default behavior is DEFAULT.
  /// - "DEFAULT" : The agent decides if a reboot is necessary by checking
  /// signals such as registry keys on Windows or `/var/run/reboot-required` on
  /// APT based systems. On RPM based systems, a set of core system package
  /// install times are compared with system boot time.
  /// - "ALWAYS" : Always reboot the machine after the update completes.
  /// - "NEVER" : Never reboot the machine after the update completes.
  core.String? rebootConfig;

  /// Windows update settings.
  ///
  /// Use this override the default windows patch rules.
  WindowsUpdateSettings? windowsUpdate;

  /// Yum update settings.
  ///
  /// Use this setting to override the default `yum` patch rules.
  YumSettings? yum;

  /// Zypper update settings.
  ///
  /// Use this setting to override the default `zypper` patch rules.
  ZypperSettings? zypper;

  PatchConfig({
    this.apt,
    this.goo,
    this.migInstancesAllowed,
    this.postStep,
    this.preStep,
    this.rebootConfig,
    this.windowsUpdate,
    this.yum,
    this.zypper,
  });

  PatchConfig.fromJson(core.Map json_)
      : this(
          apt: json_.containsKey('apt')
              ? AptSettings.fromJson(
                  json_['apt'] as core.Map<core.String, core.dynamic>)
              : null,
          goo: json_.containsKey('goo')
              ? GooSettings.fromJson(
                  json_['goo'] as core.Map<core.String, core.dynamic>)
              : null,
          migInstancesAllowed: json_.containsKey('migInstancesAllowed')
              ? json_['migInstancesAllowed'] as core.bool
              : null,
          postStep: json_.containsKey('postStep')
              ? ExecStep.fromJson(
                  json_['postStep'] as core.Map<core.String, core.dynamic>)
              : null,
          preStep: json_.containsKey('preStep')
              ? ExecStep.fromJson(
                  json_['preStep'] as core.Map<core.String, core.dynamic>)
              : null,
          rebootConfig: json_.containsKey('rebootConfig')
              ? json_['rebootConfig'] as core.String
              : null,
          windowsUpdate: json_.containsKey('windowsUpdate')
              ? WindowsUpdateSettings.fromJson(
                  json_['windowsUpdate'] as core.Map<core.String, core.dynamic>)
              : null,
          yum: json_.containsKey('yum')
              ? YumSettings.fromJson(
                  json_['yum'] as core.Map<core.String, core.dynamic>)
              : null,
          zypper: json_.containsKey('zypper')
              ? ZypperSettings.fromJson(
                  json_['zypper'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apt != null) 'apt': apt!,
        if (goo != null) 'goo': goo!,
        if (migInstancesAllowed != null)
          'migInstancesAllowed': migInstancesAllowed!,
        if (postStep != null) 'postStep': postStep!,
        if (preStep != null) 'preStep': preStep!,
        if (rebootConfig != null) 'rebootConfig': rebootConfig!,
        if (windowsUpdate != null) 'windowsUpdate': windowsUpdate!,
        if (yum != null) 'yum': yum!,
        if (zypper != null) 'zypper': zypper!,
      };
}

/// Patch deployments are configurations that individual patch jobs use to
/// complete a patch.
///
/// These configurations include instance filter, package repository settings,
/// and a schedule. For more information about creating and managing patch
/// deployments, see
/// [Scheduling patch jobs](https://cloud.google.com/compute/docs/os-patch-management/schedule-patch-jobs).
class PatchDeployment {
  /// Time the patch deployment was created.
  ///
  /// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text
  /// format.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the patch deployment.
  ///
  /// Length of the description is limited to 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Duration of the patch.
  ///
  /// After the duration ends, the patch times out.
  ///
  /// Optional.
  core.String? duration;

  /// VM instances to patch.
  ///
  /// Required.
  PatchInstanceFilter? instanceFilter;

  /// The last time a patch job was started by this deployment.
  ///
  /// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text
  /// format.
  ///
  /// Output only.
  core.String? lastExecuteTime;

  /// Unique name for the patch deployment resource in a project.
  ///
  /// The patch deployment name is in the form:
  /// `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field
  /// is ignored when you create a new patch deployment.
  core.String? name;

  /// Schedule a one-time execution.
  ///
  /// Required.
  OneTimeSchedule? oneTimeSchedule;

  /// Patch configuration that is applied.
  ///
  /// Optional.
  PatchConfig? patchConfig;

  /// Schedule recurring executions.
  ///
  /// Required.
  RecurringSchedule? recurringSchedule;

  /// Rollout strategy of the patch job.
  ///
  /// Optional.
  PatchRollout? rollout;

  /// Current state of the patch deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACTIVE" : Active value means that patch deployment generates Patch
  /// Jobs.
  /// - "PAUSED" : Paused value means that patch deployment does not generate
  /// Patch jobs. Requires user action to move in and out from this state.
  core.String? state;

  /// Time the patch deployment was last updated.
  ///
  /// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text
  /// format.
  ///
  /// Output only.
  core.String? updateTime;

  PatchDeployment({
    this.createTime,
    this.description,
    this.duration,
    this.instanceFilter,
    this.lastExecuteTime,
    this.name,
    this.oneTimeSchedule,
    this.patchConfig,
    this.recurringSchedule,
    this.rollout,
    this.state,
    this.updateTime,
  });

  PatchDeployment.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          instanceFilter: json_.containsKey('instanceFilter')
              ? PatchInstanceFilter.fromJson(json_['instanceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lastExecuteTime: json_.containsKey('lastExecuteTime')
              ? json_['lastExecuteTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          oneTimeSchedule: json_.containsKey('oneTimeSchedule')
              ? OneTimeSchedule.fromJson(json_['oneTimeSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          patchConfig: json_.containsKey('patchConfig')
              ? PatchConfig.fromJson(
                  json_['patchConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          recurringSchedule: json_.containsKey('recurringSchedule')
              ? RecurringSchedule.fromJson(json_['recurringSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rollout: json_.containsKey('rollout')
              ? PatchRollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (duration != null) 'duration': duration!,
        if (instanceFilter != null) 'instanceFilter': instanceFilter!,
        if (lastExecuteTime != null) 'lastExecuteTime': lastExecuteTime!,
        if (name != null) 'name': name!,
        if (oneTimeSchedule != null) 'oneTimeSchedule': oneTimeSchedule!,
        if (patchConfig != null) 'patchConfig': patchConfig!,
        if (recurringSchedule != null) 'recurringSchedule': recurringSchedule!,
        if (rollout != null) 'rollout': rollout!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A filter to target VM instances for patching.
///
/// The targeted VMs must meet all criteria specified. So if both labels and
/// zones are specified, the patch job targets only VMs with those labels and in
/// those zones.
class PatchInstanceFilter {
  /// Target all VM instances in the project.
  ///
  /// If true, no other criteria is permitted.
  core.bool? all;

  /// Targets VM instances matching ANY of these GroupLabels.
  ///
  /// This allows targeting of disparate groups of VM instances.
  core.List<PatchInstanceFilterGroupLabel>? groupLabels;

  /// Targets VMs whose name starts with one of these prefixes.
  ///
  /// Similar to labels, this is another way to group VMs when targeting
  /// configs, for example prefix="prod-".
  core.List<core.String>? instanceNamePrefixes;

  /// Targets any of the VM instances specified.
  ///
  /// Instances are specified by their URI in the form
  /// `zones/[ZONE]/instances/[INSTANCE_NAME]`,
  /// `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or
  /// `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  core.List<core.String>? instances;

  /// Targets VM instances in ANY of these zones.
  ///
  /// Leave empty to target VM instances in any zone.
  core.List<core.String>? zones;

  PatchInstanceFilter({
    this.all,
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.zones,
  });

  PatchInstanceFilter.fromJson(core.Map json_)
      : this(
          all: json_.containsKey('all') ? json_['all'] as core.bool : null,
          groupLabels: json_.containsKey('groupLabels')
              ? (json_['groupLabels'] as core.List)
                  .map((value) => PatchInstanceFilterGroupLabel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          instanceNamePrefixes: json_.containsKey('instanceNamePrefixes')
              ? (json_['instanceNamePrefixes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          zones: json_.containsKey('zones')
              ? (json_['zones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (all != null) 'all': all!,
        if (groupLabels != null) 'groupLabels': groupLabels!,
        if (instanceNamePrefixes != null)
          'instanceNamePrefixes': instanceNamePrefixes!,
        if (instances != null) 'instances': instances!,
        if (zones != null) 'zones': zones!,
      };
}

/// Targets a group of VM instances by using their
/// [assigned labels](https://cloud.google.com/compute/docs/labeling-resources).
///
/// Labels are key-value pairs. A `GroupLabel` is a combination of labels that
/// is used to target VMs for a patch job. For example, a patch job can target
/// VMs that have the following `GroupLabel`: `{"env":"test", "app":"web"}`.
/// This means that the patch job is applied to VMs that have both the labels
/// `env=test` and `app=web`.
class PatchInstanceFilterGroupLabel {
  /// Compute Engine instance labels that must be present for a VM instance to
  /// be targeted by this filter.
  core.Map<core.String, core.String>? labels;

  PatchInstanceFilterGroupLabel({
    this.labels,
  });

  PatchInstanceFilterGroupLabel.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

/// A high level representation of a patch job that is either in progress or has
/// completed.
///
/// Instance details are not included in the job. To paginate through instance
/// details, use ListPatchJobInstanceDetails. For more information about patch
/// jobs, see
/// [Creating patch jobs](https://cloud.google.com/compute/docs/os-patch-management/create-patch-job).
class PatchJob {
  /// Time this patch job was created.
  core.String? createTime;

  /// Description of the patch job.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// Display name for this patch job.
  ///
  /// This is not a unique identifier.
  core.String? displayName;

  /// If this patch job is a dry run, the agent reports that it has finished
  /// without running any updates on the VM instance.
  core.bool? dryRun;

  /// Duration of the patch job.
  ///
  /// After the duration ends, the patch job times out.
  core.String? duration;

  /// If this patch job failed, this message provides information about the
  /// failure.
  core.String? errorMessage;

  /// Summary of instance details.
  PatchJobInstanceDetailsSummary? instanceDetailsSummary;

  /// Instances to patch.
  PatchInstanceFilter? instanceFilter;

  /// Unique identifier for this patch job in the form `projects / * /patchJobs
  /// / * `
  core.String? name;

  /// Patch configuration being applied.
  PatchConfig? patchConfig;

  /// Name of the patch deployment that created this patch job.
  ///
  /// Output only.
  core.String? patchDeployment;

  /// Reflects the overall progress of the patch job in the range of 0.0 being
  /// no progress to 100.0 being complete.
  core.double? percentComplete;

  /// Rollout strategy being applied.
  PatchRollout? rollout;

  /// The current state of the PatchJob.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State must be specified.
  /// - "STARTED" : The patch job was successfully initiated.
  /// - "INSTANCE_LOOKUP" : The patch job is looking up instances to run the
  /// patch on.
  /// - "PATCHING" : Instances are being patched.
  /// - "SUCCEEDED" : Patch job completed successfully.
  /// - "COMPLETED_WITH_ERRORS" : Patch job completed but there were errors.
  /// - "CANCELED" : The patch job was canceled.
  /// - "TIMED_OUT" : The patch job timed out.
  core.String? state;

  /// Last time this patch job was updated.
  core.String? updateTime;

  PatchJob({
    this.createTime,
    this.description,
    this.displayName,
    this.dryRun,
    this.duration,
    this.errorMessage,
    this.instanceDetailsSummary,
    this.instanceFilter,
    this.name,
    this.patchConfig,
    this.patchDeployment,
    this.percentComplete,
    this.rollout,
    this.state,
    this.updateTime,
  });

  PatchJob.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          dryRun:
              json_.containsKey('dryRun') ? json_['dryRun'] as core.bool : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          instanceDetailsSummary: json_.containsKey('instanceDetailsSummary')
              ? PatchJobInstanceDetailsSummary.fromJson(
                  json_['instanceDetailsSummary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          instanceFilter: json_.containsKey('instanceFilter')
              ? PatchInstanceFilter.fromJson(json_['instanceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          patchConfig: json_.containsKey('patchConfig')
              ? PatchConfig.fromJson(
                  json_['patchConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          patchDeployment: json_.containsKey('patchDeployment')
              ? json_['patchDeployment'] as core.String
              : null,
          percentComplete: json_.containsKey('percentComplete')
              ? (json_['percentComplete'] as core.num).toDouble()
              : null,
          rollout: json_.containsKey('rollout')
              ? PatchRollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (dryRun != null) 'dryRun': dryRun!,
        if (duration != null) 'duration': duration!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (instanceDetailsSummary != null)
          'instanceDetailsSummary': instanceDetailsSummary!,
        if (instanceFilter != null) 'instanceFilter': instanceFilter!,
        if (name != null) 'name': name!,
        if (patchConfig != null) 'patchConfig': patchConfig!,
        if (patchDeployment != null) 'patchDeployment': patchDeployment!,
        if (percentComplete != null) 'percentComplete': percentComplete!,
        if (rollout != null) 'rollout': rollout!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Patch details for a VM instance.
///
/// For more information about reviewing VM instance details, see
/// [Listing all VM instance details for a specific patch job](https://cloud.google.com/compute/docs/os-patch-management/manage-patch-jobs#list-instance-details).
class PatchJobInstanceDetails {
  /// The number of times the agent that the agent attempts to apply the patch.
  core.String? attemptCount;

  /// If the patch fails, this field provides the reason.
  core.String? failureReason;

  /// The unique identifier for the instance.
  ///
  /// This identifier is defined by the server.
  core.String? instanceSystemId;

  /// The instance name in the form `projects / * /zones / * /instances / * `
  core.String? name;

  /// Current state of instance patch.
  /// Possible string values are:
  /// - "PATCH_STATE_UNSPECIFIED" : Unspecified.
  /// - "PENDING" : The instance is not yet notified.
  /// - "INACTIVE" : Instance is inactive and cannot be patched.
  /// - "NOTIFIED" : The instance is notified that it should be patched.
  /// - "STARTED" : The instance has started the patching process.
  /// - "DOWNLOADING_PATCHES" : The instance is downloading patches.
  /// - "APPLYING_PATCHES" : The instance is applying patches.
  /// - "REBOOTING" : The instance is rebooting.
  /// - "SUCCEEDED" : The instance has completed applying patches.
  /// - "SUCCEEDED_REBOOT_REQUIRED" : The instance has completed applying
  /// patches but a reboot is required.
  /// - "FAILED" : The instance has failed to apply the patch.
  /// - "ACKED" : The instance acked the notification and will start shortly.
  /// - "TIMED_OUT" : The instance exceeded the time out while applying the
  /// patch.
  /// - "RUNNING_PRE_PATCH_STEP" : The instance is running the pre-patch step.
  /// - "RUNNING_POST_PATCH_STEP" : The instance is running the post-patch step.
  /// - "NO_AGENT_DETECTED" : The service could not detect the presence of the
  /// agent. Check to ensure that the agent is installed, running, and able to
  /// communicate with the service.
  core.String? state;

  PatchJobInstanceDetails({
    this.attemptCount,
    this.failureReason,
    this.instanceSystemId,
    this.name,
    this.state,
  });

  PatchJobInstanceDetails.fromJson(core.Map json_)
      : this(
          attemptCount: json_.containsKey('attemptCount')
              ? json_['attemptCount'] as core.String
              : null,
          failureReason: json_.containsKey('failureReason')
              ? json_['failureReason'] as core.String
              : null,
          instanceSystemId: json_.containsKey('instanceSystemId')
              ? json_['instanceSystemId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attemptCount != null) 'attemptCount': attemptCount!,
        if (failureReason != null) 'failureReason': failureReason!,
        if (instanceSystemId != null) 'instanceSystemId': instanceSystemId!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// A summary of the current patch state across all instances that this patch
/// job affects.
///
/// Contains counts of instances in different states. These states map to
/// `InstancePatchState`. List patch job instance details to see the specific
/// states of each instance.
class PatchJobInstanceDetailsSummary {
  /// Number of instances that have acked and will start shortly.
  core.String? ackedInstanceCount;

  /// Number of instances that are applying patches.
  core.String? applyingPatchesInstanceCount;

  /// Number of instances that are downloading patches.
  core.String? downloadingPatchesInstanceCount;

  /// Number of instances that failed.
  core.String? failedInstanceCount;

  /// Number of instances that are inactive.
  core.String? inactiveInstanceCount;

  /// Number of instances that do not appear to be running the agent.
  ///
  /// Check to ensure that the agent is installed, running, and able to
  /// communicate with the service.
  core.String? noAgentDetectedInstanceCount;

  /// Number of instances notified about patch job.
  core.String? notifiedInstanceCount;

  /// Number of instances pending patch job.
  core.String? pendingInstanceCount;

  /// Number of instances that are running the post-patch step.
  core.String? postPatchStepInstanceCount;

  /// Number of instances that are running the pre-patch step.
  core.String? prePatchStepInstanceCount;

  /// Number of instances rebooting.
  core.String? rebootingInstanceCount;

  /// Number of instances that have started.
  core.String? startedInstanceCount;

  /// Number of instances that have completed successfully.
  core.String? succeededInstanceCount;

  /// Number of instances that require reboot.
  core.String? succeededRebootRequiredInstanceCount;

  /// Number of instances that exceeded the time out while applying the patch.
  core.String? timedOutInstanceCount;

  PatchJobInstanceDetailsSummary({
    this.ackedInstanceCount,
    this.applyingPatchesInstanceCount,
    this.downloadingPatchesInstanceCount,
    this.failedInstanceCount,
    this.inactiveInstanceCount,
    this.noAgentDetectedInstanceCount,
    this.notifiedInstanceCount,
    this.pendingInstanceCount,
    this.postPatchStepInstanceCount,
    this.prePatchStepInstanceCount,
    this.rebootingInstanceCount,
    this.startedInstanceCount,
    this.succeededInstanceCount,
    this.succeededRebootRequiredInstanceCount,
    this.timedOutInstanceCount,
  });

  PatchJobInstanceDetailsSummary.fromJson(core.Map json_)
      : this(
          ackedInstanceCount: json_.containsKey('ackedInstanceCount')
              ? json_['ackedInstanceCount'] as core.String
              : null,
          applyingPatchesInstanceCount:
              json_.containsKey('applyingPatchesInstanceCount')
                  ? json_['applyingPatchesInstanceCount'] as core.String
                  : null,
          downloadingPatchesInstanceCount:
              json_.containsKey('downloadingPatchesInstanceCount')
                  ? json_['downloadingPatchesInstanceCount'] as core.String
                  : null,
          failedInstanceCount: json_.containsKey('failedInstanceCount')
              ? json_['failedInstanceCount'] as core.String
              : null,
          inactiveInstanceCount: json_.containsKey('inactiveInstanceCount')
              ? json_['inactiveInstanceCount'] as core.String
              : null,
          noAgentDetectedInstanceCount:
              json_.containsKey('noAgentDetectedInstanceCount')
                  ? json_['noAgentDetectedInstanceCount'] as core.String
                  : null,
          notifiedInstanceCount: json_.containsKey('notifiedInstanceCount')
              ? json_['notifiedInstanceCount'] as core.String
              : null,
          pendingInstanceCount: json_.containsKey('pendingInstanceCount')
              ? json_['pendingInstanceCount'] as core.String
              : null,
          postPatchStepInstanceCount:
              json_.containsKey('postPatchStepInstanceCount')
                  ? json_['postPatchStepInstanceCount'] as core.String
                  : null,
          prePatchStepInstanceCount:
              json_.containsKey('prePatchStepInstanceCount')
                  ? json_['prePatchStepInstanceCount'] as core.String
                  : null,
          rebootingInstanceCount: json_.containsKey('rebootingInstanceCount')
              ? json_['rebootingInstanceCount'] as core.String
              : null,
          startedInstanceCount: json_.containsKey('startedInstanceCount')
              ? json_['startedInstanceCount'] as core.String
              : null,
          succeededInstanceCount: json_.containsKey('succeededInstanceCount')
              ? json_['succeededInstanceCount'] as core.String
              : null,
          succeededRebootRequiredInstanceCount:
              json_.containsKey('succeededRebootRequiredInstanceCount')
                  ? json_['succeededRebootRequiredInstanceCount'] as core.String
                  : null,
          timedOutInstanceCount: json_.containsKey('timedOutInstanceCount')
              ? json_['timedOutInstanceCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ackedInstanceCount != null)
          'ackedInstanceCount': ackedInstanceCount!,
        if (applyingPatchesInstanceCount != null)
          'applyingPatchesInstanceCount': applyingPatchesInstanceCount!,
        if (downloadingPatchesInstanceCount != null)
          'downloadingPatchesInstanceCount': downloadingPatchesInstanceCount!,
        if (failedInstanceCount != null)
          'failedInstanceCount': failedInstanceCount!,
        if (inactiveInstanceCount != null)
          'inactiveInstanceCount': inactiveInstanceCount!,
        if (noAgentDetectedInstanceCount != null)
          'noAgentDetectedInstanceCount': noAgentDetectedInstanceCount!,
        if (notifiedInstanceCount != null)
          'notifiedInstanceCount': notifiedInstanceCount!,
        if (pendingInstanceCount != null)
          'pendingInstanceCount': pendingInstanceCount!,
        if (postPatchStepInstanceCount != null)
          'postPatchStepInstanceCount': postPatchStepInstanceCount!,
        if (prePatchStepInstanceCount != null)
          'prePatchStepInstanceCount': prePatchStepInstanceCount!,
        if (rebootingInstanceCount != null)
          'rebootingInstanceCount': rebootingInstanceCount!,
        if (startedInstanceCount != null)
          'startedInstanceCount': startedInstanceCount!,
        if (succeededInstanceCount != null)
          'succeededInstanceCount': succeededInstanceCount!,
        if (succeededRebootRequiredInstanceCount != null)
          'succeededRebootRequiredInstanceCount':
              succeededRebootRequiredInstanceCount!,
        if (timedOutInstanceCount != null)
          'timedOutInstanceCount': timedOutInstanceCount!,
      };
}

/// Patch rollout configuration specifications.
///
/// Contains details on the concurrency control when applying patch(es) to all
/// targeted VMs.
class PatchRollout {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given
  /// moment.
  ///
  /// The number of VMs calculated from multiplying the percentage by the total
  /// number of VMs in a zone is rounded up. During patching, a VM is considered
  /// disrupted from the time the agent is notified to begin until patching has
  /// completed. This disruption time includes the time to complete reboot and
  /// any post-patch steps. A VM contributes to the disruption budget if its
  /// patching operation fails either when applying the patches, running pre or
  /// post patch steps, or if it fails to respond with a success notification
  /// before timing out. VMs that are not running or do not have an active agent
  /// do not count toward this disruption budget. For zone-by-zone rollouts, if
  /// the disruption budget in a zone is exceeded, the patch job stops, because
  /// continuing to the next zone requires completion of the patch process in
  /// the previous zone. For example, if the disruption budget has a fixed value
  /// of `10`, and 8 VMs fail to patch in the current zone, the patch job
  /// continues to patch 2 VMs at a time until the zone is completed. When that
  /// zone is completed successfully, patching begins with 10 VMs at a time in
  /// the next zone. If 10 VMs in the next zone fail to patch, the patch job
  /// stops.
  FixedOrPercent? disruptionBudget;

  /// Mode of the patch rollout.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Mode must be specified.
  /// - "ZONE_BY_ZONE" : Patches are applied one zone at a time. The patch job
  /// begins in the region with the lowest number of targeted VMs. Within the
  /// region, patching begins in the zone with the lowest number of targeted
  /// VMs. If multiple regions (or zones within a region) have the same number
  /// of targeted VMs, a tie-breaker is achieved by sorting the regions or zones
  /// in alphabetical order.
  /// - "CONCURRENT_ZONES" : Patches are applied to VMs in all zones at the same
  /// time.
  core.String? mode;

  PatchRollout({
    this.disruptionBudget,
    this.mode,
  });

  PatchRollout.fromJson(core.Map json_)
      : this(
          disruptionBudget: json_.containsKey('disruptionBudget')
              ? FixedOrPercent.fromJson(json_['disruptionBudget']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disruptionBudget != null) 'disruptionBudget': disruptionBudget!,
        if (mode != null) 'mode': mode!,
      };
}

/// A request message for pausing a patch deployment.
typedef PausePatchDeploymentRequest = $Empty;

/// Sets the time for recurring patch deployments.
class RecurringSchedule {
  /// The end time at which a recurring patch deployment schedule is no longer
  /// active.
  ///
  /// Optional.
  core.String? endTime;

  /// The frequency unit of this recurring schedule.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FREQUENCY_UNSPECIFIED" : Invalid. A frequency must be specified.
  /// - "WEEKLY" : Indicates that the frequency of recurrence should be
  /// expressed in terms of weeks.
  /// - "MONTHLY" : Indicates that the frequency of recurrence should be
  /// expressed in terms of months.
  /// - "DAILY" : Indicates that the frequency of recurrence should be expressed
  /// in terms of days.
  core.String? frequency;

  /// The time the last patch job ran successfully.
  ///
  /// Output only.
  core.String? lastExecuteTime;

  /// Schedule with monthly executions.
  ///
  /// Required.
  MonthlySchedule? monthly;

  /// The time the next patch job is scheduled to run.
  ///
  /// Output only.
  core.String? nextExecuteTime;

  /// The time that the recurring schedule becomes effective.
  ///
  /// Defaults to `create_time` of the patch deployment.
  ///
  /// Optional.
  core.String? startTime;

  /// Time of the day to run a recurring deployment.
  ///
  /// Required.
  TimeOfDay? timeOfDay;

  /// Defines the time zone that `time_of_day` is relative to.
  ///
  /// The rules for daylight saving time are determined by the chosen time zone.
  ///
  /// Required.
  TimeZone? timeZone;

  /// Schedule with weekly executions.
  ///
  /// Required.
  WeeklySchedule? weekly;

  RecurringSchedule({
    this.endTime,
    this.frequency,
    this.lastExecuteTime,
    this.monthly,
    this.nextExecuteTime,
    this.startTime,
    this.timeOfDay,
    this.timeZone,
    this.weekly,
  });

  RecurringSchedule.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          frequency: json_.containsKey('frequency')
              ? json_['frequency'] as core.String
              : null,
          lastExecuteTime: json_.containsKey('lastExecuteTime')
              ? json_['lastExecuteTime'] as core.String
              : null,
          monthly: json_.containsKey('monthly')
              ? MonthlySchedule.fromJson(
                  json_['monthly'] as core.Map<core.String, core.dynamic>)
              : null,
          nextExecuteTime: json_.containsKey('nextExecuteTime')
              ? json_['nextExecuteTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          timeOfDay: json_.containsKey('timeOfDay')
              ? TimeOfDay.fromJson(
                  json_['timeOfDay'] as core.Map<core.String, core.dynamic>)
              : null,
          timeZone: json_.containsKey('timeZone')
              ? TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
          weekly: json_.containsKey('weekly')
              ? WeeklySchedule.fromJson(
                  json_['weekly'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (frequency != null) 'frequency': frequency!,
        if (lastExecuteTime != null) 'lastExecuteTime': lastExecuteTime!,
        if (monthly != null) 'monthly': monthly!,
        if (nextExecuteTime != null) 'nextExecuteTime': nextExecuteTime!,
        if (startTime != null) 'startTime': startTime!,
        if (timeOfDay != null) 'timeOfDay': timeOfDay!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (weekly != null) 'weekly': weekly!,
      };
}

/// A request message for resuming a patch deployment.
typedef ResumePatchDeploymentRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;

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

  VulnerabilityReport({
    this.name,
    this.updateTime,
    this.vulnerabilities,
  });

  VulnerabilityReport.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vulnerabilities: json_.containsKey('vulnerabilities')
              ? (json_['vulnerabilities'] as core.List)
                  .map((value) => VulnerabilityReportVulnerability.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vulnerabilities != null) 'vulnerabilities': vulnerabilities!,
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

  /// List of items affected by the vulnerability.
  core.List<VulnerabilityReportVulnerabilityItem>? items;

  /// The timestamp for when the vulnerability was last modified.
  core.String? updateTime;

  VulnerabilityReportVulnerability({
    this.availableInventoryItemIds,
    this.createTime,
    this.details,
    this.installedInventoryItemIds,
    this.items,
    this.updateTime,
  });

  VulnerabilityReportVulnerability.fromJson(core.Map json_)
      : this(
          availableInventoryItemIds:
              json_.containsKey('availableInventoryItemIds')
                  ? (json_['availableInventoryItemIds'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          details: json_.containsKey('details')
              ? VulnerabilityReportVulnerabilityDetails.fromJson(
                  json_['details'] as core.Map<core.String, core.dynamic>)
              : null,
          installedInventoryItemIds:
              json_.containsKey('installedInventoryItemIds')
                  ? (json_['installedInventoryItemIds'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => VulnerabilityReportVulnerabilityItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableInventoryItemIds != null)
          'availableInventoryItemIds': availableInventoryItemIds!,
        if (createTime != null) 'createTime': createTime!,
        if (details != null) 'details': details!,
        if (installedInventoryItemIds != null)
          'installedInventoryItemIds': installedInventoryItemIds!,
        if (items != null) 'items': items!,
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

  VulnerabilityReportVulnerabilityDetails({
    this.cve,
    this.cvssV2Score,
    this.cvssV3,
    this.description,
    this.references,
    this.severity,
  });

  VulnerabilityReportVulnerabilityDetails.fromJson(core.Map json_)
      : this(
          cve: json_.containsKey('cve') ? json_['cve'] as core.String : null,
          cvssV2Score: json_.containsKey('cvssV2Score')
              ? (json_['cvssV2Score'] as core.num).toDouble()
              : null,
          cvssV3: json_.containsKey('cvssV3')
              ? CVSSv3.fromJson(
                  json_['cvssV3'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          references: json_.containsKey('references')
              ? (json_['references'] as core.List)
                  .map((value) =>
                      VulnerabilityReportVulnerabilityDetailsReference.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cve != null) 'cve': cve!,
        if (cvssV2Score != null) 'cvssV2Score': cvssV2Score!,
        if (cvssV3 != null) 'cvssV3': cvssV3!,
        if (description != null) 'description': description!,
        if (references != null) 'references': references!,
        if (severity != null) 'severity': severity!,
      };
}

/// A reference for this vulnerability.
class VulnerabilityReportVulnerabilityDetailsReference {
  /// The source of the reference e.g. NVD.
  core.String? source;

  /// The url of the reference.
  core.String? url;

  VulnerabilityReportVulnerabilityDetailsReference({
    this.source,
    this.url,
  });

  VulnerabilityReportVulnerabilityDetailsReference.fromJson(core.Map json_)
      : this(
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!,
        if (url != null) 'url': url!,
      };
}

/// OS inventory item that is affected by a vulnerability or fixed as a result
/// of a vulnerability.
class VulnerabilityReportVulnerabilityItem {
  /// Corresponds to the `AVAILABLE_PACKAGE` inventory item on the VM.
  ///
  /// If the vulnerability report was not updated after the VM inventory update,
  /// these values might not display in VM inventory. If there is no available
  /// fix, the field is empty. The `inventory_item` value specifies the latest
  /// `SoftwarePackage` available to the VM that fixes the vulnerability.
  core.String? availableInventoryItemId;

  /// The recommended [CPE URI](https://cpe.mitre.org/specification/) update
  /// that contains a fix for this vulnerability.
  core.String? fixedCpeUri;

  /// Corresponds to the `INSTALLED_PACKAGE` inventory item on the VM.
  ///
  /// This field displays the inventory items affected by this vulnerability. If
  /// the vulnerability report was not updated after the VM inventory update,
  /// these values might not display in VM inventory. For some operating
  /// systems, this field might be empty.
  core.String? installedInventoryItemId;

  /// The upstream OS patch, packages or KB that fixes the vulnerability.
  core.String? upstreamFix;

  VulnerabilityReportVulnerabilityItem({
    this.availableInventoryItemId,
    this.fixedCpeUri,
    this.installedInventoryItemId,
    this.upstreamFix,
  });

  VulnerabilityReportVulnerabilityItem.fromJson(core.Map json_)
      : this(
          availableInventoryItemId:
              json_.containsKey('availableInventoryItemId')
                  ? json_['availableInventoryItemId'] as core.String
                  : null,
          fixedCpeUri: json_.containsKey('fixedCpeUri')
              ? json_['fixedCpeUri'] as core.String
              : null,
          installedInventoryItemId:
              json_.containsKey('installedInventoryItemId')
                  ? json_['installedInventoryItemId'] as core.String
                  : null,
          upstreamFix: json_.containsKey('upstreamFix')
              ? json_['upstreamFix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableInventoryItemId != null)
          'availableInventoryItemId': availableInventoryItemId!,
        if (fixedCpeUri != null) 'fixedCpeUri': fixedCpeUri!,
        if (installedInventoryItemId != null)
          'installedInventoryItemId': installedInventoryItemId!,
        if (upstreamFix != null) 'upstreamFix': upstreamFix!,
      };
}

/// Represents one week day in a month.
///
/// An example is "the 4th Sunday".
class WeekDayOfMonth {
  /// A day of the week.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// Represents the number of days before or after the given week day of month
  /// that the patch deployment is scheduled for.
  ///
  /// For example if `week_ordinal` and `day_of_week` values point to the second
  /// day of the month and this `day_offset` value is set to `3`, the patch
  /// deployment takes place three days after the second Tuesday of the month.
  /// If this value is negative, for example -5, the patches are deployed five
  /// days before before the second Tuesday of the month. Allowed values are in
  /// range \[-30, 30\].
  ///
  /// Optional.
  core.int? dayOffset;

  /// Week number in a month.
  ///
  /// 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week
  /// of the month.
  ///
  /// Required.
  core.int? weekOrdinal;

  WeekDayOfMonth({
    this.dayOfWeek,
    this.dayOffset,
    this.weekOrdinal,
  });

  WeekDayOfMonth.fromJson(core.Map json_)
      : this(
          dayOfWeek: json_.containsKey('dayOfWeek')
              ? json_['dayOfWeek'] as core.String
              : null,
          dayOffset: json_.containsKey('dayOffset')
              ? json_['dayOffset'] as core.int
              : null,
          weekOrdinal: json_.containsKey('weekOrdinal')
              ? json_['weekOrdinal'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (dayOffset != null) 'dayOffset': dayOffset!,
        if (weekOrdinal != null) 'weekOrdinal': weekOrdinal!,
      };
}

/// Represents a weekly schedule.
class WeeklySchedule {
  /// Day of the week.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  WeeklySchedule({
    this.dayOfWeek,
  });

  WeeklySchedule.fromJson(core.Map json_)
      : this(
          dayOfWeek: json_.containsKey('dayOfWeek')
              ? json_['dayOfWeek'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
      };
}

/// Windows patching is performed using the Windows Update Agent.
class WindowsUpdateSettings {
  /// Only apply updates of these windows update classifications.
  ///
  /// If empty, all updates are applied.
  core.List<core.String>? classifications;

  /// List of KBs to exclude from update.
  core.List<core.String>? excludes;

  /// An exclusive list of kbs to be updated.
  ///
  /// These are the only patches that will be updated. This field must not be
  /// used with other patch configurations.
  core.List<core.String>? exclusivePatches;

  WindowsUpdateSettings({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  WindowsUpdateSettings.fromJson(core.Map json_)
      : this(
          classifications: json_.containsKey('classifications')
              ? (json_['classifications'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          excludes: json_.containsKey('excludes')
              ? (json_['excludes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exclusivePatches: json_.containsKey('exclusivePatches')
              ? (json_['exclusivePatches'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classifications != null) 'classifications': classifications!,
        if (excludes != null) 'excludes': excludes!,
        if (exclusivePatches != null) 'exclusivePatches': exclusivePatches!,
      };
}

/// Yum patching is performed by executing `yum update`.
///
/// Additional options can be set to control how this is executed. Note that not
/// all settings are supported on all platforms.
class YumSettings {
  /// List of packages to exclude from update.
  ///
  /// These packages are excluded by using the yum `--exclude` flag.
  core.List<core.String>? excludes;

  /// An exclusive list of packages to be updated.
  ///
  /// These are the only packages that will be updated. If these packages are
  /// not installed, they will be ignored. This field must not be specified with
  /// any other patch configuration fields.
  core.List<core.String>? exclusivePackages;

  /// Will cause patch to run `yum update-minimal` instead.
  core.bool? minimal;

  /// Adds the `--security` flag to `yum update`.
  ///
  /// Not supported on all platforms.
  core.bool? security;

  YumSettings({
    this.excludes,
    this.exclusivePackages,
    this.minimal,
    this.security,
  });

  YumSettings.fromJson(core.Map json_)
      : this(
          excludes: json_.containsKey('excludes')
              ? (json_['excludes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exclusivePackages: json_.containsKey('exclusivePackages')
              ? (json_['exclusivePackages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          minimal: json_.containsKey('minimal')
              ? json_['minimal'] as core.bool
              : null,
          security: json_.containsKey('security')
              ? json_['security'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludes != null) 'excludes': excludes!,
        if (exclusivePackages != null) 'exclusivePackages': exclusivePackages!,
        if (minimal != null) 'minimal': minimal!,
        if (security != null) 'security': security!,
      };
}

/// Zypper patching is performed by running `zypper patch`.
///
/// See also https://en.opensuse.org/SDB:Zypper_manual.
class ZypperSettings {
  /// Install only patches with these categories.
  ///
  /// Common categories include security, recommended, and feature.
  core.List<core.String>? categories;

  /// List of patches to exclude from update.
  core.List<core.String>? excludes;

  /// An exclusive list of patches to be updated.
  ///
  /// These are the only patches that will be installed using 'zypper patch
  /// patch:' command. This field must not be used with any other patch
  /// configuration fields.
  core.List<core.String>? exclusivePatches;

  /// Install only patches with these severities.
  ///
  /// Common severities include critical, important, moderate, and low.
  core.List<core.String>? severities;

  /// Adds the `--with-optional` flag to `zypper patch`.
  core.bool? withOptional;

  /// Adds the `--with-update` flag, to `zypper patch`.
  core.bool? withUpdate;

  ZypperSettings({
    this.categories,
    this.excludes,
    this.exclusivePatches,
    this.severities,
    this.withOptional,
    this.withUpdate,
  });

  ZypperSettings.fromJson(core.Map json_)
      : this(
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          excludes: json_.containsKey('excludes')
              ? (json_['excludes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exclusivePatches: json_.containsKey('exclusivePatches')
              ? (json_['exclusivePatches'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          severities: json_.containsKey('severities')
              ? (json_['severities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          withOptional: json_.containsKey('withOptional')
              ? json_['withOptional'] as core.bool
              : null,
          withUpdate: json_.containsKey('withUpdate')
              ? json_['withUpdate'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (excludes != null) 'excludes': excludes!,
        if (exclusivePatches != null) 'exclusivePatches': exclusivePatches!,
        if (severities != null) 'severities': severities!,
        if (withOptional != null) 'withOptional': withOptional!,
        if (withUpdate != null) 'withUpdate': withUpdate!,
      };
}
