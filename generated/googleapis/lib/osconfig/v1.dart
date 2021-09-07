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
///       - [ProjectsLocationsInstancesVulnerabilityReportsResource]
///   - [ProjectsPatchDeploymentsResource]
///   - [ProjectsPatchJobsResource]
///     - [ProjectsPatchJobsInstanceDetailsResource]
library osconfig.v1;

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

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/inventories';

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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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
  /// `projects/{project}/locations/{location}/instances/-` For `{project}`,
  /// either `project-number` or `project-id` can be provided.
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
        'v1/' + core.Uri.encodeFull('$parent') + '/vulnerabilityReports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVulnerabilityReportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (patchDeploymentId != null) 'patchDeploymentId': [patchDeploymentId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/patchDeployments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PatchDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PatchDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/patchDeployments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPatchDeploymentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PatchJob.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/patchJobs:execute';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PatchJob.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PatchJob.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/patchJobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPatchJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/instanceDetails';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPatchJobInstanceDetailsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  AptSettings.fromJson(core.Map _json)
      : this(
          excludes: _json.containsKey('excludes')
              ? (_json['excludes'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          exclusivePackages: _json.containsKey('exclusivePackages')
              ? (_json['exclusivePackages'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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

  CVSSv3.fromJson(core.Map _json)
      : this(
          attackComplexity: _json.containsKey('attackComplexity')
              ? _json['attackComplexity'] as core.String
              : null,
          attackVector: _json.containsKey('attackVector')
              ? _json['attackVector'] as core.String
              : null,
          availabilityImpact: _json.containsKey('availabilityImpact')
              ? _json['availabilityImpact'] as core.String
              : null,
          baseScore: _json.containsKey('baseScore')
              ? (_json['baseScore'] as core.num).toDouble()
              : null,
          confidentialityImpact: _json.containsKey('confidentialityImpact')
              ? _json['confidentialityImpact'] as core.String
              : null,
          exploitabilityScore: _json.containsKey('exploitabilityScore')
              ? (_json['exploitabilityScore'] as core.num).toDouble()
              : null,
          impactScore: _json.containsKey('impactScore')
              ? (_json['impactScore'] as core.num).toDouble()
              : null,
          integrityImpact: _json.containsKey('integrityImpact')
              ? _json['integrityImpact'] as core.String
              : null,
          privilegesRequired: _json.containsKey('privilegesRequired')
              ? _json['privilegesRequired'] as core.String
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          userInteraction: _json.containsKey('userInteraction')
              ? _json['userInteraction'] as core.String
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

/// Message for canceling a patch job.
class CancelPatchJobRequest {
  CancelPatchJobRequest();

  CancelPatchJobRequest.fromJson(
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

  ExecStep.fromJson(core.Map _json)
      : this(
          linuxExecStepConfig: _json.containsKey('linuxExecStepConfig')
              ? ExecStepConfig.fromJson(_json['linuxExecStepConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          windowsExecStepConfig: _json.containsKey('windowsExecStepConfig')
              ? ExecStepConfig.fromJson(_json['windowsExecStepConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linuxExecStepConfig != null)
          'linuxExecStepConfig': linuxExecStepConfig!.toJson(),
        if (windowsExecStepConfig != null)
          'windowsExecStepConfig': windowsExecStepConfig!.toJson(),
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
  /// - "INTERPRETER_UNSPECIFIED" : Invalid for a Windows ExecStepConfig. For a
  /// Linux ExecStepConfig, the interpreter will be parsed from the shebang line
  /// of the script if unspecified.
  /// - "SHELL" : Indicates that the script is run with `/bin/sh` on Linux and
  /// `cmd` on Windows.
  /// - "POWERSHELL" : Indicates that the file is run with PowerShell flags
  /// `-NonInteractive`, `-NoProfile`, and `-ExecutionPolicy Bypass`.
  core.String? interpreter;

  /// An absolute path to the executable on the VM.
  core.String? localPath;

  ExecStepConfig({
    this.allowedSuccessCodes,
    this.gcsObject,
    this.interpreter,
    this.localPath,
  });

  ExecStepConfig.fromJson(core.Map _json)
      : this(
          allowedSuccessCodes: _json.containsKey('allowedSuccessCodes')
              ? (_json['allowedSuccessCodes'] as core.List)
                  .map<core.int>((value) => value as core.int)
                  .toList()
              : null,
          gcsObject: _json.containsKey('gcsObject')
              ? GcsObject.fromJson(
                  _json['gcsObject'] as core.Map<core.String, core.dynamic>)
              : null,
          interpreter: _json.containsKey('interpreter')
              ? _json['interpreter'] as core.String
              : null,
          localPath: _json.containsKey('localPath')
              ? _json['localPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedSuccessCodes != null)
          'allowedSuccessCodes': allowedSuccessCodes!,
        if (gcsObject != null) 'gcsObject': gcsObject!.toJson(),
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

  ExecutePatchJobRequest.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          dryRun:
              _json.containsKey('dryRun') ? _json['dryRun'] as core.bool : null,
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          instanceFilter: _json.containsKey('instanceFilter')
              ? PatchInstanceFilter.fromJson(_json['instanceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          patchConfig: _json.containsKey('patchConfig')
              ? PatchConfig.fromJson(
                  _json['patchConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          rollout: _json.containsKey('rollout')
              ? PatchRollout.fromJson(
                  _json['rollout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (dryRun != null) 'dryRun': dryRun!,
        if (duration != null) 'duration': duration!,
        if (instanceFilter != null) 'instanceFilter': instanceFilter!.toJson(),
        if (patchConfig != null) 'patchConfig': patchConfig!.toJson(),
        if (rollout != null) 'rollout': rollout!.toJson(),
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

  FixedOrPercent.fromJson(core.Map _json)
      : this(
          fixed: _json.containsKey('fixed') ? _json['fixed'] as core.int : null,
          percent: _json.containsKey('percent')
              ? _json['percent'] as core.int
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

  GcsObject.fromJson(core.Map _json)
      : this(
          bucket: _json.containsKey('bucket')
              ? _json['bucket'] as core.String
              : null,
          generationNumber: _json.containsKey('generationNumber')
              ? _json['generationNumber'] as core.String
              : null,
          object: _json.containsKey('object')
              ? _json['object'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (generationNumber != null) 'generationNumber': generationNumber!,
        if (object != null) 'object': object!,
      };
}

/// Googet patching is performed by running `googet update`.
class GooSettings {
  GooSettings();

  GooSettings.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
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

  Inventory.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    InventoryItem.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          osInfo: _json.containsKey('osInfo')
              ? InventoryOsInfo.fromJson(
                  _json['osInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

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

  InventoryItem({
    this.availablePackage,
    this.createTime,
    this.id,
    this.installedPackage,
    this.originType,
    this.type,
    this.updateTime,
  });

  InventoryItem.fromJson(core.Map _json)
      : this(
          availablePackage: _json.containsKey('availablePackage')
              ? InventorySoftwarePackage.fromJson(_json['availablePackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          installedPackage: _json.containsKey('installedPackage')
              ? InventorySoftwarePackage.fromJson(_json['installedPackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          originType: _json.containsKey('originType')
              ? _json['originType'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

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

  InventoryOsInfo({
    this.architecture,
    this.hostname,
    this.kernelRelease,
    this.kernelVersion,
    this.longName,
    this.osconfigAgentVersion,
    this.shortName,
    this.version,
  });

  InventoryOsInfo.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          hostname: _json.containsKey('hostname')
              ? _json['hostname'] as core.String
              : null,
          kernelRelease: _json.containsKey('kernelRelease')
              ? _json['kernelRelease'] as core.String
              : null,
          kernelVersion: _json.containsKey('kernelVersion')
              ? _json['kernelVersion'] as core.String
              : null,
          longName: _json.containsKey('longName')
              ? _json['longName'] as core.String
              : null,
          osconfigAgentVersion: _json.containsKey('osconfigAgentVersion')
              ? _json['osconfigAgentVersion'] as core.String
              : null,
          shortName: _json.containsKey('shortName')
              ? _json['shortName'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

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

  InventorySoftwarePackage({
    this.aptPackage,
    this.cosPackage,
    this.googetPackage,
    this.qfePackage,
    this.wuaPackage,
    this.yumPackage,
    this.zypperPackage,
    this.zypperPatch,
  });

  InventorySoftwarePackage.fromJson(core.Map _json)
      : this(
          aptPackage: _json.containsKey('aptPackage')
              ? InventoryVersionedPackage.fromJson(
                  _json['aptPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          cosPackage: _json.containsKey('cosPackage')
              ? InventoryVersionedPackage.fromJson(
                  _json['cosPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          googetPackage: _json.containsKey('googetPackage')
              ? InventoryVersionedPackage.fromJson(
                  _json['googetPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          qfePackage: _json.containsKey('qfePackage')
              ? InventoryWindowsQuickFixEngineeringPackage.fromJson(
                  _json['qfePackage'] as core.Map<core.String, core.dynamic>)
              : null,
          wuaPackage: _json.containsKey('wuaPackage')
              ? InventoryWindowsUpdatePackage.fromJson(
                  _json['wuaPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          yumPackage: _json.containsKey('yumPackage')
              ? InventoryVersionedPackage.fromJson(
                  _json['yumPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          zypperPackage: _json.containsKey('zypperPackage')
              ? InventoryVersionedPackage.fromJson(
                  _json['zypperPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          zypperPatch: _json.containsKey('zypperPatch')
              ? InventoryZypperPatch.fromJson(
                  _json['zypperPatch'] as core.Map<core.String, core.dynamic>)
              : null,
        );

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

  InventoryVersionedPackage({
    this.architecture,
    this.packageName,
    this.version,
  });

  InventoryVersionedPackage.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

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

  InventoryWindowsQuickFixEngineeringPackage({
    this.caption,
    this.description,
    this.hotFixId,
    this.installTime,
  });

  InventoryWindowsQuickFixEngineeringPackage.fromJson(core.Map _json)
      : this(
          caption: _json.containsKey('caption')
              ? _json['caption'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          hotFixId: _json.containsKey('hotFixId')
              ? _json['hotFixId'] as core.String
              : null,
          installTime: _json.containsKey('installTime')
              ? _json['installTime'] as core.String
              : null,
        );

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

  InventoryWindowsUpdatePackage.fromJson(core.Map _json)
      : this(
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map<InventoryWindowsUpdatePackageWindowsUpdateCategory>(
                      (value) =>
                          InventoryWindowsUpdatePackageWindowsUpdateCategory
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          kbArticleIds: _json.containsKey('kbArticleIds')
              ? (_json['kbArticleIds'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          lastDeploymentChangeTime:
              _json.containsKey('lastDeploymentChangeTime')
                  ? _json['lastDeploymentChangeTime'] as core.String
                  : null,
          moreInfoUrls: _json.containsKey('moreInfoUrls')
              ? (_json['moreInfoUrls'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          revisionNumber: _json.containsKey('revisionNumber')
              ? _json['revisionNumber'] as core.int
              : null,
          supportUrl: _json.containsKey('supportUrl')
              ? _json['supportUrl'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          updateId: _json.containsKey('updateId')
              ? _json['updateId'] as core.String
              : null,
        );

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

  InventoryWindowsUpdatePackageWindowsUpdateCategory({
    this.id,
    this.name,
  });

  InventoryWindowsUpdatePackageWindowsUpdateCategory.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

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

  InventoryZypperPatch({
    this.category,
    this.patchName,
    this.severity,
    this.summary,
  });

  InventoryZypperPatch.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          patchName: _json.containsKey('patchName')
              ? _json['patchName'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          summary: _json.containsKey('summary')
              ? _json['summary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (patchName != null) 'patchName': patchName!,
        if (severity != null) 'severity': severity!,
        if (summary != null) 'summary': summary!,
      };
}

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

  ListInventoriesResponse.fromJson(core.Map _json)
      : this(
          inventories: _json.containsKey('inventories')
              ? (_json['inventories'] as core.List)
                  .map<Inventory>((value) => Inventory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventories != null)
          'inventories': inventories!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListPatchDeploymentsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          patchDeployments: _json.containsKey('patchDeployments')
              ? (_json['patchDeployments'] as core.List)
                  .map<PatchDeployment>((value) => PatchDeployment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (patchDeployments != null)
          'patchDeployments':
              patchDeployments!.map((value) => value.toJson()).toList(),
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

  ListPatchJobInstanceDetailsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          patchJobInstanceDetails: _json.containsKey('patchJobInstanceDetails')
              ? (_json['patchJobInstanceDetails'] as core.List)
                  .map<PatchJobInstanceDetails>((value) =>
                      PatchJobInstanceDetails.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (patchJobInstanceDetails != null)
          'patchJobInstanceDetails':
              patchJobInstanceDetails!.map((value) => value.toJson()).toList(),
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

  ListPatchJobsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          patchJobs: _json.containsKey('patchJobs')
              ? (_json['patchJobs'] as core.List)
                  .map<PatchJob>((value) => PatchJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (patchJobs != null)
          'patchJobs': patchJobs!.map((value) => value.toJson()).toList(),
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

  ListVulnerabilityReportsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          vulnerabilityReports: _json.containsKey('vulnerabilityReports')
              ? (_json['vulnerabilityReports'] as core.List)
                  .map<VulnerabilityReport>((value) =>
                      VulnerabilityReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (vulnerabilityReports != null)
          'vulnerabilityReports':
              vulnerabilityReports!.map((value) => value.toJson()).toList(),
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

  MonthlySchedule.fromJson(core.Map _json)
      : this(
          monthDay: _json.containsKey('monthDay')
              ? _json['monthDay'] as core.int
              : null,
          weekDayOfMonth: _json.containsKey('weekDayOfMonth')
              ? WeekDayOfMonth.fromJson(_json['weekDayOfMonth']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (monthDay != null) 'monthDay': monthDay!,
        if (weekDayOfMonth != null) 'weekDayOfMonth': weekDayOfMonth!.toJson(),
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

  OSPolicyAssignmentOperationMetadata({
    this.apiMethod,
    this.osPolicyAssignment,
    this.rolloutStartTime,
    this.rolloutState,
    this.rolloutUpdateTime,
  });

  OSPolicyAssignmentOperationMetadata.fromJson(core.Map _json)
      : this(
          apiMethod: _json.containsKey('apiMethod')
              ? _json['apiMethod'] as core.String
              : null,
          osPolicyAssignment: _json.containsKey('osPolicyAssignment')
              ? _json['osPolicyAssignment'] as core.String
              : null,
          rolloutStartTime: _json.containsKey('rolloutStartTime')
              ? _json['rolloutStartTime'] as core.String
              : null,
          rolloutState: _json.containsKey('rolloutState')
              ? _json['rolloutState'] as core.String
              : null,
          rolloutUpdateTime: _json.containsKey('rolloutUpdateTime')
              ? _json['rolloutUpdateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiMethod != null) 'apiMethod': apiMethod!,
        if (osPolicyAssignment != null)
          'osPolicyAssignment': osPolicyAssignment!,
        if (rolloutStartTime != null) 'rolloutStartTime': rolloutStartTime!,
        if (rolloutState != null) 'rolloutState': rolloutState!,
        if (rolloutUpdateTime != null) 'rolloutUpdateTime': rolloutUpdateTime!,
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

  OneTimeSchedule.fromJson(core.Map _json)
      : this(
          executeTime: _json.containsKey('executeTime')
              ? _json['executeTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executeTime != null) 'executeTime': executeTime!,
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
    this.postStep,
    this.preStep,
    this.rebootConfig,
    this.windowsUpdate,
    this.yum,
    this.zypper,
  });

  PatchConfig.fromJson(core.Map _json)
      : this(
          apt: _json.containsKey('apt')
              ? AptSettings.fromJson(
                  _json['apt'] as core.Map<core.String, core.dynamic>)
              : null,
          goo: _json.containsKey('goo')
              ? GooSettings.fromJson(
                  _json['goo'] as core.Map<core.String, core.dynamic>)
              : null,
          postStep: _json.containsKey('postStep')
              ? ExecStep.fromJson(
                  _json['postStep'] as core.Map<core.String, core.dynamic>)
              : null,
          preStep: _json.containsKey('preStep')
              ? ExecStep.fromJson(
                  _json['preStep'] as core.Map<core.String, core.dynamic>)
              : null,
          rebootConfig: _json.containsKey('rebootConfig')
              ? _json['rebootConfig'] as core.String
              : null,
          windowsUpdate: _json.containsKey('windowsUpdate')
              ? WindowsUpdateSettings.fromJson(
                  _json['windowsUpdate'] as core.Map<core.String, core.dynamic>)
              : null,
          yum: _json.containsKey('yum')
              ? YumSettings.fromJson(
                  _json['yum'] as core.Map<core.String, core.dynamic>)
              : null,
          zypper: _json.containsKey('zypper')
              ? ZypperSettings.fromJson(
                  _json['zypper'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apt != null) 'apt': apt!.toJson(),
        if (goo != null) 'goo': goo!.toJson(),
        if (postStep != null) 'postStep': postStep!.toJson(),
        if (preStep != null) 'preStep': preStep!.toJson(),
        if (rebootConfig != null) 'rebootConfig': rebootConfig!,
        if (windowsUpdate != null) 'windowsUpdate': windowsUpdate!.toJson(),
        if (yum != null) 'yum': yum!.toJson(),
        if (zypper != null) 'zypper': zypper!.toJson(),
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
    this.updateTime,
  });

  PatchDeployment.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          instanceFilter: _json.containsKey('instanceFilter')
              ? PatchInstanceFilter.fromJson(_json['instanceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lastExecuteTime: _json.containsKey('lastExecuteTime')
              ? _json['lastExecuteTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          oneTimeSchedule: _json.containsKey('oneTimeSchedule')
              ? OneTimeSchedule.fromJson(_json['oneTimeSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          patchConfig: _json.containsKey('patchConfig')
              ? PatchConfig.fromJson(
                  _json['patchConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          recurringSchedule: _json.containsKey('recurringSchedule')
              ? RecurringSchedule.fromJson(_json['recurringSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rollout: _json.containsKey('rollout')
              ? PatchRollout.fromJson(
                  _json['rollout'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (duration != null) 'duration': duration!,
        if (instanceFilter != null) 'instanceFilter': instanceFilter!.toJson(),
        if (lastExecuteTime != null) 'lastExecuteTime': lastExecuteTime!,
        if (name != null) 'name': name!,
        if (oneTimeSchedule != null)
          'oneTimeSchedule': oneTimeSchedule!.toJson(),
        if (patchConfig != null) 'patchConfig': patchConfig!.toJson(),
        if (recurringSchedule != null)
          'recurringSchedule': recurringSchedule!.toJson(),
        if (rollout != null) 'rollout': rollout!.toJson(),
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

  PatchInstanceFilter.fromJson(core.Map _json)
      : this(
          all: _json.containsKey('all') ? _json['all'] as core.bool : null,
          groupLabels: _json.containsKey('groupLabels')
              ? (_json['groupLabels'] as core.List)
                  .map<PatchInstanceFilterGroupLabel>((value) =>
                      PatchInstanceFilterGroupLabel.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          instanceNamePrefixes: _json.containsKey('instanceNamePrefixes')
              ? (_json['instanceNamePrefixes'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          zones: _json.containsKey('zones')
              ? (_json['zones'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (all != null) 'all': all!,
        if (groupLabels != null)
          'groupLabels': groupLabels!.map((value) => value.toJson()).toList(),
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

  PatchInstanceFilterGroupLabel.fromJson(core.Map _json)
      : this(
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

  PatchJob.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          dryRun:
              _json.containsKey('dryRun') ? _json['dryRun'] as core.bool : null,
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          instanceDetailsSummary: _json.containsKey('instanceDetailsSummary')
              ? PatchJobInstanceDetailsSummary.fromJson(
                  _json['instanceDetailsSummary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          instanceFilter: _json.containsKey('instanceFilter')
              ? PatchInstanceFilter.fromJson(_json['instanceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          patchConfig: _json.containsKey('patchConfig')
              ? PatchConfig.fromJson(
                  _json['patchConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          patchDeployment: _json.containsKey('patchDeployment')
              ? _json['patchDeployment'] as core.String
              : null,
          percentComplete: _json.containsKey('percentComplete')
              ? (_json['percentComplete'] as core.num).toDouble()
              : null,
          rollout: _json.containsKey('rollout')
              ? PatchRollout.fromJson(
                  _json['rollout'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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
          'instanceDetailsSummary': instanceDetailsSummary!.toJson(),
        if (instanceFilter != null) 'instanceFilter': instanceFilter!.toJson(),
        if (name != null) 'name': name!,
        if (patchConfig != null) 'patchConfig': patchConfig!.toJson(),
        if (patchDeployment != null) 'patchDeployment': patchDeployment!,
        if (percentComplete != null) 'percentComplete': percentComplete!,
        if (rollout != null) 'rollout': rollout!.toJson(),
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

  PatchJobInstanceDetails.fromJson(core.Map _json)
      : this(
          attemptCount: _json.containsKey('attemptCount')
              ? _json['attemptCount'] as core.String
              : null,
          failureReason: _json.containsKey('failureReason')
              ? _json['failureReason'] as core.String
              : null,
          instanceSystemId: _json.containsKey('instanceSystemId')
              ? _json['instanceSystemId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
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

  PatchJobInstanceDetailsSummary.fromJson(core.Map _json)
      : this(
          ackedInstanceCount: _json.containsKey('ackedInstanceCount')
              ? _json['ackedInstanceCount'] as core.String
              : null,
          applyingPatchesInstanceCount:
              _json.containsKey('applyingPatchesInstanceCount')
                  ? _json['applyingPatchesInstanceCount'] as core.String
                  : null,
          downloadingPatchesInstanceCount:
              _json.containsKey('downloadingPatchesInstanceCount')
                  ? _json['downloadingPatchesInstanceCount'] as core.String
                  : null,
          failedInstanceCount: _json.containsKey('failedInstanceCount')
              ? _json['failedInstanceCount'] as core.String
              : null,
          inactiveInstanceCount: _json.containsKey('inactiveInstanceCount')
              ? _json['inactiveInstanceCount'] as core.String
              : null,
          noAgentDetectedInstanceCount:
              _json.containsKey('noAgentDetectedInstanceCount')
                  ? _json['noAgentDetectedInstanceCount'] as core.String
                  : null,
          notifiedInstanceCount: _json.containsKey('notifiedInstanceCount')
              ? _json['notifiedInstanceCount'] as core.String
              : null,
          pendingInstanceCount: _json.containsKey('pendingInstanceCount')
              ? _json['pendingInstanceCount'] as core.String
              : null,
          postPatchStepInstanceCount:
              _json.containsKey('postPatchStepInstanceCount')
                  ? _json['postPatchStepInstanceCount'] as core.String
                  : null,
          prePatchStepInstanceCount:
              _json.containsKey('prePatchStepInstanceCount')
                  ? _json['prePatchStepInstanceCount'] as core.String
                  : null,
          rebootingInstanceCount: _json.containsKey('rebootingInstanceCount')
              ? _json['rebootingInstanceCount'] as core.String
              : null,
          startedInstanceCount: _json.containsKey('startedInstanceCount')
              ? _json['startedInstanceCount'] as core.String
              : null,
          succeededInstanceCount: _json.containsKey('succeededInstanceCount')
              ? _json['succeededInstanceCount'] as core.String
              : null,
          succeededRebootRequiredInstanceCount:
              _json.containsKey('succeededRebootRequiredInstanceCount')
                  ? _json['succeededRebootRequiredInstanceCount'] as core.String
                  : null,
          timedOutInstanceCount: _json.containsKey('timedOutInstanceCount')
              ? _json['timedOutInstanceCount'] as core.String
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

  PatchRollout.fromJson(core.Map _json)
      : this(
          disruptionBudget: _json.containsKey('disruptionBudget')
              ? FixedOrPercent.fromJson(_json['disruptionBudget']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disruptionBudget != null)
          'disruptionBudget': disruptionBudget!.toJson(),
        if (mode != null) 'mode': mode!,
      };
}

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
  /// - "WEEKLY" : Indicates that the frequency should be expressed in terms of
  /// weeks.
  /// - "MONTHLY" : Indicates that the frequency should be expressed in terms of
  /// months.
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

  RecurringSchedule.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          frequency: _json.containsKey('frequency')
              ? _json['frequency'] as core.String
              : null,
          lastExecuteTime: _json.containsKey('lastExecuteTime')
              ? _json['lastExecuteTime'] as core.String
              : null,
          monthly: _json.containsKey('monthly')
              ? MonthlySchedule.fromJson(
                  _json['monthly'] as core.Map<core.String, core.dynamic>)
              : null,
          nextExecuteTime: _json.containsKey('nextExecuteTime')
              ? _json['nextExecuteTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          timeOfDay: _json.containsKey('timeOfDay')
              ? TimeOfDay.fromJson(
                  _json['timeOfDay'] as core.Map<core.String, core.dynamic>)
              : null,
          timeZone: _json.containsKey('timeZone')
              ? TimeZone.fromJson(
                  _json['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
          weekly: _json.containsKey('weekly')
              ? WeeklySchedule.fromJson(
                  _json['weekly'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (frequency != null) 'frequency': frequency!,
        if (lastExecuteTime != null) 'lastExecuteTime': lastExecuteTime!,
        if (monthly != null) 'monthly': monthly!.toJson(),
        if (nextExecuteTime != null) 'nextExecuteTime': nextExecuteTime!,
        if (startTime != null) 'startTime': startTime!,
        if (timeOfDay != null) 'timeOfDay': timeOfDay!.toJson(),
        if (timeZone != null) 'timeZone': timeZone!.toJson(),
        if (weekly != null) 'weekly': weekly!.toJson(),
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDay {
  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23. An API may choose to allow the value "24:00:00"
  /// for scenarios like business closing time.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59.
  core.int? minutes;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  core.int? seconds;

  TimeOfDay({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  TimeOfDay.fromJson(core.Map _json)
      : this(
          hours: _json.containsKey('hours') ? _json['hours'] as core.int : null,
          minutes: _json.containsKey('minutes')
              ? _json['minutes'] as core.int
              : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
      };
}

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
class TimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  core.String? id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  ///
  /// Optional.
  core.String? version;

  TimeZone({
    this.id,
    this.version,
  });

  TimeZone.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (version != null) 'version': version!,
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

  VulnerabilityReport({
    this.name,
    this.updateTime,
    this.vulnerabilities,
  });

  VulnerabilityReport.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          vulnerabilities: _json.containsKey('vulnerabilities')
              ? (_json['vulnerabilities'] as core.List)
                  .map<VulnerabilityReportVulnerability>((value) =>
                      VulnerabilityReportVulnerability.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

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

  VulnerabilityReportVulnerability({
    this.availableInventoryItemIds,
    this.createTime,
    this.details,
    this.installedInventoryItemIds,
    this.updateTime,
  });

  VulnerabilityReportVulnerability.fromJson(core.Map _json)
      : this(
          availableInventoryItemIds:
              _json.containsKey('availableInventoryItemIds')
                  ? (_json['availableInventoryItemIds'] as core.List)
                      .map<core.String>((value) => value as core.String)
                      .toList()
                  : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          details: _json.containsKey('details')
              ? VulnerabilityReportVulnerabilityDetails.fromJson(
                  _json['details'] as core.Map<core.String, core.dynamic>)
              : null,
          installedInventoryItemIds:
              _json.containsKey('installedInventoryItemIds')
                  ? (_json['installedInventoryItemIds'] as core.List)
                      .map<core.String>((value) => value as core.String)
                      .toList()
                  : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

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

  VulnerabilityReportVulnerabilityDetails({
    this.cve,
    this.cvssV2Score,
    this.cvssV3,
    this.description,
    this.references,
    this.severity,
  });

  VulnerabilityReportVulnerabilityDetails.fromJson(core.Map _json)
      : this(
          cve: _json.containsKey('cve') ? _json['cve'] as core.String : null,
          cvssV2Score: _json.containsKey('cvssV2Score')
              ? (_json['cvssV2Score'] as core.num).toDouble()
              : null,
          cvssV3: _json.containsKey('cvssV3')
              ? CVSSv3.fromJson(
                  _json['cvssV3'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          references: _json.containsKey('references')
              ? (_json['references'] as core.List)
                  .map<VulnerabilityReportVulnerabilityDetailsReference>(
                      (value) =>
                          VulnerabilityReportVulnerabilityDetailsReference
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
        );

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
  /// The source of the reference e.g. NVD.
  core.String? source;

  /// The url of the reference.
  core.String? url;

  VulnerabilityReportVulnerabilityDetailsReference({
    this.source,
    this.url,
  });

  VulnerabilityReportVulnerabilityDetailsReference.fromJson(core.Map _json)
      : this(
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!,
        if (url != null) 'url': url!,
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

  /// Week number in a month.
  ///
  /// 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week
  /// of the month.
  ///
  /// Required.
  core.int? weekOrdinal;

  WeekDayOfMonth({
    this.dayOfWeek,
    this.weekOrdinal,
  });

  WeekDayOfMonth.fromJson(core.Map _json)
      : this(
          dayOfWeek: _json.containsKey('dayOfWeek')
              ? _json['dayOfWeek'] as core.String
              : null,
          weekOrdinal: _json.containsKey('weekOrdinal')
              ? _json['weekOrdinal'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
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

  WeeklySchedule.fromJson(core.Map _json)
      : this(
          dayOfWeek: _json.containsKey('dayOfWeek')
              ? _json['dayOfWeek'] as core.String
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

  WindowsUpdateSettings.fromJson(core.Map _json)
      : this(
          classifications: _json.containsKey('classifications')
              ? (_json['classifications'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          excludes: _json.containsKey('excludes')
              ? (_json['excludes'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          exclusivePatches: _json.containsKey('exclusivePatches')
              ? (_json['exclusivePatches'] as core.List)
                  .map<core.String>((value) => value as core.String)
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

  YumSettings.fromJson(core.Map _json)
      : this(
          excludes: _json.containsKey('excludes')
              ? (_json['excludes'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          exclusivePackages: _json.containsKey('exclusivePackages')
              ? (_json['exclusivePackages'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          minimal: _json.containsKey('minimal')
              ? _json['minimal'] as core.bool
              : null,
          security: _json.containsKey('security')
              ? _json['security'] as core.bool
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

  ZypperSettings.fromJson(core.Map _json)
      : this(
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          excludes: _json.containsKey('excludes')
              ? (_json['excludes'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          exclusivePatches: _json.containsKey('exclusivePatches')
              ? (_json['exclusivePatches'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          severities: _json.containsKey('severities')
              ? (_json['severities'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          withOptional: _json.containsKey('withOptional')
              ? _json['withOptional'] as core.bool
              : null,
          withUpdate: _json.containsKey('withUpdate')
              ? _json['withUpdate'] as core.bool
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
