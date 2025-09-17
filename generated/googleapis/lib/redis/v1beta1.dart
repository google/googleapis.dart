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

/// Google Cloud Memorystore for Redis API - v1beta1
///
/// Creates and manages Redis instances on the Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/memorystore/docs/redis/>
///
/// Create an instance of [CloudRedisApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBackupCollectionsResource]
///       - [ProjectsLocationsBackupCollectionsBackupsResource]
///     - [ProjectsLocationsClustersResource]
///     - [ProjectsLocationsInstancesResource]
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

/// Creates and manages Redis instances on the Google Cloud Platform.
class CloudRedisApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudRedisApi(
    http.Client client, {
    core.String rootUrl = 'https://redis.googleapis.com/',
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

  ProjectsLocationsBackupCollectionsResource get backupCollections =>
      ProjectsLocationsBackupCollectionsResource(_requester);
  ProjectsLocationsClustersResource get clusters =>
      ProjectsLocationsClustersResource(_requester);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/locations';

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

class ProjectsLocationsBackupCollectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupCollectionsBackupsResource get backups =>
      ProjectsLocationsBackupCollectionsBackupsResource(_requester);

  ProjectsLocationsBackupCollectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a backup collection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis backupCollection resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/backupCollections/{backup_collection_id}`
  /// where `location_id` refers to a Google Cloud region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupCollections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BackupCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BackupCollection> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BackupCollection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all backup collections owned by a consumer project in either the
  /// specified location (region) or all locations.
  ///
  /// If `location_id` is specified as `-` (wildcard), then all regions
  /// available to the project are queried, and the results are aggregated.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the backupCollection location
  /// using the form: `projects/{project_id}/locations/{location_id}` where
  /// `location_id` refers to a Google Cloud region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 1000 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's `next_page_token` to determine if
  /// there are more clusters left to be queried.
  ///
  /// [pageToken] - Optional. The `next_page_token` value returned from a
  /// previous \[ListBackupCollections\] request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupCollectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupCollectionsResponse> list(
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
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/backupCollections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupCollectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBackupCollectionsBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupCollectionsBackupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a specific backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis backup resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/backupCollections/{backup_collection_id}/backups/{backup_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupCollections/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Idempotent request UUID.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports a specific backup to a customer target Cloud Storage URI.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis backup resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/backupCollections/{backup_collection_id}/backups/{backup_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupCollections/\[^/\]+/backups/\[^/\]+$`.
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
    ExportBackupRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis backup resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/backupCollections/{backup_collection_id}/backups/{backup_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupCollections/\[^/\]+/backups/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all backups owned by a backup collection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the backupCollection using the
  /// form:
  /// `projects/{project_id}/locations/{location_id}/backupCollections/{backup_collection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupCollections/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 1000 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's `next_page_token` to determine if
  /// there are more clusters left to be queried.
  ///
  /// [pageToken] - Optional. The `next_page_token` value returned from a
  /// previous \[ListBackupCollections\] request, if any.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersResource(commons.ApiRequester client)
    : _requester = client;

  /// Backup Redis Cluster.
  ///
  /// If this is the first time a backup is being created, a backup collection
  /// will be created at the backend, and this backup belongs to this
  /// collection. Both collection and backup will have a resource name. Backup
  /// will be executed for each shard. A replica (primary if nonHA) will be
  /// selected to perform the execution. Backup call will be rejected if there
  /// is an ongoing backup or update operation. Be aware that during preview, if
  /// the cluster's internal software version is too old, critical update will
  /// be performed before actual backup. Once the internal software version is
  /// updated to the minimum version required by the backup feature, subsequent
  /// backups will not require critical update. After preview, there will be no
  /// critical update needed for backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis cluster resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  /// where `location_id` refers to a Google Cloud region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
  async.Future<Operation> backup(
    BackupClusterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':backup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Redis cluster based on the specified properties.
  ///
  /// The creation is executed asynchronously and callers may check the returned
  /// operation to track its progress. Once the operation is completed the Redis
  /// cluster will be fully functional. The completed longrunning.Operation will
  /// contain the new cluster object in the response field. The returned
  /// operation is automatically deleted after a few hours, so there is no need
  /// to call DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the cluster location using the
  /// form: `projects/{project_id}/locations/{location_id}` where `location_id`
  /// refers to a Google Cloud region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [clusterId] - Required. The logical name of the Redis cluster in the
  /// customer project with the following restrictions: * Must contain only
  /// lowercase letters, numbers, and hyphens. * Must start with a letter. *
  /// Must be between 1-63 characters. * Must end with a number or a letter. *
  /// Must be unique within the customer project / location
  ///
  /// [requestId] - Optional. Idempotent request UUID.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a specific Redis cluster.
  ///
  /// Cluster stops serving and data is deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis cluster resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  /// where `location_id` refers to a Google Cloud region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Idempotent request UUID.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific Redis cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis cluster resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  /// where `location_id` refers to a Google Cloud region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
  async.Future<Cluster> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of certificate authority information for Redis cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis cluster certificate authority resource name using
  /// the form:
  /// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}/certificateAuthority`
  /// where `location_id` refers to a Google Cloud region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/certificateAuthority$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CertificateAuthority].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CertificateAuthority> getCertificateAuthority(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CertificateAuthority.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Redis clusters owned by a project in either the specified
  /// location (region) or all locations.
  ///
  /// The location should have the following format: *
  /// `projects/{project_id}/locations/{location_id}` If `location_id` is
  /// specified as `-` (wildcard), then all regions available to the project are
  /// queried, and the results are aggregated.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the cluster location using the
  /// form: `projects/{project_id}/locations/{location_id}` where `location_id`
  /// refers to a Google Cloud region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. If not specified, a
  /// default value of 1000 will be used by the service. Regardless of the
  /// page_size value, the response may include a partial list and a caller
  /// should only rely on response's `next_page_token` to determine if there are
  /// more clusters left to be queried.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous
  /// ListClusters request, if any.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the metadata and configuration of a specific Redis cluster.
  ///
  /// Completed longrunning.Operation will contain the new cluster object in the
  /// response field. The returned operation is automatically deleted after a
  /// few hours, so there is no need to call DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Unique name of the resource in this scope
  /// including project and location using the form:
  /// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Idempotent request UUID.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include these fields from Cluster: * `size_gb` * `replica_count` *
  /// `cluster_endpoints`
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reschedules upcoming maintenance event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis Cluster instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  /// where `location_id` refers to a Google Cloud region.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
  async.Future<Operation> rescheduleClusterMaintenance(
    RescheduleClusterMaintenanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$name') +
        ':rescheduleClusterMaintenance';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// will be fully functional. The completed longrunning.Operation will contain
  /// the new instance object in the response field. The returned operation is
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':failover';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Instance> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/authString';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InstanceAuthString.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$name') + ':rescheduleMaintenance';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':upgrade';

    final response_ = await _requester.request(
      url_,
      'POST',
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
  async.Future<Empty> cancel(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

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

/// Configuration of the AOF based persistence.
typedef AOFConfig = $AOFConfig;

/// The automated backup config for a cluster.
class AutomatedBackupConfig {
  /// The automated backup mode.
  ///
  /// If the mode is disabled, the other fields will be ignored.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTOMATED_BACKUP_MODE_UNSPECIFIED" : Default value. Automated backup
  /// config is not specified.
  /// - "DISABLED" : Automated backup config disabled.
  /// - "ENABLED" : Automated backup config enabled.
  core.String? automatedBackupMode;

  /// Trigger automated backups at a fixed frequency.
  ///
  /// Optional.
  FixedFrequencySchedule? fixedFrequencySchedule;

  /// How long to keep automated backups before the backups are deleted.
  ///
  /// The value should be between 1 day and 365 days. If not specified, the
  /// default value is 35 days.
  ///
  /// Optional.
  core.String? retention;

  AutomatedBackupConfig({
    this.automatedBackupMode,
    this.fixedFrequencySchedule,
    this.retention,
  });

  AutomatedBackupConfig.fromJson(core.Map json_)
    : this(
        automatedBackupMode: json_['automatedBackupMode'] as core.String?,
        fixedFrequencySchedule:
            json_.containsKey('fixedFrequencySchedule')
                ? FixedFrequencySchedule.fromJson(
                  json_['fixedFrequencySchedule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        retention: json_['retention'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (automatedBackupMode != null)
      'automatedBackupMode': automatedBackupMode!,
    if (fixedFrequencySchedule != null)
      'fixedFrequencySchedule': fixedFrequencySchedule!,
    if (retention != null) 'retention': retention!,
  };
}

/// Backup of a cluster.
class Backup {
  /// List of backup files of the backup.
  ///
  /// Output only.
  core.List<BackupFile>? backupFiles;

  /// Type of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BACKUP_TYPE_UNSPECIFIED" : The default value, not set.
  /// - "ON_DEMAND" : On-demand backup.
  /// - "AUTOMATED" : Automated backup.
  core.String? backupType;

  /// Cluster resource path of this backup.
  ///
  /// Output only.
  core.String? cluster;

  /// Cluster uid of this backup.
  ///
  /// Output only.
  core.String? clusterUid;

  /// The time when the backup was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Encryption information of the backup.
  ///
  /// Output only.
  EncryptionInfo? encryptionInfo;

  /// redis-7.2, valkey-7.5
  ///
  /// Output only.
  core.String? engineVersion;

  /// The time when the backup will expire.
  ///
  /// Output only.
  core.String? expireTime;

  /// Identifier.
  ///
  /// Full resource path of the backup. the last part of the name is the backup
  /// id with the following format: \[YYYYMMDDHHMMSS\]_\[Shorted Cluster UID\]
  /// OR customer specified while backup cluster. Example: 20240515123000_1234
  core.String? name;

  /// Node type of the cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NODE_TYPE_UNSPECIFIED" : Node type unspecified
  /// - "REDIS_SHARED_CORE_NANO" : Redis shared core nano node_type.
  /// - "REDIS_HIGHMEM_MEDIUM" : Redis highmem medium node_type.
  /// - "REDIS_HIGHMEM_XLARGE" : Redis highmem xlarge node_type.
  /// - "REDIS_STANDARD_SMALL" : Redis standard small node_type.
  core.String? nodeType;

  /// Number of replicas for the cluster.
  ///
  /// Output only.
  core.int? replicaCount;

  /// Number of shards for the cluster.
  ///
  /// Output only.
  core.int? shardCount;

  /// State of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value, not set.
  /// - "CREATING" : The backup is being created.
  /// - "ACTIVE" : The backup is active to be used.
  /// - "DELETING" : The backup is being deleted.
  /// - "SUSPENDED" : The backup is currently suspended due to reasons like
  /// project deletion, billing account closure, etc.
  core.String? state;

  /// Total size of the backup in bytes.
  ///
  /// Output only.
  core.String? totalSizeBytes;

  /// System assigned unique identifier of the backup.
  ///
  /// Output only.
  core.String? uid;

  Backup({
    this.backupFiles,
    this.backupType,
    this.cluster,
    this.clusterUid,
    this.createTime,
    this.encryptionInfo,
    this.engineVersion,
    this.expireTime,
    this.name,
    this.nodeType,
    this.replicaCount,
    this.shardCount,
    this.state,
    this.totalSizeBytes,
    this.uid,
  });

  Backup.fromJson(core.Map json_)
    : this(
        backupFiles:
            (json_['backupFiles'] as core.List?)
                ?.map(
                  (value) => BackupFile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        backupType: json_['backupType'] as core.String?,
        cluster: json_['cluster'] as core.String?,
        clusterUid: json_['clusterUid'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        encryptionInfo:
            json_.containsKey('encryptionInfo')
                ? EncryptionInfo.fromJson(
                  json_['encryptionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        engineVersion: json_['engineVersion'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        name: json_['name'] as core.String?,
        nodeType: json_['nodeType'] as core.String?,
        replicaCount: json_['replicaCount'] as core.int?,
        shardCount: json_['shardCount'] as core.int?,
        state: json_['state'] as core.String?,
        totalSizeBytes: json_['totalSizeBytes'] as core.String?,
        uid: json_['uid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupFiles != null) 'backupFiles': backupFiles!,
    if (backupType != null) 'backupType': backupType!,
    if (cluster != null) 'cluster': cluster!,
    if (clusterUid != null) 'clusterUid': clusterUid!,
    if (createTime != null) 'createTime': createTime!,
    if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
    if (engineVersion != null) 'engineVersion': engineVersion!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (name != null) 'name': name!,
    if (nodeType != null) 'nodeType': nodeType!,
    if (replicaCount != null) 'replicaCount': replicaCount!,
    if (shardCount != null) 'shardCount': shardCount!,
    if (state != null) 'state': state!,
    if (totalSizeBytes != null) 'totalSizeBytes': totalSizeBytes!,
    if (uid != null) 'uid': uid!,
  };
}

/// Request for \[BackupCluster\].
typedef BackupClusterRequest = $BackupClusterRequest;

/// BackupCollection of a cluster.
typedef BackupCollection = $BackupCollection;

/// Backup is consisted of multiple backup files.
typedef BackupFile = $BackupFile;
typedef CertChain = $CertChain;

/// Redis cluster certificate authority
class CertificateAuthority {
  ManagedCertificateAuthority? managedServerCa;

  /// Identifier.
  ///
  /// Unique name of the resource in this scope including project, location and
  /// cluster using the form:
  /// `projects/{project}/locations/{location}/clusters/{cluster}/certificateAuthority`
  core.String? name;

  CertificateAuthority({this.managedServerCa, this.name});

  CertificateAuthority.fromJson(core.Map json_)
    : this(
        managedServerCa:
            json_.containsKey('managedServerCa')
                ? ManagedCertificateAuthority.fromJson(
                  json_['managedServerCa']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (managedServerCa != null) 'managedServerCa': managedServerCa!,
    if (name != null) 'name': name!,
  };
}

/// A cluster instance.
class Cluster {
  /// Allows customers to specify if they are okay with deploying a multi-zone
  /// cluster in less than 3 zones.
  ///
  /// Once set, if there is a zonal outage during the cluster creation, the
  /// cluster will only be deployed in 2 zones, and stay within the 2 zones for
  /// its lifecycle.
  ///
  /// Optional. Immutable.
  core.bool? allowFewerZonesDeployment;

  /// If true, cluster endpoints that are created and registered by customers
  /// can be deleted asynchronously.
  ///
  /// That is, such a cluster endpoint can be de-registered before the
  /// forwarding rules in the cluster endpoint are deleted.
  ///
  /// Optional.
  core.bool? asyncClusterEndpointsDeletionEnabled;

  /// The authorization mode of the Redis cluster.
  ///
  /// If not provided, auth feature is disabled for the cluster.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTH_MODE_UNSPECIFIED" : Not set.
  /// - "AUTH_MODE_IAM_AUTH" : IAM basic authorization mode
  /// - "AUTH_MODE_DISABLED" : Authorization disabled mode
  core.String? authorizationMode;

  /// The automated backup config for the cluster.
  ///
  /// Optional.
  AutomatedBackupConfig? automatedBackupConfig;

  /// The backup collection full resource name.
  ///
  /// Example:
  /// projects/{project}/locations/{location}/backupCollections/{collection}
  ///
  /// Optional. Output only.
  core.String? backupCollection;

  /// A list of cluster endpoints.
  ///
  /// Optional.
  core.List<ClusterEndpoint>? clusterEndpoints;

  /// The timestamp associated with the cluster creation request.
  ///
  /// Output only.
  core.String? createTime;

  /// Cross cluster replication config.
  ///
  /// Optional.
  CrossClusterReplicationConfig? crossClusterReplicationConfig;

  /// The delete operation will fail when the value is set to true.
  ///
  /// Optional.
  core.bool? deletionProtectionEnabled;

  /// Endpoints created on each given network, for Redis clients to connect to
  /// the cluster.
  ///
  /// Currently only one discovery endpoint is supported.
  ///
  /// Output only.
  core.List<DiscoveryEndpoint>? discoveryEndpoints;

  /// Encryption information of the data at rest of the cluster.
  ///
  /// Output only.
  EncryptionInfo? encryptionInfo;

  /// Backups stored in Cloud Storage buckets.
  ///
  /// The Cloud Storage buckets need to be the same region as the clusters. Read
  /// permission is required to import from the provided Cloud Storage objects.
  ///
  /// Optional.
  GcsBackupSource? gcsSource;

  /// The KMS key used to encrypt the at-rest data of the cluster.
  ///
  /// Optional.
  core.String? kmsKey;

  /// ClusterMaintenancePolicy determines when to allow or deny updates.
  ///
  /// Optional.
  ClusterMaintenancePolicy? maintenancePolicy;

  /// ClusterMaintenanceSchedule Output only Published maintenance schedule.
  ///
  /// Output only.
  ClusterMaintenanceSchedule? maintenanceSchedule;

  /// Backups generated and managed by memorystore service.
  ///
  /// Optional.
  ManagedBackupSource? managedBackupSource;

  /// Identifier.
  ///
  /// Unique name of the resource in this scope including project and location
  /// using the form:
  /// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  ///
  /// Required.
  core.String? name;

  /// The type of a redis node in the cluster.
  ///
  /// NodeType determines the underlying machine-type of a redis node.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NODE_TYPE_UNSPECIFIED" : Node type unspecified
  /// - "REDIS_SHARED_CORE_NANO" : Redis shared core nano node_type.
  /// - "REDIS_HIGHMEM_MEDIUM" : Redis highmem medium node_type.
  /// - "REDIS_HIGHMEM_XLARGE" : Redis highmem xlarge node_type.
  /// - "REDIS_STANDARD_SMALL" : Redis standard small node_type.
  core.String? nodeType;

  /// Input only.
  ///
  /// Ondemand maintenance for the cluster. This field can be used to trigger
  /// ondemand critical update on the cluster.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? ondemandMaintenance;

  /// Persistence config (RDB, AOF) for the cluster.
  ///
  /// Optional.
  ClusterPersistenceConfig? persistenceConfig;

  /// Precise value of redis memory size in GB for the entire cluster.
  ///
  /// Output only.
  core.double? preciseSizeGb;

  /// Each PscConfig configures the consumer network where IPs will be
  /// designated to the cluster for client access through Private Service
  /// Connect Automation.
  ///
  /// Currently, only one PscConfig is supported.
  ///
  /// Optional.
  core.List<PscConfig>? pscConfigs;

  /// The list of PSC connections that are auto-created through service
  /// connectivity automation.
  ///
  /// Output only.
  core.List<PscConnection>? pscConnections;

  /// Service attachment details to configure Psc connections
  ///
  /// Output only.
  core.List<PscServiceAttachment>? pscServiceAttachments;

  /// Key/Value pairs of customer overrides for mutable Redis Configs
  ///
  /// Optional.
  core.Map<core.String, core.String>? redisConfigs;

  /// The number of replica nodes per shard.
  ///
  /// Optional.
  core.int? replicaCount;

  /// Reserved for future use.
  ///
  /// Optional. Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Optional. Output only.
  core.bool? satisfiesPzs;

  /// Number of shards for the Redis cluster.
  ///
  /// Optional.
  core.int? shardCount;

  /// Input only.
  ///
  /// Simulate a maintenance event.
  ///
  /// Optional.
  core.bool? simulateMaintenanceEvent;

  /// Redis memory size in GB for the entire cluster rounded up to the next
  /// integer.
  ///
  /// Output only.
  core.int? sizeGb;

  /// The current state of this cluster.
  ///
  /// Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : Redis cluster is being created.
  /// - "ACTIVE" : Redis cluster has been created and is fully usable.
  /// - "UPDATING" : Redis cluster configuration is being updated.
  /// - "DELETING" : Redis cluster is being deleted.
  core.String? state;

  /// Additional information about the current state of the cluster.
  ///
  /// Output only.
  StateInfo? stateInfo;

  /// The in-transit encryption for the Redis cluster.
  ///
  /// If not provided, encryption is disabled for the cluster.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TRANSIT_ENCRYPTION_MODE_UNSPECIFIED" : In-transit encryption not set.
  /// - "TRANSIT_ENCRYPTION_MODE_DISABLED" : In-transit encryption disabled.
  /// - "TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION" : Use server managed
  /// encryption for in-transit encryption.
  core.String? transitEncryptionMode;

  /// System assigned, unique identifier for the cluster.
  ///
  /// Output only.
  core.String? uid;

  /// This config will be used to determine how the customer wants us to
  /// distribute cluster resources within the region.
  ///
  /// Optional.
  ZoneDistributionConfig? zoneDistributionConfig;

  Cluster({
    this.allowFewerZonesDeployment,
    this.asyncClusterEndpointsDeletionEnabled,
    this.authorizationMode,
    this.automatedBackupConfig,
    this.backupCollection,
    this.clusterEndpoints,
    this.createTime,
    this.crossClusterReplicationConfig,
    this.deletionProtectionEnabled,
    this.discoveryEndpoints,
    this.encryptionInfo,
    this.gcsSource,
    this.kmsKey,
    this.maintenancePolicy,
    this.maintenanceSchedule,
    this.managedBackupSource,
    this.name,
    this.nodeType,
    this.ondemandMaintenance,
    this.persistenceConfig,
    this.preciseSizeGb,
    this.pscConfigs,
    this.pscConnections,
    this.pscServiceAttachments,
    this.redisConfigs,
    this.replicaCount,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.shardCount,
    this.simulateMaintenanceEvent,
    this.sizeGb,
    this.state,
    this.stateInfo,
    this.transitEncryptionMode,
    this.uid,
    this.zoneDistributionConfig,
  });

  Cluster.fromJson(core.Map json_)
    : this(
        allowFewerZonesDeployment:
            json_['allowFewerZonesDeployment'] as core.bool?,
        asyncClusterEndpointsDeletionEnabled:
            json_['asyncClusterEndpointsDeletionEnabled'] as core.bool?,
        authorizationMode: json_['authorizationMode'] as core.String?,
        automatedBackupConfig:
            json_.containsKey('automatedBackupConfig')
                ? AutomatedBackupConfig.fromJson(
                  json_['automatedBackupConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        backupCollection: json_['backupCollection'] as core.String?,
        clusterEndpoints:
            (json_['clusterEndpoints'] as core.List?)
                ?.map(
                  (value) => ClusterEndpoint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        crossClusterReplicationConfig:
            json_.containsKey('crossClusterReplicationConfig')
                ? CrossClusterReplicationConfig.fromJson(
                  json_['crossClusterReplicationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deletionProtectionEnabled:
            json_['deletionProtectionEnabled'] as core.bool?,
        discoveryEndpoints:
            (json_['discoveryEndpoints'] as core.List?)
                ?.map(
                  (value) => DiscoveryEndpoint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        encryptionInfo:
            json_.containsKey('encryptionInfo')
                ? EncryptionInfo.fromJson(
                  json_['encryptionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GcsBackupSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kmsKey: json_['kmsKey'] as core.String?,
        maintenancePolicy:
            json_.containsKey('maintenancePolicy')
                ? ClusterMaintenancePolicy.fromJson(
                  json_['maintenancePolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maintenanceSchedule:
            json_.containsKey('maintenanceSchedule')
                ? ClusterMaintenanceSchedule.fromJson(
                  json_['maintenanceSchedule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        managedBackupSource:
            json_.containsKey('managedBackupSource')
                ? ManagedBackupSource.fromJson(
                  json_['managedBackupSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        nodeType: json_['nodeType'] as core.String?,
        ondemandMaintenance: json_['ondemandMaintenance'] as core.bool?,
        persistenceConfig:
            json_.containsKey('persistenceConfig')
                ? ClusterPersistenceConfig.fromJson(
                  json_['persistenceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        preciseSizeGb: (json_['preciseSizeGb'] as core.num?)?.toDouble(),
        pscConfigs:
            (json_['pscConfigs'] as core.List?)
                ?.map(
                  (value) => PscConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pscConnections:
            (json_['pscConnections'] as core.List?)
                ?.map(
                  (value) => PscConnection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pscServiceAttachments:
            (json_['pscServiceAttachments'] as core.List?)
                ?.map(
                  (value) => PscServiceAttachment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        redisConfigs: (json_['redisConfigs']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        replicaCount: json_['replicaCount'] as core.int?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        shardCount: json_['shardCount'] as core.int?,
        simulateMaintenanceEvent:
            json_['simulateMaintenanceEvent'] as core.bool?,
        sizeGb: json_['sizeGb'] as core.int?,
        state: json_['state'] as core.String?,
        stateInfo:
            json_.containsKey('stateInfo')
                ? StateInfo.fromJson(
                  json_['stateInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        transitEncryptionMode: json_['transitEncryptionMode'] as core.String?,
        uid: json_['uid'] as core.String?,
        zoneDistributionConfig:
            json_.containsKey('zoneDistributionConfig')
                ? ZoneDistributionConfig.fromJson(
                  json_['zoneDistributionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowFewerZonesDeployment != null)
      'allowFewerZonesDeployment': allowFewerZonesDeployment!,
    if (asyncClusterEndpointsDeletionEnabled != null)
      'asyncClusterEndpointsDeletionEnabled':
          asyncClusterEndpointsDeletionEnabled!,
    if (authorizationMode != null) 'authorizationMode': authorizationMode!,
    if (automatedBackupConfig != null)
      'automatedBackupConfig': automatedBackupConfig!,
    if (backupCollection != null) 'backupCollection': backupCollection!,
    if (clusterEndpoints != null) 'clusterEndpoints': clusterEndpoints!,
    if (createTime != null) 'createTime': createTime!,
    if (crossClusterReplicationConfig != null)
      'crossClusterReplicationConfig': crossClusterReplicationConfig!,
    if (deletionProtectionEnabled != null)
      'deletionProtectionEnabled': deletionProtectionEnabled!,
    if (discoveryEndpoints != null) 'discoveryEndpoints': discoveryEndpoints!,
    if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (kmsKey != null) 'kmsKey': kmsKey!,
    if (maintenancePolicy != null) 'maintenancePolicy': maintenancePolicy!,
    if (maintenanceSchedule != null)
      'maintenanceSchedule': maintenanceSchedule!,
    if (managedBackupSource != null)
      'managedBackupSource': managedBackupSource!,
    if (name != null) 'name': name!,
    if (nodeType != null) 'nodeType': nodeType!,
    if (ondemandMaintenance != null)
      'ondemandMaintenance': ondemandMaintenance!,
    if (persistenceConfig != null) 'persistenceConfig': persistenceConfig!,
    if (preciseSizeGb != null) 'preciseSizeGb': preciseSizeGb!,
    if (pscConfigs != null) 'pscConfigs': pscConfigs!,
    if (pscConnections != null) 'pscConnections': pscConnections!,
    if (pscServiceAttachments != null)
      'pscServiceAttachments': pscServiceAttachments!,
    if (redisConfigs != null) 'redisConfigs': redisConfigs!,
    if (replicaCount != null) 'replicaCount': replicaCount!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (shardCount != null) 'shardCount': shardCount!,
    if (simulateMaintenanceEvent != null)
      'simulateMaintenanceEvent': simulateMaintenanceEvent!,
    if (sizeGb != null) 'sizeGb': sizeGb!,
    if (state != null) 'state': state!,
    if (stateInfo != null) 'stateInfo': stateInfo!,
    if (transitEncryptionMode != null)
      'transitEncryptionMode': transitEncryptionMode!,
    if (uid != null) 'uid': uid!,
    if (zoneDistributionConfig != null)
      'zoneDistributionConfig': zoneDistributionConfig!,
  };
}

/// ClusterEndpoint consists of PSC connections that are created as a group in
/// each VPC network for accessing the cluster.
///
/// In each group, there shall be one connection for each service attachment in
/// the cluster.
class ClusterEndpoint {
  /// A group of PSC connections.
  ///
  /// They are created in the same VPC network, one for each service attachment
  /// in the cluster.
  ///
  /// Required.
  core.List<ConnectionDetail>? connections;

  ClusterEndpoint({this.connections});

  ClusterEndpoint.fromJson(core.Map json_)
    : this(
        connections:
            (json_['connections'] as core.List?)
                ?.map(
                  (value) => ConnectionDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connections != null) 'connections': connections!,
  };
}

/// Maintenance policy per cluster.
class ClusterMaintenancePolicy {
  /// The time when the policy was created i.e. Maintenance Window or Deny
  /// Period was assigned.
  ///
  /// Output only.
  core.String? createTime;

  /// The time when the policy was updated i.e. Maintenance Window or Deny
  /// Period was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Maintenance window that is applied to resources covered by this policy.
  ///
  /// Minimum 1. For the current version, the maximum number of
  /// weekly_maintenance_window is expected to be one.
  ///
  /// Optional.
  core.List<ClusterWeeklyMaintenanceWindow>? weeklyMaintenanceWindow;

  ClusterMaintenancePolicy({
    this.createTime,
    this.updateTime,
    this.weeklyMaintenanceWindow,
  });

  ClusterMaintenancePolicy.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        weeklyMaintenanceWindow:
            (json_['weeklyMaintenanceWindow'] as core.List?)
                ?.map(
                  (value) => ClusterWeeklyMaintenanceWindow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (weeklyMaintenanceWindow != null)
      'weeklyMaintenanceWindow': weeklyMaintenanceWindow!,
  };
}

/// Upcoming maintenance schedule.
typedef ClusterMaintenanceSchedule = $ClusterMaintenanceSchedule;

/// Configuration of the persistence functionality.
class ClusterPersistenceConfig {
  /// AOF configuration.
  ///
  /// This field will be ignored if mode is not AOF.
  ///
  /// Optional.
  AOFConfig? aofConfig;

  /// The mode of persistence.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PERSISTENCE_MODE_UNSPECIFIED" : Not set.
  /// - "DISABLED" : Persistence is disabled, and any snapshot data is deleted.
  /// - "RDB" : RDB based persistence is enabled.
  /// - "AOF" : AOF based persistence is enabled.
  core.String? mode;

  /// RDB configuration.
  ///
  /// This field will be ignored if mode is not RDB.
  ///
  /// Optional.
  RDBConfig? rdbConfig;

  ClusterPersistenceConfig({this.aofConfig, this.mode, this.rdbConfig});

  ClusterPersistenceConfig.fromJson(core.Map json_)
    : this(
        aofConfig:
            json_.containsKey('aofConfig')
                ? AOFConfig.fromJson(
                  json_['aofConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mode: json_['mode'] as core.String?,
        rdbConfig:
            json_.containsKey('rdbConfig')
                ? RDBConfig.fromJson(
                  json_['rdbConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aofConfig != null) 'aofConfig': aofConfig!,
    if (mode != null) 'mode': mode!,
    if (rdbConfig != null) 'rdbConfig': rdbConfig!,
  };
}

/// Time window specified for weekly operations.
class ClusterWeeklyMaintenanceWindow {
  /// Allows to define schedule that runs specified day of the week.
  ///
  /// Optional.
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

  /// Start time of the window in UTC.
  ///
  /// Optional.
  TimeOfDay? startTime;

  ClusterWeeklyMaintenanceWindow({this.day, this.startTime});

  ClusterWeeklyMaintenanceWindow.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.String?,
        startTime:
            json_.containsKey('startTime')
                ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (day != null) 'day': day!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Detailed information of each PSC connection.
class ConnectionDetail {
  /// Detailed information of a PSC connection that is created through service
  /// connectivity automation.
  PscAutoConnection? pscAutoConnection;

  /// Detailed information of a PSC connection that is created by the customer
  /// who owns the cluster.
  PscConnection? pscConnection;

  ConnectionDetail({this.pscAutoConnection, this.pscConnection});

  ConnectionDetail.fromJson(core.Map json_)
    : this(
        pscAutoConnection:
            json_.containsKey('pscAutoConnection')
                ? PscAutoConnection.fromJson(
                  json_['pscAutoConnection']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pscConnection:
            json_.containsKey('pscConnection')
                ? PscConnection.fromJson(
                  json_['pscConnection'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pscAutoConnection != null) 'pscAutoConnection': pscAutoConnection!,
    if (pscConnection != null) 'pscConnection': pscConnection!,
  };
}

/// Cross cluster replication config.
class CrossClusterReplicationConfig {
  /// The role of the cluster in cross cluster replication.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLUSTER_ROLE_UNSPECIFIED" : Cluster role is not set. The behavior is
  /// equivalent to NONE.
  /// - "NONE" : This cluster does not participate in cross cluster replication.
  /// It is an independent cluster and does not replicate to or from any other
  /// clusters.
  /// - "PRIMARY" : A cluster that allows both reads and writes. Any data
  /// written to this cluster is also replicated to the attached secondary
  /// clusters.
  /// - "SECONDARY" : A cluster that allows only reads and replicates data from
  /// a primary cluster.
  core.String? clusterRole;

  /// An output only view of all the member clusters participating in the cross
  /// cluster replication.
  ///
  /// This view will be provided by every member cluster irrespective of its
  /// cluster role(primary or secondary). A primary cluster can provide
  /// information about all the secondary clusters replicating from it. However,
  /// a secondary cluster only knows about the primary cluster from which it is
  /// replicating. However, for scenarios, where the primary cluster is
  /// unavailable(e.g. regional outage), a GetCluster request can be sent to any
  /// other member cluster and this field will list all the member clusters
  /// participating in cross cluster replication.
  ///
  /// Output only.
  Membership? membership;

  /// Details of the primary cluster that is used as the replication source for
  /// this secondary cluster.
  ///
  /// This field is only set for a secondary cluster.
  RemoteCluster? primaryCluster;

  /// List of secondary clusters that are replicating from this primary cluster.
  ///
  /// This field is only set for a primary cluster.
  core.List<RemoteCluster>? secondaryClusters;

  /// The last time cross cluster replication config was updated.
  ///
  /// Output only.
  core.String? updateTime;

  CrossClusterReplicationConfig({
    this.clusterRole,
    this.membership,
    this.primaryCluster,
    this.secondaryClusters,
    this.updateTime,
  });

  CrossClusterReplicationConfig.fromJson(core.Map json_)
    : this(
        clusterRole: json_['clusterRole'] as core.String?,
        membership:
            json_.containsKey('membership')
                ? Membership.fromJson(
                  json_['membership'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        primaryCluster:
            json_.containsKey('primaryCluster')
                ? RemoteCluster.fromJson(
                  json_['primaryCluster']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        secondaryClusters:
            (json_['secondaryClusters'] as core.List?)
                ?.map(
                  (value) => RemoteCluster.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterRole != null) 'clusterRole': clusterRole!,
    if (membership != null) 'membership': membership!,
    if (primaryCluster != null) 'primaryCluster': primaryCluster!,
    if (secondaryClusters != null) 'secondaryClusters': secondaryClusters!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Endpoints on each network, for Redis clients to connect to the cluster.
class DiscoveryEndpoint {
  /// Address of the exposed Redis endpoint used by clients to connect to the
  /// service.
  ///
  /// The address could be either IP or hostname.
  ///
  /// Output only.
  core.String? address;

  /// The port number of the exposed Redis endpoint.
  ///
  /// Output only.
  core.int? port;

  /// Customer configuration for where the endpoint is created and accessed
  /// from.
  ///
  /// Output only.
  PscConfig? pscConfig;

  DiscoveryEndpoint({this.address, this.port, this.pscConfig});

  DiscoveryEndpoint.fromJson(core.Map json_)
    : this(
        address: json_['address'] as core.String?,
        port: json_['port'] as core.int?,
        pscConfig:
            json_.containsKey('pscConfig')
                ? PscConfig.fromJson(
                  json_['pscConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (address != null) 'address': address!,
    if (port != null) 'port': port!,
    if (pscConfig != null) 'pscConfig': pscConfig!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// EncryptionInfo describes the encryption information of a cluster or a
/// backup.
typedef EncryptionInfo = $EncryptionInfo01;

/// Request for \[ExportBackup\].
typedef ExportBackupRequest = $ExportBackupRequest;

/// Request for Export.
class ExportInstanceRequest {
  /// Specify data to be exported.
  ///
  /// Required.
  OutputConfig? outputConfig;

  ExportInstanceRequest({this.outputConfig});

  ExportInstanceRequest.fromJson(core.Map json_)
    : this(
        outputConfig:
            json_.containsKey('outputConfig')
                ? OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (outputConfig != null) 'outputConfig': outputConfig!,
  };
}

/// Request for Failover.
typedef FailoverInstanceRequest = $FailoverInstanceRequest;

/// This schedule allows the backup to be triggered at a fixed frequency
/// (currently only daily is supported).
class FixedFrequencySchedule {
  /// The start time of every automated backup in UTC.
  ///
  /// It must be set to the start of an hour. This field is required.
  ///
  /// Required.
  TimeOfDay? startTime;

  FixedFrequencySchedule({this.startTime});

  FixedFrequencySchedule.fromJson(core.Map json_)
    : this(
        startTime:
            json_.containsKey('startTime')
                ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Backups stored in Cloud Storage buckets.
///
/// The Cloud Storage buckets need to be the same region as the clusters.
typedef GcsBackupSource = $GcsBackupSource;

/// The Cloud Storage location for the output content
typedef GcsDestination = $GcsDestination04;

/// The Cloud Storage location for the input content
typedef GcsSource = $GcsSource05;

/// Request for Import.
class ImportInstanceRequest {
  /// Specify data to be imported.
  ///
  /// Required.
  InputConfig? inputConfig;

  ImportInstanceRequest({this.inputConfig});

  ImportInstanceRequest.fromJson(core.Map json_)
    : this(
        inputConfig:
            json_.containsKey('inputConfig')
                ? InputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>,
                )
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

  InputConfig({this.gcsSource});

  InputConfig.fromJson(core.Map json_)
    : this(
        gcsSource:
            json_.containsKey('gcsSource')
                ? GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsSource != null) 'gcsSource': gcsSource!,
  };
}

/// A Memorystore for Redis instance.
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

  /// The available maintenance versions that an instance could update to.
  ///
  /// Optional.
  core.List<core.String>? availableMaintenanceVersions;

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

  /// The KMS key reference that the customer provides when trying to create the
  /// instance.
  ///
  /// Optional.
  core.String? customerManagedKey;

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

  /// The self service update maintenance version.
  ///
  /// The version is date based such as "20210712_00_00".
  ///
  /// Optional.
  core.String? maintenanceVersion;

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

  /// Read replicas mode for the instance.
  ///
  /// Defaults to READ_REPLICAS_DISABLED.
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
  /// 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility * `REDIS_7_0`
  /// for Redis 7.0 compatibility
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

  /// Reserved for future use.
  ///
  /// Optional. Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Optional. Output only.
  core.bool? satisfiesPzs;

  /// Additional IP range for node placement.
  ///
  /// Required when enabling read replicas on an existing instance. For
  /// DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For
  /// PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
  /// range associated with the private service access connection, or "auto".
  ///
  /// Optional.
  core.String? secondaryIpRange;

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

  /// reasons that causes instance in "SUSPENDED" state.
  ///
  /// Optional.
  core.List<core.String>? suspensionReasons;

  /// Input only.
  ///
  /// Immutable. Tag keys/values directly bound to this resource. For example:
  /// "123/environment": "production", "123/costCenter": "marketing"
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

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
    this.availableMaintenanceVersions,
    this.connectMode,
    this.createTime,
    this.currentLocationId,
    this.customerManagedKey,
    this.displayName,
    this.host,
    this.labels,
    this.locationId,
    this.maintenancePolicy,
    this.maintenanceSchedule,
    this.maintenanceVersion,
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
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.secondaryIpRange,
    this.serverCaCerts,
    this.state,
    this.statusMessage,
    this.suspensionReasons,
    this.tags,
    this.tier,
    this.transitEncryptionMode,
  });

  Instance.fromJson(core.Map json_)
    : this(
        alternativeLocationId: json_['alternativeLocationId'] as core.String?,
        authEnabled: json_['authEnabled'] as core.bool?,
        authorizedNetwork: json_['authorizedNetwork'] as core.String?,
        availableMaintenanceVersions:
            (json_['availableMaintenanceVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        connectMode: json_['connectMode'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        currentLocationId: json_['currentLocationId'] as core.String?,
        customerManagedKey: json_['customerManagedKey'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        host: json_['host'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locationId: json_['locationId'] as core.String?,
        maintenancePolicy:
            json_.containsKey('maintenancePolicy')
                ? MaintenancePolicy.fromJson(
                  json_['maintenancePolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maintenanceSchedule:
            json_.containsKey('maintenanceSchedule')
                ? MaintenanceSchedule.fromJson(
                  json_['maintenanceSchedule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maintenanceVersion: json_['maintenanceVersion'] as core.String?,
        memorySizeGb: json_['memorySizeGb'] as core.int?,
        name: json_['name'] as core.String?,
        nodes:
            (json_['nodes'] as core.List?)
                ?.map(
                  (value) => NodeInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        persistenceConfig:
            json_.containsKey('persistenceConfig')
                ? PersistenceConfig.fromJson(
                  json_['persistenceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        persistenceIamIdentity: json_['persistenceIamIdentity'] as core.String?,
        port: json_['port'] as core.int?,
        readEndpoint: json_['readEndpoint'] as core.String?,
        readEndpointPort: json_['readEndpointPort'] as core.int?,
        readReplicasMode: json_['readReplicasMode'] as core.String?,
        redisConfigs: (json_['redisConfigs']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        redisVersion: json_['redisVersion'] as core.String?,
        replicaCount: json_['replicaCount'] as core.int?,
        reservedIpRange: json_['reservedIpRange'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        secondaryIpRange: json_['secondaryIpRange'] as core.String?,
        serverCaCerts:
            (json_['serverCaCerts'] as core.List?)
                ?.map(
                  (value) => TlsCertificate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        state: json_['state'] as core.String?,
        statusMessage: json_['statusMessage'] as core.String?,
        suspensionReasons:
            (json_['suspensionReasons'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        tier: json_['tier'] as core.String?,
        transitEncryptionMode: json_['transitEncryptionMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alternativeLocationId != null)
      'alternativeLocationId': alternativeLocationId!,
    if (authEnabled != null) 'authEnabled': authEnabled!,
    if (authorizedNetwork != null) 'authorizedNetwork': authorizedNetwork!,
    if (availableMaintenanceVersions != null)
      'availableMaintenanceVersions': availableMaintenanceVersions!,
    if (connectMode != null) 'connectMode': connectMode!,
    if (createTime != null) 'createTime': createTime!,
    if (currentLocationId != null) 'currentLocationId': currentLocationId!,
    if (customerManagedKey != null) 'customerManagedKey': customerManagedKey!,
    if (displayName != null) 'displayName': displayName!,
    if (host != null) 'host': host!,
    if (labels != null) 'labels': labels!,
    if (locationId != null) 'locationId': locationId!,
    if (maintenancePolicy != null) 'maintenancePolicy': maintenancePolicy!,
    if (maintenanceSchedule != null)
      'maintenanceSchedule': maintenanceSchedule!,
    if (maintenanceVersion != null) 'maintenanceVersion': maintenanceVersion!,
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
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (secondaryIpRange != null) 'secondaryIpRange': secondaryIpRange!,
    if (serverCaCerts != null) 'serverCaCerts': serverCaCerts!,
    if (state != null) 'state': state!,
    if (statusMessage != null) 'statusMessage': statusMessage!,
    if (suspensionReasons != null) 'suspensionReasons': suspensionReasons!,
    if (tags != null) 'tags': tags!,
    if (tier != null) 'tier': tier!,
    if (transitEncryptionMode != null)
      'transitEncryptionMode': transitEncryptionMode!,
  };
}

/// Instance AUTH string details.
typedef InstanceAuthString = $InstanceAuthString;

/// Response for \[ListBackupCollections\].
class ListBackupCollectionsResponse {
  /// A list of backupCollections in the project.
  ///
  /// If the `location_id` in the parent field of the request is "-", all
  /// regions available to the project are queried, and the results aggregated.
  /// If in such an aggregated query a location is unavailable, a placeholder
  /// backupCollection entry is included in the response with the `name` field
  /// set to a value of the form
  /// `projects/{project_id}/locations/{location_id}/backupCollections/`- and
  /// the `status` field set to ERROR and `status_message` field set to
  /// "location not available for ListBackupCollections".
  core.List<BackupCollection>? backupCollections;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupCollectionsResponse({
    this.backupCollections,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupCollectionsResponse.fromJson(core.Map json_)
    : this(
        backupCollections:
            (json_['backupCollections'] as core.List?)
                ?.map(
                  (value) => BackupCollection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupCollections != null) 'backupCollections': backupCollections!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response for \[ListBackups\].
class ListBackupsResponse {
  /// A list of backups in the project.
  core.List<Backup>? backups;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Backups that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({this.backups, this.nextPageToken, this.unreachable});

  ListBackupsResponse.fromJson(core.Map json_)
    : this(
        backups:
            (json_['backups'] as core.List?)
                ?.map(
                  (value) => Backup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backups != null) 'backups': backups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response for ListClusters.
class ListClustersResponse {
  /// A list of Redis clusters in the project in the specified location, or
  /// across all locations.
  ///
  /// If the `location_id` in the parent field of the request is "-", all
  /// regions available to the project are queried, and the results aggregated.
  /// If in such an aggregated query a location is unavailable, a placeholder
  /// Redis entry is included in the response with the `name` field set to a
  /// value of the form
  /// `projects/{project_id}/locations/{location_id}/clusters/`- and the
  /// `status` field set to ERROR and `status_message` field set to "location
  /// not available for ListClusters".
  core.List<Cluster>? clusters;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListClustersResponse({this.clusters, this.nextPageToken, this.unreachable});

  ListClustersResponse.fromJson(core.Map json_)
    : this(
        clusters:
            (json_['clusters'] as core.List?)
                ?.map(
                  (value) => Cluster.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusters != null) 'clusters': clusters!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  ListInstancesResponse({this.instances, this.nextPageToken, this.unreachable});

  ListInstancesResponse.fromJson(core.Map json_)
    : this(
        instances:
            (json_['instances'] as core.List?)
                ?.map(
                  (value) => Instance.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location03;

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

  MaintenancePolicy.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        weeklyMaintenanceWindow:
            (json_['weeklyMaintenanceWindow'] as core.List?)
                ?.map(
                  (value) => WeeklyMaintenanceWindow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
typedef MaintenanceSchedule = $MaintenanceSchedule02;

/// Backups that generated and managed by memorystore.
typedef ManagedBackupSource = $ManagedBackupSource;

class ManagedCertificateAuthority {
  /// The PEM encoded CA certificate chains for redis managed server
  /// authentication
  core.List<CertChain>? caCerts;

  ManagedCertificateAuthority({this.caCerts});

  ManagedCertificateAuthority.fromJson(core.Map json_)
    : this(
        caCerts:
            (json_['caCerts'] as core.List?)
                ?.map(
                  (value) => CertChain.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caCerts != null) 'caCerts': caCerts!,
  };
}

/// An output only view of all the member clusters participating in the cross
/// cluster replication.
class Membership {
  /// The primary cluster that acts as the source of replication for the
  /// secondary clusters.
  ///
  /// Output only.
  RemoteCluster? primaryCluster;

  /// The list of secondary clusters replicating from the primary cluster.
  ///
  /// Output only.
  core.List<RemoteCluster>? secondaryClusters;

  Membership({this.primaryCluster, this.secondaryClusters});

  Membership.fromJson(core.Map json_)
    : this(
        primaryCluster:
            json_.containsKey('primaryCluster')
                ? RemoteCluster.fromJson(
                  json_['primaryCluster']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        secondaryClusters:
            (json_['secondaryClusters'] as core.List?)
                ?.map(
                  (value) => RemoteCluster.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (primaryCluster != null) 'primaryCluster': primaryCluster!,
    if (secondaryClusters != null) 'secondaryClusters': secondaryClusters!,
  };
}

/// Node specific properties.
typedef NodeInfo = $NodeInfo;

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
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
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

/// The output content
class OutputConfig {
  /// Google Cloud Storage destination for output content.
  GcsDestination? gcsDestination;

  OutputConfig({this.gcsDestination});

  OutputConfig.fromJson(core.Map json_)
    : this(
        gcsDestination:
            json_.containsKey('gcsDestination')
                ? GcsDestination.fromJson(
                  json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsDestination != null) 'gcsDestination': gcsDestination!,
  };
}

/// Configuration of the persistence functionality.
typedef PersistenceConfig = $PersistenceConfig;

/// Details of consumer resources in a PSC connection that is created through
/// Service Connectivity Automation.
typedef PscAutoConnection = $PscAutoConnection;
typedef PscConfig = $PscConfig01;

/// Details of consumer resources in a PSC connection.
typedef PscConnection = $PscConnection;

/// Configuration of a service attachment of the cluster, for creating PSC
/// connections.
typedef PscServiceAttachment = $PscServiceAttachment;

/// Configuration of the RDB based persistence.
typedef RDBConfig = $RDBConfig;

/// Details of the remote cluster associated with this cluster in a cross
/// cluster replication setup.
typedef RemoteCluster = $RemoteCluster;

/// Request for rescheduling a cluster maintenance.
typedef RescheduleClusterMaintenanceRequest =
    $RescheduleClusterMaintenanceRequest;

/// Request for RescheduleMaintenance.
typedef RescheduleMaintenanceRequest = $RescheduleMaintenanceRequest01;

/// Represents additional information about the state of the cluster.
class StateInfo {
  /// Describes ongoing update on the cluster when cluster state is UPDATING.
  UpdateInfo? updateInfo;

  StateInfo({this.updateInfo});

  StateInfo.fromJson(core.Map json_)
    : this(
        updateInfo:
            json_.containsKey('updateInfo')
                ? UpdateInfo.fromJson(
                  json_['updateInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (updateInfo != null) 'updateInfo': updateInfo!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// TlsCertificate Resource
typedef TlsCertificate = $TlsCertificate;

/// Represents information about an updating cluster.
typedef UpdateInfo = $UpdateInfo;

/// Request for UpgradeInstance.
typedef UpgradeInstanceRequest = $UpgradeInstanceRequest01;

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

  WeeklyMaintenanceWindow({this.day, this.duration, this.startTime});

  WeeklyMaintenanceWindow.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.String?,
        duration: json_['duration'] as core.String?,
        startTime:
            json_.containsKey('startTime')
                ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (day != null) 'day': day!,
    if (duration != null) 'duration': duration!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Zone distribution config for allocation of cluster resources.
typedef ZoneDistributionConfig = $ZoneDistributionConfig;
