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

/// AlloyDB API - v1
///
/// AlloyDB for PostgreSQL is an open source-compatible database service that
/// provides a powerful option for migrating, modernizing, or building
/// commercial-grade applications. It offers full compatibility with standard
/// PostgreSQL, and is more than 4x faster for transactional workloads and up to
/// 100x faster for analytical queries than standard PostgreSQL in our
/// performance tests. AlloyDB for PostgreSQL offers a 99.99 percent
/// availability SLA inclusive of maintenance. AlloyDB is optimized for the most
/// demanding use cases, allowing you to build new applications that require
/// high transaction throughput, large database sizes, or multiple read
/// resources; scale existing PostgreSQL workloads with no application changes;
/// and modernize legacy proprietary databases.
///
/// For more information, see <https://cloud.google.com/alloydb/>
///
/// Create an instance of [CloudAlloyDBAdminApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBackupsResource]
///     - [ProjectsLocationsClustersResource]
///       - [ProjectsLocationsClustersInstancesResource]
///       - [ProjectsLocationsClustersUsersResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSupportedDatabaseFlagsResource]
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

/// AlloyDB for PostgreSQL is an open source-compatible database service that
/// provides a powerful option for migrating, modernizing, or building
/// commercial-grade applications.
///
/// It offers full compatibility with standard PostgreSQL, and is more than 4x
/// faster for transactional workloads and up to 100x faster for analytical
/// queries than standard PostgreSQL in our performance tests. AlloyDB for
/// PostgreSQL offers a 99.99 percent availability SLA inclusive of maintenance.
/// AlloyDB is optimized for the most demanding use cases, allowing you to build
/// new applications that require high transaction throughput, large database
/// sizes, or multiple read resources; scale existing PostgreSQL workloads with
/// no application changes; and modernize legacy proprietary databases.
class CloudAlloyDBAdminApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudAlloyDBAdminApi(http.Client client,
      {core.String rootUrl = 'https://alloydb.googleapis.com/',
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
  ProjectsLocationsClustersResource get clusters =>
      ProjectsLocationsClustersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSupportedDatabaseFlagsResource get supportedDatabaseFlags =>
      ProjectsLocationsSupportedDatabaseFlagsResource(_requester);

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
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
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
    return GoogleCloudLocationLocation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
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
    return GoogleCloudLocationListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Backup in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backupId] - Required. ID of the requesting object.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, the backend validates the request, but
  /// doesn't actually execute it.
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
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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

  /// Deletes a single Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. For the required format, see the
  /// comment on the Backup.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the Backup. If an etag is provided
  /// and does not match the current etag of the Backup, deletion will be
  /// blocked and an ABORTED error will be returned.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
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
  ///
  /// [validateOnly] - Optional. If set, the backend validates the request, but
  /// doesn't actually execute it.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Gets details of a single Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Backups in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListBackupsRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [orderBy] - Hint for how to order the results
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the backup resource with the format: *
  /// projects/{project}/locations/{region}/backups/{backup_id} where the
  /// cluster and backup ID segments should satisfy the regex expression
  /// `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase
  /// letters, numbers, and dashes, starting with a letter, and ending with a
  /// letter or number. For more details see https://google.aip.dev/122. The
  /// prefix of the backup resource name is the name of the parent resource: *
  /// projects/{project}/locations/{region}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, update succeeds even if
  /// instance is not found. In that case, a new backup is created and
  /// `update_mask` is ignored.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Backup resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, the backend validates the request, but
  /// doesn't actually execute it.
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
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

class ProjectsLocationsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersInstancesResource get instances =>
      ProjectsLocationsClustersInstancesResource(_requester);
  ProjectsLocationsClustersUsersResource get users =>
      ProjectsLocationsClustersUsersResource(_requester);

  ProjectsLocationsClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Cluster in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location of the new cluster. For the required
  /// format, see the comment on the Cluster.name field.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [clusterId] - Required. ID of the requesting object.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation (e.g.
  /// permission checks and any other type of validation), but do not actually
  /// execute the create request.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a cluster of type SECONDARY in the given location using the
  /// primary cluster as the source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location of the new cluster. For the required
  /// format, see the comment on the Cluster.name field.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [clusterId] - Required. ID of the requesting object (the secondary
  /// cluster).
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation (e.g.
  /// permission checks and any other type of validation), but do not actually
  /// execute the create request.
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
  async.Future<Operation> createsecondary(
    Cluster request,
    core.String parent, {
    core.String? clusterId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/clusters:createsecondary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the Cluster.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the Cluster. If an etag is provided
  /// and does not match the current etag of the Cluster, deletion will be
  /// blocked and an ABORTED error will be returned.
  ///
  /// [force] - Optional. Whether to cascade delete child instances for given
  /// cluster.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
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
  ///
  /// [validateOnly] - Optional. If set, performs request validation (e.g.
  /// permission checks and any other type of validation), but do not actually
  /// execute the delete.
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
    core.String? etag,
    core.bool? force,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Gets details of a single Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the Cluster.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [view] - Optional. The view of the cluster to return. Returns all default
  /// fields if not set.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : CLUSTER_VIEW_UNSPECIFIED Not specified,
  /// equivalent to BASIC.
  /// - "CLUSTER_VIEW_BASIC" : BASIC server responses include all the relevant
  /// cluster details, excluding
  /// Cluster.ContinuousBackupInfo.EarliestRestorableTime and other
  /// view-specific fields. The default value.
  /// - "CLUSTER_VIEW_CONTINUOUS_BACKUP" : CONTINUOUS_BACKUP response returns
  /// all the fields from BASIC plus the earliest restorable time if continuous
  /// backups are enabled. May increase latency.
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
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource. For the required
  /// format, see the comment on the Cluster.name field. Additionally, you can
  /// perform an aggregated list operation by specifying a value with the
  /// following format: * projects/{project}/locations/-
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the cluster resource with the format: *
  /// projects/{project}/locations/{region}/clusters/{cluster_id} where the
  /// cluster ID segment should satisfy the regex expression `[a-z0-9-]+`. For
  /// more details see https://google.aip.dev/122. The prefix of the cluster
  /// resource name is the name of the parent resource: *
  /// projects/{project}/locations/{region}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, update succeeds even if cluster
  /// is not found. In that case, a new cluster is created and `update_mask` is
  /// ignored.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Cluster resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, performs request validation (e.g.
  /// permission checks and any other type of validation), but do not actually
  /// execute the update request.
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
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Promotes a SECONDARY cluster.
  ///
  /// This turns down replication from the PRIMARY cluster and promotes a
  /// secondary cluster into its own standalone cluster. Imperative only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the Cluster.name field
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
  async.Future<Operation> promote(
    PromoteClusterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':promote';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Cluster in a given project and location, with a volume
  /// restored from the provided source, either a backup ID or a point-in-time
  /// and a source cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource. For the required
  /// format, see the comment on the Cluster.name field.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    RestoreClusterRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters:restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource. For the required
  /// format, see the comment on the Instance.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [instanceId] - Required. ID of the requesting object.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation (e.g.
  /// permission checks and any other type of validation), but do not actually
  /// execute the create request.
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
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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

  /// Creates a new SECONDARY Instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource. For the required
  /// format, see the comment on the Instance.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [instanceId] - Required. ID of the requesting object.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation (e.g.
  /// permission checks and any other type of validation), but do not actually
  /// execute the create request.
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
  async.Future<Operation> createsecondary(
    Instance request,
    core.String parent, {
    core.String? instanceId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/instances:createsecondary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the Instance.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the Instance. If an etag is
  /// provided and does not match the current etag of the Instance, deletion
  /// will be blocked and an ABORTED error will be returned.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
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
  ///
  /// [validateOnly] - Optional. If set, performs request validation (e.g.
  /// permission checks and any other type of validation), but do not actually
  /// execute the delete.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Forces a Failover for a highly available instance.
  ///
  /// Failover promotes the HA standby instance as the new primary. Imperative
  /// only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the Instance.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/instances/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':failover';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the Instance.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [view] - The view of the instance to return.
  /// Possible string values are:
  /// - "INSTANCE_VIEW_UNSPECIFIED" : INSTANCE_VIEW_UNSPECIFIED Not specified,
  /// equivalent to BASIC.
  /// - "INSTANCE_VIEW_BASIC" : BASIC server responses for a primary or read
  /// instance include all the relevant instance details, excluding the details
  /// of each node in the instance. The default value.
  /// - "INSTANCE_VIEW_FULL" : FULL response is equivalent to BASIC for primary
  /// instance (for now). For read pool instance, this includes details of each
  /// node in the pool.
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
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get instance metadata used for a connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource. The required format
  /// is:
  /// projects/{project}/locations/{location}/clusters/{cluster}/instances/{instance}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
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
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectionInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectionInfo> getConnectionInfo(
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectionInfo';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ConnectionInfo.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Injects fault in an instance.
  ///
  /// Imperative only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the Instance.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> injectFault(
    InjectFaultRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':injectFault';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Instances in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource. For the required
  /// format, see the comment on the Instance.name field. Additionally, you can
  /// perform an aggregated list operation by specifying a value with one of the
  /// following formats: * projects/{project}/locations/-/clusters/- *
  /// projects/{project}/locations/{region}/clusters/-
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the instance resource with the format: *
  /// projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id}
  /// where the cluster and instance ID segments should satisfy the regex
  /// expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of
  /// lowercase letters, numbers, and dashes, starting with a letter, and ending
  /// with a letter or number. For more details see https://google.aip.dev/122.
  /// The prefix of the instance resource name is the name of the parent
  /// resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, update succeeds even if
  /// instance is not found. In that case, a new instance is created and
  /// `update_mask` is ignored.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Instance resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, performs request validation (e.g.
  /// permission checks and any other type of validation), but do not actually
  /// execute the update request.
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
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Restart an Instance in a cluster.
  ///
  /// Imperative only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the Instance.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> restart(
    RestartInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restart';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersUsersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersUsersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new User in a given project, location, and cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [userId] - Required. ID of the requesting object.
  ///
  /// [validateOnly] - Optional. If set, the backend validates the request, but
  /// doesn't actually execute it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> create(
    User request,
    core.String parent, {
    core.String? requestId,
    core.String? userId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (userId != null) 'userId': [userId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single User.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the User.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
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
  ///
  /// [validateOnly] - Optional. If set, the backend validates the request, but
  /// doesn't actually execute it.
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
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Gets details of a single User.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource. For the required format, see
  /// the comment on the User.name field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(
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
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Users in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListUsersRequest
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single User.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the resource in the form of
  /// projects/{project}/locations/{location}/cluster/{cluster}/users/{user}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. Allow missing fields in the update mask.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the User resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, the backend validates the request, but
  /// doesn't actually execute it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> patch(
    User request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

class ProjectsLocationsSupportedDatabaseFlagsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSupportedDatabaseFlagsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists SupportedDatabaseFlags for a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource. The required format
  /// is: * projects/{project}/locations/{location} Regardless of the parent
  /// specified here, as long it is contains a valid project and location, the
  /// service will return a static list of supported flags resources. Note that
  /// we do not yet support region-specific flags.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSupportedDatabaseFlagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSupportedDatabaseFlagsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/supportedDatabaseFlags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSupportedDatabaseFlagsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// AuthorizedNetwork contains metadata for an authorized network.
class AuthorizedNetwork {
  /// CIDR range for one authorzied network of the instance.
  core.String? cidrRange;

  AuthorizedNetwork({
    this.cidrRange,
  });

  AuthorizedNetwork.fromJson(core.Map json_)
      : this(
          cidrRange: json_.containsKey('cidrRange')
              ? json_['cidrRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cidrRange != null) 'cidrRange': cidrRange!,
      };
}

/// Message describing the user-specified automated backup policy.
///
/// All fields in the automated backup policy are optional. Defaults for each
/// field are provided if they are not set.
class AutomatedBackupPolicy {
  /// The length of the time window during which a backup can be taken.
  ///
  /// If a backup does not succeed within this time window, it will be canceled
  /// and considered failed. The backup window must be at least 5 minutes long.
  /// There is no upper bound on the window. If not set, it defaults to 1 hour.
  core.String? backupWindow;

  /// Whether automated automated backups are enabled.
  ///
  /// If not set, defaults to true.
  core.bool? enabled;

  /// The encryption config can be specified to encrypt the backups with a
  /// customer-managed encryption key (CMEK).
  ///
  /// When this field is not specified, the backup will then use default
  /// encryption scheme to protect the user data.
  ///
  /// Optional.
  EncryptionConfig? encryptionConfig;

  /// Labels to apply to backups created using this configuration.
  core.Map<core.String, core.String>? labels;

  /// The location where the backup will be stored.
  ///
  /// Currently, the only supported option is to store the backup in the same
  /// region as the cluster. If empty, defaults to the region of the cluster.
  core.String? location;

  /// Quantity-based Backup retention policy to retain recent backups.
  QuantityBasedRetention? quantityBasedRetention;

  /// Time-based Backup retention policy.
  TimeBasedRetention? timeBasedRetention;

  /// Weekly schedule for the Backup.
  WeeklySchedule? weeklySchedule;

  AutomatedBackupPolicy({
    this.backupWindow,
    this.enabled,
    this.encryptionConfig,
    this.labels,
    this.location,
    this.quantityBasedRetention,
    this.timeBasedRetention,
    this.weeklySchedule,
  });

  AutomatedBackupPolicy.fromJson(core.Map json_)
      : this(
          backupWindow: json_.containsKey('backupWindow')
              ? json_['backupWindow'] as core.String
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          quantityBasedRetention: json_.containsKey('quantityBasedRetention')
              ? QuantityBasedRetention.fromJson(json_['quantityBasedRetention']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timeBasedRetention: json_.containsKey('timeBasedRetention')
              ? TimeBasedRetention.fromJson(json_['timeBasedRetention']
                  as core.Map<core.String, core.dynamic>)
              : null,
          weeklySchedule: json_.containsKey('weeklySchedule')
              ? WeeklySchedule.fromJson(json_['weeklySchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupWindow != null) 'backupWindow': backupWindow!,
        if (enabled != null) 'enabled': enabled!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (quantityBasedRetention != null)
          'quantityBasedRetention': quantityBasedRetention!,
        if (timeBasedRetention != null)
          'timeBasedRetention': timeBasedRetention!,
        if (weeklySchedule != null) 'weeklySchedule': weeklySchedule!,
      };
}

/// Message describing Backup object
class Backup {
  /// Annotations to allow client tools to store small amount of arbitrary data.
  ///
  /// This is distinct from labels. https://google.aip.dev/128
  core.Map<core.String, core.String>? annotations;

  /// The full resource name of the backup source cluster (e.g.,
  /// projects/{project}/locations/{region}/clusters/{cluster_id}).
  ///
  /// Required.
  core.String? clusterName;

  /// The system-generated UID of the cluster which was used to create this
  /// resource.
  ///
  /// Output only.
  core.String? clusterUid;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// The database engine major version of the cluster this backup was created
  /// from.
  ///
  /// Any restored cluster created from this backup will have the same database
  /// version.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATABASE_VERSION_UNSPECIFIED" : This is an unknown database version.
  /// - "POSTGRES_13" : DEPRECATED - The database version is Postgres 13.
  /// - "POSTGRES_14" : The database version is Postgres 14.
  /// - "POSTGRES_15" : The database version is Postgres 15.
  core.String? databaseVersion;

  /// Delete time stamp
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-provided description of the backup.
  core.String? description;

  /// User-settable and human-readable display name for the Backup.
  core.String? displayName;

  /// The encryption config can be specified to encrypt the backup with a
  /// customer-managed encryption key (CMEK).
  ///
  /// When this field is not specified, the backup will then use default
  /// encryption scheme to protect the user data.
  ///
  /// Optional.
  EncryptionConfig? encryptionConfig;

  /// The encryption information for the backup.
  ///
  /// Output only.
  EncryptionInfo? encryptionInfo;

  /// For Resource freshness validation (https://google.aip.dev/154)
  core.String? etag;

  /// The QuantityBasedExpiry of the backup, specified by the backup's retention
  /// policy.
  ///
  /// Once the expiry quantity is over retention, the backup is eligible to be
  /// garbage collected.
  ///
  /// Output only.
  QuantityBasedExpiry? expiryQuantity;

  /// The time at which after the backup is eligible to be garbage collected.
  ///
  /// It is the duration specified by the backup's retention policy, added to
  /// the backup's create_time.
  ///
  /// Output only.
  core.String? expiryTime;

  /// Labels as key value pairs
  core.Map<core.String, core.String>? labels;

  /// The name of the backup resource with the format: *
  /// projects/{project}/locations/{region}/backups/{backup_id} where the
  /// cluster and backup ID segments should satisfy the regex expression
  /// `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase
  /// letters, numbers, and dashes, starting with a letter, and ending with a
  /// letter or number.
  ///
  /// For more details see https://google.aip.dev/122. The prefix of the backup
  /// resource name is the name of the parent resource: *
  /// projects/{project}/locations/{region}
  ///
  /// Output only.
  core.String? name;

  /// Reconciling (https://google.aip.dev/128#reconciliation), if true,
  /// indicates that the service is actively updating the resource.
  ///
  /// This can happen due to user-triggered updates or system actions like
  /// failover or maintenance.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The size of the backup in bytes.
  ///
  /// Output only.
  core.String? sizeBytes;

  /// The current state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the backup is unknown.
  /// - "READY" : The backup is ready.
  /// - "CREATING" : The backup is creating.
  /// - "FAILED" : The backup failed.
  /// - "DELETING" : The backup is being deleted.
  core.String? state;

  /// The backup type, which suggests the trigger for the backup.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Backup Type is unknown.
  /// - "ON_DEMAND" : ON_DEMAND backups that were triggered by the customer
  /// (e.g., not AUTOMATED).
  /// - "AUTOMATED" : AUTOMATED backups triggered by the automated backups
  /// scheduler pursuant to an automated backup policy.
  /// - "CONTINUOUS" : CONTINUOUS backups triggered by the automated backups
  /// scheduler due to a continuous backup policy.
  core.String? type;

  /// The system-generated UID of the resource.
  ///
  /// The UID is assigned when the resource is created, and it is retained until
  /// it is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  Backup({
    this.annotations,
    this.clusterName,
    this.clusterUid,
    this.createTime,
    this.databaseVersion,
    this.deleteTime,
    this.description,
    this.displayName,
    this.encryptionConfig,
    this.encryptionInfo,
    this.etag,
    this.expiryQuantity,
    this.expiryTime,
    this.labels,
    this.name,
    this.reconciling,
    this.satisfiesPzs,
    this.sizeBytes,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Backup.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          clusterName: json_.containsKey('clusterName')
              ? json_['clusterName'] as core.String
              : null,
          clusterUid: json_.containsKey('clusterUid')
              ? json_['clusterUid'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          databaseVersion: json_.containsKey('databaseVersion')
              ? json_['databaseVersion'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryptionInfo: json_.containsKey('encryptionInfo')
              ? EncryptionInfo.fromJson(json_['encryptionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expiryQuantity: json_.containsKey('expiryQuantity')
              ? QuantityBasedExpiry.fromJson(json_['expiryQuantity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          expiryTime: json_.containsKey('expiryTime')
              ? json_['expiryTime'] as core.String
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
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          satisfiesPzs: json_.containsKey('satisfiesPzs')
              ? json_['satisfiesPzs'] as core.bool
              : null,
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (clusterName != null) 'clusterName': clusterName!,
        if (clusterUid != null) 'clusterUid': clusterUid!,
        if (createTime != null) 'createTime': createTime!,
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (etag != null) 'etag': etag!,
        if (expiryQuantity != null) 'expiryQuantity': expiryQuantity!,
        if (expiryTime != null) 'expiryTime': expiryTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Message describing a BackupSource.
class BackupSource {
  /// The name of the backup resource with the format: *
  /// projects/{project}/locations/{region}/backups/{backup_id}
  ///
  /// Required.
  core.String? backupName;

  /// The system-generated UID of the backup which was used to create this
  /// resource.
  ///
  /// The UID is generated when the backup is created, and it is retained until
  /// the backup is deleted.
  ///
  /// Output only.
  core.String? backupUid;

  BackupSource({
    this.backupName,
    this.backupUid,
  });

  BackupSource.fromJson(core.Map json_)
      : this(
          backupName: json_.containsKey('backupName')
              ? json_['backupName'] as core.String
              : null,
          backupUid: json_.containsKey('backupUid')
              ? json_['backupUid'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupName != null) 'backupName': backupName!,
        if (backupUid != null) 'backupUid': backupUid!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Client connection configuration
class ClientConnectionConfig {
  /// Configuration to enforce connectors only (ex: AuthProxy) connections to
  /// the database.
  ///
  /// Optional.
  core.bool? requireConnectors;

  /// SSL config option for this instance.
  ///
  /// Optional.
  SslConfig? sslConfig;

  ClientConnectionConfig({
    this.requireConnectors,
    this.sslConfig,
  });

  ClientConnectionConfig.fromJson(core.Map json_)
      : this(
          requireConnectors: json_.containsKey('requireConnectors')
              ? json_['requireConnectors'] as core.bool
              : null,
          sslConfig: json_.containsKey('sslConfig')
              ? SslConfig.fromJson(
                  json_['sslConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requireConnectors != null) 'requireConnectors': requireConnectors!,
        if (sslConfig != null) 'sslConfig': sslConfig!,
      };
}

/// A cluster is a collection of regional AlloyDB resources.
///
/// It can include a primary instance and one or more read pool instances. All
/// cluster resources share a storage layer, which scales as needed.
class Cluster {
  /// Annotations to allow client tools to store small amount of arbitrary data.
  ///
  /// This is distinct from labels. https://google.aip.dev/128
  core.Map<core.String, core.String>? annotations;

  /// The automated backup policy for this cluster.
  ///
  /// If no policy is provided then the default policy will be used. If backups
  /// are supported for the cluster, the default policy takes one backup a day,
  /// has a backup window of 1 hour, and retains backups for 14 days. For more
  /// information on the defaults, consult the documentation for the message
  /// type.
  AutomatedBackupPolicy? automatedBackupPolicy;

  /// Cluster created from backup.
  ///
  /// Output only.
  BackupSource? backupSource;

  /// The type of the cluster.
  ///
  /// This is an output-only field and it's populated at the Cluster creation
  /// time or the Cluster promotion time. The cluster type is determined by
  /// which RPC was used to create the cluster (i.e. `CreateCluster` vs.
  /// `CreateSecondaryCluster`
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLUSTER_TYPE_UNSPECIFIED" : The type of the cluster is unknown.
  /// - "PRIMARY" : Primary cluster that support read and write operations.
  /// - "SECONDARY" : Secondary cluster that is replicating from another region.
  /// This only supports read.
  core.String? clusterType;

  /// Continuous backup configuration for this cluster.
  ///
  /// Optional.
  ContinuousBackupConfig? continuousBackupConfig;

  /// Continuous backup properties for this cluster.
  ///
  /// Output only.
  ContinuousBackupInfo? continuousBackupInfo;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// The database engine major version.
  ///
  /// This is an optional field and it is populated at the Cluster creation
  /// time. If a database version is not supplied at cluster creation time, then
  /// a default database version will be used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATABASE_VERSION_UNSPECIFIED" : This is an unknown database version.
  /// - "POSTGRES_13" : DEPRECATED - The database version is Postgres 13.
  /// - "POSTGRES_14" : The database version is Postgres 14.
  /// - "POSTGRES_15" : The database version is Postgres 15.
  core.String? databaseVersion;

  /// Delete time stamp
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-settable and human-readable display name for the Cluster.
  core.String? displayName;

  /// The encryption config can be specified to encrypt the data disks and other
  /// persistent data resources of a cluster with a customer-managed encryption
  /// key (CMEK).
  ///
  /// When this field is not specified, the cluster will then use default
  /// encryption scheme to protect the user data.
  ///
  /// Optional.
  EncryptionConfig? encryptionConfig;

  /// The encryption information for the cluster.
  ///
  /// Output only.
  EncryptionInfo? encryptionInfo;

  /// For Resource freshness validation (https://google.aip.dev/154)
  core.String? etag;

  /// Input only.
  ///
  /// Initial user to setup during cluster creation. Required. If used in
  /// `RestoreCluster` this is ignored.
  UserPassword? initialUser;

  /// Labels as key value pairs
  core.Map<core.String, core.String>? labels;

  /// Cluster created via DMS migration.
  ///
  /// Output only.
  MigrationSource? migrationSource;

  /// The name of the cluster resource with the format: *
  /// projects/{project}/locations/{region}/clusters/{cluster_id} where the
  /// cluster ID segment should satisfy the regex expression `[a-z0-9-]+`.
  ///
  /// For more details see https://google.aip.dev/122. The prefix of the cluster
  /// resource name is the name of the parent resource: *
  /// projects/{project}/locations/{region}
  ///
  /// Output only.
  core.String? name;

  /// The resource link for the VPC network in which cluster resources are
  /// created and from which they are accessible via Private IP.
  ///
  /// The network must belong to the same project as the cluster. It is
  /// specified in the form: `projects/{project}/global/networks/{network_id}`.
  /// This is required to create a cluster. Deprecated, use
  /// network_config.network instead.
  ///
  /// Required.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? network;
  NetworkConfig? networkConfig;

  /// Cross Region replication config specific to PRIMARY cluster.
  ///
  /// Output only.
  PrimaryConfig? primaryConfig;

  /// Reconciling (https://google.aip.dev/128#reconciliation).
  ///
  /// Set to true if the current state of Cluster does not match the user's
  /// intended state, and the service is actively updating the resource to
  /// reconcile them. This can happen due to user-triggered updates or system
  /// actions like failover or maintenance.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Cross Region replication config specific to SECONDARY cluster.
  SecondaryConfig? secondaryConfig;

  /// SSL configuration for this AlloyDB cluster.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  SslConfig? sslConfig;

  /// The current serving state of the cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the cluster is unknown.
  /// - "READY" : The cluster is active and running.
  /// - "STOPPED" : The cluster is stopped. All instances in the cluster are
  /// stopped. Customers can start a stopped cluster at any point and all their
  /// instances will come back to life with same names and IP resources. In this
  /// state, customer pays for storage. Associated backups could also be present
  /// in a stopped cluster.
  /// - "EMPTY" : The cluster is empty and has no associated resources. All
  /// instances, associated storage and backups have been deleted.
  /// - "CREATING" : The cluster is being created.
  /// - "DELETING" : The cluster is being deleted.
  /// - "FAILED" : The creation of the cluster failed.
  /// - "BOOTSTRAPPING" : The cluster is bootstrapping with data from some other
  /// source. Direct mutations to the cluster (e.g. adding read pool) are not
  /// allowed.
  /// - "MAINTENANCE" : The cluster is under maintenance. AlloyDB regularly
  /// performs maintenance and upgrades on customer clusters. Updates on the
  /// cluster are not allowed while the cluster is in this state.
  /// - "PROMOTING" : The cluster is being promoted.
  core.String? state;

  /// The system-generated UID of the resource.
  ///
  /// The UID is assigned when the resource is created, and it is retained until
  /// it is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  Cluster({
    this.annotations,
    this.automatedBackupPolicy,
    this.backupSource,
    this.clusterType,
    this.continuousBackupConfig,
    this.continuousBackupInfo,
    this.createTime,
    this.databaseVersion,
    this.deleteTime,
    this.displayName,
    this.encryptionConfig,
    this.encryptionInfo,
    this.etag,
    this.initialUser,
    this.labels,
    this.migrationSource,
    this.name,
    this.network,
    this.networkConfig,
    this.primaryConfig,
    this.reconciling,
    this.satisfiesPzs,
    this.secondaryConfig,
    this.sslConfig,
    this.state,
    this.uid,
    this.updateTime,
  });

  Cluster.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          automatedBackupPolicy: json_.containsKey('automatedBackupPolicy')
              ? AutomatedBackupPolicy.fromJson(json_['automatedBackupPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          backupSource: json_.containsKey('backupSource')
              ? BackupSource.fromJson(
                  json_['backupSource'] as core.Map<core.String, core.dynamic>)
              : null,
          clusterType: json_.containsKey('clusterType')
              ? json_['clusterType'] as core.String
              : null,
          continuousBackupConfig: json_.containsKey('continuousBackupConfig')
              ? ContinuousBackupConfig.fromJson(json_['continuousBackupConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          continuousBackupInfo: json_.containsKey('continuousBackupInfo')
              ? ContinuousBackupInfo.fromJson(json_['continuousBackupInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          databaseVersion: json_.containsKey('databaseVersion')
              ? json_['databaseVersion'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryptionInfo: json_.containsKey('encryptionInfo')
              ? EncryptionInfo.fromJson(json_['encryptionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          initialUser: json_.containsKey('initialUser')
              ? UserPassword.fromJson(
                  json_['initialUser'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          migrationSource: json_.containsKey('migrationSource')
              ? MigrationSource.fromJson(json_['migrationSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          primaryConfig: json_.containsKey('primaryConfig')
              ? PrimaryConfig.fromJson(
                  json_['primaryConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          satisfiesPzs: json_.containsKey('satisfiesPzs')
              ? json_['satisfiesPzs'] as core.bool
              : null,
          secondaryConfig: json_.containsKey('secondaryConfig')
              ? SecondaryConfig.fromJson(json_['secondaryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sslConfig: json_.containsKey('sslConfig')
              ? SslConfig.fromJson(
                  json_['sslConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (automatedBackupPolicy != null)
          'automatedBackupPolicy': automatedBackupPolicy!,
        if (backupSource != null) 'backupSource': backupSource!,
        if (clusterType != null) 'clusterType': clusterType!,
        if (continuousBackupConfig != null)
          'continuousBackupConfig': continuousBackupConfig!,
        if (continuousBackupInfo != null)
          'continuousBackupInfo': continuousBackupInfo!,
        if (createTime != null) 'createTime': createTime!,
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (etag != null) 'etag': etag!,
        if (initialUser != null) 'initialUser': initialUser!,
        if (labels != null) 'labels': labels!,
        if (migrationSource != null) 'migrationSource': migrationSource!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (primaryConfig != null) 'primaryConfig': primaryConfig!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (secondaryConfig != null) 'secondaryConfig': secondaryConfig!,
        if (sslConfig != null) 'sslConfig': sslConfig!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// ConnectionInfo singleton resource.
///
/// https://google.aip.dev/156
class ConnectionInfo {
  /// The unique ID of the Instance.
  ///
  /// Output only.
  core.String? instanceUid;

  /// The private network IP address for the Instance.
  ///
  /// This is the default IP for the instance and is always created (even if
  /// enable_public_ip is set). This is the connection endpoint for an end-user
  /// application.
  ///
  /// Output only.
  core.String? ipAddress;

  /// The name of the ConnectionInfo singleton resource, e.g.:
  /// projects/{project}/locations/{location}/clusters / * /instances / *
  /// /connectionInfo This field currently has no semantic meaning.
  core.String? name;

  /// The public IP addresses for the Instance.
  ///
  /// This is available ONLY when enable_public_ip is set. This is the
  /// connection endpoint for an end-user application.
  ///
  /// Output only.
  core.String? publicIpAddress;

  ConnectionInfo({
    this.instanceUid,
    this.ipAddress,
    this.name,
    this.publicIpAddress,
  });

  ConnectionInfo.fromJson(core.Map json_)
      : this(
          instanceUid: json_.containsKey('instanceUid')
              ? json_['instanceUid'] as core.String
              : null,
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          publicIpAddress: json_.containsKey('publicIpAddress')
              ? json_['publicIpAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceUid != null) 'instanceUid': instanceUid!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (name != null) 'name': name!,
        if (publicIpAddress != null) 'publicIpAddress': publicIpAddress!,
      };
}

/// ContinuousBackupConfig describes the continuous backups recovery
/// configurations of a cluster.
class ContinuousBackupConfig {
  /// Whether ContinuousBackup is enabled.
  core.bool? enabled;

  /// The encryption config can be specified to encrypt the backups with a
  /// customer-managed encryption key (CMEK).
  ///
  /// When this field is not specified, the backup will then use default
  /// encryption scheme to protect the user data.
  EncryptionConfig? encryptionConfig;

  /// The number of days that are eligible to restore from using PITR.
  ///
  /// To support the entire recovery window, backups and logs are retained for
  /// one day more than the recovery window. If not set, defaults to 14 days.
  core.int? recoveryWindowDays;

  ContinuousBackupConfig({
    this.enabled,
    this.encryptionConfig,
    this.recoveryWindowDays,
  });

  ContinuousBackupConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          recoveryWindowDays: json_.containsKey('recoveryWindowDays')
              ? json_['recoveryWindowDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (recoveryWindowDays != null)
          'recoveryWindowDays': recoveryWindowDays!,
      };
}

/// ContinuousBackupInfo describes the continuous backup properties of a
/// cluster.
class ContinuousBackupInfo {
  /// The earliest restorable time that can be restored to.
  ///
  /// Output only field.
  ///
  /// Output only.
  core.String? earliestRestorableTime;

  /// When ContinuousBackup was most recently enabled.
  ///
  /// Set to null if ContinuousBackup is not enabled.
  ///
  /// Output only.
  core.String? enabledTime;

  /// The encryption information for the WALs and backups required for
  /// ContinuousBackup.
  ///
  /// Output only.
  EncryptionInfo? encryptionInfo;

  /// Days of the week on which a continuous backup is taken.
  ///
  /// Output only field. Ignored if passed into the request.
  ///
  /// Output only.
  core.List<core.String>? schedule;

  ContinuousBackupInfo({
    this.earliestRestorableTime,
    this.enabledTime,
    this.encryptionInfo,
    this.schedule,
  });

  ContinuousBackupInfo.fromJson(core.Map json_)
      : this(
          earliestRestorableTime: json_.containsKey('earliestRestorableTime')
              ? json_['earliestRestorableTime'] as core.String
              : null,
          enabledTime: json_.containsKey('enabledTime')
              ? json_['enabledTime'] as core.String
              : null,
          encryptionInfo: json_.containsKey('encryptionInfo')
              ? EncryptionInfo.fromJson(json_['encryptionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          schedule: json_.containsKey('schedule')
              ? (json_['schedule'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (earliestRestorableTime != null)
          'earliestRestorableTime': earliestRestorableTime!,
        if (enabledTime != null) 'enabledTime': enabledTime!,
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (schedule != null) 'schedule': schedule!,
      };
}

/// Message describing a ContinuousBackupSource.
class ContinuousBackupSource {
  /// The source cluster from which to restore.
  ///
  /// This cluster must have continuous backup enabled for this operation to
  /// succeed. For the required format, see the comment on the Cluster.name
  /// field.
  ///
  /// Required.
  core.String? cluster;

  /// The point in time to restore to.
  ///
  /// Required.
  core.String? pointInTime;

  ContinuousBackupSource({
    this.cluster,
    this.pointInTime,
  });

  ContinuousBackupSource.fromJson(core.Map json_)
      : this(
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.String
              : null,
          pointInTime: json_.containsKey('pointInTime')
              ? json_['pointInTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
        if (pointInTime != null) 'pointInTime': pointInTime!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// EncryptionConfig describes the encryption config of a cluster or a backup
/// that is encrypted with a CMEK (customer-managed encryption key).
typedef EncryptionConfig = $EncryptionConfig;

/// EncryptionInfo describes the encryption information of a cluster or a
/// backup.
class EncryptionInfo {
  /// Type of encryption.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Encryption type not specified. Defaults to
  /// GOOGLE_DEFAULT_ENCRYPTION.
  /// - "GOOGLE_DEFAULT_ENCRYPTION" : The data is encrypted at rest with a key
  /// that is fully managed by Google. No key version will be populated. This is
  /// the default state.
  /// - "CUSTOMER_MANAGED_ENCRYPTION" : The data is encrypted at rest with a key
  /// that is managed by the customer. KMS key versions will be populated.
  core.String? encryptionType;

  /// Cloud KMS key versions that are being used to protect the database or the
  /// backup.
  ///
  /// Output only.
  core.List<core.String>? kmsKeyVersions;

  EncryptionInfo({
    this.encryptionType,
    this.kmsKeyVersions,
  });

  EncryptionInfo.fromJson(core.Map json_)
      : this(
          encryptionType: json_.containsKey('encryptionType')
              ? json_['encryptionType'] as core.String
              : null,
          kmsKeyVersions: json_.containsKey('kmsKeyVersions')
              ? (json_['kmsKeyVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionType != null) 'encryptionType': encryptionType!,
        if (kmsKeyVersions != null) 'kmsKeyVersions': kmsKeyVersions!,
      };
}

/// Message for triggering failover on an Instance
class FailoverInstanceRequest {
  /// An optional request ID to identify requests.
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
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation (e.g. permission checks and any other
  /// type of validation), but do not actually execute the failover.
  ///
  /// Optional.
  core.bool? validateOnly;

  FailoverInstanceRequest({
    this.requestId,
    this.validateOnly,
  });

  FailoverInstanceRequest.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// The response message for Locations.ListLocations.
class GoogleCloudLocationListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<GoogleCloudLocationLocation>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => GoogleCloudLocationLocation.fromJson(
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

/// A resource that represents a Google Cloud location.
typedef GoogleCloudLocationLocation = $Location00;

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef GoogleTypeTimeOfDay = $TimeOfDay;

/// Message for triggering fault injection on an instance
class InjectFaultRequest {
  /// The type of fault to be injected in an instance.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FAULT_TYPE_UNSPECIFIED" : The fault type is unknown.
  /// - "STOP_VM" : Stop the VM
  core.String? faultType;

  /// An optional request ID to identify requests.
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
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation (e.g. permission checks and any other
  /// type of validation), but do not actually execute the fault injection.
  ///
  /// Optional.
  core.bool? validateOnly;

  InjectFaultRequest({
    this.faultType,
    this.requestId,
    this.validateOnly,
  });

  InjectFaultRequest.fromJson(core.Map json_)
      : this(
          faultType: json_.containsKey('faultType')
              ? json_['faultType'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (faultType != null) 'faultType': faultType!,
        if (requestId != null) 'requestId': requestId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// An Instance is a computing unit that an end customer can connect to.
///
/// It's the main unit of computing resources in AlloyDB.
class Instance {
  /// Annotations to allow client tools to store small amount of arbitrary data.
  ///
  /// This is distinct from labels. https://google.aip.dev/128
  core.Map<core.String, core.String>? annotations;

  /// Availability type of an Instance.
  ///
  /// If empty, defaults to REGIONAL for primary instances. For read pools,
  /// availability_type is always UNSPECIFIED. Instances in the read pools are
  /// evenly distributed across available zones within the region (i.e. read
  /// pools with more than one node will have a node in at least two zones).
  /// Possible string values are:
  /// - "AVAILABILITY_TYPE_UNSPECIFIED" : This is an unknown Availability type.
  /// - "ZONAL" : Zonal available instance.
  /// - "REGIONAL" : Regional (or Highly) available instance.
  core.String? availabilityType;

  /// Client connection specific configurations
  ///
  /// Optional.
  ClientConnectionConfig? clientConnectionConfig;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Database flags.
  ///
  /// Set at instance level. * They are copied from primary instance on read
  /// instance creation. * Read instances can set new or override existing flags
  /// that are relevant for reads, e.g. for enabling columnar cache on a read
  /// instance. Flags set on read instance may or may not be present on primary.
  /// This is a list of "key": "value" pairs. "key": The name of the flag. These
  /// flags are passed at instance setup time, so include both server options
  /// and system variables for Postgres. Flags are specified with underscores,
  /// not hyphens. "value": The value of the flag. Booleans are set to **on**
  /// for true and **off** for false. This field must be omitted if the flag
  /// doesn't take a value.
  core.Map<core.String, core.String>? databaseFlags;

  /// Delete time stamp
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-settable and human-readable display name for the Instance.
  core.String? displayName;

  /// For Resource freshness validation (https://google.aip.dev/154)
  core.String? etag;

  /// The Compute Engine zone that the instance should serve from, per
  /// https://cloud.google.com/compute/docs/regions-zones This can ONLY be
  /// specified for ZONAL instances.
  ///
  /// If present for a REGIONAL instance, an error will be thrown. If this is
  /// absent for a ZONAL instance, instance is created in a random zone with
  /// available capacity.
  core.String? gceZone;

  /// The type of the instance.
  ///
  /// Specified at creation time.
  ///
  /// Required.
  /// Possible string values are:
  /// - "INSTANCE_TYPE_UNSPECIFIED" : The type of the instance is unknown.
  /// - "PRIMARY" : PRIMARY instances support read and write operations.
  /// - "READ_POOL" : READ POOL instances support read operations only. Each
  /// read pool instance consists of one or more homogeneous nodes. * Read pool
  /// of size 1 can only have zonal availability. * Read pools with node count
  /// of 2 or more can have regional availability (nodes are present in 2 or
  /// more zones in a region).
  /// - "SECONDARY" : SECONDARY instances support read operations only.
  /// SECONDARY instance is a cross-region read replica
  core.String? instanceType;

  /// The IP address for the Instance.
  ///
  /// This is the connection endpoint for an end-user application.
  ///
  /// Output only.
  core.String? ipAddress;

  /// Labels as key value pairs
  core.Map<core.String, core.String>? labels;

  /// Configurations for the machines that host the underlying database engine.
  MachineConfig? machineConfig;

  /// The name of the instance resource with the format: *
  /// projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id}
  /// where the cluster and instance ID segments should satisfy the regex
  /// expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of
  /// lowercase letters, numbers, and dashes, starting with a letter, and ending
  /// with a letter or number.
  ///
  /// For more details see https://google.aip.dev/122. The prefix of the
  /// instance resource name is the name of the parent resource: *
  /// projects/{project}/locations/{region}/clusters/{cluster_id}
  ///
  /// Output only.
  core.String? name;

  /// Instance level network configuration.
  ///
  /// Optional.
  InstanceNetworkConfig? networkConfig;

  /// List of available read-only VMs in this instance, including the standby
  /// for a PRIMARY instance.
  ///
  /// Output only.
  core.List<Node>? nodes;

  /// The public IP addresses for the Instance.
  ///
  /// This is available ONLY when enable_public_ip is set. This is the
  /// connection endpoint for an end-user application.
  ///
  /// Output only.
  core.String? publicIpAddress;

  /// Configuration for query insights.
  QueryInsightsInstanceConfig? queryInsightsConfig;

  /// Read pool instance configuration.
  ///
  /// This is required if the value of instanceType is READ_POOL.
  ReadPoolConfig? readPoolConfig;

  /// Reconciling (https://google.aip.dev/128#reconciliation).
  ///
  /// Set to true if the current state of Instance does not match the user's
  /// intended state, and the service is actively updating the resource to
  /// reconcile them. This can happen due to user-triggered updates or system
  /// actions like failover or maintenance.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The current serving state of the instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the instance is unknown.
  /// - "READY" : The instance is active and running.
  /// - "STOPPED" : The instance is stopped. Instance name and IP resources are
  /// preserved.
  /// - "CREATING" : The instance is being created.
  /// - "DELETING" : The instance is being deleted.
  /// - "MAINTENANCE" : The instance is down for maintenance.
  /// - "FAILED" : The creation of the instance failed or a fatal error occurred
  /// during an operation on the instance. Note: Instances in this state would
  /// tried to be auto-repaired. And Customers should be able to restart, update
  /// or delete these instances.
  /// - "BOOTSTRAPPING" : Index 7 is used in the producer apis for ROLLED_BACK
  /// state. Keeping that index unused in case that state also needs to exposed
  /// via consumer apis in future. The instance has been configured to sync data
  /// from some other source.
  /// - "PROMOTING" : The instance is being promoted.
  core.String? state;

  /// The system-generated UID of the resource.
  ///
  /// The UID is assigned when the resource is created, and it is retained until
  /// it is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  /// This is set for the read-write VM of the PRIMARY instance only.
  ///
  /// Output only.
  Node? writableNode;

  Instance({
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfig,
    this.createTime,
    this.databaseFlags,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.gceZone,
    this.instanceType,
    this.ipAddress,
    this.labels,
    this.machineConfig,
    this.name,
    this.networkConfig,
    this.nodes,
    this.publicIpAddress,
    this.queryInsightsConfig,
    this.readPoolConfig,
    this.reconciling,
    this.satisfiesPzs,
    this.state,
    this.uid,
    this.updateTime,
    this.writableNode,
  });

  Instance.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          availabilityType: json_.containsKey('availabilityType')
              ? json_['availabilityType'] as core.String
              : null,
          clientConnectionConfig: json_.containsKey('clientConnectionConfig')
              ? ClientConnectionConfig.fromJson(json_['clientConnectionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          databaseFlags: json_.containsKey('databaseFlags')
              ? (json_['databaseFlags'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          gceZone: json_.containsKey('gceZone')
              ? json_['gceZone'] as core.String
              : null,
          instanceType: json_.containsKey('instanceType')
              ? json_['instanceType'] as core.String
              : null,
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          machineConfig: json_.containsKey('machineConfig')
              ? MachineConfig.fromJson(
                  json_['machineConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? InstanceNetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          nodes: json_.containsKey('nodes')
              ? (json_['nodes'] as core.List)
                  .map((value) => Node.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          publicIpAddress: json_.containsKey('publicIpAddress')
              ? json_['publicIpAddress'] as core.String
              : null,
          queryInsightsConfig: json_.containsKey('queryInsightsConfig')
              ? QueryInsightsInstanceConfig.fromJson(
                  json_['queryInsightsConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          readPoolConfig: json_.containsKey('readPoolConfig')
              ? ReadPoolConfig.fromJson(json_['readPoolConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          satisfiesPzs: json_.containsKey('satisfiesPzs')
              ? json_['satisfiesPzs'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          writableNode: json_.containsKey('writableNode')
              ? Node.fromJson(
                  json_['writableNode'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (availabilityType != null) 'availabilityType': availabilityType!,
        if (clientConnectionConfig != null)
          'clientConnectionConfig': clientConnectionConfig!,
        if (createTime != null) 'createTime': createTime!,
        if (databaseFlags != null) 'databaseFlags': databaseFlags!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (gceZone != null) 'gceZone': gceZone!,
        if (instanceType != null) 'instanceType': instanceType!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (labels != null) 'labels': labels!,
        if (machineConfig != null) 'machineConfig': machineConfig!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (nodes != null) 'nodes': nodes!,
        if (publicIpAddress != null) 'publicIpAddress': publicIpAddress!,
        if (queryInsightsConfig != null)
          'queryInsightsConfig': queryInsightsConfig!,
        if (readPoolConfig != null) 'readPoolConfig': readPoolConfig!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (writableNode != null) 'writableNode': writableNode!,
      };
}

/// Metadata related to instance level network configuration.
class InstanceNetworkConfig {
  /// A list of external network authorized to access this instance.
  ///
  /// Optional.
  core.List<AuthorizedNetwork>? authorizedExternalNetworks;

  /// Enabling public ip for the instance.
  ///
  /// Optional.
  core.bool? enablePublicIp;

  InstanceNetworkConfig({
    this.authorizedExternalNetworks,
    this.enablePublicIp,
  });

  InstanceNetworkConfig.fromJson(core.Map json_)
      : this(
          authorizedExternalNetworks:
              json_.containsKey('authorizedExternalNetworks')
                  ? (json_['authorizedExternalNetworks'] as core.List)
                      .map((value) => AuthorizedNetwork.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          enablePublicIp: json_.containsKey('enablePublicIp')
              ? json_['enablePublicIp'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedExternalNetworks != null)
          'authorizedExternalNetworks': authorizedExternalNetworks!,
        if (enablePublicIp != null) 'enablePublicIp': enablePublicIp!,
      };
}

/// Restrictions on INTEGER type values.
class IntegerRestrictions {
  /// The maximum value that can be specified, if applicable.
  core.String? maxValue;

  /// The minimum value that can be specified, if applicable.
  core.String? minValue;

  IntegerRestrictions({
    this.maxValue,
    this.minValue,
  });

  IntegerRestrictions.fromJson(core.Map json_)
      : this(
          maxValue: json_.containsKey('maxValue')
              ? json_['maxValue'] as core.String
              : null,
          minValue: json_.containsKey('minValue')
              ? json_['minValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
      };
}

/// Message for response to listing Backups
class ListBackupsResponse {
  /// The list of Backup
  core.List<Backup>? backups;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({
    this.backups,
    this.nextPageToken,
    this.unreachable,
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
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

/// Message for response to listing Clusters
class ListClustersResponse {
  /// The list of Cluster
  core.List<Cluster>? clusters;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListClustersResponse({
    this.clusters,
    this.nextPageToken,
    this.unreachable,
  });

  ListClustersResponse.fromJson(core.Map json_)
      : this(
          clusters: json_.containsKey('clusters')
              ? (json_['clusters'] as core.List)
                  .map((value) => Cluster.fromJson(
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
        if (clusters != null) 'clusters': clusters!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for response to listing Instances
class ListInstancesResponse {
  /// The list of Instance
  core.List<Instance>? instances;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInstancesResponse({
    this.instances,
    this.nextPageToken,
    this.unreachable,
  });

  ListInstancesResponse.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => Instance.fromJson(
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
        if (instances != null) 'instances': instances!,
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

/// Message for response to listing SupportedDatabaseFlags.
class ListSupportedDatabaseFlagsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of SupportedDatabaseFlags.
  core.List<SupportedDatabaseFlag>? supportedDatabaseFlags;

  ListSupportedDatabaseFlagsResponse({
    this.nextPageToken,
    this.supportedDatabaseFlags,
  });

  ListSupportedDatabaseFlagsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          supportedDatabaseFlags: json_.containsKey('supportedDatabaseFlags')
              ? (json_['supportedDatabaseFlags'] as core.List)
                  .map((value) => SupportedDatabaseFlag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (supportedDatabaseFlags != null)
          'supportedDatabaseFlags': supportedDatabaseFlags!,
      };
}

/// Message for response to listing Users
class ListUsersResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of User
  core.List<User>? users;

  ListUsersResponse({
    this.nextPageToken,
    this.unreachable,
    this.users,
  });

  ListUsersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          users: json_.containsKey('users')
              ? (json_['users'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (users != null) 'users': users!,
      };
}

/// MachineConfig describes the configuration of a machine.
typedef MachineConfig = $MachineConfig;

/// Subset of the source instance configuration that is available when reading
/// the cluster resource.
class MigrationSource {
  /// The host and port of the on-premises instance in host:port format
  ///
  /// Output only.
  core.String? hostPort;

  /// Place holder for the external source identifier(e.g DMS job name) that
  /// created the cluster.
  ///
  /// Output only.
  core.String? referenceId;

  /// Type of migration source.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MIGRATION_SOURCE_TYPE_UNSPECIFIED" : Migration source is unknown.
  /// - "DMS" : DMS source means the cluster was created via DMS migration job.
  core.String? sourceType;

  MigrationSource({
    this.hostPort,
    this.referenceId,
    this.sourceType,
  });

  MigrationSource.fromJson(core.Map json_)
      : this(
          hostPort: json_.containsKey('hostPort')
              ? json_['hostPort'] as core.String
              : null,
          referenceId: json_.containsKey('referenceId')
              ? json_['referenceId'] as core.String
              : null,
          sourceType: json_.containsKey('sourceType')
              ? json_['sourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostPort != null) 'hostPort': hostPort!,
        if (referenceId != null) 'referenceId': referenceId!,
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// Metadata related to network configuration.
class NetworkConfig {
  /// Name of the allocated IP range for the private IP AlloyDB cluster, for
  /// example: "google-managed-services-default".
  ///
  /// If set, the instance IPs for this cluster will be created in the allocated
  /// range. The range name must comply with RFC 1035. Specifically, the name
  /// must be 1-63 characters long and match the regular expression
  /// `[a-z]([-a-z0-9]*[a-z0-9])?`. Field name is intended to be consistent with
  /// Cloud SQL.
  ///
  /// Optional.
  core.String? allocatedIpRange;

  /// The resource link for the VPC network in which cluster resources are
  /// created and from which they are accessible via Private IP.
  ///
  /// The network must belong to the same project as the cluster. It is
  /// specified in the form:
  /// `projects/{project_number}/global/networks/{network_id}`. This is required
  /// to create a cluster.
  ///
  /// Optional.
  core.String? network;

  NetworkConfig({
    this.allocatedIpRange,
    this.network,
  });

  NetworkConfig.fromJson(core.Map json_)
      : this(
          allocatedIpRange: json_.containsKey('allocatedIpRange')
              ? json_['allocatedIpRange'] as core.String
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocatedIpRange != null) 'allocatedIpRange': allocatedIpRange!,
        if (network != null) 'network': network!,
      };
}

/// Details of a single node in the instance.
///
/// Nodes in an AlloyDB instance are ephemereal, they can change during update,
/// failover, autohealing and resize operations.
class Node {
  /// The identifier of the VM e.g. "test-read-0601-407e52be-ms3l".
  core.String? id;

  /// The private IP address of the VM e.g. "10.57.0.34".
  core.String? ip;

  /// Determined by state of the compute VM and postgres-service health.
  ///
  /// Compute VM state can have values listed in
  /// https://cloud.google.com/compute/docs/instances/instance-life-cycle and
  /// postgres-service health can have values: HEALTHY and UNHEALTHY.
  core.String? state;

  /// The Compute Engine zone of the VM e.g. "us-central1-b".
  core.String? zoneId;

  Node({
    this.id,
    this.ip,
    this.state,
    this.zoneId,
  });

  Node.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          ip: json_.containsKey('ip') ? json_['ip'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          zoneId: json_.containsKey('zoneId')
              ? json_['zoneId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (ip != null) 'ip': ip!,
        if (state != null) 'state': state!,
        if (zoneId != null) 'zoneId': zoneId!,
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

/// Configuration for the primary cluster.
///
/// It has the list of clusters that are replicating from this cluster. This
/// should be set if and only if the cluster is of type PRIMARY.
class PrimaryConfig {
  /// Names of the clusters that are replicating from this cluster.
  ///
  /// Output only.
  core.List<core.String>? secondaryClusterNames;

  PrimaryConfig({
    this.secondaryClusterNames,
  });

  PrimaryConfig.fromJson(core.Map json_)
      : this(
          secondaryClusterNames: json_.containsKey('secondaryClusterNames')
              ? (json_['secondaryClusterNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secondaryClusterNames != null)
          'secondaryClusterNames': secondaryClusterNames!,
      };
}

/// Message for promoting a Cluster
class PromoteClusterRequest {
  /// The current etag of the Cluster.
  ///
  /// If an etag is provided and does not match the current etag of the Cluster,
  /// deletion will be blocked and an ABORTED error will be returned.
  ///
  /// Optional.
  core.String? etag;

  /// An optional request ID to identify requests.
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
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation (e.g. permission checks and any other
  /// type of validation), but do not actually execute the delete.
  ///
  /// Optional.
  core.bool? validateOnly;

  PromoteClusterRequest({
    this.etag,
    this.requestId,
    this.validateOnly,
  });

  PromoteClusterRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (requestId != null) 'requestId': requestId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// A backup's position in a quantity-based retention queue, of backups with the
/// same source cluster and type, with length, retention, specified by the
/// backup's retention policy.
///
/// Once the position is greater than the retention, the backup is eligible to
/// be garbage collected. Example: 5 backups from the same source cluster and
/// type with a quantity-based retention of 3 and denoted by backup_id
/// (position, retention). Safe: backup_5 (1, 3), backup_4, (2, 3), backup_3 (3,
/// 3). Awaiting garbage collection: backup_2 (4, 3), backup_1 (5, 3)
class QuantityBasedExpiry {
  /// The backup's position among its backups with the same source cluster and
  /// type, by descending chronological order create time(i.e. newest first).
  ///
  /// Output only.
  core.int? retentionCount;

  /// The length of the quantity-based queue, specified by the backup's
  /// retention policy.
  ///
  /// Output only.
  core.int? totalRetentionCount;

  QuantityBasedExpiry({
    this.retentionCount,
    this.totalRetentionCount,
  });

  QuantityBasedExpiry.fromJson(core.Map json_)
      : this(
          retentionCount: json_.containsKey('retentionCount')
              ? json_['retentionCount'] as core.int
              : null,
          totalRetentionCount: json_.containsKey('totalRetentionCount')
              ? json_['totalRetentionCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retentionCount != null) 'retentionCount': retentionCount!,
        if (totalRetentionCount != null)
          'totalRetentionCount': totalRetentionCount!,
      };
}

/// A quantity based policy specifies that a certain number of the most recent
/// successful backups should be retained.
class QuantityBasedRetention {
  /// The number of backups to retain.
  core.int? count;

  QuantityBasedRetention({
    this.count,
  });

  QuantityBasedRetention.fromJson(core.Map json_)
      : this(
          count: json_.containsKey('count') ? json_['count'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
      };
}

/// QueryInsights Instance specific configuration.
class QueryInsightsInstanceConfig {
  /// Number of query execution plans captured by Insights per minute for all
  /// queries combined.
  ///
  /// The default value is 5. Any integer between 0 and 20 is considered valid.
  core.int? queryPlansPerMinute;

  /// Query string length.
  ///
  /// The default value is 1024. Any integer between 256 and 4500 is considered
  /// valid.
  core.int? queryStringLength;

  /// Record application tags for an instance.
  ///
  /// This flag is turned "on" by default.
  core.bool? recordApplicationTags;

  /// Record client address for an instance.
  ///
  /// Client address is PII information. This flag is turned "on" by default.
  core.bool? recordClientAddress;

  QueryInsightsInstanceConfig({
    this.queryPlansPerMinute,
    this.queryStringLength,
    this.recordApplicationTags,
    this.recordClientAddress,
  });

  QueryInsightsInstanceConfig.fromJson(core.Map json_)
      : this(
          queryPlansPerMinute: json_.containsKey('queryPlansPerMinute')
              ? json_['queryPlansPerMinute'] as core.int
              : null,
          queryStringLength: json_.containsKey('queryStringLength')
              ? json_['queryStringLength'] as core.int
              : null,
          recordApplicationTags: json_.containsKey('recordApplicationTags')
              ? json_['recordApplicationTags'] as core.bool
              : null,
          recordClientAddress: json_.containsKey('recordClientAddress')
              ? json_['recordClientAddress'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryPlansPerMinute != null)
          'queryPlansPerMinute': queryPlansPerMinute!,
        if (queryStringLength != null) 'queryStringLength': queryStringLength!,
        if (recordApplicationTags != null)
          'recordApplicationTags': recordApplicationTags!,
        if (recordClientAddress != null)
          'recordClientAddress': recordClientAddress!,
      };
}

/// Configuration for a read pool instance.
class ReadPoolConfig {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  core.int? nodeCount;

  ReadPoolConfig({
    this.nodeCount,
  });

  ReadPoolConfig.fromJson(core.Map json_)
      : this(
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeCount != null) 'nodeCount': nodeCount!,
      };
}

class RestartInstanceRequest {
  /// An optional request ID to identify requests.
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
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation (e.g. permission checks and any other
  /// type of validation), but do not actually execute the restart.
  ///
  /// Optional.
  core.bool? validateOnly;

  RestartInstanceRequest({
    this.requestId,
    this.validateOnly,
  });

  RestartInstanceRequest.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Message for restoring a Cluster from a backup or another cluster at a given
/// point in time.
class RestoreClusterRequest {
  /// Backup source.
  BackupSource? backupSource;

  /// The resource being created
  ///
  /// Required.
  Cluster? cluster;

  /// ID of the requesting object.
  ///
  /// Required.
  core.String? clusterId;

  /// ContinuousBackup source.
  ///
  /// Continuous backup needs to be enabled in the source cluster for this
  /// operation to succeed.
  ContinuousBackupSource? continuousBackupSource;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation (e.g. permission checks and any other
  /// type of validation), but do not actually execute the import request.
  ///
  /// Optional.
  core.bool? validateOnly;

  RestoreClusterRequest({
    this.backupSource,
    this.cluster,
    this.clusterId,
    this.continuousBackupSource,
    this.requestId,
    this.validateOnly,
  });

  RestoreClusterRequest.fromJson(core.Map json_)
      : this(
          backupSource: json_.containsKey('backupSource')
              ? BackupSource.fromJson(
                  json_['backupSource'] as core.Map<core.String, core.dynamic>)
              : null,
          cluster: json_.containsKey('cluster')
              ? Cluster.fromJson(
                  json_['cluster'] as core.Map<core.String, core.dynamic>)
              : null,
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          continuousBackupSource: json_.containsKey('continuousBackupSource')
              ? ContinuousBackupSource.fromJson(json_['continuousBackupSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupSource != null) 'backupSource': backupSource!,
        if (cluster != null) 'cluster': cluster!,
        if (clusterId != null) 'clusterId': clusterId!,
        if (continuousBackupSource != null)
          'continuousBackupSource': continuousBackupSource!,
        if (requestId != null) 'requestId': requestId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Configuration information for the secondary cluster.
///
/// This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfig {
  /// The name of the primary cluster name with the format: *
  /// projects/{project}/locations/{region}/clusters/{cluster_id}
  core.String? primaryClusterName;

  SecondaryConfig({
    this.primaryClusterName,
  });

  SecondaryConfig.fromJson(core.Map json_)
      : this(
          primaryClusterName: json_.containsKey('primaryClusterName')
              ? json_['primaryClusterName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (primaryClusterName != null)
          'primaryClusterName': primaryClusterName!,
      };
}

/// SSL configuration.
class SslConfig {
  /// Certificate Authority (CA) source.
  ///
  /// Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CA_SOURCE_UNSPECIFIED" : Certificate Authority (CA) source not
  /// specified. Defaults to CA_SOURCE_MANAGED.
  /// - "CA_SOURCE_MANAGED" : Certificate Authority (CA) managed by the AlloyDB
  /// Cluster.
  core.String? caSource;

  /// SSL mode.
  ///
  /// Specifies client-server SSL/TLS connection behavior.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SSL_MODE_UNSPECIFIED" : SSL mode not specified. Defaults to
  /// ENCRYPTED_ONLY.
  /// - "SSL_MODE_ALLOW" : SSL connections are optional. CA verification not
  /// enforced.
  /// - "SSL_MODE_REQUIRE" : SSL connections are required. CA verification not
  /// enforced. Clients may use locally self-signed certificates (default psql
  /// client behavior).
  /// - "SSL_MODE_VERIFY_CA" : SSL connections are required. CA verification
  /// enforced. Clients must have certificates signed by a Cluster CA, e.g. via
  /// GenerateClientCertificate.
  /// - "ALLOW_UNENCRYPTED_AND_ENCRYPTED" : SSL connections are optional. CA
  /// verification not enforced.
  /// - "ENCRYPTED_ONLY" : SSL connections are required. CA verification not
  /// enforced.
  core.String? sslMode;

  SslConfig({
    this.caSource,
    this.sslMode,
  });

  SslConfig.fromJson(core.Map json_)
      : this(
          caSource: json_.containsKey('caSource')
              ? json_['caSource'] as core.String
              : null,
          sslMode: json_.containsKey('sslMode')
              ? json_['sslMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caSource != null) 'caSource': caSource!,
        if (sslMode != null) 'sslMode': sslMode!,
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

/// Restrictions on STRING type values
class StringRestrictions {
  /// The list of allowed values, if bounded.
  ///
  /// This field will be empty if there is a unbounded number of allowed values.
  core.List<core.String>? allowedValues;

  StringRestrictions({
    this.allowedValues,
  });

  StringRestrictions.fromJson(core.Map json_)
      : this(
          allowedValues: json_.containsKey('allowedValues')
              ? (json_['allowedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedValues != null) 'allowedValues': allowedValues!,
      };
}

/// SupportedDatabaseFlag gives general information about a database flag, like
/// type and allowed values.
///
/// This is a static value that is defined on the server side, and it cannot be
/// modified by callers. To set the Database flags on a particular Instance, a
/// caller should modify the Instance.database_flags field.
class SupportedDatabaseFlag {
  /// Whether the database flag accepts multiple values.
  ///
  /// If true, a comma-separated list of stringified values may be specified.
  core.bool? acceptsMultipleValues;

  /// The name of the database flag, e.g. "max_allowed_packets".
  ///
  /// The is a possibly key for the Instance.database_flags map field.
  core.String? flagName;

  /// Restriction on INTEGER type value.
  IntegerRestrictions? integerRestrictions;

  /// The name of the flag resource, following Google Cloud conventions, e.g.: *
  /// projects/{project}/locations/{location}/flags/{flag} This field currently
  /// has no semantic meaning.
  core.String? name;

  /// Whether setting or updating this flag on an Instance requires a database
  /// restart.
  ///
  /// If a flag that requires database restart is set, the backend will
  /// automatically restart the database (making sure to satisfy any
  /// availability SLO's).
  core.bool? requiresDbRestart;

  /// Restriction on STRING type value.
  StringRestrictions? stringRestrictions;

  /// Major database engine versions for which this flag is supported.
  core.List<core.String>? supportedDbVersions;

  ///
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : This is an unknown flag type.
  /// - "STRING" : String type flag.
  /// - "INTEGER" : Integer type flag.
  /// - "FLOAT" : Float type flag.
  /// - "NONE" : Denotes that the flag does not accept any values.
  core.String? valueType;

  SupportedDatabaseFlag({
    this.acceptsMultipleValues,
    this.flagName,
    this.integerRestrictions,
    this.name,
    this.requiresDbRestart,
    this.stringRestrictions,
    this.supportedDbVersions,
    this.valueType,
  });

  SupportedDatabaseFlag.fromJson(core.Map json_)
      : this(
          acceptsMultipleValues: json_.containsKey('acceptsMultipleValues')
              ? json_['acceptsMultipleValues'] as core.bool
              : null,
          flagName: json_.containsKey('flagName')
              ? json_['flagName'] as core.String
              : null,
          integerRestrictions: json_.containsKey('integerRestrictions')
              ? IntegerRestrictions.fromJson(json_['integerRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          requiresDbRestart: json_.containsKey('requiresDbRestart')
              ? json_['requiresDbRestart'] as core.bool
              : null,
          stringRestrictions: json_.containsKey('stringRestrictions')
              ? StringRestrictions.fromJson(json_['stringRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          supportedDbVersions: json_.containsKey('supportedDbVersions')
              ? (json_['supportedDbVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceptsMultipleValues != null)
          'acceptsMultipleValues': acceptsMultipleValues!,
        if (flagName != null) 'flagName': flagName!,
        if (integerRestrictions != null)
          'integerRestrictions': integerRestrictions!,
        if (name != null) 'name': name!,
        if (requiresDbRestart != null) 'requiresDbRestart': requiresDbRestart!,
        if (stringRestrictions != null)
          'stringRestrictions': stringRestrictions!,
        if (supportedDbVersions != null)
          'supportedDbVersions': supportedDbVersions!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// A time based retention policy specifies that all backups within a certain
/// time period should be retained.
class TimeBasedRetention {
  /// The retention period.
  core.String? retentionPeriod;

  TimeBasedRetention({
    this.retentionPeriod,
  });

  TimeBasedRetention.fromJson(core.Map json_)
      : this(
          retentionPeriod: json_.containsKey('retentionPeriod')
              ? json_['retentionPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retentionPeriod != null) 'retentionPeriod': retentionPeriod!,
      };
}

/// Message describing User object.
class User {
  /// List of database roles this user has.
  ///
  /// The database role strings are subject to the PostgreSQL naming
  /// conventions.
  ///
  /// Optional.
  core.List<core.String>? databaseRoles;

  /// Name of the resource in the form of
  /// projects/{project}/locations/{location}/cluster/{cluster}/users/{user}.
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// Password for the user.
  core.String? password;

  /// Type of this user.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "USER_TYPE_UNSPECIFIED" : Unspecified user type.
  /// - "ALLOYDB_BUILT_IN" : The default user type that authenticates via
  /// password-based authentication.
  /// - "ALLOYDB_IAM_USER" : Database user that can authenticate via IAM-Based
  /// authentication.
  core.String? userType;

  User({
    this.databaseRoles,
    this.name,
    this.password,
    this.userType,
  });

  User.fromJson(core.Map json_)
      : this(
          databaseRoles: json_.containsKey('databaseRoles')
              ? (json_['databaseRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          userType: json_.containsKey('userType')
              ? json_['userType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseRoles != null) 'databaseRoles': databaseRoles!,
        if (name != null) 'name': name!,
        if (password != null) 'password': password!,
        if (userType != null) 'userType': userType!,
      };
}

/// The username/password for a database user.
///
/// Used for specifying initial users at cluster creation time.
class UserPassword {
  /// The initial password for the user.
  core.String? password;

  /// The database username.
  core.String? user;

  UserPassword({
    this.password,
    this.user,
  });

  UserPassword.fromJson(core.Map json_)
      : this(
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
        if (user != null) 'user': user!,
      };
}

/// A weekly schedule starts a backup at prescribed start times within a day,
/// for the specified days of the week.
///
/// The weekly schedule message is flexible and can be used to create many types
/// of schedules. For example, to have a daily backup that starts at 22:00,
/// configure the `start_times` field to have one element "22:00" and the
/// `days_of_week` field to have all seven days of the week.
class WeeklySchedule {
  /// The days of the week to perform a backup.
  ///
  /// If this field is left empty, the default of every day of the week is used.
  core.List<core.String>? daysOfWeek;

  /// The times during the day to start a backup.
  ///
  /// The start times are assumed to be in UTC and to be an exact hour (e.g.,
  /// 04:00:00). If no start times are provided, a single fixed start time is
  /// chosen arbitrarily.
  core.List<GoogleTypeTimeOfDay>? startTimes;

  WeeklySchedule({
    this.daysOfWeek,
    this.startTimes,
  });

  WeeklySchedule.fromJson(core.Map json_)
      : this(
          daysOfWeek: json_.containsKey('daysOfWeek')
              ? (json_['daysOfWeek'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          startTimes: json_.containsKey('startTimes')
              ? (json_['startTimes'] as core.List)
                  .map((value) => GoogleTypeTimeOfDay.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (startTimes != null) 'startTimes': startTimes!,
      };
}
