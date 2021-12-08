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

/// Google Cloud Memorystore for Redis API - v1
///
/// Creates and manages Redis instances on the Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/memorystore/docs/redis/>
///
/// Create an instance of [CloudRedisApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInstancesResource]
///     - [ProjectsLocationsOperationsResource]
library redis.v1;

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

/// Creates and manages Redis instances on the Google Cloud Platform.
class CloudRedisApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudRedisApi(http.Client client,
      {core.String rootUrl = 'https://redis.googleapis.com/',
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
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

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Redis instance based on the specified tier and memory size.
  ///
  /// By default, the instance is accessible from the project's
  /// [default network](https://cloud.google.com/vpc/docs/vpc). The creation is
  /// executed asynchronously and callers may check the returned operation to
  /// track its progress. Once the operation is completed the Redis instance
  /// will be fully functional. Completed longrunning.Operation will contain the
  /// new instance object in the response field. The returned operation is
  /// automatically deleted after a few hours, so there is no need to call
  /// DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the instance location using the
  /// form: `projects/{project_id}/locations/{location_id}` where `location_id`
  /// refers to a GCP region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [instanceId] - Required. The logical name of the Redis instance in the
  /// customer project with the following restrictions: * Must contain only
  /// lowercase letters, numbers, and hyphens. * Must start with a letter. *
  /// Must be between 1-40 characters. * Must end with a number or a letter. *
  /// Must be unique within the customer project / location
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

  /// Deletes a specific Redis instance.
  ///
  /// Instance stops serving and data is deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
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

  /// Export Redis instance data into a Redis RDB format file in Cloud Storage.
  ///
  /// Redis will continue serving during this operation. The returned operation
  /// is automatically deleted after a few hours, so there is no need to call
  /// DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
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
  async.Future<Operation> export(
    ExportInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':export';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Initiates a failover of the primary node to current replica node for a
  /// specific STANDARD tier Cloud Memorystore for Redis instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
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
  async.Future<Operation> failover(
    FailoverInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':failover';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific Redis instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
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

  /// Gets the AUTH string for a Redis instance.
  ///
  /// If AUTH is not enabled for the instance the response will be empty. This
  /// information is not included in the details returned to GetInstance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstanceAuthString].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstanceAuthString> getAuthString(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/authString';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InstanceAuthString.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Import a Redis RDB snapshot file from Cloud Storage into a Redis instance.
  ///
  /// Redis may stop serving during this operation. Instance state will be
  /// IMPORTING for entire operation. When complete, the instance will contain
  /// only data from the imported file. The returned operation is automatically
  /// deleted after a few hours, so there is no need to call DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
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
  async.Future<Operation> import(
    ImportInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Redis instances owned by a project in either the specified
  /// location (region) or all locations.
  ///
  /// The location should have the following format: *
  /// `projects/{project_id}/locations/{location_id}` If `location_id` is
  /// specified as `-` (wildcard), then all regions available to the project are
  /// queried, and the results are aggregated.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the instance location using the
  /// form: `projects/{project_id}/locations/{location_id}` where `location_id`
  /// refers to a GCP region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. If not specified, a
  /// default value of 1000 will be used by the service. Regardless of the
  /// page_size value, the response may include a partial list and a caller
  /// should only rely on response's `next_page_token` to determine if there are
  /// more instances left to be queried.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous
  /// ListInstances request, if any.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
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

  /// Updates the metadata and configuration of a specific Redis instance.
  ///
  /// Completed longrunning.Operation will contain the new instance object in
  /// the response field. The returned operation is automatically deleted after
  /// a few hours, so there is no need to call DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique name of the resource in this scope including
  /// project and location using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// Note: Redis instances are managed and addressed at regional level so
  /// location_id here refers to a GCP region; however, users may choose which
  /// specific zone (or collection of zones for cross-zone instances) an
  /// instance should be provisioned in. Refer to location_id and
  /// alternative_location_id fields for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include these fields from Instance: * `displayName` * `labels` *
  /// `memorySizeGb` * `redisConfig` * `replica_count`
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

  /// Reschedule maintenance for a given instance in a given project and
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
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
  async.Future<Operation> rescheduleMaintenance(
    RescheduleMaintenanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$name') + ':rescheduleMaintenance';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Upgrades Redis instance to the newer Redis version specified in the
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
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
  async.Future<Operation> upgrade(
    UpgradeInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':upgrade';

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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// Request for Export.
class ExportInstanceRequest {
  /// Specify data to be exported.
  ///
  /// Required.
  OutputConfig? outputConfig;

  ExportInstanceRequest({
    this.outputConfig,
  });

  ExportInstanceRequest.fromJson(core.Map _json)
      : this(
          outputConfig: _json.containsKey('outputConfig')
              ? OutputConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputConfig != null) 'outputConfig': outputConfig!,
      };
}

/// Request for Failover.
class FailoverInstanceRequest {
  /// Available data protection modes that the user can choose.
  ///
  /// If it's unspecified, data protection mode will be LIMITED_DATA_LOSS by
  /// default.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_PROTECTION_MODE_UNSPECIFIED" : Defaults to LIMITED_DATA_LOSS if a
  /// data protection mode is not specified.
  /// - "LIMITED_DATA_LOSS" : Instance failover will be protected with data loss
  /// control. More specifically, the failover will only be performed if the
  /// current replication offset diff between primary and replica is under a
  /// certain threshold.
  /// - "FORCE_DATA_LOSS" : Instance failover will be performed without data
  /// loss control.
  core.String? dataProtectionMode;

  FailoverInstanceRequest({
    this.dataProtectionMode,
  });

  FailoverInstanceRequest.fromJson(core.Map _json)
      : this(
          dataProtectionMode: _json.containsKey('dataProtectionMode')
              ? _json['dataProtectionMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataProtectionMode != null)
          'dataProtectionMode': dataProtectionMode!,
      };
}

/// The Cloud Storage location for the output content
class GcsDestination {
  /// Data destination URI (e.g. 'gs://my_bucket/my_object').
  ///
  /// Existing files will be overwritten.
  ///
  /// Required.
  core.String? uri;

  GcsDestination({
    this.uri,
  });

  GcsDestination.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// The Cloud Storage location for the input content
class GcsSource {
  /// Source data URI.
  ///
  /// (e.g. 'gs://my_bucket/my_object').
  ///
  /// Required.
  core.String? uri;

  GcsSource({
    this.uri,
  });

  GcsSource.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Request for Import.
class ImportInstanceRequest {
  /// Specify data to be imported.
  ///
  /// Required.
  InputConfig? inputConfig;

  ImportInstanceRequest({
    this.inputConfig,
  });

  ImportInstanceRequest.fromJson(core.Map _json)
      : this(
          inputConfig: _json.containsKey('inputConfig')
              ? InputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputConfig != null) 'inputConfig': inputConfig!,
      };
}

/// The input content
class InputConfig {
  /// Google Cloud Storage location where input content is located.
  GcsSource? gcsSource;

  InputConfig({
    this.gcsSource,
  });

  InputConfig.fromJson(core.Map _json)
      : this(
          gcsSource: _json.containsKey('gcsSource')
              ? GcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// A Google Cloud Redis instance.
class Instance {
  /// If specified, at least one node will be provisioned in this zone in
  /// addition to the zone specified in location_id.
  ///
  /// Only applicable to standard tier. If provided, it must be a different zone
  /// from the one provided in \[location_id\]. Additional nodes beyond the
  /// first 2 will be placed in zones selected by the service.
  ///
  /// Optional.
  core.String? alternativeLocationId;

  /// Indicates whether OSS Redis AUTH is enabled for the instance.
  ///
  /// If set to "true" AUTH is enabled on the instance. Default value is "false"
  /// meaning AUTH is disabled.
  ///
  /// Optional.
  core.bool? authEnabled;

  /// The full name of the Google Compute Engine
  /// [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is
  /// connected.
  ///
  /// If left unspecified, the `default` network will be used.
  ///
  /// Optional.
  core.String? authorizedNetwork;

  /// The network connect mode of the Redis instance.
  ///
  /// If not provided, the connect mode defaults to DIRECT_PEERING.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONNECT_MODE_UNSPECIFIED" : Not set.
  /// - "DIRECT_PEERING" : Connect via direct peering to the Memorystore for
  /// Redis hosted service.
  /// - "PRIVATE_SERVICE_ACCESS" : Connect your Memorystore for Redis instance
  /// using Private Service Access. Private services access provides an IP
  /// address range for multiple Google Cloud services, including Memorystore.
  core.String? connectMode;

  /// The time the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The current zone where the Redis primary node is located.
  ///
  /// In basic tier, this will always be the same as \[location_id\]. In
  /// standard tier, this can be the zone of any node in the instance.
  ///
  /// Output only.
  core.String? currentLocationId;

  /// An arbitrary and optional user-provided name for the instance.
  core.String? displayName;

  /// Hostname or IP address of the exposed Redis endpoint used by clients to
  /// connect to the service.
  ///
  /// Output only.
  core.String? host;

  /// Resource labels to represent user provided metadata
  core.Map<core.String, core.String>? labels;

  /// The zone where the instance will be provisioned.
  ///
  /// If not provided, the service will choose a zone from the specified region
  /// for the instance. For standard tier, additional nodes will be added across
  /// multiple zones for protection against zonal failures. If specified, at
  /// least one node will be provisioned in this zone.
  ///
  /// Optional.
  core.String? locationId;

  /// The maintenance policy for the instance.
  ///
  /// If not provided, maintenance events can be performed at any time.
  ///
  /// Optional.
  MaintenancePolicy? maintenancePolicy;

  /// Date and time of upcoming maintenance events which have been scheduled.
  ///
  /// Output only.
  MaintenanceSchedule? maintenanceSchedule;

  /// Redis memory size in GiB.
  ///
  /// Required.
  core.int? memorySizeGb;

  /// Unique name of the resource in this scope including project and location
  /// using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// Note: Redis instances are managed and addressed at regional level so
  /// location_id here refers to a GCP region; however, users may choose which
  /// specific zone (or collection of zones for cross-zone instances) an
  /// instance should be provisioned in.
  ///
  /// Refer to location_id and alternative_location_id fields for more details.
  ///
  /// Required.
  core.String? name;

  /// Info per node.
  ///
  /// Output only.
  core.List<NodeInfo>? nodes;

  /// Persistence configuration parameters
  ///
  /// Optional.
  PersistenceConfig? persistenceConfig;

  /// Cloud IAM identity used by import / export operations to transfer data
  /// to/from Cloud Storage.
  ///
  /// Format is "serviceAccount:". The value may change over time for a given
  /// instance so should be checked before each import/export operation.
  ///
  /// Output only.
  core.String? persistenceIamIdentity;

  /// The port number of the exposed Redis endpoint.
  ///
  /// Output only.
  core.int? port;

  /// Hostname or IP address of the exposed readonly Redis endpoint.
  ///
  /// Standard tier only. Targets all healthy replica nodes in instance.
  /// Replication is asynchronous and replica nodes will exhibit some lag behind
  /// the primary. Write requests must target 'host'.
  ///
  /// Output only.
  core.String? readEndpoint;

  /// The port number of the exposed readonly redis endpoint.
  ///
  /// Standard tier only. Write requests should target 'port'.
  ///
  /// Output only.
  core.int? readEndpointPort;

  /// Read replica mode.
  ///
  /// Can only be specified when trying to create the instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "READ_REPLICAS_MODE_UNSPECIFIED" : If not set, Memorystore Redis backend
  /// will default to READ_REPLICAS_DISABLED.
  /// - "READ_REPLICAS_DISABLED" : If disabled, read endpoint will not be
  /// provided and the instance cannot scale up or down the number of replicas.
  /// - "READ_REPLICAS_ENABLED" : If enabled, read endpoint will be provided and
  /// the instance can scale up and down the number of replicas. Not valid for
  /// basic tier.
  core.String? readReplicasMode;

  /// Redis configuration parameters, according to
  /// http://redis.io/topics/config.
  ///
  /// Currently, the only supported parameters are: Redis version 3.2 and newer:
  /// * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: *
  /// activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis
  /// version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  ///
  /// Optional.
  core.Map<core.String, core.String>? redisConfigs;

  /// The version of Redis software.
  ///
  /// If not provided, latest supported version will be used. Currently, the
  /// supported values are: * `REDIS_3_2` for Redis 3.2 compatibility *
  /// `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis
  /// 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  ///
  /// Optional.
  core.String? redisVersion;

  /// The number of replica nodes.
  ///
  /// The valid range for the Standard Tier with read replicas enabled is
  /// \[1-5\] and defaults to 2. If read replicas are not enabled for a Standard
  /// Tier instance, the only valid value is 1 and the default is 1. The valid
  /// value for basic tier is 0 and the default is also 0.
  ///
  /// Optional.
  core.int? replicaCount;

  /// For DIRECT_PEERING mode, the CIDR range of internal addresses that are
  /// reserved for this instance.
  ///
  /// Range must be unique and non-overlapping with existing subnets in an
  /// authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one
  /// allocated IP address ranges associated with this private service access
  /// connection. If not provided, the service will choose an unused /29 block,
  /// for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the
  /// default block size is /28.
  ///
  /// Optional.
  core.String? reservedIpRange;

  /// List of server CA certificates for the instance.
  ///
  /// Output only.
  core.List<TlsCertificate>? serverCaCerts;

  /// The current state of this instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : Redis instance is being created.
  /// - "READY" : Redis instance has been created and is fully usable.
  /// - "UPDATING" : Redis instance configuration is being updated. Certain
  /// kinds of updates may cause the instance to become unusable while the
  /// update is in progress.
  /// - "DELETING" : Redis instance is being deleted.
  /// - "REPAIRING" : Redis instance is being repaired and may be unusable.
  /// - "MAINTENANCE" : Maintenance is being performed on this Redis instance.
  /// - "IMPORTING" : Redis instance is importing data (availability may be
  /// affected).
  /// - "FAILING_OVER" : Redis instance is failing over (availability may be
  /// affected).
  core.String? state;

  /// Additional information about the current status of this instance, if
  /// available.
  ///
  /// Output only.
  core.String? statusMessage;

  /// The service tier of the instance.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not set.
  /// - "BASIC" : BASIC tier: standalone instance
  /// - "STANDARD_HA" : STANDARD_HA tier: highly available primary/replica
  /// instances
  core.String? tier;

  /// The TLS mode of the Redis instance.
  ///
  /// If not provided, TLS is disabled for the instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TRANSIT_ENCRYPTION_MODE_UNSPECIFIED" : Not set.
  /// - "SERVER_AUTHENTICATION" : Client to Server traffic encryption enabled
  /// with server authentication.
  /// - "DISABLED" : TLS is disabled for the instance.
  core.String? transitEncryptionMode;

  Instance({
    this.alternativeLocationId,
    this.authEnabled,
    this.authorizedNetwork,
    this.connectMode,
    this.createTime,
    this.currentLocationId,
    this.displayName,
    this.host,
    this.labels,
    this.locationId,
    this.maintenancePolicy,
    this.maintenanceSchedule,
    this.memorySizeGb,
    this.name,
    this.nodes,
    this.persistenceConfig,
    this.persistenceIamIdentity,
    this.port,
    this.readEndpoint,
    this.readEndpointPort,
    this.readReplicasMode,
    this.redisConfigs,
    this.redisVersion,
    this.replicaCount,
    this.reservedIpRange,
    this.serverCaCerts,
    this.state,
    this.statusMessage,
    this.tier,
    this.transitEncryptionMode,
  });

  Instance.fromJson(core.Map _json)
      : this(
          alternativeLocationId: _json.containsKey('alternativeLocationId')
              ? _json['alternativeLocationId'] as core.String
              : null,
          authEnabled: _json.containsKey('authEnabled')
              ? _json['authEnabled'] as core.bool
              : null,
          authorizedNetwork: _json.containsKey('authorizedNetwork')
              ? _json['authorizedNetwork'] as core.String
              : null,
          connectMode: _json.containsKey('connectMode')
              ? _json['connectMode'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          currentLocationId: _json.containsKey('currentLocationId')
              ? _json['currentLocationId'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          host: _json.containsKey('host') ? _json['host'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          maintenancePolicy: _json.containsKey('maintenancePolicy')
              ? MaintenancePolicy.fromJson(_json['maintenancePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maintenanceSchedule: _json.containsKey('maintenanceSchedule')
              ? MaintenanceSchedule.fromJson(_json['maintenanceSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          memorySizeGb: _json.containsKey('memorySizeGb')
              ? _json['memorySizeGb'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nodes: _json.containsKey('nodes')
              ? (_json['nodes'] as core.List)
                  .map((value) => NodeInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          persistenceConfig: _json.containsKey('persistenceConfig')
              ? PersistenceConfig.fromJson(_json['persistenceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          persistenceIamIdentity: _json.containsKey('persistenceIamIdentity')
              ? _json['persistenceIamIdentity'] as core.String
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.int : null,
          readEndpoint: _json.containsKey('readEndpoint')
              ? _json['readEndpoint'] as core.String
              : null,
          readEndpointPort: _json.containsKey('readEndpointPort')
              ? _json['readEndpointPort'] as core.int
              : null,
          readReplicasMode: _json.containsKey('readReplicasMode')
              ? _json['readReplicasMode'] as core.String
              : null,
          redisConfigs: _json.containsKey('redisConfigs')
              ? (_json['redisConfigs'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          redisVersion: _json.containsKey('redisVersion')
              ? _json['redisVersion'] as core.String
              : null,
          replicaCount: _json.containsKey('replicaCount')
              ? _json['replicaCount'] as core.int
              : null,
          reservedIpRange: _json.containsKey('reservedIpRange')
              ? _json['reservedIpRange'] as core.String
              : null,
          serverCaCerts: _json.containsKey('serverCaCerts')
              ? (_json['serverCaCerts'] as core.List)
                  .map((value) => TlsCertificate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.String : null,
          transitEncryptionMode: _json.containsKey('transitEncryptionMode')
              ? _json['transitEncryptionMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternativeLocationId != null)
          'alternativeLocationId': alternativeLocationId!,
        if (authEnabled != null) 'authEnabled': authEnabled!,
        if (authorizedNetwork != null) 'authorizedNetwork': authorizedNetwork!,
        if (connectMode != null) 'connectMode': connectMode!,
        if (createTime != null) 'createTime': createTime!,
        if (currentLocationId != null) 'currentLocationId': currentLocationId!,
        if (displayName != null) 'displayName': displayName!,
        if (host != null) 'host': host!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (maintenancePolicy != null) 'maintenancePolicy': maintenancePolicy!,
        if (maintenanceSchedule != null)
          'maintenanceSchedule': maintenanceSchedule!,
        if (memorySizeGb != null) 'memorySizeGb': memorySizeGb!,
        if (name != null) 'name': name!,
        if (nodes != null) 'nodes': nodes!,
        if (persistenceConfig != null) 'persistenceConfig': persistenceConfig!,
        if (persistenceIamIdentity != null)
          'persistenceIamIdentity': persistenceIamIdentity!,
        if (port != null) 'port': port!,
        if (readEndpoint != null) 'readEndpoint': readEndpoint!,
        if (readEndpointPort != null) 'readEndpointPort': readEndpointPort!,
        if (readReplicasMode != null) 'readReplicasMode': readReplicasMode!,
        if (redisConfigs != null) 'redisConfigs': redisConfigs!,
        if (redisVersion != null) 'redisVersion': redisVersion!,
        if (replicaCount != null) 'replicaCount': replicaCount!,
        if (reservedIpRange != null) 'reservedIpRange': reservedIpRange!,
        if (serverCaCerts != null) 'serverCaCerts': serverCaCerts!,
        if (state != null) 'state': state!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (tier != null) 'tier': tier!,
        if (transitEncryptionMode != null)
          'transitEncryptionMode': transitEncryptionMode!,
      };
}

/// Instance AUTH string details.
class InstanceAuthString {
  /// AUTH string set on the instance.
  core.String? authString;

  InstanceAuthString({
    this.authString,
  });

  InstanceAuthString.fromJson(core.Map _json)
      : this(
          authString: _json.containsKey('authString')
              ? _json['authString'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authString != null) 'authString': authString!,
      };
}

/// Response for ListInstances.
class ListInstancesResponse {
  /// A list of Redis instances in the project in the specified location, or
  /// across all locations.
  ///
  /// If the `location_id` in the parent field of the request is "-", all
  /// regions available to the project are queried, and the results aggregated.
  /// If in such an aggregated query a location is unavailable, a placeholder
  /// Redis entry is included in the response with the `name` field set to a
  /// value of the form
  /// `projects/{project_id}/locations/{location_id}/instances/`- and the
  /// `status` field set to ERROR and `status_message` field set to "location
  /// not available for ListInstances".
  core.List<Instance>? instances;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
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

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// Resource ID for the region.
  ///
  /// For example: "us-east1".
  core.String? locationId;

  /// The set of available zones in the location.
  ///
  /// The map is keyed by the lowercase ID of each zone, as defined by Compute
  /// Engine. These keys can be specified in `location_id` or
  /// `alternative_location_id` fields when creating a Redis instance.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Full resource name for the region.
  ///
  /// For example: "projects/example-project/locations/us-east1".
  core.String? name;

  Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  Location.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Maintenance policy for an instance.
class MaintenancePolicy {
  /// The time when the policy was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of what this policy is for.
  ///
  /// Create/Update methods return INVALID_ARGUMENT if the length is greater
  /// than 512.
  ///
  /// Optional.
  core.String? description;

  /// The time when the policy was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Maintenance window that is applied to resources covered by this policy.
  ///
  /// Minimum 1. For the current version, the maximum number of weekly_window is
  /// expected to be one.
  ///
  /// Optional.
  core.List<WeeklyMaintenanceWindow>? weeklyMaintenanceWindow;

  MaintenancePolicy({
    this.createTime,
    this.description,
    this.updateTime,
    this.weeklyMaintenanceWindow,
  });

  MaintenancePolicy.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          weeklyMaintenanceWindow: _json.containsKey('weeklyMaintenanceWindow')
              ? (_json['weeklyMaintenanceWindow'] as core.List)
                  .map((value) => WeeklyMaintenanceWindow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (weeklyMaintenanceWindow != null)
          'weeklyMaintenanceWindow': weeklyMaintenanceWindow!,
      };
}

/// Upcoming maintenance schedule.
///
/// If no maintenance is scheduled, fields are not populated.
class MaintenanceSchedule {
  /// If the scheduled maintenance can be rescheduled, default is true.
  core.bool? canReschedule;

  /// The end time of any upcoming scheduled maintenance for this instance.
  ///
  /// Output only.
  core.String? endTime;

  /// The deadline that the maintenance schedule start time can not go beyond,
  /// including reschedule.
  ///
  /// Output only.
  core.String? scheduleDeadlineTime;

  /// The start time of any upcoming scheduled maintenance for this instance.
  ///
  /// Output only.
  core.String? startTime;

  MaintenanceSchedule({
    this.canReschedule,
    this.endTime,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  MaintenanceSchedule.fromJson(core.Map _json)
      : this(
          canReschedule: _json.containsKey('canReschedule')
              ? _json['canReschedule'] as core.bool
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          scheduleDeadlineTime: _json.containsKey('scheduleDeadlineTime')
              ? _json['scheduleDeadlineTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canReschedule != null) 'canReschedule': canReschedule!,
        if (endTime != null) 'endTime': endTime!,
        if (scheduleDeadlineTime != null)
          'scheduleDeadlineTime': scheduleDeadlineTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Node specific properties.
class NodeInfo {
  /// Node identifying string.
  ///
  /// e.g. 'node-0', 'node-1'
  ///
  /// Output only.
  core.String? id;

  /// Location of the node.
  ///
  /// Output only.
  core.String? zone;

  NodeInfo({
    this.id,
    this.zone,
  });

  NodeInfo.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (zone != null) 'zone': zone!,
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

  /// { `createTime`: The time the operation was created.
  ///
  /// `endTime`: The time the operation finished running. `target`:
  /// Server-defined resource path for the target of the operation. `verb`: Name
  /// of the verb executed by the operation. `statusDetail`: Human-readable
  /// status of the operation, if any. `cancelRequested`: Identifies whether the
  /// user has requested cancellation of the operation. Operations that have
  /// successfully been cancelled have Operation.error value with a
  /// google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
  /// `apiVersion`: API version used to start the operation. }
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

/// The output content
class OutputConfig {
  /// Google Cloud Storage destination for output content.
  GcsDestination? gcsDestination;

  OutputConfig({
    this.gcsDestination,
  });

  OutputConfig.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? GcsDestination.fromJson(_json['gcsDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
      };
}

/// Configuration of the persistence functionality.
class PersistenceConfig {
  /// Controls whether Persistence features are enabled.
  ///
  /// If not provided, the existing value will be used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PERSISTENCE_MODE_UNSPECIFIED" : Not set.
  /// - "DISABLED" : Persistence is disabled for the instance, and any existing
  /// snapshots are deleted.
  /// - "RDB" : RDB based Persistence is enabled.
  core.String? persistenceMode;

  /// The next time that a snapshot attempt is scheduled to occur.
  ///
  /// Output only.
  core.String? rdbNextSnapshotTime;

  /// Period between RDB snapshots.
  ///
  /// Snapshots will be attempted every period starting from the provided
  /// snapshot start time. For example, a start time of 01/01/2033 06:45 and
  /// SIX_HOURS snapshot period will do nothing until 01/01/2033, and then
  /// trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next
  /// day, and so on. If not provided, TWENTY_FOUR_HOURS will be used as
  /// default.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SNAPSHOT_PERIOD_UNSPECIFIED" : Not set.
  /// - "ONE_HOUR" : Snapshot every 1 hour.
  /// - "SIX_HOURS" : Snapshot every 6 hours.
  /// - "TWELVE_HOURS" : Snapshot every 12 hours.
  /// - "TWENTY_FOUR_HOURS" : Snapshot every 24 horus.
  core.String? rdbSnapshotPeriod;

  /// Date and time that the first snapshot was/will be attempted, and to which
  /// future snapshots will be aligned.
  ///
  /// If not provided, the current time will be used.
  ///
  /// Optional.
  core.String? rdbSnapshotStartTime;

  PersistenceConfig({
    this.persistenceMode,
    this.rdbNextSnapshotTime,
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  PersistenceConfig.fromJson(core.Map _json)
      : this(
          persistenceMode: _json.containsKey('persistenceMode')
              ? _json['persistenceMode'] as core.String
              : null,
          rdbNextSnapshotTime: _json.containsKey('rdbNextSnapshotTime')
              ? _json['rdbNextSnapshotTime'] as core.String
              : null,
          rdbSnapshotPeriod: _json.containsKey('rdbSnapshotPeriod')
              ? _json['rdbSnapshotPeriod'] as core.String
              : null,
          rdbSnapshotStartTime: _json.containsKey('rdbSnapshotStartTime')
              ? _json['rdbSnapshotStartTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (persistenceMode != null) 'persistenceMode': persistenceMode!,
        if (rdbNextSnapshotTime != null)
          'rdbNextSnapshotTime': rdbNextSnapshotTime!,
        if (rdbSnapshotPeriod != null) 'rdbSnapshotPeriod': rdbSnapshotPeriod!,
        if (rdbSnapshotStartTime != null)
          'rdbSnapshotStartTime': rdbSnapshotStartTime!,
      };
}

/// Request for RescheduleMaintenance.
class RescheduleMaintenanceRequest {
  /// If reschedule type is SPECIFIC_TIME, must set up schedule_time as well.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESCHEDULE_TYPE_UNSPECIFIED" : Not set.
  /// - "IMMEDIATE" : If the user wants to schedule the maintenance to happen
  /// now.
  /// - "NEXT_AVAILABLE_WINDOW" : If the user wants to use the existing
  /// maintenance policy to find the next available window.
  /// - "SPECIFIC_TIME" : If the user wants to reschedule the maintenance to a
  /// specific time.
  core.String? rescheduleType;

  /// Timestamp when the maintenance shall be rescheduled to if
  /// reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example
  /// `2012-11-15T16:19:00.094Z`.
  ///
  /// Optional.
  core.String? scheduleTime;

  RescheduleMaintenanceRequest({
    this.rescheduleType,
    this.scheduleTime,
  });

  RescheduleMaintenanceRequest.fromJson(core.Map _json)
      : this(
          rescheduleType: _json.containsKey('rescheduleType')
              ? _json['rescheduleType'] as core.String
              : null,
          scheduleTime: _json.containsKey('scheduleTime')
              ? _json['scheduleTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rescheduleType != null) 'rescheduleType': rescheduleType!,
        if (scheduleTime != null) 'scheduleTime': scheduleTime!,
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

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// TlsCertificate Resource
class TlsCertificate {
  /// PEM representation.
  core.String? cert;

  /// The time when the certificate was created in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2020-05-18T00:00:00.094Z`.
  ///
  /// Output only.
  core.String? createTime;

  /// The time when the certificate expires in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2020-05-18T00:00:00.094Z`.
  ///
  /// Output only.
  core.String? expireTime;

  /// Serial number, as extracted from the certificate.
  core.String? serialNumber;

  /// Sha1 Fingerprint of the certificate.
  core.String? sha1Fingerprint;

  TlsCertificate({
    this.cert,
    this.createTime,
    this.expireTime,
    this.serialNumber,
    this.sha1Fingerprint,
  });

  TlsCertificate.fromJson(core.Map _json)
      : this(
          cert: _json.containsKey('cert') ? _json['cert'] as core.String : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          serialNumber: _json.containsKey('serialNumber')
              ? _json['serialNumber'] as core.String
              : null,
          sha1Fingerprint: _json.containsKey('sha1Fingerprint')
              ? _json['sha1Fingerprint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cert != null) 'cert': cert!,
        if (createTime != null) 'createTime': createTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (sha1Fingerprint != null) 'sha1Fingerprint': sha1Fingerprint!,
      };
}

/// Request for UpgradeInstance.
class UpgradeInstanceRequest {
  /// Specifies the target version of Redis software to upgrade to.
  ///
  /// Required.
  core.String? redisVersion;

  UpgradeInstanceRequest({
    this.redisVersion,
  });

  UpgradeInstanceRequest.fromJson(core.Map _json)
      : this(
          redisVersion: _json.containsKey('redisVersion')
              ? _json['redisVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (redisVersion != null) 'redisVersion': redisVersion!,
      };
}

/// Time window in which disruptive maintenance updates occur.
///
/// Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindow {
  /// The day of week that maintenance updates occur.
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
  core.String? day;

  /// Duration of the maintenance window.
  ///
  /// The current window is fixed at 1 hour.
  ///
  /// Output only.
  core.String? duration;

  /// Start time of the window in UTC time.
  ///
  /// Required.
  TimeOfDay? startTime;

  WeeklyMaintenanceWindow({
    this.day,
    this.duration,
    this.startTime,
  });

  WeeklyMaintenanceWindow.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.String : null,
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  _json['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (duration != null) 'duration': duration!,
        if (startTime != null) 'startTime': startTime!,
      };
}
