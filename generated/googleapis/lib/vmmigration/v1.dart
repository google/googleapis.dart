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

/// VM Migration API - v1
///
/// Use the Migrate to Virtual Machines API to programmatically migrate
/// workloads.
///
/// For more information, see
/// <https://cloud.google.com/migrate/virtual-machines>
///
/// Create an instance of [VMMigrationServiceApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsGroupsResource]
///     - [ProjectsLocationsImageImportsResource]
///       - [ProjectsLocationsImageImportsImageImportJobsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSourcesResource]
///       - [ProjectsLocationsSourcesDatacenterConnectorsResource]
///       - [ProjectsLocationsSourcesMigratingVmsResource]
///         - [ProjectsLocationsSourcesMigratingVmsCloneJobsResource]
///         - [ProjectsLocationsSourcesMigratingVmsCutoverJobsResource]
///         - [ProjectsLocationsSourcesMigratingVmsReplicationCyclesResource]
///       - [ProjectsLocationsSourcesUtilizationReportsResource]
///     - [ProjectsLocationsTargetProjectsResource]
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

/// Use the Migrate to Virtual Machines API to programmatically migrate
/// workloads.
class VMMigrationServiceApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  VMMigrationServiceApi(http.Client client,
      {core.String rootUrl = 'https://vmmigration.googleapis.com/',
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

  ProjectsLocationsGroupsResource get groups =>
      ProjectsLocationsGroupsResource(_requester);
  ProjectsLocationsImageImportsResource get imageImports =>
      ProjectsLocationsImageImportsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSourcesResource get sources =>
      ProjectsLocationsSourcesResource(_requester);
  ProjectsLocationsTargetProjectsResource get targetProjects =>
      ProjectsLocationsTargetProjectsResource(_requester);

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

class ProjectsLocationsGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds a MigratingVm to a Group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [group] - Required. The full path name of the Group to add to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
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
  async.Future<Operation> addGroupMigration(
    AddGroupMigrationRequest request,
    core.String group, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$group') + ':addGroupMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Group in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Group's parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [groupId] - Required. The group identifier.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    Group request,
    core.String parent, {
    core.String? groupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupId != null) 'groupId': [groupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Group name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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

  /// Gets details of a single Group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The group name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> get(
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
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Groups in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of groups.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of groups to return. The service
  /// may return fewer than this value. If unspecified, at most 500 groups will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListGroups` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListGroups` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The Group name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the Group resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields will be overwritten.
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
    Group request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

  /// Removes a MigratingVm from a Group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [group] - Required. The name of the Group.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
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
  async.Future<Operation> removeGroupMigration(
    RemoveGroupMigrationRequest request,
    core.String group, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$group') + ':removeGroupMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsImageImportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsImageImportsImageImportJobsResource get imageImportJobs =>
      ProjectsLocationsImageImportsImageImportJobsResource(_requester);

  ProjectsLocationsImageImportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ImageImport in a given project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The ImageImport's parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [imageImportId] - Required. The image import identifier. This value
  /// maximum length is 63 characters, and valid characters are /a-z-/. It must
  /// start with an english letter and must not end with a hyphen.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    ImageImport request,
    core.String parent, {
    core.String? imageImportId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (imageImportId != null) 'imageImportId': [imageImportId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/imageImports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ImageImport.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ImageImport name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/imageImports/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and t he
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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

  /// Gets details of a single ImageImport.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ImageImport name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/imageImports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImageImport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImageImport> get(
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
    return ImageImport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists ImageImports in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of targets.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request (according to
  /// https://google.aip.dev/160).
  ///
  /// [orderBy] - Optional. The order by fields for the result (according to
  /// https://google.aip.dev/132#ordering). Currently ordering is only possible
  /// by "name" field.
  ///
  /// [pageSize] - Optional. The maximum number of targets to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// targets will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListImageImports` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListImageImports` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImageImportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImageImportsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/imageImports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListImageImportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsImageImportsImageImportJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsImageImportsImageImportJobsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Initiates the cancellation of a running clone job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The image import job id.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/imageImports/\[^/\]+/imageImportJobs/\[^/\]+$`.
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
  async.Future<Operation> cancel(
    CancelImageImportJobRequest request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ImageImportJob.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ImageImportJob name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/imageImports/\[^/\]+/imageImportJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImageImportJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImageImportJob> get(
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
    return ImageImportJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists ImageImportJobs in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of targets.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/imageImports/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request (according to
  /// https://google.aip.dev/160).
  ///
  /// [orderBy] - Optional. The order by fields for the result (according to
  /// https://google.aip.dev/132#ordering). Currently ordering is only possible
  /// by "name" field.
  ///
  /// [pageSize] - Optional. The maximum number of targets to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// targets will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListImageImportJobs` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListImageImportJobs`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImageImportJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImageImportJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/imageImportJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListImageImportJobsResponse.fromJson(
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

class ProjectsLocationsSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesDatacenterConnectorsResource
      get datacenterConnectors =>
          ProjectsLocationsSourcesDatacenterConnectorsResource(_requester);
  ProjectsLocationsSourcesMigratingVmsResource get migratingVms =>
      ProjectsLocationsSourcesMigratingVmsResource(_requester);
  ProjectsLocationsSourcesUtilizationReportsResource get utilizationReports =>
      ProjectsLocationsSourcesUtilizationReportsResource(_requester);

  ProjectsLocationsSourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Source in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Source's parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [sourceId] - Required. The source identifier.
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
    Source request,
    core.String parent, {
    core.String? requestId,
    core.String? sourceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (sourceId != null) 'sourceId': [sourceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Source.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Source name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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

  /// List remote source's inventory of VMs.
  ///
  /// The remote source is the onprem vCenter (remote in the sense it's not in
  /// Compute Engine). The inventory describes the list of existing VMs in that
  /// source. Note that this operation lists the VMs on the remote source, as
  /// opposed to listing the MigratingVms resources in the vmmigration service.
  ///
  /// Request parameters:
  ///
  /// [source] - Required. The name of the Source.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [forceRefresh] - If this flag is set to true, the source will be queried
  /// instead of using cached results. Using this flag will make the call
  /// slower.
  ///
  /// [pageSize] - The maximum number of VMs to return. The service may return
  /// fewer than this value. For AWS source: If unspecified, at most 500 VMs
  /// will be returned. The maximum value is 1000; values above 1000 will be
  /// coerced to 1000. For VMWare source: If unspecified, all VMs will be
  /// returned. There is no limit for maximum value.
  ///
  /// [pageToken] - A page token, received from a previous `FetchInventory`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `FetchInventory` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchInventoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchInventoryResponse> fetchInventory(
    core.String source, {
    core.bool? forceRefresh,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (forceRefresh != null) 'forceRefresh': ['${forceRefresh}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$source') + ':fetchInventory';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchInventoryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Source.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Source name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Source].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Source> get(
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
    return Source.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Sources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of sources.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of sources to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// sources will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListSources` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListSources` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSourcesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The Source name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the Source resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields will be overwritten.
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
    Source request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

class ProjectsLocationsSourcesDatacenterConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesDatacenterConnectorsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new DatacenterConnector in a given Source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The DatacenterConnector's parent. Required. The
  /// Source in where the new DatacenterConnector will be created. For example:
  /// `projects/my-project/locations/us-central1/sources/my-source`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [datacenterConnectorId] - Required. The datacenterConnector identifier.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    DatacenterConnector request,
    core.String parent, {
    core.String? datacenterConnectorId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (datacenterConnectorId != null)
        'datacenterConnectorId': [datacenterConnectorId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/datacenterConnectors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single DatacenterConnector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The DatacenterConnector name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/datacenterConnectors/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes after the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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

  /// Gets details of a single DatacenterConnector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DatacenterConnector.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/datacenterConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatacenterConnector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatacenterConnector> get(
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
    return DatacenterConnector.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists DatacenterConnectors in a given Source.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of connectors.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of connectors to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// sources will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListDatacenterConnectors` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListDatacenterConnectors` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatacenterConnectorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatacenterConnectorsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/datacenterConnectors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDatacenterConnectorsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Upgrades the appliance relate to this DatacenterConnector to the in-place
  /// updateable version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [datacenterConnector] - Required. The DatacenterConnector name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/datacenterConnectors/\[^/\]+$`.
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
  async.Future<Operation> upgradeAppliance(
    UpgradeApplianceRequest request,
    core.String datacenterConnector, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$datacenterConnector') +
        ':upgradeAppliance';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSourcesMigratingVmsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesMigratingVmsCloneJobsResource get cloneJobs =>
      ProjectsLocationsSourcesMigratingVmsCloneJobsResource(_requester);
  ProjectsLocationsSourcesMigratingVmsCutoverJobsResource get cutoverJobs =>
      ProjectsLocationsSourcesMigratingVmsCutoverJobsResource(_requester);
  ProjectsLocationsSourcesMigratingVmsReplicationCyclesResource
      get replicationCycles =>
          ProjectsLocationsSourcesMigratingVmsReplicationCyclesResource(
              _requester);

  ProjectsLocationsSourcesMigratingVmsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new MigratingVm in a given Source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The MigratingVm's parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [migratingVmId] - Required. The migratingVm identifier.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    MigratingVm request,
    core.String parent, {
    core.String? migratingVmId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (migratingVmId != null) 'migratingVmId': [migratingVmId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/migratingVms';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single MigratingVm.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the MigratingVm.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
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

  /// Marks a migration as completed, deleting migration resources that are no
  /// longer being used.
  ///
  /// Only applicable after cutover is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [migratingVm] - Required. The name of the MigratingVm.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
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
  async.Future<Operation> finalizeMigration(
    FinalizeMigrationRequest request,
    core.String migratingVm, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$migratingVm') + ':finalizeMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single MigratingVm.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the MigratingVm.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
  ///
  /// [view] - Optional. The level of details of the migrating VM.
  /// Possible string values are:
  /// - "MIGRATING_VM_VIEW_UNSPECIFIED" : View is unspecified. The API will
  /// fallback to the default value.
  /// - "MIGRATING_VM_VIEW_BASIC" : Get the migrating VM basic details. The
  /// basic details do not include the recent clone jobs and recent cutover jobs
  /// lists.
  /// - "MIGRATING_VM_VIEW_FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MigratingVm].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MigratingVm> get(
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
    return MigratingVm.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists MigratingVms in a given Source.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// MigratingVms.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of migrating VMs to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// migrating VMs will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListMigratingVms` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListMigratingVms` must
  /// match the call that provided the page token.
  ///
  /// [view] - Optional. The level of details of each migrating VM.
  /// Possible string values are:
  /// - "MIGRATING_VM_VIEW_UNSPECIFIED" : View is unspecified. The API will
  /// fallback to the default value.
  /// - "MIGRATING_VM_VIEW_BASIC" : Get the migrating VM basic details. The
  /// basic details do not include the recent clone jobs and recent cutover jobs
  /// lists.
  /// - "MIGRATING_VM_VIEW_FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMigratingVmsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMigratingVmsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/migratingVms';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMigratingVmsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single MigratingVm.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The identifier of the MigratingVm.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the MigratingVm resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields will be overwritten.
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
    MigratingVm request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

  /// Pauses a migration for a VM.
  ///
  /// If cycle tasks are running they will be cancelled, preserving source task
  /// data. Further replication cycles will not be triggered while the VM is
  /// paused.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [migratingVm] - Required. The name of the MigratingVm.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
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
  async.Future<Operation> pauseMigration(
    PauseMigrationRequest request,
    core.String migratingVm, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$migratingVm') + ':pauseMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resumes a migration for a VM.
  ///
  /// When called on a paused migration, will start the process of uploading
  /// data and creating snapshots; when called on a completed cut-over
  /// migration, will update the migration to active state and start the process
  /// of uploading data and creating snapshots.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [migratingVm] - Required. The name of the MigratingVm.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
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
  async.Future<Operation> resumeMigration(
    ResumeMigrationRequest request,
    core.String migratingVm, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$migratingVm') + ':resumeMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts migration for a VM.
  ///
  /// Starts the process of uploading data and creating snapshots, in
  /// replication cycles scheduled by the policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [migratingVm] - Required. The name of the MigratingVm.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
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
  async.Future<Operation> startMigration(
    StartMigrationRequest request,
    core.String migratingVm, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$migratingVm') + ':startMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSourcesMigratingVmsCloneJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesMigratingVmsCloneJobsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Initiates the cancellation of a running clone job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The clone job id
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+/cloneJobs/\[^/\]+$`.
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
  async.Future<Operation> cancel(
    CancelCloneJobRequest request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Initiates a Clone of a specific migrating VM.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Clone's parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
  ///
  /// [cloneJobId] - Required. The clone job identifier.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    CloneJob request,
    core.String parent, {
    core.String? cloneJobId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (cloneJobId != null) 'cloneJobId': [cloneJobId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cloneJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single CloneJob.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CloneJob.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+/cloneJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloneJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloneJob> get(
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
    return CloneJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the CloneJobs of a migrating VM.
  ///
  /// Only 25 most recent CloneJobs are listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of source VMs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of clone jobs to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// clone jobs will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListCloneJobs` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListCloneJobs` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCloneJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCloneJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cloneJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCloneJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSourcesMigratingVmsCutoverJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesMigratingVmsCutoverJobsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Initiates the cancellation of a running cutover job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The cutover job id
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+/cutoverJobs/\[^/\]+$`.
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
  async.Future<Operation> cancel(
    CancelCutoverJobRequest request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Initiates a Cutover of a specific migrating VM.
  ///
  /// The returned LRO is completed when the cutover job resource is created and
  /// the job is initiated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Cutover's parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
  ///
  /// [cutoverJobId] - Required. The cutover job identifier.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    CutoverJob request,
    core.String parent, {
    core.String? cutoverJobId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (cutoverJobId != null) 'cutoverJobId': [cutoverJobId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cutoverJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single CutoverJob.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CutoverJob.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+/cutoverJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CutoverJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CutoverJob> get(
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
    return CutoverJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the CutoverJobs of a migrating VM.
  ///
  /// Only 25 most recent CutoverJobs are listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of migrating
  /// VMs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of cutover jobs to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// cutover jobs will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListCutoverJobs` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListCutoverJobs` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCutoverJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCutoverJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cutoverJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCutoverJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSourcesMigratingVmsReplicationCyclesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesMigratingVmsReplicationCyclesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single ReplicationCycle.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ReplicationCycle.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+/replicationCycles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReplicationCycle].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReplicationCycle> get(
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
    return ReplicationCycle.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists ReplicationCycles in a given MigratingVM.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// ReplicationCycles.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/migratingVms/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of replication cycles to return.
  /// The service may return fewer than this value. If unspecified, at most 100
  /// migrating VMs will be returned. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListReplicationCycles` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListReplicationCycles` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReplicationCyclesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReplicationCyclesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/replicationCycles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReplicationCyclesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSourcesUtilizationReportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesUtilizationReportsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new UtilizationReport.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Utilization Report's parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [utilizationReportId] - Required. The ID to use for the report, which will
  /// become the final component of the reports's resource name. This value
  /// maximum length is 63 characters, and valid characters are /a-z-/. It must
  /// start with an english letter and must not end with a hyphen.
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
    UtilizationReport request,
    core.String parent, {
    core.String? requestId,
    core.String? utilizationReportId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (utilizationReportId != null)
        'utilizationReportId': [utilizationReportId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/utilizationReports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Utilization Report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Utilization Report name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/utilizationReports/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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

  /// Gets a single Utilization Report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Utilization Report name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/utilizationReports/\[^/\]+$`.
  ///
  /// [view] - Optional. The level of details of the report. Defaults to FULL
  /// Possible string values are:
  /// - "UTILIZATION_REPORT_VIEW_UNSPECIFIED" : The default / unset value. The
  /// API will default to FULL on single report request and BASIC for multiple
  /// reports request.
  /// - "BASIC" : Get the report metadata, without the list of VMs and their
  /// utilization info.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UtilizationReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UtilizationReport> get(
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
    return UtilizationReport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Utilization Reports of the given Source.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Utilization Reports parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of reports to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// reports will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListUtilizationReports` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListUtilizationReports` must match the call that provided the page token.
  ///
  /// [view] - Optional. The level of details of each report. Defaults to BASIC.
  /// Possible string values are:
  /// - "UTILIZATION_REPORT_VIEW_UNSPECIFIED" : The default / unset value. The
  /// API will default to FULL on single report request and BASIC for multiple
  /// reports request.
  /// - "BASIC" : Get the report metadata, without the list of VMs and their
  /// utilization info.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUtilizationReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUtilizationReportsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/utilizationReports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUtilizationReportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTargetProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTargetProjectsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new TargetProject in a given project.
  ///
  /// NOTE: TargetProject is a global resource; hence the only supported value
  /// for location is `global`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The TargetProject's parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [targetProjectId] - Required. The target_project identifier.
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
    TargetProject request,
    core.String parent, {
    core.String? requestId,
    core.String? targetProjectId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (targetProjectId != null) 'targetProjectId': [targetProjectId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/targetProjects';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single TargetProject.
  ///
  /// NOTE: TargetProject is a global resource; hence the only supported value
  /// for location is `global`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The TargetProject name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/targetProjects/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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

  /// Gets details of a single TargetProject.
  ///
  /// NOTE: TargetProject is a global resource; hence the only supported value
  /// for location is `global`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The TargetProject name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/targetProjects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetProject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetProject> get(
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
    return TargetProject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists TargetProjects in a given project.
  ///
  /// NOTE: TargetProject is a global resource; hence the only supported value
  /// for location is `global`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of targets.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter request.
  ///
  /// [orderBy] - Optional. the order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of targets to return. The
  /// service may return fewer than this value. If unspecified, at most 500
  /// targets will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Required. A page token, received from a previous
  /// `ListTargets` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListTargets` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTargetProjectsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTargetProjectsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/targetProjects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTargetProjectsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single TargetProject.
  ///
  /// NOTE: TargetProject is a global resource; hence the only supported value
  /// for location is `global`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the target project.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/targetProjects/\[^/\]+$`.
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server will guarantee
  /// that for at least 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the TargetProject resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields will be overwritten.
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
    TargetProject request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

/// Message describing AWS Credentials using access key id and secret.
class AccessKeyCredentials {
  /// AWS access key ID.
  core.String? accessKeyId;

  /// Input only.
  ///
  /// AWS secret access key.
  core.String? secretAccessKey;

  /// Input only.
  ///
  /// AWS session token. Used only when AWS security token service (STS) is
  /// responsible for creating the temporary credentials.
  core.String? sessionToken;

  AccessKeyCredentials({
    this.accessKeyId,
    this.secretAccessKey,
    this.sessionToken,
  });

  AccessKeyCredentials.fromJson(core.Map json_)
      : this(
          accessKeyId: json_.containsKey('accessKeyId')
              ? json_['accessKeyId'] as core.String
              : null,
          secretAccessKey: json_.containsKey('secretAccessKey')
              ? json_['secretAccessKey'] as core.String
              : null,
          sessionToken: json_.containsKey('sessionToken')
              ? json_['sessionToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessKeyId != null) 'accessKeyId': accessKeyId!,
        if (secretAccessKey != null) 'secretAccessKey': secretAccessKey!,
        if (sessionToken != null) 'sessionToken': sessionToken!,
      };
}

/// AdaptingOSStep contains specific step details.
typedef AdaptingOSStep = $Empty;

/// Request message for 'AddGroupMigration' request.
class AddGroupMigrationRequest {
  /// The full path name of the MigratingVm to add.
  core.String? migratingVm;

  AddGroupMigrationRequest({
    this.migratingVm,
  });

  AddGroupMigrationRequest.fromJson(core.Map json_)
      : this(
          migratingVm: json_.containsKey('migratingVm')
              ? json_['migratingVm'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (migratingVm != null) 'migratingVm': migratingVm!,
      };
}

/// Describes an appliance version.
class ApplianceVersion {
  /// Determine whether it's critical to upgrade the appliance to this version.
  core.bool? critical;

  /// Link to a page that contains the version release notes.
  core.String? releaseNotesUri;

  /// A link for downloading the version.
  core.String? uri;

  /// The appliance version.
  core.String? version;

  ApplianceVersion({
    this.critical,
    this.releaseNotesUri,
    this.uri,
    this.version,
  });

  ApplianceVersion.fromJson(core.Map json_)
      : this(
          critical: json_.containsKey('critical')
              ? json_['critical'] as core.bool
              : null,
          releaseNotesUri: json_.containsKey('releaseNotesUri')
              ? json_['releaseNotesUri'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (critical != null) 'critical': critical!,
        if (releaseNotesUri != null) 'releaseNotesUri': releaseNotesUri!,
        if (uri != null) 'uri': uri!,
        if (version != null) 'version': version!,
      };
}

/// AppliedLicense holds the license data returned by adaptation module report.
class AppliedLicense {
  /// The OS license returned from the adaptation module's report.
  core.String? osLicense;

  /// The license type that was used in OS adaptation.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified license for the OS.
  /// - "NONE" : No license available for the OS.
  /// - "PAYG" : The license type is Pay As You Go license type.
  /// - "BYOL" : The license type is Bring Your Own License type.
  core.String? type;

  AppliedLicense({
    this.osLicense,
    this.type,
  });

  AppliedLicense.fromJson(core.Map json_)
      : this(
          osLicense: json_.containsKey('osLicense')
              ? json_['osLicense'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (osLicense != null) 'osLicense': osLicense!,
        if (type != null) 'type': type!,
      };
}

/// Holds informatiom about the available versions for upgrade.
class AvailableUpdates {
  /// The latest version for in place update.
  ///
  /// The current appliance can be updated to this version using the API or m4c
  /// CLI.
  ApplianceVersion? inPlaceUpdate;

  /// The newest deployable version of the appliance.
  ///
  /// The current appliance can't be updated into this version, and the owner
  /// must manually deploy this OVA to a new appliance.
  ApplianceVersion? newDeployableAppliance;

  AvailableUpdates({
    this.inPlaceUpdate,
    this.newDeployableAppliance,
  });

  AvailableUpdates.fromJson(core.Map json_)
      : this(
          inPlaceUpdate: json_.containsKey('inPlaceUpdate')
              ? ApplianceVersion.fromJson(
                  json_['inPlaceUpdate'] as core.Map<core.String, core.dynamic>)
              : null,
          newDeployableAppliance: json_.containsKey('newDeployableAppliance')
              ? ApplianceVersion.fromJson(json_['newDeployableAppliance']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inPlaceUpdate != null) 'inPlaceUpdate': inPlaceUpdate!,
        if (newDeployableAppliance != null)
          'newDeployableAppliance': newDeployableAppliance!,
      };
}

/// The details of an AWS instance disk.
class AwsDiskDetails {
  /// The ordinal number of the disk.
  core.int? diskNumber;

  /// Size in GB.
  core.String? sizeGb;

  /// AWS volume ID.
  core.String? volumeId;

  AwsDiskDetails({
    this.diskNumber,
    this.sizeGb,
    this.volumeId,
  });

  AwsDiskDetails.fromJson(core.Map json_)
      : this(
          diskNumber: json_.containsKey('diskNumber')
              ? json_['diskNumber'] as core.int
              : null,
          sizeGb: json_.containsKey('sizeGb')
              ? json_['sizeGb'] as core.String
              : null,
          volumeId: json_.containsKey('volumeId')
              ? json_['volumeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskNumber != null) 'diskNumber': diskNumber!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (volumeId != null) 'volumeId': volumeId!,
      };
}

/// AwsSecurityGroup describes a security group of an AWS VM.
class AwsSecurityGroup {
  /// The AWS security group id.
  core.String? id;

  /// The AWS security group name.
  core.String? name;

  AwsSecurityGroup({
    this.id,
    this.name,
  });

  AwsSecurityGroup.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// AwsSourceDetails message describes a specific source details for the AWS
/// source type.
class AwsSourceDetails {
  /// AWS Credentials using access key id and secret.
  AccessKeyCredentials? accessKeyCreds;

  /// The AWS region that the source VMs will be migrated from.
  ///
  /// Immutable.
  core.String? awsRegion;

  /// Provides details on the state of the Source in case of an error.
  ///
  /// Output only.
  Status? error;

  /// AWS security group names to limit the scope of the source inventory.
  core.List<core.String>? inventorySecurityGroupNames;

  /// AWS resource tags to limit the scope of the source inventory.
  core.List<Tag>? inventoryTagList;

  /// User specified tags to add to every M2VM generated resource in AWS.
  ///
  /// These tags will be set in addition to the default tags that are set as
  /// part of the migration process. The tags must not begin with the reserved
  /// prefix `m2vm`.
  core.Map<core.String, core.String>? migrationResourcesUserTags;

  /// The source's public IP.
  ///
  /// All communication initiated by this source will originate from this IP.
  ///
  /// Output only.
  core.String? publicIp;

  /// State of the source as determined by the health check.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unknown. This is used for API
  /// compatibility only and is not used by the system.
  /// - "PENDING" : The state was not sampled by the health checks yet.
  /// - "FAILED" : The source is available but might not be usable yet due to
  /// invalid credentials or another reason. The error message will contain
  /// further details.
  /// - "ACTIVE" : The source exists and its credentials were verified.
  core.String? state;

  AwsSourceDetails({
    this.accessKeyCreds,
    this.awsRegion,
    this.error,
    this.inventorySecurityGroupNames,
    this.inventoryTagList,
    this.migrationResourcesUserTags,
    this.publicIp,
    this.state,
  });

  AwsSourceDetails.fromJson(core.Map json_)
      : this(
          accessKeyCreds: json_.containsKey('accessKeyCreds')
              ? AccessKeyCredentials.fromJson(json_['accessKeyCreds']
                  as core.Map<core.String, core.dynamic>)
              : null,
          awsRegion: json_.containsKey('awsRegion')
              ? json_['awsRegion'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          inventorySecurityGroupNames:
              json_.containsKey('inventorySecurityGroupNames')
                  ? (json_['inventorySecurityGroupNames'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          inventoryTagList: json_.containsKey('inventoryTagList')
              ? (json_['inventoryTagList'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          migrationResourcesUserTags:
              json_.containsKey('migrationResourcesUserTags')
                  ? (json_['migrationResourcesUserTags']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, value) => core.MapEntry(
                        key,
                        value as core.String,
                      ),
                    )
                  : null,
          publicIp: json_.containsKey('publicIp')
              ? json_['publicIp'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessKeyCreds != null) 'accessKeyCreds': accessKeyCreds!,
        if (awsRegion != null) 'awsRegion': awsRegion!,
        if (error != null) 'error': error!,
        if (inventorySecurityGroupNames != null)
          'inventorySecurityGroupNames': inventorySecurityGroupNames!,
        if (inventoryTagList != null) 'inventoryTagList': inventoryTagList!,
        if (migrationResourcesUserTags != null)
          'migrationResourcesUserTags': migrationResourcesUserTags!,
        if (publicIp != null) 'publicIp': publicIp!,
        if (state != null) 'state': state!,
      };
}

/// Represent the source AWS VM details.
class AwsSourceVmDetails {
  /// The total size of the disks being migrated in bytes.
  core.String? committedStorageBytes;

  /// The disks attached to the source VM.
  core.List<AwsDiskDetails>? disks;

  /// The firmware type of the source VM.
  /// Possible string values are:
  /// - "FIRMWARE_UNSPECIFIED" : The firmware is unknown.
  /// - "EFI" : The firmware is EFI.
  /// - "BIOS" : The firmware is BIOS.
  core.String? firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  ///
  /// Output only.
  VmCapabilities? vmCapabilitiesInfo;

  AwsSourceVmDetails({
    this.committedStorageBytes,
    this.disks,
    this.firmware,
    this.vmCapabilitiesInfo,
  });

  AwsSourceVmDetails.fromJson(core.Map json_)
      : this(
          committedStorageBytes: json_.containsKey('committedStorageBytes')
              ? json_['committedStorageBytes'] as core.String
              : null,
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => AwsDiskDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          firmware: json_.containsKey('firmware')
              ? json_['firmware'] as core.String
              : null,
          vmCapabilitiesInfo: json_.containsKey('vmCapabilitiesInfo')
              ? VmCapabilities.fromJson(json_['vmCapabilitiesInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (committedStorageBytes != null)
          'committedStorageBytes': committedStorageBytes!,
        if (disks != null) 'disks': disks!,
        if (firmware != null) 'firmware': firmware!,
        if (vmCapabilitiesInfo != null)
          'vmCapabilitiesInfo': vmCapabilitiesInfo!,
      };
}

/// AwsVmDetails describes a VM in AWS.
class AwsVmDetails {
  /// The CPU architecture.
  /// Possible string values are:
  /// - "VM_ARCHITECTURE_UNSPECIFIED" : The architecture is unknown.
  /// - "I386" : The architecture is I386.
  /// - "X86_64" : The architecture is X86_64.
  /// - "ARM64" : The architecture is ARM64.
  /// - "X86_64_MAC" : The architecture is X86_64_MAC.
  core.String? architecture;

  /// The VM Boot Option.
  /// Possible string values are:
  /// - "BOOT_OPTION_UNSPECIFIED" : The boot option is unknown.
  /// - "EFI" : The boot option is UEFI.
  /// - "BIOS" : The boot option is LEGACY-BIOS.
  core.String? bootOption;

  /// The total size of the storage allocated to the VM in MB.
  core.String? committedStorageMb;

  /// The number of cpus the VM has.
  core.int? cpuCount;

  /// The number of disks the VM has.
  core.int? diskCount;

  /// The display name of the VM.
  ///
  /// Note that this value is not necessarily unique.
  core.String? displayName;

  /// The instance type of the VM.
  core.String? instanceType;

  /// The memory size of the VM in MB.
  core.int? memoryMb;

  /// The VM's OS.
  core.String? osDescription;

  /// The power state of the VM at the moment list was taken.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "POWER_STATE_UNSPECIFIED" : Power state is not specified.
  /// - "ON" : The VM is turned on.
  /// - "OFF" : The VM is turned off.
  /// - "SUSPENDED" : The VM is suspended. This is similar to hibernation or
  /// sleep mode.
  /// - "PENDING" : The VM is starting.
  core.String? powerState;

  /// The security groups the VM belongs to.
  core.List<AwsSecurityGroup>? securityGroups;

  /// The descriptive name of the AWS's source this VM is connected to.
  core.String? sourceDescription;

  /// The id of the AWS's source this VM is connected to.
  core.String? sourceId;

  /// The tags of the VM.
  core.Map<core.String, core.String>? tags;

  /// The virtualization type.
  /// Possible string values are:
  /// - "VM_VIRTUALIZATION_TYPE_UNSPECIFIED" : The virtualization type is
  /// unknown.
  /// - "HVM" : The virtualziation type is HVM.
  /// - "PARAVIRTUAL" : The virtualziation type is PARAVIRTUAL.
  core.String? virtualizationType;

  /// The VM ID in AWS.
  core.String? vmId;

  /// The VPC ID the VM belongs to.
  core.String? vpcId;

  /// The AWS zone of the VM.
  core.String? zone;

  AwsVmDetails({
    this.architecture,
    this.bootOption,
    this.committedStorageMb,
    this.cpuCount,
    this.diskCount,
    this.displayName,
    this.instanceType,
    this.memoryMb,
    this.osDescription,
    this.powerState,
    this.securityGroups,
    this.sourceDescription,
    this.sourceId,
    this.tags,
    this.virtualizationType,
    this.vmId,
    this.vpcId,
    this.zone,
  });

  AwsVmDetails.fromJson(core.Map json_)
      : this(
          architecture: json_.containsKey('architecture')
              ? json_['architecture'] as core.String
              : null,
          bootOption: json_.containsKey('bootOption')
              ? json_['bootOption'] as core.String
              : null,
          committedStorageMb: json_.containsKey('committedStorageMb')
              ? json_['committedStorageMb'] as core.String
              : null,
          cpuCount: json_.containsKey('cpuCount')
              ? json_['cpuCount'] as core.int
              : null,
          diskCount: json_.containsKey('diskCount')
              ? json_['diskCount'] as core.int
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          instanceType: json_.containsKey('instanceType')
              ? json_['instanceType'] as core.String
              : null,
          memoryMb: json_.containsKey('memoryMb')
              ? json_['memoryMb'] as core.int
              : null,
          osDescription: json_.containsKey('osDescription')
              ? json_['osDescription'] as core.String
              : null,
          powerState: json_.containsKey('powerState')
              ? json_['powerState'] as core.String
              : null,
          securityGroups: json_.containsKey('securityGroups')
              ? (json_['securityGroups'] as core.List)
                  .map((value) => AwsSecurityGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceDescription: json_.containsKey('sourceDescription')
              ? json_['sourceDescription'] as core.String
              : null,
          sourceId: json_.containsKey('sourceId')
              ? json_['sourceId'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          virtualizationType: json_.containsKey('virtualizationType')
              ? json_['virtualizationType'] as core.String
              : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
          vpcId:
              json_.containsKey('vpcId') ? json_['vpcId'] as core.String : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (bootOption != null) 'bootOption': bootOption!,
        if (committedStorageMb != null)
          'committedStorageMb': committedStorageMb!,
        if (cpuCount != null) 'cpuCount': cpuCount!,
        if (diskCount != null) 'diskCount': diskCount!,
        if (displayName != null) 'displayName': displayName!,
        if (instanceType != null) 'instanceType': instanceType!,
        if (memoryMb != null) 'memoryMb': memoryMb!,
        if (osDescription != null) 'osDescription': osDescription!,
        if (powerState != null) 'powerState': powerState!,
        if (securityGroups != null) 'securityGroups': securityGroups!,
        if (sourceDescription != null) 'sourceDescription': sourceDescription!,
        if (sourceId != null) 'sourceId': sourceId!,
        if (tags != null) 'tags': tags!,
        if (virtualizationType != null)
          'virtualizationType': virtualizationType!,
        if (vmId != null) 'vmId': vmId!,
        if (vpcId != null) 'vpcId': vpcId!,
        if (zone != null) 'zone': zone!,
      };
}

/// AWSVmsDetails describes VMs in AWS.
class AwsVmsDetails {
  /// The details of the AWS VMs.
  core.List<AwsVmDetails>? details;

  AwsVmsDetails({
    this.details,
  });

  AwsVmsDetails.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.List)
                  .map((value) => AwsVmDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
      };
}

/// The details of an Azure VM disk.
class AzureDiskDetails {
  /// Azure disk ID.
  core.String? diskId;

  /// The ordinal number of the disk.
  core.int? diskNumber;

  /// Size in GB.
  core.String? sizeGb;

  AzureDiskDetails({
    this.diskId,
    this.diskNumber,
    this.sizeGb,
  });

  AzureDiskDetails.fromJson(core.Map json_)
      : this(
          diskId: json_.containsKey('diskId')
              ? json_['diskId'] as core.String
              : null,
          diskNumber: json_.containsKey('diskNumber')
              ? json_['diskNumber'] as core.int
              : null,
          sizeGb: json_.containsKey('sizeGb')
              ? json_['sizeGb'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskId != null) 'diskId': diskId!,
        if (diskNumber != null) 'diskNumber': diskNumber!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
      };
}

/// AzureSourceDetails message describes a specific source details for the Azure
/// source type.
class AzureSourceDetails {
  /// The Azure location (region) that the source VMs will be migrated from.
  ///
  /// Immutable.
  core.String? azureLocation;

  /// Azure Credentials using tenant ID, client ID and secret.
  ClientSecretCredentials? clientSecretCreds;

  /// Provides details on the state of the Source in case of an error.
  ///
  /// Output only.
  Status? error;

  /// User specified tags to add to every M2VM generated resource in Azure.
  ///
  /// These tags will be set in addition to the default tags that are set as
  /// part of the migration process. The tags must not begin with the reserved
  /// prefix `m4ce` or `m2vm`.
  core.Map<core.String, core.String>? migrationResourcesUserTags;

  /// The ID of the Azure resource group that contains all resources related to
  /// the migration process of this source.
  ///
  /// Output only.
  core.String? resourceGroupId;

  /// State of the source as determined by the health check.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unknown. This is used for API
  /// compatibility only and is not used by the system.
  /// - "PENDING" : The state was not sampled by the health checks yet.
  /// - "FAILED" : The source is available but might not be usable yet due to
  /// invalid credentials or another reason. The error message will contain
  /// further details.
  /// - "ACTIVE" : The source exists and its credentials were verified.
  core.String? state;

  /// Azure subscription ID.
  ///
  /// Immutable.
  core.String? subscriptionId;

  AzureSourceDetails({
    this.azureLocation,
    this.clientSecretCreds,
    this.error,
    this.migrationResourcesUserTags,
    this.resourceGroupId,
    this.state,
    this.subscriptionId,
  });

  AzureSourceDetails.fromJson(core.Map json_)
      : this(
          azureLocation: json_.containsKey('azureLocation')
              ? json_['azureLocation'] as core.String
              : null,
          clientSecretCreds: json_.containsKey('clientSecretCreds')
              ? ClientSecretCredentials.fromJson(json_['clientSecretCreds']
                  as core.Map<core.String, core.dynamic>)
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          migrationResourcesUserTags:
              json_.containsKey('migrationResourcesUserTags')
                  ? (json_['migrationResourcesUserTags']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, value) => core.MapEntry(
                        key,
                        value as core.String,
                      ),
                    )
                  : null,
          resourceGroupId: json_.containsKey('resourceGroupId')
              ? json_['resourceGroupId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          subscriptionId: json_.containsKey('subscriptionId')
              ? json_['subscriptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (azureLocation != null) 'azureLocation': azureLocation!,
        if (clientSecretCreds != null) 'clientSecretCreds': clientSecretCreds!,
        if (error != null) 'error': error!,
        if (migrationResourcesUserTags != null)
          'migrationResourcesUserTags': migrationResourcesUserTags!,
        if (resourceGroupId != null) 'resourceGroupId': resourceGroupId!,
        if (state != null) 'state': state!,
        if (subscriptionId != null) 'subscriptionId': subscriptionId!,
      };
}

/// Represent the source Azure VM details.
class AzureSourceVmDetails {
  /// The total size of the disks being migrated in bytes.
  core.String? committedStorageBytes;

  /// The disks attached to the source VM.
  core.List<AzureDiskDetails>? disks;

  /// The firmware type of the source VM.
  /// Possible string values are:
  /// - "FIRMWARE_UNSPECIFIED" : The firmware is unknown.
  /// - "EFI" : The firmware is EFI.
  /// - "BIOS" : The firmware is BIOS.
  core.String? firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  ///
  /// Output only.
  VmCapabilities? vmCapabilitiesInfo;

  AzureSourceVmDetails({
    this.committedStorageBytes,
    this.disks,
    this.firmware,
    this.vmCapabilitiesInfo,
  });

  AzureSourceVmDetails.fromJson(core.Map json_)
      : this(
          committedStorageBytes: json_.containsKey('committedStorageBytes')
              ? json_['committedStorageBytes'] as core.String
              : null,
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => AzureDiskDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          firmware: json_.containsKey('firmware')
              ? json_['firmware'] as core.String
              : null,
          vmCapabilitiesInfo: json_.containsKey('vmCapabilitiesInfo')
              ? VmCapabilities.fromJson(json_['vmCapabilitiesInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (committedStorageBytes != null)
          'committedStorageBytes': committedStorageBytes!,
        if (disks != null) 'disks': disks!,
        if (firmware != null) 'firmware': firmware!,
        if (vmCapabilitiesInfo != null)
          'vmCapabilitiesInfo': vmCapabilitiesInfo!,
      };
}

/// AzureVmDetails describes a VM in Azure.
class AzureVmDetails {
  /// The VM Boot Option.
  /// Possible string values are:
  /// - "BOOT_OPTION_UNSPECIFIED" : The boot option is unknown.
  /// - "EFI" : The boot option is UEFI.
  /// - "BIOS" : The boot option is BIOS.
  core.String? bootOption;

  /// The total size of the storage allocated to the VM in MB.
  core.String? committedStorageMb;

  /// The VM's ComputerName.
  core.String? computerName;

  /// The number of cpus the VM has.
  core.int? cpuCount;

  /// The number of disks the VM has, including OS disk.
  core.int? diskCount;

  /// Description of the data disks.
  core.List<Disk>? disks;

  /// The memory size of the VM in MB.
  core.int? memoryMb;

  /// Description of the OS.
  OSDescription? osDescription;

  /// Description of the OS disk.
  OSDisk? osDisk;

  /// The power state of the VM at the moment list was taken.
  /// Possible string values are:
  /// - "POWER_STATE_UNSPECIFIED" : Power state is not specified.
  /// - "STARTING" : The VM is starting.
  /// - "RUNNING" : The VM is running.
  /// - "STOPPING" : The VM is stopping.
  /// - "STOPPED" : The VM is stopped.
  /// - "DEALLOCATING" : The VM is deallocating.
  /// - "DEALLOCATED" : The VM is deallocated.
  /// - "UNKNOWN" : The VM's power state is unknown.
  core.String? powerState;

  /// The tags of the VM.
  core.Map<core.String, core.String>? tags;

  /// The VM full path in Azure.
  core.String? vmId;

  /// VM size as configured in Azure.
  ///
  /// Determines the VM's hardware spec.
  core.String? vmSize;

  AzureVmDetails({
    this.bootOption,
    this.committedStorageMb,
    this.computerName,
    this.cpuCount,
    this.diskCount,
    this.disks,
    this.memoryMb,
    this.osDescription,
    this.osDisk,
    this.powerState,
    this.tags,
    this.vmId,
    this.vmSize,
  });

  AzureVmDetails.fromJson(core.Map json_)
      : this(
          bootOption: json_.containsKey('bootOption')
              ? json_['bootOption'] as core.String
              : null,
          committedStorageMb: json_.containsKey('committedStorageMb')
              ? json_['committedStorageMb'] as core.String
              : null,
          computerName: json_.containsKey('computerName')
              ? json_['computerName'] as core.String
              : null,
          cpuCount: json_.containsKey('cpuCount')
              ? json_['cpuCount'] as core.int
              : null,
          diskCount: json_.containsKey('diskCount')
              ? json_['diskCount'] as core.int
              : null,
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => Disk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          memoryMb: json_.containsKey('memoryMb')
              ? json_['memoryMb'] as core.int
              : null,
          osDescription: json_.containsKey('osDescription')
              ? OSDescription.fromJson(
                  json_['osDescription'] as core.Map<core.String, core.dynamic>)
              : null,
          osDisk: json_.containsKey('osDisk')
              ? OSDisk.fromJson(
                  json_['osDisk'] as core.Map<core.String, core.dynamic>)
              : null,
          powerState: json_.containsKey('powerState')
              ? json_['powerState'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
          vmSize: json_.containsKey('vmSize')
              ? json_['vmSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootOption != null) 'bootOption': bootOption!,
        if (committedStorageMb != null)
          'committedStorageMb': committedStorageMb!,
        if (computerName != null) 'computerName': computerName!,
        if (cpuCount != null) 'cpuCount': cpuCount!,
        if (diskCount != null) 'diskCount': diskCount!,
        if (disks != null) 'disks': disks!,
        if (memoryMb != null) 'memoryMb': memoryMb!,
        if (osDescription != null) 'osDescription': osDescription!,
        if (osDisk != null) 'osDisk': osDisk!,
        if (powerState != null) 'powerState': powerState!,
        if (tags != null) 'tags': tags!,
        if (vmId != null) 'vmId': vmId!,
        if (vmSize != null) 'vmSize': vmSize!,
      };
}

/// AzureVmsDetails describes VMs in Azure.
class AzureVmsDetails {
  /// The details of the Azure VMs.
  core.List<AzureVmDetails>? details;

  AzureVmsDetails({
    this.details,
  });

  AzureVmsDetails.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.List)
                  .map((value) => AzureVmDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
      };
}

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaults {
  /// Specifies a unique device name of your choice that is reflected into the
  /// /dev/disk/by-id/google-* tree of a Linux operating system running within
  /// the instance.
  ///
  /// If not specified, the server chooses a default device name to apply to
  /// this disk, in the form persistent-disk-x, where x is a number assigned by
  /// Google Compute Engine. This field is only applicable for persistent disks.
  ///
  /// Optional.
  core.String? deviceName;

  /// The name of the disk.
  ///
  /// Optional.
  core.String? diskName;

  /// The type of disk provisioning to use for the VM.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED" : An unspecified disk type. Will
  /// be used as STANDARD.
  /// - "COMPUTE_ENGINE_DISK_TYPE_STANDARD" : A Standard disk type.
  /// - "COMPUTE_ENGINE_DISK_TYPE_SSD" : SSD hard disk type.
  /// - "COMPUTE_ENGINE_DISK_TYPE_BALANCED" : An alternative to SSD persistent
  /// disks that balance performance and cost.
  core.String? diskType;

  /// The encryption to apply to the boot disk.
  ///
  /// Optional.
  Encryption? encryption;

  /// The image to use when creating the disk.
  DiskImageDefaults? image;

  BootDiskDefaults({
    this.deviceName,
    this.diskName,
    this.diskType,
    this.encryption,
    this.image,
  });

  BootDiskDefaults.fromJson(core.Map json_)
      : this(
          deviceName: json_.containsKey('deviceName')
              ? json_['deviceName'] as core.String
              : null,
          diskName: json_.containsKey('diskName')
              ? json_['diskName'] as core.String
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          encryption: json_.containsKey('encryption')
              ? Encryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          image: json_.containsKey('image')
              ? DiskImageDefaults.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceName != null) 'deviceName': deviceName!,
        if (diskName != null) 'diskName': diskName!,
        if (diskType != null) 'diskType': diskType!,
        if (encryption != null) 'encryption': encryption!,
        if (image != null) 'image': image!,
      };
}

/// Request message for 'CancelCloneJob' request.
typedef CancelCloneJobRequest = $Empty;

/// Request message for 'CancelCutoverJob' request.
typedef CancelCutoverJobRequest = $Empty;

/// Request message for 'CancelImageImportJob' request.
typedef CancelImageImportJobRequest = $Empty;

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Message describing Azure Credentials using tenant ID, client ID and secret.
class ClientSecretCredentials {
  /// Azure client ID.
  core.String? clientId;

  /// Input only.
  ///
  /// Azure client secret.
  core.String? clientSecret;

  /// Azure tenant ID.
  core.String? tenantId;

  ClientSecretCredentials({
    this.clientId,
    this.clientSecret,
    this.tenantId,
  });

  ClientSecretCredentials.fromJson(core.Map json_)
      : this(
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          clientSecret: json_.containsKey('clientSecret')
              ? json_['clientSecret'] as core.String
              : null,
          tenantId: json_.containsKey('tenantId')
              ? json_['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// CloneJob describes the process of creating a clone of a MigratingVM to the
/// requested target based on the latest successful uploaded snapshots.
///
/// While the migration cycles of a MigratingVm take place, it is possible to
/// verify the uploaded VM can be started in the cloud, by creating a clone. The
/// clone can be created without any downtime, and it is created using the
/// latest snapshots which are already in the cloud. The cloneJob is only
/// responsible for its work, not its products, which means once it is finished,
/// it will never touch the instance it created. It will only delete it in case
/// of the CloneJob being cancelled or upon failure to clone.
class CloneJob {
  /// Details of the target Persistent Disks in Compute Engine.
  ///
  /// Output only.
  ComputeEngineDisksTargetDetails? computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  ///
  /// Output only.
  ComputeEngineTargetDetails? computeEngineTargetDetails;

  /// The time the clone job was created (as an API call, not when it was
  /// actually created in the target).
  ///
  /// Output only.
  core.String? createTime;

  /// The time the clone job was ended.
  ///
  /// Output only.
  core.String? endTime;

  /// Provides details for the errors that led to the Clone Job's state.
  ///
  /// Output only.
  Status? error;

  /// The name of the clone.
  ///
  /// Output only.
  core.String? name;

  /// State of the clone job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unknown. This is used for API
  /// compatibility only and is not used by the system.
  /// - "PENDING" : The clone job has not yet started.
  /// - "ACTIVE" : The clone job is active and running.
  /// - "FAILED" : The clone job finished with errors.
  /// - "SUCCEEDED" : The clone job finished successfully.
  /// - "CANCELLED" : The clone job was cancelled.
  /// - "CANCELLING" : The clone job is being cancelled.
  /// - "ADAPTING_OS" : OS adaptation is running as part of the clone job to
  /// generate license.
  core.String? state;

  /// The time the state was last updated.
  ///
  /// Output only.
  core.String? stateTime;

  /// The clone steps list representing its progress.
  ///
  /// Output only.
  core.List<CloneStep>? steps;

  CloneJob({
    this.computeEngineDisksTargetDetails,
    this.computeEngineTargetDetails,
    this.createTime,
    this.endTime,
    this.error,
    this.name,
    this.state,
    this.stateTime,
    this.steps,
  });

  CloneJob.fromJson(core.Map json_)
      : this(
          computeEngineDisksTargetDetails:
              json_.containsKey('computeEngineDisksTargetDetails')
                  ? ComputeEngineDisksTargetDetails.fromJson(
                      json_['computeEngineDisksTargetDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          computeEngineTargetDetails:
              json_.containsKey('computeEngineTargetDetails')
                  ? ComputeEngineTargetDetails.fromJson(
                      json_['computeEngineTargetDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateTime: json_.containsKey('stateTime')
              ? json_['stateTime'] as core.String
              : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => CloneStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeEngineDisksTargetDetails != null)
          'computeEngineDisksTargetDetails': computeEngineDisksTargetDetails!,
        if (computeEngineTargetDetails != null)
          'computeEngineTargetDetails': computeEngineTargetDetails!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (stateTime != null) 'stateTime': stateTime!,
        if (steps != null) 'steps': steps!,
      };
}

/// CloneStep holds information about the clone step progress.
class CloneStep {
  /// Adapting OS step.
  AdaptingOSStep? adaptingOs;

  /// The time the step has ended.
  core.String? endTime;

  /// Instantiating migrated VM step.
  InstantiatingMigratedVMStep? instantiatingMigratedVm;

  /// Preparing VM disks step.
  PreparingVMDisksStep? preparingVmDisks;

  /// The time the step has started.
  core.String? startTime;

  CloneStep({
    this.adaptingOs,
    this.endTime,
    this.instantiatingMigratedVm,
    this.preparingVmDisks,
    this.startTime,
  });

  CloneStep.fromJson(core.Map json_)
      : this(
          adaptingOs: json_.containsKey('adaptingOs')
              ? AdaptingOSStep.fromJson(
                  json_['adaptingOs'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          instantiatingMigratedVm: json_.containsKey('instantiatingMigratedVm')
              ? InstantiatingMigratedVMStep.fromJson(
                  json_['instantiatingMigratedVm']
                      as core.Map<core.String, core.dynamic>)
              : null,
          preparingVmDisks: json_.containsKey('preparingVmDisks')
              ? PreparingVMDisksStep.fromJson(json_['preparingVmDisks']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adaptingOs != null) 'adaptingOs': adaptingOs!,
        if (endTime != null) 'endTime': endTime!,
        if (instantiatingMigratedVm != null)
          'instantiatingMigratedVm': instantiatingMigratedVm!,
        if (preparingVmDisks != null) 'preparingVmDisks': preparingVmDisks!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// ComputeEngineDisksTargetDefaults is a collection of details for creating
/// Persistent Disks in a target Compute Engine project.
class ComputeEngineDisksTargetDefaults {
  /// The details of each Persistent Disk to create.
  core.List<PersistentDiskDefaults>? disks;

  /// Details of the disk only migration target.
  DisksMigrationDisksTargetDefaults? disksTargetDefaults;

  /// The full path of the resource of type TargetProject which represents the
  /// Compute Engine project in which to create the Persistent Disks.
  core.String? targetProject;

  /// Details of the VM migration target.
  DisksMigrationVmTargetDefaults? vmTargetDefaults;

  /// The zone in which to create the Persistent Disks.
  core.String? zone;

  ComputeEngineDisksTargetDefaults({
    this.disks,
    this.disksTargetDefaults,
    this.targetProject,
    this.vmTargetDefaults,
    this.zone,
  });

  ComputeEngineDisksTargetDefaults.fromJson(core.Map json_)
      : this(
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => PersistentDiskDefaults.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          disksTargetDefaults: json_.containsKey('disksTargetDefaults')
              ? DisksMigrationDisksTargetDefaults.fromJson(
                  json_['disksTargetDefaults']
                      as core.Map<core.String, core.dynamic>)
              : null,
          targetProject: json_.containsKey('targetProject')
              ? json_['targetProject'] as core.String
              : null,
          vmTargetDefaults: json_.containsKey('vmTargetDefaults')
              ? DisksMigrationVmTargetDefaults.fromJson(
                  json_['vmTargetDefaults']
                      as core.Map<core.String, core.dynamic>)
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disks != null) 'disks': disks!,
        if (disksTargetDefaults != null)
          'disksTargetDefaults': disksTargetDefaults!,
        if (targetProject != null) 'targetProject': targetProject!,
        if (vmTargetDefaults != null) 'vmTargetDefaults': vmTargetDefaults!,
        if (zone != null) 'zone': zone!,
      };
}

/// ComputeEngineDisksTargetDetails is a collection of created Persistent Disks
/// details.
class ComputeEngineDisksTargetDetails {
  /// The details of each created Persistent Disk.
  core.List<PersistentDisk>? disks;

  /// Details of the disks-only migration target.
  DisksMigrationDisksTargetDetails? disksTargetDetails;

  /// Details for the VM the migrated data disks are attached to.
  DisksMigrationVmTargetDetails? vmTargetDetails;

  ComputeEngineDisksTargetDetails({
    this.disks,
    this.disksTargetDetails,
    this.vmTargetDetails,
  });

  ComputeEngineDisksTargetDetails.fromJson(core.Map json_)
      : this(
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => PersistentDisk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          disksTargetDetails: json_.containsKey('disksTargetDetails')
              ? DisksMigrationDisksTargetDetails.fromJson(
                  json_['disksTargetDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          vmTargetDetails: json_.containsKey('vmTargetDetails')
              ? DisksMigrationVmTargetDetails.fromJson(json_['vmTargetDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disks != null) 'disks': disks!,
        if (disksTargetDetails != null)
          'disksTargetDetails': disksTargetDetails!,
        if (vmTargetDetails != null) 'vmTargetDetails': vmTargetDetails!,
      };
}

/// ComputeEngineTargetDefaults is a collection of details for creating a VM in
/// a target Compute Engine project.
class ComputeEngineTargetDefaults {
  /// Additional licenses to assign to the VM.
  core.List<core.String>? additionalLicenses;

  /// The OS license returned from the adaptation module report.
  ///
  /// Output only.
  AppliedLicense? appliedLicense;

  /// The VM Boot Option, as set in the source VM.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_BOOT_OPTION_UNSPECIFIED" : The boot option is unknown.
  /// - "COMPUTE_ENGINE_BOOT_OPTION_EFI" : The boot option is EFI.
  /// - "COMPUTE_ENGINE_BOOT_OPTION_BIOS" : The boot option is BIOS.
  core.String? bootOption;

  /// Compute instance scheduling information (if empty default is used).
  ComputeScheduling? computeScheduling;

  /// The disk type to use in the VM.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED" : An unspecified disk type. Will
  /// be used as STANDARD.
  /// - "COMPUTE_ENGINE_DISK_TYPE_STANDARD" : A Standard disk type.
  /// - "COMPUTE_ENGINE_DISK_TYPE_SSD" : SSD hard disk type.
  /// - "COMPUTE_ENGINE_DISK_TYPE_BALANCED" : An alternative to SSD persistent
  /// disks that balance performance and cost.
  core.String? diskType;

  /// The encryption to apply to the VM disks.
  ///
  /// Optional. Immutable.
  Encryption? encryption;

  /// The hostname to assign to the VM.
  core.String? hostname;

  /// A map of labels to associate with the VM.
  core.Map<core.String, core.String>? labels;

  /// The license type to use in OS adaptation.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT" : The license type is the default
  /// for the OS.
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_PAYG" : The license type is Pay As You Go
  /// license type.
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_BYOL" : The license type is Bring Your Own
  /// License type.
  core.String? licenseType;

  /// The machine type to create the VM with.
  core.String? machineType;

  /// The machine type series to create the VM with.
  core.String? machineTypeSeries;

  /// The metadata key/value pairs to assign to the VM.
  core.Map<core.String, core.String>? metadata;

  /// List of NICs connected to this VM.
  core.List<NetworkInterface>? networkInterfaces;

  /// A list of network tags to associate with the VM.
  core.List<core.String>? networkTags;

  /// Defines whether the instance has Secure Boot enabled.
  ///
  /// This can be set to true only if the VM boot option is EFI.
  core.bool? secureBoot;

  /// The service account to associate the VM with.
  core.String? serviceAccount;

  /// The full path of the resource of type TargetProject which represents the
  /// Compute Engine project in which to create this VM.
  core.String? targetProject;

  /// The name of the VM to create.
  core.String? vmName;

  /// The zone in which to create the VM.
  core.String? zone;

  ComputeEngineTargetDefaults({
    this.additionalLicenses,
    this.appliedLicense,
    this.bootOption,
    this.computeScheduling,
    this.diskType,
    this.encryption,
    this.hostname,
    this.labels,
    this.licenseType,
    this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.networkInterfaces,
    this.networkTags,
    this.secureBoot,
    this.serviceAccount,
    this.targetProject,
    this.vmName,
    this.zone,
  });

  ComputeEngineTargetDefaults.fromJson(core.Map json_)
      : this(
          additionalLicenses: json_.containsKey('additionalLicenses')
              ? (json_['additionalLicenses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          appliedLicense: json_.containsKey('appliedLicense')
              ? AppliedLicense.fromJson(json_['appliedLicense']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bootOption: json_.containsKey('bootOption')
              ? json_['bootOption'] as core.String
              : null,
          computeScheduling: json_.containsKey('computeScheduling')
              ? ComputeScheduling.fromJson(json_['computeScheduling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          encryption: json_.containsKey('encryption')
              ? Encryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          licenseType: json_.containsKey('licenseType')
              ? json_['licenseType'] as core.String
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          machineTypeSeries: json_.containsKey('machineTypeSeries')
              ? json_['machineTypeSeries'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          networkInterfaces: json_.containsKey('networkInterfaces')
              ? (json_['networkInterfaces'] as core.List)
                  .map((value) => NetworkInterface.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          networkTags: json_.containsKey('networkTags')
              ? (json_['networkTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          secureBoot: json_.containsKey('secureBoot')
              ? json_['secureBoot'] as core.bool
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          targetProject: json_.containsKey('targetProject')
              ? json_['targetProject'] as core.String
              : null,
          vmName: json_.containsKey('vmName')
              ? json_['vmName'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLicenses != null)
          'additionalLicenses': additionalLicenses!,
        if (appliedLicense != null) 'appliedLicense': appliedLicense!,
        if (bootOption != null) 'bootOption': bootOption!,
        if (computeScheduling != null) 'computeScheduling': computeScheduling!,
        if (diskType != null) 'diskType': diskType!,
        if (encryption != null) 'encryption': encryption!,
        if (hostname != null) 'hostname': hostname!,
        if (labels != null) 'labels': labels!,
        if (licenseType != null) 'licenseType': licenseType!,
        if (machineType != null) 'machineType': machineType!,
        if (machineTypeSeries != null) 'machineTypeSeries': machineTypeSeries!,
        if (metadata != null) 'metadata': metadata!,
        if (networkInterfaces != null) 'networkInterfaces': networkInterfaces!,
        if (networkTags != null) 'networkTags': networkTags!,
        if (secureBoot != null) 'secureBoot': secureBoot!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (targetProject != null) 'targetProject': targetProject!,
        if (vmName != null) 'vmName': vmName!,
        if (zone != null) 'zone': zone!,
      };
}

/// ComputeEngineTargetDetails is a collection of details for creating a VM in a
/// target Compute Engine project.
class ComputeEngineTargetDetails {
  /// Additional licenses to assign to the VM.
  core.List<core.String>? additionalLicenses;

  /// The OS license returned from the adaptation module report.
  AppliedLicense? appliedLicense;

  /// The VM Boot Option, as set in the source VM.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_BOOT_OPTION_UNSPECIFIED" : The boot option is unknown.
  /// - "COMPUTE_ENGINE_BOOT_OPTION_EFI" : The boot option is EFI.
  /// - "COMPUTE_ENGINE_BOOT_OPTION_BIOS" : The boot option is BIOS.
  core.String? bootOption;

  /// Compute instance scheduling information (if empty default is used).
  ComputeScheduling? computeScheduling;

  /// The disk type to use in the VM.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED" : An unspecified disk type. Will
  /// be used as STANDARD.
  /// - "COMPUTE_ENGINE_DISK_TYPE_STANDARD" : A Standard disk type.
  /// - "COMPUTE_ENGINE_DISK_TYPE_SSD" : SSD hard disk type.
  /// - "COMPUTE_ENGINE_DISK_TYPE_BALANCED" : An alternative to SSD persistent
  /// disks that balance performance and cost.
  core.String? diskType;

  /// The encryption to apply to the VM disks.
  ///
  /// Optional.
  Encryption? encryption;

  /// The hostname to assign to the VM.
  core.String? hostname;

  /// A map of labels to associate with the VM.
  core.Map<core.String, core.String>? labels;

  /// The license type to use in OS adaptation.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT" : The license type is the default
  /// for the OS.
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_PAYG" : The license type is Pay As You Go
  /// license type.
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_BYOL" : The license type is Bring Your Own
  /// License type.
  core.String? licenseType;

  /// The machine type to create the VM with.
  core.String? machineType;

  /// The machine type series to create the VM with.
  core.String? machineTypeSeries;

  /// The metadata key/value pairs to assign to the VM.
  core.Map<core.String, core.String>? metadata;

  /// List of NICs connected to this VM.
  core.List<NetworkInterface>? networkInterfaces;

  /// A list of network tags to associate with the VM.
  core.List<core.String>? networkTags;

  /// The Google Cloud target project ID or project name.
  core.String? project;

  /// Defines whether the instance has Secure Boot enabled.
  ///
  /// This can be set to true only if the VM boot option is EFI.
  core.bool? secureBoot;

  /// The service account to associate the VM with.
  core.String? serviceAccount;

  /// The name of the VM to create.
  core.String? vmName;

  /// The zone in which to create the VM.
  core.String? zone;

  ComputeEngineTargetDetails({
    this.additionalLicenses,
    this.appliedLicense,
    this.bootOption,
    this.computeScheduling,
    this.diskType,
    this.encryption,
    this.hostname,
    this.labels,
    this.licenseType,
    this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.networkInterfaces,
    this.networkTags,
    this.project,
    this.secureBoot,
    this.serviceAccount,
    this.vmName,
    this.zone,
  });

  ComputeEngineTargetDetails.fromJson(core.Map json_)
      : this(
          additionalLicenses: json_.containsKey('additionalLicenses')
              ? (json_['additionalLicenses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          appliedLicense: json_.containsKey('appliedLicense')
              ? AppliedLicense.fromJson(json_['appliedLicense']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bootOption: json_.containsKey('bootOption')
              ? json_['bootOption'] as core.String
              : null,
          computeScheduling: json_.containsKey('computeScheduling')
              ? ComputeScheduling.fromJson(json_['computeScheduling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          encryption: json_.containsKey('encryption')
              ? Encryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          licenseType: json_.containsKey('licenseType')
              ? json_['licenseType'] as core.String
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          machineTypeSeries: json_.containsKey('machineTypeSeries')
              ? json_['machineTypeSeries'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          networkInterfaces: json_.containsKey('networkInterfaces')
              ? (json_['networkInterfaces'] as core.List)
                  .map((value) => NetworkInterface.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          networkTags: json_.containsKey('networkTags')
              ? (json_['networkTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          secureBoot: json_.containsKey('secureBoot')
              ? json_['secureBoot'] as core.bool
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          vmName: json_.containsKey('vmName')
              ? json_['vmName'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLicenses != null)
          'additionalLicenses': additionalLicenses!,
        if (appliedLicense != null) 'appliedLicense': appliedLicense!,
        if (bootOption != null) 'bootOption': bootOption!,
        if (computeScheduling != null) 'computeScheduling': computeScheduling!,
        if (diskType != null) 'diskType': diskType!,
        if (encryption != null) 'encryption': encryption!,
        if (hostname != null) 'hostname': hostname!,
        if (labels != null) 'labels': labels!,
        if (licenseType != null) 'licenseType': licenseType!,
        if (machineType != null) 'machineType': machineType!,
        if (machineTypeSeries != null) 'machineTypeSeries': machineTypeSeries!,
        if (metadata != null) 'metadata': metadata!,
        if (networkInterfaces != null) 'networkInterfaces': networkInterfaces!,
        if (networkTags != null) 'networkTags': networkTags!,
        if (project != null) 'project': project!,
        if (secureBoot != null) 'secureBoot': secureBoot!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (vmName != null) 'vmName': vmName!,
        if (zone != null) 'zone': zone!,
      };
}

/// Scheduling information for VM on maintenance/restart behaviour and node
/// allocation in sole tenant nodes.
class ComputeScheduling {
  /// The minimum number of virtual CPUs this instance will consume when running
  /// on a sole-tenant node.
  ///
  /// Ignored if no node_affinites are configured.
  core.int? minNodeCpus;

  /// A set of node affinity and anti-affinity configurations for sole tenant
  /// nodes.
  core.List<SchedulingNodeAffinity>? nodeAffinities;

  /// How the instance should behave when the host machine undergoes maintenance
  /// that may temporarily impact instance performance.
  /// Possible string values are:
  /// - "ON_HOST_MAINTENANCE_UNSPECIFIED" : An unknown, unexpected behavior.
  /// - "TERMINATE" : Terminate the instance when the host machine undergoes
  /// maintenance.
  /// - "MIGRATE" : Migrate the instance when the host machine undergoes
  /// maintenance.
  core.String? onHostMaintenance;

  /// Whether the Instance should be automatically restarted whenever it is
  /// terminated by Compute Engine (not terminated by user).
  ///
  /// This configuration is identical to `automaticRestart` field in Compute
  /// Engine create instance under scheduling. It was changed to an enum
  /// (instead of a boolean) to match the default value in Compute Engine which
  /// is automatic restart.
  /// Possible string values are:
  /// - "RESTART_TYPE_UNSPECIFIED" : Unspecified behavior. This will use the
  /// default.
  /// - "AUTOMATIC_RESTART" : The Instance should be automatically restarted
  /// whenever it is terminated by Compute Engine.
  /// - "NO_AUTOMATIC_RESTART" : The Instance isn't automatically restarted
  /// whenever it is terminated by Compute Engine.
  core.String? restartType;

  ComputeScheduling({
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.restartType,
  });

  ComputeScheduling.fromJson(core.Map json_)
      : this(
          minNodeCpus: json_.containsKey('minNodeCpus')
              ? json_['minNodeCpus'] as core.int
              : null,
          nodeAffinities: json_.containsKey('nodeAffinities')
              ? (json_['nodeAffinities'] as core.List)
                  .map((value) => SchedulingNodeAffinity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          onHostMaintenance: json_.containsKey('onHostMaintenance')
              ? json_['onHostMaintenance'] as core.String
              : null,
          restartType: json_.containsKey('restartType')
              ? json_['restartType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (minNodeCpus != null) 'minNodeCpus': minNodeCpus!,
        if (nodeAffinities != null) 'nodeAffinities': nodeAffinities!,
        if (onHostMaintenance != null) 'onHostMaintenance': onHostMaintenance!,
        if (restartType != null) 'restartType': restartType!,
      };
}

/// CreatingImageStep contains specific step details.
typedef CreatingImageStep = $Empty;

/// CutoverForecast holds information about future CutoverJobs of a MigratingVm.
class CutoverForecast {
  /// Estimation of the CutoverJob duration.
  ///
  /// Output only.
  core.String? estimatedCutoverJobDuration;

  CutoverForecast({
    this.estimatedCutoverJobDuration,
  });

  CutoverForecast.fromJson(core.Map json_)
      : this(
          estimatedCutoverJobDuration:
              json_.containsKey('estimatedCutoverJobDuration')
                  ? json_['estimatedCutoverJobDuration'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (estimatedCutoverJobDuration != null)
          'estimatedCutoverJobDuration': estimatedCutoverJobDuration!,
      };
}

/// CutoverJob message describes a cutover of a migrating VM.
///
/// The CutoverJob is the operation of shutting down the VM, creating a snapshot
/// and clonning the VM using the replicated snapshot.
class CutoverJob {
  /// Details of the target Persistent Disks in Compute Engine.
  ///
  /// Output only.
  ComputeEngineDisksTargetDetails? computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  ///
  /// Output only.
  ComputeEngineTargetDetails? computeEngineTargetDetails;

  /// The time the cutover job was created (as an API call, not when it was
  /// actually created in the target).
  ///
  /// Output only.
  core.String? createTime;

  /// The time the cutover job had finished.
  ///
  /// Output only.
  core.String? endTime;

  /// Provides details for the errors that led to the Cutover Job's state.
  ///
  /// Output only.
  Status? error;

  /// The name of the cutover job.
  ///
  /// Output only.
  core.String? name;

  /// The current progress in percentage of the cutover job.
  ///
  /// Output only.
  core.int? progressPercent;

  /// State of the cutover job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unknown. This is used for API
  /// compatibility only and is not used by the system.
  /// - "PENDING" : The cutover job has not yet started.
  /// - "FAILED" : The cutover job finished with errors.
  /// - "SUCCEEDED" : The cutover job finished successfully.
  /// - "CANCELLED" : The cutover job was cancelled.
  /// - "CANCELLING" : The cutover job is being cancelled.
  /// - "ACTIVE" : The cutover job is active and running.
  /// - "ADAPTING_OS" : OS adaptation is running as part of the cutover job to
  /// generate license.
  core.String? state;

  /// A message providing possible extra details about the current state.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The time the state was last updated.
  ///
  /// Output only.
  core.String? stateTime;

  /// The cutover steps list representing its progress.
  ///
  /// Output only.
  core.List<CutoverStep>? steps;

  CutoverJob({
    this.computeEngineDisksTargetDetails,
    this.computeEngineTargetDetails,
    this.createTime,
    this.endTime,
    this.error,
    this.name,
    this.progressPercent,
    this.state,
    this.stateMessage,
    this.stateTime,
    this.steps,
  });

  CutoverJob.fromJson(core.Map json_)
      : this(
          computeEngineDisksTargetDetails:
              json_.containsKey('computeEngineDisksTargetDetails')
                  ? ComputeEngineDisksTargetDetails.fromJson(
                      json_['computeEngineDisksTargetDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          computeEngineTargetDetails:
              json_.containsKey('computeEngineTargetDetails')
                  ? ComputeEngineTargetDetails.fromJson(
                      json_['computeEngineTargetDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          progressPercent: json_.containsKey('progressPercent')
              ? json_['progressPercent'] as core.int
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateMessage: json_.containsKey('stateMessage')
              ? json_['stateMessage'] as core.String
              : null,
          stateTime: json_.containsKey('stateTime')
              ? json_['stateTime'] as core.String
              : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => CutoverStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeEngineDisksTargetDetails != null)
          'computeEngineDisksTargetDetails': computeEngineDisksTargetDetails!,
        if (computeEngineTargetDetails != null)
          'computeEngineTargetDetails': computeEngineTargetDetails!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (name != null) 'name': name!,
        if (progressPercent != null) 'progressPercent': progressPercent!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (stateTime != null) 'stateTime': stateTime!,
        if (steps != null) 'steps': steps!,
      };
}

/// CutoverStep holds information about the cutover step progress.
class CutoverStep {
  /// The time the step has ended.
  core.String? endTime;

  /// Final sync step.
  ReplicationCycle? finalSync;

  /// Instantiating migrated VM step.
  InstantiatingMigratedVMStep? instantiatingMigratedVm;

  /// Preparing VM disks step.
  PreparingVMDisksStep? preparingVmDisks;

  /// A replication cycle prior cutover step.
  ReplicationCycle? previousReplicationCycle;

  /// Shutting down VM step.
  ShuttingDownSourceVMStep? shuttingDownSourceVm;

  /// The time the step has started.
  core.String? startTime;

  CutoverStep({
    this.endTime,
    this.finalSync,
    this.instantiatingMigratedVm,
    this.preparingVmDisks,
    this.previousReplicationCycle,
    this.shuttingDownSourceVm,
    this.startTime,
  });

  CutoverStep.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          finalSync: json_.containsKey('finalSync')
              ? ReplicationCycle.fromJson(
                  json_['finalSync'] as core.Map<core.String, core.dynamic>)
              : null,
          instantiatingMigratedVm: json_.containsKey('instantiatingMigratedVm')
              ? InstantiatingMigratedVMStep.fromJson(
                  json_['instantiatingMigratedVm']
                      as core.Map<core.String, core.dynamic>)
              : null,
          preparingVmDisks: json_.containsKey('preparingVmDisks')
              ? PreparingVMDisksStep.fromJson(json_['preparingVmDisks']
                  as core.Map<core.String, core.dynamic>)
              : null,
          previousReplicationCycle:
              json_.containsKey('previousReplicationCycle')
                  ? ReplicationCycle.fromJson(json_['previousReplicationCycle']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          shuttingDownSourceVm: json_.containsKey('shuttingDownSourceVm')
              ? ShuttingDownSourceVMStep.fromJson(json_['shuttingDownSourceVm']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (finalSync != null) 'finalSync': finalSync!,
        if (instantiatingMigratedVm != null)
          'instantiatingMigratedVm': instantiatingMigratedVm!,
        if (preparingVmDisks != null) 'preparingVmDisks': preparingVmDisks!,
        if (previousReplicationCycle != null)
          'previousReplicationCycle': previousReplicationCycle!,
        if (shuttingDownSourceVm != null)
          'shuttingDownSourceVm': shuttingDownSourceVm!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// CycleStep holds information about a step progress.
class CycleStep {
  /// The time the cycle step has ended.
  core.String? endTime;

  /// Initializing replication step.
  InitializingReplicationStep? initializingReplication;

  /// Post processing step.
  PostProcessingStep? postProcessing;

  /// Replicating step.
  ReplicatingStep? replicating;

  /// The time the cycle step has started.
  core.String? startTime;

  CycleStep({
    this.endTime,
    this.initializingReplication,
    this.postProcessing,
    this.replicating,
    this.startTime,
  });

  CycleStep.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          initializingReplication: json_.containsKey('initializingReplication')
              ? InitializingReplicationStep.fromJson(
                  json_['initializingReplication']
                      as core.Map<core.String, core.dynamic>)
              : null,
          postProcessing: json_.containsKey('postProcessing')
              ? PostProcessingStep.fromJson(json_['postProcessing']
                  as core.Map<core.String, core.dynamic>)
              : null,
          replicating: json_.containsKey('replicating')
              ? ReplicatingStep.fromJson(
                  json_['replicating'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (initializingReplication != null)
          'initializingReplication': initializingReplication!,
        if (postProcessing != null) 'postProcessing': postProcessing!,
        if (replicating != null) 'replicating': replicating!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Mentions that the image import is not using OS adaptation process.
typedef DataDiskImageImport = $Empty;

/// DatacenterConnector message describes a connector between the Source and
/// Google Cloud, which is installed on a vmware datacenter (an OVA vm installed
/// by the user) to connect the Datacenter to Google Cloud and support vm
/// migration data transfer.
class DatacenterConnector {
  /// Appliance OVA version.
  ///
  /// This is the OVA which is manually installed by the user and contains the
  /// infrastructure for the automatically updatable components on the
  /// appliance.
  ///
  /// Output only.
  core.String? applianceInfrastructureVersion;

  /// Appliance last installed update bundle version.
  ///
  /// This is the version of the automatically updatable components on the
  /// appliance.
  ///
  /// Output only.
  core.String? applianceSoftwareVersion;

  /// The available versions for updating this appliance.
  ///
  /// Output only.
  AvailableUpdates? availableVersions;

  /// The communication channel between the datacenter connector and Google
  /// Cloud.
  ///
  /// Output only.
  core.String? bucket;

  /// The time the connector was created (as an API call, not when it was
  /// actually installed).
  ///
  /// Output only.
  core.String? createTime;

  /// Provides details on the state of the Datacenter Connector in case of an
  /// error.
  ///
  /// Output only.
  Status? error;

  /// The connector's name.
  ///
  /// Output only.
  core.String? name;

  /// A unique key for this connector.
  ///
  /// This key is internal to the OVA connector and is supplied with its
  /// creation during the registration process and can not be modified.
  ///
  /// Immutable.
  core.String? registrationId;

  /// The service account to use in the connector when communicating with the
  /// cloud.
  core.String? serviceAccount;

  /// State of the DatacenterConnector, as determined by the health checks.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unknown. This is used for API
  /// compatibility only and is not used by the system.
  /// - "PENDING" : The state was not sampled by the health checks yet.
  /// - "OFFLINE" : The source was sampled by health checks and is not
  /// available.
  /// - "FAILED" : The source is available but might not be usable yet due to
  /// unvalidated credentials or another reason. The credentials referred to are
  /// the ones to the Source. The error message will contain further details.
  /// - "ACTIVE" : The source exists and its credentials were verified.
  core.String? state;

  /// The time the state was last set.
  ///
  /// Output only.
  core.String? stateTime;

  /// The last time the connector was updated with an API call.
  ///
  /// Output only.
  core.String? updateTime;

  /// The status of the current / last upgradeAppliance operation.
  ///
  /// Output only.
  UpgradeStatus? upgradeStatus;

  /// The version running in the DatacenterConnector.
  ///
  /// This is supplied by the OVA connector during the registration process and
  /// can not be modified.
  core.String? version;

  DatacenterConnector({
    this.applianceInfrastructureVersion,
    this.applianceSoftwareVersion,
    this.availableVersions,
    this.bucket,
    this.createTime,
    this.error,
    this.name,
    this.registrationId,
    this.serviceAccount,
    this.state,
    this.stateTime,
    this.updateTime,
    this.upgradeStatus,
    this.version,
  });

  DatacenterConnector.fromJson(core.Map json_)
      : this(
          applianceInfrastructureVersion:
              json_.containsKey('applianceInfrastructureVersion')
                  ? json_['applianceInfrastructureVersion'] as core.String
                  : null,
          applianceSoftwareVersion:
              json_.containsKey('applianceSoftwareVersion')
                  ? json_['applianceSoftwareVersion'] as core.String
                  : null,
          availableVersions: json_.containsKey('availableVersions')
              ? AvailableUpdates.fromJson(json_['availableVersions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          registrationId: json_.containsKey('registrationId')
              ? json_['registrationId'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateTime: json_.containsKey('stateTime')
              ? json_['stateTime'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upgradeStatus: json_.containsKey('upgradeStatus')
              ? UpgradeStatus.fromJson(
                  json_['upgradeStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applianceInfrastructureVersion != null)
          'applianceInfrastructureVersion': applianceInfrastructureVersion!,
        if (applianceSoftwareVersion != null)
          'applianceSoftwareVersion': applianceSoftwareVersion!,
        if (availableVersions != null) 'availableVersions': availableVersions!,
        if (bucket != null) 'bucket': bucket!,
        if (createTime != null) 'createTime': createTime!,
        if (error != null) 'error': error!,
        if (name != null) 'name': name!,
        if (registrationId != null) 'registrationId': registrationId!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (stateTime != null) 'stateTime': stateTime!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgradeStatus != null) 'upgradeStatus': upgradeStatus!,
        if (version != null) 'version': version!,
      };
}

/// A message describing a data disk.
class Disk {
  /// The disk's Logical Unit Number (LUN).
  core.int? lun;

  /// The disk name.
  core.String? name;

  /// The disk size in GB.
  core.int? sizeGb;

  Disk({
    this.lun,
    this.name,
    this.sizeGb,
  });

  Disk.fromJson(core.Map json_)
      : this(
          lun: json_.containsKey('lun') ? json_['lun'] as core.int : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sizeGb:
              json_.containsKey('sizeGb') ? json_['sizeGb'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lun != null) 'lun': lun!,
        if (name != null) 'name': name!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
      };
}

/// Contains details about the image source used to create the disk.
class DiskImageDefaults {
  /// The Image resource used when creating the disk.
  ///
  /// Required.
  core.String? sourceImage;

  DiskImageDefaults({
    this.sourceImage,
  });

  DiskImageDefaults.fromJson(core.Map json_)
      : this(
          sourceImage: json_.containsKey('sourceImage')
              ? json_['sourceImage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceImage != null) 'sourceImage': sourceImage!,
      };
}

/// The target details of the image resource that will be created by the import
/// job.
class DiskImageTargetDetails {
  /// Additional licenses to assign to the image.
  ///
  /// Optional.
  core.List<core.String>? additionalLicenses;

  /// Use to skip OS adaptation process.
  ///
  /// Optional.
  DataDiskImageImport? dataDiskImageImport;

  /// An optional description of the image.
  ///
  /// Optional.
  core.String? description;

  /// The encryption to apply to the image.
  ///
  /// Optional. Immutable.
  Encryption? encryption;

  /// The name of the image family to which the new image belongs.
  ///
  /// Optional.
  core.String? familyName;

  /// The name of the image to be created.
  ///
  /// Required.
  core.String? imageName;

  /// A map of labels to associate with the image.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Use to set the parameters relevant for the OS adaptation process.
  ///
  /// Optional.
  ImageImportOsAdaptationParameters? osAdaptationParameters;

  /// Set to true to set the image storageLocations to the single region of the
  /// import job.
  ///
  /// When false, the closest multi-region is selected.
  ///
  /// Optional.
  core.bool? singleRegionStorage;

  /// Reference to the TargetProject resource that represents the target project
  /// in which the imported image will be created.
  ///
  /// Required.
  core.String? targetProject;

  DiskImageTargetDetails({
    this.additionalLicenses,
    this.dataDiskImageImport,
    this.description,
    this.encryption,
    this.familyName,
    this.imageName,
    this.labels,
    this.osAdaptationParameters,
    this.singleRegionStorage,
    this.targetProject,
  });

  DiskImageTargetDetails.fromJson(core.Map json_)
      : this(
          additionalLicenses: json_.containsKey('additionalLicenses')
              ? (json_['additionalLicenses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dataDiskImageImport: json_.containsKey('dataDiskImageImport')
              ? DataDiskImageImport.fromJson(json_['dataDiskImageImport']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          encryption: json_.containsKey('encryption')
              ? Encryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          familyName: json_.containsKey('familyName')
              ? json_['familyName'] as core.String
              : null,
          imageName: json_.containsKey('imageName')
              ? json_['imageName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          osAdaptationParameters: json_.containsKey('osAdaptationParameters')
              ? ImageImportOsAdaptationParameters.fromJson(
                  json_['osAdaptationParameters']
                      as core.Map<core.String, core.dynamic>)
              : null,
          singleRegionStorage: json_.containsKey('singleRegionStorage')
              ? json_['singleRegionStorage'] as core.bool
              : null,
          targetProject: json_.containsKey('targetProject')
              ? json_['targetProject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLicenses != null)
          'additionalLicenses': additionalLicenses!,
        if (dataDiskImageImport != null)
          'dataDiskImageImport': dataDiskImageImport!,
        if (description != null) 'description': description!,
        if (encryption != null) 'encryption': encryption!,
        if (familyName != null) 'familyName': familyName!,
        if (imageName != null) 'imageName': imageName!,
        if (labels != null) 'labels': labels!,
        if (osAdaptationParameters != null)
          'osAdaptationParameters': osAdaptationParameters!,
        if (singleRegionStorage != null)
          'singleRegionStorage': singleRegionStorage!,
        if (targetProject != null) 'targetProject': targetProject!,
      };
}

/// Details for a disk only migration.
typedef DisksMigrationDisksTargetDefaults = $Empty;

/// Details for a disks-only migration.
typedef DisksMigrationDisksTargetDetails = $Empty;

/// Details for creation of a VM that migrated data disks will be attached to.
class DisksMigrationVmTargetDefaults {
  /// Additional licenses to assign to the VM.
  ///
  /// Optional.
  core.List<core.String>? additionalLicenses;

  /// Details of the boot disk of the VM.
  ///
  /// Optional.
  BootDiskDefaults? bootDiskDefaults;

  /// Compute instance scheduling information (if empty default is used).
  ///
  /// Optional.
  ComputeScheduling? computeScheduling;

  /// The encryption to apply to the VM.
  ///
  /// Optional.
  Encryption? encryption;

  /// The hostname to assign to the VM.
  ///
  /// Optional.
  core.String? hostname;

  /// A map of labels to associate with the VM.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The machine type to create the VM with.
  ///
  /// Required.
  core.String? machineType;

  /// The machine type series to create the VM with.
  ///
  /// For presentation only.
  ///
  /// Optional.
  core.String? machineTypeSeries;

  /// The metadata key/value pairs to assign to the VM.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// NICs to attach to the VM.
  ///
  /// Optional.
  core.List<NetworkInterface>? networkInterfaces;

  /// A list of network tags to associate with the VM.
  ///
  /// Optional.
  core.List<core.String>? networkTags;

  /// Defines whether the instance has Secure Boot enabled.
  ///
  /// This can be set to true only if the VM boot option is EFI.
  ///
  /// Optional.
  core.bool? secureBoot;

  /// The service account to associate the VM with.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// The name of the VM to create.
  ///
  /// Required.
  core.String? vmName;

  DisksMigrationVmTargetDefaults({
    this.additionalLicenses,
    this.bootDiskDefaults,
    this.computeScheduling,
    this.encryption,
    this.hostname,
    this.labels,
    this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.networkInterfaces,
    this.networkTags,
    this.secureBoot,
    this.serviceAccount,
    this.vmName,
  });

  DisksMigrationVmTargetDefaults.fromJson(core.Map json_)
      : this(
          additionalLicenses: json_.containsKey('additionalLicenses')
              ? (json_['additionalLicenses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          bootDiskDefaults: json_.containsKey('bootDiskDefaults')
              ? BootDiskDefaults.fromJson(json_['bootDiskDefaults']
                  as core.Map<core.String, core.dynamic>)
              : null,
          computeScheduling: json_.containsKey('computeScheduling')
              ? ComputeScheduling.fromJson(json_['computeScheduling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryption: json_.containsKey('encryption')
              ? Encryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          machineTypeSeries: json_.containsKey('machineTypeSeries')
              ? json_['machineTypeSeries'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          networkInterfaces: json_.containsKey('networkInterfaces')
              ? (json_['networkInterfaces'] as core.List)
                  .map((value) => NetworkInterface.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          networkTags: json_.containsKey('networkTags')
              ? (json_['networkTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          secureBoot: json_.containsKey('secureBoot')
              ? json_['secureBoot'] as core.bool
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          vmName: json_.containsKey('vmName')
              ? json_['vmName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLicenses != null)
          'additionalLicenses': additionalLicenses!,
        if (bootDiskDefaults != null) 'bootDiskDefaults': bootDiskDefaults!,
        if (computeScheduling != null) 'computeScheduling': computeScheduling!,
        if (encryption != null) 'encryption': encryption!,
        if (hostname != null) 'hostname': hostname!,
        if (labels != null) 'labels': labels!,
        if (machineType != null) 'machineType': machineType!,
        if (machineTypeSeries != null) 'machineTypeSeries': machineTypeSeries!,
        if (metadata != null) 'metadata': metadata!,
        if (networkInterfaces != null) 'networkInterfaces': networkInterfaces!,
        if (networkTags != null) 'networkTags': networkTags!,
        if (secureBoot != null) 'secureBoot': secureBoot!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (vmName != null) 'vmName': vmName!,
      };
}

/// Details for the VM created VM as part of disks migration.
class DisksMigrationVmTargetDetails {
  /// The URI of the Compute Engine VM.
  ///
  /// Output only.
  core.String? vmUri;

  DisksMigrationVmTargetDetails({
    this.vmUri,
  });

  DisksMigrationVmTargetDetails.fromJson(core.Map json_)
      : this(
          vmUri:
              json_.containsKey('vmUri') ? json_['vmUri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vmUri != null) 'vmUri': vmUri!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Encryption message describes the details of the applied encryption.
class Encryption {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  ///
  /// Required.
  core.String? kmsKey;

  Encryption({
    this.kmsKey,
  });

  Encryption.fromJson(core.Map json_)
      : this(
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
}

/// Response message for fetchInventory.
class FetchInventoryResponse {
  /// The description of the VMs in a Source of type AWS.
  AwsVmsDetails? awsVms;

  /// The description of the VMs in a Source of type Azure.
  AzureVmsDetails? azureVms;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The timestamp when the source was last queried (if the result is from the
  /// cache).
  ///
  /// Output only.
  core.String? updateTime;

  /// The description of the VMs in a Source of type Vmware.
  VmwareVmsDetails? vmwareVms;

  FetchInventoryResponse({
    this.awsVms,
    this.azureVms,
    this.nextPageToken,
    this.updateTime,
    this.vmwareVms,
  });

  FetchInventoryResponse.fromJson(core.Map json_)
      : this(
          awsVms: json_.containsKey('awsVms')
              ? AwsVmsDetails.fromJson(
                  json_['awsVms'] as core.Map<core.String, core.dynamic>)
              : null,
          azureVms: json_.containsKey('azureVms')
              ? AzureVmsDetails.fromJson(
                  json_['azureVms'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vmwareVms: json_.containsKey('vmwareVms')
              ? VmwareVmsDetails.fromJson(
                  json_['vmwareVms'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (awsVms != null) 'awsVms': awsVms!,
        if (azureVms != null) 'azureVms': azureVms!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vmwareVms != null) 'vmwareVms': vmwareVms!,
      };
}

/// Request message for 'FinalizeMigration' request.
typedef FinalizeMigrationRequest = $Empty;

/// Describes message for 'Group' resource.
///
/// The Group is a collections of several MigratingVms.
class Group {
  /// The create time timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the group.
  core.String? description;

  /// Display name is a user defined name for this group which can be updated.
  core.String? displayName;

  /// The target type of this group.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "MIGRATION_TARGET_TYPE_UNSPECIFIED" : Group type is not specified. This
  /// defaults to Compute Engine targets.
  /// - "MIGRATION_TARGET_TYPE_GCE" : All MigratingVMs in the group must have
  /// Compute Engine targets.
  /// - "MIGRATION_TARGET_TYPE_DISKS" : All MigratingVMs in the group must have
  /// Compute Engine Disks targets.
  core.String? migrationTargetType;

  /// The Group name.
  ///
  /// Output only.
  core.String? name;

  /// The update time timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  Group({
    this.createTime,
    this.description,
    this.displayName,
    this.migrationTargetType,
    this.name,
    this.updateTime,
  });

  Group.fromJson(core.Map json_)
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
          migrationTargetType: json_.containsKey('migrationTargetType')
              ? json_['migrationTargetType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (migrationTargetType != null)
          'migrationTargetType': migrationTargetType!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// ImageImport describes the configuration of the image import to run.
class ImageImport {
  /// The path to the Cloud Storage file from which the image should be
  /// imported.
  ///
  /// Immutable.
  core.String? cloudStorageUri;

  /// The time the image import was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Target details for importing a disk image, will be used by ImageImportJob.
  ///
  /// Immutable.
  DiskImageTargetDetails? diskImageTargetDefaults;

  /// The encryption details used by the image import process during the image
  /// adaptation for Compute Engine.
  ///
  /// Immutable.
  Encryption? encryption;

  /// The resource path of the ImageImport.
  ///
  /// Output only.
  core.String? name;

  /// The result of the most recent runs for this ImageImport.
  ///
  /// All jobs for this ImageImport can be listed via ListImageImportJobs.
  ///
  /// Output only.
  core.List<ImageImportJob>? recentImageImportJobs;

  ImageImport({
    this.cloudStorageUri,
    this.createTime,
    this.diskImageTargetDefaults,
    this.encryption,
    this.name,
    this.recentImageImportJobs,
  });

  ImageImport.fromJson(core.Map json_)
      : this(
          cloudStorageUri: json_.containsKey('cloudStorageUri')
              ? json_['cloudStorageUri'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          diskImageTargetDefaults: json_.containsKey('diskImageTargetDefaults')
              ? DiskImageTargetDetails.fromJson(json_['diskImageTargetDefaults']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryption: json_.containsKey('encryption')
              ? Encryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          recentImageImportJobs: json_.containsKey('recentImageImportJobs')
              ? (json_['recentImageImportJobs'] as core.List)
                  .map((value) => ImageImportJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudStorageUri != null) 'cloudStorageUri': cloudStorageUri!,
        if (createTime != null) 'createTime': createTime!,
        if (diskImageTargetDefaults != null)
          'diskImageTargetDefaults': diskImageTargetDefaults!,
        if (encryption != null) 'encryption': encryption!,
        if (name != null) 'name': name!,
        if (recentImageImportJobs != null)
          'recentImageImportJobs': recentImageImportJobs!,
      };
}

/// ImageImportJob describes the progress and result of an image import.
class ImageImportJob {
  /// The path to the Cloud Storage file from which the image should be
  /// imported.
  ///
  /// Output only.
  core.String? cloudStorageUri;

  /// The time the image import was created (as an API call, not when it was
  /// actually created in the target).
  ///
  /// Output only.
  core.String? createTime;

  /// The resource paths of the resources created by the image import job.
  ///
  /// Output only.
  core.List<core.String>? createdResources;

  /// Target details used to import a disk image.
  ///
  /// Output only.
  DiskImageTargetDetails? diskImageTargetDetails;

  /// The time the image import was ended.
  ///
  /// Output only.
  core.String? endTime;

  /// Provides details on the error that led to the image import state in case
  /// of an error.
  ///
  /// Output only.
  core.List<Status>? errors;

  /// The resource path of the ImageImportJob.
  ///
  /// Output only.
  core.String? name;

  /// The state of the image import.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unknown.
  /// - "PENDING" : The image import has not yet started.
  /// - "RUNNING" : The image import is active and running.
  /// - "SUCCEEDED" : The image import has finished successfully.
  /// - "FAILED" : The image import has finished with errors.
  /// - "CANCELLING" : The image import is being cancelled.
  /// - "CANCELLED" : The image import was cancelled.
  core.String? state;

  /// The image import steps list representing its progress.
  ///
  /// Output only.
  core.List<ImageImportStep>? steps;

  /// Warnings that occurred during the image import.
  ///
  /// Output only.
  core.List<MigrationWarning>? warnings;

  ImageImportJob({
    this.cloudStorageUri,
    this.createTime,
    this.createdResources,
    this.diskImageTargetDetails,
    this.endTime,
    this.errors,
    this.name,
    this.state,
    this.steps,
    this.warnings,
  });

  ImageImportJob.fromJson(core.Map json_)
      : this(
          cloudStorageUri: json_.containsKey('cloudStorageUri')
              ? json_['cloudStorageUri'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          createdResources: json_.containsKey('createdResources')
              ? (json_['createdResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          diskImageTargetDetails: json_.containsKey('diskImageTargetDetails')
              ? DiskImageTargetDetails.fromJson(json_['diskImageTargetDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => ImageImportStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => MigrationWarning.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudStorageUri != null) 'cloudStorageUri': cloudStorageUri!,
        if (createTime != null) 'createTime': createTime!,
        if (createdResources != null) 'createdResources': createdResources!,
        if (diskImageTargetDetails != null)
          'diskImageTargetDetails': diskImageTargetDetails!,
        if (endTime != null) 'endTime': endTime!,
        if (errors != null) 'errors': errors!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (steps != null) 'steps': steps!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// Parameters affecting the OS adaptation process.
class ImageImportOsAdaptationParameters {
  /// Set to true in order to generalize the imported image.
  ///
  /// The generalization process enables co-existence of multiple VMs created
  /// from the same image. For Windows, generalizing the image removes
  /// computer-specific information such as installed drivers and the computer
  /// security identifier (SID).
  ///
  /// Optional.
  core.bool? generalize;

  /// Choose which type of license to apply to the imported image.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT" : The license type is the default
  /// for the OS.
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_PAYG" : The license type is Pay As You Go
  /// license type.
  /// - "COMPUTE_ENGINE_LICENSE_TYPE_BYOL" : The license type is Bring Your Own
  /// License type.
  core.String? licenseType;

  ImageImportOsAdaptationParameters({
    this.generalize,
    this.licenseType,
  });

  ImageImportOsAdaptationParameters.fromJson(core.Map json_)
      : this(
          generalize: json_.containsKey('generalize')
              ? json_['generalize'] as core.bool
              : null,
          licenseType: json_.containsKey('licenseType')
              ? json_['licenseType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (generalize != null) 'generalize': generalize!,
        if (licenseType != null) 'licenseType': licenseType!,
      };
}

/// ImageImportStep holds information about the image import step progress.
class ImageImportStep {
  /// Adapting OS step.
  AdaptingOSStep? adaptingOs;

  /// Creating image step.
  CreatingImageStep? creatingImage;

  /// The time the step has ended.
  ///
  /// Output only.
  core.String? endTime;

  /// Initializing step.
  InitializingImageImportStep? initializing;

  /// Loading source files step.
  LoadingImageSourceFilesStep? loadingSourceFiles;

  /// The time the step has started.
  ///
  /// Output only.
  core.String? startTime;

  ImageImportStep({
    this.adaptingOs,
    this.creatingImage,
    this.endTime,
    this.initializing,
    this.loadingSourceFiles,
    this.startTime,
  });

  ImageImportStep.fromJson(core.Map json_)
      : this(
          adaptingOs: json_.containsKey('adaptingOs')
              ? AdaptingOSStep.fromJson(
                  json_['adaptingOs'] as core.Map<core.String, core.dynamic>)
              : null,
          creatingImage: json_.containsKey('creatingImage')
              ? CreatingImageStep.fromJson(
                  json_['creatingImage'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          initializing: json_.containsKey('initializing')
              ? InitializingImageImportStep.fromJson(
                  json_['initializing'] as core.Map<core.String, core.dynamic>)
              : null,
          loadingSourceFiles: json_.containsKey('loadingSourceFiles')
              ? LoadingImageSourceFilesStep.fromJson(json_['loadingSourceFiles']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adaptingOs != null) 'adaptingOs': adaptingOs!,
        if (creatingImage != null) 'creatingImage': creatingImage!,
        if (endTime != null) 'endTime': endTime!,
        if (initializing != null) 'initializing': initializing!,
        if (loadingSourceFiles != null)
          'loadingSourceFiles': loadingSourceFiles!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// InitializingImageImportStep contains specific step details.
typedef InitializingImageImportStep = $Empty;

/// InitializingReplicationStep contains specific step details.
typedef InitializingReplicationStep = $Empty;

/// InstantiatingMigratedVMStep contains specific step details.
typedef InstantiatingMigratedVMStep = $Empty;

/// Describes a URL link.
typedef Link = $Link;

/// Response message for 'ListCloneJobs' request.
class ListCloneJobsResponse {
  /// The list of clone jobs response.
  ///
  /// Output only.
  core.List<CloneJob>? cloneJobs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListCloneJobsResponse({
    this.cloneJobs,
    this.nextPageToken,
    this.unreachable,
  });

  ListCloneJobsResponse.fromJson(core.Map json_)
      : this(
          cloneJobs: json_.containsKey('cloneJobs')
              ? (json_['cloneJobs'] as core.List)
                  .map((value) => CloneJob.fromJson(
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
        if (cloneJobs != null) 'cloneJobs': cloneJobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for 'ListCutoverJobs' request.
class ListCutoverJobsResponse {
  /// The list of cutover jobs response.
  ///
  /// Output only.
  core.List<CutoverJob>? cutoverJobs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListCutoverJobsResponse({
    this.cutoverJobs,
    this.nextPageToken,
    this.unreachable,
  });

  ListCutoverJobsResponse.fromJson(core.Map json_)
      : this(
          cutoverJobs: json_.containsKey('cutoverJobs')
              ? (json_['cutoverJobs'] as core.List)
                  .map((value) => CutoverJob.fromJson(
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
        if (cutoverJobs != null) 'cutoverJobs': cutoverJobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for 'ListDatacenterConnectors' request.
class ListDatacenterConnectorsResponse {
  /// The list of sources response.
  ///
  /// Output only.
  core.List<DatacenterConnector>? datacenterConnectors;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListDatacenterConnectorsResponse({
    this.datacenterConnectors,
    this.nextPageToken,
    this.unreachable,
  });

  ListDatacenterConnectorsResponse.fromJson(core.Map json_)
      : this(
          datacenterConnectors: json_.containsKey('datacenterConnectors')
              ? (json_['datacenterConnectors'] as core.List)
                  .map((value) => DatacenterConnector.fromJson(
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
        if (datacenterConnectors != null)
          'datacenterConnectors': datacenterConnectors!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for 'ListGroups' request.
class ListGroupsResponse {
  /// The list of groups response.
  ///
  /// Output only.
  core.List<Group>? groups;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListGroupsResponse({
    this.groups,
    this.nextPageToken,
    this.unreachable,
  });

  ListGroupsResponse.fromJson(core.Map json_)
      : this(
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.List)
                  .map((value) => Group.fromJson(
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
        if (groups != null) 'groups': groups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for 'ListImageImportJobs' call.
class ListImageImportJobsResponse {
  /// The list of target response.
  ///
  /// Output only.
  core.List<ImageImportJob>? imageImportJobs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListImageImportJobsResponse({
    this.imageImportJobs,
    this.nextPageToken,
    this.unreachable,
  });

  ListImageImportJobsResponse.fromJson(core.Map json_)
      : this(
          imageImportJobs: json_.containsKey('imageImportJobs')
              ? (json_['imageImportJobs'] as core.List)
                  .map((value) => ImageImportJob.fromJson(
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
        if (imageImportJobs != null) 'imageImportJobs': imageImportJobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for 'ListImageImports' call.
class ListImageImportsResponse {
  /// The list of target response.
  ///
  /// Output only.
  core.List<ImageImport>? imageImports;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListImageImportsResponse({
    this.imageImports,
    this.nextPageToken,
    this.unreachable,
  });

  ListImageImportsResponse.fromJson(core.Map json_)
      : this(
          imageImports: json_.containsKey('imageImports')
              ? (json_['imageImports'] as core.List)
                  .map((value) => ImageImport.fromJson(
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
        if (imageImports != null) 'imageImports': imageImports!,
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

/// Response message for 'ListMigratingVms' request.
class ListMigratingVmsResponse {
  /// The list of Migrating VMs response.
  ///
  /// Output only.
  core.List<MigratingVm>? migratingVms;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListMigratingVmsResponse({
    this.migratingVms,
    this.nextPageToken,
    this.unreachable,
  });

  ListMigratingVmsResponse.fromJson(core.Map json_)
      : this(
          migratingVms: json_.containsKey('migratingVms')
              ? (json_['migratingVms'] as core.List)
                  .map((value) => MigratingVm.fromJson(
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
        if (migratingVms != null) 'migratingVms': migratingVms!,
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

/// Response message for 'ListReplicationCycles' request.
class ListReplicationCyclesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The list of replication cycles response.
  ///
  /// Output only.
  core.List<ReplicationCycle>? replicationCycles;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListReplicationCyclesResponse({
    this.nextPageToken,
    this.replicationCycles,
    this.unreachable,
  });

  ListReplicationCyclesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          replicationCycles: json_.containsKey('replicationCycles')
              ? (json_['replicationCycles'] as core.List)
                  .map((value) => ReplicationCycle.fromJson(
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
        if (replicationCycles != null) 'replicationCycles': replicationCycles!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for 'ListSources' request.
class ListSourcesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The list of sources response.
  ///
  /// Output only.
  core.List<Source>? sources;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListSourcesResponse({
    this.nextPageToken,
    this.sources,
    this.unreachable,
  });

  ListSourcesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => Source.fromJson(
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
        if (sources != null) 'sources': sources!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for 'ListTargetProjects' call.
class ListTargetProjectsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The list of target response.
  ///
  /// Output only.
  core.List<TargetProject>? targetProjects;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListTargetProjectsResponse({
    this.nextPageToken,
    this.targetProjects,
    this.unreachable,
  });

  ListTargetProjectsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          targetProjects: json_.containsKey('targetProjects')
              ? (json_['targetProjects'] as core.List)
                  .map((value) => TargetProject.fromJson(
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
        if (targetProjects != null) 'targetProjects': targetProjects!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for 'ListUtilizationReports' request.
class ListUtilizationReportsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  /// The list of reports.
  ///
  /// Output only.
  core.List<UtilizationReport>? utilizationReports;

  ListUtilizationReportsResponse({
    this.nextPageToken,
    this.unreachable,
    this.utilizationReports,
  });

  ListUtilizationReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          utilizationReports: json_.containsKey('utilizationReports')
              ? (json_['utilizationReports'] as core.List)
                  .map((value) => UtilizationReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (utilizationReports != null)
          'utilizationReports': utilizationReports!,
      };
}

/// LoadingImageSourceFilesStep contains specific step details.
typedef LoadingImageSourceFilesStep = $Empty;

/// Provides a localized error message that is safe to return to the user which
/// can be attached to an RPC error.
typedef LocalizedMessage = $LocalizedMessage;

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// MigratingVm describes the VM that will be migrated from a Source environment
/// and its replication state.
class MigratingVm {
  /// Details of the VM from an AWS source.
  ///
  /// Output only.
  AwsSourceVmDetails? awsSourceVmDetails;

  /// Details of the VM from an Azure source.
  ///
  /// Output only.
  AzureSourceVmDetails? azureSourceVmDetails;

  /// Details of the target Persistent Disks in Compute Engine.
  ComputeEngineDisksTargetDefaults? computeEngineDisksTargetDefaults;

  /// Details of the target VM in Compute Engine.
  ComputeEngineTargetDefaults? computeEngineTargetDefaults;

  /// The time the migrating VM was created (this refers to this resource and
  /// not to the time it was installed in the source).
  ///
  /// Output only.
  core.String? createTime;

  /// Details of the current running replication cycle.
  ///
  /// Output only.
  ReplicationCycle? currentSyncInfo;

  /// Provides details of future CutoverJobs of a MigratingVm.
  ///
  /// Set to empty when cutover forecast is unavailable.
  ///
  /// Output only.
  CutoverForecast? cutoverForecast;

  /// The description attached to the migrating VM by the user.
  core.String? description;

  /// The display name attached to the MigratingVm by the user.
  core.String? displayName;

  /// Provides details on the state of the Migrating VM in case of an error in
  /// replication.
  ///
  /// Output only.
  Status? error;

  /// The group this migrating vm is included in, if any.
  ///
  /// The group is represented by the full path of the appropriate Group
  /// resource.
  ///
  /// Output only.
  core.String? group;

  /// The labels of the migrating VM.
  core.Map<core.String, core.String>? labels;

  /// Details of the last replication cycle.
  ///
  /// This will be updated whenever a replication cycle is finished and is not
  /// to be confused with last_sync which is only updated on successful
  /// replication cycles.
  ///
  /// Output only.
  ReplicationCycle? lastReplicationCycle;

  /// The most updated snapshot created time in the source that finished
  /// replication.
  ///
  /// Output only.
  ReplicationSync? lastSync;

  /// The identifier of the MigratingVm.
  ///
  /// Output only.
  core.String? name;

  /// The replication schedule policy.
  SchedulePolicy? policy;

  /// The recent clone jobs performed on the migrating VM.
  ///
  /// This field holds the vm's last completed clone job and the vm's running
  /// clone job, if one exists. Note: To have this field populated you need to
  /// explicitly request it via the "view" parameter of the Get/List request.
  ///
  /// Output only.
  core.List<CloneJob>? recentCloneJobs;

  /// The recent cutover jobs performed on the migrating VM.
  ///
  /// This field holds the vm's last completed cutover job and the vm's running
  /// cutover job, if one exists. Note: To have this field populated you need to
  /// explicitly request it via the "view" parameter of the Get/List request.
  ///
  /// Output only.
  core.List<CutoverJob>? recentCutoverJobs;

  /// The unique ID of the VM in the source.
  ///
  /// The VM's name in vSphere can be changed, so this is not the VM's name but
  /// rather its moRef id. This id is of the form vm-.
  core.String? sourceVmId;

  /// State of the MigratingVm.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state was not sampled by the health checks
  /// yet.
  /// - "PENDING" : The VM in the source is being verified.
  /// - "READY" : The source VM was verified, and it's ready to start
  /// replication.
  /// - "FIRST_SYNC" : Migration is going through the first sync cycle.
  /// - "ACTIVE" : The replication is active, and it's running or scheduled to
  /// run.
  /// - "CUTTING_OVER" : The source VM is being turned off, and a final
  /// replication is currently running.
  /// - "CUTOVER" : The source VM was stopped and replicated. The replication is
  /// currently paused.
  /// - "FINAL_SYNC" : A cutover job is active and replication cycle is running
  /// the final sync.
  /// - "PAUSED" : The replication was paused by the user and no cycles are
  /// scheduled to run.
  /// - "FINALIZING" : The migrating VM is being finalized and migration
  /// resources are being removed.
  /// - "FINALIZED" : The replication process is done. The migrating VM is
  /// finalized and no longer consumes billable resources.
  /// - "ERROR" : The replication process encountered an unrecoverable error and
  /// was aborted.
  core.String? state;

  /// The last time the migrating VM state was updated.
  ///
  /// Output only.
  core.String? stateTime;

  /// The last time the migrating VM resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Details of the VM from a Vmware source.
  ///
  /// Output only.
  VmwareSourceVmDetails? vmwareSourceVmDetails;

  MigratingVm({
    this.awsSourceVmDetails,
    this.azureSourceVmDetails,
    this.computeEngineDisksTargetDefaults,
    this.computeEngineTargetDefaults,
    this.createTime,
    this.currentSyncInfo,
    this.cutoverForecast,
    this.description,
    this.displayName,
    this.error,
    this.group,
    this.labels,
    this.lastReplicationCycle,
    this.lastSync,
    this.name,
    this.policy,
    this.recentCloneJobs,
    this.recentCutoverJobs,
    this.sourceVmId,
    this.state,
    this.stateTime,
    this.updateTime,
    this.vmwareSourceVmDetails,
  });

  MigratingVm.fromJson(core.Map json_)
      : this(
          awsSourceVmDetails: json_.containsKey('awsSourceVmDetails')
              ? AwsSourceVmDetails.fromJson(json_['awsSourceVmDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          azureSourceVmDetails: json_.containsKey('azureSourceVmDetails')
              ? AzureSourceVmDetails.fromJson(json_['azureSourceVmDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          computeEngineDisksTargetDefaults:
              json_.containsKey('computeEngineDisksTargetDefaults')
                  ? ComputeEngineDisksTargetDefaults.fromJson(
                      json_['computeEngineDisksTargetDefaults']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          computeEngineTargetDefaults:
              json_.containsKey('computeEngineTargetDefaults')
                  ? ComputeEngineTargetDefaults.fromJson(
                      json_['computeEngineTargetDefaults']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          currentSyncInfo: json_.containsKey('currentSyncInfo')
              ? ReplicationCycle.fromJson(json_['currentSyncInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cutoverForecast: json_.containsKey('cutoverForecast')
              ? CutoverForecast.fromJson(json_['cutoverForecast']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          lastReplicationCycle: json_.containsKey('lastReplicationCycle')
              ? ReplicationCycle.fromJson(json_['lastReplicationCycle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lastSync: json_.containsKey('lastSync')
              ? ReplicationSync.fromJson(
                  json_['lastSync'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          policy: json_.containsKey('policy')
              ? SchedulePolicy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          recentCloneJobs: json_.containsKey('recentCloneJobs')
              ? (json_['recentCloneJobs'] as core.List)
                  .map((value) => CloneJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          recentCutoverJobs: json_.containsKey('recentCutoverJobs')
              ? (json_['recentCutoverJobs'] as core.List)
                  .map((value) => CutoverJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceVmId: json_.containsKey('sourceVmId')
              ? json_['sourceVmId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateTime: json_.containsKey('stateTime')
              ? json_['stateTime'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vmwareSourceVmDetails: json_.containsKey('vmwareSourceVmDetails')
              ? VmwareSourceVmDetails.fromJson(json_['vmwareSourceVmDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (awsSourceVmDetails != null)
          'awsSourceVmDetails': awsSourceVmDetails!,
        if (azureSourceVmDetails != null)
          'azureSourceVmDetails': azureSourceVmDetails!,
        if (computeEngineDisksTargetDefaults != null)
          'computeEngineDisksTargetDefaults': computeEngineDisksTargetDefaults!,
        if (computeEngineTargetDefaults != null)
          'computeEngineTargetDefaults': computeEngineTargetDefaults!,
        if (createTime != null) 'createTime': createTime!,
        if (currentSyncInfo != null) 'currentSyncInfo': currentSyncInfo!,
        if (cutoverForecast != null) 'cutoverForecast': cutoverForecast!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (error != null) 'error': error!,
        if (group != null) 'group': group!,
        if (labels != null) 'labels': labels!,
        if (lastReplicationCycle != null)
          'lastReplicationCycle': lastReplicationCycle!,
        if (lastSync != null) 'lastSync': lastSync!,
        if (name != null) 'name': name!,
        if (policy != null) 'policy': policy!,
        if (recentCloneJobs != null) 'recentCloneJobs': recentCloneJobs!,
        if (recentCutoverJobs != null) 'recentCutoverJobs': recentCutoverJobs!,
        if (sourceVmId != null) 'sourceVmId': sourceVmId!,
        if (state != null) 'state': state!,
        if (stateTime != null) 'stateTime': stateTime!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vmwareSourceVmDetails != null)
          'vmwareSourceVmDetails': vmwareSourceVmDetails!,
      };
}

/// Represents migration resource warning information that can be used with
/// google.rpc.Status message.
///
/// MigrationWarning is used to present the user with warning information in
/// migration operations.
class MigrationWarning {
  /// Suggested action for solving the warning.
  LocalizedMessage? actionItem;

  /// The warning code.
  /// Possible string values are:
  /// - "WARNING_CODE_UNSPECIFIED" : Default value. This value is not used.
  /// - "ADAPTATION_WARNING" : A warning originated from OS Adaptation.
  core.String? code;

  /// URL(s) pointing to additional information on handling the current warning.
  core.List<Link>? helpLinks;

  /// The localized warning message.
  LocalizedMessage? warningMessage;

  /// The time the warning occurred.
  core.String? warningTime;

  MigrationWarning({
    this.actionItem,
    this.code,
    this.helpLinks,
    this.warningMessage,
    this.warningTime,
  });

  MigrationWarning.fromJson(core.Map json_)
      : this(
          actionItem: json_.containsKey('actionItem')
              ? LocalizedMessage.fromJson(
                  json_['actionItem'] as core.Map<core.String, core.dynamic>)
              : null,
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          helpLinks: json_.containsKey('helpLinks')
              ? (json_['helpLinks'] as core.List)
                  .map((value) => Link.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          warningMessage: json_.containsKey('warningMessage')
              ? LocalizedMessage.fromJson(json_['warningMessage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          warningTime: json_.containsKey('warningTime')
              ? json_['warningTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionItem != null) 'actionItem': actionItem!,
        if (code != null) 'code': code!,
        if (helpLinks != null) 'helpLinks': helpLinks!,
        if (warningMessage != null) 'warningMessage': warningMessage!,
        if (warningTime != null) 'warningTime': warningTime!,
      };
}

/// NetworkInterface represents a NIC of a VM.
class NetworkInterface {
  /// The external IP to define in the NIC.
  core.String? externalIp;

  /// The internal IP to define in the NIC.
  ///
  /// The formats accepted are: `ephemeral` \ ipv4 address \ a named address
  /// resource full path.
  core.String? internalIp;

  /// The network to connect the NIC to.
  core.String? network;

  /// The subnetwork to connect the NIC to.
  core.String? subnetwork;

  NetworkInterface({
    this.externalIp,
    this.internalIp,
    this.network,
    this.subnetwork,
  });

  NetworkInterface.fromJson(core.Map json_)
      : this(
          externalIp: json_.containsKey('externalIp')
              ? json_['externalIp'] as core.String
              : null,
          internalIp: json_.containsKey('internalIp')
              ? json_['internalIp'] as core.String
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalIp != null) 'externalIp': externalIp!,
        if (internalIp != null) 'internalIp': internalIp!,
        if (network != null) 'network': network!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// A message describing the VM's OS.
///
/// Including OS, Publisher, Offer and Plan if applicable.
class OSDescription {
  /// OS offer.
  core.String? offer;

  /// OS plan.
  core.String? plan;

  /// OS publisher.
  core.String? publisher;

  /// OS type.
  core.String? type;

  OSDescription({
    this.offer,
    this.plan,
    this.publisher,
    this.type,
  });

  OSDescription.fromJson(core.Map json_)
      : this(
          offer:
              json_.containsKey('offer') ? json_['offer'] as core.String : null,
          plan: json_.containsKey('plan') ? json_['plan'] as core.String : null,
          publisher: json_.containsKey('publisher')
              ? json_['publisher'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offer != null) 'offer': offer!,
        if (plan != null) 'plan': plan!,
        if (publisher != null) 'publisher': publisher!,
        if (type != null) 'type': type!,
      };
}

/// A message describing the OS disk.
class OSDisk {
  /// The disk's full name.
  core.String? name;

  /// The disk's size in GB.
  core.int? sizeGb;

  /// The disk's type.
  core.String? type;

  OSDisk({
    this.name,
    this.sizeGb,
    this.type,
  });

  OSDisk.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sizeGb:
              json_.containsKey('sizeGb') ? json_['sizeGb'] as core.int : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (type != null) 'type': type!,
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

/// Request message for 'PauseMigration' request.
typedef PauseMigrationRequest = $Empty;

/// Details of a created Persistent Disk.
class PersistentDisk {
  /// The URI of the Persistent Disk.
  core.String? diskUri;

  /// The ordinal number of the source VM disk.
  core.int? sourceDiskNumber;

  PersistentDisk({
    this.diskUri,
    this.sourceDiskNumber,
  });

  PersistentDisk.fromJson(core.Map json_)
      : this(
          diskUri: json_.containsKey('diskUri')
              ? json_['diskUri'] as core.String
              : null,
          sourceDiskNumber: json_.containsKey('sourceDiskNumber')
              ? json_['sourceDiskNumber'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskUri != null) 'diskUri': diskUri!,
        if (sourceDiskNumber != null) 'sourceDiskNumber': sourceDiskNumber!,
      };
}

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaults {
  /// A map of labels to associate with the Persistent Disk.
  core.Map<core.String, core.String>? additionalLabels;

  /// The name of the Persistent Disk to create.
  ///
  /// Optional.
  core.String? diskName;

  /// The disk type to use.
  /// Possible string values are:
  /// - "COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED" : An unspecified disk type. Will
  /// be used as STANDARD.
  /// - "COMPUTE_ENGINE_DISK_TYPE_STANDARD" : A Standard disk type.
  /// - "COMPUTE_ENGINE_DISK_TYPE_SSD" : SSD hard disk type.
  /// - "COMPUTE_ENGINE_DISK_TYPE_BALANCED" : An alternative to SSD persistent
  /// disks that balance performance and cost.
  core.String? diskType;

  /// The encryption to apply to the disk.
  ///
  /// Optional.
  Encryption? encryption;

  /// The ordinal number of the source VM disk.
  ///
  /// Required.
  core.int? sourceDiskNumber;

  /// Details for attachment of the disk to a VM.
  ///
  /// Used when the disk is set to be attacked to a target VM.
  ///
  /// Optional.
  VmAttachmentDetails? vmAttachmentDetails;

  PersistentDiskDefaults({
    this.additionalLabels,
    this.diskName,
    this.diskType,
    this.encryption,
    this.sourceDiskNumber,
    this.vmAttachmentDetails,
  });

  PersistentDiskDefaults.fromJson(core.Map json_)
      : this(
          additionalLabels: json_.containsKey('additionalLabels')
              ? (json_['additionalLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          diskName: json_.containsKey('diskName')
              ? json_['diskName'] as core.String
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          encryption: json_.containsKey('encryption')
              ? Encryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceDiskNumber: json_.containsKey('sourceDiskNumber')
              ? json_['sourceDiskNumber'] as core.int
              : null,
          vmAttachmentDetails: json_.containsKey('vmAttachmentDetails')
              ? VmAttachmentDetails.fromJson(json_['vmAttachmentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLabels != null) 'additionalLabels': additionalLabels!,
        if (diskName != null) 'diskName': diskName!,
        if (diskType != null) 'diskType': diskType!,
        if (encryption != null) 'encryption': encryption!,
        if (sourceDiskNumber != null) 'sourceDiskNumber': sourceDiskNumber!,
        if (vmAttachmentDetails != null)
          'vmAttachmentDetails': vmAttachmentDetails!,
      };
}

/// PostProcessingStep contains specific step details.
typedef PostProcessingStep = $Empty;

/// PreparingVMDisksStep contains specific step details.
typedef PreparingVMDisksStep = $Empty;

/// Request message for 'RemoveMigration' request.
class RemoveGroupMigrationRequest {
  /// The MigratingVm to remove.
  core.String? migratingVm;

  RemoveGroupMigrationRequest({
    this.migratingVm,
  });

  RemoveGroupMigrationRequest.fromJson(core.Map json_)
      : this(
          migratingVm: json_.containsKey('migratingVm')
              ? json_['migratingVm'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (migratingVm != null) 'migratingVm': migratingVm!,
      };
}

/// ReplicatingStep contains specific step details.
class ReplicatingStep {
  /// The source disks replication rate for the last 30 minutes in bytes per
  /// second.
  core.String? lastThirtyMinutesAverageBytesPerSecond;

  /// The source disks replication rate for the last 2 minutes in bytes per
  /// second.
  core.String? lastTwoMinutesAverageBytesPerSecond;

  /// Replicated bytes in the step.
  core.String? replicatedBytes;

  /// Total bytes to be handled in the step.
  core.String? totalBytes;

  ReplicatingStep({
    this.lastThirtyMinutesAverageBytesPerSecond,
    this.lastTwoMinutesAverageBytesPerSecond,
    this.replicatedBytes,
    this.totalBytes,
  });

  ReplicatingStep.fromJson(core.Map json_)
      : this(
          lastThirtyMinutesAverageBytesPerSecond: json_
                  .containsKey('lastThirtyMinutesAverageBytesPerSecond')
              ? json_['lastThirtyMinutesAverageBytesPerSecond'] as core.String
              : null,
          lastTwoMinutesAverageBytesPerSecond:
              json_.containsKey('lastTwoMinutesAverageBytesPerSecond')
                  ? json_['lastTwoMinutesAverageBytesPerSecond'] as core.String
                  : null,
          replicatedBytes: json_.containsKey('replicatedBytes')
              ? json_['replicatedBytes'] as core.String
              : null,
          totalBytes: json_.containsKey('totalBytes')
              ? json_['totalBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastThirtyMinutesAverageBytesPerSecond != null)
          'lastThirtyMinutesAverageBytesPerSecond':
              lastThirtyMinutesAverageBytesPerSecond!,
        if (lastTwoMinutesAverageBytesPerSecond != null)
          'lastTwoMinutesAverageBytesPerSecond':
              lastTwoMinutesAverageBytesPerSecond!,
        if (replicatedBytes != null) 'replicatedBytes': replicatedBytes!,
        if (totalBytes != null) 'totalBytes': totalBytes!,
      };
}

/// ReplicationCycle contains information about the current replication cycle
/// status.
class ReplicationCycle {
  /// The cycle's ordinal number.
  core.int? cycleNumber;

  /// The time the replication cycle has ended.
  core.String? endTime;

  /// Provides details on the state of the cycle in case of an error.
  Status? error;

  /// The identifier of the ReplicationCycle.
  core.String? name;

  /// The current progress in percentage of this cycle.
  ///
  /// Was replaced by 'steps' field, which breaks down the cycle progression
  /// more accurately.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? progressPercent;

  /// The time the replication cycle has started.
  core.String? startTime;

  /// State of the ReplicationCycle.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unknown. This is used for API
  /// compatibility only and is not used by the system.
  /// - "RUNNING" : The replication cycle is running.
  /// - "PAUSED" : The replication cycle is paused.
  /// - "FAILED" : The replication cycle finished with errors.
  /// - "SUCCEEDED" : The replication cycle finished successfully.
  core.String? state;

  /// The cycle's steps list representing its progress.
  core.List<CycleStep>? steps;

  /// The accumulated duration the replication cycle was paused.
  core.String? totalPauseDuration;

  /// Warnings that occurred during the cycle.
  ///
  /// Output only.
  core.List<MigrationWarning>? warnings;

  ReplicationCycle({
    this.cycleNumber,
    this.endTime,
    this.error,
    this.name,
    this.progressPercent,
    this.startTime,
    this.state,
    this.steps,
    this.totalPauseDuration,
    this.warnings,
  });

  ReplicationCycle.fromJson(core.Map json_)
      : this(
          cycleNumber: json_.containsKey('cycleNumber')
              ? json_['cycleNumber'] as core.int
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          progressPercent: json_.containsKey('progressPercent')
              ? json_['progressPercent'] as core.int
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => CycleStep.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalPauseDuration: json_.containsKey('totalPauseDuration')
              ? json_['totalPauseDuration'] as core.String
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => MigrationWarning.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cycleNumber != null) 'cycleNumber': cycleNumber!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (name != null) 'name': name!,
        if (progressPercent != null) 'progressPercent': progressPercent!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (steps != null) 'steps': steps!,
        if (totalPauseDuration != null)
          'totalPauseDuration': totalPauseDuration!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// ReplicationSync contain information about the last replica sync to the
/// cloud.
class ReplicationSync {
  /// The most updated snapshot created time in the source that finished
  /// replication.
  core.String? lastSyncTime;

  ReplicationSync({
    this.lastSyncTime,
  });

  ReplicationSync.fromJson(core.Map json_)
      : this(
          lastSyncTime: json_.containsKey('lastSyncTime')
              ? json_['lastSyncTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastSyncTime != null) 'lastSyncTime': lastSyncTime!,
      };
}

/// Request message for 'ResumeMigration' request.
typedef ResumeMigrationRequest = $Empty;

/// A policy for scheduling replications.
class SchedulePolicy {
  /// The idle duration between replication stages.
  core.String? idleDuration;

  /// A flag to indicate whether to skip OS adaptation during the replication
  /// sync.
  ///
  /// OS adaptation is a process where the VM's operating system undergoes
  /// changes and adaptations to fully function on Compute Engine.
  core.bool? skipOsAdaptation;

  SchedulePolicy({
    this.idleDuration,
    this.skipOsAdaptation,
  });

  SchedulePolicy.fromJson(core.Map json_)
      : this(
          idleDuration: json_.containsKey('idleDuration')
              ? json_['idleDuration'] as core.String
              : null,
          skipOsAdaptation: json_.containsKey('skipOsAdaptation')
              ? json_['skipOsAdaptation'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idleDuration != null) 'idleDuration': idleDuration!,
        if (skipOsAdaptation != null) 'skipOsAdaptation': skipOsAdaptation!,
      };
}

/// Node Affinity: the configuration of desired nodes onto which this Instance
/// could be scheduled.
///
/// Based on
/// https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling
class SchedulingNodeAffinity {
  /// The label key of Node resource to reference.
  core.String? key;

  /// The operator to use for the node resources specified in the `values`
  /// parameter.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : An unknown, unexpected behavior.
  /// - "IN" : The node resource group should be in these resources affinity.
  /// - "NOT_IN" : The node resource group should not be in these resources
  /// affinity.
  core.String? operator;

  /// Corresponds to the label values of Node resource.
  core.List<core.String>? values;

  SchedulingNodeAffinity({
    this.key,
    this.operator,
    this.values,
  });

  SchedulingNodeAffinity.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          operator: json_.containsKey('operator')
              ? json_['operator'] as core.String
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (operator != null) 'operator': operator!,
        if (values != null) 'values': values!,
      };
}

/// ShuttingDownSourceVMStep contains specific step details.
typedef ShuttingDownSourceVMStep = $Empty;

/// Source message describes a specific vm migration Source resource.
///
/// It contains the source environment information.
class Source {
  /// AWS type source details.
  AwsSourceDetails? aws;

  /// Azure type source details.
  AzureSourceDetails? azure;

  /// The create time timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the source.
  core.String? description;

  /// The encryption details of the source data stored by the service.
  ///
  /// Optional. Immutable.
  Encryption? encryption;

  /// The labels of the source.
  core.Map<core.String, core.String>? labels;

  /// The Source name.
  ///
  /// Output only.
  core.String? name;

  /// The update time timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// Vmware type source details.
  VmwareSourceDetails? vmware;

  Source({
    this.aws,
    this.azure,
    this.createTime,
    this.description,
    this.encryption,
    this.labels,
    this.name,
    this.updateTime,
    this.vmware,
  });

  Source.fromJson(core.Map json_)
      : this(
          aws: json_.containsKey('aws')
              ? AwsSourceDetails.fromJson(
                  json_['aws'] as core.Map<core.String, core.dynamic>)
              : null,
          azure: json_.containsKey('azure')
              ? AzureSourceDetails.fromJson(
                  json_['azure'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          encryption: json_.containsKey('encryption')
              ? Encryption.fromJson(
                  json_['encryption'] as core.Map<core.String, core.dynamic>)
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
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vmware: json_.containsKey('vmware')
              ? VmwareSourceDetails.fromJson(
                  json_['vmware'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aws != null) 'aws': aws!,
        if (azure != null) 'azure': azure!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (encryption != null) 'encryption': encryption!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vmware != null) 'vmware': vmware!,
      };
}

/// Request message for 'StartMigrationRequest' request.
typedef StartMigrationRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Tag is an AWS tag representation.
class Tag {
  /// Key of tag.
  core.String? key;

  /// Value of tag.
  core.String? value;

  Tag({
    this.key,
    this.value,
  });

  Tag.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// TargetProject message represents a target Compute Engine project for a
/// migration or a clone.
class TargetProject {
  /// The time this target project resource was created (not related to when the
  /// Compute Engine project it points to was created).
  ///
  /// Output only.
  core.String? createTime;

  /// The target project's description.
  core.String? description;

  /// The name of the target project.
  ///
  /// Output only.
  core.String? name;

  /// The target project ID (number) or project name.
  ///
  /// Required.
  core.String? project;

  /// The last time the target project resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  TargetProject({
    this.createTime,
    this.description,
    this.name,
    this.project,
    this.updateTime,
  });

  TargetProject.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (project != null) 'project': project!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for 'UpgradeAppliance' request.
class UpgradeApplianceRequest {
  /// A request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  core.String? requestId;

  UpgradeApplianceRequest({
    this.requestId,
  });

  UpgradeApplianceRequest.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// UpgradeStatus contains information about upgradeAppliance operation.
class UpgradeStatus {
  /// Provides details on the state of the upgrade operation in case of an
  /// error.
  Status? error;

  /// The version from which we upgraded.
  core.String? previousVersion;

  /// The time the operation was started.
  core.String? startTime;

  /// The state of the upgradeAppliance operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state was not sampled by the health checks
  /// yet.
  /// - "RUNNING" : The upgrade has started.
  /// - "FAILED" : The upgrade failed.
  /// - "SUCCEEDED" : The upgrade finished successfully.
  core.String? state;

  /// The version to upgrade to.
  core.String? version;

  UpgradeStatus({
    this.error,
    this.previousVersion,
    this.startTime,
    this.state,
    this.version,
  });

  UpgradeStatus.fromJson(core.Map json_)
      : this(
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          previousVersion: json_.containsKey('previousVersion')
              ? json_['previousVersion'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (previousVersion != null) 'previousVersion': previousVersion!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (version != null) 'version': version!,
      };
}

/// Utilization report details the utilization (CPU, memory, etc.) of selected
/// source VMs.
class UtilizationReport {
  /// The time the report was created (this refers to the time of the request,
  /// not the time the report creation completed).
  ///
  /// Output only.
  core.String? createTime;

  /// The report display name, as assigned by the user.
  core.String? displayName;

  /// Provides details on the state of the report in case of an error.
  ///
  /// Output only.
  Status? error;

  /// The point in time when the time frame ends.
  ///
  /// Notice that the time frame is counted backwards. For instance if the
  /// "frame_end_time" value is 2021/01/20 and the time frame is WEEK then the
  /// report covers the week between 2021/01/20 and 2021/01/14.
  ///
  /// Output only.
  core.String? frameEndTime;

  /// The report unique name.
  ///
  /// Output only.
  core.String? name;

  /// Current state of the report.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unknown. This value is not in use.
  /// - "CREATING" : The report is in the making.
  /// - "SUCCEEDED" : Report creation completed successfully.
  /// - "FAILED" : Report creation failed.
  core.String? state;

  /// The time the state was last set.
  ///
  /// Output only.
  core.String? stateTime;

  /// Time frame of the report.
  /// Possible string values are:
  /// - "TIME_FRAME_UNSPECIFIED" : The time frame was not specified and will
  /// default to WEEK.
  /// - "WEEK" : One week.
  /// - "MONTH" : One month.
  /// - "YEAR" : One year.
  core.String? timeFrame;

  /// Total number of VMs included in the report.
  ///
  /// Output only.
  core.int? vmCount;

  /// List of utilization information per VM.
  ///
  /// When sent as part of the request, the "vm_id" field is used in order to
  /// specify which VMs to include in the report. In that case all other fields
  /// are ignored.
  core.List<VmUtilizationInfo>? vms;

  UtilizationReport({
    this.createTime,
    this.displayName,
    this.error,
    this.frameEndTime,
    this.name,
    this.state,
    this.stateTime,
    this.timeFrame,
    this.vmCount,
    this.vms,
  });

  UtilizationReport.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          frameEndTime: json_.containsKey('frameEndTime')
              ? json_['frameEndTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateTime: json_.containsKey('stateTime')
              ? json_['stateTime'] as core.String
              : null,
          timeFrame: json_.containsKey('timeFrame')
              ? json_['timeFrame'] as core.String
              : null,
          vmCount: json_.containsKey('vmCount')
              ? json_['vmCount'] as core.int
              : null,
          vms: json_.containsKey('vms')
              ? (json_['vms'] as core.List)
                  .map((value) => VmUtilizationInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (error != null) 'error': error!,
        if (frameEndTime != null) 'frameEndTime': frameEndTime!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (stateTime != null) 'stateTime': stateTime!,
        if (timeFrame != null) 'timeFrame': timeFrame!,
        if (vmCount != null) 'vmCount': vmCount!,
        if (vms != null) 'vms': vms!,
      };
}

/// Details for attachment of the disk to a VM.
class VmAttachmentDetails {
  /// Specifies a unique device name of your choice that is reflected into the
  /// /dev/disk/by-id/google-* tree of a Linux operating system running within
  /// the instance.
  ///
  /// If not specified, the server chooses a default device name to apply to
  /// this disk, in the form persistent-disk-x, where x is a number assigned by
  /// Google Compute Engine. This field is only applicable for persistent disks.
  ///
  /// Optional.
  core.String? deviceName;

  VmAttachmentDetails({
    this.deviceName,
  });

  VmAttachmentDetails.fromJson(core.Map json_)
      : this(
          deviceName: json_.containsKey('deviceName')
              ? json_['deviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceName != null) 'deviceName': deviceName!,
      };
}

/// Migrating VM source information about the VM capabilities needed for some
/// Compute Engine features.
class VmCapabilities {
  /// The last time OS capabilities list was updated.
  ///
  /// Output only.
  core.String? lastOsCapabilitiesUpdateTime;

  /// Unordered list.
  ///
  /// List of certain VM OS capabilities needed for some Compute Engine
  /// features.
  ///
  /// Output only.
  core.List<core.String>? osCapabilities;

  VmCapabilities({
    this.lastOsCapabilitiesUpdateTime,
    this.osCapabilities,
  });

  VmCapabilities.fromJson(core.Map json_)
      : this(
          lastOsCapabilitiesUpdateTime:
              json_.containsKey('lastOsCapabilitiesUpdateTime')
                  ? json_['lastOsCapabilitiesUpdateTime'] as core.String
                  : null,
          osCapabilities: json_.containsKey('osCapabilities')
              ? (json_['osCapabilities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastOsCapabilitiesUpdateTime != null)
          'lastOsCapabilitiesUpdateTime': lastOsCapabilitiesUpdateTime!,
        if (osCapabilities != null) 'osCapabilities': osCapabilities!,
      };
}

/// Utilization information of a single VM.
class VmUtilizationInfo {
  /// Utilization metrics for this VM.
  VmUtilizationMetrics? utilization;

  /// The VM's ID in the source.
  core.String? vmId;

  /// The description of the VM in a Source of type Vmware.
  VmwareVmDetails? vmwareVmDetails;

  VmUtilizationInfo({
    this.utilization,
    this.vmId,
    this.vmwareVmDetails,
  });

  VmUtilizationInfo.fromJson(core.Map json_)
      : this(
          utilization: json_.containsKey('utilization')
              ? VmUtilizationMetrics.fromJson(
                  json_['utilization'] as core.Map<core.String, core.dynamic>)
              : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
          vmwareVmDetails: json_.containsKey('vmwareVmDetails')
              ? VmwareVmDetails.fromJson(json_['vmwareVmDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (utilization != null) 'utilization': utilization!,
        if (vmId != null) 'vmId': vmId!,
        if (vmwareVmDetails != null) 'vmwareVmDetails': vmwareVmDetails!,
      };
}

/// Utilization metrics values for a single VM.
class VmUtilizationMetrics {
  /// Average CPU usage, percent.
  core.int? cpuAveragePercent;

  /// Max CPU usage, percent.
  core.int? cpuMaxPercent;

  /// Average disk IO rate, in kilobytes per second.
  core.String? diskIoRateAverageKbps;

  /// Max disk IO rate, in kilobytes per second.
  core.String? diskIoRateMaxKbps;

  /// Average memory usage, percent.
  core.int? memoryAveragePercent;

  /// Max memory usage, percent.
  core.int? memoryMaxPercent;

  /// Average network throughput (combined transmit-rates and receive-rates), in
  /// kilobytes per second.
  core.String? networkThroughputAverageKbps;

  /// Max network throughput (combined transmit-rates and receive-rates), in
  /// kilobytes per second.
  core.String? networkThroughputMaxKbps;

  VmUtilizationMetrics({
    this.cpuAveragePercent,
    this.cpuMaxPercent,
    this.diskIoRateAverageKbps,
    this.diskIoRateMaxKbps,
    this.memoryAveragePercent,
    this.memoryMaxPercent,
    this.networkThroughputAverageKbps,
    this.networkThroughputMaxKbps,
  });

  VmUtilizationMetrics.fromJson(core.Map json_)
      : this(
          cpuAveragePercent: json_.containsKey('cpuAveragePercent')
              ? json_['cpuAveragePercent'] as core.int
              : null,
          cpuMaxPercent: json_.containsKey('cpuMaxPercent')
              ? json_['cpuMaxPercent'] as core.int
              : null,
          diskIoRateAverageKbps: json_.containsKey('diskIoRateAverageKbps')
              ? json_['diskIoRateAverageKbps'] as core.String
              : null,
          diskIoRateMaxKbps: json_.containsKey('diskIoRateMaxKbps')
              ? json_['diskIoRateMaxKbps'] as core.String
              : null,
          memoryAveragePercent: json_.containsKey('memoryAveragePercent')
              ? json_['memoryAveragePercent'] as core.int
              : null,
          memoryMaxPercent: json_.containsKey('memoryMaxPercent')
              ? json_['memoryMaxPercent'] as core.int
              : null,
          networkThroughputAverageKbps:
              json_.containsKey('networkThroughputAverageKbps')
                  ? json_['networkThroughputAverageKbps'] as core.String
                  : null,
          networkThroughputMaxKbps:
              json_.containsKey('networkThroughputMaxKbps')
                  ? json_['networkThroughputMaxKbps'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuAveragePercent != null) 'cpuAveragePercent': cpuAveragePercent!,
        if (cpuMaxPercent != null) 'cpuMaxPercent': cpuMaxPercent!,
        if (diskIoRateAverageKbps != null)
          'diskIoRateAverageKbps': diskIoRateAverageKbps!,
        if (diskIoRateMaxKbps != null) 'diskIoRateMaxKbps': diskIoRateMaxKbps!,
        if (memoryAveragePercent != null)
          'memoryAveragePercent': memoryAveragePercent!,
        if (memoryMaxPercent != null) 'memoryMaxPercent': memoryMaxPercent!,
        if (networkThroughputAverageKbps != null)
          'networkThroughputAverageKbps': networkThroughputAverageKbps!,
        if (networkThroughputMaxKbps != null)
          'networkThroughputMaxKbps': networkThroughputMaxKbps!,
      };
}

/// The details of a Vmware VM disk.
class VmwareDiskDetails {
  /// The ordinal number of the disk.
  core.int? diskNumber;

  /// The disk label.
  core.String? label;

  /// Size in GB.
  core.String? sizeGb;

  VmwareDiskDetails({
    this.diskNumber,
    this.label,
    this.sizeGb,
  });

  VmwareDiskDetails.fromJson(core.Map json_)
      : this(
          diskNumber: json_.containsKey('diskNumber')
              ? json_['diskNumber'] as core.int
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          sizeGb: json_.containsKey('sizeGb')
              ? json_['sizeGb'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskNumber != null) 'diskNumber': diskNumber!,
        if (label != null) 'label': label!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
      };
}

/// VmwareSourceDetails message describes a specific source details for the
/// vmware source type.
class VmwareSourceDetails {
  /// Input only.
  ///
  /// The credentials password. This is write only and can not be read in a GET
  /// operation.
  core.String? password;

  /// The hostname of the vcenter.
  core.String? resolvedVcenterHost;

  /// The thumbprint representing the certificate for the vcenter.
  core.String? thumbprint;

  /// The credentials username.
  core.String? username;

  /// The ip address of the vcenter this Source represents.
  core.String? vcenterIp;

  VmwareSourceDetails({
    this.password,
    this.resolvedVcenterHost,
    this.thumbprint,
    this.username,
    this.vcenterIp,
  });

  VmwareSourceDetails.fromJson(core.Map json_)
      : this(
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          resolvedVcenterHost: json_.containsKey('resolvedVcenterHost')
              ? json_['resolvedVcenterHost'] as core.String
              : null,
          thumbprint: json_.containsKey('thumbprint')
              ? json_['thumbprint'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
          vcenterIp: json_.containsKey('vcenterIp')
              ? json_['vcenterIp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
        if (resolvedVcenterHost != null)
          'resolvedVcenterHost': resolvedVcenterHost!,
        if (thumbprint != null) 'thumbprint': thumbprint!,
        if (username != null) 'username': username!,
        if (vcenterIp != null) 'vcenterIp': vcenterIp!,
      };
}

/// Represent the source Vmware VM details.
class VmwareSourceVmDetails {
  /// The total size of the disks being migrated in bytes.
  core.String? committedStorageBytes;

  /// The disks attached to the source VM.
  core.List<VmwareDiskDetails>? disks;

  /// The firmware type of the source VM.
  /// Possible string values are:
  /// - "FIRMWARE_UNSPECIFIED" : The firmware is unknown.
  /// - "EFI" : The firmware is EFI.
  /// - "BIOS" : The firmware is BIOS.
  core.String? firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  ///
  /// Output only.
  VmCapabilities? vmCapabilitiesInfo;

  VmwareSourceVmDetails({
    this.committedStorageBytes,
    this.disks,
    this.firmware,
    this.vmCapabilitiesInfo,
  });

  VmwareSourceVmDetails.fromJson(core.Map json_)
      : this(
          committedStorageBytes: json_.containsKey('committedStorageBytes')
              ? json_['committedStorageBytes'] as core.String
              : null,
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => VmwareDiskDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          firmware: json_.containsKey('firmware')
              ? json_['firmware'] as core.String
              : null,
          vmCapabilitiesInfo: json_.containsKey('vmCapabilitiesInfo')
              ? VmCapabilities.fromJson(json_['vmCapabilitiesInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (committedStorageBytes != null)
          'committedStorageBytes': committedStorageBytes!,
        if (disks != null) 'disks': disks!,
        if (firmware != null) 'firmware': firmware!,
        if (vmCapabilitiesInfo != null)
          'vmCapabilitiesInfo': vmCapabilitiesInfo!,
      };
}

/// VmwareVmDetails describes a VM in vCenter.
class VmwareVmDetails {
  /// The VM Boot Option.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BOOT_OPTION_UNSPECIFIED" : The boot option is unknown.
  /// - "EFI" : The boot option is EFI.
  /// - "BIOS" : The boot option is BIOS.
  core.String? bootOption;

  /// The total size of the storage allocated to the VM in MB.
  core.String? committedStorageMb;

  /// The number of cpus in the VM.
  core.int? cpuCount;

  /// The descriptive name of the vCenter's datacenter this VM is contained in.
  core.String? datacenterDescription;

  /// The id of the vCenter's datacenter this VM is contained in.
  core.String? datacenterId;

  /// The number of disks the VM has.
  core.int? diskCount;

  /// The display name of the VM.
  ///
  /// Note that this is not necessarily unique.
  core.String? displayName;

  /// The VM's OS.
  ///
  /// See for example
  /// https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html
  /// for types of strings this might hold.
  core.String? guestDescription;

  /// The size of the memory of the VM in MB.
  core.int? memoryMb;

  /// The power state of the VM at the moment list was taken.
  /// Possible string values are:
  /// - "POWER_STATE_UNSPECIFIED" : Power state is not specified.
  /// - "ON" : The VM is turned ON.
  /// - "OFF" : The VM is turned OFF.
  /// - "SUSPENDED" : The VM is suspended. This is similar to hibernation or
  /// sleep mode.
  core.String? powerState;

  /// The unique identifier of the VM in vCenter.
  core.String? uuid;

  /// The VM's id in the source (note that this is not the MigratingVm's id).
  ///
  /// This is the moref id of the VM.
  core.String? vmId;

  VmwareVmDetails({
    this.bootOption,
    this.committedStorageMb,
    this.cpuCount,
    this.datacenterDescription,
    this.datacenterId,
    this.diskCount,
    this.displayName,
    this.guestDescription,
    this.memoryMb,
    this.powerState,
    this.uuid,
    this.vmId,
  });

  VmwareVmDetails.fromJson(core.Map json_)
      : this(
          bootOption: json_.containsKey('bootOption')
              ? json_['bootOption'] as core.String
              : null,
          committedStorageMb: json_.containsKey('committedStorageMb')
              ? json_['committedStorageMb'] as core.String
              : null,
          cpuCount: json_.containsKey('cpuCount')
              ? json_['cpuCount'] as core.int
              : null,
          datacenterDescription: json_.containsKey('datacenterDescription')
              ? json_['datacenterDescription'] as core.String
              : null,
          datacenterId: json_.containsKey('datacenterId')
              ? json_['datacenterId'] as core.String
              : null,
          diskCount: json_.containsKey('diskCount')
              ? json_['diskCount'] as core.int
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          guestDescription: json_.containsKey('guestDescription')
              ? json_['guestDescription'] as core.String
              : null,
          memoryMb: json_.containsKey('memoryMb')
              ? json_['memoryMb'] as core.int
              : null,
          powerState: json_.containsKey('powerState')
              ? json_['powerState'] as core.String
              : null,
          uuid: json_.containsKey('uuid') ? json_['uuid'] as core.String : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootOption != null) 'bootOption': bootOption!,
        if (committedStorageMb != null)
          'committedStorageMb': committedStorageMb!,
        if (cpuCount != null) 'cpuCount': cpuCount!,
        if (datacenterDescription != null)
          'datacenterDescription': datacenterDescription!,
        if (datacenterId != null) 'datacenterId': datacenterId!,
        if (diskCount != null) 'diskCount': diskCount!,
        if (displayName != null) 'displayName': displayName!,
        if (guestDescription != null) 'guestDescription': guestDescription!,
        if (memoryMb != null) 'memoryMb': memoryMb!,
        if (powerState != null) 'powerState': powerState!,
        if (uuid != null) 'uuid': uuid!,
        if (vmId != null) 'vmId': vmId!,
      };
}

/// VmwareVmsDetails describes VMs in vCenter.
class VmwareVmsDetails {
  /// The details of the vmware VMs.
  core.List<VmwareVmDetails>? details;

  VmwareVmsDetails({
    this.details,
  });

  VmwareVmsDetails.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.List)
                  .map((value) => VmwareVmDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
      };
}
