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

  CloudAlloyDBAdminApi(
    http.Client client, {
    core.String rootUrl = 'https://alloydb.googleapis.com/',
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
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
    return GoogleCloudLocationListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'backupId': ?backupId == null ? null : [backupId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'etag': ?etag == null ? null : [etag],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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

  /// Gets details of a single Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [view] - Optional. The view of the backup to return.
  /// Possible string values are:
  /// - "BACKUP_VIEW_UNSPECIFIED" : Value unspecified, equivalent to BASIC.
  /// - "BACKUP_VIEW_BASIC" : Responses include all fields that aren't
  /// explicitly gated behind another view.
  /// - "BACKUP_VIEW_CLUSTER_DELETED" : Response include all the field from
  /// BASIC plus the field cluster_deleted, which specifies if the cluster
  /// corresponding to this backup is deleted.
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
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'view': ?view == null ? null : [view],
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
  /// [view] - Optional. The view of the backup to return.
  /// Possible string values are:
  /// - "BACKUP_VIEW_UNSPECIFIED" : Value unspecified, equivalent to BASIC.
  /// - "BACKUP_VIEW_BASIC" : Responses include all fields that aren't
  /// explicitly gated behind another view.
  /// - "BACKUP_VIEW_CLUSTER_DELETED" : Response include all the field from
  /// BASIC plus the field cluster_deleted, which specifies if the cluster
  /// corresponding to this backup is deleted.
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
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'view': ?view == null ? null : [view],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation, for
  /// example, permission checks and any other type of validation, but does not
  /// actually execute the create request.
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
      'clusterId': ?clusterId == null ? null : [clusterId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation, for
  /// example, permission checks and any other type of validation, but does not
  /// actually execute the create request.
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
      'clusterId': ?clusterId == null ? null : [clusterId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation, for
  /// example, permission checks and any other type of validation, but does not
  /// actually execute the create request.
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
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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

  /// Exports data from the cluster.
  ///
  /// Imperative only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the cluster.
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
  async.Future<Operation> export(
    ExportClusterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
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
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports data to the cluster.
  ///
  /// Imperative only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the cluster.
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
  async.Future<Operation> import(
    ImportClusterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Cluster resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, performs request validation, for
  /// example, permission checks and any other type of validation, but does not
  /// actually execute the create request.
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
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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

  /// Restores an AlloyDB cluster from a CloudSQL resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location of the new cluster. For the required
  /// format, see the comment on Cluster.name field.
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
  async.Future<Operation> restoreFromCloudSQL(
    RestoreFromCloudSQLRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/clusters:restoreFromCloudSQL';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Switches the roles of PRIMARY and SECONDARY clusters without any data
  /// loss.
  ///
  /// This promotes the SECONDARY cluster to PRIMARY and sets up the original
  /// PRIMARY cluster to replicate from this newly promoted cluster.
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
  async.Future<Operation> switchover(
    SwitchoverClusterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':switchover';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Upgrades a single Cluster.
  ///
  /// Imperative only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the cluster.
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
  async.Future<Operation> upgrade(
    UpgradeClusterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':upgrade';

    final response_ = await _requester.request(
      url_,
      'PATCH',
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation, for
  /// example, permission checks and any other type of validation, but does not
  /// actually execute the create request.
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
      'instanceId': ?instanceId == null ? null : [instanceId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation, for
  /// example, permission checks and any other type of validation, but does not
  /// actually execute the create request.
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
      'instanceId': ?instanceId == null ? null : [instanceId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, performs request validation, for
  /// example, permission checks and any other type of validation, but does not
  /// actually execute the create request.
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
      'etag': ?etag == null ? null : [etag],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'view': ?view == null ? null : [view],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectionInfo';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ConnectionInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Instance resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, performs request validation, for
  /// example, permission checks and any other type of validation, but does not
  /// actually execute the create request.
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
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'userId': ?userId == null ? null : [userId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
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
  async.Future<User> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
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
  /// [scope] - Optional. The scope for which supported flags are requested. If
  /// not specified, default is DATABASE.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : The scope of the flag is not specified. Default is
  /// DATABASE.
  /// - "DATABASE" : The flag is a database flag.
  /// - "CONNECTION_POOL" : The flag is a connection pool flag.
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
    core.String? scope,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'scope': ?scope == null ? null : [scope],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/supportedDatabaseFlags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSupportedDatabaseFlagsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// AuthorizedNetwork contains metadata for an authorized network.
class AuthorizedNetwork {
  /// CIDR range for one authorzied network of the instance.
  core.String? cidrRange;

  AuthorizedNetwork({this.cidrRange});

  AuthorizedNetwork.fromJson(core.Map json_)
    : this(cidrRange: json_['cidrRange'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final cidrRange = this.cidrRange;
    return {'cidrRange': ?cidrRange};
  }
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
  /// When this field is not specified, the backup will use the cluster's
  /// encryption config.
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
        backupWindow: json_['backupWindow'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        encryptionConfig: json_.containsKey('encryptionConfig')
            ? EncryptionConfig.fromJson(
                json_['encryptionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        location: json_['location'] as core.String?,
        quantityBasedRetention: json_.containsKey('quantityBasedRetention')
            ? QuantityBasedRetention.fromJson(
                json_['quantityBasedRetention']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeBasedRetention: json_.containsKey('timeBasedRetention')
            ? TimeBasedRetention.fromJson(
                json_['timeBasedRetention']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        weeklySchedule: json_.containsKey('weeklySchedule')
            ? WeeklySchedule.fromJson(
                json_['weeklySchedule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupWindow = this.backupWindow;
    final enabled = this.enabled;
    final encryptionConfig = this.encryptionConfig;
    final labels = this.labels;
    final location = this.location;
    final quantityBasedRetention = this.quantityBasedRetention;
    final timeBasedRetention = this.timeBasedRetention;
    final weeklySchedule = this.weeklySchedule;
    return {
      'backupWindow': ?backupWindow,
      'enabled': ?enabled,
      'encryptionConfig': ?encryptionConfig,
      'labels': ?labels,
      'location': ?location,
      'quantityBasedRetention': ?quantityBasedRetention,
      'timeBasedRetention': ?timeBasedRetention,
      'weeklySchedule': ?weeklySchedule,
    };
  }
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

  /// Timestamp when the resource finished being created.
  ///
  /// Output only.
  core.String? createCompletionTime;

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
  /// - "POSTGRES_16" : The database version is Postgres 16.
  /// - "POSTGRES_17" : The database version is Postgres 17.
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

  /// Input only.
  ///
  /// Immutable. Tag keys/values directly bound to this resource. For example:
  /// ``` "123/environment": "production", "123/costCenter": "marketing" ```
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

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

  /// Update time stamp Users should not infer any meaning from this field.
  ///
  /// Its value is generally unrelated to the timing of the backup creation
  /// operation.
  ///
  /// Output only.
  core.String? updateTime;

  Backup({
    this.annotations,
    this.clusterName,
    this.clusterUid,
    this.createCompletionTime,
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
    this.tags,
    this.type,
    this.uid,
    this.updateTime,
  });

  Backup.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        clusterName: json_['clusterName'] as core.String?,
        clusterUid: json_['clusterUid'] as core.String?,
        createCompletionTime: json_['createCompletionTime'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        databaseVersion: json_['databaseVersion'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        encryptionConfig: json_.containsKey('encryptionConfig')
            ? EncryptionConfig.fromJson(
                json_['encryptionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        expiryQuantity: json_.containsKey('expiryQuantity')
            ? QuantityBasedExpiry.fromJson(
                json_['expiryQuantity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        expiryTime: json_['expiryTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        sizeBytes: json_['sizeBytes'] as core.String?,
        state: json_['state'] as core.String?,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final clusterName = this.clusterName;
    final clusterUid = this.clusterUid;
    final createCompletionTime = this.createCompletionTime;
    final createTime = this.createTime;
    final databaseVersion = this.databaseVersion;
    final deleteTime = this.deleteTime;
    final description = this.description;
    final displayName = this.displayName;
    final encryptionConfig = this.encryptionConfig;
    final encryptionInfo = this.encryptionInfo;
    final etag = this.etag;
    final expiryQuantity = this.expiryQuantity;
    final expiryTime = this.expiryTime;
    final labels = this.labels;
    final name = this.name;
    final reconciling = this.reconciling;
    final satisfiesPzs = this.satisfiesPzs;
    final sizeBytes = this.sizeBytes;
    final state = this.state;
    final tags = this.tags;
    final type = this.type;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'clusterName': ?clusterName,
      'clusterUid': ?clusterUid,
      'createCompletionTime': ?createCompletionTime,
      'createTime': ?createTime,
      'databaseVersion': ?databaseVersion,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'displayName': ?displayName,
      'encryptionConfig': ?encryptionConfig,
      'encryptionInfo': ?encryptionInfo,
      'etag': ?etag,
      'expiryQuantity': ?expiryQuantity,
      'expiryTime': ?expiryTime,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'satisfiesPzs': ?satisfiesPzs,
      'sizeBytes': ?sizeBytes,
      'state': ?state,
      'tags': ?tags,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// Message describing a BackupDrBackupSource.
class BackupDrBackupSource {
  /// The name of the backup resource with the format: *
  /// projects/{project}/locations/{location}/backupVaults/{backupvault_id}/dataSources/{datasource_id}/backups/{backup_id}
  ///
  /// Required.
  core.String? backup;

  BackupDrBackupSource({this.backup});

  BackupDrBackupSource.fromJson(core.Map json_)
    : this(backup: json_['backup'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final backup = this.backup;
    return {'backup': ?backup};
  }
}

/// Information about a single window when BackupDR was enabled for this
/// cluster.
class BackupDrEnabledWindow {
  /// Whether automated backup was previously enabled prior to enabling BackupDR
  /// protection for this cluster.
  core.bool? automatedBackupPreviouslyEnabled;

  /// The BackupPlanAssociation resource that was used to enable BackupDR
  /// protection for this cluster.
  core.String? backupPlanAssociation;

  /// The retention set for the continuous backup that was previously enabled
  /// prior to enabling BackupDR protection for this cluster.
  core.int? continuousBackupPreviousRecoveryWindowDays;

  /// Whether continuous backup was previously enabled prior to enabling
  /// BackupDR protection for this cluster.
  core.bool? continuousBackupPreviouslyEnabled;

  /// The time when continuous backup was previously enabled prior to enabling
  /// BackupDR protection for this cluster.
  core.String? continuousBackupPreviouslyEnabledTime;

  /// The DataSource resource that represents the cluster in BackupDR.
  core.String? dataSource;

  /// Time when the BackupDR protection for this cluster was disabled.
  ///
  /// This field will be empty if this BackupDR window is the `current_window`.
  core.String? disabledTime;

  /// Time when the BackupDR protection for this cluster was enabled.
  core.String? enabledTime;

  /// The retention period for logs generated by BackupDR for this cluster.
  core.String? logRetentionPeriod;

  BackupDrEnabledWindow({
    this.automatedBackupPreviouslyEnabled,
    this.backupPlanAssociation,
    this.continuousBackupPreviousRecoveryWindowDays,
    this.continuousBackupPreviouslyEnabled,
    this.continuousBackupPreviouslyEnabledTime,
    this.dataSource,
    this.disabledTime,
    this.enabledTime,
    this.logRetentionPeriod,
  });

  BackupDrEnabledWindow.fromJson(core.Map json_)
    : this(
        automatedBackupPreviouslyEnabled:
            json_['automatedBackupPreviouslyEnabled'] as core.bool?,
        backupPlanAssociation: json_['backupPlanAssociation'] as core.String?,
        continuousBackupPreviousRecoveryWindowDays:
            json_['continuousBackupPreviousRecoveryWindowDays'] as core.int?,
        continuousBackupPreviouslyEnabled:
            json_['continuousBackupPreviouslyEnabled'] as core.bool?,
        continuousBackupPreviouslyEnabledTime:
            json_['continuousBackupPreviouslyEnabledTime'] as core.String?,
        dataSource: json_['dataSource'] as core.String?,
        disabledTime: json_['disabledTime'] as core.String?,
        enabledTime: json_['enabledTime'] as core.String?,
        logRetentionPeriod: json_['logRetentionPeriod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final automatedBackupPreviouslyEnabled =
        this.automatedBackupPreviouslyEnabled;
    final backupPlanAssociation = this.backupPlanAssociation;
    final continuousBackupPreviousRecoveryWindowDays =
        this.continuousBackupPreviousRecoveryWindowDays;
    final continuousBackupPreviouslyEnabled =
        this.continuousBackupPreviouslyEnabled;
    final continuousBackupPreviouslyEnabledTime =
        this.continuousBackupPreviouslyEnabledTime;
    final dataSource = this.dataSource;
    final disabledTime = this.disabledTime;
    final enabledTime = this.enabledTime;
    final logRetentionPeriod = this.logRetentionPeriod;
    return {
      'automatedBackupPreviouslyEnabled': ?automatedBackupPreviouslyEnabled,
      'backupPlanAssociation': ?backupPlanAssociation,
      'continuousBackupPreviousRecoveryWindowDays':
          ?continuousBackupPreviousRecoveryWindowDays,
      'continuousBackupPreviouslyEnabled': ?continuousBackupPreviouslyEnabled,
      'continuousBackupPreviouslyEnabledTime':
          ?continuousBackupPreviouslyEnabledTime,
      'dataSource': ?dataSource,
      'disabledTime': ?disabledTime,
      'enabledTime': ?enabledTime,
      'logRetentionPeriod': ?logRetentionPeriod,
    };
  }
}

/// Information about BackupDR protection for this cluster.
class BackupDrInfo {
  /// The current BackupDR configuration for this cluster.
  ///
  /// If BackupDR protection is not enabled for this cluster, this field will be
  /// empty.
  BackupDrEnabledWindow? currentWindow;

  /// Windows during which BackupDR was enabled for this cluster, along with
  /// associated configuration for that window.
  ///
  /// These are used to determine points-in-time for which restores can be
  /// performed. The windows are ordered with the most recent window last.
  /// Windows are mutally exclusive. Windows which closed more than 1 year ago
  /// will be removed from this list.
  core.List<BackupDrEnabledWindow>? previousWindows;

  BackupDrInfo({this.currentWindow, this.previousWindows});

  BackupDrInfo.fromJson(core.Map json_)
    : this(
        currentWindow: json_.containsKey('currentWindow')
            ? BackupDrEnabledWindow.fromJson(
                json_['currentWindow'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        previousWindows: (json_['previousWindows'] as core.List?)
            ?.map(
              (value) => BackupDrEnabledWindow.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currentWindow = this.currentWindow;
    final previousWindows = this.previousWindows;
    return {
      'currentWindow': ?currentWindow,
      'previousWindows': ?previousWindows,
    };
  }
}

/// Message describing a BackupDrPitrSource.
class BackupDrPitrSource {
  /// The name of the backup resource with the format: *
  /// projects/{project}/locations/{location}/backupVaults/{backupvault_id}/dataSources/{datasource_id}
  ///
  /// Required.
  core.String? dataSource;

  /// The point in time to restore to.
  ///
  /// Required.
  core.String? pointInTime;

  BackupDrPitrSource({this.dataSource, this.pointInTime});

  BackupDrPitrSource.fromJson(core.Map json_)
    : this(
        dataSource: json_['dataSource'] as core.String?,
        pointInTime: json_['pointInTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSource = this.dataSource;
    final pointInTime = this.pointInTime;
    return {'dataSource': ?dataSource, 'pointInTime': ?pointInTime};
  }
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

  BackupSource({this.backupName, this.backupUid});

  BackupSource.fromJson(core.Map json_)
    : this(
        backupName: json_['backupName'] as core.String?,
        backupUid: json_['backupUid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupName = this.backupName;
    final backupUid = this.backupUid;
    return {'backupName': ?backupName, 'backupUid': ?backupUid};
  }
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

  /// SSL configuration option for this instance.
  ///
  /// Optional.
  SslConfig? sslConfig;

  ClientConnectionConfig({this.requireConnectors, this.sslConfig});

  ClientConnectionConfig.fromJson(core.Map json_)
    : this(
        requireConnectors: json_['requireConnectors'] as core.bool?,
        sslConfig: json_.containsKey('sslConfig')
            ? SslConfig.fromJson(
                json_['sslConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requireConnectors = this.requireConnectors;
    final sslConfig = this.sslConfig;
    return {'requireConnectors': ?requireConnectors, 'sslConfig': ?sslConfig};
  }
}

/// The source CloudSQL backup resource.
class CloudSQLBackupRunSource {
  /// The CloudSQL backup run ID.
  ///
  /// Required.
  core.String? backupRunId;

  /// The CloudSQL instance ID.
  ///
  /// Required.
  core.String? instanceId;

  /// The project ID of the source CloudSQL instance.
  ///
  /// This should be the same as the AlloyDB cluster's project.
  core.String? project;

  CloudSQLBackupRunSource({this.backupRunId, this.instanceId, this.project});

  CloudSQLBackupRunSource.fromJson(core.Map json_)
    : this(
        backupRunId: json_['backupRunId'] as core.String?,
        instanceId: json_['instanceId'] as core.String?,
        project: json_['project'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupRunId = this.backupRunId;
    final instanceId = this.instanceId;
    final project = this.project;
    return {
      'backupRunId': ?backupRunId,
      'instanceId': ?instanceId,
      'project': ?project,
    };
  }
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

  /// Cluster created from a BackupDR backup.
  ///
  /// Output only.
  BackupDrBackupSource? backupdrBackupSource;

  /// Output only information about BackupDR protection for this cluster.
  ///
  /// Output only.
  BackupDrInfo? backupdrInfo;

  /// Cluster created from CloudSQL snapshot.
  ///
  /// Output only.
  CloudSQLBackupRunSource? cloudsqlBackupRunSource;

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
  /// - "POSTGRES_16" : The database version is Postgres 16.
  /// - "POSTGRES_17" : The database version is Postgres 17.
  core.String? databaseVersion;

  /// Configuration for Dataplex integration.
  ///
  /// Optional.
  DataplexConfig? dataplexConfig;

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

  /// The maintenance schedule for the cluster, generated for a specific rollout
  /// if a maintenance window is set.
  ///
  /// Output only.
  MaintenanceSchedule? maintenanceSchedule;

  /// The maintenance update policy determines when to allow or deny updates.
  ///
  /// Optional.
  MaintenanceUpdatePolicy? maintenanceUpdatePolicy;

  /// Input only.
  ///
  /// Policy to use to automatically select the maintenance version to which to
  /// update the cluster's instances.
  /// Possible string values are:
  /// - "MAINTENANCE_VERSION_SELECTION_POLICY_UNSPECIFIED" : The maintenance
  /// version selection policy is not specified.
  /// - "MAINTENANCE_VERSION_SELECTION_POLICY_LATEST" : Use the latest available
  /// maintenance version.
  /// - "MAINTENANCE_VERSION_SELECTION_POLICY_DEFAULT" : Use the current default
  /// maintenance version.
  core.String? maintenanceVersionSelectionPolicy;

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

  /// The configuration for Private Service Connect (PSC) for the cluster.
  ///
  /// Optional.
  PscConfig? pscConfig;

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
  /// - "STOPPED" : This is unused. Even when all instances in the cluster are
  /// stopped, the cluster remains in READY state.
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
  /// - "SWITCHOVER" : The cluster has entered switchover state. All updates on
  /// cluster and its associated instances are restricted while the cluster is
  /// in this state.
  core.String? state;

  /// Subscription type of the cluster.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SUBSCRIPTION_TYPE_UNSPECIFIED" : This is an unknown subscription type.
  /// By default, the subscription type is STANDARD.
  /// - "STANDARD" : Standard subscription.
  /// - "TRIAL" : Trial subscription.
  core.String? subscriptionType;

  /// Input only.
  ///
  /// Immutable. Tag keys/values directly bound to this resource. For example:
  /// ``` "123/environment": "production", "123/costCenter": "marketing" ```
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

  /// Metadata for free trial clusters
  ///
  /// Output only.
  TrialMetadata? trialMetadata;

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
    this.backupdrBackupSource,
    this.backupdrInfo,
    this.cloudsqlBackupRunSource,
    this.clusterType,
    this.continuousBackupConfig,
    this.continuousBackupInfo,
    this.createTime,
    this.databaseVersion,
    this.dataplexConfig,
    this.deleteTime,
    this.displayName,
    this.encryptionConfig,
    this.encryptionInfo,
    this.etag,
    this.initialUser,
    this.labels,
    this.maintenanceSchedule,
    this.maintenanceUpdatePolicy,
    this.maintenanceVersionSelectionPolicy,
    this.migrationSource,
    this.name,
    this.network,
    this.networkConfig,
    this.primaryConfig,
    this.pscConfig,
    this.reconciling,
    this.satisfiesPzs,
    this.secondaryConfig,
    this.sslConfig,
    this.state,
    this.subscriptionType,
    this.tags,
    this.trialMetadata,
    this.uid,
    this.updateTime,
  });

  Cluster.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        automatedBackupPolicy: json_.containsKey('automatedBackupPolicy')
            ? AutomatedBackupPolicy.fromJson(
                json_['automatedBackupPolicy']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        backupSource: json_.containsKey('backupSource')
            ? BackupSource.fromJson(
                json_['backupSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        backupdrBackupSource: json_.containsKey('backupdrBackupSource')
            ? BackupDrBackupSource.fromJson(
                json_['backupdrBackupSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        backupdrInfo: json_.containsKey('backupdrInfo')
            ? BackupDrInfo.fromJson(
                json_['backupdrInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudsqlBackupRunSource: json_.containsKey('cloudsqlBackupRunSource')
            ? CloudSQLBackupRunSource.fromJson(
                json_['cloudsqlBackupRunSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        clusterType: json_['clusterType'] as core.String?,
        continuousBackupConfig: json_.containsKey('continuousBackupConfig')
            ? ContinuousBackupConfig.fromJson(
                json_['continuousBackupConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        continuousBackupInfo: json_.containsKey('continuousBackupInfo')
            ? ContinuousBackupInfo.fromJson(
                json_['continuousBackupInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        databaseVersion: json_['databaseVersion'] as core.String?,
        dataplexConfig: json_.containsKey('dataplexConfig')
            ? DataplexConfig.fromJson(
                json_['dataplexConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteTime: json_['deleteTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        encryptionConfig: json_.containsKey('encryptionConfig')
            ? EncryptionConfig.fromJson(
                json_['encryptionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        initialUser: json_.containsKey('initialUser')
            ? UserPassword.fromJson(
                json_['initialUser'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        maintenanceSchedule: json_.containsKey('maintenanceSchedule')
            ? MaintenanceSchedule.fromJson(
                json_['maintenanceSchedule']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        maintenanceUpdatePolicy: json_.containsKey('maintenanceUpdatePolicy')
            ? MaintenanceUpdatePolicy.fromJson(
                json_['maintenanceUpdatePolicy']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        maintenanceVersionSelectionPolicy:
            json_['maintenanceVersionSelectionPolicy'] as core.String?,
        migrationSource: json_.containsKey('migrationSource')
            ? MigrationSource.fromJson(
                json_['migrationSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        networkConfig: json_.containsKey('networkConfig')
            ? NetworkConfig.fromJson(
                json_['networkConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        primaryConfig: json_.containsKey('primaryConfig')
            ? PrimaryConfig.fromJson(
                json_['primaryConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pscConfig: json_.containsKey('pscConfig')
            ? PscConfig.fromJson(
                json_['pscConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reconciling: json_['reconciling'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        secondaryConfig: json_.containsKey('secondaryConfig')
            ? SecondaryConfig.fromJson(
                json_['secondaryConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sslConfig: json_.containsKey('sslConfig')
            ? SslConfig.fromJson(
                json_['sslConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
        subscriptionType: json_['subscriptionType'] as core.String?,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        trialMetadata: json_.containsKey('trialMetadata')
            ? TrialMetadata.fromJson(
                json_['trialMetadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final automatedBackupPolicy = this.automatedBackupPolicy;
    final backupSource = this.backupSource;
    final backupdrBackupSource = this.backupdrBackupSource;
    final backupdrInfo = this.backupdrInfo;
    final cloudsqlBackupRunSource = this.cloudsqlBackupRunSource;
    final clusterType = this.clusterType;
    final continuousBackupConfig = this.continuousBackupConfig;
    final continuousBackupInfo = this.continuousBackupInfo;
    final createTime = this.createTime;
    final databaseVersion = this.databaseVersion;
    final dataplexConfig = this.dataplexConfig;
    final deleteTime = this.deleteTime;
    final displayName = this.displayName;
    final encryptionConfig = this.encryptionConfig;
    final encryptionInfo = this.encryptionInfo;
    final etag = this.etag;
    final initialUser = this.initialUser;
    final labels = this.labels;
    final maintenanceSchedule = this.maintenanceSchedule;
    final maintenanceUpdatePolicy = this.maintenanceUpdatePolicy;
    final maintenanceVersionSelectionPolicy =
        this.maintenanceVersionSelectionPolicy;
    final migrationSource = this.migrationSource;
    final name = this.name;
    final network = this.network;
    final networkConfig = this.networkConfig;
    final primaryConfig = this.primaryConfig;
    final pscConfig = this.pscConfig;
    final reconciling = this.reconciling;
    final satisfiesPzs = this.satisfiesPzs;
    final secondaryConfig = this.secondaryConfig;
    final sslConfig = this.sslConfig;
    final state = this.state;
    final subscriptionType = this.subscriptionType;
    final tags = this.tags;
    final trialMetadata = this.trialMetadata;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'automatedBackupPolicy': ?automatedBackupPolicy,
      'backupSource': ?backupSource,
      'backupdrBackupSource': ?backupdrBackupSource,
      'backupdrInfo': ?backupdrInfo,
      'cloudsqlBackupRunSource': ?cloudsqlBackupRunSource,
      'clusterType': ?clusterType,
      'continuousBackupConfig': ?continuousBackupConfig,
      'continuousBackupInfo': ?continuousBackupInfo,
      'createTime': ?createTime,
      'databaseVersion': ?databaseVersion,
      'dataplexConfig': ?dataplexConfig,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'encryptionConfig': ?encryptionConfig,
      'encryptionInfo': ?encryptionInfo,
      'etag': ?etag,
      'initialUser': ?initialUser,
      'labels': ?labels,
      'maintenanceSchedule': ?maintenanceSchedule,
      'maintenanceUpdatePolicy': ?maintenanceUpdatePolicy,
      'maintenanceVersionSelectionPolicy': ?maintenanceVersionSelectionPolicy,
      'migrationSource': ?migrationSource,
      'name': ?name,
      'network': ?network,
      'networkConfig': ?networkConfig,
      'primaryConfig': ?primaryConfig,
      'pscConfig': ?pscConfig,
      'reconciling': ?reconciling,
      'satisfiesPzs': ?satisfiesPzs,
      'secondaryConfig': ?secondaryConfig,
      'sslConfig': ?sslConfig,
      'state': ?state,
      'subscriptionType': ?subscriptionType,
      'tags': ?tags,
      'trialMetadata': ?trialMetadata,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
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
        instanceUid: json_['instanceUid'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        name: json_['name'] as core.String?,
        publicIpAddress: json_['publicIpAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instanceUid = this.instanceUid;
    final ipAddress = this.ipAddress;
    final name = this.name;
    final publicIpAddress = this.publicIpAddress;
    return {
      'instanceUid': ?instanceUid,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'publicIpAddress': ?publicIpAddress,
    };
  }
}

/// Configuration for Managed Connection Pool (MCP).
class ConnectionPoolConfig {
  /// Whether to enable Managed Connection Pool (MCP).
  ///
  /// Optional.
  core.bool? enabled;

  /// Connection Pool flags, as a list of "key": "value" pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? flags;

  /// The number of running poolers per instance.
  ///
  /// Output only.
  core.int? poolerCount;

  ConnectionPoolConfig({this.enabled, this.flags, this.poolerCount});

  ConnectionPoolConfig.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        flags: (json_['flags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        poolerCount: json_['poolerCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final flags = this.flags;
    final poolerCount = this.poolerCount;
    return {'enabled': ?enabled, 'flags': ?flags, 'poolerCount': ?poolerCount};
  }
}

/// ContinuousBackupConfig describes the continuous backups recovery
/// configurations of a cluster.
class ContinuousBackupConfig {
  /// Whether ContinuousBackup is enabled.
  core.bool? enabled;

  /// The encryption config can be specified to encrypt the backups with a
  /// customer-managed encryption key (CMEK).
  ///
  /// When this field is not specified, the backup will use the cluster's
  /// encryption config.
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
        enabled: json_['enabled'] as core.bool?,
        encryptionConfig: json_.containsKey('encryptionConfig')
            ? EncryptionConfig.fromJson(
                json_['encryptionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        recoveryWindowDays: json_['recoveryWindowDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final encryptionConfig = this.encryptionConfig;
    final recoveryWindowDays = this.recoveryWindowDays;
    return {
      'enabled': ?enabled,
      'encryptionConfig': ?encryptionConfig,
      'recoveryWindowDays': ?recoveryWindowDays,
    };
  }
}

/// ContinuousBackupInfo describes the continuous backup properties of a
/// cluster.
class ContinuousBackupInfo {
  /// The earliest restorable time that can be restored to.
  ///
  /// If continuous backups and recovery was recently enabled, the earliest
  /// restorable time is the creation time of the earliest eligible backup
  /// within this cluster's continuous backup recovery window. After a cluster
  /// has had continuous backups enabled for the duration of its recovery
  /// window, the earliest restorable time becomes "now minus the recovery
  /// window". For example, assuming a point in time recovery is attempted at
  /// 04/16/2025 3:23:00PM with a 14d recovery window, the earliest restorable
  /// time would be 04/02/2025 3:23:00PM. This field is only visible if the
  /// CLUSTER_VIEW_CONTINUOUS_BACKUP cluster view is provided.
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
        earliestRestorableTime: json_['earliestRestorableTime'] as core.String?,
        enabledTime: json_['enabledTime'] as core.String?,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        schedule: (json_['schedule'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final earliestRestorableTime = this.earliestRestorableTime;
    final enabledTime = this.enabledTime;
    final encryptionInfo = this.encryptionInfo;
    final schedule = this.schedule;
    return {
      'earliestRestorableTime': ?earliestRestorableTime,
      'enabledTime': ?enabledTime,
      'encryptionInfo': ?encryptionInfo,
      'schedule': ?schedule,
    };
  }
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

  ContinuousBackupSource({this.cluster, this.pointInTime});

  ContinuousBackupSource.fromJson(core.Map json_)
    : this(
        cluster: json_['cluster'] as core.String?,
        pointInTime: json_['pointInTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cluster = this.cluster;
    final pointInTime = this.pointInTime;
    return {'cluster': ?cluster, 'pointInTime': ?pointInTime};
  }
}

/// Options for exporting data in CSV format.
class CsvExportOptions {
  /// Specifies the character that should appear before a data character that
  /// needs to be escaped.
  ///
  /// The default is the same as quote character. The value of this argument has
  /// to be a character in Hex ASCII Code.
  ///
  /// Optional.
  core.String? escapeCharacter;

  /// Specifies the character that separates columns within each row (line) of
  /// the file.
  ///
  /// The default is comma. The value of this argument has to be a character in
  /// Hex ASCII Code.
  ///
  /// Optional.
  core.String? fieldDelimiter;

  /// Specifies the quoting character to be used when a data value is quoted.
  ///
  /// The default is double-quote. The value of this argument has to be a
  /// character in Hex ASCII Code.
  ///
  /// Optional.
  core.String? quoteCharacter;

  /// The SELECT query used to extract the data.
  ///
  /// Required.
  core.String? selectQuery;

  CsvExportOptions({
    this.escapeCharacter,
    this.fieldDelimiter,
    this.quoteCharacter,
    this.selectQuery,
  });

  CsvExportOptions.fromJson(core.Map json_)
    : this(
        escapeCharacter: json_['escapeCharacter'] as core.String?,
        fieldDelimiter: json_['fieldDelimiter'] as core.String?,
        quoteCharacter: json_['quoteCharacter'] as core.String?,
        selectQuery: json_['selectQuery'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final escapeCharacter = this.escapeCharacter;
    final fieldDelimiter = this.fieldDelimiter;
    final quoteCharacter = this.quoteCharacter;
    final selectQuery = this.selectQuery;
    return {
      'escapeCharacter': ?escapeCharacter,
      'fieldDelimiter': ?fieldDelimiter,
      'quoteCharacter': ?quoteCharacter,
      'selectQuery': ?selectQuery,
    };
  }
}

/// Options for importing data in CSV format.
class CsvImportOptions {
  /// The columns to which CSV data is imported.
  ///
  /// If not specified, all columns of the database table are loaded with CSV
  /// data.
  ///
  /// Optional.
  core.List<core.String>? columns;

  /// Specifies the character that should appear before a data character that
  /// needs to be escaped.
  ///
  /// The default is same as quote character. The value of this argument has to
  /// be a character in Hex ASCII Code.
  ///
  /// Optional.
  core.String? escapeCharacter;

  /// Specifies the character that separates columns within each row (line) of
  /// the file.
  ///
  /// The default is comma. The value of this argument has to be a character in
  /// Hex ASCII Code.
  ///
  /// Optional.
  core.String? fieldDelimiter;

  /// Specifies the quoting character to be used when a data value is quoted.
  ///
  /// The default is double-quote. The value of this argument has to be a
  /// character in Hex ASCII Code.
  ///
  /// Optional.
  core.String? quoteCharacter;

  /// The database table to import CSV file into.
  ///
  /// Required.
  core.String? table;

  CsvImportOptions({
    this.columns,
    this.escapeCharacter,
    this.fieldDelimiter,
    this.quoteCharacter,
    this.table,
  });

  CsvImportOptions.fromJson(core.Map json_)
    : this(
        columns: (json_['columns'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        escapeCharacter: json_['escapeCharacter'] as core.String?,
        fieldDelimiter: json_['fieldDelimiter'] as core.String?,
        quoteCharacter: json_['quoteCharacter'] as core.String?,
        table: json_['table'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columns = this.columns;
    final escapeCharacter = this.escapeCharacter;
    final fieldDelimiter = this.fieldDelimiter;
    final quoteCharacter = this.quoteCharacter;
    final table = this.table;
    return {
      'columns': ?columns,
      'escapeCharacter': ?escapeCharacter,
      'fieldDelimiter': ?fieldDelimiter,
      'quoteCharacter': ?quoteCharacter,
      'table': ?table,
    };
  }
}

/// Configuration for Dataplex integration.
class DataplexConfig {
  /// Dataplex is enabled by default for resources such as clusters and
  /// instances.
  ///
  /// This flag controls the integration of AlloyDB PG resources (like
  /// databases, schemas, and tables) with Dataplex."
  core.bool? enabled;

  DataplexConfig({this.enabled});

  DataplexConfig.fromJson(core.Map json_)
    : this(enabled: json_['enabled'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    return {'enabled': ?enabled};
  }
}

/// DenyMaintenancePeriod definition.
///
/// Excepting emergencies, maintenance will not be scheduled to start within
/// this deny period. The start_date must be less than the end_date.
class DenyMaintenancePeriod {
  /// Deny period end date.
  ///
  /// This can be: * A full date, with non-zero year, month and day values OR *
  /// A month and day value, with a zero year for recurring
  GoogleTypeDate? endDate;

  /// Deny period start date.
  ///
  /// This can be: * A full date, with non-zero year, month and day values OR *
  /// A month and day value, with a zero year for recurring
  GoogleTypeDate? startDate;

  /// Time in UTC when the deny period starts on start_date and ends on
  /// end_date.
  ///
  /// This can be: * Full time OR * All zeros for 00:00:00 UTC
  GoogleTypeTimeOfDay? time;

  DenyMaintenancePeriod({this.endDate, this.startDate, this.time});

  DenyMaintenancePeriod.fromJson(core.Map json_)
    : this(
        endDate: json_.containsKey('endDate')
            ? GoogleTypeDate.fromJson(
                json_['endDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startDate: json_.containsKey('startDate')
            ? GoogleTypeDate.fromJson(
                json_['startDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        time: json_.containsKey('time')
            ? GoogleTypeTimeOfDay.fromJson(
                json_['time'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endDate = this.endDate;
    final startDate = this.startDate;
    final time = this.time;
    return {'endDate': ?endDate, 'startDate': ?startDate, 'time': ?time};
  }
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

  EncryptionInfo({this.encryptionType, this.kmsKeyVersions});

  EncryptionInfo.fromJson(core.Map json_)
    : this(
        encryptionType: json_['encryptionType'] as core.String?,
        kmsKeyVersions: (json_['kmsKeyVersions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encryptionType = this.encryptionType;
    final kmsKeyVersions = this.kmsKeyVersions;
    return {
      'encryptionType': ?encryptionType,
      'kmsKeyVersions': ?kmsKeyVersions,
    };
  }
}

/// Export cluster request.
class ExportClusterRequest {
  /// Options for exporting data in CSV format.
  ///
  /// Required field to be set for CSV file type.
  CsvExportOptions? csvExportOptions;

  /// Name of the database where the export command will be executed.
  ///
  /// Note - Value provided should be the same as expected from `SELECT
  /// current_database();` and NOT as a resource reference.
  ///
  /// Required.
  core.String? database;

  /// Option to export data to cloud storage.
  ///
  /// Required.
  GcsDestination? gcsDestination;

  /// Options for exporting data in SQL format.
  ///
  /// Required field to be set for SQL file type.
  SqlExportOptions? sqlExportOptions;

  ExportClusterRequest({
    this.csvExportOptions,
    this.database,
    this.gcsDestination,
    this.sqlExportOptions,
  });

  ExportClusterRequest.fromJson(core.Map json_)
    : this(
        csvExportOptions: json_.containsKey('csvExportOptions')
            ? CsvExportOptions.fromJson(
                json_['csvExportOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        database: json_['database'] as core.String?,
        gcsDestination: json_.containsKey('gcsDestination')
            ? GcsDestination.fromJson(
                json_['gcsDestination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sqlExportOptions: json_.containsKey('sqlExportOptions')
            ? SqlExportOptions.fromJson(
                json_['sqlExportOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final csvExportOptions = this.csvExportOptions;
    final database = this.database;
    final gcsDestination = this.gcsDestination;
    final sqlExportOptions = this.sqlExportOptions;
    return {
      'csvExportOptions': ?csvExportOptions,
      'database': ?database,
      'gcsDestination': ?gcsDestination,
      'sqlExportOptions': ?sqlExportOptions,
    };
  }
}

/// Message for triggering failover on an Instance
typedef FailoverInstanceRequest = $Request05;

/// Destination for Export.
///
/// Export will be done to cloud storage.
class GcsDestination {
  /// The path to the file in Google Cloud Storage where the export will be
  /// stored.
  ///
  /// The URI is in the form `gs://bucketName/fileName`.
  ///
  /// Required.
  core.String? uri;

  GcsDestination({this.uri});

  GcsDestination.fromJson(core.Map json_)
    : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final uri = this.uri;
    return {'uri': ?uri};
  }
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
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => GoogleCloudLocationLocation.fromJson(
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

/// A resource that represents a Google Cloud location.
typedef GoogleCloudLocationLocation = $Location00;

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
typedef GoogleTypeDate = $Date;

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef GoogleTypeTimeOfDay = $TimeOfDay;

/// Import cluster request.
class ImportClusterRequest {
  /// Options for importing data in CSV format.
  CsvImportOptions? csvImportOptions;

  /// Name of the database to which the import will be done.
  ///
  /// For import from SQL file, this is required only if the file does not
  /// specify a database. Note - Value provided should be the same as expected
  /// from `SELECT current_database();` and NOT as a resource reference.
  ///
  /// Optional.
  core.String? database;

  /// The path to the file in Google Cloud Storage where the source file for
  /// import will be stored.
  ///
  /// The URI is in the form `gs://bucketName/fileName`.
  ///
  /// Required.
  core.String? gcsUri;

  /// Options for importing data in SQL format.
  SqlImportOptions? sqlImportOptions;

  /// Database user to be used for importing the data.
  ///
  /// Note - Value provided should be the same as expected from `SELECT
  /// current_user;` and NOT as a resource reference.
  ///
  /// Optional.
  core.String? user;

  ImportClusterRequest({
    this.csvImportOptions,
    this.database,
    this.gcsUri,
    this.sqlImportOptions,
    this.user,
  });

  ImportClusterRequest.fromJson(core.Map json_)
    : this(
        csvImportOptions: json_.containsKey('csvImportOptions')
            ? CsvImportOptions.fromJson(
                json_['csvImportOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        database: json_['database'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
        sqlImportOptions: json_.containsKey('sqlImportOptions')
            ? SqlImportOptions.fromJson(
                json_['sqlImportOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        user: json_['user'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final csvImportOptions = this.csvImportOptions;
    final database = this.database;
    final gcsUri = this.gcsUri;
    final sqlImportOptions = this.sqlImportOptions;
    final user = this.user;
    return {
      'csvImportOptions': ?csvImportOptions,
      'database': ?database,
      'gcsUri': ?gcsUri,
      'sqlImportOptions': ?sqlImportOptions,
      'user': ?user,
    };
  }
}

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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation, for example, permission checks and
  /// any other type of validation, but does not actually execute the create
  /// request.
  ///
  /// Optional.
  core.bool? validateOnly;

  InjectFaultRequest({this.faultType, this.requestId, this.validateOnly});

  InjectFaultRequest.fromJson(core.Map json_)
    : this(
        faultType: json_['faultType'] as core.String?,
        requestId: json_['requestId'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final faultType = this.faultType;
    final requestId = this.requestId;
    final validateOnly = this.validateOnly;
    return {
      'faultType': ?faultType,
      'requestId': ?requestId,
      'validateOnly': ?validateOnly,
    };
  }
}

/// An Instance is a computing unit that an end customer can connect to.
///
/// It's the main unit of computing resources in AlloyDB.
class Instance {
  /// Specifies whether an instance needs to spin up.
  ///
  /// Once the instance is active, the activation policy can be updated to the
  /// `NEVER` to stop the instance. Likewise, the activation policy can be
  /// updated to `ALWAYS` to start the instance. There are restrictions around
  /// when an instance can/cannot be activated (for example, a read pool
  /// instance should be stopped before stopping primary etc.). Please refer to
  /// the API documentation for more details.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACTIVATION_POLICY_UNSPECIFIED" : The policy is not specified.
  /// - "ALWAYS" : The instance is running.
  /// - "NEVER" : The instance is not running.
  core.String? activationPolicy;

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

  /// The configuration for Managed Connection Pool (MCP).
  ///
  /// Optional.
  ConnectionPoolConfig? connectionPoolConfig;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Controls whether the Data API is enabled for this instance.
  ///
  /// When enabled, this allows authorized users to connect to the instance from
  /// the public internet using the `executeSql` API, even for private IP
  /// instances. If this is not specified, the data API is enabled by default
  /// for Google internal services like AlloyDB Studio. Disable it explicitly to
  /// disallow Google internal services as well.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DEFAULT_DATA_API_ENABLED_FOR_GOOGLE_CLOUD_SERVICES" :
  /// DEFAULT_DATA_API_ENABLED_FOR_GOOGLE_CLOUD_SERVICES is a default value that
  /// allows Google internal services like AlloyDB Studio to access the
  /// instance.
  /// - "DISABLED" : Data API access is disabled for this instance.
  /// - "ENABLED" : Data API access is enabled for this instance. For private IP
  /// instances, this allows authorized users to access the instance from the
  /// public internet using the ExecuteSql API.
  core.String? dataApiAccess;

  /// Database flags.
  ///
  /// Set at the instance level. They are copied from the primary instance on
  /// secondary instance creation. Flags that have restrictions default to the
  /// value at primary instance on read instances during creation. Read
  /// instances can set new flags or override existing flags that are relevant
  /// for reads, for example, for enabling columnar cache on a read instance.
  /// Flags set on read instance might or might not be present on the primary
  /// instance. This is a list of "key": "value" pairs. "key": The name of the
  /// flag. These flags are passed at instance setup time, so include both
  /// server options and system variables for Postgres. Flags are specified with
  /// underscores, not hyphens. "value": The value of the flag. Booleans are set
  /// to **on** for true and **off** for false. This field must be omitted if
  /// the flag doesn't take a value.
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

  /// Maintenance version of the instance, for example:
  /// POSTGRES_15.2025_07_15.04_00.
  ///
  /// Output only. Update this field via the parent cluster's
  /// maintenance_version field(s).
  ///
  /// Output only.
  core.String? maintenanceVersionName;

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

  /// Instance-level network configuration.
  ///
  /// Optional.
  InstanceNetworkConfig? networkConfig;

  /// List of available read-only VMs in this instance, including the standby
  /// for a PRIMARY instance.
  ///
  /// Output only.
  core.List<Node>? nodes;

  /// Configuration for observability.
  ObservabilityInstanceConfig? observabilityConfig;

  /// All outbound public IP addresses configured for the instance.
  ///
  /// Output only.
  core.List<core.String>? outboundPublicIpAddresses;

  /// The configuration for Private Service Connect (PSC) for the instance.
  ///
  /// Optional.
  PscInstanceConfig? pscInstanceConfig;

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
  /// - "BOOTSTRAPPING" : The instance has been configured to sync data from
  /// some other source.
  /// - "PROMOTING" : The instance is being promoted.
  /// - "SWITCHOVER" : The instance has entered switchover state. All updates on
  /// instance are restricted while the instance is in this state.
  /// - "STOPPING" : The instance is being stopped.
  /// - "STARTING" : The instance is being started.
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
    this.activationPolicy,
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfig,
    this.connectionPoolConfig,
    this.createTime,
    this.dataApiAccess,
    this.databaseFlags,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.gceZone,
    this.instanceType,
    this.ipAddress,
    this.labels,
    this.machineConfig,
    this.maintenanceVersionName,
    this.name,
    this.networkConfig,
    this.nodes,
    this.observabilityConfig,
    this.outboundPublicIpAddresses,
    this.pscInstanceConfig,
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
        activationPolicy: json_['activationPolicy'] as core.String?,
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        availabilityType: json_['availabilityType'] as core.String?,
        clientConnectionConfig: json_.containsKey('clientConnectionConfig')
            ? ClientConnectionConfig.fromJson(
                json_['clientConnectionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        connectionPoolConfig: json_.containsKey('connectionPoolConfig')
            ? ConnectionPoolConfig.fromJson(
                json_['connectionPoolConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        dataApiAccess: json_['dataApiAccess'] as core.String?,
        databaseFlags:
            (json_['databaseFlags'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        deleteTime: json_['deleteTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        gceZone: json_['gceZone'] as core.String?,
        instanceType: json_['instanceType'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        machineConfig: json_.containsKey('machineConfig')
            ? MachineConfig.fromJson(
                json_['machineConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        maintenanceVersionName: json_['maintenanceVersionName'] as core.String?,
        name: json_['name'] as core.String?,
        networkConfig: json_.containsKey('networkConfig')
            ? InstanceNetworkConfig.fromJson(
                json_['networkConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        nodes: (json_['nodes'] as core.List?)
            ?.map(
              (value) =>
                  Node.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        observabilityConfig: json_.containsKey('observabilityConfig')
            ? ObservabilityInstanceConfig.fromJson(
                json_['observabilityConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        outboundPublicIpAddresses:
            (json_['outboundPublicIpAddresses'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pscInstanceConfig: json_.containsKey('pscInstanceConfig')
            ? PscInstanceConfig.fromJson(
                json_['pscInstanceConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        publicIpAddress: json_['publicIpAddress'] as core.String?,
        queryInsightsConfig: json_.containsKey('queryInsightsConfig')
            ? QueryInsightsInstanceConfig.fromJson(
                json_['queryInsightsConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        readPoolConfig: json_.containsKey('readPoolConfig')
            ? ReadPoolConfig.fromJson(
                json_['readPoolConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reconciling: json_['reconciling'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        writableNode: json_.containsKey('writableNode')
            ? Node.fromJson(
                json_['writableNode'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activationPolicy = this.activationPolicy;
    final annotations = this.annotations;
    final availabilityType = this.availabilityType;
    final clientConnectionConfig = this.clientConnectionConfig;
    final connectionPoolConfig = this.connectionPoolConfig;
    final createTime = this.createTime;
    final dataApiAccess = this.dataApiAccess;
    final databaseFlags = this.databaseFlags;
    final deleteTime = this.deleteTime;
    final displayName = this.displayName;
    final etag = this.etag;
    final gceZone = this.gceZone;
    final instanceType = this.instanceType;
    final ipAddress = this.ipAddress;
    final labels = this.labels;
    final machineConfig = this.machineConfig;
    final maintenanceVersionName = this.maintenanceVersionName;
    final name = this.name;
    final networkConfig = this.networkConfig;
    final nodes = this.nodes;
    final observabilityConfig = this.observabilityConfig;
    final outboundPublicIpAddresses = this.outboundPublicIpAddresses;
    final pscInstanceConfig = this.pscInstanceConfig;
    final publicIpAddress = this.publicIpAddress;
    final queryInsightsConfig = this.queryInsightsConfig;
    final readPoolConfig = this.readPoolConfig;
    final reconciling = this.reconciling;
    final satisfiesPzs = this.satisfiesPzs;
    final state = this.state;
    final uid = this.uid;
    final updateTime = this.updateTime;
    final writableNode = this.writableNode;
    return {
      'activationPolicy': ?activationPolicy,
      'annotations': ?annotations,
      'availabilityType': ?availabilityType,
      'clientConnectionConfig': ?clientConnectionConfig,
      'connectionPoolConfig': ?connectionPoolConfig,
      'createTime': ?createTime,
      'dataApiAccess': ?dataApiAccess,
      'databaseFlags': ?databaseFlags,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'gceZone': ?gceZone,
      'instanceType': ?instanceType,
      'ipAddress': ?ipAddress,
      'labels': ?labels,
      'machineConfig': ?machineConfig,
      'maintenanceVersionName': ?maintenanceVersionName,
      'name': ?name,
      'networkConfig': ?networkConfig,
      'nodes': ?nodes,
      'observabilityConfig': ?observabilityConfig,
      'outboundPublicIpAddresses': ?outboundPublicIpAddresses,
      'pscInstanceConfig': ?pscInstanceConfig,
      'publicIpAddress': ?publicIpAddress,
      'queryInsightsConfig': ?queryInsightsConfig,
      'readPoolConfig': ?readPoolConfig,
      'reconciling': ?reconciling,
      'satisfiesPzs': ?satisfiesPzs,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'writableNode': ?writableNode,
    };
  }
}

/// Metadata related to instance-level network configuration.
class InstanceNetworkConfig {
  /// Name of the allocated IP range for the private IP AlloyDB instance, for
  /// example: "google-managed-services-default".
  ///
  /// If set, the instance IPs will be created from this allocated range and
  /// will override the IP range used by the parent cluster. The range name must
  /// comply with [RFC 1035](http://datatracker.ietf.org/doc/html/rfc1035).
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?.
  ///
  /// Optional.
  core.String? allocatedIpRangeOverride;

  /// A list of external network authorized to access this instance.
  ///
  /// Optional.
  core.List<AuthorizedNetwork>? authorizedExternalNetworks;

  /// Enabling an outbound public IP address to support a database server
  /// sending requests out into the internet.
  ///
  /// Optional.
  core.bool? enableOutboundPublicIp;

  /// Enabling public ip for the instance.
  ///
  /// Optional.
  core.bool? enablePublicIp;

  /// The resource link for the VPC network in which instance resources are
  /// created and from which they are accessible via Private IP.
  ///
  /// This will be the same value as the parent cluster's network. It is
  /// specified in the form: //
  /// `projects/{project_number}/global/networks/{network_id}`.
  ///
  /// Output only.
  core.String? network;

  InstanceNetworkConfig({
    this.allocatedIpRangeOverride,
    this.authorizedExternalNetworks,
    this.enableOutboundPublicIp,
    this.enablePublicIp,
    this.network,
  });

  InstanceNetworkConfig.fromJson(core.Map json_)
    : this(
        allocatedIpRangeOverride:
            json_['allocatedIpRangeOverride'] as core.String?,
        authorizedExternalNetworks:
            (json_['authorizedExternalNetworks'] as core.List?)
                ?.map(
                  (value) => AuthorizedNetwork.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        enableOutboundPublicIp: json_['enableOutboundPublicIp'] as core.bool?,
        enablePublicIp: json_['enablePublicIp'] as core.bool?,
        network: json_['network'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allocatedIpRangeOverride = this.allocatedIpRangeOverride;
    final authorizedExternalNetworks = this.authorizedExternalNetworks;
    final enableOutboundPublicIp = this.enableOutboundPublicIp;
    final enablePublicIp = this.enablePublicIp;
    final network = this.network;
    return {
      'allocatedIpRangeOverride': ?allocatedIpRangeOverride,
      'authorizedExternalNetworks': ?authorizedExternalNetworks,
      'enableOutboundPublicIp': ?enableOutboundPublicIp,
      'enablePublicIp': ?enablePublicIp,
      'network': ?network,
    };
  }
}

/// Restrictions on INTEGER type values.
class IntegerRestrictions {
  /// The maximum value that can be specified, if applicable.
  core.String? maxValue;

  /// The minimum value that can be specified, if applicable.
  core.String? minValue;

  IntegerRestrictions({this.maxValue, this.minValue});

  IntegerRestrictions.fromJson(core.Map json_)
    : this(
        maxValue: json_['maxValue'] as core.String?,
        minValue: json_['minValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxValue = this.maxValue;
    final minValue = this.minValue;
    return {'maxValue': ?maxValue, 'minValue': ?minValue};
  }
}

/// Message for response to listing Backups
class ListBackupsResponse {
  /// The list of Backup
  core.List<Backup>? backups;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

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

/// Message for response to listing Clusters
class ListClustersResponse {
  /// The list of Cluster
  core.List<Cluster>? clusters;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListClustersResponse({this.clusters, this.nextPageToken, this.unreachable});

  ListClustersResponse.fromJson(core.Map json_)
    : this(
        clusters: (json_['clusters'] as core.List?)
            ?.map(
              (value) => Cluster.fromJson(
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
    final clusters = this.clusters;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'clusters': ?clusters,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing Instances
class ListInstancesResponse {
  /// The list of Instance
  core.List<Instance>? instances;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

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
        nextPageToken: json_['nextPageToken'] as core.String?,
        supportedDatabaseFlags: (json_['supportedDatabaseFlags'] as core.List?)
            ?.map(
              (value) => SupportedDatabaseFlag.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final supportedDatabaseFlags = this.supportedDatabaseFlags;
    return {
      'nextPageToken': ?nextPageToken,
      'supportedDatabaseFlags': ?supportedDatabaseFlags,
    };
  }
}

/// Message for response to listing Users
class ListUsersResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of User
  core.List<User>? users;

  ListUsersResponse({this.nextPageToken, this.unreachable, this.users});

  ListUsersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        users: (json_['users'] as core.List?)
            ?.map(
              (value) =>
                  User.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    final users = this.users;
    return {
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
      'users': ?users,
    };
  }
}

/// MachineConfig describes the configuration of a machine.
class MachineConfig {
  /// The number of CPU's in the VM instance.
  core.int? cpuCount;

  /// Machine type of the VM instance.
  ///
  /// E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-lssd". cpu_count must
  /// match the number of vCPUs in the machine type.
  core.String? machineType;

  MachineConfig({this.cpuCount, this.machineType});

  MachineConfig.fromJson(core.Map json_)
    : this(
        cpuCount: json_['cpuCount'] as core.int?,
        machineType: json_['machineType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cpuCount = this.cpuCount;
    final machineType = this.machineType;
    return {'cpuCount': ?cpuCount, 'machineType': ?machineType};
  }
}

/// MaintenanceSchedule stores the maintenance schedule generated from the
/// MaintenanceUpdatePolicy, once a maintenance rollout is triggered, if
/// MaintenanceWindow is set, and if there is no conflicting DenyPeriod.
///
/// The schedule is cleared once the update takes place. This field cannot be
/// manually changed; modify the MaintenanceUpdatePolicy instead.
class MaintenanceSchedule {
  /// The scheduled start time for the maintenance.
  ///
  /// Output only.
  core.String? startTime;

  MaintenanceSchedule({this.startTime});

  MaintenanceSchedule.fromJson(core.Map json_)
    : this(startTime: json_['startTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final startTime = this.startTime;
    return {'startTime': ?startTime};
  }
}

/// MaintenanceUpdatePolicy defines the policy for system updates.
class MaintenanceUpdatePolicy {
  /// Periods to deny maintenance.
  ///
  /// Currently limited to 1.
  core.List<DenyMaintenancePeriod>? denyMaintenancePeriods;

  /// Preferred windows to perform maintenance.
  ///
  /// Currently limited to 1.
  core.List<MaintenanceWindow>? maintenanceWindows;

  MaintenanceUpdatePolicy({
    this.denyMaintenancePeriods,
    this.maintenanceWindows,
  });

  MaintenanceUpdatePolicy.fromJson(core.Map json_)
    : this(
        denyMaintenancePeriods: (json_['denyMaintenancePeriods'] as core.List?)
            ?.map(
              (value) => DenyMaintenancePeriod.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        maintenanceWindows: (json_['maintenanceWindows'] as core.List?)
            ?.map(
              (value) => MaintenanceWindow.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final denyMaintenancePeriods = this.denyMaintenancePeriods;
    final maintenanceWindows = this.maintenanceWindows;
    return {
      'denyMaintenancePeriods': ?denyMaintenancePeriods,
      'maintenanceWindows': ?maintenanceWindows,
    };
  }
}

/// MaintenanceWindow specifies a preferred day and time for maintenance.
class MaintenanceWindow {
  /// Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc.
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

  /// Preferred time to start the maintenance operation on the specified day.
  ///
  /// Maintenance will start within 1 hour of this time.
  GoogleTypeTimeOfDay? startTime;

  MaintenanceWindow({this.day, this.startTime});

  MaintenanceWindow.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.String?,
        startTime: json_.containsKey('startTime')
            ? GoogleTypeTimeOfDay.fromJson(
                json_['startTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final day = this.day;
    final startTime = this.startTime;
    return {'day': ?day, 'startTime': ?startTime};
  }
}

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

  MigrationSource({this.hostPort, this.referenceId, this.sourceType});

  MigrationSource.fromJson(core.Map json_)
    : this(
        hostPort: json_['hostPort'] as core.String?,
        referenceId: json_['referenceId'] as core.String?,
        sourceType: json_['sourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hostPort = this.hostPort;
    final referenceId = this.referenceId;
    final sourceType = this.sourceType;
    return {
      'hostPort': ?hostPort,
      'referenceId': ?referenceId,
      'sourceType': ?sourceType,
    };
  }
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

  NetworkConfig({this.allocatedIpRange, this.network});

  NetworkConfig.fromJson(core.Map json_)
    : this(
        allocatedIpRange: json_['allocatedIpRange'] as core.String?,
        network: json_['network'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allocatedIpRange = this.allocatedIpRange;
    final network = this.network;
    return {'allocatedIpRange': ?allocatedIpRange, 'network': ?network};
  }
}

/// Details of a single node in the instance.
///
/// Nodes in an AlloyDB instance are ephemeral, they can change during update,
/// failover, autohealing and resize operations.
class Node {
  /// The identifier of the VM e.g. "test-read-0601-407e52be-ms3l".
  ///
  /// Output only.
  core.String? id;

  /// The private IP address of the VM e.g. "10.57.0.34".
  ///
  /// Output only.
  core.String? ip;

  /// Determined by state of the compute VM and postgres-service health.
  ///
  /// Compute VM state can have values listed in
  /// https://cloud.google.com/compute/docs/instances/instance-life-cycle and
  /// postgres-service health can have values: HEALTHY and UNHEALTHY.
  ///
  /// Output only.
  core.String? state;

  /// The Compute Engine zone of the VM e.g. "us-central1-b".
  ///
  /// Output only.
  core.String? zoneId;

  Node({this.id, this.ip, this.state, this.zoneId});

  Node.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        ip: json_['ip'] as core.String?,
        state: json_['state'] as core.String?,
        zoneId: json_['zoneId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final ip = this.ip;
    final state = this.state;
    final zoneId = this.zoneId;
    return {'id': ?id, 'ip': ?ip, 'state': ?state, 'zoneId': ?zoneId};
  }
}

/// Observability Instance specific configuration.
class ObservabilityInstanceConfig {
  /// Observability feature status for an instance.
  ///
  /// This flag is turned "off" by default.
  core.bool? enabled;

  /// Query string length.
  ///
  /// The default value is 10k.
  core.int? maxQueryStringLength;

  /// Preserve comments in query string for an instance.
  ///
  /// This flag is turned "off" by default.
  core.bool? preserveComments;

  /// Number of query execution plans captured by Insights per minute for all
  /// queries combined.
  ///
  /// The default value is 200. Any integer between 0 to 200 is considered
  /// valid.
  core.int? queryPlansPerMinute;

  /// Record application tags for an instance.
  ///
  /// This flag is turned "off" by default.
  core.bool? recordApplicationTags;

  /// Track actively running queries on the instance.
  ///
  /// If not set, this flag is "off" by default.
  core.bool? trackActiveQueries;

  /// Track wait event types during query execution for an instance.
  ///
  /// This flag is turned "on" by default but tracking is enabled only after
  /// observability enabled flag is also turned on. This is read-only flag and
  /// only modifiable by internal API.
  ///
  /// Output only.
  core.bool? trackWaitEventTypes;

  /// Track wait events during query execution for an instance.
  ///
  /// This flag is turned "on" by default but tracking is enabled only after
  /// observability enabled flag is also turned on.
  core.bool? trackWaitEvents;

  ObservabilityInstanceConfig({
    this.enabled,
    this.maxQueryStringLength,
    this.preserveComments,
    this.queryPlansPerMinute,
    this.recordApplicationTags,
    this.trackActiveQueries,
    this.trackWaitEventTypes,
    this.trackWaitEvents,
  });

  ObservabilityInstanceConfig.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        maxQueryStringLength: json_['maxQueryStringLength'] as core.int?,
        preserveComments: json_['preserveComments'] as core.bool?,
        queryPlansPerMinute: json_['queryPlansPerMinute'] as core.int?,
        recordApplicationTags: json_['recordApplicationTags'] as core.bool?,
        trackActiveQueries: json_['trackActiveQueries'] as core.bool?,
        trackWaitEventTypes: json_['trackWaitEventTypes'] as core.bool?,
        trackWaitEvents: json_['trackWaitEvents'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final maxQueryStringLength = this.maxQueryStringLength;
    final preserveComments = this.preserveComments;
    final queryPlansPerMinute = this.queryPlansPerMinute;
    final recordApplicationTags = this.recordApplicationTags;
    final trackActiveQueries = this.trackActiveQueries;
    final trackWaitEventTypes = this.trackWaitEventTypes;
    final trackWaitEvents = this.trackWaitEvents;
    return {
      'enabled': ?enabled,
      'maxQueryStringLength': ?maxQueryStringLength,
      'preserveComments': ?preserveComments,
      'queryPlansPerMinute': ?queryPlansPerMinute,
      'recordApplicationTags': ?recordApplicationTags,
      'trackActiveQueries': ?trackActiveQueries,
      'trackWaitEventTypes': ?trackWaitEventTypes,
      'trackWaitEvents': ?trackWaitEvents,
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

/// Configuration for the primary cluster.
///
/// It has the list of clusters that are replicating from this cluster. This
/// should be set if and only if the cluster is of type PRIMARY.
class PrimaryConfig {
  /// Names of the clusters that are replicating from this cluster.
  ///
  /// Output only.
  core.List<core.String>? secondaryClusterNames;

  PrimaryConfig({this.secondaryClusterNames});

  PrimaryConfig.fromJson(core.Map json_)
    : this(
        secondaryClusterNames: (json_['secondaryClusterNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final secondaryClusterNames = this.secondaryClusterNames;
    return {'secondaryClusterNames': ?secondaryClusterNames};
  }
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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation, for example, permission checks and
  /// any other type of validation, but does not actually execute the create
  /// request.
  ///
  /// Optional.
  core.bool? validateOnly;

  PromoteClusterRequest({this.etag, this.requestId, this.validateOnly});

  PromoteClusterRequest.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        requestId: json_['requestId'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final requestId = this.requestId;
    final validateOnly = this.validateOnly;
    return {
      'etag': ?etag,
      'requestId': ?requestId,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Configuration for setting up PSC service automation.
///
/// Consumer projects in the configs will be allowlisted automatically for the
/// instance.
class PscAutoConnectionConfig {
  /// The consumer network for the PSC service automation, example:
  /// "projects/vpc-host-project/global/networks/default".
  ///
  /// The consumer network might be hosted a different project than the consumer
  /// project.
  core.String? consumerNetwork;

  /// The status of the service connection policy.
  ///
  /// Possible values: "STATE_UNSPECIFIED" - Default state, when Connection Map
  /// is created initially. "VALID" - Set when policy and map configuration is
  /// valid, and their matching can lead to allowing creation of PSC Connections
  /// subject to other constraints like connections limit.
  /// "CONNECTION_POLICY_MISSING" - No Service Connection Policy found for this
  /// network and Service Class "POLICY_LIMIT_REACHED" - Service Connection
  /// Policy limit reached for this network and Service Class
  /// "CONSUMER_INSTANCE_PROJECT_NOT_ALLOWLISTED" - The consumer instance
  /// project is not in AllowedGoogleProducersResourceHierarchyLevels of the
  /// matching ServiceConnectionPolicy.
  ///
  /// Output only.
  core.String? consumerNetworkStatus;

  /// The consumer project to which the PSC service automation endpoint will be
  /// created.
  core.String? consumerProject;

  /// The IP address of the PSC service automation endpoint.
  ///
  /// Output only.
  core.String? ipAddress;

  /// The status of the PSC service automation connection.
  ///
  /// Possible values: "STATE_UNSPECIFIED" - An invalid state as the default
  /// case. "ACTIVE" - The connection has been created successfully. "FAILED" -
  /// The connection is not functional since some resources on the connection
  /// fail to be created. "CREATING" - The connection is being created.
  /// "DELETING" - The connection is being deleted. "CREATE_REPAIRING" - The
  /// connection is being repaired to complete creation. "DELETE_REPAIRING" -
  /// The connection is being repaired to complete deletion.
  ///
  /// Output only.
  core.String? status;

  PscAutoConnectionConfig({
    this.consumerNetwork,
    this.consumerNetworkStatus,
    this.consumerProject,
    this.ipAddress,
    this.status,
  });

  PscAutoConnectionConfig.fromJson(core.Map json_)
    : this(
        consumerNetwork: json_['consumerNetwork'] as core.String?,
        consumerNetworkStatus: json_['consumerNetworkStatus'] as core.String?,
        consumerProject: json_['consumerProject'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consumerNetwork = this.consumerNetwork;
    final consumerNetworkStatus = this.consumerNetworkStatus;
    final consumerProject = this.consumerProject;
    final ipAddress = this.ipAddress;
    final status = this.status;
    return {
      'consumerNetwork': ?consumerNetwork,
      'consumerNetworkStatus': ?consumerNetworkStatus,
      'consumerProject': ?consumerProject,
      'ipAddress': ?ipAddress,
      'status': ?status,
    };
  }
}

/// PscConfig contains PSC related configuration at a cluster level.
class PscConfig {
  /// Create an instance that allows connections from Private Service Connect
  /// endpoints to the instance.
  ///
  /// Optional.
  core.bool? pscEnabled;

  /// The project number that needs to be allowlisted on the network attachment
  /// to enable outbound connectivity.
  ///
  /// Output only.
  core.String? serviceOwnedProjectNumber;

  PscConfig({this.pscEnabled, this.serviceOwnedProjectNumber});

  PscConfig.fromJson(core.Map json_)
    : this(
        pscEnabled: json_['pscEnabled'] as core.bool?,
        serviceOwnedProjectNumber:
            json_['serviceOwnedProjectNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pscEnabled = this.pscEnabled;
    final serviceOwnedProjectNumber = this.serviceOwnedProjectNumber;
    return {
      'pscEnabled': ?pscEnabled,
      'serviceOwnedProjectNumber': ?serviceOwnedProjectNumber,
    };
  }
}

/// PscInstanceConfig contains PSC related configuration at an instance level.
class PscInstanceConfig {
  /// List of consumer projects that are allowed to create PSC endpoints to
  /// service-attachments to this instance.
  ///
  /// Optional.
  core.List<core.String>? allowedConsumerProjects;

  /// Configurations for setting up PSC service automation.
  ///
  /// Optional.
  core.List<PscAutoConnectionConfig>? pscAutoConnections;

  /// The DNS name of the instance for PSC connectivity.
  ///
  /// Name convention: ...alloydb-psc.goog
  ///
  /// Output only.
  core.String? pscDnsName;

  /// Configurations for setting up PSC interfaces attached to the instance
  /// which are used for outbound connectivity.
  ///
  /// Only primary instances can have PSC interface attached. Currently we only
  /// support 0 or 1 PSC interface.
  ///
  /// Optional.
  core.List<PscInterfaceConfig>? pscInterfaceConfigs;

  /// The service attachment created when Private Service Connect (PSC) is
  /// enabled for the instance.
  ///
  /// The name of the resource will be in the format of
  /// `projects//regions//serviceAttachments/`
  ///
  /// Output only.
  core.String? serviceAttachmentLink;

  PscInstanceConfig({
    this.allowedConsumerProjects,
    this.pscAutoConnections,
    this.pscDnsName,
    this.pscInterfaceConfigs,
    this.serviceAttachmentLink,
  });

  PscInstanceConfig.fromJson(core.Map json_)
    : this(
        allowedConsumerProjects:
            (json_['allowedConsumerProjects'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pscAutoConnections: (json_['pscAutoConnections'] as core.List?)
            ?.map(
              (value) => PscAutoConnectionConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        pscDnsName: json_['pscDnsName'] as core.String?,
        pscInterfaceConfigs: (json_['pscInterfaceConfigs'] as core.List?)
            ?.map(
              (value) => PscInterfaceConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        serviceAttachmentLink: json_['serviceAttachmentLink'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowedConsumerProjects = this.allowedConsumerProjects;
    final pscAutoConnections = this.pscAutoConnections;
    final pscDnsName = this.pscDnsName;
    final pscInterfaceConfigs = this.pscInterfaceConfigs;
    final serviceAttachmentLink = this.serviceAttachmentLink;
    return {
      'allowedConsumerProjects': ?allowedConsumerProjects,
      'pscAutoConnections': ?pscAutoConnections,
      'pscDnsName': ?pscDnsName,
      'pscInterfaceConfigs': ?pscInterfaceConfigs,
      'serviceAttachmentLink': ?serviceAttachmentLink,
    };
  }
}

/// Configuration for setting up a PSC interface to enable outbound
/// connectivity.
class PscInterfaceConfig {
  /// The network attachment resource created in the consumer network to which
  /// the PSC interface will be linked.
  ///
  /// This is of the format:
  /// "projects/${CONSUMER_PROJECT}/regions/${REGION}/networkAttachments/${NETWORK_ATTACHMENT_NAME}".
  /// The network attachment must be in the same region as the instance.
  core.String? networkAttachmentResource;

  PscInterfaceConfig({this.networkAttachmentResource});

  PscInterfaceConfig.fromJson(core.Map json_)
    : this(
        networkAttachmentResource:
            json_['networkAttachmentResource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final networkAttachmentResource = this.networkAttachmentResource;
    return {'networkAttachmentResource': ?networkAttachmentResource};
  }
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

  QuantityBasedExpiry({this.retentionCount, this.totalRetentionCount});

  QuantityBasedExpiry.fromJson(core.Map json_)
    : this(
        retentionCount: json_['retentionCount'] as core.int?,
        totalRetentionCount: json_['totalRetentionCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final retentionCount = this.retentionCount;
    final totalRetentionCount = this.totalRetentionCount;
    return {
      'retentionCount': ?retentionCount,
      'totalRetentionCount': ?totalRetentionCount,
    };
  }
}

/// A quantity based policy specifies that a certain number of the most recent
/// successful backups should be retained.
class QuantityBasedRetention {
  /// The number of backups to retain.
  core.int? count;

  QuantityBasedRetention({this.count});

  QuantityBasedRetention.fromJson(core.Map json_)
    : this(count: json_['count'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    return {'count': ?count};
  }
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
        queryPlansPerMinute: json_['queryPlansPerMinute'] as core.int?,
        queryStringLength: json_['queryStringLength'] as core.int?,
        recordApplicationTags: json_['recordApplicationTags'] as core.bool?,
        recordClientAddress: json_['recordClientAddress'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final queryPlansPerMinute = this.queryPlansPerMinute;
    final queryStringLength = this.queryStringLength;
    final recordApplicationTags = this.recordApplicationTags;
    final recordClientAddress = this.recordClientAddress;
    return {
      'queryPlansPerMinute': ?queryPlansPerMinute,
      'queryStringLength': ?queryStringLength,
      'recordApplicationTags': ?recordApplicationTags,
      'recordClientAddress': ?recordClientAddress,
    };
  }
}

/// Configuration for a read pool instance.
class ReadPoolConfig {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  core.int? nodeCount;

  ReadPoolConfig({this.nodeCount});

  ReadPoolConfig.fromJson(core.Map json_)
    : this(nodeCount: json_['nodeCount'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final nodeCount = this.nodeCount;
    return {'nodeCount': ?nodeCount};
  }
}

class RestartInstanceRequest {
  /// Full name of the nodes as obtained from INSTANCE_VIEW_FULL to restart
  /// upon.
  ///
  /// Applicable only to read instances.
  ///
  /// Optional.
  core.List<core.String>? nodeIds;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation, for example, permission checks and
  /// any other type of validation, but does not actually execute the create
  /// request.
  ///
  /// Optional.
  core.bool? validateOnly;

  RestartInstanceRequest({this.nodeIds, this.requestId, this.validateOnly});

  RestartInstanceRequest.fromJson(core.Map json_)
    : this(
        nodeIds: (json_['nodeIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        requestId: json_['requestId'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nodeIds = this.nodeIds;
    final requestId = this.requestId;
    final validateOnly = this.validateOnly;
    return {
      'nodeIds': ?nodeIds,
      'requestId': ?requestId,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Message for restoring a Cluster from a backup or another cluster at a given
/// point in time.
///
/// NEXT_ID: 11
class RestoreClusterRequest {
  /// Backup source.
  BackupSource? backupSource;

  /// BackupDR backup source.
  BackupDrBackupSource? backupdrBackupSource;

  /// BackupDR source used for point in time recovery.
  BackupDrPitrSource? backupdrPitrSource;

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
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation, for example, permission checks and
  /// any other type of validation, but does not actually execute the create
  /// request.
  ///
  /// Optional.
  core.bool? validateOnly;

  RestoreClusterRequest({
    this.backupSource,
    this.backupdrBackupSource,
    this.backupdrPitrSource,
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
                json_['backupSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        backupdrBackupSource: json_.containsKey('backupdrBackupSource')
            ? BackupDrBackupSource.fromJson(
                json_['backupdrBackupSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        backupdrPitrSource: json_.containsKey('backupdrPitrSource')
            ? BackupDrPitrSource.fromJson(
                json_['backupdrPitrSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cluster: json_.containsKey('cluster')
            ? Cluster.fromJson(
                json_['cluster'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        clusterId: json_['clusterId'] as core.String?,
        continuousBackupSource: json_.containsKey('continuousBackupSource')
            ? ContinuousBackupSource.fromJson(
                json_['continuousBackupSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestId: json_['requestId'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupSource = this.backupSource;
    final backupdrBackupSource = this.backupdrBackupSource;
    final backupdrPitrSource = this.backupdrPitrSource;
    final cluster = this.cluster;
    final clusterId = this.clusterId;
    final continuousBackupSource = this.continuousBackupSource;
    final requestId = this.requestId;
    final validateOnly = this.validateOnly;
    return {
      'backupSource': ?backupSource,
      'backupdrBackupSource': ?backupdrBackupSource,
      'backupdrPitrSource': ?backupdrPitrSource,
      'cluster': ?cluster,
      'clusterId': ?clusterId,
      'continuousBackupSource': ?continuousBackupSource,
      'requestId': ?requestId,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Message for registering Restoring from CloudSQL resource.
class RestoreFromCloudSQLRequest {
  /// Cluster created from CloudSQL backup run.
  CloudSQLBackupRunSource? cloudsqlBackupRunSource;

  /// The resource being created
  ///
  /// Required.
  Cluster? cluster;

  /// ID of the requesting object.
  ///
  /// Required.
  core.String? clusterId;

  RestoreFromCloudSQLRequest({
    this.cloudsqlBackupRunSource,
    this.cluster,
    this.clusterId,
  });

  RestoreFromCloudSQLRequest.fromJson(core.Map json_)
    : this(
        cloudsqlBackupRunSource: json_.containsKey('cloudsqlBackupRunSource')
            ? CloudSQLBackupRunSource.fromJson(
                json_['cloudsqlBackupRunSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cluster: json_.containsKey('cluster')
            ? Cluster.fromJson(
                json_['cluster'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        clusterId: json_['clusterId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudsqlBackupRunSource = this.cloudsqlBackupRunSource;
    final cluster = this.cluster;
    final clusterId = this.clusterId;
    return {
      'cloudsqlBackupRunSource': ?cloudsqlBackupRunSource,
      'cluster': ?cluster,
      'clusterId': ?clusterId,
    };
  }
}

/// Configuration information for the secondary cluster.
///
/// This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfig {
  /// The name of the primary cluster name with the format: *
  /// projects/{project}/locations/{region}/clusters/{cluster_id}
  core.String? primaryClusterName;

  SecondaryConfig({this.primaryClusterName});

  SecondaryConfig.fromJson(core.Map json_)
    : this(primaryClusterName: json_['primaryClusterName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final primaryClusterName = this.primaryClusterName;
    return {'primaryClusterName': ?primaryClusterName};
  }
}

/// Options for exporting data in SQL format.
class SqlExportOptions {
  /// If true, output commands to DROP all the dumped database objects prior to
  /// outputting the commands for creating them.
  ///
  /// Optional.
  core.bool? cleanTargetObjects;

  /// If true, use DROP ...
  ///
  /// IF EXISTS commands to check for the object's existence before dropping it
  /// in clean_target_objects mode.
  ///
  /// Optional.
  core.bool? ifExistTargetObjects;

  /// If true, only export the schema.
  ///
  /// Optional.
  core.bool? schemaOnly;

  /// Tables to export from.
  ///
  /// Optional.
  core.List<core.String>? tables;

  SqlExportOptions({
    this.cleanTargetObjects,
    this.ifExistTargetObjects,
    this.schemaOnly,
    this.tables,
  });

  SqlExportOptions.fromJson(core.Map json_)
    : this(
        cleanTargetObjects: json_['cleanTargetObjects'] as core.bool?,
        ifExistTargetObjects: json_['ifExistTargetObjects'] as core.bool?,
        schemaOnly: json_['schemaOnly'] as core.bool?,
        tables: (json_['tables'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cleanTargetObjects = this.cleanTargetObjects;
    final ifExistTargetObjects = this.ifExistTargetObjects;
    final schemaOnly = this.schemaOnly;
    final tables = this.tables;
    return {
      'cleanTargetObjects': ?cleanTargetObjects,
      'ifExistTargetObjects': ?ifExistTargetObjects,
      'schemaOnly': ?schemaOnly,
      'tables': ?tables,
    };
  }
}

/// Options for importing data in SQL format.
typedef SqlImportOptions = $Empty;

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
  /// - "SSL_MODE_UNSPECIFIED" : SSL mode is not specified. Defaults to
  /// ENCRYPTED_ONLY.
  /// - "SSL_MODE_ALLOW" : SSL connections are optional. CA verification not
  /// enforced.
  /// - "SSL_MODE_REQUIRE" : SSL connections are required. CA verification not
  /// enforced. Clients may use locally self-signed certificates (default psql
  /// client behavior).
  /// - "SSL_MODE_VERIFY_CA" : SSL connections are required. CA verification
  /// enforced. Clients must have certificates signed by a Cluster CA, for
  /// example, using GenerateClientCertificate.
  /// - "ALLOW_UNENCRYPTED_AND_ENCRYPTED" : SSL connections are optional. CA
  /// verification not enforced.
  /// - "ENCRYPTED_ONLY" : SSL connections are required. CA verification not
  /// enforced.
  core.String? sslMode;

  SslConfig({this.caSource, this.sslMode});

  SslConfig.fromJson(core.Map json_)
    : this(
        caSource: json_['caSource'] as core.String?,
        sslMode: json_['sslMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caSource = this.caSource;
    final sslMode = this.sslMode;
    return {'caSource': ?caSource, 'sslMode': ?sslMode};
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

/// Restrictions on STRING type values
class StringRestrictions {
  /// The list of allowed values, if bounded.
  ///
  /// This field will be empty if there is a unbounded number of allowed values.
  core.List<core.String>? allowedValues;

  StringRestrictions({this.allowedValues});

  StringRestrictions.fromJson(core.Map json_)
    : this(
        allowedValues: (json_['allowedValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowedValues = this.allowedValues;
    return {'allowedValues': ?allowedValues};
  }
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

  /// The recommended value for an INTEGER flag.
  core.String? recommendedIntegerValue;

  /// The recommended value for a STRING flag.
  core.String? recommendedStringValue;

  /// Whether setting or updating this flag on an Instance requires a database
  /// restart.
  ///
  /// If a flag that requires database restart is set, the backend will
  /// automatically restart the database (making sure to satisfy any
  /// availability SLO's).
  core.bool? requiresDbRestart;

  /// The scope of the flag.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : The scope of the flag is not specified. Default is
  /// DATABASE.
  /// - "DATABASE" : The flag is a database flag.
  /// - "CONNECTION_POOL" : The flag is a connection pool flag.
  core.String? scope;

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
    this.recommendedIntegerValue,
    this.recommendedStringValue,
    this.requiresDbRestart,
    this.scope,
    this.stringRestrictions,
    this.supportedDbVersions,
    this.valueType,
  });

  SupportedDatabaseFlag.fromJson(core.Map json_)
    : this(
        acceptsMultipleValues: json_['acceptsMultipleValues'] as core.bool?,
        flagName: json_['flagName'] as core.String?,
        integerRestrictions: json_.containsKey('integerRestrictions')
            ? IntegerRestrictions.fromJson(
                json_['integerRestrictions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        recommendedIntegerValue:
            json_['recommendedIntegerValue'] as core.String?,
        recommendedStringValue: json_['recommendedStringValue'] as core.String?,
        requiresDbRestart: json_['requiresDbRestart'] as core.bool?,
        scope: json_['scope'] as core.String?,
        stringRestrictions: json_.containsKey('stringRestrictions')
            ? StringRestrictions.fromJson(
                json_['stringRestrictions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        supportedDbVersions: (json_['supportedDbVersions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acceptsMultipleValues = this.acceptsMultipleValues;
    final flagName = this.flagName;
    final integerRestrictions = this.integerRestrictions;
    final name = this.name;
    final recommendedIntegerValue = this.recommendedIntegerValue;
    final recommendedStringValue = this.recommendedStringValue;
    final requiresDbRestart = this.requiresDbRestart;
    final scope = this.scope;
    final stringRestrictions = this.stringRestrictions;
    final supportedDbVersions = this.supportedDbVersions;
    final valueType = this.valueType;
    return {
      'acceptsMultipleValues': ?acceptsMultipleValues,
      'flagName': ?flagName,
      'integerRestrictions': ?integerRestrictions,
      'name': ?name,
      'recommendedIntegerValue': ?recommendedIntegerValue,
      'recommendedStringValue': ?recommendedStringValue,
      'requiresDbRestart': ?requiresDbRestart,
      'scope': ?scope,
      'stringRestrictions': ?stringRestrictions,
      'supportedDbVersions': ?supportedDbVersions,
      'valueType': ?valueType,
    };
  }
}

/// Message for switching over to a cluster
typedef SwitchoverClusterRequest = $Request05;

/// A time based retention policy specifies that all backups within a certain
/// time period should be retained.
class TimeBasedRetention {
  /// The retention period.
  core.String? retentionPeriod;

  TimeBasedRetention({this.retentionPeriod});

  TimeBasedRetention.fromJson(core.Map json_)
    : this(retentionPeriod: json_['retentionPeriod'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final retentionPeriod = this.retentionPeriod;
    return {'retentionPeriod': ?retentionPeriod};
  }
}

/// Contains information and all metadata related to TRIAL clusters.
class TrialMetadata {
  /// End time of the trial cluster.
  core.String? endTime;

  /// grace end time of the cluster.
  core.String? graceEndTime;

  /// start time of the trial cluster.
  core.String? startTime;

  /// Upgrade time of trial cluster to Standard cluster.
  core.String? upgradeTime;

  TrialMetadata({
    this.endTime,
    this.graceEndTime,
    this.startTime,
    this.upgradeTime,
  });

  TrialMetadata.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        graceEndTime: json_['graceEndTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        upgradeTime: json_['upgradeTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final graceEndTime = this.graceEndTime;
    final startTime = this.startTime;
    final upgradeTime = this.upgradeTime;
    return {
      'endTime': ?endTime,
      'graceEndTime': ?graceEndTime,
      'startTime': ?startTime,
      'upgradeTime': ?upgradeTime,
    };
  }
}

/// Upgrades a cluster.
class UpgradeClusterRequest {
  /// The current etag of the Cluster.
  ///
  /// If an etag is provided and does not match the current etag of the Cluster,
  /// upgrade will be blocked and an ABORTED error will be returned.
  ///
  /// Optional.
  core.String? etag;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation, for example, permission checks and
  /// any other type of validation, but does not actually execute the create
  /// request.
  ///
  /// Optional.
  core.bool? validateOnly;

  /// The version the cluster is going to be upgraded to.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATABASE_VERSION_UNSPECIFIED" : This is an unknown database version.
  /// - "POSTGRES_13" : DEPRECATED - The database version is Postgres 13.
  /// - "POSTGRES_14" : The database version is Postgres 14.
  /// - "POSTGRES_15" : The database version is Postgres 15.
  /// - "POSTGRES_16" : The database version is Postgres 16.
  /// - "POSTGRES_17" : The database version is Postgres 17.
  core.String? version;

  UpgradeClusterRequest({
    this.etag,
    this.requestId,
    this.validateOnly,
    this.version,
  });

  UpgradeClusterRequest.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        requestId: json_['requestId'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final requestId = this.requestId;
    final validateOnly = this.validateOnly;
    final version = this.version;
    return {
      'etag': ?etag,
      'requestId': ?requestId,
      'validateOnly': ?validateOnly,
      'version': ?version,
    };
  }
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

  /// Input only.
  ///
  /// If the user already exists and it has additional roles, keep them granted.
  core.bool? keepExtraRoles;

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
    this.keepExtraRoles,
    this.name,
    this.password,
    this.userType,
  });

  User.fromJson(core.Map json_)
    : this(
        databaseRoles: (json_['databaseRoles'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        keepExtraRoles: json_['keepExtraRoles'] as core.bool?,
        name: json_['name'] as core.String?,
        password: json_['password'] as core.String?,
        userType: json_['userType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databaseRoles = this.databaseRoles;
    final keepExtraRoles = this.keepExtraRoles;
    final name = this.name;
    final password = this.password;
    final userType = this.userType;
    return {
      'databaseRoles': ?databaseRoles,
      'keepExtraRoles': ?keepExtraRoles,
      'name': ?name,
      'password': ?password,
      'userType': ?userType,
    };
  }
}

/// The username/password for a database user.
///
/// Used for specifying initial users at cluster creation time.
class UserPassword {
  /// The initial password for the user.
  core.String? password;

  /// The database username.
  core.String? user;

  UserPassword({this.password, this.user});

  UserPassword.fromJson(core.Map json_)
    : this(
        password: json_['password'] as core.String?,
        user: json_['user'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final password = this.password;
    final user = this.user;
    return {'password': ?password, 'user': ?user};
  }
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

  WeeklySchedule({this.daysOfWeek, this.startTimes});

  WeeklySchedule.fromJson(core.Map json_)
    : this(
        daysOfWeek: (json_['daysOfWeek'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        startTimes: (json_['startTimes'] as core.List?)
            ?.map(
              (value) => GoogleTypeTimeOfDay.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final daysOfWeek = this.daysOfWeek;
    final startTimes = this.startTimes;
    return {'daysOfWeek': ?daysOfWeek, 'startTimes': ?startTimes};
  }
}
