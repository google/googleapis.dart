// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Bigtable Admin API - v2
///
/// Administer your Cloud Bigtable tables and instances.
///
/// For more information, see <https://cloud.google.com/bigtable/>
///
/// Create an instance of [BigtableAdminApi] to access these resources:
///
/// - [OperationsResource]
///   - [OperationsProjectsResource]
///     - [OperationsProjectsOperationsResource]
/// - [ProjectsResource]
///   - [ProjectsInstancesResource]
///     - [ProjectsInstancesAppProfilesResource]
///     - [ProjectsInstancesClustersResource]
///       - [ProjectsInstancesClustersBackupsResource]
///       - [ProjectsInstancesClustersHotTabletsResource]
///     - [ProjectsInstancesTablesResource]
///       - [ProjectsInstancesTablesAuthorizedViewsResource]
///   - [ProjectsLocationsResource]
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

/// Administer your Cloud Bigtable tables and instances.
class BigtableAdminApi {
  /// Administer your Cloud Bigtable tables and clusters
  static const bigtableAdminScope =
      'https://www.googleapis.com/auth/bigtable.admin';

  /// Administer your Cloud Bigtable clusters
  static const bigtableAdminClusterScope =
      'https://www.googleapis.com/auth/bigtable.admin.cluster';

  /// Administer your Cloud Bigtable clusters
  static const bigtableAdminInstanceScope =
      'https://www.googleapis.com/auth/bigtable.admin.instance';

  /// Administer your Cloud Bigtable tables
  static const bigtableAdminTableScope =
      'https://www.googleapis.com/auth/bigtable.admin.table';

  /// Administer your Cloud Bigtable tables and clusters
  static const cloudBigtableAdminScope =
      'https://www.googleapis.com/auth/cloud-bigtable.admin';

  /// Administer your Cloud Bigtable clusters
  static const cloudBigtableAdminClusterScope =
      'https://www.googleapis.com/auth/cloud-bigtable.admin.cluster';

  /// Administer your Cloud Bigtable tables
  static const cloudBigtableAdminTableScope =
      'https://www.googleapis.com/auth/cloud-bigtable.admin.table';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  BigtableAdminApi(http.Client client,
      {core.String rootUrl = 'https://bigtableadmin.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsProjectsResource get projects =>
      OperationsProjectsResource(_requester);

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsProjectsResource {
  final commons.ApiRequester _requester;

  OperationsProjectsOperationsResource get operations =>
      OperationsProjectsOperationsResource(_requester);

  OperationsProjectsResource(commons.ApiRequester client) : _requester = client;
}

class OperationsProjectsOperationsResource {
  final commons.ApiRequester _requester;

  OperationsProjectsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^operations/projects/.*$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesResource get instances =>
      ProjectsInstancesResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesAppProfilesResource get appProfiles =>
      ProjectsInstancesAppProfilesResource(_requester);
  ProjectsInstancesClustersResource get clusters =>
      ProjectsInstancesClustersResource(_requester);
  ProjectsInstancesTablesResource get tables =>
      ProjectsInstancesTablesResource(_requester);

  ProjectsInstancesResource(commons.ApiRequester client) : _requester = client;

  /// Create an instance within a project.
  ///
  /// Note that exactly one of Cluster.serve_nodes and
  /// Cluster.cluster_config.cluster_autoscaling_config can be set. If
  /// serve_nodes is set to non-zero, then the cluster is manually scaled. If
  /// cluster_config.cluster_autoscaling_config is non-empty, then autoscaling
  /// is enabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the project in which to create the
  /// new instance. Values are of the form `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    CreateInstanceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an instance from a project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the instance to be deleted. Values
  /// are of the form `projects/{project}/instances/{instance}`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested instance. Values are
  /// of the form `projects/{project}/instances/{instance}`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> get(
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
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for an instance resource.
  ///
  /// Returns an empty policy if an instance exists but does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about instances in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the project for which a list of
  /// instances is requested. Values are of the form `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageToken] - DEPRECATED: This field is unused and ignored.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstancesResponse> list(
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Partially updates an instance within a project.
  ///
  /// This method can modify all fields of an Instance and is the preferred way
  /// to update an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the instance. Values are of the form
  /// `projects/{project}/instances/a-z+[a-z0-9]`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The subset of Instance fields which should be
  /// replaced. Must be explicitly set.
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
  async.Future<Operation> partialUpdateInstance(
    Instance request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on an instance resource.
  ///
  /// Replaces any existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that the caller has on the specified instance
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an instance within a project.
  ///
  /// This method updates only the display name and type for an Instance. To
  /// update other Instance properties, such as labels, use
  /// PartialUpdateInstance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the instance. Values are of the form
  /// `projects/{project}/instances/a-z+[a-z0-9]`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> update(
    Instance request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesAppProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesAppProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an app profile within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance in which to create
  /// the new app profile. Values are of the form
  /// `projects/{project}/instances/{instance}`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [appProfileId] - Required. The ID to be used when referring to the new app
  /// profile within its instance, e.g., just `myprofile` rather than
  /// `projects/myproject/instances/myinstance/appProfiles/myprofile`.
  ///
  /// [ignoreWarnings] - If true, ignore safety checks when creating the app
  /// profile.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppProfile> create(
    AppProfile request,
    core.String parent, {
    core.String? appProfileId,
    core.bool? ignoreWarnings,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (appProfileId != null) 'appProfileId': [appProfileId],
      if (ignoreWarnings != null) 'ignoreWarnings': ['${ignoreWarnings}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/appProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AppProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an app profile from an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the app profile to be deleted.
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/appProfiles/{app_profile}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/appProfiles/\[^/\]+$`.
  ///
  /// [ignoreWarnings] - Required. If true, ignore safety checks when deleting
  /// the app profile.
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
    core.bool? ignoreWarnings,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ignoreWarnings != null) 'ignoreWarnings': ['${ignoreWarnings}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about an app profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested app profile. Values
  /// are of the form
  /// `projects/{project}/instances/{instance}/appProfiles/{app_profile}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/appProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppProfile> get(
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
    return AppProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about app profiles in an instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance for which a list of
  /// app profiles is requested. Values are of the form
  /// `projects/{project}/instances/{instance}`. Use `{instance} = '-'` to list
  /// AppProfiles for all Instances in a project, e.g.,
  /// `projects/myproject/instances/-`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of results per page. A page_size of zero lets
  /// the server choose the number of items to return. A page_size which is
  /// strictly positive will return at most that many items. A negative
  /// page_size will cause an error. Following the first request, subsequent
  /// paginated calls are not required to pass a page_size. If a page_size is
  /// set in subsequent calls, it must match the page_size given in the first
  /// request.
  ///
  /// [pageToken] - The value of `next_page_token` returned by a previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAppProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAppProfilesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/appProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAppProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an app profile within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the app profile. Values are of the form
  /// `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/appProfiles/\[^/\]+$`.
  ///
  /// [ignoreWarnings] - If true, ignore safety checks when updating the app
  /// profile.
  ///
  /// [updateMask] - Required. The subset of app profile fields which should be
  /// replaced. If unset, all fields will be replaced.
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
    AppProfile request,
    core.String name, {
    core.bool? ignoreWarnings,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ignoreWarnings != null) 'ignoreWarnings': ['${ignoreWarnings}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesClustersResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesClustersBackupsResource get backups =>
      ProjectsInstancesClustersBackupsResource(_requester);
  ProjectsInstancesClustersHotTabletsResource get hotTablets =>
      ProjectsInstancesClustersHotTabletsResource(_requester);

  ProjectsInstancesClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a cluster within an instance.
  ///
  /// Note that exactly one of Cluster.serve_nodes and
  /// Cluster.cluster_config.cluster_autoscaling_config can be set. If
  /// serve_nodes is set to non-zero, then the cluster is manually scaled. If
  /// cluster_config.cluster_autoscaling_config is non-empty, then autoscaling
  /// is enabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance in which to create
  /// the new cluster. Values are of the form
  /// `projects/{project}/instances/{instance}`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [clusterId] - Required. The ID to be used when referring to the new
  /// cluster within its instance, e.g., just `mycluster` rather than
  /// `projects/myproject/instances/myinstance/clusters/mycluster`.
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
    core.String parent, {
    core.String? clusterId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a cluster from an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the cluster to be deleted. Values
  /// are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested cluster. Values are of
  /// the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+$`.
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
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about clusters in an instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance for which a list of
  /// clusters is requested. Values are of the form
  /// `projects/{project}/instances/{instance}`. Use `{instance} = '-'` to list
  /// Clusters for all Instances in a project, e.g.,
  /// `projects/myproject/instances/-`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [pageToken] - DEPRECATED: This field is unused and ignored.
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
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Partially updates a cluster within a project.
  ///
  /// This method is the preferred way to update a Cluster. To enable and update
  /// autoscaling, set cluster_config.cluster_autoscaling_config. When
  /// autoscaling is enabled, serve_nodes is treated as an OUTPUT_ONLY field,
  /// meaning that updates to it are ignored. Note that an update cannot
  /// simultaneously set serve_nodes to non-zero and
  /// cluster_config.cluster_autoscaling_config to non-empty, and also specify
  /// both in the update_mask. To disable autoscaling, clear
  /// cluster_config.cluster_autoscaling_config, and explicitly set a serve_node
  /// count via the update_mask.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the cluster. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/a-z*`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The subset of Cluster fields which should be
  /// replaced.
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
  async.Future<Operation> partialUpdateCluster(
    Cluster request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a cluster within an instance.
  ///
  /// Note that UpdateCluster does not support updating
  /// cluster_config.cluster_autoscaling_config. In order to update it, you must
  /// use PartialUpdateCluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the cluster. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/a-z*`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+$`.
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
  async.Future<Operation> update(
    Cluster request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesClustersBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesClustersBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Copy a Cloud Bigtable backup to a new backup in the destination cluster
  /// located in the destination instance and project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the destination cluster that will contain
  /// the backup copy. The cluster must already exists. Values are of the form:
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+$`.
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
  async.Future<Operation> copy(
    CopyBackupRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/backups:copy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts creating a new Cloud Bigtable Backup.
  ///
  /// The returned backup long-running operation can be used to track creation
  /// of the backup. The metadata field type is CreateBackupMetadata. The
  /// response field type is Backup, if successful. Cancelling the returned
  /// operation will stop the creation and delete the backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. This must be one of the clusters in the instance in
  /// which this table is located. The backup will be stored in this cluster.
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [backupId] - Required. The id of the backup to be created. The `backup_id`
  /// along with the parent `parent` are combined as
  /// {parent}/backups/{backup_id} to create the full backup name, of the form:
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`.
  /// This string must be between 1 and 50 characters in length and match the
  /// regex _a-zA-Z0-9*.
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
    Backup request,
    core.String parent, {
    core.String? backupId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a pending or completed Cloud Bigtable backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup to delete. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+/backups/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metadata on a pending or completed Cloud Bigtable Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> get(
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
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a Table or Backup resource.
  ///
  /// Returns an empty policy if the resource exists but does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+/backups/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Cloud Bigtable backups.
  ///
  /// Returns both completed and pending backups.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The cluster to list backups from. Values are of the
  /// form `projects/{project}/instances/{instance}/clusters/{cluster}`. Use
  /// `{cluster} = '-'` to list backups for all clusters in an instance, e.g.,
  /// `projects/{project}/instances/{instance}/clusters/-`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters backups listed in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be \<,
  /// \>, \<=, \>=, !=, =, or :. Colon ':' represents a HAS operator which is
  /// roughly synonymous with equality. Filter rules are case insensitive. The
  /// fields eligible for filtering are: * `name` * `source_table` * `state` *
  /// `start_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
  /// `end_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
  /// `expire_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
  /// `size_bytes` To filter on multiple expressions, provide each separate
  /// expression within parentheses. By default, each expression is an AND
  /// expression. However, you can include AND, OR, and NOT expressions
  /// explicitly. Some examples of using filters are: * `name:"exact"` --\> The
  /// backup's name is the string "exact". * `name:howl` --\> The backup's name
  /// contains the string "howl". * `source_table:prod` --\> The source_table's
  /// name contains the string "prod". * `state:CREATING` --\> The backup is
  /// pending creation. * `state:READY` --\> The backup is fully created and
  /// ready for use. * `(name:howl) AND (start_time < \"2018-03-28T14:50:00Z\")`
  /// --\> The backup name contains the string "howl" and start_time of the
  /// backup is before 2018-03-28T14:50:00Z. * `size_bytes > 10000000000` --\>
  /// The backup's size is greater than 10GB
  ///
  /// [orderBy] - An expression for specifying the sort order of the results of
  /// the request. The string value should specify one or more fields in Backup.
  /// The full syntax is described at https://aip.dev/132#ordering. Fields
  /// supported are: * name * source_table * expire_time * start_time * end_time
  /// * size_bytes * state For example, "start_time". The default sorting order
  /// is ascending. To specify descending order for the field, a suffix " desc"
  /// should be appended to the field name. For example, "start_time desc".
  /// Redundant space characters in the syntax are insigificant. If order_by is
  /// empty, results will be sorted by `start_time` in descending order starting
  /// from the most recently created backup.
  ///
  /// [pageSize] - Number of backups to be returned in the response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListBackupsResponse to the same `parent` and with the same
  /// `filter`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a pending or completed Cloud Bigtable Backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A globally unique identifier for the backup which cannot be
  /// changed. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/
  /// backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and
  /// 50 characters in length. The backup is stored in the cluster identified by
  /// the prefix of the backup name of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A mask specifying which fields (e.g.
  /// `expire_time`) in the Backup resource should be updated. This mask is
  /// relative to the Backup resource, not to the request message. The field
  /// mask must always be specified; this prevents any future fields from being
  /// erased accidentally by clients that do not know about them.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> patch(
    Backup request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on a Table or Backup resource.
  ///
  /// Replaces any existing policy.
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+/backups/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that the caller has on the specified Table or Backup
  /// resource.
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+/backups/\[^/\]+$`.
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
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

class ProjectsInstancesClustersHotTabletsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesClustersHotTabletsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists hot tablets in a cluster, within the time range provided.
  ///
  /// Hot tablets are ordered based on CPU usage.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The cluster name to list hot tablets. Value is in the
  /// following form:
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [endTime] - The end time to list hot tablets.
  ///
  /// [pageSize] - Maximum number of results per page. A page_size that is empty
  /// or zero lets the server choose the number of items to return. A page_size
  /// which is strictly positive will return at most that many items. A negative
  /// page_size will cause an error. Following the first request, subsequent
  /// paginated calls do not need a page_size field. If a page_size is set in
  /// subsequent calls, it must match the page_size given in the first request.
  ///
  /// [pageToken] - The value of `next_page_token` returned by a previous call.
  ///
  /// [startTime] - The start time to list hot tablets. The hot tablets in the
  /// response will have start times between the requested start time and end
  /// time. Start time defaults to Now if it is unset, and end time defaults to
  /// Now - 24 hours if it is unset. The start time should be less than the end
  /// time, and the maximum allowed time range between start time and end time
  /// is 48 hours. Start time and end time should have values between Now and
  /// Now - 14 days.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHotTabletsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHotTabletsResponse> list(
    core.String parent, {
    core.String? endTime,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/hotTablets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHotTabletsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesTablesResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesTablesAuthorizedViewsResource get authorizedViews =>
      ProjectsInstancesTablesAuthorizedViewsResource(_requester);

  ProjectsInstancesTablesResource(commons.ApiRequester client)
      : _requester = client;

  /// Checks replication consistency based on a consistency token, that is, if
  /// replication has caught up based on the conditions specified in the token
  /// and the check request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the Table for which to check
  /// replication consistency. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckConsistencyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckConsistencyResponse> checkConsistency(
    CheckConsistencyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':checkConsistency';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CheckConsistencyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new table in the specified instance.
  ///
  /// The table can be created with a full set of initial column families,
  /// specified in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance in which to create
  /// the table. Values are of the form
  /// `projects/{project}/instances/{instance}`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> create(
    CreateTableRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tables';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Permanently deletes a specified table and all of its data.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the table to be deleted. Values are
  /// of the form `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Permanently drop/delete a row range from a specified table.
  ///
  /// The request can specify whether to delete all rows in a table, or only
  /// those that match a particular prefix. Note that row key prefixes used here
  /// are treated as service data. For more information about how service data
  /// is handled, see the
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the table on which to drop a range
  /// of rows. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
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
  async.Future<Empty> dropRowRange(
    DropRowRangeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':dropRowRange';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates a consistency token for a Table, which can be used in
  /// CheckConsistency to check whether mutations to the table that finished
  /// before this call started have been replicated.
  ///
  /// The tokens will be available for 90 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the Table for which to create a
  /// consistency token. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateConsistencyTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateConsistencyTokenResponse> generateConsistencyToken(
    GenerateConsistencyTokenRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$name') + ':generateConsistencyToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateConsistencyTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metadata information about the specified table.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested table. Values are of
  /// the form `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [view] - The view to be applied to the returned table's fields. Defaults
  /// to `SCHEMA_VIEW` if unspecified.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Uses the default view for each method as documented
  /// in its request.
  /// - "NAME_ONLY" : Only populates `name`.
  /// - "SCHEMA_VIEW" : Only populates `name` and fields related to the table's
  /// schema.
  /// - "REPLICATION_VIEW" : Only populates `name` and fields related to the
  /// table's replication state.
  /// - "ENCRYPTION_VIEW" : Only populates `name` and fields related to the
  /// table's encryption state.
  /// - "STATS_VIEW" : Only populates `name` and fields related to the table's
  /// stats (e.g. TableStats and ColumnFamilyStats).
  /// - "FULL" : Populates all fields except for stats. See STATS_VIEW to
  /// request stats.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a Table or Backup resource.
  ///
  /// Returns an empty policy if the resource exists but does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all tables served from a specified instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance for which tables
  /// should be listed. Values are of the form
  /// `projects/{project}/instances/{instance}`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of results per page. A page_size of zero lets
  /// the server choose the number of items to return. A page_size which is
  /// strictly positive will return at most that many items. A negative
  /// page_size will cause an error. Following the first request, subsequent
  /// paginated calls are not required to pass a page_size. If a page_size is
  /// set in subsequent calls, it must match the page_size given in the first
  /// request.
  ///
  /// [pageToken] - The value of `next_page_token` returned by a previous call.
  ///
  /// [view] - The view to be applied to the returned tables' fields. Only
  /// NAME_ONLY view (default), REPLICATION_VIEW and ENCRYPTION_VIEW are
  /// supported.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Uses the default view for each method as documented
  /// in its request.
  /// - "NAME_ONLY" : Only populates `name`.
  /// - "SCHEMA_VIEW" : Only populates `name` and fields related to the table's
  /// schema.
  /// - "REPLICATION_VIEW" : Only populates `name` and fields related to the
  /// table's replication state.
  /// - "ENCRYPTION_VIEW" : Only populates `name` and fields related to the
  /// table's encryption state.
  /// - "STATS_VIEW" : Only populates `name` and fields related to the table's
  /// stats (e.g. TableStats and ColumnFamilyStats).
  /// - "FULL" : Populates all fields except for stats. See STATS_VIEW to
  /// request stats.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTablesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tables';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTablesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Performs a series of column family modifications on the specified table.
  ///
  /// Either all or none of the modifications will occur before this method
  /// returns, but data requests received prior to that point may see a table
  /// where only some modifications have taken effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the table whose families should be
  /// modified. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> modifyColumnFamilies(
    ModifyColumnFamiliesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':modifyColumnFamilies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a specified table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the table. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views:
  /// `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update. A mask specifying
  /// which fields (e.g. `change_stream_config`) in the `table` field should be
  /// updated. This mask is relative to the `table` field, not to the request
  /// message. The wildcard (*) path is currently not supported. Currently
  /// UpdateTable is only supported for the following fields: *
  /// `change_stream_config` * `change_stream_config.retention_period` *
  /// `deletion_protection` If `column_families` is set in `update_mask`, it
  /// will return an UNIMPLEMENTED error.
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
    Table request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a new table by restoring from a completed backup.
  ///
  /// The returned table long-running operation can be used to track the
  /// progress of the operation, and to cancel it. The metadata field type is
  /// RestoreTableMetadata. The response type is Table, if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the instance in which to create the
  /// restored table. Values are of the form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> restore(
    RestoreTableRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tables:restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on a Table or Backup resource.
  ///
  /// Replaces any existing policy.
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that the caller has on the specified Table or Backup
  /// resource.
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
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
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a specified table which was accidentally deleted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the table to be restored. Values are
  /// of the form `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeleteTableRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesTablesAuthorizedViewsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesTablesAuthorizedViewsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new AuthorizedView in a table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. This is the name of the table the AuthorizedView
  /// belongs to. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [authorizedViewId] - Required. The id of the AuthorizedView to create.
  /// This AuthorizedView must not already exist. The `authorized_view_id`
  /// appended to `parent` forms the full AuthorizedView name of the form
  /// `projects/{project}/instances/{instance}/tables/{table}/authorizedView/{authorized_view}`.
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
    AuthorizedView request,
    core.String parent, {
    core.String? authorizedViewId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (authorizedViewId != null) 'authorizedViewId': [authorizedViewId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/authorizedViews';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Permanently deletes a specified AuthorizedView.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the AuthorizedView to be deleted.
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}/authorizedViews/{authorized_view}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+/authorizedViews/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the AuthorizedView. If an etag is
  /// provided and does not match the current etag of the AuthorizedView,
  /// deletion will be blocked and an ABORTED error will be returned.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information from a specified AuthorizedView.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested AuthorizedView. Values
  /// are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}/authorizedViews/{authorized_view}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+/authorizedViews/\[^/\]+$`.
  ///
  /// [view] - Optional. The resource_view to be applied to the returned
  /// AuthorizedView's fields. Default to BASIC.
  /// Possible string values are:
  /// - "RESPONSE_VIEW_UNSPECIFIED" : Uses the default view for each method as
  /// documented in the request.
  /// - "NAME_ONLY" : Only populates `name`.
  /// - "BASIC" : Only populates the AuthorizedView's basic metadata. This
  /// includes: name, deletion_protection, etag.
  /// - "FULL" : Populates every fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedView].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedView> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuthorizedView.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a Table or Backup resource.
  ///
  /// Returns an empty policy if the resource exists but does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+/authorizedViews/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all AuthorizedViews from a specific table.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the table for which
  /// AuthorizedViews should be listed. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of results per page. A page_size of
  /// zero lets the server choose the number of items to return. A page_size
  /// which is strictly positive will return at most that many items. A negative
  /// page_size will cause an error. Following the first request, subsequent
  /// paginated calls are not required to pass a page_size. If a page_size is
  /// set in subsequent calls, it must match the page_size given in the first
  /// request.
  ///
  /// [pageToken] - Optional. The value of `next_page_token` returned by a
  /// previous call.
  ///
  /// [view] - Optional. The resource_view to be applied to the returned views'
  /// fields. Default to NAME_ONLY.
  /// Possible string values are:
  /// - "RESPONSE_VIEW_UNSPECIFIED" : Uses the default view for each method as
  /// documented in the request.
  /// - "NAME_ONLY" : Only populates `name`.
  /// - "BASIC" : Only populates the AuthorizedView's basic metadata. This
  /// includes: name, deletion_protection, etag.
  /// - "FULL" : Populates every fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedViewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedViewsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/authorizedViews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedViewsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an AuthorizedView in a table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of this AuthorizedView. Values are of the
  /// form
  /// `projects/{project}/instances/{instance}/tables/{table}/authorizedViews/{authorized_view}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+/authorizedViews/\[^/\]+$`.
  ///
  /// [ignoreWarnings] - Optional. If true, ignore the safety checks when
  /// updating the AuthorizedView.
  ///
  /// [updateMask] - Optional. The list of fields to update. A mask specifying
  /// which fields in the AuthorizedView resource should be updated. This mask
  /// is relative to the AuthorizedView resource, not to the request message. A
  /// field will be overwritten if it is in the mask. If empty, all fields set
  /// in the request will be overwritten. A special value `*` means to overwrite
  /// all fields (including fields not set in the request).
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
    AuthorizedView request,
    core.String name, {
    core.bool? ignoreWarnings,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ignoreWarnings != null) 'ignoreWarnings': ['${ignoreWarnings}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on a Table or Backup resource.
  ///
  /// Replaces any existing policy.
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+/authorizedViews/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that the caller has on the specified Table or Backup
  /// resource.
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/tables/\[^/\]+/authorizedViews/\[^/\]+$`.
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
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A configuration object describing how Cloud Bigtable should treat traffic
/// from a particular end user application.
class AppProfile {
  /// Specifies that this app profile is intended for read-only usage via the
  /// Data Boost feature.
  DataBoostIsolationReadOnly? dataBoostIsolationReadOnly;

  /// Long form description of the use case for this AppProfile.
  core.String? description;

  /// Strongly validated etag for optimistic concurrency control.
  ///
  /// Preserve the value returned from `GetAppProfile` when calling
  /// `UpdateAppProfile` to fail the request if there has been a modification in
  /// the mean time. The `update_mask` of the request need not include `etag`
  /// for this protection to apply. See
  /// [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and
  /// [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more
  /// details.
  core.String? etag;

  /// Use a multi-cluster routing policy.
  MultiClusterRoutingUseAny? multiClusterRoutingUseAny;

  /// The unique name of the app profile.
  ///
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  core.String? name;

  /// This field has been deprecated in favor of `standard_isolation.priority`.
  ///
  /// If you set this field, `standard_isolation.priority` will be set instead.
  /// The priority of requests sent using this app profile.
  /// Possible string values are:
  /// - "PRIORITY_UNSPECIFIED" : Default value. Mapped to PRIORITY_HIGH (the
  /// legacy behavior) on creation.
  /// - "PRIORITY_LOW"
  /// - "PRIORITY_MEDIUM"
  /// - "PRIORITY_HIGH"
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? priority;

  /// Use a single-cluster routing policy.
  SingleClusterRouting? singleClusterRouting;

  /// The standard options used for isolating this app profile's traffic from
  /// other use cases.
  StandardIsolation? standardIsolation;

  AppProfile({
    this.dataBoostIsolationReadOnly,
    this.description,
    this.etag,
    this.multiClusterRoutingUseAny,
    this.name,
    this.priority,
    this.singleClusterRouting,
    this.standardIsolation,
  });

  AppProfile.fromJson(core.Map json_)
      : this(
          dataBoostIsolationReadOnly:
              json_.containsKey('dataBoostIsolationReadOnly')
                  ? DataBoostIsolationReadOnly.fromJson(
                      json_['dataBoostIsolationReadOnly']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          multiClusterRoutingUseAny:
              json_.containsKey('multiClusterRoutingUseAny')
                  ? MultiClusterRoutingUseAny.fromJson(
                      json_['multiClusterRoutingUseAny']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
          singleClusterRouting: json_.containsKey('singleClusterRouting')
              ? SingleClusterRouting.fromJson(json_['singleClusterRouting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          standardIsolation: json_.containsKey('standardIsolation')
              ? StandardIsolation.fromJson(json_['standardIsolation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataBoostIsolationReadOnly != null)
          'dataBoostIsolationReadOnly': dataBoostIsolationReadOnly!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (multiClusterRoutingUseAny != null)
          'multiClusterRoutingUseAny': multiClusterRoutingUseAny!,
        if (name != null) 'name': name!,
        if (priority != null) 'priority': priority!,
        if (singleClusterRouting != null)
          'singleClusterRouting': singleClusterRouting!,
        if (standardIsolation != null) 'standardIsolation': standardIsolation!,
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

/// Placeholder for admin API work while we work out the internals.
class AuthorizedView {
  /// Set to true to make the AuthorizedView protected against deletion.
  ///
  /// The parent Table and containing Instance cannot be deleted if an
  /// AuthorizedView has this bit set.
  core.bool? deletionProtection;

  /// The etag for this AuthorizedView.
  ///
  /// If this is provided on update, it must match the server's etag. The server
  /// returns ABORTED error on a mismatched etag.
  core.String? etag;

  /// Identifier.
  ///
  /// The name of this AuthorizedView. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}/authorizedViews/{authorized_view}`
  core.String? name;

  /// An AuthorizedView permitting access to an explicit subset of a Table.
  GoogleBigtableAdminV2AuthorizedViewSubsetView? subsetView;

  AuthorizedView({
    this.deletionProtection,
    this.etag,
    this.name,
    this.subsetView,
  });

  AuthorizedView.fromJson(core.Map json_)
      : this(
          deletionProtection: json_.containsKey('deletionProtection')
              ? json_['deletionProtection'] as core.bool
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          subsetView: json_.containsKey('subsetView')
              ? GoogleBigtableAdminV2AuthorizedViewSubsetView.fromJson(
                  json_['subsetView'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletionProtection != null)
          'deletionProtection': deletionProtection!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (subsetView != null) 'subsetView': subsetView!,
      };
}

/// Defines an automated backup policy for a table
class AutomatedBackupPolicy {
  /// How frequently automated backups should occur.
  ///
  /// The only supported value at this time is 24 hours.
  ///
  /// Required.
  core.String? frequency;

  /// How long the automated backups should be retained.
  ///
  /// The only supported value at this time is 3 days.
  ///
  /// Required.
  core.String? retentionPeriod;

  AutomatedBackupPolicy({
    this.frequency,
    this.retentionPeriod,
  });

  AutomatedBackupPolicy.fromJson(core.Map json_)
      : this(
          frequency: json_.containsKey('frequency')
              ? json_['frequency'] as core.String
              : null,
          retentionPeriod: json_.containsKey('retentionPeriod')
              ? json_['retentionPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frequency != null) 'frequency': frequency!,
        if (retentionPeriod != null) 'retentionPeriod': retentionPeriod!,
      };
}

/// Limits for the number of nodes a Cluster can autoscale up/down to.
class AutoscalingLimits {
  /// Maximum number of nodes to scale up to.
  ///
  /// Required.
  core.int? maxServeNodes;

  /// Minimum number of nodes to scale down to.
  ///
  /// Required.
  core.int? minServeNodes;

  AutoscalingLimits({
    this.maxServeNodes,
    this.minServeNodes,
  });

  AutoscalingLimits.fromJson(core.Map json_)
      : this(
          maxServeNodes: json_.containsKey('maxServeNodes')
              ? json_['maxServeNodes'] as core.int
              : null,
          minServeNodes: json_.containsKey('minServeNodes')
              ? json_['minServeNodes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxServeNodes != null) 'maxServeNodes': maxServeNodes!,
        if (minServeNodes != null) 'minServeNodes': minServeNodes!,
      };
}

/// The Autoscaling targets for a Cluster.
///
/// These determine the recommended nodes.
class AutoscalingTargets {
  /// The cpu utilization that the Autoscaler should be trying to achieve.
  ///
  /// This number is on a scale from 0 (no utilization) to 100 (total
  /// utilization), and is limited between 10 and 80, otherwise it will return
  /// INVALID_ARGUMENT error.
  core.int? cpuUtilizationPercent;

  /// The storage utilization that the Autoscaler should be trying to achieve.
  ///
  /// This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD
  /// cluster and between 8192 (8TiB) and 16384 (16TiB) for an HDD cluster,
  /// otherwise it will return INVALID_ARGUMENT error. If this value is set to
  /// 0, it will be treated as if it were set to the default value: 2560 for
  /// SSD, 8192 for HDD.
  core.int? storageUtilizationGibPerNode;

  AutoscalingTargets({
    this.cpuUtilizationPercent,
    this.storageUtilizationGibPerNode,
  });

  AutoscalingTargets.fromJson(core.Map json_)
      : this(
          cpuUtilizationPercent: json_.containsKey('cpuUtilizationPercent')
              ? json_['cpuUtilizationPercent'] as core.int
              : null,
          storageUtilizationGibPerNode:
              json_.containsKey('storageUtilizationGibPerNode')
                  ? json_['storageUtilizationGibPerNode'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuUtilizationPercent != null)
          'cpuUtilizationPercent': cpuUtilizationPercent!,
        if (storageUtilizationGibPerNode != null)
          'storageUtilizationGibPerNode': storageUtilizationGibPerNode!,
      };
}

/// A backup of a Cloud Bigtable table.
class Backup {
  /// The encryption information for the backup.
  ///
  /// Output only.
  EncryptionInfo? encryptionInfo;

  /// `end_time` is the time that the backup was finished.
  ///
  /// The row data in the backup will be no newer than this timestamp.
  ///
  /// Output only.
  core.String? endTime;

  /// The expiration time of the backup, with microseconds granularity that must
  /// be at least 6 hours and at most 90 days from the time the request is
  /// received.
  ///
  /// Once the `expire_time` has passed, Cloud Bigtable will delete the backup
  /// and free the resources used by the backup.
  ///
  /// Required.
  core.String? expireTime;

  /// A globally unique identifier for the backup which cannot be changed.
  ///
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/
  /// backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and
  /// 50 characters in length. The backup is stored in the cluster identified by
  /// the prefix of the backup name of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  core.String? name;

  /// Size of the backup in bytes.
  ///
  /// Output only.
  core.String? sizeBytes;

  /// Name of the backup from which this backup was copied.
  ///
  /// If a backup is not created by copying a backup, this field will be empty.
  /// Values are of the form: projects//instances//clusters//backups/
  ///
  /// Output only.
  core.String? sourceBackup;

  /// Name of the table from which this backup was created.
  ///
  /// This needs to be in the same instance as the backup. Values are of the
  /// form `projects/{project}/instances/{instance}/tables/{source_table}`.
  ///
  /// Required. Immutable.
  core.String? sourceTable;

  /// `start_time` is the time that the backup was started (i.e. approximately
  /// the time the CreateBackup request is received).
  ///
  /// The row data in this backup will be no older than this timestamp.
  ///
  /// Output only.
  core.String? startTime;

  /// The current state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "CREATING" : The pending backup is still being created. Operations on
  /// the backup may fail with `FAILED_PRECONDITION` in this state.
  /// - "READY" : The backup is complete and ready for use.
  core.String? state;

  Backup({
    this.encryptionInfo,
    this.endTime,
    this.expireTime,
    this.name,
    this.sizeBytes,
    this.sourceBackup,
    this.sourceTable,
    this.startTime,
    this.state,
  });

  Backup.fromJson(core.Map json_)
      : this(
          encryptionInfo: json_.containsKey('encryptionInfo')
              ? EncryptionInfo.fromJson(json_['encryptionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.String
              : null,
          sourceBackup: json_.containsKey('sourceBackup')
              ? json_['sourceBackup'] as core.String
              : null,
          sourceTable: json_.containsKey('sourceTable')
              ? json_['sourceTable'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (endTime != null) 'endTime': endTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (sourceBackup != null) 'sourceBackup': sourceBackup!,
        if (sourceTable != null) 'sourceTable': sourceTable!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// Information about a backup.
class BackupInfo {
  /// Name of the backup.
  ///
  /// Output only.
  core.String? backup;

  /// This time that the backup was finished.
  ///
  /// Row data in the backup will be no newer than this timestamp.
  ///
  /// Output only.
  core.String? endTime;

  /// Name of the backup from which this backup was copied.
  ///
  /// If a backup is not created by copying a backup, this field will be empty.
  /// Values are of the form: projects//instances//clusters//backups/
  ///
  /// Output only.
  core.String? sourceBackup;

  /// Name of the table the backup was created from.
  ///
  /// Output only.
  core.String? sourceTable;

  /// The time that the backup was started.
  ///
  /// Row data in the backup will be no older than this timestamp.
  ///
  /// Output only.
  core.String? startTime;

  BackupInfo({
    this.backup,
    this.endTime,
    this.sourceBackup,
    this.sourceTable,
    this.startTime,
  });

  BackupInfo.fromJson(core.Map json_)
      : this(
          backup: json_.containsKey('backup')
              ? json_['backup'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          sourceBackup: json_.containsKey('sourceBackup')
              ? json_['sourceBackup'] as core.String
              : null,
          sourceTable: json_.containsKey('sourceTable')
              ? json_['sourceTable'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (endTime != null) 'endTime': endTime!,
        if (sourceBackup != null) 'sourceBackup': sourceBackup!,
        if (sourceTable != null) 'sourceTable': sourceTable!,
        if (startTime != null) 'startTime': startTime!,
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

/// Change stream configuration.
class ChangeStreamConfig {
  /// How long the change stream should be retained.
  ///
  /// Change stream data older than the retention period will not be returned
  /// when reading the change stream from the table. Values must be at least 1
  /// day and at most 7 days, and will be truncated to microsecond granularity.
  core.String? retentionPeriod;

  ChangeStreamConfig({
    this.retentionPeriod,
  });

  ChangeStreamConfig.fromJson(core.Map json_)
      : this(
          retentionPeriod: json_.containsKey('retentionPeriod')
              ? json_['retentionPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retentionPeriod != null) 'retentionPeriod': retentionPeriod!,
      };
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
class CheckConsistencyRequest {
  /// The token created using GenerateConsistencyToken for the Table.
  ///
  /// Required.
  core.String? consistencyToken;

  /// Checks that reads using an app profile with `DataBoostIsolationReadOnly`
  /// can see all writes committed before the token was created, but only if the
  /// read and write target the same cluster.
  DataBoostReadLocalWrites? dataBoostReadLocalWrites;

  /// Checks that reads using an app profile with `StandardIsolation` can see
  /// all writes committed before the token was created, even if the read and
  /// write target different clusters.
  StandardReadRemoteWrites? standardReadRemoteWrites;

  CheckConsistencyRequest({
    this.consistencyToken,
    this.dataBoostReadLocalWrites,
    this.standardReadRemoteWrites,
  });

  CheckConsistencyRequest.fromJson(core.Map json_)
      : this(
          consistencyToken: json_.containsKey('consistencyToken')
              ? json_['consistencyToken'] as core.String
              : null,
          dataBoostReadLocalWrites:
              json_.containsKey('dataBoostReadLocalWrites')
                  ? DataBoostReadLocalWrites.fromJson(
                      json_['dataBoostReadLocalWrites']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          standardReadRemoteWrites:
              json_.containsKey('standardReadRemoteWrites')
                  ? StandardReadRemoteWrites.fromJson(
                      json_['standardReadRemoteWrites']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consistencyToken != null) 'consistencyToken': consistencyToken!,
        if (dataBoostReadLocalWrites != null)
          'dataBoostReadLocalWrites': dataBoostReadLocalWrites!,
        if (standardReadRemoteWrites != null)
          'standardReadRemoteWrites': standardReadRemoteWrites!,
      };
}

/// Response message for
/// google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
class CheckConsistencyResponse {
  /// True only if the token is consistent.
  ///
  /// A token is consistent if replication has caught up with the restrictions
  /// specified in the request.
  core.bool? consistent;

  CheckConsistencyResponse({
    this.consistent,
  });

  CheckConsistencyResponse.fromJson(core.Map json_)
      : this(
          consistent: json_.containsKey('consistent')
              ? json_['consistent'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consistent != null) 'consistent': consistent!,
      };
}

/// A resizable group of nodes in a particular cloud location, capable of
/// serving all Tables in the parent Instance.
class Cluster {
  /// Configuration for this cluster.
  ClusterConfig? clusterConfig;

  /// The type of storage used by this cluster to serve its parent instance's
  /// tables, unless explicitly overridden.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "STORAGE_TYPE_UNSPECIFIED" : The user did not specify a storage type.
  /// - "SSD" : Flash (SSD) storage should be used.
  /// - "HDD" : Magnetic drive (HDD) storage should be used.
  core.String? defaultStorageType;

  /// The encryption configuration for CMEK-protected clusters.
  ///
  /// Immutable.
  EncryptionConfig? encryptionConfig;

  /// The location where this cluster's nodes and storage reside.
  ///
  /// For best performance, clients should be located as close as possible to
  /// this cluster. Currently only zones are supported, so values should be of
  /// the form `projects/{project}/locations/{zone}`.
  ///
  /// Immutable.
  core.String? location;

  /// The unique name of the cluster.
  ///
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/a-z*`.
  core.String? name;

  /// The number of nodes in the cluster.
  ///
  /// If no value is set, Cloud Bigtable automatically allocates nodes based on
  /// your data footprint and optimized for 50% storage utilization.
  core.int? serveNodes;

  /// The current state of the cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The state of the cluster could not be determined.
  /// - "READY" : The cluster has been successfully created and is ready to
  /// serve requests.
  /// - "CREATING" : The cluster is currently being created, and may be
  /// destroyed if the creation process encounters an error. A cluster may not
  /// be able to serve requests while being created.
  /// - "RESIZING" : The cluster is currently being resized, and may revert to
  /// its previous node count if the process encounters an error. A cluster is
  /// still capable of serving requests while being resized, but may exhibit
  /// performance as if its number of allocated nodes is between the starting
  /// and requested states.
  /// - "DISABLED" : The cluster has no backing nodes. The data (tables) still
  /// exist, but no operations can be performed on the cluster.
  core.String? state;

  Cluster({
    this.clusterConfig,
    this.defaultStorageType,
    this.encryptionConfig,
    this.location,
    this.name,
    this.serveNodes,
    this.state,
  });

  Cluster.fromJson(core.Map json_)
      : this(
          clusterConfig: json_.containsKey('clusterConfig')
              ? ClusterConfig.fromJson(
                  json_['clusterConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          defaultStorageType: json_.containsKey('defaultStorageType')
              ? json_['defaultStorageType'] as core.String
              : null,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serveNodes: json_.containsKey('serveNodes')
              ? json_['serveNodes'] as core.int
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterConfig != null) 'clusterConfig': clusterConfig!,
        if (defaultStorageType != null)
          'defaultStorageType': defaultStorageType!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (serveNodes != null) 'serveNodes': serveNodes!,
        if (state != null) 'state': state!,
      };
}

/// Autoscaling config for a cluster.
class ClusterAutoscalingConfig {
  /// Autoscaling limits for this cluster.
  ///
  /// Required.
  AutoscalingLimits? autoscalingLimits;

  /// Autoscaling targets for this cluster.
  ///
  /// Required.
  AutoscalingTargets? autoscalingTargets;

  ClusterAutoscalingConfig({
    this.autoscalingLimits,
    this.autoscalingTargets,
  });

  ClusterAutoscalingConfig.fromJson(core.Map json_)
      : this(
          autoscalingLimits: json_.containsKey('autoscalingLimits')
              ? AutoscalingLimits.fromJson(json_['autoscalingLimits']
                  as core.Map<core.String, core.dynamic>)
              : null,
          autoscalingTargets: json_.containsKey('autoscalingTargets')
              ? AutoscalingTargets.fromJson(json_['autoscalingTargets']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscalingLimits != null) 'autoscalingLimits': autoscalingLimits!,
        if (autoscalingTargets != null)
          'autoscalingTargets': autoscalingTargets!,
      };
}

/// Configuration for a cluster.
class ClusterConfig {
  /// Autoscaling configuration for this cluster.
  ClusterAutoscalingConfig? clusterAutoscalingConfig;

  ClusterConfig({
    this.clusterAutoscalingConfig,
  });

  ClusterConfig.fromJson(core.Map json_)
      : this(
          clusterAutoscalingConfig:
              json_.containsKey('clusterAutoscalingConfig')
                  ? ClusterAutoscalingConfig.fromJson(
                      json_['clusterAutoscalingConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterAutoscalingConfig != null)
          'clusterAutoscalingConfig': clusterAutoscalingConfig!,
      };
}

/// The state of a table's data in a particular cluster.
class ClusterState {
  /// The encryption information for the table in this cluster.
  ///
  /// If the encryption key protecting this resource is customer managed, then
  /// its version can be rotated in Cloud Key Management Service (Cloud KMS).
  /// The primary version of the key and its status will be reflected here when
  /// changes propagate from Cloud KMS.
  ///
  /// Output only.
  core.List<EncryptionInfo>? encryptionInfo;

  /// The state of replication for the table in this cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The replication state of the table is unknown in
  /// this cluster.
  /// - "INITIALIZING" : The cluster was recently created, and the table must
  /// finish copying over pre-existing data from other clusters before it can
  /// begin receiving live replication updates and serving Data API requests.
  /// - "PLANNED_MAINTENANCE" : The table is temporarily unable to serve Data
  /// API requests from this cluster due to planned internal maintenance.
  /// - "UNPLANNED_MAINTENANCE" : The table is temporarily unable to serve Data
  /// API requests from this cluster due to unplanned or emergency maintenance.
  /// - "READY" : The table can serve Data API requests from this cluster.
  /// Depending on replication delay, reads may not immediately reflect the
  /// state of the table in other clusters.
  /// - "READY_OPTIMIZING" : The table is fully created and ready for use after
  /// a restore, and is being optimized for performance. When optimizations are
  /// complete, the table will transition to `READY` state.
  core.String? replicationState;

  ClusterState({
    this.encryptionInfo,
    this.replicationState,
  });

  ClusterState.fromJson(core.Map json_)
      : this(
          encryptionInfo: json_.containsKey('encryptionInfo')
              ? (json_['encryptionInfo'] as core.List)
                  .map((value) => EncryptionInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          replicationState: json_.containsKey('replicationState')
              ? json_['replicationState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (replicationState != null) 'replicationState': replicationState!,
      };
}

/// A set of columns within a table which share a common configuration.
class ColumnFamily {
  /// Garbage collection rule specified as a protobuf.
  ///
  /// Must serialize to at most 500 bytes. NOTE: Garbage collection executes
  /// opportunistically in the background, and so it's possible for reads to
  /// return a cell even if it matches the active GC expression for its family.
  GcRule? gcRule;

  /// Only available with STATS_VIEW, this includes summary statistics about
  /// column family contents.
  ///
  /// For statistics over an entire table, see TableStats above.
  ///
  /// Output only.
  ColumnFamilyStats? stats;

  /// The type of data stored in each of this family's cell values, including
  /// its full encoding.
  ///
  /// If omitted, the family only serves raw untyped bytes. For now, only the
  /// `Aggregate` type is supported. `Aggregate` can only be set at family
  /// creation and is immutable afterwards. If `value_type` is `Aggregate`,
  /// written data must be compatible with: * `value_type.input_type` for
  /// `AddInput` mutations
  Type? valueType;

  ColumnFamily({
    this.gcRule,
    this.stats,
    this.valueType,
  });

  ColumnFamily.fromJson(core.Map json_)
      : this(
          gcRule: json_.containsKey('gcRule')
              ? GcRule.fromJson(
                  json_['gcRule'] as core.Map<core.String, core.dynamic>)
              : null,
          stats: json_.containsKey('stats')
              ? ColumnFamilyStats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>)
              : null,
          valueType: json_.containsKey('valueType')
              ? Type.fromJson(
                  json_['valueType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcRule != null) 'gcRule': gcRule!,
        if (stats != null) 'stats': stats!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Approximate statistics related to a single column family within a table.
///
/// This information may change rapidly, interpreting these values at a point in
/// time may already preset out-of-date information. Everything below is
/// approximate, unless otherwise specified.
class ColumnFamilyStats {
  /// How many cells are present per column qualifier in this column family,
  /// averaged over all rows containing any column in the column family.
  ///
  /// e.g. For column family "family" in a table with 3 rows: * A row with 3
  /// cells in "family:col" and 1 cell in "other:col" (3 cells / 1 column in
  /// "family") * A row with 1 cell in "family:col", 7 cells in
  /// "family:other_col", and 7 cells in "other:data" (8 cells / 2 columns in
  /// "family") * A row with 3 cells in "other:col" (0 columns in "family",
  /// "family" not present) would report (3 + 8 + 0)/(1 + 2 + 0) = 3.66 in this
  /// field.
  core.double? averageCellsPerColumn;

  /// How many column qualifiers are present in this column family, averaged
  /// over all rows in the table.
  ///
  /// e.g. For column family "family" in a table with 3 rows: * A row with cells
  /// in "family:col" and "other:col" (1 column in "family") * A row with cells
  /// in "family:col", "family:other_col", and "other:data" (2 columns in
  /// "family") * A row with cells in "other:col" (0 columns in "family",
  /// "family" not present) would report (1 + 2 + 0)/3 = 1.5 in this field.
  core.double? averageColumnsPerRow;

  /// How much space the data in the column family occupies.
  ///
  /// This is roughly how many bytes would be needed to read the contents of the
  /// entire column family (e.g. by streaming all contents out).
  core.String? logicalDataBytes;

  ColumnFamilyStats({
    this.averageCellsPerColumn,
    this.averageColumnsPerRow,
    this.logicalDataBytes,
  });

  ColumnFamilyStats.fromJson(core.Map json_)
      : this(
          averageCellsPerColumn: json_.containsKey('averageCellsPerColumn')
              ? (json_['averageCellsPerColumn'] as core.num).toDouble()
              : null,
          averageColumnsPerRow: json_.containsKey('averageColumnsPerRow')
              ? (json_['averageColumnsPerRow'] as core.num).toDouble()
              : null,
          logicalDataBytes: json_.containsKey('logicalDataBytes')
              ? json_['logicalDataBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageCellsPerColumn != null)
          'averageCellsPerColumn': averageCellsPerColumn!,
        if (averageColumnsPerRow != null)
          'averageColumnsPerRow': averageColumnsPerRow!,
        if (logicalDataBytes != null) 'logicalDataBytes': logicalDataBytes!,
      };
}

/// The request for CopyBackup.
class CopyBackupRequest {
  /// The id of the new backup.
  ///
  /// The `backup_id` along with `parent` are combined as
  /// {parent}/backups/{backup_id} to create the full backup name, of the form:
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`.
  /// This string must be between 1 and 50 characters in length and match the
  /// regex _a-zA-Z0-9*.
  ///
  /// Required.
  core.String? backupId;

  /// The expiration time of the copied backup with microsecond granularity that
  /// must be at least 6 hours and at most 30 days from the time the request is
  /// received.
  ///
  /// Once the `expire_time` has passed, Cloud Bigtable will delete the backup
  /// and free the resources used by the backup.
  ///
  /// Required.
  core.String? expireTime;

  /// The source backup to be copied from.
  ///
  /// The source backup needs to be in READY state for it to be copied. Copying
  /// a copied backup is not allowed. Once CopyBackup is in progress, the source
  /// backup cannot be deleted or cleaned up on expiration until CopyBackup is
  /// finished. Values are of the form:
  /// `projects//instances//clusters//backups/`.
  ///
  /// Required.
  core.String? sourceBackup;

  CopyBackupRequest({
    this.backupId,
    this.expireTime,
    this.sourceBackup,
  });

  CopyBackupRequest.fromJson(core.Map json_)
      : this(
          backupId: json_.containsKey('backupId')
              ? json_['backupId'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          sourceBackup: json_.containsKey('sourceBackup')
              ? json_['sourceBackup'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupId != null) 'backupId': backupId!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (sourceBackup != null) 'sourceBackup': sourceBackup!,
      };
}

/// Request message for BigtableInstanceAdmin.CreateInstance.
class CreateInstanceRequest {
  /// The clusters to be created within the instance, mapped by desired cluster
  /// ID, e.g., just `mycluster` rather than
  /// `projects/myproject/instances/myinstance/clusters/mycluster`.
  ///
  /// Fields marked `OutputOnly` must be left blank.
  ///
  /// Required.
  core.Map<core.String, Cluster>? clusters;

  /// The instance to create.
  ///
  /// Fields marked `OutputOnly` must be left blank.
  ///
  /// Required.
  Instance? instance;

  /// The ID to be used when referring to the new instance within its project,
  /// e.g., just `myinstance` rather than
  /// `projects/myproject/instances/myinstance`.
  ///
  /// Required.
  core.String? instanceId;

  /// The unique name of the project in which to create the new instance.
  ///
  /// Values are of the form `projects/{project}`.
  ///
  /// Required.
  core.String? parent;

  CreateInstanceRequest({
    this.clusters,
    this.instance,
    this.instanceId,
    this.parent,
  });

  CreateInstanceRequest.fromJson(core.Map json_)
      : this(
          clusters: json_.containsKey('clusters')
              ? (json_['clusters'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    Cluster.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          instance: json_.containsKey('instance')
              ? Instance.fromJson(
                  json_['instance'] as core.Map<core.String, core.dynamic>)
              : null,
          instanceId: json_.containsKey('instanceId')
              ? json_['instanceId'] as core.String
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusters != null) 'clusters': clusters!,
        if (instance != null) 'instance': instance!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (parent != null) 'parent': parent!,
      };
}

/// Request message for google.bigtable.admin.v2.BigtableTableAdmin.CreateTable
class CreateTableRequest {
  /// The optional list of row keys that will be used to initially split the
  /// table into several tablets (tablets are similar to HBase regions).
  ///
  /// Given two split keys, `s1` and `s2`, three tablets will be created,
  /// spanning the key ranges: `[, s1), [s1, s2), [s2, )`. Example: * Row keys
  /// := `["a", "apple", "custom", "customer_1", "customer_2",` `"other", "zz"]`
  /// * initial_split_keys := `["apple", "customer_1", "customer_2", "other"]` *
  /// Key assignment: - Tablet 1 `[, apple) => {"a"}.` - Tablet 2 `[apple,
  /// customer_1) => {"apple", "custom"}.` - Tablet 3 `[customer_1, customer_2)
  /// => {"customer_1"}.` - Tablet 4 `[customer_2, other) => {"customer_2"}.` -
  /// Tablet 5 `[other, ) => {"other", "zz"}.`
  core.List<Split>? initialSplits;

  /// The Table to create.
  ///
  /// Required.
  Table? table;

  /// The name by which the new table should be referred to within the parent
  /// instance, e.g., `foobar` rather than `{parent}/tables/foobar`.
  ///
  /// Maximum 50 characters.
  ///
  /// Required.
  core.String? tableId;

  CreateTableRequest({
    this.initialSplits,
    this.table,
    this.tableId,
  });

  CreateTableRequest.fromJson(core.Map json_)
      : this(
          initialSplits: json_.containsKey('initialSplits')
              ? (json_['initialSplits'] as core.List)
                  .map((value) => Split.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          table: json_.containsKey('table')
              ? Table.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (initialSplits != null) 'initialSplits': initialSplits!,
        if (table != null) 'table': table!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// Data Boost is a serverless compute capability that lets you run
/// high-throughput read jobs on your Bigtable data, without impacting the
/// performance of the clusters that handle your application traffic.
///
/// Currently, Data Boost exclusively supports read-only use-cases with
/// single-cluster routing. Data Boost reads are only guaranteed to see the
/// results of writes that were written at least 30 minutes ago. This means
/// newly written values may not become visible for up to 30m, and also means
/// that old values may remain visible for up to 30m after being deleted or
/// overwritten. To mitigate the staleness of the data, users may either wait
/// 30m, or use CheckConsistency.
class DataBoostIsolationReadOnly {
  /// The Compute Billing Owner for this Data Boost App Profile.
  /// Possible string values are:
  /// - "COMPUTE_BILLING_OWNER_UNSPECIFIED" : Unspecified value.
  /// - "HOST_PAYS" : The host Cloud Project containing the targeted Bigtable
  /// Instance / Table pays for compute.
  core.String? computeBillingOwner;

  DataBoostIsolationReadOnly({
    this.computeBillingOwner,
  });

  DataBoostIsolationReadOnly.fromJson(core.Map json_)
      : this(
          computeBillingOwner: json_.containsKey('computeBillingOwner')
              ? json_['computeBillingOwner'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeBillingOwner != null)
          'computeBillingOwner': computeBillingOwner!,
      };
}

/// Checks that all writes before the consistency token was generated in the
/// same cluster are readable by Databoost.
typedef DataBoostReadLocalWrites = $Empty;

/// Request message for google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange
class DropRowRangeRequest {
  /// Delete all rows in the table.
  ///
  /// Setting this to false is a no-op.
  core.bool? deleteAllDataFromTable;

  /// Delete all rows that start with this row key prefix.
  ///
  /// Prefix cannot be zero length.
  core.String? rowKeyPrefix;
  core.List<core.int> get rowKeyPrefixAsBytes =>
      convert.base64.decode(rowKeyPrefix!);

  set rowKeyPrefixAsBytes(core.List<core.int> bytes_) {
    rowKeyPrefix =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  DropRowRangeRequest({
    this.deleteAllDataFromTable,
    this.rowKeyPrefix,
  });

  DropRowRangeRequest.fromJson(core.Map json_)
      : this(
          deleteAllDataFromTable: json_.containsKey('deleteAllDataFromTable')
              ? json_['deleteAllDataFromTable'] as core.bool
              : null,
          rowKeyPrefix: json_.containsKey('rowKeyPrefix')
              ? json_['rowKeyPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleteAllDataFromTable != null)
          'deleteAllDataFromTable': deleteAllDataFromTable!,
        if (rowKeyPrefix != null) 'rowKeyPrefix': rowKeyPrefix!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected
/// cluster.
class EncryptionConfig {
  /// Describes the Cloud KMS encryption key that will be used to protect the
  /// destination Bigtable cluster.
  ///
  /// The requirements for this key are: 1) The Cloud Bigtable service account
  /// associated with the project that contains this cluster must be granted the
  /// `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only
  /// regional keys can be used and the region of the CMEK key must match the
  /// region of the cluster. Values are of the form
  /// `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}`
  core.String? kmsKeyName;

  EncryptionConfig({
    this.kmsKeyName,
  });

  EncryptionConfig.fromJson(core.Map json_)
      : this(
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// Encryption information for a given resource.
///
/// If this resource is protected with customer managed encryption, the in-use
/// Cloud Key Management Service (Cloud KMS) key version is specified along with
/// its status.
class EncryptionInfo {
  /// The status of encrypt/decrypt calls on underlying data for this resource.
  ///
  /// Regardless of status, the existing data is always encrypted at rest.
  ///
  /// Output only.
  Status? encryptionStatus;

  /// The type of encryption used to protect this resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENCRYPTION_TYPE_UNSPECIFIED" : Encryption type was not specified,
  /// though data at rest remains encrypted.
  /// - "GOOGLE_DEFAULT_ENCRYPTION" : The data backing this resource is
  /// encrypted at rest with a key that is fully managed by Google. No key
  /// version or status will be populated. This is the default state.
  /// - "CUSTOMER_MANAGED_ENCRYPTION" : The data backing this resource is
  /// encrypted at rest with a key that is managed by the customer. The in-use
  /// version of the key and its status are populated for CMEK-protected tables.
  /// CMEK-protected backups are pinned to the key version that was in use at
  /// the time the backup was taken. This key version is populated but its
  /// status is not tracked and is reported as `UNKNOWN`.
  core.String? encryptionType;

  /// The version of the Cloud KMS key specified in the parent cluster that is
  /// in use for the data underlying this table.
  ///
  /// Output only.
  core.String? kmsKeyVersion;

  EncryptionInfo({
    this.encryptionStatus,
    this.encryptionType,
    this.kmsKeyVersion,
  });

  EncryptionInfo.fromJson(core.Map json_)
      : this(
          encryptionStatus: json_.containsKey('encryptionStatus')
              ? Status.fromJson(json_['encryptionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryptionType: json_.containsKey('encryptionType')
              ? json_['encryptionType'] as core.String
              : null,
          kmsKeyVersion: json_.containsKey('kmsKeyVersion')
              ? json_['kmsKeyVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionStatus != null) 'encryptionStatus': encryptionStatus!,
        if (encryptionType != null) 'encryptionType': encryptionType!,
        if (kmsKeyVersion != null) 'kmsKeyVersion': kmsKeyVersion!,
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

/// Rule for determining which cells to delete during garbage collection.
class GcRule {
  /// Delete cells that would be deleted by every nested rule.
  Intersection? intersection;

  /// Delete cells in a column older than the given age.
  ///
  /// Values must be at least one millisecond, and will be truncated to
  /// microsecond granularity.
  core.String? maxAge;

  /// Delete all cells in a column except the most recent N.
  core.int? maxNumVersions;

  /// Delete cells that would be deleted by any nested rule.
  Union? union;

  GcRule({
    this.intersection,
    this.maxAge,
    this.maxNumVersions,
    this.union,
  });

  GcRule.fromJson(core.Map json_)
      : this(
          intersection: json_.containsKey('intersection')
              ? Intersection.fromJson(
                  json_['intersection'] as core.Map<core.String, core.dynamic>)
              : null,
          maxAge: json_.containsKey('maxAge')
              ? json_['maxAge'] as core.String
              : null,
          maxNumVersions: json_.containsKey('maxNumVersions')
              ? json_['maxNumVersions'] as core.int
              : null,
          union: json_.containsKey('union')
              ? Union.fromJson(
                  json_['union'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intersection != null) 'intersection': intersection!,
        if (maxAge != null) 'maxAge': maxAge!,
        if (maxNumVersions != null) 'maxNumVersions': maxNumVersions!,
        if (union != null) 'union': union!,
      };
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
typedef GenerateConsistencyTokenRequest = $Empty;

/// Response message for
/// google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
class GenerateConsistencyTokenResponse {
  /// The generated consistency token.
  core.String? consistencyToken;

  GenerateConsistencyTokenResponse({
    this.consistencyToken,
  });

  GenerateConsistencyTokenResponse.fromJson(core.Map json_)
      : this(
          consistencyToken: json_.containsKey('consistencyToken')
              ? json_['consistencyToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consistencyToken != null) 'consistencyToken': consistencyToken!,
      };
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// Subsets of a column family that are included in this AuthorizedView.
class GoogleBigtableAdminV2AuthorizedViewFamilySubsets {
  /// Prefixes for qualifiers to be included in the AuthorizedView.
  ///
  /// Every qualifier starting with one of these prefixes is included in the
  /// AuthorizedView. To provide access to all qualifiers, include the empty
  /// string as a prefix ("").
  core.List<core.String>? qualifierPrefixes;

  /// Individual exact column qualifiers to be included in the AuthorizedView.
  core.List<core.String>? qualifiers;

  GoogleBigtableAdminV2AuthorizedViewFamilySubsets({
    this.qualifierPrefixes,
    this.qualifiers,
  });

  GoogleBigtableAdminV2AuthorizedViewFamilySubsets.fromJson(core.Map json_)
      : this(
          qualifierPrefixes: json_.containsKey('qualifierPrefixes')
              ? (json_['qualifierPrefixes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          qualifiers: json_.containsKey('qualifiers')
              ? (json_['qualifiers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (qualifierPrefixes != null) 'qualifierPrefixes': qualifierPrefixes!,
        if (qualifiers != null) 'qualifiers': qualifiers!,
      };
}

/// Defines a simple AuthorizedView that is a subset of the underlying Table.
class GoogleBigtableAdminV2AuthorizedViewSubsetView {
  /// Map from column family name to the columns in this family to be included
  /// in the AuthorizedView.
  core.Map<core.String, GoogleBigtableAdminV2AuthorizedViewFamilySubsets>?
      familySubsets;

  /// Row prefixes to be included in the AuthorizedView.
  ///
  /// To provide access to all rows, include the empty string as a prefix ("").
  core.List<core.String>? rowPrefixes;

  GoogleBigtableAdminV2AuthorizedViewSubsetView({
    this.familySubsets,
    this.rowPrefixes,
  });

  GoogleBigtableAdminV2AuthorizedViewSubsetView.fromJson(core.Map json_)
      : this(
          familySubsets: json_.containsKey('familySubsets')
              ? (json_['familySubsets'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleBigtableAdminV2AuthorizedViewFamilySubsets.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          rowPrefixes: json_.containsKey('rowPrefixes')
              ? (json_['rowPrefixes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (familySubsets != null) 'familySubsets': familySubsets!,
        if (rowPrefixes != null) 'rowPrefixes': rowPrefixes!,
      };
}

/// A value that combines incremental updates into a summarized value.
///
/// Data is never directly written or read using type `Aggregate`. Writes will
/// provide either the `input_type` or `state_type`, and reads will always
/// return the `state_type` .
class GoogleBigtableAdminV2TypeAggregate {
  /// Type of the inputs that are accumulated by this `Aggregate`, which must
  /// specify a full encoding.
  ///
  /// Use `AddInput` mutations to accumulate new inputs.
  Type? inputType;

  /// Type that holds the internal accumulator state for the `Aggregate`.
  ///
  /// This is a function of the `input_type` and `aggregator` chosen, and will
  /// always specify a full encoding.
  ///
  /// Output only.
  Type? stateType;

  /// Sum aggregator.
  GoogleBigtableAdminV2TypeAggregateSum? sum;

  GoogleBigtableAdminV2TypeAggregate({
    this.inputType,
    this.stateType,
    this.sum,
  });

  GoogleBigtableAdminV2TypeAggregate.fromJson(core.Map json_)
      : this(
          inputType: json_.containsKey('inputType')
              ? Type.fromJson(
                  json_['inputType'] as core.Map<core.String, core.dynamic>)
              : null,
          stateType: json_.containsKey('stateType')
              ? Type.fromJson(
                  json_['stateType'] as core.Map<core.String, core.dynamic>)
              : null,
          sum: json_.containsKey('sum')
              ? GoogleBigtableAdminV2TypeAggregateSum.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputType != null) 'inputType': inputType!,
        if (stateType != null) 'stateType': stateType!,
        if (sum != null) 'sum': sum!,
      };
}

/// Computes the sum of the input values.
///
/// Allowed input: `Int64` State: same as input
typedef GoogleBigtableAdminV2TypeAggregateSum = $Empty;

/// Bytes Values of type `Bytes` are stored in `Value.bytes_value`.
class GoogleBigtableAdminV2TypeBytes {
  /// The encoding to use when converting to/from lower level types.
  GoogleBigtableAdminV2TypeBytesEncoding? encoding;

  GoogleBigtableAdminV2TypeBytes({
    this.encoding,
  });

  GoogleBigtableAdminV2TypeBytes.fromJson(core.Map json_)
      : this(
          encoding: json_.containsKey('encoding')
              ? GoogleBigtableAdminV2TypeBytesEncoding.fromJson(
                  json_['encoding'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encoding != null) 'encoding': encoding!,
      };
}

/// Rules used to convert to/from lower level types.
class GoogleBigtableAdminV2TypeBytesEncoding {
  /// Use `Raw` encoding.
  GoogleBigtableAdminV2TypeBytesEncodingRaw? raw;

  GoogleBigtableAdminV2TypeBytesEncoding({
    this.raw,
  });

  GoogleBigtableAdminV2TypeBytesEncoding.fromJson(core.Map json_)
      : this(
          raw: json_.containsKey('raw')
              ? GoogleBigtableAdminV2TypeBytesEncodingRaw.fromJson(
                  json_['raw'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (raw != null) 'raw': raw!,
      };
}

/// Leaves the value "as-is" * Natural sort? Yes * Self-delimiting? No *
/// Compatibility? N/A
typedef GoogleBigtableAdminV2TypeBytesEncodingRaw = $Empty;

/// Int64 Values of type `Int64` are stored in `Value.int_value`.
class GoogleBigtableAdminV2TypeInt64 {
  /// The encoding to use when converting to/from lower level types.
  GoogleBigtableAdminV2TypeInt64Encoding? encoding;

  GoogleBigtableAdminV2TypeInt64({
    this.encoding,
  });

  GoogleBigtableAdminV2TypeInt64.fromJson(core.Map json_)
      : this(
          encoding: json_.containsKey('encoding')
              ? GoogleBigtableAdminV2TypeInt64Encoding.fromJson(
                  json_['encoding'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encoding != null) 'encoding': encoding!,
      };
}

/// Rules used to convert to/from lower level types.
class GoogleBigtableAdminV2TypeInt64Encoding {
  /// Use `BigEndianBytes` encoding.
  GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes? bigEndianBytes;

  GoogleBigtableAdminV2TypeInt64Encoding({
    this.bigEndianBytes,
  });

  GoogleBigtableAdminV2TypeInt64Encoding.fromJson(core.Map json_)
      : this(
          bigEndianBytes: json_.containsKey('bigEndianBytes')
              ? GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes.fromJson(
                  json_['bigEndianBytes']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigEndianBytes != null) 'bigEndianBytes': bigEndianBytes!,
      };
}

/// Encodes the value as an 8-byte big endian twos complement `Bytes` value.
///
/// * Natural sort? No (positive values only) * Self-delimiting? Yes *
/// Compatibility? - BigQuery Federation `BINARY` encoding - HBase
/// `Bytes.toBytes` - Java `ByteBuffer.putLong()` with `ByteOrder.BIG_ENDIAN`
class GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes {
  /// The underlying `Bytes` type, which may be able to encode further.
  GoogleBigtableAdminV2TypeBytes? bytesType;

  GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes({
    this.bytesType,
  });

  GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes.fromJson(core.Map json_)
      : this(
          bytesType: json_.containsKey('bytesType')
              ? GoogleBigtableAdminV2TypeBytes.fromJson(
                  json_['bytesType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bytesType != null) 'bytesType': bytesType!,
      };
}

/// A tablet is a defined by a start and end key and is explained in
/// https://cloud.google.com/bigtable/docs/overview#architecture and
/// https://cloud.google.com/bigtable/docs/performance#optimization.
///
/// A Hot tablet is a tablet that exhibits high average cpu usage during the
/// time interval from start time to end time.
class HotTablet {
  /// Tablet End Key (inclusive).
  core.String? endKey;

  /// The end time of the hot tablet.
  ///
  /// Output only.
  core.String? endTime;

  /// The unique name of the hot tablet.
  ///
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/hotTablets/[a-zA-Z0-9_-]*`.
  core.String? name;

  /// The average CPU usage spent by a node on this tablet over the start_time
  /// to end_time time range.
  ///
  /// The percentage is the amount of CPU used by the node to serve the tablet,
  /// from 0% (tablet was not interacted with) to 100% (the node spent all
  /// cycles serving the hot tablet).
  ///
  /// Output only.
  core.double? nodeCpuUsagePercent;

  /// Tablet Start Key (inclusive).
  core.String? startKey;

  /// The start time of the hot tablet.
  ///
  /// Output only.
  core.String? startTime;

  /// Name of the table that contains the tablet.
  ///
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`.
  core.String? tableName;

  HotTablet({
    this.endKey,
    this.endTime,
    this.name,
    this.nodeCpuUsagePercent,
    this.startKey,
    this.startTime,
    this.tableName,
  });

  HotTablet.fromJson(core.Map json_)
      : this(
          endKey: json_.containsKey('endKey')
              ? json_['endKey'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodeCpuUsagePercent: json_.containsKey('nodeCpuUsagePercent')
              ? (json_['nodeCpuUsagePercent'] as core.num).toDouble()
              : null,
          startKey: json_.containsKey('startKey')
              ? json_['startKey'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          tableName: json_.containsKey('tableName')
              ? json_['tableName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endKey != null) 'endKey': endKey!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (nodeCpuUsagePercent != null)
          'nodeCpuUsagePercent': nodeCpuUsagePercent!,
        if (startKey != null) 'startKey': startKey!,
        if (startTime != null) 'startTime': startTime!,
        if (tableName != null) 'tableName': tableName!,
      };
}

/// A collection of Bigtable Tables and the resources that serve them.
///
/// All tables in an instance are served from all Clusters in the instance.
class Instance {
  /// A commit timestamp representing when this Instance was created.
  ///
  /// For instances created before this field was added (August 2021), this
  /// value is `seconds: 0, nanos: 1`.
  ///
  /// Output only.
  core.String? createTime;

  /// The descriptive name for this instance as it appears in UIs.
  ///
  /// Can be changed at any time, but should be kept globally unique to avoid
  /// confusion.
  ///
  /// Required.
  core.String? displayName;

  /// Labels are a flexible and lightweight mechanism for organizing cloud
  /// resources into groups that reflect a customer's organizational needs and
  /// deployment strategies.
  ///
  /// They can be used to filter resources and aggregate metrics. * Label keys
  /// must be between 1 and 63 characters long and must conform to the regular
  /// expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63
  /// characters long and must conform to the regular expression:
  /// `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated
  /// with a given resource. * Keys and values must both be under 128 bytes.
  core.Map<core.String, core.String>? labels;

  /// The unique name of the instance.
  ///
  /// Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  core.String? name;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The current state of the instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The state of the instance could not be determined.
  /// - "READY" : The instance has been successfully created and can serve
  /// requests to its tables.
  /// - "CREATING" : The instance is currently being created, and may be
  /// destroyed if the creation process encounters an error.
  core.String? state;

  /// The type of the instance.
  ///
  /// Defaults to `PRODUCTION`.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the instance is unspecified. If set
  /// when creating an instance, a `PRODUCTION` instance will be created. If set
  /// when updating an instance, the type will be left unchanged.
  /// - "PRODUCTION" : An instance meant for production use. `serve_nodes` must
  /// be set on the cluster.
  /// - "DEVELOPMENT" : DEPRECATED: Prefer PRODUCTION for all use cases, as it
  /// no longer enforces a higher minimum node count than DEVELOPMENT.
  core.String? type;

  Instance({
    this.createTime,
    this.displayName,
    this.labels,
    this.name,
    this.satisfiesPzs,
    this.state,
    this.type,
  });

  Instance.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          satisfiesPzs: json_.containsKey('satisfiesPzs')
              ? json_['satisfiesPzs'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// A GcRule which deletes cells matching all of the given rules.
class Intersection {
  /// Only delete cells which would be deleted by every element of `rules`.
  core.List<GcRule>? rules;

  Intersection({
    this.rules,
  });

  Intersection.fromJson(core.Map json_)
      : this(
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => GcRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
      };
}

/// Response message for BigtableInstanceAdmin.ListAppProfiles.
class ListAppProfilesResponse {
  /// The list of requested app profiles.
  core.List<AppProfile>? appProfiles;

  /// Locations from which AppProfile information could not be retrieved, due to
  /// an outage or some other transient condition.
  ///
  /// AppProfiles from these locations may be missing from `app_profiles`.
  /// Values are of the form `projects//locations/`
  core.List<core.String>? failedLocations;

  /// Set if not all app profiles could be returned in a single response.
  ///
  /// Pass this value to `page_token` in another request to get the next page of
  /// results.
  core.String? nextPageToken;

  ListAppProfilesResponse({
    this.appProfiles,
    this.failedLocations,
    this.nextPageToken,
  });

  ListAppProfilesResponse.fromJson(core.Map json_)
      : this(
          appProfiles: json_.containsKey('appProfiles')
              ? (json_['appProfiles'] as core.List)
                  .map((value) => AppProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          failedLocations: json_.containsKey('failedLocations')
              ? (json_['failedLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appProfiles != null) 'appProfiles': appProfiles!,
        if (failedLocations != null) 'failedLocations': failedLocations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for
/// google.bigtable.admin.v2.BigtableTableAdmin.ListAuthorizedViews
class ListAuthorizedViewsResponse {
  /// The AuthorizedViews present in the requested table.
  core.List<AuthorizedView>? authorizedViews;

  /// Set if not all tables could be returned in a single response.
  ///
  /// Pass this value to `page_token` in another request to get the next page of
  /// results.
  core.String? nextPageToken;

  ListAuthorizedViewsResponse({
    this.authorizedViews,
    this.nextPageToken,
  });

  ListAuthorizedViewsResponse.fromJson(core.Map json_)
      : this(
          authorizedViews: json_.containsKey('authorizedViews')
              ? (json_['authorizedViews'] as core.List)
                  .map((value) => AuthorizedView.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedViews != null) 'authorizedViews': authorizedViews!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for ListBackups.
class ListBackupsResponse {
  /// The list of matching backups.
  core.List<Backup>? backups;

  /// `next_page_token` can be sent in a subsequent ListBackups call to fetch
  /// more of the matching backups.
  core.String? nextPageToken;

  ListBackupsResponse({
    this.backups,
    this.nextPageToken,
  });

  ListBackupsResponse.fromJson(core.Map json_)
      : this(
          backups: json_.containsKey('backups')
              ? (json_['backups'] as core.List)
                  .map((value) => Backup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for BigtableInstanceAdmin.ListClusters.
class ListClustersResponse {
  /// The list of requested clusters.
  core.List<Cluster>? clusters;

  /// Locations from which Cluster information could not be retrieved, due to an
  /// outage or some other transient condition.
  ///
  /// Clusters from these locations may be missing from `clusters`, or may only
  /// have partial information returned. Values are of the form
  /// `projects//locations/`
  core.List<core.String>? failedLocations;

  /// DEPRECATED: This field is unused and ignored.
  core.String? nextPageToken;

  ListClustersResponse({
    this.clusters,
    this.failedLocations,
    this.nextPageToken,
  });

  ListClustersResponse.fromJson(core.Map json_)
      : this(
          clusters: json_.containsKey('clusters')
              ? (json_['clusters'] as core.List)
                  .map((value) => Cluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          failedLocations: json_.containsKey('failedLocations')
              ? (json_['failedLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusters != null) 'clusters': clusters!,
        if (failedLocations != null) 'failedLocations': failedLocations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for BigtableInstanceAdmin.ListHotTablets.
class ListHotTabletsResponse {
  /// List of hot tablets in the tables of the requested cluster that fall
  /// within the requested time range.
  ///
  /// Hot tablets are ordered by node cpu usage percent. If there are multiple
  /// hot tablets that correspond to the same tablet within a 15-minute
  /// interval, only the hot tablet with the highest node cpu usage will be
  /// included in the response.
  core.List<HotTablet>? hotTablets;

  /// Set if not all hot tablets could be returned in a single response.
  ///
  /// Pass this value to `page_token` in another request to get the next page of
  /// results.
  core.String? nextPageToken;

  ListHotTabletsResponse({
    this.hotTablets,
    this.nextPageToken,
  });

  ListHotTabletsResponse.fromJson(core.Map json_)
      : this(
          hotTablets: json_.containsKey('hotTablets')
              ? (json_['hotTablets'] as core.List)
                  .map((value) => HotTablet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hotTablets != null) 'hotTablets': hotTablets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for BigtableInstanceAdmin.ListInstances.
class ListInstancesResponse {
  /// Locations from which Instance information could not be retrieved, due to
  /// an outage or some other transient condition.
  ///
  /// Instances whose Clusters are all in one of the failed locations may be
  /// missing from `instances`, and Instances with at least one Cluster in a
  /// failed location may only have partial information returned. Values are of
  /// the form `projects//locations/`
  core.List<core.String>? failedLocations;

  /// The list of requested instances.
  core.List<Instance>? instances;

  /// DEPRECATED: This field is unused and ignored.
  core.String? nextPageToken;

  ListInstancesResponse({
    this.failedLocations,
    this.instances,
    this.nextPageToken,
  });

  ListInstancesResponse.fromJson(core.Map json_)
      : this(
          failedLocations: json_.containsKey('failedLocations')
              ? (json_['failedLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => Instance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedLocations != null) 'failedLocations': failedLocations!,
        if (instances != null) 'instances': instances!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

/// Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListTables
class ListTablesResponse {
  /// Set if not all tables could be returned in a single response.
  ///
  /// Pass this value to `page_token` in another request to get the next page of
  /// results.
  core.String? nextPageToken;

  /// The tables present in the requested instance.
  core.List<Table>? tables;

  ListTablesResponse({
    this.nextPageToken,
    this.tables,
  });

  ListTablesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tables: json_.containsKey('tables')
              ? (json_['tables'] as core.List)
                  .map((value) => Table.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tables != null) 'tables': tables!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// A create, update, or delete of a particular column family.
class Modification {
  /// Create a new column family with the specified schema, or fail if one
  /// already exists with the given ID.
  ColumnFamily? create;

  /// Drop (delete) the column family with the given ID, or fail if no such
  /// family exists.
  core.bool? drop;

  /// The ID of the column family to be modified.
  core.String? id;

  /// Update an existing column family to the specified schema, or fail if no
  /// column family exists with the given ID.
  ColumnFamily? update;

  /// A mask specifying which fields (e.g. `gc_rule`) in the `update` mod should
  /// be updated, ignored for other modification types.
  ///
  /// If unset or empty, we treat it as updating `gc_rule` to be backward
  /// compatible.
  ///
  /// Optional.
  core.String? updateMask;

  Modification({
    this.create,
    this.drop,
    this.id,
    this.update,
    this.updateMask,
  });

  Modification.fromJson(core.Map json_)
      : this(
          create: json_.containsKey('create')
              ? ColumnFamily.fromJson(
                  json_['create'] as core.Map<core.String, core.dynamic>)
              : null,
          drop: json_.containsKey('drop') ? json_['drop'] as core.bool : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          update: json_.containsKey('update')
              ? ColumnFamily.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (create != null) 'create': create!,
        if (drop != null) 'drop': drop!,
        if (id != null) 'id': id!,
        if (update != null) 'update': update!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.ModifyColumnFamilies
class ModifyColumnFamiliesRequest {
  /// If true, ignore safety checks when modifying the column families.
  ///
  /// Optional.
  core.bool? ignoreWarnings;

  /// Modifications to be atomically applied to the specified table's families.
  ///
  /// Entries are applied in order, meaning that earlier modifications can be
  /// masked by later ones (in the case of repeated updates to the same family,
  /// for example).
  ///
  /// Required.
  core.List<Modification>? modifications;

  ModifyColumnFamiliesRequest({
    this.ignoreWarnings,
    this.modifications,
  });

  ModifyColumnFamiliesRequest.fromJson(core.Map json_)
      : this(
          ignoreWarnings: json_.containsKey('ignoreWarnings')
              ? json_['ignoreWarnings'] as core.bool
              : null,
          modifications: json_.containsKey('modifications')
              ? (json_['modifications'] as core.List)
                  .map((value) => Modification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignoreWarnings != null) 'ignoreWarnings': ignoreWarnings!,
        if (modifications != null) 'modifications': modifications!,
      };
}

/// Read/write requests are routed to the nearest cluster in the instance, and
/// will fail over to the nearest cluster that is available in the event of
/// transient errors or delays.
///
/// Clusters in a region are considered equidistant. Choosing this option
/// sacrifices read-your-writes consistency to improve availability.
class MultiClusterRoutingUseAny {
  /// The set of clusters to route to.
  ///
  /// The order is ignored; clusters will be tried in order of distance. If left
  /// empty, all clusters are eligible.
  core.List<core.String>? clusterIds;

  MultiClusterRoutingUseAny({
    this.clusterIds,
  });

  MultiClusterRoutingUseAny.fromJson(core.Map json_)
      : this(
          clusterIds: json_.containsKey('clusterIds')
              ? (json_['clusterIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterIds != null) 'clusterIds': clusterIds!,
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

/// Information about a table restore.
class RestoreInfo {
  /// Information about the backup used to restore the table.
  ///
  /// The backup may no longer exist.
  BackupInfo? backupInfo;

  /// The type of the restore source.
  /// Possible string values are:
  /// - "RESTORE_SOURCE_TYPE_UNSPECIFIED" : No restore associated.
  /// - "BACKUP" : A backup was used as the source of the restore.
  core.String? sourceType;

  RestoreInfo({
    this.backupInfo,
    this.sourceType,
  });

  RestoreInfo.fromJson(core.Map json_)
      : this(
          backupInfo: json_.containsKey('backupInfo')
              ? BackupInfo.fromJson(
                  json_['backupInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceType: json_.containsKey('sourceType')
              ? json_['sourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupInfo != null) 'backupInfo': backupInfo!,
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// The request for RestoreTable.
class RestoreTableRequest {
  /// Name of the backup from which to restore.
  ///
  /// Values are of the form `projects//instances//clusters//backups/`.
  core.String? backup;

  /// The id of the table to create and restore to.
  ///
  /// This table must not already exist. The `table_id` appended to `parent`
  /// forms the full table name of the form `projects//instances//tables/`.
  ///
  /// Required.
  core.String? tableId;

  RestoreTableRequest({
    this.backup,
    this.tableId,
  });

  RestoreTableRequest.fromJson(core.Map json_)
      : this(
          backup: json_.containsKey('backup')
              ? json_['backup'] as core.String
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (tableId != null) 'tableId': tableId!,
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

/// Unconditionally routes all read/write requests to a specific cluster.
///
/// This option preserves read-your-writes consistency but does not improve
/// availability.
class SingleClusterRouting {
  /// Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are
  /// allowed by this app profile.
  ///
  /// It is unsafe to send these requests to the same table/row/column in
  /// multiple clusters.
  core.bool? allowTransactionalWrites;

  /// The cluster to which read/write requests should be routed.
  core.String? clusterId;

  SingleClusterRouting({
    this.allowTransactionalWrites,
    this.clusterId,
  });

  SingleClusterRouting.fromJson(core.Map json_)
      : this(
          allowTransactionalWrites:
              json_.containsKey('allowTransactionalWrites')
                  ? json_['allowTransactionalWrites'] as core.bool
                  : null,
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowTransactionalWrites != null)
          'allowTransactionalWrites': allowTransactionalWrites!,
        if (clusterId != null) 'clusterId': clusterId!,
      };
}

/// An initial split point for a newly created table.
class Split {
  /// Row key to use as an initial tablet boundary.
  core.String? key;
  core.List<core.int> get keyAsBytes => convert.base64.decode(key!);

  set keyAsBytes(core.List<core.int> bytes_) {
    key =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Split({
    this.key,
  });

  Split.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
      };
}

/// Standard options for isolating this app profile's traffic from other use
/// cases.
class StandardIsolation {
  /// The priority of requests sent using this app profile.
  /// Possible string values are:
  /// - "PRIORITY_UNSPECIFIED" : Default value. Mapped to PRIORITY_HIGH (the
  /// legacy behavior) on creation.
  /// - "PRIORITY_LOW"
  /// - "PRIORITY_MEDIUM"
  /// - "PRIORITY_HIGH"
  core.String? priority;

  StandardIsolation({
    this.priority,
  });

  StandardIsolation.fromJson(core.Map json_)
      : this(
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priority != null) 'priority': priority!,
      };
}

/// Checks that all writes before the consistency token was generated are
/// replicated in every cluster and readable.
typedef StandardReadRemoteWrites = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// A collection of user data indexed by row, column, and timestamp.
///
/// Each table is served using the resources of its parent cluster.
class Table {
  /// If specified, automated backups are enabled for this table.
  ///
  /// Otherwise, automated backups are disabled.
  AutomatedBackupPolicy? automatedBackupPolicy;

  /// If specified, enable the change stream on this table.
  ///
  /// Otherwise, the change stream is disabled and the change stream is not
  /// retained.
  ChangeStreamConfig? changeStreamConfig;

  /// Map from cluster ID to per-cluster table state.
  ///
  /// If it could not be determined whether or not the table has data in a
  /// particular cluster (for example, if its zone is unavailable), then there
  /// will be an entry for the cluster with UNKNOWN `replication_status`. Views:
  /// `REPLICATION_VIEW`, `ENCRYPTION_VIEW`, `FULL`
  ///
  /// Output only.
  core.Map<core.String, ClusterState>? clusterStates;

  /// The column families configured for this table, mapped by column family ID.
  ///
  /// Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
  core.Map<core.String, ColumnFamily>? columnFamilies;

  /// Set to true to make the table protected against data loss.
  ///
  /// i.e. deleting the following resources through Admin APIs are prohibited: *
  /// The table. * The column families in the table. * The instance containing
  /// the table. Note one can still delete the data stored in the table through
  /// Data APIs.
  core.bool? deletionProtection;

  /// The granularity (i.e. `MILLIS`) at which timestamps are stored in this
  /// table.
  ///
  /// Timestamps not matching the granularity will be rejected. If unspecified
  /// at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`,
  /// `FULL`.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "TIMESTAMP_GRANULARITY_UNSPECIFIED" : The user did not specify a
  /// granularity. Should not be returned. When specified during table creation,
  /// MILLIS will be used.
  /// - "MILLIS" : The table keeps data versioned at a granularity of 1ms.
  core.String? granularity;

  /// The unique name of the table.
  ///
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views:
  /// `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  core.String? name;

  /// If this table was restored from another data source (e.g. a backup), this
  /// field will be populated with information about the restore.
  ///
  /// Output only.
  RestoreInfo? restoreInfo;

  /// Only available with STATS_VIEW, this includes summary statistics about the
  /// entire table contents.
  ///
  /// For statistics about a specific column family, see ColumnFamilyStats in
  /// the mapped ColumnFamily collection above.
  ///
  /// Output only.
  TableStats? stats;

  Table({
    this.automatedBackupPolicy,
    this.changeStreamConfig,
    this.clusterStates,
    this.columnFamilies,
    this.deletionProtection,
    this.granularity,
    this.name,
    this.restoreInfo,
    this.stats,
  });

  Table.fromJson(core.Map json_)
      : this(
          automatedBackupPolicy: json_.containsKey('automatedBackupPolicy')
              ? AutomatedBackupPolicy.fromJson(json_['automatedBackupPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          changeStreamConfig: json_.containsKey('changeStreamConfig')
              ? ChangeStreamConfig.fromJson(json_['changeStreamConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterStates: json_.containsKey('clusterStates')
              ? (json_['clusterStates'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    ClusterState.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          columnFamilies: json_.containsKey('columnFamilies')
              ? (json_['columnFamilies'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    ColumnFamily.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          deletionProtection: json_.containsKey('deletionProtection')
              ? json_['deletionProtection'] as core.bool
              : null,
          granularity: json_.containsKey('granularity')
              ? json_['granularity'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          restoreInfo: json_.containsKey('restoreInfo')
              ? RestoreInfo.fromJson(
                  json_['restoreInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          stats: json_.containsKey('stats')
              ? TableStats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automatedBackupPolicy != null)
          'automatedBackupPolicy': automatedBackupPolicy!,
        if (changeStreamConfig != null)
          'changeStreamConfig': changeStreamConfig!,
        if (clusterStates != null) 'clusterStates': clusterStates!,
        if (columnFamilies != null) 'columnFamilies': columnFamilies!,
        if (deletionProtection != null)
          'deletionProtection': deletionProtection!,
        if (granularity != null) 'granularity': granularity!,
        if (name != null) 'name': name!,
        if (restoreInfo != null) 'restoreInfo': restoreInfo!,
        if (stats != null) 'stats': stats!,
      };
}

/// Approximate statistics related to a table.
///
/// These statistics are calculated infrequently, while simultaneously, data in
/// the table can change rapidly. Thus the values reported here (e.g. row count)
/// are very likely out-of date, even the instant they are received in this API.
/// Thus, only treat these values as approximate. IMPORTANT: Everything below is
/// approximate, unless otherwise specified.
class TableStats {
  /// How many cells are present per column (column family, column qualifier)
  /// combinations, averaged over all columns in all rows in the table.
  ///
  /// e.g. A table with 2 rows: * A row with 3 cells in "family:col" and 1 cell
  /// in "other:col" (4 cells / 2 columns) * A row with 1 cell in "family:col",
  /// 7 cells in "family:other_col", and 7 cells in "other:data" (15 cells / 3
  /// columns) would report (4 + 15)/(2 + 3) = 3.8 in this field.
  core.double? averageCellsPerColumn;

  /// How many (column family, column qualifier) combinations are present per
  /// row in the table, averaged over all rows in the table.
  ///
  /// e.g. A table with 2 rows: * A row with cells in "family:col" and
  /// "other:col" (2 distinct columns) * A row with cells in "family:col",
  /// "family:other_col", and "other:data" (3 distinct columns) would report (2
  /// + 3)/2 = 2.5 in this field.
  core.double? averageColumnsPerRow;

  /// This is roughly how many bytes would be needed to read the entire table
  /// (e.g. by streaming all contents out).
  core.String? logicalDataBytes;

  /// How many rows are in the table.
  core.String? rowCount;

  TableStats({
    this.averageCellsPerColumn,
    this.averageColumnsPerRow,
    this.logicalDataBytes,
    this.rowCount,
  });

  TableStats.fromJson(core.Map json_)
      : this(
          averageCellsPerColumn: json_.containsKey('averageCellsPerColumn')
              ? (json_['averageCellsPerColumn'] as core.num).toDouble()
              : null,
          averageColumnsPerRow: json_.containsKey('averageColumnsPerRow')
              ? (json_['averageColumnsPerRow'] as core.num).toDouble()
              : null,
          logicalDataBytes: json_.containsKey('logicalDataBytes')
              ? json_['logicalDataBytes'] as core.String
              : null,
          rowCount: json_.containsKey('rowCount')
              ? json_['rowCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageCellsPerColumn != null)
          'averageCellsPerColumn': averageCellsPerColumn!,
        if (averageColumnsPerRow != null)
          'averageColumnsPerRow': averageColumnsPerRow!,
        if (logicalDataBytes != null) 'logicalDataBytes': logicalDataBytes!,
        if (rowCount != null) 'rowCount': rowCount!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// `Type` represents the type of data that is written to, read from, or stored
/// in Bigtable.
///
/// It is heavily based on the GoogleSQL standard to help maintain familiarity
/// and consistency across products and features. For compatibility with
/// Bigtable's existing untyped APIs, each `Type` includes an `Encoding` which
/// describes how to convert to/from the underlying data. This might involve
/// composing a series of steps into an "encoding chain," for example to convert
/// from INT64 -\> STRING -\> raw bytes. In most cases, a "link" in the encoding
/// chain will be based an on existing GoogleSQL conversion function like
/// `CAST`. Each link in the encoding chain also defines the following
/// properties: * Natural sort: Does the encoded value sort consistently with
/// the original typed value? Note that Bigtable will always sort data based on
/// the raw encoded value, *not* the decoded type. - Example: STRING values sort
/// in the same order as their UTF-8 encodings. - Counterexample: Encoding INT64
/// to a fixed-width STRING does *not* preserve sort order when dealing with
/// negative numbers. INT64(1) \> INT64(-1), but STRING("-00001") \>
/// STRING("00001). - The overall encoding chain sorts naturally if *every* link
/// does. * Self-delimiting: If we concatenate two encoded values, can we always
/// tell where the first one ends and the second one begins? - Example: If we
/// encode INT64s to fixed-width STRINGs, the first value will always contain
/// exactly N digits, possibly preceded by a sign. - Counterexample: If we
/// concatenate two UTF-8 encoded STRINGs, we have no way to tell where the
/// first one ends. - The overall encoding chain is self-delimiting if *any*
/// link is. * Compatibility: Which other systems have matching encoding
/// schemes? For example, does this encoding have a GoogleSQL equivalent? HBase?
/// Java?
class Type {
  /// Aggregate
  GoogleBigtableAdminV2TypeAggregate? aggregateType;

  /// Bytes
  GoogleBigtableAdminV2TypeBytes? bytesType;

  /// Int64
  GoogleBigtableAdminV2TypeInt64? int64Type;

  Type({
    this.aggregateType,
    this.bytesType,
    this.int64Type,
  });

  Type.fromJson(core.Map json_)
      : this(
          aggregateType: json_.containsKey('aggregateType')
              ? GoogleBigtableAdminV2TypeAggregate.fromJson(
                  json_['aggregateType'] as core.Map<core.String, core.dynamic>)
              : null,
          bytesType: json_.containsKey('bytesType')
              ? GoogleBigtableAdminV2TypeBytes.fromJson(
                  json_['bytesType'] as core.Map<core.String, core.dynamic>)
              : null,
          int64Type: json_.containsKey('int64Type')
              ? GoogleBigtableAdminV2TypeInt64.fromJson(
                  json_['int64Type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateType != null) 'aggregateType': aggregateType!,
        if (bytesType != null) 'bytesType': bytesType!,
        if (int64Type != null) 'int64Type': int64Type!,
      };
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable
typedef UndeleteTableRequest = $Empty;

/// A GcRule which deletes cells matching any of the given rules.
class Union {
  /// Delete cells which would be deleted by any element of `rules`.
  core.List<GcRule>? rules;

  Union({
    this.rules,
  });

  Union.fromJson(core.Map json_)
      : this(
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => GcRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
      };
}
