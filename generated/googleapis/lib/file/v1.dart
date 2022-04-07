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

/// Cloud Filestore API - v1
///
/// The Cloud Filestore API is used for creating and managing cloud file
/// servers.
///
/// For more information, see <https://cloud.google.com/filestore/>
///
/// Create an instance of [CloudFilestoreApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBackupsResource]
///     - [ProjectsLocationsInstancesResource]
///       - [ProjectsLocationsInstancesSnapshotsResource]
///     - [ProjectsLocationsOperationsResource]
library file.v1;

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

/// The Cloud Filestore API is used for creating and managing cloud file
/// servers.
class CloudFilestoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudFilestoreApi(http.Client client,
      {core.String rootUrl = 'https://file.googleapis.com/',
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

  ProjectsLocationsBackupsResource get backups =>
      ProjectsLocationsBackupsResource(_requester);
  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [includeUnrevealedLocations] - If true, the returned list will include
  /// locations which are not yet revealed.
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
    core.bool? includeUnrevealedLocations,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (includeUnrevealedLocations != null)
        'includeUnrevealedLocations': ['${includeUnrevealedLocations}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The backup's project and location, in the format
  /// `projects/{project_number}/locations/{location}`. In Cloud Filestore,
  /// backup locations map to GCP regions, for example **us-west1**.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backupId] - Required. The ID to use for the backup. The ID must be unique
  /// within the specified project and location. This value must start with a
  /// lowercase letter followed by up to 62 lowercase letters, numbers, or
  /// hyphens, and cannot end with a hyphen. Values that do not match this
  /// pattern will trigger an INVALID_ARGUMENT error.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backup resource name, in the format
  /// `projects/{project_number}/locations/{location}/backups/{backup_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backups/\[^/\]+$`.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backup resource name, in the format
  /// `projects/{project_number}/locations/{location}/backups/{backup_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backups/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Backup.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all backups in a project for either a specified location or for all
  /// locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve backup
  /// information, in the format
  /// `projects/{project_number}/locations/{location}`. In Cloud Filestore,
  /// backup locations map to GCP regions, for example **us-west1**. To retrieve
  /// backup information for all locations, use "-" for the `{location}` value.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBackupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the backup, in the format
  /// `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field.
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
    Backup request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesSnapshotsResource get snapshots =>
      ProjectsLocationsInstancesSnapshotsResource(_requester);

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an instance.
  ///
  /// When creating from a backup, the capacity of the new instance needs to be
  /// equal to or larger than the capacity of the backup (and also equal to or
  /// larger than the minimum capacity of the tier).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The instance's project and location, in the format
  /// `projects/{project_id}/locations/{location}`. In Cloud Filestore,
  /// locations map to GCP zones, for example **us-west1-b**.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [instanceId] - Required. The name of the instance to create. The name must
  /// be unique for the specified project and location.
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
    Instance request,
    core.String parent, {
    core.String? instanceId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The instance resource name, in the format
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [force] - If set to true, all snapshots of the instance will also be
  /// deleted. (Otherwise, the request will only work if the instance has no
  /// snapshots.)
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The instance resource name, in the format
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Instance.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all instances in a project for either a specified location or for
  /// all locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve
  /// instance information, in the format
  /// `projects/{project_id}/locations/{location}`. In Cloud Filestore,
  /// locations map to GCP zones, for example **us-west1-b**. To retrieve
  /// instance information for all locations, use "-" for the `{location}`
  /// value.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
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
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListInstancesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [updateMask] - Mask of fields to update. At least one path must be
  /// supplied in this field. The elements of the repeated paths field may only
  /// include these fields: * "description" * "file_shares" * "labels"
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
    Instance request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Restores an existing instance's file share from a backup.
  ///
  /// The capacity of the instance needs to be equal to or larger than the
  /// capacity of the backup (and also equal to or larger than the minimum
  /// capacity of the tier).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the instance, in the format
  /// `projects/{project_number}/locations/{location_id}/instances/{instance_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
    RestoreInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':restore';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesSnapshotsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a snapshot.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Filestore Instance to create the snapshots of, in
  /// the format
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [snapshotId] - Required. The ID to use for the snapshot. The ID must be
  /// unique within the specified instance. This value must start with a
  /// lowercase letter followed by up to 62 lowercase letters, numbers, or
  /// hyphens, and cannot end with a hyphen.
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
    Snapshot request,
    core.String parent, {
    core.String? snapshotId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (snapshotId != null) 'snapshotId': [snapshotId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/snapshots';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a snapshot.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The snapshot resource name, in the format
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}/snapshots/{snapshot_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/snapshots/\[^/\]+$`.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific snapshot.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The snapshot resource name, in the format
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}/snapshots/{snapshot_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/snapshots/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> get(
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
    return Snapshot.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all snapshots in a project for either a specified location or for
  /// all locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The instance for which to retrieve snapshot
  /// information, in the format
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/snapshots';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSnapshotsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific snapshot.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the snapshot, in the format
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/snapshots/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field.
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
    Snapshot request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
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
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A Cloud Filestore backup.
class Backup {
  /// Capacity of the source file share when the backup was created.
  ///
  /// Output only.
  core.String? capacityGb;

  /// The time when the backup was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of the backup with 2048 characters or less.
  ///
  /// Requests with longer descriptions will be rejected.
  core.String? description;

  /// Amount of bytes that will be downloaded if the backup is restored.
  ///
  /// This may be different than storage bytes, since sequential backups of the
  /// same disk will share storage.
  ///
  /// Output only.
  core.String? downloadBytes;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the backup, in the format
  /// `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
  ///
  /// Output only.
  core.String? name;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Name of the file share in the source Cloud Filestore instance that the
  /// backup is created from.
  core.String? sourceFileShare;

  /// The resource name of the source Cloud Filestore instance, in the format
  /// `projects/{project_number}/locations/{location_id}/instances/{instance_id}`,
  /// used to create this backup.
  core.String? sourceInstance;

  /// The service tier of the source Cloud Filestore instance that this backup
  /// is created from.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not set.
  /// - "STANDARD" : STANDARD tier.
  /// - "PREMIUM" : PREMIUM tier.
  /// - "BASIC_HDD" : BASIC instances offer a maximum capacity of 63.9 TB.
  /// BASIC_HDD is an alias for STANDARD Tier, offering economical performance
  /// backed by HDD.
  /// - "BASIC_SSD" : BASIC instances offer a maximum capacity of 63.9 TB.
  /// BASIC_SSD is an alias for PREMIUM Tier, and offers improved performance
  /// backed by SSD.
  /// - "HIGH_SCALE_SSD" : HIGH_SCALE instances offer expanded capacity and
  /// performance scaling capabilities.
  /// - "ENTERPRISE" : ENTERPRISE instances offer the features and availability
  /// needed for mission-critical workloads.
  core.String? sourceInstanceTier;

  /// The backup state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : Backup is being created.
  /// - "FINALIZING" : Backup has been taken and the operation is being
  /// finalized. At this point, changes to the file share will not be reflected
  /// in the backup.
  /// - "READY" : Backup is available for use.
  /// - "DELETING" : Backup is being deleted.
  core.String? state;

  /// The size of the storage used by the backup.
  ///
  /// As backups share storage, this number is expected to change with backup
  /// creation/deletion.
  ///
  /// Output only.
  core.String? storageBytes;

  Backup({
    this.capacityGb,
    this.createTime,
    this.description,
    this.downloadBytes,
    this.labels,
    this.name,
    this.satisfiesPzs,
    this.sourceFileShare,
    this.sourceInstance,
    this.sourceInstanceTier,
    this.state,
    this.storageBytes,
  });

  Backup.fromJson(core.Map _json)
      : this(
          capacityGb: _json.containsKey('capacityGb')
              ? _json['capacityGb'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          downloadBytes: _json.containsKey('downloadBytes')
              ? _json['downloadBytes'] as core.String
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
          satisfiesPzs: _json.containsKey('satisfiesPzs')
              ? _json['satisfiesPzs'] as core.bool
              : null,
          sourceFileShare: _json.containsKey('sourceFileShare')
              ? _json['sourceFileShare'] as core.String
              : null,
          sourceInstance: _json.containsKey('sourceInstance')
              ? _json['sourceInstance'] as core.String
              : null,
          sourceInstanceTier: _json.containsKey('sourceInstanceTier')
              ? _json['sourceInstanceTier'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          storageBytes: _json.containsKey('storageBytes')
              ? _json['storageBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capacityGb != null) 'capacityGb': capacityGb!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (downloadBytes != null) 'downloadBytes': downloadBytes!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (sourceFileShare != null) 'sourceFileShare': sourceFileShare!,
        if (sourceInstance != null) 'sourceInstance': sourceInstance!,
        if (sourceInstanceTier != null)
          'sourceInstanceTier': sourceInstanceTier!,
        if (state != null) 'state': state!,
        if (storageBytes != null) 'storageBytes': storageBytes!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// File share configuration for the instance.
class FileShareConfig {
  /// File share capacity in gigabytes (GB).
  ///
  /// Cloud Filestore defines 1 GB as 1024^3 bytes.
  core.String? capacityGb;

  /// The name of the file share (must be 16 characters or less).
  core.String? name;

  /// Nfs Export Options.
  ///
  /// There is a limit of 10 export options per file share.
  core.List<NfsExportOptions>? nfsExportOptions;

  /// The resource name of the backup, in the format
  /// `projects/{project_number}/locations/{location_id}/backups/{backup_id}`,
  /// that this file share has been restored from.
  core.String? sourceBackup;

  FileShareConfig({
    this.capacityGb,
    this.name,
    this.nfsExportOptions,
    this.sourceBackup,
  });

  FileShareConfig.fromJson(core.Map _json)
      : this(
          capacityGb: _json.containsKey('capacityGb')
              ? _json['capacityGb'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nfsExportOptions: _json.containsKey('nfsExportOptions')
              ? (_json['nfsExportOptions'] as core.List)
                  .map((value) => NfsExportOptions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceBackup: _json.containsKey('sourceBackup')
              ? _json['sourceBackup'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capacityGb != null) 'capacityGb': capacityGb!,
        if (name != null) 'name': name!,
        if (nfsExportOptions != null) 'nfsExportOptions': nfsExportOptions!,
        if (sourceBackup != null) 'sourceBackup': sourceBackup!,
      };
}

/// A Cloud Filestore instance.
class Instance {
  /// The time when the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the instance (2048 characters or less).
  core.String? description;

  /// Server-specified ETag for the instance resource to prevent simultaneous
  /// updates from overwriting each other.
  core.String? etag;

  /// File system shares on the instance.
  ///
  /// For this version, only a single file share is supported.
  core.List<FileShareConfig>? fileShares;

  /// KMS key name used for data encryption.
  core.String? kmsKeyName;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`.
  ///
  /// Output only.
  core.String? name;

  /// VPC networks to which the instance is connected.
  ///
  /// For this version, only a single network is supported.
  core.List<NetworkConfig>? networks;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The instance state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The instance is being created.
  /// - "READY" : The instance is available for use.
  /// - "REPAIRING" : Work is being done on the instance. You can get further
  /// details from the `statusMessage` field of the `Instance` resource.
  /// - "DELETING" : The instance is shutting down.
  /// - "ERROR" : The instance is experiencing an issue and might be unusable.
  /// You can get further details from the `statusMessage` field of the
  /// `Instance` resource.
  /// - "RESTORING" : The instance is restoring a backup to an existing file
  /// share and may be unusable during this time.
  /// - "SUSPENDED" : The instance is suspended. You can get further details
  /// from the `suspension_reasons` field of the `Instance` resource.
  core.String? state;

  /// Additional information about the instance state, if available.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Field indicates all the reasons the instance is in "SUSPENDED" state.
  ///
  /// Output only.
  core.List<core.String>? suspensionReasons;

  /// The service tier of the instance.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not set.
  /// - "STANDARD" : STANDARD tier.
  /// - "PREMIUM" : PREMIUM tier.
  /// - "BASIC_HDD" : BASIC instances offer a maximum capacity of 63.9 TB.
  /// BASIC_HDD is an alias for STANDARD Tier, offering economical performance
  /// backed by HDD.
  /// - "BASIC_SSD" : BASIC instances offer a maximum capacity of 63.9 TB.
  /// BASIC_SSD is an alias for PREMIUM Tier, and offers improved performance
  /// backed by SSD.
  /// - "HIGH_SCALE_SSD" : HIGH_SCALE instances offer expanded capacity and
  /// performance scaling capabilities.
  /// - "ENTERPRISE" : ENTERPRISE instances offer the features and availability
  /// needed for mission-critical workloads.
  core.String? tier;

  Instance({
    this.createTime,
    this.description,
    this.etag,
    this.fileShares,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.networks,
    this.satisfiesPzs,
    this.state,
    this.statusMessage,
    this.suspensionReasons,
    this.tier,
  });

  Instance.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          fileShares: _json.containsKey('fileShares')
              ? (_json['fileShares'] as core.List)
                  .map((value) => FileShareConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
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
          networks: _json.containsKey('networks')
              ? (_json['networks'] as core.List)
                  .map((value) => NetworkConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          satisfiesPzs: _json.containsKey('satisfiesPzs')
              ? _json['satisfiesPzs'] as core.bool
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          suspensionReasons: _json.containsKey('suspensionReasons')
              ? (_json['suspensionReasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (fileShares != null) 'fileShares': fileShares!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (networks != null) 'networks': networks!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (state != null) 'state': state!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (suspensionReasons != null) 'suspensionReasons': suspensionReasons!,
        if (tier != null) 'tier': tier!,
      };
}

/// ListBackupsResponse is the result of ListBackupsRequest.
class ListBackupsResponse {
  /// A list of backups in the project for the specified location.
  ///
  /// If the `{location}` value in the request is "-", the response contains a
  /// list of backups from all locations. If any location is unreachable, the
  /// response will only return backups in reachable locations and the
  /// "unreachable" field will be populated with a list of unreachable
  /// locations.
  core.List<Backup>? backups;

  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({
    this.backups,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupsResponse.fromJson(core.Map _json)
      : this(
          backups: _json.containsKey('backups')
              ? (_json['backups'] as core.List)
                  .map((value) => Backup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListInstancesResponse is the result of ListInstancesRequest.
class ListInstancesResponse {
  /// A list of instances in the project for the specified location.
  ///
  /// If the `{location}` value in the request is "-", the response contains a
  /// list of instances from all locations. If any location is unreachable, the
  /// response will only return instances in reachable locations and the
  /// "unreachable" field will be populated with a list of unreachable
  /// locations.
  core.List<Instance>? instances;

  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInstancesResponse({
    this.instances,
    this.nextPageToken,
    this.unreachable,
  });

  ListInstancesResponse.fromJson(core.Map _json)
      : this(
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) => Instance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

/// ListSnapshotsResponse is the result of ListSnapshotsRequest.
class ListSnapshotsResponse {
  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String? nextPageToken;

  /// A list of snapshots in the project for the specified instance.
  core.List<Snapshot>? snapshots;

  ListSnapshotsResponse({
    this.nextPageToken,
    this.snapshots,
  });

  ListSnapshotsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          snapshots: _json.containsKey('snapshots')
              ? (_json['snapshots'] as core.List)
                  .map((value) => Snapshot.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (snapshots != null) 'snapshots': snapshots!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Network configuration for the instance.
class NetworkConfig {
  /// The network connect mode of the Filestore instance.
  ///
  /// If not provided, the connect mode defaults to DIRECT_PEERING.
  /// Possible string values are:
  /// - "CONNECT_MODE_UNSPECIFIED" : Not set.
  /// - "DIRECT_PEERING" : Connect via direct peering to the Filestore service.
  /// - "PRIVATE_SERVICE_ACCESS" : Connect to your Filestore instance using
  /// Private Service Access. Private services access provides an IP address
  /// range for multiple Google Cloud services, including Filestore.
  core.String? connectMode;

  /// IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or IPv6
  /// addresses in the format
  /// `{block1}:{block2}:{block3}:{block4}:{block5}:{block6}:{block7}:{block8}`.
  ///
  /// Output only.
  core.List<core.String>? ipAddresses;

  /// Internet protocol versions for which the instance has IP addresses
  /// assigned.
  ///
  /// For this version, only MODE_IPV4 is supported.
  core.List<core.String>? modes;

  /// The name of the Google Compute Engine
  /// [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the instance
  /// is connected.
  core.String? network;

  /// Optional, reserved_ip_range can have one of the following two types of
  /// values.
  ///
  /// * CIDR range value when using DIRECT_PEERING connect mode. *
  /// [Allocated IP address range](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address)
  /// when using PRIVATE_SERVICE_ACCESS connect mode. When the name of an
  /// allocated IP address range is specified, it must be one of the ranges
  /// associated with the private service access connection. When specified as a
  /// direct CIDR value, it must be a /29 CIDR block for Basic tier or a /24
  /// CIDR block for High Scale or Enterprise tier in one of the
  /// [internal IP address ranges](https://www.arin.net/reference/research/statistics/address_filters/)
  /// that identifies the range of IP addresses reserved for this instance. For
  /// example, 10.0.0.0/29 or 192.168.0.0/24. The range you specify can't
  /// overlap with either existing subnets or assigned IP address ranges for
  /// other Cloud Filestore instances in the selected VPC network.
  core.String? reservedIpRange;

  NetworkConfig({
    this.connectMode,
    this.ipAddresses,
    this.modes,
    this.network,
    this.reservedIpRange,
  });

  NetworkConfig.fromJson(core.Map _json)
      : this(
          connectMode: _json.containsKey('connectMode')
              ? _json['connectMode'] as core.String
              : null,
          ipAddresses: _json.containsKey('ipAddresses')
              ? (_json['ipAddresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          modes: _json.containsKey('modes')
              ? (_json['modes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          reservedIpRange: _json.containsKey('reservedIpRange')
              ? _json['reservedIpRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectMode != null) 'connectMode': connectMode!,
        if (ipAddresses != null) 'ipAddresses': ipAddresses!,
        if (modes != null) 'modes': modes!,
        if (network != null) 'network': network!,
        if (reservedIpRange != null) 'reservedIpRange': reservedIpRange!,
      };
}

/// NFS export options specifications.
class NfsExportOptions {
  /// Either READ_ONLY, for allowing only read requests on the exported
  /// directory, or READ_WRITE, for allowing both read and write requests.
  ///
  /// The default is READ_WRITE.
  /// Possible string values are:
  /// - "ACCESS_MODE_UNSPECIFIED" : AccessMode not set.
  /// - "READ_ONLY" : The client can only read the file share.
  /// - "READ_WRITE" : The client can read and write the file share (default).
  core.String? accessMode;

  /// An integer representing the anonymous group id with a default value of
  /// 65534.
  ///
  /// Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be
  /// returned if this field is specified for other squash_mode settings.
  core.String? anonGid;

  /// An integer representing the anonymous user id with a default value of
  /// 65534.
  ///
  /// Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be
  /// returned if this field is specified for other squash_mode settings.
  core.String? anonUid;

  /// List of either an IPv4 addresses in the format
  /// `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format
  /// `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file
  /// share.
  ///
  /// Overlapping IP ranges are not allowed, both within and across
  /// NfsExportOptions. An error will be returned. The limit is 64 IP
  /// ranges/addresses for each FileShareConfig among all NfsExportOptions.
  core.List<core.String>? ipRanges;

  /// Either NO_ROOT_SQUASH, for allowing root access on the exported directory,
  /// or ROOT_SQUASH, for not allowing root access.
  ///
  /// The default is NO_ROOT_SQUASH.
  /// Possible string values are:
  /// - "SQUASH_MODE_UNSPECIFIED" : SquashMode not set.
  /// - "NO_ROOT_SQUASH" : The Root user has root access to the file share
  /// (default).
  /// - "ROOT_SQUASH" : The Root user has squashed access to the anonymous
  /// uid/gid.
  core.String? squashMode;

  NfsExportOptions({
    this.accessMode,
    this.anonGid,
    this.anonUid,
    this.ipRanges,
    this.squashMode,
  });

  NfsExportOptions.fromJson(core.Map _json)
      : this(
          accessMode: _json.containsKey('accessMode')
              ? _json['accessMode'] as core.String
              : null,
          anonGid: _json.containsKey('anonGid')
              ? _json['anonGid'] as core.String
              : null,
          anonUid: _json.containsKey('anonUid')
              ? _json['anonUid'] as core.String
              : null,
          ipRanges: _json.containsKey('ipRanges')
              ? (_json['ipRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          squashMode: _json.containsKey('squashMode')
              ? _json['squashMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessMode != null) 'accessMode': accessMode!,
        if (anonGid != null) 'anonGid': anonGid!,
        if (anonUid != null) 'anonUid': anonUid!,
        if (ipRanges != null) 'ipRanges': ipRanges!,
        if (squashMode != null) 'squashMode': squashMode!,
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

/// RestoreInstanceRequest restores an existing instance's file share from a
/// backup.
class RestoreInstanceRequest {
  /// Name of the file share in the Cloud Filestore instance that the backup is
  /// being restored to.
  ///
  /// Required.
  core.String? fileShare;

  /// The resource name of the backup, in the format
  /// `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
  core.String? sourceBackup;

  RestoreInstanceRequest({
    this.fileShare,
    this.sourceBackup,
  });

  RestoreInstanceRequest.fromJson(core.Map _json)
      : this(
          fileShare: _json.containsKey('fileShare')
              ? _json['fileShare'] as core.String
              : null,
          sourceBackup: _json.containsKey('sourceBackup')
              ? _json['sourceBackup'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileShare != null) 'fileShare': fileShare!,
        if (sourceBackup != null) 'sourceBackup': sourceBackup!,
      };
}

/// A Filestore snapshot.
class Snapshot {
  /// The time when the snapshot was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of the snapshot with 2048 characters or less.
  ///
  /// Requests with longer descriptions will be rejected.
  core.String? description;

  /// The amount of bytes needed to allocate a full copy of the snapshot content
  ///
  /// Output only.
  core.String? filesystemUsedBytes;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the snapshot, in the format
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.
  ///
  /// Output only.
  core.String? name;

  /// The snapshot state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : Snapshot is being created.
  /// - "READY" : Snapshot is available for use.
  /// - "DELETING" : Snapshot is being deleted.
  core.String? state;

  Snapshot({
    this.createTime,
    this.description,
    this.filesystemUsedBytes,
    this.labels,
    this.name,
    this.state,
  });

  Snapshot.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          filesystemUsedBytes: _json.containsKey('filesystemUsedBytes')
              ? _json['filesystemUsedBytes'] as core.String
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
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (filesystemUsedBytes != null)
          'filesystemUsedBytes': filesystemUsedBytes!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
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
