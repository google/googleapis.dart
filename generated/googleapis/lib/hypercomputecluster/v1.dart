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

/// Cluster Director API - v1
///
/// For more information, see
/// <https://docs.cloud.google.com/cluster-director/docs>
///
/// Create an instance of [HypercomputeClusterApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsClustersResource]
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

class HypercomputeClusterApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  HypercomputeClusterApi(
    http.Client client, {
    core.String rootUrl = 'https://hypercomputecluster.googleapis.com/',
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

  ProjectsLocationsClustersResource get clusters =>
      ProjectsLocationsClustersResource(_requester);
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

class ProjectsLocationsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Cluster in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent location in which the cluster should be
  /// created, in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [clusterId] - Required. ID of the cluster to create. Must conform to
  /// \[RFC-1034\](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  ///
  /// [requestId] - Optional. A unique identifier for this request. A random
  /// UUID is recommended. This request is idempotent if and only if
  /// `request_id` is provided.
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
      'clusterId': ?clusterId == null ? null : [clusterId],
      'requestId': ?requestId == null ? null : [requestId],
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

  /// Deletes a single Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the cluster to delete, in the format
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. A random
  /// UUID is recommended. This request is idempotent if and only if
  /// `request_id` is provided.
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
      'requestId': ?requestId == null ? null : [requestId],
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

  /// Gets details of a single Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the cluster to retrieve, in the format
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
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

  /// Lists Clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent location of the clusters to list, in the
  /// format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. [Filter](https://google.aip.dev/160) to apply to the
  /// returned results.
  ///
  /// [orderBy] - Optional. How to order the resulting clusters. Must be one of
  /// the following strings: * `name` * `name desc` * `create_time` *
  /// `create_time desc` If not specified, clusters will be returned in an
  /// arbitrary order.
  ///
  /// [pageSize] - Optional. Maximum number of clusters to return. The service
  /// may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// `ListClusters` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListClusters` must match the
  /// call that provided the page token.
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
  /// [name] - Identifier. [Relative resource name](https://google.aip.dev/122)
  /// of the cluster, in the format
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. A random
  /// UUID is recommended. This request is idempotent if and only if
  /// `request_id` is provided.
  ///
  /// [updateMask] - Optional. Mask specifying which fields in the cluster to
  /// update. All paths must be specified explicitly - wildcards are not
  /// supported. At least one path must be provided.
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
      'requestId': ?requestId == null ? null : [requestId],
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

/// A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the
/// boot disk for a Compute Engine VM instance.
class BootDisk {
  /// Size of the disk in gigabytes.
  ///
  /// Must be at least 10GB.
  ///
  /// Required. Immutable.
  core.String? sizeGb;

  /// [Persistent disk type](https://cloud.google.com/compute/docs/disks#disk-types),
  /// in the format `projects/{project}/zones/{zone}/diskTypes/{disk_type}`.
  ///
  /// Required. Immutable.
  core.String? type;

  BootDisk({this.sizeGb, this.type});

  BootDisk.fromJson(core.Map json_)
    : this(
        sizeGb: json_['sizeGb'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sizeGb = this.sizeGb;
    final type = this.type;
    return {'sizeGb': ?sizeGb, 'type': ?type};
  }
}

/// A reference to a [Google Cloud Storage](https://cloud.google.com/storage)
/// bucket.
class BucketReference {
  /// Name of the bucket.
  ///
  /// Output only.
  core.String? bucket;

  BucketReference({this.bucket});

  BucketReference.fromJson(core.Map json_)
    : this(bucket: json_['bucket'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final bucket = this.bucket;
    return {'bucket': ?bucket};
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A collection of virtual machines and connected resources forming a
/// high-performance computing cluster capable of running large-scale, tightly
/// coupled workloads.
///
/// A cluster combines a set a compute resources that perform computations,
/// storage resources that contain inputs and store outputs, an orchestrator
/// that is responsible for assigning jobs to compute resources, and network
/// resources that connect everything together.
class Cluster {
  /// Compute resources available to the cluster.
  ///
  /// Keys specify the ID of the compute resource by which it can be referenced
  /// elsewhere, and must conform to
  /// \[RFC-1034\](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  ///
  /// Optional.
  core.Map<core.String, ComputeResource>? computeResources;

  /// Time that the cluster was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the cluster.
  ///
  /// Optional.
  core.String? description;

  /// [Labels](https://cloud.google.com/compute/docs/labeling-resources) applied
  /// to the cluster.
  ///
  /// Labels can be used to organize clusters and to filter them in queries.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// [Relative resource name](https://google.aip.dev/122) of the cluster, in
  /// the format `projects/{project}/locations/{location}/clusters/{cluster}`.
  core.String? name;

  /// Network resources available to the cluster.
  ///
  /// Must contain at most one value. Keys specify the ID of the network
  /// resource by which it can be referenced elsewhere, and must conform to
  /// \[RFC-1034\](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  ///
  /// Optional.
  core.Map<core.String, NetworkResource>? networkResources;

  /// Orchestrator that is responsible for scheduling and running jobs on the
  /// cluster.
  ///
  /// Optional.
  Orchestrator? orchestrator;

  /// Indicates whether changes to the cluster are currently in flight.
  ///
  /// If this is `true`, then the current state might not match the cluster's
  /// intended state.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Storage resources available to the cluster.
  ///
  /// Keys specify the ID of the storage resource by which it can be referenced
  /// elsewhere, and must conform to
  /// \[RFC-1034\](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  ///
  /// Optional.
  core.Map<core.String, StorageResource>? storageResources;

  /// Time that the cluster was most recently updated.
  ///
  /// Output only.
  core.String? updateTime;

  Cluster({
    this.computeResources,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.networkResources,
    this.orchestrator,
    this.reconciling,
    this.storageResources,
    this.updateTime,
  });

  Cluster.fromJson(core.Map json_)
    : this(
        computeResources:
            (json_['computeResources'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    ComputeResource.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        networkResources:
            (json_['networkResources'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    NetworkResource.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        orchestrator: json_.containsKey('orchestrator')
            ? Orchestrator.fromJson(
                json_['orchestrator'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reconciling: json_['reconciling'] as core.bool?,
        storageResources:
            (json_['storageResources'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    StorageResource.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final computeResources = this.computeResources;
    final createTime = this.createTime;
    final description = this.description;
    final labels = this.labels;
    final name = this.name;
    final networkResources = this.networkResources;
    final orchestrator = this.orchestrator;
    final reconciling = this.reconciling;
    final storageResources = this.storageResources;
    final updateTime = this.updateTime;
    return {
      'computeResources': ?computeResources,
      'createTime': ?createTime,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'networkResources': ?networkResources,
      'orchestrator': ?orchestrator,
      'reconciling': ?reconciling,
      'storageResources': ?storageResources,
      'updateTime': ?updateTime,
    };
  }
}

/// Details about a Compute Engine
/// [instance](https://cloud.google.com/compute/docs/instances).
class ComputeInstance {
  /// Name of the VM instance, in the format
  /// `projects/{project}/zones/{zone}/instances/{instance}`.
  ///
  /// Output only.
  core.String? instance;

  ComputeInstance({this.instance});

  ComputeInstance.fromJson(core.Map json_)
    : this(instance: json_['instance'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final instance = this.instance;
    return {'instance': ?instance};
  }
}

/// When set in a SlurmNodeSet, indicates that the nodeset should be backed by
/// Compute Engine VM instances.
class ComputeInstanceSlurmNodeSet {
  /// Boot disk for the compute instance
  ///
  /// Optional.
  BootDisk? bootDisk;

  /// [Labels](https://cloud.google.com/compute/docs/labeling-resources) that
  /// should be applied to each VM instance in the nodeset.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// [Startup script](https://cloud.google.com/compute/docs/instances/startup-scripts/linux)
  /// to be run on each VM instance in the nodeset.
  ///
  /// Max 256KB.
  ///
  /// Optional.
  core.String? startupScript;

  ComputeInstanceSlurmNodeSet({this.bootDisk, this.labels, this.startupScript});

  ComputeInstanceSlurmNodeSet.fromJson(core.Map json_)
    : this(
        bootDisk: json_.containsKey('bootDisk')
            ? BootDisk.fromJson(
                json_['bootDisk'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        startupScript: json_['startupScript'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bootDisk = this.bootDisk;
    final labels = this.labels;
    final startupScript = this.startupScript;
    return {
      'bootDisk': ?bootDisk,
      'labels': ?labels,
      'startupScript': ?startupScript,
    };
  }
}

/// A resource defining how virtual machines and accelerators should be
/// provisioned for the cluster.
class ComputeResource {
  /// Configuration for this compute resource, which describes how it should be
  /// created at runtime.
  ///
  /// Required. Immutable.
  ComputeResourceConfig? config;

  ComputeResource({this.config});

  ComputeResource.fromJson(core.Map json_)
    : this(
        config: json_.containsKey('config')
            ? ComputeResourceConfig.fromJson(
                json_['config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final config = this.config;
    return {'config': ?config};
  }
}

/// Describes how a compute resource should be created at runtime.
class ComputeResourceConfig {
  /// If set, indicates that this resource should use flex-start VMs.
  ///
  /// Optional. Immutable.
  NewFlexStartInstancesConfig? newFlexStartInstances;

  /// If set, indicates that this resource should use on-demand VMs.
  ///
  /// Optional. Immutable.
  NewOnDemandInstancesConfig? newOnDemandInstances;

  /// If set, indicates that this resource should use reserved VMs.
  ///
  /// Optional. Immutable.
  NewReservedInstancesConfig? newReservedInstances;

  /// If set, indicates that this resource should use spot VMs.
  ///
  /// Optional. Immutable.
  NewSpotInstancesConfig? newSpotInstances;

  ComputeResourceConfig({
    this.newFlexStartInstances,
    this.newOnDemandInstances,
    this.newReservedInstances,
    this.newSpotInstances,
  });

  ComputeResourceConfig.fromJson(core.Map json_)
    : this(
        newFlexStartInstances: json_.containsKey('newFlexStartInstances')
            ? NewFlexStartInstancesConfig.fromJson(
                json_['newFlexStartInstances']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        newOnDemandInstances: json_.containsKey('newOnDemandInstances')
            ? NewOnDemandInstancesConfig.fromJson(
                json_['newOnDemandInstances']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        newReservedInstances: json_.containsKey('newReservedInstances')
            ? NewReservedInstancesConfig.fromJson(
                json_['newReservedInstances']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        newSpotInstances: json_.containsKey('newSpotInstances')
            ? NewSpotInstancesConfig.fromJson(
                json_['newSpotInstances']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final newFlexStartInstances = this.newFlexStartInstances;
    final newOnDemandInstances = this.newOnDemandInstances;
    final newReservedInstances = this.newReservedInstances;
    final newSpotInstances = this.newSpotInstances;
    return {
      'newFlexStartInstances': ?newFlexStartInstances,
      'newOnDemandInstances': ?newOnDemandInstances,
      'newReservedInstances': ?newReservedInstances,
      'newSpotInstances': ?newSpotInstances,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// When set in a StorageResourceConfig, indicates that an existing
/// [Google Cloud Storage](https://cloud.google.com/storage) bucket should be
/// imported.
class ExistingBucketConfig {
  /// Name of the Cloud Storage bucket to import.
  ///
  /// Required. Immutable.
  core.String? bucket;

  ExistingBucketConfig({this.bucket});

  ExistingBucketConfig.fromJson(core.Map json_)
    : this(bucket: json_['bucket'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final bucket = this.bucket;
    return {'bucket': ?bucket};
  }
}

/// When set in a StorageResourceConfig, indicates that an existing
/// [Filestore](https://cloud.google.com/filestore) instance should be imported.
class ExistingFilestoreConfig {
  /// Name of the Filestore instance to import, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  ///
  /// Required. Immutable.
  core.String? filestore;

  ExistingFilestoreConfig({this.filestore});

  ExistingFilestoreConfig.fromJson(core.Map json_)
    : this(filestore: json_['filestore'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final filestore = this.filestore;
    return {'filestore': ?filestore};
  }
}

/// When set in a StorageResourceConfig, indicates that an existing
/// [Managed Lustre](https://cloud.google.com/products/managed-lustre) instance
/// should be imported.
class ExistingLustreConfig {
  /// Name of the Managed Lustre instance to import, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  ///
  /// Required. Immutable.
  core.String? lustre;

  ExistingLustreConfig({this.lustre});

  ExistingLustreConfig.fromJson(core.Map json_)
    : this(lustre: json_['lustre'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final lustre = this.lustre;
    return {'lustre': ?lustre};
  }
}

/// When set in a NetworkResourceConfig, indicates that an existing network
/// should be imported.
class ExistingNetworkConfig {
  /// Name of the network to import, in the format
  /// `projects/{project}/global/networks/{network}`.
  ///
  /// Required. Immutable.
  core.String? network;

  /// Particular subnetwork to use, in the format
  /// `projects/{project}/regions/{region}/subnetworks/{subnetwork}`.
  ///
  /// Required. Immutable.
  core.String? subnetwork;

  ExistingNetworkConfig({this.network, this.subnetwork});

  ExistingNetworkConfig.fromJson(core.Map json_)
    : this(
        network: json_['network'] as core.String?,
        subnetwork: json_['subnetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final network = this.network;
    final subnetwork = this.subnetwork;
    return {'network': ?network, 'subnetwork': ?subnetwork};
  }
}

/// Message describing filestore configuration
class FileShareConfig {
  /// Size of the filestore in GB.
  ///
  /// Must be between 1024 and 102400, and must meet scalability requirements
  /// described at https://cloud.google.com/filestore/docs/service-tiers.
  ///
  /// Required.
  core.String? capacityGb;

  /// Filestore share location
  ///
  /// Required.
  core.String? fileShare;

  FileShareConfig({this.capacityGb, this.fileShare});

  FileShareConfig.fromJson(core.Map json_)
    : this(
        capacityGb: json_['capacityGb'] as core.String?,
        fileShare: json_['fileShare'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final capacityGb = this.capacityGb;
    final fileShare = this.fileShare;
    return {'capacityGb': ?capacityGb, 'fileShare': ?fileShare};
  }
}

/// A reference to a [Filestore](https://cloud.google.com/filestore) instance.
class FilestoreReference {
  /// Name of the Filestore instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  ///
  /// Output only.
  core.String? filestore;

  FilestoreReference({this.filestore});

  FilestoreReference.fromJson(core.Map json_)
    : this(filestore: json_['filestore'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final filestore = this.filestore;
    return {'filestore': ?filestore};
  }
}

/// Message describing Google Cloud Storage autoclass configuration
class GcsAutoclassConfig {
  /// Enables Auto-class feature.
  ///
  /// Required.
  core.bool? enabled;

  /// Terminal storage class of the autoclass bucket
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TERMINAL_STORAGE_CLASS_UNSPECIFIED" : Unspecified terminal storage
  /// class
  core.String? terminalStorageClass;

  GcsAutoclassConfig({this.enabled, this.terminalStorageClass});

  GcsAutoclassConfig.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        terminalStorageClass: json_['terminalStorageClass'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final terminalStorageClass = this.terminalStorageClass;
    return {'enabled': ?enabled, 'terminalStorageClass': ?terminalStorageClass};
  }
}

/// Message describing Google Cloud Storage hierarchical namespace configuration
class GcsHierarchicalNamespaceConfig {
  /// Enables hierarchical namespace setup for the bucket.
  ///
  /// Required.
  core.bool? enabled;

  GcsHierarchicalNamespaceConfig({this.enabled});

  GcsHierarchicalNamespaceConfig.fromJson(core.Map json_)
    : this(enabled: json_['enabled'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    return {'enabled': ?enabled};
  }
}

/// Response message for ListClusters.
class ListClustersResponse {
  /// Clusters in the specified location.
  core.List<Cluster>? clusters;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is absent, there are no subsequent pages.
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

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// A reference to a
/// [Managed Lustre](https://cloud.google.com/products/managed-lustre) instance.
class LustreReference {
  /// Name of the Managed Lustre instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  ///
  /// Output only.
  core.String? lustre;

  LustreReference({this.lustre});

  LustreReference.fromJson(core.Map json_)
    : this(lustre: json_['lustre'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final lustre = this.lustre;
    return {'lustre': ?lustre};
  }
}

/// A reference to a [VPC network](https://cloud.google.com/vpc/docs/vpc) in
/// Google Compute Engine.
class NetworkReference {
  /// Name of the network, in the format
  /// `projects/{project}/global/networks/{network}`.
  ///
  /// Output only.
  core.String? network;

  /// Name of the particular subnetwork being used by the cluster, in the format
  /// `projects/{project}/regions/{region}/subnetworks/{subnetwork}`.
  ///
  /// Output only.
  core.String? subnetwork;

  NetworkReference({this.network, this.subnetwork});

  NetworkReference.fromJson(core.Map json_)
    : this(
        network: json_['network'] as core.String?,
        subnetwork: json_['subnetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final network = this.network;
    final subnetwork = this.subnetwork;
    return {'network': ?network, 'subnetwork': ?subnetwork};
  }
}

/// A resource representing a network that connects the various components of a
/// cluster together.
class NetworkResource {
  /// Configuration for this network resource, which describes how it should be
  /// created or imported.
  ///
  /// This field only controls how the network resource is initially created or
  /// imported. Subsequent changes to the network resource should be made via
  /// the resource's API and will not be reflected in the configuration.
  ///
  /// Immutable.
  NetworkResourceConfig? config;

  /// Reference to a network in Google Compute Engine.
  NetworkReference? network;

  NetworkResource({this.config, this.network});

  NetworkResource.fromJson(core.Map json_)
    : this(
        config: json_.containsKey('config')
            ? NetworkResourceConfig.fromJson(
                json_['config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        network: json_.containsKey('network')
            ? NetworkReference.fromJson(
                json_['network'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final config = this.config;
    final network = this.network;
    return {'config': ?config, 'network': ?network};
  }
}

/// Describes how a network resource should be initialized.
///
/// Each network resource can either be imported from an existing Google Cloud
/// resource or initialized when the cluster is created.
class NetworkResourceConfig {
  /// If set, indicates that an existing network should be imported.
  ///
  /// Optional. Immutable.
  ExistingNetworkConfig? existingNetwork;

  /// If set, indicates that a new network should be created.
  ///
  /// Optional. Immutable.
  NewNetworkConfig? newNetwork;

  NetworkResourceConfig({this.existingNetwork, this.newNetwork});

  NetworkResourceConfig.fromJson(core.Map json_)
    : this(
        existingNetwork: json_.containsKey('existingNetwork')
            ? ExistingNetworkConfig.fromJson(
                json_['existingNetwork'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newNetwork: json_.containsKey('newNetwork')
            ? NewNetworkConfig.fromJson(
                json_['newNetwork'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final existingNetwork = this.existingNetwork;
    final newNetwork = this.newNetwork;
    return {'existingNetwork': ?existingNetwork, 'newNetwork': ?newNetwork};
  }
}

/// When set in a StorageResourceConfig, indicates that a new
/// [Google Cloud Storage](https://cloud.google.com/storage) bucket should be
/// created.
class NewBucketConfig {
  /// If set, indicates that the bucket should use
  /// [Autoclass](https://cloud.google.com/storage/docs/autoclass).
  ///
  /// Optional. Immutable.
  GcsAutoclassConfig? autoclass;

  /// Name of the Cloud Storage bucket to create.
  ///
  /// Required. Immutable.
  core.String? bucket;

  /// If set, indicates that the bucket should use
  /// [hierarchical namespaces](https://cloud.google.com/storage/docs/hns-overview).
  ///
  /// Optional. Immutable.
  GcsHierarchicalNamespaceConfig? hierarchicalNamespace;

  /// If set, uses the provided storage class as the bucket's default storage
  /// class.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "STORAGE_CLASS_UNSPECIFIED" : Not set.
  /// - "STANDARD" : Best for data that is frequently accessed.
  /// - "NEARLINE" : Low-cost storage for data that is accessed less frequently.
  /// - "COLDLINE" : Very low-cost storage for infrequently accessed data.
  /// - "ARCHIVE" : Lowest-cost storage for data archiving, online backup, and
  /// disaster recovery.
  core.String? storageClass;

  NewBucketConfig({
    this.autoclass,
    this.bucket,
    this.hierarchicalNamespace,
    this.storageClass,
  });

  NewBucketConfig.fromJson(core.Map json_)
    : this(
        autoclass: json_.containsKey('autoclass')
            ? GcsAutoclassConfig.fromJson(
                json_['autoclass'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bucket: json_['bucket'] as core.String?,
        hierarchicalNamespace: json_.containsKey('hierarchicalNamespace')
            ? GcsHierarchicalNamespaceConfig.fromJson(
                json_['hierarchicalNamespace']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        storageClass: json_['storageClass'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoclass = this.autoclass;
    final bucket = this.bucket;
    final hierarchicalNamespace = this.hierarchicalNamespace;
    final storageClass = this.storageClass;
    return {
      'autoclass': ?autoclass,
      'bucket': ?bucket,
      'hierarchicalNamespace': ?hierarchicalNamespace,
      'storageClass': ?storageClass,
    };
  }
}

/// When set in a StorageResourceConfig, indicates that a new
/// [Filestore](https://cloud.google.com/filestore) instance should be created.
class NewFilestoreConfig {
  /// Description of the instance.
  ///
  /// Maximum of 2048 characters.
  ///
  /// Optional. Immutable.
  core.String? description;

  /// File system shares on the instance.
  ///
  /// Exactly one file share must be specified.
  ///
  /// Required. Immutable.
  core.List<FileShareConfig>? fileShares;

  /// Name of the Filestore instance to create, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  ///
  /// Required. Immutable.
  core.String? filestore;

  /// Access protocol to use for all file shares in the instance.
  ///
  /// Defaults to NFS V3 if not set.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : Not set.
  /// - "NFSV3" : NFS 3.0.
  /// - "NFSV41" : NFS 4.1.
  core.String? protocol;

  /// Service tier to use for the instance.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not set.
  /// - "ZONAL" : Offers expanded capacity and performance scaling capabilities
  /// suitable for high-performance computing application requirements.
  /// - "REGIONAL" : Offers features and availability needed for
  /// mission-critical, high-performance computing workloads.
  core.String? tier;

  NewFilestoreConfig({
    this.description,
    this.fileShares,
    this.filestore,
    this.protocol,
    this.tier,
  });

  NewFilestoreConfig.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        fileShares: (json_['fileShares'] as core.List?)
            ?.map(
              (value) => FileShareConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        filestore: json_['filestore'] as core.String?,
        protocol: json_['protocol'] as core.String?,
        tier: json_['tier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final fileShares = this.fileShares;
    final filestore = this.filestore;
    final protocol = this.protocol;
    final tier = this.tier;
    return {
      'description': ?description,
      'fileShares': ?fileShares,
      'filestore': ?filestore,
      'protocol': ?protocol,
      'tier': ?tier,
    };
  }
}

/// When set in a ComputeResourceConfig, indicates that VM instances should be
/// created using
/// [Flex Start](https://cloud.google.com/compute/docs/instances/provisioning-models).
class NewFlexStartInstancesConfig {
  /// Name of the Compute Engine
  /// [machine type](https://cloud.google.com/compute/docs/machine-resource) to
  /// use, e.g. `n2-standard-2`.
  ///
  /// Required. Immutable.
  core.String? machineType;

  /// Specifies the time limit for created instances.
  ///
  /// Instances will be terminated at the end of this duration.
  ///
  /// Required. Immutable.
  core.String? maxDuration;

  /// Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  ///
  /// Must be in the same region as the cluster, and must match the zone of any
  /// other resources specified in the cluster.
  ///
  /// Required. Immutable.
  core.String? zone;

  NewFlexStartInstancesConfig({this.machineType, this.maxDuration, this.zone});

  NewFlexStartInstancesConfig.fromJson(core.Map json_)
    : this(
        machineType: json_['machineType'] as core.String?,
        maxDuration: json_['maxDuration'] as core.String?,
        zone: json_['zone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final machineType = this.machineType;
    final maxDuration = this.maxDuration;
    final zone = this.zone;
    return {
      'machineType': ?machineType,
      'maxDuration': ?maxDuration,
      'zone': ?zone,
    };
  }
}

/// When set in a StorageResourceConfig, indicates that a new
/// [Managed Lustre](https://cloud.google.com/products/managed-lustre) instance
/// should be created.
class NewLustreConfig {
  /// Storage capacity of the instance in gibibytes (GiB).
  ///
  /// Allowed values are between 18000 and 7632000.
  ///
  /// Required. Immutable.
  core.String? capacityGb;

  /// Description of the Managed Lustre instance.
  ///
  /// Maximum of 2048 characters.
  ///
  /// Optional. Immutable.
  core.String? description;

  /// Filesystem name for this instance.
  ///
  /// This name is used by client-side tools, including when mounting the
  /// instance. Must be 8 characters or less and can only contain letters and
  /// numbers.
  ///
  /// Required. Immutable.
  core.String? filesystem;

  /// Name of the Managed Lustre instance to create, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  ///
  /// Required. Immutable.
  core.String? lustre;

  NewLustreConfig({
    this.capacityGb,
    this.description,
    this.filesystem,
    this.lustre,
  });

  NewLustreConfig.fromJson(core.Map json_)
    : this(
        capacityGb: json_['capacityGb'] as core.String?,
        description: json_['description'] as core.String?,
        filesystem: json_['filesystem'] as core.String?,
        lustre: json_['lustre'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final capacityGb = this.capacityGb;
    final description = this.description;
    final filesystem = this.filesystem;
    final lustre = this.lustre;
    return {
      'capacityGb': ?capacityGb,
      'description': ?description,
      'filesystem': ?filesystem,
      'lustre': ?lustre,
    };
  }
}

/// When set in a NetworkResourceConfig, indicates that a new network should be
/// created.
class NewNetworkConfig {
  /// Description of the network.
  ///
  /// Maximum of 2048 characters.
  ///
  /// Optional. Immutable.
  core.String? description;

  /// Name of the network to create, in the format
  /// `projects/{project}/global/networks/{network}`.
  ///
  /// Required. Immutable.
  core.String? network;

  NewNetworkConfig({this.description, this.network});

  NewNetworkConfig.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        network: json_['network'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final network = this.network;
    return {'description': ?description, 'network': ?network};
  }
}

/// When set in a ComputeResourceConfig, indicates that on-demand (i.e., using
/// the standard provisioning model) VM instances should be created.
class NewOnDemandInstancesConfig {
  /// Name of the Compute Engine
  /// [machine type](https://cloud.google.com/compute/docs/machine-resource) to
  /// use, e.g. `n2-standard-2`.
  ///
  /// Required. Immutable.
  core.String? machineType;

  /// Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  ///
  /// Must be in the same region as the cluster, and must match the zone of any
  /// other resources specified in the cluster.
  ///
  /// Required. Immutable.
  core.String? zone;

  NewOnDemandInstancesConfig({this.machineType, this.zone});

  NewOnDemandInstancesConfig.fromJson(core.Map json_)
    : this(
        machineType: json_['machineType'] as core.String?,
        zone: json_['zone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final machineType = this.machineType;
    final zone = this.zone;
    return {'machineType': ?machineType, 'zone': ?zone};
  }
}

/// When set in a ComputeResourceConfig, indicates that VM instances should be
/// created from a
/// [reservation](https://cloud.google.com/compute/docs/instances/reservations-overview).
class NewReservedInstancesConfig {
  /// Name of the reservation from which VM instances should be created, in the
  /// format `projects/{project}/zones/{zone}/reservations/{reservation}`.
  ///
  /// Optional. Immutable.
  core.String? reservation;

  NewReservedInstancesConfig({this.reservation});

  NewReservedInstancesConfig.fromJson(core.Map json_)
    : this(reservation: json_['reservation'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final reservation = this.reservation;
    return {'reservation': ?reservation};
  }
}

/// When set in a ComputeResourceConfig, indicates that
/// [spot VM](https://cloud.google.com/compute/docs/instances/spot) instances
/// should be created.
class NewSpotInstancesConfig {
  /// Name of the Compute Engine
  /// [machine type](https://cloud.google.com/compute/docs/machine-resource) to
  /// use, e.g. `n2-standard-2`.
  ///
  /// Required. Immutable.
  core.String? machineType;

  /// Specifies the termination action of the instance
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TERMINATION_ACTION_UNSPECIFIED" : Unspecified termination action
  /// - "STOP" : Stop the instance
  /// - "DELETE" : Delete the instance
  core.String? terminationAction;

  /// Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  ///
  /// Must be in the same region as the cluster, and must match the zone of any
  /// other resources specified in the cluster.
  ///
  /// Required. Immutable.
  core.String? zone;

  NewSpotInstancesConfig({this.machineType, this.terminationAction, this.zone});

  NewSpotInstancesConfig.fromJson(core.Map json_)
    : this(
        machineType: json_['machineType'] as core.String?,
        terminationAction: json_['terminationAction'] as core.String?,
        zone: json_['zone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final machineType = this.machineType;
    final terminationAction = this.terminationAction;
    final zone = this.zone;
    return {
      'machineType': ?machineType,
      'terminationAction': ?terminationAction,
      'zone': ?zone,
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

/// The component responsible for scheduling and running workloads on the
/// cluster as well as providing the user interface for interacting with the
/// cluster at runtime.
class Orchestrator {
  /// If set, indicates that the cluster should use Slurm as the orchestrator.
  ///
  /// Optional.
  SlurmOrchestrator? slurm;

  Orchestrator({this.slurm});

  Orchestrator.fromJson(core.Map json_)
    : this(
        slurm: json_.containsKey('slurm')
            ? SlurmOrchestrator.fromJson(
                json_['slurm'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final slurm = this.slurm;
    return {'slurm': ?slurm};
  }
}

/// Configuration for Slurm
/// [login nodes](https://slurm.schedmd.com/quickstart_admin.html#login) in the
/// cluster.
///
/// Login nodes are Compute Engine VM instances that allow users to access the
/// cluster over SSH.
class SlurmLoginNodes {
  /// Boot disk for the login node.
  ///
  /// Optional.
  BootDisk? bootDisk;

  /// Number of login node instances to create.
  ///
  /// Required.
  core.String? count;

  /// Whether [OS Login](https://cloud.google.com/compute/docs/oslogin) should
  /// be enabled on login node instances.
  ///
  /// Optional.
  core.bool? enableOsLogin;

  /// Whether login node instances should be assigned
  /// [external IP addresses](https://cloud.google.com/compute/docs/ip-addresses#externaladdresses).
  ///
  /// Optional.
  core.bool? enablePublicIps;

  /// Information about the login node instances that were created in Compute
  /// Engine.
  ///
  /// Output only.
  core.List<ComputeInstance>? instances;

  /// [Labels](https://cloud.google.com/compute/docs/labeling-resources) that
  /// should be applied to each login node instance.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the Compute Engine
  /// [machine type](https://cloud.google.com/compute/docs/machine-resource) to
  /// use for login nodes, e.g. `n2-standard-2`.
  ///
  /// Required.
  core.String? machineType;

  /// [Startup script](https://cloud.google.com/compute/docs/instances/startup-scripts/linux)
  /// to be run on each login node instance.
  ///
  /// Max 256KB. The script must complete within the system-defined default
  /// timeout of 5 minutes. For tasks that require more time, consider running
  /// them in the background using methods such as `&` or `nohup`.
  ///
  /// Optional.
  core.String? startupScript;

  /// How storage resources should be mounted on each login node.
  ///
  /// Optional.
  core.List<StorageConfig>? storageConfigs;

  /// Name of the zone in which login nodes should run, e.g., `us-central1-a`.
  ///
  /// Must be in the same region as the cluster, and must match the zone of any
  /// other resources specified in the cluster.
  ///
  /// Required.
  core.String? zone;

  SlurmLoginNodes({
    this.bootDisk,
    this.count,
    this.enableOsLogin,
    this.enablePublicIps,
    this.instances,
    this.labels,
    this.machineType,
    this.startupScript,
    this.storageConfigs,
    this.zone,
  });

  SlurmLoginNodes.fromJson(core.Map json_)
    : this(
        bootDisk: json_.containsKey('bootDisk')
            ? BootDisk.fromJson(
                json_['bootDisk'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        count: json_['count'] as core.String?,
        enableOsLogin: json_['enableOsLogin'] as core.bool?,
        enablePublicIps: json_['enablePublicIps'] as core.bool?,
        instances: (json_['instances'] as core.List?)
            ?.map(
              (value) => ComputeInstance.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        machineType: json_['machineType'] as core.String?,
        startupScript: json_['startupScript'] as core.String?,
        storageConfigs: (json_['storageConfigs'] as core.List?)
            ?.map(
              (value) => StorageConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        zone: json_['zone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bootDisk = this.bootDisk;
    final count = this.count;
    final enableOsLogin = this.enableOsLogin;
    final enablePublicIps = this.enablePublicIps;
    final instances = this.instances;
    final labels = this.labels;
    final machineType = this.machineType;
    final startupScript = this.startupScript;
    final storageConfigs = this.storageConfigs;
    final zone = this.zone;
    return {
      'bootDisk': ?bootDisk,
      'count': ?count,
      'enableOsLogin': ?enableOsLogin,
      'enablePublicIps': ?enablePublicIps,
      'instances': ?instances,
      'labels': ?labels,
      'machineType': ?machineType,
      'startupScript': ?startupScript,
      'storageConfigs': ?storageConfigs,
      'zone': ?zone,
    };
  }
}

/// Configuration for Slurm nodesets in the cluster.
///
/// Nodesets are groups of compute nodes used by Slurm that are responsible for
/// running workloads submitted to the cluster.
class SlurmNodeSet {
  /// ID of the compute resource on which this nodeset will run.
  ///
  /// Must match a key in the cluster's
  /// \[compute_resources\](Cluster.compute_resources).
  ///
  /// Optional.
  core.String? computeId;

  /// If set, indicates that the nodeset should be backed by Compute Engine
  /// instances.
  ///
  /// Optional.
  ComputeInstanceSlurmNodeSet? computeInstance;

  /// Identifier for the nodeset, which allows it to be referenced by
  /// partitions.
  ///
  /// Must conform to
  /// \[RFC-1034\](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  ///
  /// Required.
  core.String? id;

  /// Controls how many additional nodes a cluster can bring online to handle
  /// workloads.
  ///
  /// Set this value to enable dynamic node creation and limit the number of
  /// additional nodes the cluster can bring online. Leave empty if you do not
  /// want the cluster to create nodes dynamically, and instead rely only on
  /// static nodes.
  ///
  /// Optional.
  core.String? maxDynamicNodeCount;

  /// Number of nodes to be statically created for this nodeset.
  ///
  /// The cluster will attempt to ensure that at least this many nodes exist at
  /// all times.
  ///
  /// Optional.
  core.String? staticNodeCount;

  /// How storage resources should be mounted on each compute node.
  ///
  /// Optional.
  core.List<StorageConfig>? storageConfigs;

  SlurmNodeSet({
    this.computeId,
    this.computeInstance,
    this.id,
    this.maxDynamicNodeCount,
    this.staticNodeCount,
    this.storageConfigs,
  });

  SlurmNodeSet.fromJson(core.Map json_)
    : this(
        computeId: json_['computeId'] as core.String?,
        computeInstance: json_.containsKey('computeInstance')
            ? ComputeInstanceSlurmNodeSet.fromJson(
                json_['computeInstance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        id: json_['id'] as core.String?,
        maxDynamicNodeCount: json_['maxDynamicNodeCount'] as core.String?,
        staticNodeCount: json_['staticNodeCount'] as core.String?,
        storageConfigs: (json_['storageConfigs'] as core.List?)
            ?.map(
              (value) => StorageConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final computeId = this.computeId;
    final computeInstance = this.computeInstance;
    final id = this.id;
    final maxDynamicNodeCount = this.maxDynamicNodeCount;
    final staticNodeCount = this.staticNodeCount;
    final storageConfigs = this.storageConfigs;
    return {
      'computeId': ?computeId,
      'computeInstance': ?computeInstance,
      'id': ?id,
      'maxDynamicNodeCount': ?maxDynamicNodeCount,
      'staticNodeCount': ?staticNodeCount,
      'storageConfigs': ?storageConfigs,
    };
  }
}

/// When set in Orchestrator, indicates that the cluster should use
/// [Slurm](https://slurm.schedmd.com/) as the orchestrator.
class SlurmOrchestrator {
  /// Default partition to use for submitted jobs that do not explicitly specify
  /// a partition.
  ///
  /// Required if and only if there is more than one partition, in which case it
  /// must match the id of one of the partitions.
  ///
  /// Optional.
  core.String? defaultPartition;

  /// Slurm [epilog scripts](https://slurm.schedmd.com/prolog_epilog.html),
  /// which will be executed by compute nodes whenever a node finishes running a
  /// job.
  ///
  /// Values must not be empty.
  ///
  /// Optional.
  core.List<core.String>? epilogBashScripts;

  /// Configuration for login nodes, which allow users to access the cluster
  /// over SSH.
  ///
  /// Required.
  SlurmLoginNodes? loginNodes;

  /// Configuration of Slurm nodesets, which define groups of compute resources
  /// that can be used by Slurm.
  ///
  /// At least one compute node is required.
  ///
  /// Required.
  core.List<SlurmNodeSet>? nodeSets;

  /// Configuration of Slurm partitions, which group one or more nodesets.
  ///
  /// Acts as a queue against which jobs can be submitted. At least one
  /// partition is required.
  ///
  /// Required.
  core.List<SlurmPartition>? partitions;

  /// Slurm [prolog scripts](https://slurm.schedmd.com/prolog_epilog.html),
  /// which will be executed by compute nodes before a node begins running a new
  /// job.
  ///
  /// Values must not be empty.
  ///
  /// Optional.
  core.List<core.String>? prologBashScripts;

  SlurmOrchestrator({
    this.defaultPartition,
    this.epilogBashScripts,
    this.loginNodes,
    this.nodeSets,
    this.partitions,
    this.prologBashScripts,
  });

  SlurmOrchestrator.fromJson(core.Map json_)
    : this(
        defaultPartition: json_['defaultPartition'] as core.String?,
        epilogBashScripts: (json_['epilogBashScripts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        loginNodes: json_.containsKey('loginNodes')
            ? SlurmLoginNodes.fromJson(
                json_['loginNodes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        nodeSets: (json_['nodeSets'] as core.List?)
            ?.map(
              (value) => SlurmNodeSet.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        partitions: (json_['partitions'] as core.List?)
            ?.map(
              (value) => SlurmPartition.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        prologBashScripts: (json_['prologBashScripts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final defaultPartition = this.defaultPartition;
    final epilogBashScripts = this.epilogBashScripts;
    final loginNodes = this.loginNodes;
    final nodeSets = this.nodeSets;
    final partitions = this.partitions;
    final prologBashScripts = this.prologBashScripts;
    return {
      'defaultPartition': ?defaultPartition,
      'epilogBashScripts': ?epilogBashScripts,
      'loginNodes': ?loginNodes,
      'nodeSets': ?nodeSets,
      'partitions': ?partitions,
      'prologBashScripts': ?prologBashScripts,
    };
  }
}

/// Configuration for Slurm partitions in the cluster.
///
/// Partitions are groups of nodesets, and are how clients specify where their
/// workloads should be run.
class SlurmPartition {
  /// ID of the partition, which is how users will identify it.
  ///
  /// Must conform to
  /// \[RFC-1034\](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  ///
  /// Required.
  core.String? id;

  /// IDs of the nodesets that make up this partition.
  ///
  /// Values must match SlurmNodeSet.id.
  ///
  /// Required.
  core.List<core.String>? nodeSetIds;

  SlurmPartition({this.id, this.nodeSetIds});

  SlurmPartition.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        nodeSetIds: (json_['nodeSetIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final nodeSetIds = this.nodeSetIds;
    return {'id': ?id, 'nodeSetIds': ?nodeSetIds};
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

/// Description of how a storage resource should be mounted on a VM instance.
class StorageConfig {
  /// ID of the storage resource to mount, which must match a key in the
  /// cluster's \[storage_resources\](Cluster.storage_resources).
  ///
  /// Required.
  core.String? id;

  /// A directory inside the VM instance's file system where the storage
  /// resource should be mounted (e.g., `/mnt/share`).
  ///
  /// Required.
  core.String? localMount;

  StorageConfig({this.id, this.localMount});

  StorageConfig.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        localMount: json_['localMount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final localMount = this.localMount;
    return {'id': ?id, 'localMount': ?localMount};
  }
}

/// A resource representing a form of persistent storage that is accessible to
/// compute resources in the cluster.
class StorageResource {
  /// Reference to a Google Cloud Storage bucket.
  ///
  /// Populated if and only if the storage resource was configured to use Google
  /// Cloud Storage.
  BucketReference? bucket;

  /// Configuration for this storage resource, which describes how it should be
  /// created or imported.
  ///
  /// This field only controls how the storage resource is initially created or
  /// imported. Subsequent changes to the storage resource should be made via
  /// the resource's API and will not be reflected in the configuration.
  ///
  /// Required. Immutable.
  StorageResourceConfig? config;

  /// Reference to a Filestore instance.
  ///
  /// Populated if and only if the storage resource was configured to use
  /// Filestore.
  FilestoreReference? filestore;

  /// Reference to a Managed Lustre instance.
  ///
  /// Populated if and only if the storage resource was configured to use
  /// Managed Lustre.
  LustreReference? lustre;

  StorageResource({this.bucket, this.config, this.filestore, this.lustre});

  StorageResource.fromJson(core.Map json_)
    : this(
        bucket: json_.containsKey('bucket')
            ? BucketReference.fromJson(
                json_['bucket'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        config: json_.containsKey('config')
            ? StorageResourceConfig.fromJson(
                json_['config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        filestore: json_.containsKey('filestore')
            ? FilestoreReference.fromJson(
                json_['filestore'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lustre: json_.containsKey('lustre')
            ? LustreReference.fromJson(
                json_['lustre'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucket = this.bucket;
    final config = this.config;
    final filestore = this.filestore;
    final lustre = this.lustre;
    return {
      'bucket': ?bucket,
      'config': ?config,
      'filestore': ?filestore,
      'lustre': ?lustre,
    };
  }
}

/// Describes how a storage resource should be initialized.
///
/// Each storage resource can either be imported from an existing Google Cloud
/// resource or initialized when the cluster is created.
class StorageResourceConfig {
  /// If set, indicates that an existing Cloud Storage bucket should be
  /// imported.
  ///
  /// Optional. Immutable.
  ExistingBucketConfig? existingBucket;

  /// If set, indicates that an existing Filestore instance should be imported.
  ///
  /// Optional. Immutable.
  ExistingFilestoreConfig? existingFilestore;

  /// If set, indicates that an existing Managed Lustre instance should be
  /// imported.
  ///
  /// Optional. Immutable.
  ExistingLustreConfig? existingLustre;

  /// If set, indicates that a new Cloud Storage bucket should be created.
  ///
  /// Optional. Immutable.
  NewBucketConfig? newBucket;

  /// If set, indicates that a new Filestore instance should be created.
  ///
  /// Optional. Immutable.
  NewFilestoreConfig? newFilestore;

  /// If set, indicates that a new Managed Lustre instance should be created.
  ///
  /// Optional. Immutable.
  NewLustreConfig? newLustre;

  StorageResourceConfig({
    this.existingBucket,
    this.existingFilestore,
    this.existingLustre,
    this.newBucket,
    this.newFilestore,
    this.newLustre,
  });

  StorageResourceConfig.fromJson(core.Map json_)
    : this(
        existingBucket: json_.containsKey('existingBucket')
            ? ExistingBucketConfig.fromJson(
                json_['existingBucket'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        existingFilestore: json_.containsKey('existingFilestore')
            ? ExistingFilestoreConfig.fromJson(
                json_['existingFilestore']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        existingLustre: json_.containsKey('existingLustre')
            ? ExistingLustreConfig.fromJson(
                json_['existingLustre'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newBucket: json_.containsKey('newBucket')
            ? NewBucketConfig.fromJson(
                json_['newBucket'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newFilestore: json_.containsKey('newFilestore')
            ? NewFilestoreConfig.fromJson(
                json_['newFilestore'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newLustre: json_.containsKey('newLustre')
            ? NewLustreConfig.fromJson(
                json_['newLustre'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final existingBucket = this.existingBucket;
    final existingFilestore = this.existingFilestore;
    final existingLustre = this.existingLustre;
    final newBucket = this.newBucket;
    final newFilestore = this.newFilestore;
    final newLustre = this.newLustre;
    return {
      'existingBucket': ?existingBucket,
      'existingFilestore': ?existingFilestore,
      'existingLustre': ?existingLustre,
      'newBucket': ?newBucket,
      'newFilestore': ?newFilestore,
      'newLustre': ?newLustre,
    };
  }
}
