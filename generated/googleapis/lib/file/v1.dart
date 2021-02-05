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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
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
///     - [ProjectsLocationsOperationsResource]
library file.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Cloud Filestore API is used for creating and managing cloud file
/// servers.
class CloudFilestoreApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudFilestoreApi(http.Client client,
      {core.String rootUrl = 'https://file.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// [filter] - The standard list filter.
  ///
  /// [includeUnrevealedLocations] - If true, the returned list will include
  /// locations which are not yet revealed.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
    core.String filter,
    core.bool includeUnrevealedLocations,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (includeUnrevealedLocations != null) {
      _queryParams['includeUnrevealedLocations'] = [
        '${includeUnrevealedLocations}'
      ];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

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
  /// projects/{project_number}/locations/{location}. In Cloud Filestore, backup
  /// locations map to GCP regions, for example **us-west1**.
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
    core.String backupId,
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (backupId != null) {
      _queryParams['backupId'] = [backupId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/backups';

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
  /// projects/{project_number}/locations/{location}/backups/{backup_id}
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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// projects/{project_number}/locations/{location}/backups/{backup_id}.
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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// information, in the format projects/{project_number}/locations/{location}.
  /// In Cloud Filestore, backup locations map to GCP regions, for example
  /// **us-west1**. To retrieve backup information for all locations, use "-"
  /// for the {location} value.
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
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/backups';

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
  /// projects/{project_number}/locations/{location_id}/backups/{backup_id}.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// projects/{project_id}/locations/{location}. In Cloud Filestore, locations
  /// map to GCP zones, for example **us-west1-b**.
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
    core.String instanceId,
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (instanceId != null) {
      _queryParams['instanceId'] = [instanceId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

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
  /// projects/{project_id}/locations/{location}/instances/{instance_id}
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
  async.Future<Operation> delete(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// projects/{project_id}/locations/{location}/instances/{instance_id}.
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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// projects/{project_id}/locations/{location}. In Cloud Filestore, locations
  /// map to GCP zones, for example **us-west1-b**. To retrieve instance
  /// information for all locations, use "-" for the {location} value.
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
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

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
  /// projects/{project}/locations/{location}/instances/{instance}.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// projects/{project_number}/locations/{location_id}/instances/{instance_id}.
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
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':restore';

    final _response = await _requester.request(
      _url,
      'POST',
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
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

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
  core.String capacityGb;

  /// The time when the backup was created.
  ///
  /// Output only.
  core.String createTime;

  /// A description of the backup with 2048 characters or less.
  ///
  /// Requests with longer descriptions will be rejected.
  core.String description;

  /// Amount of bytes that will be downloaded if the backup is restored.
  ///
  /// This may be different than storage bytes, since sequential backups of the
  /// same disk will share storage.
  ///
  /// Output only.
  core.String downloadBytes;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String> labels;

  /// The resource name of the backup, in the format
  /// projects/{project_number}/locations/{location_id}/backups/{backup_id}.
  ///
  /// Output only.
  core.String name;

  /// Name of the file share in the source Cloud Filestore instance that the
  /// backup is created from.
  core.String sourceFileShare;

  /// The resource name of the source Cloud Filestore instance, in the format
  /// projects/{project_number}/locations/{location_id}/instances/{instance_id},
  /// used to create this backup.
  core.String sourceInstance;

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
  core.String sourceInstanceTier;

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
  core.String state;

  /// The size of the storage used by the backup.
  ///
  /// As backups share storage, this number is expected to change with backup
  /// creation/deletion.
  ///
  /// Output only.
  core.String storageBytes;

  Backup();

  Backup.fromJson(core.Map _json) {
    if (_json.containsKey('capacityGb')) {
      capacityGb = _json['capacityGb'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('downloadBytes')) {
      downloadBytes = _json['downloadBytes'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('sourceFileShare')) {
      sourceFileShare = _json['sourceFileShare'] as core.String;
    }
    if (_json.containsKey('sourceInstance')) {
      sourceInstance = _json['sourceInstance'] as core.String;
    }
    if (_json.containsKey('sourceInstanceTier')) {
      sourceInstanceTier = _json['sourceInstanceTier'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('storageBytes')) {
      storageBytes = _json['storageBytes'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (capacityGb != null) {
      _json['capacityGb'] = capacityGb;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (downloadBytes != null) {
      _json['downloadBytes'] = downloadBytes;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (sourceFileShare != null) {
      _json['sourceFileShare'] = sourceFileShare;
    }
    if (sourceInstance != null) {
      _json['sourceInstance'] = sourceInstance;
    }
    if (sourceInstanceTier != null) {
      _json['sourceInstanceTier'] = sourceInstanceTier;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (storageBytes != null) {
      _json['storageBytes'] = storageBytes;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Time window specified for daily operations.
class DailyCycle {
  /// Duration of the time window, set by service producer.
  ///
  /// Output only.
  core.String duration;

  /// Time within the day to start the operations.
  TimeOfDay startTime;

  DailyCycle();

  DailyCycle.fromJson(core.Map _json) {
    if (_json.containsKey('duration')) {
      duration = _json['duration'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = TimeOfDay.fromJson(
          _json['startTime'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (startTime != null) {
      _json['startTime'] = startTime.toJson();
    }
    return _json;
  }
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class Date {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int year;

  Date();

  Date.fromJson(core.Map _json) {
    if (_json.containsKey('day')) {
      day = _json['day'] as core.int;
    }
    if (_json.containsKey('month')) {
      month = _json['month'] as core.int;
    }
    if (_json.containsKey('year')) {
      year = _json['year'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (day != null) {
      _json['day'] = day;
    }
    if (month != null) {
      _json['month'] = month;
    }
    if (year != null) {
      _json['year'] = year;
    }
    return _json;
  }
}

/// DenyMaintenancePeriod definition.
///
/// Maintenance is forbidden within the deny period. The start_date must be less
/// than the end_date.
class DenyMaintenancePeriod {
  /// Deny period end date.
  ///
  /// This can be: * A full date, with non-zero year, month and day values. * A
  /// month and day value, with a zero year. Allows recurring deny periods each
  /// year. Date matching this period will have to be before the end.
  Date endDate;

  /// Deny period start date.
  ///
  /// This can be: * A full date, with non-zero year, month and day values. * A
  /// month and day value, with a zero year. Allows recurring deny periods each
  /// year. Date matching this period will have to be the same or after the
  /// start.
  Date startDate;

  /// Time in UTC when the Blackout period starts on start_date and ends on
  /// end_date.
  ///
  /// This can be: * Full time. * All zeros for 00:00:00 UTC
  TimeOfDay time;

  DenyMaintenancePeriod();

  DenyMaintenancePeriod.fromJson(core.Map _json) {
    if (_json.containsKey('endDate')) {
      endDate = Date.fromJson(
          _json['endDate'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('startDate')) {
      startDate = Date.fromJson(
          _json['startDate'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('time')) {
      time = TimeOfDay.fromJson(
          _json['time'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endDate != null) {
      _json['endDate'] = endDate.toJson();
    }
    if (startDate != null) {
      _json['startDate'] = startDate.toJson();
    }
    if (time != null) {
      _json['time'] = time.toJson();
    }
    return _json;
  }
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// File share configuration for the instance.
class FileShareConfig {
  /// File share capacity in gigabytes (GB).
  ///
  /// Cloud Filestore defines 1 GB as 1024^3 bytes.
  core.String capacityGb;

  /// The name of the file share (must be 16 characters or less).
  core.String name;

  /// Nfs Export Options.
  ///
  /// There is a limit of 10 export options per file share.
  core.List<NfsExportOptions> nfsExportOptions;

  /// The resource name of the backup, in the format
  /// projects/{project_number}/locations/{location_id}/backups/{backup_id},
  /// that this file share has been restored from.
  core.String sourceBackup;

  FileShareConfig();

  FileShareConfig.fromJson(core.Map _json) {
    if (_json.containsKey('capacityGb')) {
      capacityGb = _json['capacityGb'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('nfsExportOptions')) {
      nfsExportOptions = (_json['nfsExportOptions'] as core.List)
          .map<NfsExportOptions>((value) => NfsExportOptions.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('sourceBackup')) {
      sourceBackup = _json['sourceBackup'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (capacityGb != null) {
      _json['capacityGb'] = capacityGb;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nfsExportOptions != null) {
      _json['nfsExportOptions'] =
          nfsExportOptions.map((value) => value.toJson()).toList();
    }
    if (sourceBackup != null) {
      _json['sourceBackup'] = sourceBackup;
    }
    return _json;
  }
}

class GoogleCloudSaasacceleratorManagementProvidersV1Instance {
  /// consumer_defined_name is the name that is set by the consumer.
  ///
  /// On the other hand Name field represents system-assigned id of an instance
  /// so consumers are not necessarily aware of it. consumer_defined_name is
  /// used for notification/UI purposes for consumer to recognize their
  /// instances.
  core.String consumerDefinedName;

  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String createTime;

  /// Resource labels to represent user provided metadata.
  ///
  /// Each label is a key-value pair, where both the key and the value are
  /// arbitrary strings provided by the user.
  ///
  /// Optional.
  core.Map<core.String, core.String> labels;

  /// The MaintenancePolicies that have been attached to the instance.
  ///
  /// The key must be of the type name of the oneof policy name defined in
  /// MaintenancePolicy, and the referenced policy must define the same policy
  /// type. For complete details of MaintenancePolicy, please refer to
  /// go/cloud-saas-mw-ug.
  ///
  /// Deprecated.
  core.Map<core.String, core.String> maintenancePolicyNames;

  /// The MaintenanceSchedule contains the scheduling information of published
  /// maintenance schedule with same key as software_versions.
  core.Map<core.String,
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
      maintenanceSchedules;

  /// The MaintenanceSettings associated with instance.
  ///
  /// Optional.
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
      maintenanceSettings;

  /// Unique name of the resource.
  ///
  /// It uses the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  core.String name;

  /// Custom string attributes used primarily to expose producer-specific
  /// information in monitoring dashboards.
  ///
  /// See go/get-instance-metadata.
  ///
  /// Output only.
  core.Map<core.String, core.String> producerMetadata;

  /// The list of data plane resources provisioned for this instance, e.g.
  /// compute VMs.
  ///
  /// See go/get-instance-metadata.
  ///
  /// Output only.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
      provisionedResources;

  /// Link to the SLM instance template.
  ///
  /// Only populated when updating SLM instances via SSA's Actuation service
  /// adaptor. Service producers with custom control plane (e.g. Cloud SQL)
  /// doesn't need to populate this field. Instead they should use
  /// software_versions.
  core.String slmInstanceTemplate;

  /// SLO metadata for instance classification in the Standardized dataplane SLO
  /// platform.
  ///
  /// See go/cloud-ssa-standard-slo for feature description.
  ///
  /// Output only.
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata sloMetadata;

  /// Software versions that are used to deploy this instance.
  ///
  /// This can be mutated by rollout services.
  core.Map<core.String, core.String> softwareVersions;

  /// Current lifecycle state of the resource (e.g. if it's being created or
  /// ready to use).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CREATING" : Instance is being created.
  /// - "READY" : Instance has been created and is ready to use.
  /// - "UPDATING" : Instance is being updated.
  /// - "REPAIRING" : Instance is unheathy and under repair.
  /// - "DELETING" : Instance is being deleted.
  /// - "ERROR" : Instance encountered an error and is in indeterministic state.
  core.String state;

  /// ID of the associated GCP tenant project.
  ///
  /// See go/get-instance-metadata.
  ///
  /// Output only.
  core.String tenantProjectId;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String updateTime;

  GoogleCloudSaasacceleratorManagementProvidersV1Instance();

  GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
      core.Map _json) {
    if (_json.containsKey('consumerDefinedName')) {
      consumerDefinedName = _json['consumerDefinedName'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('maintenancePolicyNames')) {
      maintenancePolicyNames = (_json['maintenancePolicyNames'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('maintenanceSchedules')) {
      maintenanceSchedules = (_json['maintenanceSchedules'] as core.Map)
          .cast<core.String, core.Map>()
          .map(
            (key, item) => core.MapEntry(
              key,
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
                  .fromJson(item as core.Map<core.String, core.dynamic>),
            ),
          );
    }
    if (_json.containsKey('maintenanceSettings')) {
      maintenanceSettings =
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
              .fromJson(_json['maintenanceSettings']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('producerMetadata')) {
      producerMetadata = (_json['producerMetadata'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('provisionedResources')) {
      provisionedResources = (_json['provisionedResources'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('slmInstanceTemplate')) {
      slmInstanceTemplate = _json['slmInstanceTemplate'] as core.String;
    }
    if (_json.containsKey('sloMetadata')) {
      sloMetadata =
          GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
              _json['sloMetadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('softwareVersions')) {
      softwareVersions = (_json['softwareVersions'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('tenantProjectId')) {
      tenantProjectId = _json['tenantProjectId'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (consumerDefinedName != null) {
      _json['consumerDefinedName'] = consumerDefinedName;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (maintenancePolicyNames != null) {
      _json['maintenancePolicyNames'] = maintenancePolicyNames;
    }
    if (maintenanceSchedules != null) {
      _json['maintenanceSchedules'] = maintenanceSchedules
          .map((key, item) => core.MapEntry(key, item.toJson()));
    }
    if (maintenanceSettings != null) {
      _json['maintenanceSettings'] = maintenanceSettings.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (producerMetadata != null) {
      _json['producerMetadata'] = producerMetadata;
    }
    if (provisionedResources != null) {
      _json['provisionedResources'] =
          provisionedResources.map((value) => value.toJson()).toList();
    }
    if (slmInstanceTemplate != null) {
      _json['slmInstanceTemplate'] = slmInstanceTemplate;
    }
    if (sloMetadata != null) {
      _json['sloMetadata'] = sloMetadata.toJson();
    }
    if (softwareVersions != null) {
      _json['softwareVersions'] = softwareVersions;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (tenantProjectId != null) {
      _json['tenantProjectId'] = tenantProjectId;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Maintenance schedule which is exposed to customer and potentially end user,
/// indicating published upcoming future maintenance schedule
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule {
  /// Can this scheduled update be rescheduled? By default, it's true and API
  /// needs to do explicitly check whether it's set, if it's set as false
  /// explicitly, it's false
  core.bool canReschedule;

  /// The scheduled end time for the maintenance.
  core.String endTime;

  /// The rollout management policy this maintenance schedule is associated
  /// with.
  ///
  /// When doing reschedule update request, the reschedule should be against
  /// this given policy.
  core.String rolloutManagementPolicy;

  /// schedule_deadline_time is the time deadline any schedule start time cannot
  /// go beyond, including reschedule.
  ///
  /// It's normally the initial schedule start time plus a week. If the
  /// reschedule type is next window, simply take this value as start time. If
  /// reschedule type is IMMEDIATELY or BY_TIME, current or selected time cannot
  /// go beyond this deadline.
  core.String scheduleDeadlineTime;

  /// The scheduled start time for the maintenance.
  core.String startTime;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.fromJson(
      core.Map _json) {
    if (_json.containsKey('canReschedule')) {
      canReschedule = _json['canReschedule'] as core.bool;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('rolloutManagementPolicy')) {
      rolloutManagementPolicy = _json['rolloutManagementPolicy'] as core.String;
    }
    if (_json.containsKey('scheduleDeadlineTime')) {
      scheduleDeadlineTime = _json['scheduleDeadlineTime'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (canReschedule != null) {
      _json['canReschedule'] = canReschedule;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (rolloutManagementPolicy != null) {
      _json['rolloutManagementPolicy'] = rolloutManagementPolicy;
    }
    if (scheduleDeadlineTime != null) {
      _json['scheduleDeadlineTime'] = scheduleDeadlineTime;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Maintenance settings associated with instance.
///
/// Allows service producers and end users to assign settings that controls
/// maintenance on this instance.
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings {
  /// Exclude instance from maintenance.
  ///
  /// When true, rollout service will not attempt maintenance on the instance.
  /// Rollout service will include the instance in reported rollout progress as
  /// not attempted.
  ///
  /// Optional.
  core.bool exclude;

  /// The MaintenancePolicies that have been attached to the instance.
  ///
  /// The key must be of the type name of the oneof policy name defined in
  /// MaintenancePolicy, and the embedded policy must define the same policy
  /// type. For complete details of MaintenancePolicy, please refer to
  /// go/cloud-saas-mw-ug. If only the name is needed (like in the deprecated
  /// Instance.maintenance_policy_names field) then only populate
  /// MaintenancePolicy.name.
  ///
  /// Optional.
  core.Map<core.String, MaintenancePolicy> maintenancePolicies;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings.fromJson(
      core.Map _json) {
    if (_json.containsKey('exclude')) {
      exclude = _json['exclude'] as core.bool;
    }
    if (_json.containsKey('maintenancePolicies')) {
      maintenancePolicies = (_json['maintenancePolicies'] as core.Map)
          .cast<core.String, core.Map>()
          .map(
            (key, item) => core.MapEntry(
              key,
              MaintenancePolicy.fromJson(
                  item as core.Map<core.String, core.dynamic>),
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exclude != null) {
      _json['exclude'] = exclude;
    }
    if (maintenancePolicies != null) {
      _json['maintenancePolicies'] = maintenancePolicies
          .map((key, item) => core.MapEntry(key, item.toJson()));
    }
    return _json;
  }
}

/// Node information for custom per-node SLO implementations.
///
/// SSA does not support per-node SLO, but producers can populate per-node
/// information in SloMetadata for custom precomputations. SSA Eligibility
/// Exporter will emit per-node metric based on this information.
class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata {
  /// By default node is eligible if instance is eligible.
  ///
  /// But individual node might be excluded from SLO by adding entry here. For
  /// semantic see SloMetadata.exclusions. If both instance and node level
  /// exclusions are present for time period, the node level's reason will be
  /// reported by Eligibility Exporter.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
      exclusions;

  /// The location of the node, if different from instance location.
  core.String location;

  /// The id of the node.
  ///
  /// This should be equal to SaasInstanceNode.node_id.
  core.String nodeId;

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('nodeId')) {
      nodeId = _json['nodeId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exclusions != null) {
      _json['exclusions'] = exclusions.map((value) => value.toJson()).toList();
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (nodeId != null) {
      _json['nodeId'] = nodeId;
    }
    return _json;
  }
}

/// Describes provisioned dataplane resources.
class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource {
  /// Type of the resource.
  ///
  /// This can be either a GCP resource or a custom one (e.g. another cloud
  /// provider's VM). For GCP compute resources use singular form of the names
  /// listed in GCP compute API documentation
  /// (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with
  /// 'compute-', for example: 'compute-instance', 'compute-disk',
  /// 'compute-autoscaler'.
  core.String resourceType;

  /// URL identifying the resource, e.g.
  /// "https://www.googleapis.com/compute/v1/projects/...)".
  core.String resourceUrl;

  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();

  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.fromJson(
      core.Map _json) {
    if (_json.containsKey('resourceType')) {
      resourceType = _json['resourceType'] as core.String;
    }
    if (_json.containsKey('resourceUrl')) {
      resourceUrl = _json['resourceUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceType != null) {
      _json['resourceType'] = resourceType;
    }
    if (resourceUrl != null) {
      _json['resourceUrl'] = resourceUrl;
    }
    return _json;
  }
}

/// SloEligibility is a tuple containing eligibility value: true if an instance
/// is eligible for SLO calculation or false if it should be excluded from all
/// SLO-related calculations along with a user-defined reason.
class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility {
  /// Whether an instance is eligible or ineligible.
  core.bool eligible;

  /// User-defined reason for the current value of instance eligibility.
  ///
  /// Usually, this can be directly mapped to the internal state. An empty
  /// reason is allowed.
  core.String reason;

  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();

  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility.fromJson(
      core.Map _json) {
    if (_json.containsKey('eligible')) {
      eligible = _json['eligible'] as core.bool;
    }
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (eligible != null) {
      _json['eligible'] = eligible;
    }
    if (reason != null) {
      _json['reason'] = reason;
    }
    return _json;
  }
}

/// SloExclusion represents an exclusion in SLI calculation applies to all SLOs.
class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion {
  /// Exclusion duration.
  ///
  /// No restrictions on the possible values. When an ongoing operation is
  /// taking longer than initially expected, an existing entry in the exclusion
  /// list can be updated by extending the duration. This is supported by the
  /// subsystem exporting eligibility data as long as such extension is
  /// committed at least 10 minutes before the original exclusion expiration -
  /// otherwise it is possible that there will be "gaps" in the exclusion
  /// application in the exported timeseries.
  core.String duration;

  /// Human-readable reason for the exclusion.
  ///
  /// This should be a static string (e.g. "Disruptive update in progress") and
  /// should not contain dynamically generated data (e.g. instance name). Can be
  /// left empty.
  core.String reason;

  /// Name of an SLI that this exclusion applies to.
  ///
  /// Can be left empty, signaling that the instance should be excluded from all
  /// SLIs defined in the service SLO configuration.
  core.String sliName;

  /// Start time of the exclusion.
  ///
  /// No alignment (e.g. to a full minute) needed.
  core.String startTime;

  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();

  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.fromJson(
      core.Map _json) {
    if (_json.containsKey('duration')) {
      duration = _json['duration'] as core.String;
    }
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
    if (_json.containsKey('sliName')) {
      sliName = _json['sliName'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (reason != null) {
      _json['reason'] = reason;
    }
    if (sliName != null) {
      _json['sliName'] = sliName;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// SloMetadata contains resources required for proper SLO classification of the
/// instance.
class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata {
  /// User-defined instance eligibility.
  ///
  /// Optional.
  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility eligibility;

  /// List of SLO exclusion windows.
  ///
  /// When multiple entries in the list match (matching the exclusion
  /// time-window against current time point) the exclusion reason used in the
  /// first matching entry will be published. It is not needed to include
  /// expired exclusion in this list, as only the currently applicable
  /// exclusions are taken into account by the eligibility exporting subsystem
  /// (the historical state of exclusions will be reflected in the historically
  /// produced timeseries regardless of the current state). This field can be
  /// used to mark the instance as temporary ineligible for the purpose of SLO
  /// calculation. For permanent instance SLO exclusion, use of custom instance
  /// eligibility is recommended. See 'eligibility' field below.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
      exclusions;

  /// List of nodes.
  ///
  /// Some producers need to use per-node metadata to calculate SLO. This field
  /// allows such producers to publish per-node SLO meta data, which will be
  /// consumed by SSA Eligibility Exporter and published in the form of per node
  /// metric to Monarch.
  ///
  /// Optional.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
      nodes;

  /// Name of the SLO tier the Instance belongs to.
  ///
  /// This name will be expected to match the tiers specified in the service SLO
  /// configuration. Field is mandatory and must not be empty.
  core.String tier;

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('eligibility')) {
      eligibility =
          GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
              .fromJson(
                  _json['eligibility'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nodes')) {
      nodes = (_json['nodes'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (eligibility != null) {
      _json['eligibility'] = eligibility.toJson();
    }
    if (exclusions != null) {
      _json['exclusions'] = exclusions.map((value) => value.toJson()).toList();
    }
    if (nodes != null) {
      _json['nodes'] = nodes.map((value) => value.toJson()).toList();
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    return _json;
  }
}

/// A Cloud Filestore instance.
class Instance {
  /// The time when the instance was created.
  ///
  /// Output only.
  core.String createTime;

  /// The description of the instance (2048 characters or less).
  core.String description;

  /// Server-specified ETag for the instance resource to prevent simultaneous
  /// updates from overwriting each other.
  core.String etag;

  /// File system shares on the instance.
  ///
  /// For this version, only a single file share is supported.
  core.List<FileShareConfig> fileShares;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String> labels;

  /// The resource name of the instance, in the format
  /// projects/{project}/locations/{location}/instances/{instance}.
  ///
  /// Output only.
  core.String name;

  /// VPC networks to which the instance is connected.
  ///
  /// For this version, only a single network is supported.
  core.List<NetworkConfig> networks;

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
  core.String state;

  /// Additional information about the instance state, if available.
  ///
  /// Output only.
  core.String statusMessage;

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
  core.String tier;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('fileShares')) {
      fileShares = (_json['fileShares'] as core.List)
          .map<FileShareConfig>((value) => FileShareConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('networks')) {
      networks = (_json['networks'] as core.List)
          .map<NetworkConfig>((value) => NetworkConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('statusMessage')) {
      statusMessage = _json['statusMessage'] as core.String;
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (fileShares != null) {
      _json['fileShares'] = fileShares.map((value) => value.toJson()).toList();
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (networks != null) {
      _json['networks'] = networks.map((value) => value.toJson()).toList();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (statusMessage != null) {
      _json['statusMessage'] = statusMessage;
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    return _json;
  }
}

/// ListBackupsResponse is the result of ListBackupsRequest.
class ListBackupsResponse {
  /// A list of backups in the project for the specified location.
  ///
  /// If the {location} value in the request is "-", the response contains a
  /// list of backups from all locations. If any location is unreachable, the
  /// response will only return backups in reachable locations and the
  /// "unreachable" field will be populated with a list of unreachable
  /// locations.
  core.List<Backup> backups;

  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String> unreachable;

  ListBackupsResponse();

  ListBackupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('backups')) {
      backups = (_json['backups'] as core.List)
          .map<Backup>((value) =>
              Backup.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backups != null) {
      _json['backups'] = backups.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// ListInstancesResponse is the result of ListInstancesRequest.
class ListInstancesResponse {
  /// A list of instances in the project for the specified location.
  ///
  /// If the {location} value in the request is "-", the response contains a
  /// list of instances from all locations. If any location is unreachable, the
  /// response will only return instances in reachable locations and the
  /// "unreachable" field will be populated with a list of unreachable
  /// locations.
  core.List<Instance> instances;

  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String> unreachable;

  ListInstancesResponse();

  ListInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('instances')) {
      instances = (_json['instances'] as core.List)
          .map<Instance>((value) =>
              Instance.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instances != null) {
      _json['instances'] = instances.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (locations != null) {
      _json['locations'] = locations.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (locationId != null) {
      _json['locationId'] = locationId;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Defines policies to service maintenance events.
class MaintenancePolicy {
  /// The time when the resource was created.
  ///
  /// Output only.
  core.String createTime;

  /// Description of what this policy is for.
  ///
  /// Create/Update methods return INVALID_ARGUMENT if the length is greater
  /// than 512.
  ///
  /// Optional.
  core.String description;

  /// Resource labels to represent user provided metadata.
  ///
  /// Each label is a key-value pair, where both the key and the value are
  /// arbitrary strings provided by the user.
  ///
  /// Optional.
  core.Map<core.String, core.String> labels;

  /// MaintenancePolicy name using the form:
  /// `projects/{project_id}/locations/{location_id}/maintenancePolicies/{maintenance_policy_id}`
  /// where {project_id} refers to a GCP consumer project ID, {location_id}
  /// refers to a GCP region/zone, {maintenance_policy_id} must be 1-63
  /// characters long and match the regular expression
  /// `[a-z0-9]([-a-z0-9]*[a-z0-9])?`.
  ///
  /// Required.
  core.String name;

  /// The state of the policy.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "READY" : Resource is ready to be used.
  /// - "DELETING" : Resource is being deleted. It can no longer be attached to
  /// instances.
  core.String state;

  /// Maintenance policy applicable to instance update.
  UpdatePolicy updatePolicy;

  /// The time when the resource was updated.
  ///
  /// Output only.
  core.String updateTime;

  MaintenancePolicy();

  MaintenancePolicy.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('updatePolicy')) {
      updatePolicy = UpdatePolicy.fromJson(
          _json['updatePolicy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updatePolicy != null) {
      _json['updatePolicy'] = updatePolicy.toJson();
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// MaintenanceWindow definition.
class MaintenanceWindow {
  /// Daily cycle.
  DailyCycle dailyCycle;

  /// Weekly cycle.
  WeeklyCycle weeklyCycle;

  MaintenanceWindow();

  MaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey('dailyCycle')) {
      dailyCycle = DailyCycle.fromJson(
          _json['dailyCycle'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('weeklyCycle')) {
      weeklyCycle = WeeklyCycle.fromJson(
          _json['weeklyCycle'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dailyCycle != null) {
      _json['dailyCycle'] = dailyCycle.toJson();
    }
    if (weeklyCycle != null) {
      _json['weeklyCycle'] = weeklyCycle.toJson();
    }
    return _json;
  }
}

/// Network configuration for the instance.
class NetworkConfig {
  /// IPv4 addresses in the format {octet 1}.{octet 2}.{octet 3}.{octet 4} or
  /// IPv6 addresses in the format {block 1}:{block 2}:{block 3}:{block
  /// 4}:{block 5}:{block 6}:{block 7}:{block 8}.
  ///
  /// Output only.
  core.List<core.String> ipAddresses;

  /// Internet protocol versions for which the instance has IP addresses
  /// assigned.
  ///
  /// For this version, only MODE_IPV4 is supported.
  core.List<core.String> modes;

  /// The name of the Google Compute Engine \[VPC
  /// network\](/compute/docs/networks-and-firewalls#networks) to which the
  /// instance is connected.
  core.String network;

  /// A /29 CIDR block in one of the
  /// [internal IP address ranges](https://www.arin.net/knowledge/address_filters.html)
  /// that identifies the range of IP addresses reserved for this instance.
  ///
  /// For example, 10.0.0.0/29 or 192.168.0.0/29. The range you specify can't
  /// overlap with either existing subnets or assigned IP address ranges for
  /// other Cloud Filestore instances in the selected VPC network.
  core.String reservedIpRange;

  NetworkConfig();

  NetworkConfig.fromJson(core.Map _json) {
    if (_json.containsKey('ipAddresses')) {
      ipAddresses = (_json['ipAddresses'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('modes')) {
      modes = (_json['modes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('network')) {
      network = _json['network'] as core.String;
    }
    if (_json.containsKey('reservedIpRange')) {
      reservedIpRange = _json['reservedIpRange'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ipAddresses != null) {
      _json['ipAddresses'] = ipAddresses;
    }
    if (modes != null) {
      _json['modes'] = modes;
    }
    if (network != null) {
      _json['network'] = network;
    }
    if (reservedIpRange != null) {
      _json['reservedIpRange'] = reservedIpRange;
    }
    return _json;
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
  core.String accessMode;

  /// An integer representing the anonymous group id with a default value of
  /// 65534.
  ///
  /// Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be
  /// returned if this field is specified for other squash_mode settings.
  core.String anonGid;

  /// An integer representing the anonymous user id with a default value of
  /// 65534.
  ///
  /// Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be
  /// returned if this field is specified for other squash_mode settings.
  core.String anonUid;

  /// List of either an IPv4 addresses in the format {octet 1}.{octet 2}.{octet
  /// 3}.{octet 4} or CIDR ranges in the format {octet 1}.{octet 2}.{octet
  /// 3}.{octet 4}/{mask size} which may mount the file share.
  ///
  /// Overlapping IP ranges are not allowed, both within and across
  /// NfsExportOptions. An error will be returned. The limit is 64 IP
  /// ranges/addresses for each FileShareConfig among all NfsExportOptions.
  core.List<core.String> ipRanges;

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
  core.String squashMode;

  NfsExportOptions();

  NfsExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('accessMode')) {
      accessMode = _json['accessMode'] as core.String;
    }
    if (_json.containsKey('anonGid')) {
      anonGid = _json['anonGid'] as core.String;
    }
    if (_json.containsKey('anonUid')) {
      anonUid = _json['anonUid'] as core.String;
    }
    if (_json.containsKey('ipRanges')) {
      ipRanges = (_json['ipRanges'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('squashMode')) {
      squashMode = _json['squashMode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accessMode != null) {
      _json['accessMode'] = accessMode;
    }
    if (anonGid != null) {
      _json['anonGid'] = anonGid;
    }
    if (anonUid != null) {
      _json['anonUid'] = anonUid;
    }
    if (ipRanges != null) {
      _json['ipRanges'] = ipRanges;
    }
    if (squashMode != null) {
      _json['squashMode'] = squashMode;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String name;

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
  core.Map<core.String, core.Object> response;

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
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
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
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// Represents the metadata of the long-running operation.
class OperationMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String apiVersion;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool cancelRequested;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String endTime;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String statusDetail;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String verb;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'] as core.String;
    }
    if (_json.containsKey('cancelRequested')) {
      cancelRequested = _json['cancelRequested'] as core.bool;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('statusDetail')) {
      statusDetail = _json['statusDetail'] as core.String;
    }
    if (_json.containsKey('target')) {
      target = _json['target'] as core.String;
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
    }
    if (cancelRequested != null) {
      _json['cancelRequested'] = cancelRequested;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (statusDetail != null) {
      _json['statusDetail'] = statusDetail;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (verb != null) {
      _json['verb'] = verb;
    }
    return _json;
  }
}

/// RestoreInstanceRequest restores an existing instances's file share from a
/// backup.
class RestoreInstanceRequest {
  /// Name of the file share in the Cloud Filestore instance that the backup is
  /// being restored to.
  ///
  /// Required.
  core.String fileShare;

  /// The resource name of the backup, in the format
  /// projects/{project_number}/locations/{location_id}/backups/{backup_id}.
  core.String sourceBackup;

  RestoreInstanceRequest();

  RestoreInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('fileShare')) {
      fileShare = _json['fileShare'] as core.String;
    }
    if (_json.containsKey('sourceBackup')) {
      sourceBackup = _json['sourceBackup'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fileShare != null) {
      _json['fileShare'] = fileShare;
    }
    if (sourceBackup != null) {
      _json['sourceBackup'] = sourceBackup;
    }
    return _json;
  }
}

/// Configure the schedule.
class Schedule {
  /// Allows to define schedule that runs specified day of the week.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String day;

  /// Duration of the time window, set by service producer.
  ///
  /// Output only.
  core.String duration;

  /// Time within the window to start the operations.
  TimeOfDay startTime;

  Schedule();

  Schedule.fromJson(core.Map _json) {
    if (_json.containsKey('day')) {
      day = _json['day'] as core.String;
    }
    if (_json.containsKey('duration')) {
      duration = _json['duration'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = TimeOfDay.fromJson(
          _json['startTime'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (day != null) {
      _json['day'] = day;
    }
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (startTime != null) {
      _json['startTime'] = startTime.toJson();
    }
    return _json;
  }
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
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
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
  core.int hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59.
  core.int minutes;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999.
  core.int nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  core.int seconds;

  TimeOfDay();

  TimeOfDay.fromJson(core.Map _json) {
    if (_json.containsKey('hours')) {
      hours = _json['hours'] as core.int;
    }
    if (_json.containsKey('minutes')) {
      minutes = _json['minutes'] as core.int;
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('seconds')) {
      seconds = _json['seconds'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (hours != null) {
      _json['hours'] = hours;
    }
    if (minutes != null) {
      _json['minutes'] = minutes;
    }
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (seconds != null) {
      _json['seconds'] = seconds;
    }
    return _json;
  }
}

/// Maintenance policy applicable to instance updates.
class UpdatePolicy {
  /// Relative scheduling channel applied to resource.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UPDATE_CHANNEL_UNSPECIFIED" : Unspecified channel.
  /// - "EARLIER" : Early channel within a customer project.
  /// - "LATER" : Later channel within a customer project.
  core.String channel;

  /// Deny Maintenance Period that is applied to resource to indicate when
  /// maintenance is forbidden.
  ///
  /// User can specify zero or more non-overlapping deny periods. For V1,
  /// Maximum number of deny_maintenance_periods is expected to be one.
  core.List<DenyMaintenancePeriod> denyMaintenancePeriods;

  /// Maintenance window that is applied to resources covered by this policy.
  ///
  /// Optional.
  MaintenanceWindow window;

  UpdatePolicy();

  UpdatePolicy.fromJson(core.Map _json) {
    if (_json.containsKey('channel')) {
      channel = _json['channel'] as core.String;
    }
    if (_json.containsKey('denyMaintenancePeriods')) {
      denyMaintenancePeriods = (_json['denyMaintenancePeriods'] as core.List)
          .map<DenyMaintenancePeriod>((value) => DenyMaintenancePeriod.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('window')) {
      window = MaintenanceWindow.fromJson(
          _json['window'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channel != null) {
      _json['channel'] = channel;
    }
    if (denyMaintenancePeriods != null) {
      _json['denyMaintenancePeriods'] =
          denyMaintenancePeriods.map((value) => value.toJson()).toList();
    }
    if (window != null) {
      _json['window'] = window.toJson();
    }
    return _json;
  }
}

/// Time window specified for weekly operations.
class WeeklyCycle {
  /// User can specify multiple windows in a week.
  ///
  /// Minimum of 1 window.
  core.List<Schedule> schedule;

  WeeklyCycle();

  WeeklyCycle.fromJson(core.Map _json) {
    if (_json.containsKey('schedule')) {
      schedule = (_json['schedule'] as core.List)
          .map<Schedule>((value) =>
              Schedule.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (schedule != null) {
      _json['schedule'] = schedule.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}
