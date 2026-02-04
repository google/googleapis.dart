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

/// The Cloud Filestore API is used for creating and managing cloud file
/// servers.
class CloudFilestoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudFilestoreApi(
    http.Client client, {
    core.String rootUrl = 'https://file.googleapis.com/',
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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
  /// [extraLocationTypes] - Optional. Do not use this field. It is unsupported
  /// and is ignored unless explicitly documented otherwise. This is primarily
  /// for internal usage.
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
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `projects/{project_number}/locations/{location}`. In Filestore, backup
  /// locations map to Google Cloud regions, for example **us-west1**.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'backupId': ?backupId == null ? null : [backupId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Backup> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all backups in a project for either a specified location or for all
  /// locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve backup
  /// information, in the format
  /// `projects/{project_number}/locations/{location}`. In Filestore, backup
  /// locations map to Google Cloud regions, for example **us-west1**. To
  /// retrieve backup information for all locations, use "-" for the
  /// `{location}` value.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
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
  /// `projects/{project_id}/locations/{location}`. In Filestore, locations map
  /// to Google Cloud zones, for example **us-west1-b**.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'instanceId': ?instanceId == null ? null : [instanceId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Instance> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all instances in a project for either a specified location or for
  /// all locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve
  /// instance information, in the format
  /// `projects/{project_id}/locations/{location}`. In Cloud Filestore,
  /// locations map to Google Cloud zones, for example **us-west1-b**. To
  /// retrieve instance information for all locations, use "-" for the
  /// `{location}` value.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// include these fields: * "description" * "file_shares" * "labels" *
  /// "performance_config" * "deletion_protection_enabled" *
  /// "deletion_protection_reason"
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
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

  /// Pause the standby instance (replica).
  ///
  /// WARNING: This operation makes the standby instance's NFS filesystem
  /// writable. Any data written to the standby instance while paused will be
  /// lost when the replica is resumed or promoted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the instance, in the format
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
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
  async.Future<Operation> pauseReplica(
    PauseReplicaRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':pauseReplica';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Promote the standby instance (replica).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the instance, in the format
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
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
  async.Future<Operation> promoteReplica(
    PromoteReplicaRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':promoteReplica';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resume the standby instance (replica).
  ///
  /// WARNING: Any data written to the standby instance while paused will be
  /// lost when the replica is resumed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the instance, in the format
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
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
  async.Future<Operation> resumeReplica(
    ResumeReplicaRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resumeReplica';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Revert an existing instance's file system to a specified snapshot.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the instance, in the format
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
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
  async.Future<Operation> revert(
    RevertInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':revert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'snapshotId': ?snapshotId == null ? null : [snapshotId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/snapshots';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Snapshot> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/snapshots';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSnapshotsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
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
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
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
      'fields': ?$fields == null ? null : [$fields],
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

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

/// A Filestore backup.
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

  /// The file system protocol of the source Filestore instance that this backup
  /// is created from.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FILE_PROTOCOL_UNSPECIFIED" : FILE_PROTOCOL_UNSPECIFIED serves a "not
  /// set" default value when a FileProtocol is a separate field in a message.
  /// - "NFS_V3" : NFS 3.0.
  /// - "NFS_V4_1" : NFS 4.1.
  core.String? fileSystemProtocol;

  /// KMS key name used for data encryption.
  ///
  /// Immutable.
  core.String? kmsKey;

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
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Name of the file share in the source Filestore instance that the backup is
  /// created from.
  core.String? sourceFileShare;

  /// The resource name of the source Filestore instance, in the format
  /// `projects/{project_number}/locations/{location_id}/instances/{instance_id}`,
  /// used to create this backup.
  core.String? sourceInstance;

  /// The service tier of the source Filestore instance that this backup is
  /// created from.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not set.
  /// - "STANDARD" : STANDARD tier. BASIC_HDD is the preferred term for this
  /// tier.
  /// - "PREMIUM" : PREMIUM tier. BASIC_SSD is the preferred term for this tier.
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
  /// - "ZONAL" : ZONAL instances offer expanded capacity and performance
  /// scaling capabilities.
  /// - "REGIONAL" : REGIONAL instances offer the features and availability
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
  /// - "INVALID" : Backup is not valid and cannot be used for creating new
  /// instances or restoring existing instances.
  core.String? state;

  /// The size of the storage used by the backup.
  ///
  /// As backups share storage, this number is expected to change with backup
  /// creation/deletion.
  ///
  /// Output only.
  core.String? storageBytes;

  /// Input only.
  ///
  /// Immutable. Tag key-value pairs bound to this resource. Each key must be a
  /// namespaced name and each value a short name. Example:
  /// "123456789012/environment" : "production", "123456789013/costCenter" :
  /// "marketing" See the documentation for more information: - Namespaced name:
  /// https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing#retrieving_tag_key
  /// - Short name:
  /// https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing#retrieving_tag_value
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

  Backup({
    this.capacityGb,
    this.createTime,
    this.description,
    this.downloadBytes,
    this.fileSystemProtocol,
    this.kmsKey,
    this.labels,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.sourceFileShare,
    this.sourceInstance,
    this.sourceInstanceTier,
    this.state,
    this.storageBytes,
    this.tags,
  });

  Backup.fromJson(core.Map json_)
    : this(
        capacityGb: json_['capacityGb'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        downloadBytes: json_['downloadBytes'] as core.String?,
        fileSystemProtocol: json_['fileSystemProtocol'] as core.String?,
        kmsKey: json_['kmsKey'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        sourceFileShare: json_['sourceFileShare'] as core.String?,
        sourceInstance: json_['sourceInstance'] as core.String?,
        sourceInstanceTier: json_['sourceInstanceTier'] as core.String?,
        state: json_['state'] as core.String?,
        storageBytes: json_['storageBytes'] as core.String?,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final capacityGb = this.capacityGb;
    final createTime = this.createTime;
    final description = this.description;
    final downloadBytes = this.downloadBytes;
    final fileSystemProtocol = this.fileSystemProtocol;
    final kmsKey = this.kmsKey;
    final labels = this.labels;
    final name = this.name;
    final satisfiesPzi = this.satisfiesPzi;
    final satisfiesPzs = this.satisfiesPzs;
    final sourceFileShare = this.sourceFileShare;
    final sourceInstance = this.sourceInstance;
    final sourceInstanceTier = this.sourceInstanceTier;
    final state = this.state;
    final storageBytes = this.storageBytes;
    final tags = this.tags;
    return {
      'capacityGb': ?capacityGb,
      'createTime': ?createTime,
      'description': ?description,
      'downloadBytes': ?downloadBytes,
      'fileSystemProtocol': ?fileSystemProtocol,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'name': ?name,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'sourceFileShare': ?sourceFileShare,
      'sourceInstance': ?sourceInstance,
      'sourceInstanceTier': ?sourceInstanceTier,
      'state': ?state,
      'storageBytes': ?storageBytes,
      'tags': ?tags,
    };
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Directory Services configuration for Kerberos-based authentication.
class DirectoryServicesConfig {
  /// Configuration for LDAP servers.
  LdapConfig? ldap;

  DirectoryServicesConfig({this.ldap});

  DirectoryServicesConfig.fromJson(core.Map json_)
    : this(
        ldap: json_.containsKey('ldap')
            ? LdapConfig.fromJson(
                json_['ldap'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ldap = this.ldap;
    return {'ldap': ?ldap};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// File share configuration for the instance.
class FileShareConfig {
  /// File share capacity in gigabytes (GB).
  ///
  /// Filestore defines 1 GB as 1024^3 bytes.
  core.String? capacityGb;

  /// The name of the file share.
  ///
  /// Must use 1-16 characters for the basic service tier and 1-63 characters
  /// for all other service tiers. Must use lowercase letters, numbers, or
  /// underscores `[a-z0-9_]`. Must start with a letter. Immutable.
  ///
  /// Required.
  core.String? name;

  /// Nfs Export Options.
  ///
  /// There is a limit of 10 export options per file share.
  core.List<NfsExportOptions>? nfsExportOptions;

  /// The resource name of the backup, in the format
  /// `projects/{project_number}/locations/{location_id}/backups/{backup_id}`,
  /// that this file share has been restored from.
  core.String? sourceBackup;

  /// The resource name of the BackupDR backup, in the format
  /// `projects/{project_id}/locations/{location_id}/backupVaults/{backupvault_id}/dataSources/{datasource_id}/backups/{backup_id}`,
  /// TODO (b/443690479) - Remove visibility restrictions once the feature is
  /// ready
  core.String? sourceBackupdrBackup;

  FileShareConfig({
    this.capacityGb,
    this.name,
    this.nfsExportOptions,
    this.sourceBackup,
    this.sourceBackupdrBackup,
  });

  FileShareConfig.fromJson(core.Map json_)
    : this(
        capacityGb: json_['capacityGb'] as core.String?,
        name: json_['name'] as core.String?,
        nfsExportOptions: (json_['nfsExportOptions'] as core.List?)
            ?.map(
              (value) => NfsExportOptions.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sourceBackup: json_['sourceBackup'] as core.String?,
        sourceBackupdrBackup: json_['sourceBackupdrBackup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final capacityGb = this.capacityGb;
    final name = this.name;
    final nfsExportOptions = this.nfsExportOptions;
    final sourceBackup = this.sourceBackup;
    final sourceBackupdrBackup = this.sourceBackupdrBackup;
    return {
      'capacityGb': ?capacityGb,
      'name': ?name,
      'nfsExportOptions': ?nfsExportOptions,
      'sourceBackup': ?sourceBackup,
      'sourceBackupdrBackup': ?sourceBackupdrBackup,
    };
  }
}

/// Fixed IOPS (input/output operations per second) parameters.
class FixedIOPS {
  /// Maximum IOPS.
  ///
  /// Required.
  core.String? maxIops;

  FixedIOPS({this.maxIops});

  FixedIOPS.fromJson(core.Map json_)
    : this(maxIops: json_['maxIops'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final maxIops = this.maxIops;
    return {'maxIops': ?maxIops};
  }
}

/// IOPS per TB.
///
/// Filestore defines TB as 1024^4 bytes (TiB).
class IOPSPerTB {
  /// Maximum IOPS per TiB.
  ///
  /// Required.
  core.String? maxIopsPerTb;

  IOPSPerTB({this.maxIopsPerTb});

  IOPSPerTB.fromJson(core.Map json_)
    : this(maxIopsPerTb: json_['maxIopsPerTb'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final maxIopsPerTb = this.maxIopsPerTb;
    return {'maxIopsPerTb': ?maxIopsPerTb};
  }
}

/// A Filestore instance.
class Instance {
  /// The incremental increase or decrease in capacity, designated in some
  /// number of GB.
  ///
  /// Output only.
  core.String? capacityStepSizeGb;

  /// The time when the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Indicates whether this instance supports configuring its performance.
  ///
  /// If true, the user can configure the instance's performance by using the
  /// 'performance_config' field.
  ///
  /// Output only.
  core.bool? customPerformanceSupported;

  /// Indicates whether the instance is protected against deletion.
  ///
  /// Optional.
  core.bool? deletionProtectionEnabled;

  /// The reason for enabling deletion protection.
  ///
  /// Optional.
  core.String? deletionProtectionReason;

  /// The description of the instance (2048 characters or less).
  core.String? description;

  /// Directory Services configuration for Kerberos-based authentication.
  ///
  /// Should only be set if protocol is "NFS_V4_1".
  ///
  /// Optional.
  DirectoryServicesConfig? directoryServices;

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

  /// The maximum capacity of the instance in GB.
  ///
  /// Output only.
  core.String? maxCapacityGb;

  /// The minimum capacity of the instance in GB.
  ///
  /// Output only.
  core.String? minCapacityGb;

  /// The resource name of the instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`.
  ///
  /// Output only.
  core.String? name;

  /// VPC networks to which the instance is connected.
  ///
  /// For this version, only a single network is supported.
  core.List<NetworkConfig>? networks;

  /// Used to configure performance.
  ///
  /// Optional.
  PerformanceConfig? performanceConfig;

  /// Used for getting performance limits.
  ///
  /// Output only.
  PerformanceLimits? performanceLimits;

  /// The protocol indicates the access protocol for all shares in the instance.
  ///
  /// This field is immutable and it cannot be changed after the instance has
  /// been created. Default value: `NFS_V3`.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "FILE_PROTOCOL_UNSPECIFIED" : FILE_PROTOCOL_UNSPECIFIED serves a "not
  /// set" default value when a FileProtocol is a separate field in a message.
  /// - "NFS_V3" : NFS 3.0.
  /// - "NFS_V4_1" : NFS 4.1.
  core.String? protocol;

  /// Replication configuration.
  ///
  /// Optional.
  Replication? replication;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

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
  /// - "SUSPENDING" : The instance is in the process of becoming suspended.
  /// - "RESUMING" : The instance is in the process of becoming active.
  /// - "REVERTING" : The instance is reverting to a snapshot.
  /// - "PROMOTING" : The replica instance is being promoted.
  core.String? state;

  /// Additional information about the instance state, if available.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Field indicates all the reasons the instance is in "SUSPENDED" state.
  ///
  /// Output only.
  core.List<core.String>? suspensionReasons;

  /// Input only.
  ///
  /// Immutable. Tag key-value pairs bound to this resource. Each key must be a
  /// namespaced name and each value a short name. Example:
  /// "123456789012/environment" : "production", "123456789013/costCenter" :
  /// "marketing" See the documentation for more information: - Namespaced name:
  /// https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing#retrieving_tag_key
  /// - Short name:
  /// https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing#retrieving_tag_value
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

  /// The service tier of the instance.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not set.
  /// - "STANDARD" : STANDARD tier. BASIC_HDD is the preferred term for this
  /// tier.
  /// - "PREMIUM" : PREMIUM tier. BASIC_SSD is the preferred term for this tier.
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
  /// - "ZONAL" : ZONAL instances offer expanded capacity and performance
  /// scaling capabilities.
  /// - "REGIONAL" : REGIONAL instances offer the features and availability
  /// needed for mission-critical workloads.
  core.String? tier;

  Instance({
    this.capacityStepSizeGb,
    this.createTime,
    this.customPerformanceSupported,
    this.deletionProtectionEnabled,
    this.deletionProtectionReason,
    this.description,
    this.directoryServices,
    this.etag,
    this.fileShares,
    this.kmsKeyName,
    this.labels,
    this.maxCapacityGb,
    this.minCapacityGb,
    this.name,
    this.networks,
    this.performanceConfig,
    this.performanceLimits,
    this.protocol,
    this.replication,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.statusMessage,
    this.suspensionReasons,
    this.tags,
    this.tier,
  });

  Instance.fromJson(core.Map json_)
    : this(
        capacityStepSizeGb: json_['capacityStepSizeGb'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        customPerformanceSupported:
            json_['customPerformanceSupported'] as core.bool?,
        deletionProtectionEnabled:
            json_['deletionProtectionEnabled'] as core.bool?,
        deletionProtectionReason:
            json_['deletionProtectionReason'] as core.String?,
        description: json_['description'] as core.String?,
        directoryServices: json_.containsKey('directoryServices')
            ? DirectoryServicesConfig.fromJson(
                json_['directoryServices']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        fileShares: (json_['fileShares'] as core.List?)
            ?.map(
              (value) => FileShareConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kmsKeyName: json_['kmsKeyName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        maxCapacityGb: json_['maxCapacityGb'] as core.String?,
        minCapacityGb: json_['minCapacityGb'] as core.String?,
        name: json_['name'] as core.String?,
        networks: (json_['networks'] as core.List?)
            ?.map(
              (value) => NetworkConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        performanceConfig: json_.containsKey('performanceConfig')
            ? PerformanceConfig.fromJson(
                json_['performanceConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        performanceLimits: json_.containsKey('performanceLimits')
            ? PerformanceLimits.fromJson(
                json_['performanceLimits']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        protocol: json_['protocol'] as core.String?,
        replication: json_.containsKey('replication')
            ? Replication.fromJson(
                json_['replication'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
        statusMessage: json_['statusMessage'] as core.String?,
        suspensionReasons: (json_['suspensionReasons'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        tier: json_['tier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final capacityStepSizeGb = this.capacityStepSizeGb;
    final createTime = this.createTime;
    final customPerformanceSupported = this.customPerformanceSupported;
    final deletionProtectionEnabled = this.deletionProtectionEnabled;
    final deletionProtectionReason = this.deletionProtectionReason;
    final description = this.description;
    final directoryServices = this.directoryServices;
    final etag = this.etag;
    final fileShares = this.fileShares;
    final kmsKeyName = this.kmsKeyName;
    final labels = this.labels;
    final maxCapacityGb = this.maxCapacityGb;
    final minCapacityGb = this.minCapacityGb;
    final name = this.name;
    final networks = this.networks;
    final performanceConfig = this.performanceConfig;
    final performanceLimits = this.performanceLimits;
    final protocol = this.protocol;
    final replication = this.replication;
    final satisfiesPzi = this.satisfiesPzi;
    final satisfiesPzs = this.satisfiesPzs;
    final state = this.state;
    final statusMessage = this.statusMessage;
    final suspensionReasons = this.suspensionReasons;
    final tags = this.tags;
    final tier = this.tier;
    return {
      'capacityStepSizeGb': ?capacityStepSizeGb,
      'createTime': ?createTime,
      'customPerformanceSupported': ?customPerformanceSupported,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'deletionProtectionReason': ?deletionProtectionReason,
      'description': ?description,
      'directoryServices': ?directoryServices,
      'etag': ?etag,
      'fileShares': ?fileShares,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'maxCapacityGb': ?maxCapacityGb,
      'minCapacityGb': ?minCapacityGb,
      'name': ?name,
      'networks': ?networks,
      'performanceConfig': ?performanceConfig,
      'performanceLimits': ?performanceLimits,
      'protocol': ?protocol,
      'replication': ?replication,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'state': ?state,
      'statusMessage': ?statusMessage,
      'suspensionReasons': ?suspensionReasons,
      'tags': ?tags,
      'tier': ?tier,
    };
  }
}

/// LdapConfig contains all the parameters for connecting to LDAP servers.
class LdapConfig {
  /// The LDAP domain name in the format of `my-domain.com`.
  ///
  /// Required.
  core.String? domain;

  /// The groups Organizational Unit (OU) is optional.
  ///
  /// This parameter is a hint to allow faster lookup in the LDAP namespace. In
  /// case that this parameter is not provided, Filestore instance will query
  /// the whole LDAP namespace.
  ///
  /// Optional.
  core.String? groupsOu;

  /// The servers names are used for specifying the LDAP servers names.
  ///
  /// The LDAP servers names can come with two formats: 1. DNS name, for
  /// example: `ldap.example1.com`, `ldap.example2.com`. 2. IP address, for
  /// example: `10.0.0.1`, `10.0.0.2`, `10.0.0.3`. All servers names must be in
  /// the same format: either all DNS names or all IP addresses.
  ///
  /// Required.
  core.List<core.String>? servers;

  /// The users Organizational Unit (OU) is optional.
  ///
  /// This parameter is a hint to allow faster lookup in the LDAP namespace. In
  /// case that this parameter is not provided, Filestore instance will query
  /// the whole LDAP namespace.
  ///
  /// Optional.
  core.String? usersOu;

  LdapConfig({this.domain, this.groupsOu, this.servers, this.usersOu});

  LdapConfig.fromJson(core.Map json_)
    : this(
        domain: json_['domain'] as core.String?,
        groupsOu: json_['groupsOu'] as core.String?,
        servers: (json_['servers'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        usersOu: json_['usersOu'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domain = this.domain;
    final groupsOu = this.groupsOu;
    final servers = this.servers;
    final usersOu = this.usersOu;
    return {
      'domain': ?domain,
      'groupsOu': ?groupsOu,
      'servers': ?servers,
      'usersOu': ?usersOu,
    };
  }
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

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({this.backups, this.nextPageToken, this.unreachable});

  ListBackupsResponse.fromJson(core.Map json_)
    : this(
        backups: (json_['backups'] as core.List?)
            ?.map(
              (value) =>
                  Backup.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backups = this.backups;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'backups': ?backups,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
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

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInstancesResponse({this.instances, this.nextPageToken, this.unreachable});

  ListInstancesResponse.fromJson(core.Map json_)
    : this(
        instances: (json_['instances'] as core.List?)
            ?.map(
              (value) => Instance.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instances = this.instances;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'instances': ?instances,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => Location.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => Operation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// ListSnapshotsResponse is the result of ListSnapshotsRequest.
class ListSnapshotsResponse {
  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String? nextPageToken;

  /// A list of snapshots in the project for the specified instance.
  core.List<Snapshot>? snapshots;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListSnapshotsResponse({this.nextPageToken, this.snapshots, this.unreachable});

  ListSnapshotsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        snapshots: (json_['snapshots'] as core.List?)
            ?.map(
              (value) => Snapshot.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final snapshots = this.snapshots;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'snapshots': ?snapshots,
      'unreachable': ?unreachable,
    };
  }
}

/// A resource that represents a Google Cloud location.
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
  /// - "PRIVATE_SERVICE_CONNECT" : Connect to your Filestore instance using
  /// Private Service Connect. A connection policy must exist in the region for
  /// the VPC network and the google-cloud-filestore service class.
  core.String? connectMode;

  /// IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or IPv6
  /// addresses in the format
  /// `{block1}:{block2}:{block3}:{block4}:{block5}:{block6}:{block7}:{block8}`.
  ///
  /// Output only.
  core.List<core.String>? ipAddresses;

  /// Internet protocol versions for which the instance has IP addresses
  /// assigned.
  core.List<core.String>? modes;

  /// The name of the Google Compute Engine
  /// [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the instance
  /// is connected.
  core.String? network;

  /// Private Service Connect configuration.
  ///
  /// Should only be set when connect_mode is PRIVATE_SERVICE_CONNECT.
  ///
  /// Optional.
  PscConfig? pscConfig;

  /// Optional, reserved_ip_range can have one of the following two types of
  /// values.
  ///
  /// * CIDR range value when using DIRECT_PEERING connect mode. *
  /// [Allocated IP address range](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address)
  /// when using PRIVATE_SERVICE_ACCESS connect mode. When the name of an
  /// allocated IP address range is specified, it must be one of the ranges
  /// associated with the private service access connection. When specified as a
  /// direct CIDR value, it must be a /29 CIDR block for Basic tier, a /24 CIDR
  /// block for High Scale tier, or a /26 CIDR block for Enterprise tier in one
  /// of the
  /// [internal IP address ranges](https://www.arin.net/reference/research/statistics/address_filters/)
  /// that identifies the range of IP addresses reserved for this instance. For
  /// example, 10.0.0.0/29, 192.168.0.0/24 or 192.168.0.0/26, respectively. The
  /// range you specify can't overlap with either existing subnets or assigned
  /// IP address ranges for other Filestore instances in the selected VPC
  /// network.
  core.String? reservedIpRange;

  NetworkConfig({
    this.connectMode,
    this.ipAddresses,
    this.modes,
    this.network,
    this.pscConfig,
    this.reservedIpRange,
  });

  NetworkConfig.fromJson(core.Map json_)
    : this(
        connectMode: json_['connectMode'] as core.String?,
        ipAddresses: (json_['ipAddresses'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        modes: (json_['modes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        network: json_['network'] as core.String?,
        pscConfig: json_.containsKey('pscConfig')
            ? PscConfig.fromJson(
                json_['pscConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reservedIpRange: json_['reservedIpRange'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectMode = this.connectMode;
    final ipAddresses = this.ipAddresses;
    final modes = this.modes;
    final network = this.network;
    final pscConfig = this.pscConfig;
    final reservedIpRange = this.reservedIpRange;
    return {
      'connectMode': ?connectMode,
      'ipAddresses': ?ipAddresses,
      'modes': ?modes,
      'network': ?network,
      'pscConfig': ?pscConfig,
      'reservedIpRange': ?reservedIpRange,
    };
  }
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

  /// The source VPC network for ip_ranges.
  ///
  /// Required for instances using Private Service Connect, optional otherwise.
  /// If provided, must be the same network specified in the
  /// `NetworkConfig.network` field.
  ///
  /// Optional.
  core.String? network;

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
    this.network,
    this.squashMode,
  });

  NfsExportOptions.fromJson(core.Map json_)
    : this(
        accessMode: json_['accessMode'] as core.String?,
        anonGid: json_['anonGid'] as core.String?,
        anonUid: json_['anonUid'] as core.String?,
        ipRanges: (json_['ipRanges'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        network: json_['network'] as core.String?,
        squashMode: json_['squashMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessMode = this.accessMode;
    final anonGid = this.anonGid;
    final anonUid = this.anonUid;
    final ipRanges = this.ipRanges;
    final network = this.network;
    final squashMode = this.squashMode;
    return {
      'accessMode': ?accessMode,
      'anonGid': ?anonGid,
      'anonUid': ?anonUid,
      'ipRanges': ?ipRanges,
      'network': ?network,
      'squashMode': ?squashMode,
    };
  }
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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// PauseReplicaRequest pauses a Filestore standby instance (replica).
typedef PauseReplicaRequest = $Empty;

/// Used for setting the performance configuration.
///
/// If the user doesn't specify PerformanceConfig, automatically provision the
/// default performance settings as described in
/// https://cloud.google.com/filestore/docs/performance. Larger instances will
/// be linearly set to more IOPS. If the instance's capacity is increased or
/// decreased, its performance will be automatically adjusted upwards or
/// downwards accordingly (respectively).
class PerformanceConfig {
  /// Choose a fixed provisioned IOPS value for the instance, which will remain
  /// constant regardless of instance capacity.
  ///
  /// Value must be a multiple of 1000. If the chosen value is outside the
  /// supported range for the instance's capacity during instance creation,
  /// instance creation will fail with an `InvalidArgument` error. Similarly, if
  /// an instance capacity update would result in a value outside the supported
  /// range, the update will fail with an `InvalidArgument` error.
  FixedIOPS? fixedIops;

  /// Provision IOPS dynamically based on the capacity of the instance.
  ///
  /// Provisioned IOPS will be calculated by multiplying the capacity of the
  /// instance in TiB by the `iops_per_tb` value. For example, for a 2 TiB
  /// instance with an `iops_per_tb` value of 17000 the provisioned IOPS will be
  /// 34000. If the calculated value is outside the supported range for the
  /// instance's capacity during instance creation, instance creation will fail
  /// with an `InvalidArgument` error. Similarly, if an instance capacity update
  /// would result in a value outside the supported range, the update will fail
  /// with an `InvalidArgument` error.
  IOPSPerTB? iopsPerTb;

  PerformanceConfig({this.fixedIops, this.iopsPerTb});

  PerformanceConfig.fromJson(core.Map json_)
    : this(
        fixedIops: json_.containsKey('fixedIops')
            ? FixedIOPS.fromJson(
                json_['fixedIops'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        iopsPerTb: json_.containsKey('iopsPerTb')
            ? IOPSPerTB.fromJson(
                json_['iopsPerTb'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fixedIops = this.fixedIops;
    final iopsPerTb = this.iopsPerTb;
    return {'fixedIops': ?fixedIops, 'iopsPerTb': ?iopsPerTb};
  }
}

/// The enforced performance limits, calculated from the instance's performance
/// configuration.
class PerformanceLimits {
  /// The maximum IOPS.
  ///
  /// Output only.
  core.String? maxIops;

  /// The maximum read IOPS.
  ///
  /// Output only.
  core.String? maxReadIops;

  /// The maximum read throughput in bytes per second.
  ///
  /// Output only.
  core.String? maxReadThroughputBps;

  /// The maximum write IOPS.
  ///
  /// Output only.
  core.String? maxWriteIops;

  /// The maximum write throughput in bytes per second.
  ///
  /// Output only.
  core.String? maxWriteThroughputBps;

  PerformanceLimits({
    this.maxIops,
    this.maxReadIops,
    this.maxReadThroughputBps,
    this.maxWriteIops,
    this.maxWriteThroughputBps,
  });

  PerformanceLimits.fromJson(core.Map json_)
    : this(
        maxIops: json_['maxIops'] as core.String?,
        maxReadIops: json_['maxReadIops'] as core.String?,
        maxReadThroughputBps: json_['maxReadThroughputBps'] as core.String?,
        maxWriteIops: json_['maxWriteIops'] as core.String?,
        maxWriteThroughputBps: json_['maxWriteThroughputBps'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxIops = this.maxIops;
    final maxReadIops = this.maxReadIops;
    final maxReadThroughputBps = this.maxReadThroughputBps;
    final maxWriteIops = this.maxWriteIops;
    final maxWriteThroughputBps = this.maxWriteThroughputBps;
    return {
      'maxIops': ?maxIops,
      'maxReadIops': ?maxReadIops,
      'maxReadThroughputBps': ?maxReadThroughputBps,
      'maxWriteIops': ?maxWriteIops,
      'maxWriteThroughputBps': ?maxWriteThroughputBps,
    };
  }
}

/// PromoteReplicaRequest promotes a Filestore standby instance (replica).
class PromoteReplicaRequest {
  /// The resource name of the peer instance to promote, in the format
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
  ///
  /// The peer instance is required if the operation is called on an active
  /// instance.
  ///
  /// Optional.
  core.String? peerInstance;

  PromoteReplicaRequest({this.peerInstance});

  PromoteReplicaRequest.fromJson(core.Map json_)
    : this(peerInstance: json_['peerInstance'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final peerInstance = this.peerInstance;
    return {'peerInstance': ?peerInstance};
  }
}

/// Private Service Connect configuration.
class PscConfig {
  /// Consumer service project in which the Private Service Connect endpoint
  /// would be set up.
  ///
  /// This is optional, and only relevant in case the network is a shared VPC.
  /// If this is not specified, the endpoint would be setup in the VPC host
  /// project.
  ///
  /// Optional.
  core.String? endpointProject;

  PscConfig({this.endpointProject});

  PscConfig.fromJson(core.Map json_)
    : this(endpointProject: json_['endpointProject'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final endpointProject = this.endpointProject;
    return {'endpointProject': ?endpointProject};
  }
}

/// Replica configuration for the instance.
class ReplicaConfig {
  /// The timestamp of the latest replication snapshot taken on the active
  /// instance and is already replicated safely.
  ///
  /// Output only.
  core.String? lastActiveSyncTime;

  /// The name of the source instance for the replica, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`.
  ///
  /// This field is required when creating a replica.
  ///
  /// Optional.
  core.String? peerInstance;

  /// The replica state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The replica is being created.
  /// - "READY" : The replica is ready.
  /// - "REMOVING" : The replica is being removed.
  /// - "FAILED" : The replica is experiencing an issue and might be unusable.
  /// You can get further details from the `stateReasons` field of the
  /// `ReplicaConfig` object.
  /// - "PROMOTING" : The replica is being promoted.
  /// - "PAUSING" : The replica is being paused.
  /// - "PAUSED" : The replica is paused.
  /// - "RESUMING" : The replica is being resumed.
  core.String? state;

  /// Additional information about the replication state, if available.
  ///
  /// Output only.
  core.List<core.String>? stateReasons;

  /// The time when the replica state was updated.
  ///
  /// Output only.
  core.String? stateUpdateTime;

  ReplicaConfig({
    this.lastActiveSyncTime,
    this.peerInstance,
    this.state,
    this.stateReasons,
    this.stateUpdateTime,
  });

  ReplicaConfig.fromJson(core.Map json_)
    : this(
        lastActiveSyncTime: json_['lastActiveSyncTime'] as core.String?,
        peerInstance: json_['peerInstance'] as core.String?,
        state: json_['state'] as core.String?,
        stateReasons: (json_['stateReasons'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        stateUpdateTime: json_['stateUpdateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastActiveSyncTime = this.lastActiveSyncTime;
    final peerInstance = this.peerInstance;
    final state = this.state;
    final stateReasons = this.stateReasons;
    final stateUpdateTime = this.stateUpdateTime;
    return {
      'lastActiveSyncTime': ?lastActiveSyncTime,
      'peerInstance': ?peerInstance,
      'state': ?state,
      'stateReasons': ?stateReasons,
      'stateUpdateTime': ?stateUpdateTime,
    };
  }
}

/// The configuration used to replicate an instance.
///
/// Optional.
class Replication {
  /// Replication configuration for the replica instance associated with this
  /// instance.
  ///
  /// Only a single replica is supported.
  ///
  /// Optional.
  core.List<ReplicaConfig>? replicas;

  /// The replication role.
  ///
  /// When creating a new replica, this field must be set to `STANDBY`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Role not set.
  /// - "ACTIVE" : The instance is the `ACTIVE` replication member, functions as
  /// the replication source instance.
  /// - "STANDBY" : The instance is the `STANDBY` replication member, functions
  /// as the replication destination instance.
  core.String? role;

  Replication({this.replicas, this.role});

  Replication.fromJson(core.Map json_)
    : this(
        replicas: (json_['replicas'] as core.List?)
            ?.map(
              (value) => ReplicaConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final replicas = this.replicas;
    final role = this.role;
    return {'replicas': ?replicas, 'role': ?role};
  }
}

/// RestoreInstanceRequest restores an existing instance's file share from a
/// backup.
class RestoreInstanceRequest {
  /// Name of the file share in the Filestore instance that the backup is being
  /// restored to.
  ///
  /// Required.
  core.String? fileShare;

  /// The resource name of the backup, in the format
  /// `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
  core.String? sourceBackup;

  RestoreInstanceRequest({this.fileShare, this.sourceBackup});

  RestoreInstanceRequest.fromJson(core.Map json_)
    : this(
        fileShare: json_['fileShare'] as core.String?,
        sourceBackup: json_['sourceBackup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fileShare = this.fileShare;
    final sourceBackup = this.sourceBackup;
    return {'fileShare': ?fileShare, 'sourceBackup': ?sourceBackup};
  }
}

/// ResumeReplicaRequest resumes a Filestore standby instance (replica).
typedef ResumeReplicaRequest = $Empty;

/// RevertInstanceRequest reverts the given instance's file share to the
/// specified snapshot.
class RevertInstanceRequest {
  /// The snapshot resource ID, in the format 'my-snapshot', where the specified
  /// ID is the {snapshot_id} of the fully qualified name like
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`
  ///
  /// Required.
  core.String? targetSnapshotId;

  RevertInstanceRequest({this.targetSnapshotId});

  RevertInstanceRequest.fromJson(core.Map json_)
    : this(targetSnapshotId: json_['targetSnapshotId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final targetSnapshotId = this.targetSnapshotId;
    return {'targetSnapshotId': ?targetSnapshotId};
  }
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

  /// Input only.
  ///
  /// Immutable. Tag key-value pairs bound to this resource. Each key must be a
  /// namespaced name and each value a short name. Example:
  /// "123456789012/environment" : "production", "123456789013/costCenter" :
  /// "marketing" See the documentation for more information: - Namespaced name:
  /// https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing#retrieving_tag_key
  /// - Short name:
  /// https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing#retrieving_tag_value
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

  Snapshot({
    this.createTime,
    this.description,
    this.filesystemUsedBytes,
    this.labels,
    this.name,
    this.state,
    this.tags,
  });

  Snapshot.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        filesystemUsedBytes: json_['filesystemUsedBytes'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final filesystemUsedBytes = this.filesystemUsedBytes;
    final labels = this.labels;
    final name = this.name;
    final state = this.state;
    final tags = this.tags;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'filesystemUsedBytes': ?filesystemUsedBytes,
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'tags': ?tags,
    };
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;
