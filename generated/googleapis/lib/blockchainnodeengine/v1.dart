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

/// Blockchain Node Engine API - v1
///
/// For more information, see <https://cloud.google.com/blockchain-node-engine>
///
/// Create an instance of [BlockchainNodeEngineApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBlockchainNodesResource]
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

class BlockchainNodeEngineApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BlockchainNodeEngineApi(http.Client client,
      {core.String rootUrl = 'https://blockchainnodeengine.googleapis.com/',
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

  ProjectsLocationsBlockchainNodesResource get blockchainNodes =>
      ProjectsLocationsBlockchainNodesResource(_requester);
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

class ProjectsLocationsBlockchainNodesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBlockchainNodesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new blockchain node in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [blockchainNodeId] - Required. ID of the requesting object.
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
    BlockchainNode request,
    core.String parent, {
    core.String? blockchainNodeId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (blockchainNodeId != null) 'blockchainNodeId': [blockchainNodeId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/blockchainNodes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single blockchain node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the blockchain node to
  /// delete. e.g.
  /// `projects/my-project/locations/us-central1/blockchainNodes/my-node`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/blockchainNodes/\[^/\]+$`.
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

  /// Gets details of a single blockchain node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the blockchain node to
  /// fetch. e.g.
  /// `projects/my-project/locations/us-central1/blockchainNodes/my-node`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/blockchainNodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BlockchainNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BlockchainNode> get(
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
    return BlockchainNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists blockchain nodes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListNodesRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Hint for how to order the results.
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
  /// Completes with a [ListBlockchainNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBlockchainNodesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/blockchainNodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBlockchainNodesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single blockchain node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The fully qualified name of the blockchain node.
  /// e.g. `projects/my-project/locations/us-central1/blockchainNodes/my-node`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/blockchainNodes/\[^/\]+$`.
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
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Blockchain node resource by the update. The fields
  /// specified in the `update_mask` are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    BlockchainNode request,
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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

/// A representation of a blockchain node.
class BlockchainNode {
  /// The blockchain type of the node.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "BLOCKCHAIN_TYPE_UNSPECIFIED" : Blockchain type has not been specified,
  /// but should be.
  /// - "ETHEREUM" : The blockchain type is Ethereum.
  core.String? blockchainType;

  /// The connection information used to interact with a blockchain node.
  ///
  /// Output only.
  ConnectionInfo? connectionInfo;

  /// The timestamp at which the blockchain node was first created.
  ///
  /// Output only.
  core.String? createTime;

  /// Ethereum-specific blockchain node details.
  EthereumDetails? ethereumDetails;

  /// User-provided key-value pairs.
  core.Map<core.String, core.String>? labels;

  /// The fully qualified name of the blockchain node.
  ///
  /// e.g. `projects/my-project/locations/us-central1/blockchainNodes/my-node`.
  ///
  /// Output only.
  core.String? name;

  /// When true, the node is only accessible via Private Service Connect; no
  /// public endpoints are exposed.
  ///
  /// Otherwise, the node is only accessible via public endpoints. Warning:
  /// Private Service Connect enabled nodes may require a manual migration
  /// effort to remain compatible with future versions of the product. If this
  /// feature is enabled, you will be notified of these changes along with any
  /// required action to avoid disruption. See
  /// https://cloud.google.com/vpc/docs/private-service-connect.
  ///
  /// Optional.
  core.bool? privateServiceConnectEnabled;

  /// A status representing the state of the node.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state has not been specified.
  /// - "CREATING" : The node has been requested and is in the process of being
  /// created.
  /// - "DELETING" : The existing node is undergoing deletion, but is not yet
  /// finished.
  /// - "RUNNING" : The node is running and ready for use.
  /// - "ERROR" : The node is in an unexpected or errored state.
  /// - "UPDATING" : The node is currently being updated.
  /// - "REPAIRING" : The node is currently being repaired.
  /// - "RECONCILING" : The node is currently being reconciled.
  core.String? state;

  /// The timestamp at which the blockchain node was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  BlockchainNode({
    this.blockchainType,
    this.connectionInfo,
    this.createTime,
    this.ethereumDetails,
    this.labels,
    this.name,
    this.privateServiceConnectEnabled,
    this.state,
    this.updateTime,
  });

  BlockchainNode.fromJson(core.Map json_)
      : this(
          blockchainType: json_.containsKey('blockchainType')
              ? json_['blockchainType'] as core.String
              : null,
          connectionInfo: json_.containsKey('connectionInfo')
              ? ConnectionInfo.fromJson(json_['connectionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          ethereumDetails: json_.containsKey('ethereumDetails')
              ? EthereumDetails.fromJson(json_['ethereumDetails']
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
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          privateServiceConnectEnabled:
              json_.containsKey('privateServiceConnectEnabled')
                  ? json_['privateServiceConnectEnabled'] as core.bool
                  : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blockchainType != null) 'blockchainType': blockchainType!,
        if (connectionInfo != null) 'connectionInfo': connectionInfo!,
        if (createTime != null) 'createTime': createTime!,
        if (ethereumDetails != null) 'ethereumDetails': ethereumDetails!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (privateServiceConnectEnabled != null)
          'privateServiceConnectEnabled': privateServiceConnectEnabled!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// The connection information through which to interact with a blockchain node.
class ConnectionInfo {
  /// The endpoint information through which to interact with a blockchain node.
  ///
  /// Output only.
  EndpointInfo? endpointInfo;

  /// A service attachment that exposes a node, and has the following format:
  /// projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  ///
  /// Output only.
  core.String? serviceAttachment;

  ConnectionInfo({
    this.endpointInfo,
    this.serviceAttachment,
  });

  ConnectionInfo.fromJson(core.Map json_)
      : this(
          endpointInfo: json_.containsKey('endpointInfo')
              ? EndpointInfo.fromJson(
                  json_['endpointInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAttachment: json_.containsKey('serviceAttachment')
              ? json_['serviceAttachment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpointInfo != null) 'endpointInfo': endpointInfo!,
        if (serviceAttachment != null) 'serviceAttachment': serviceAttachment!,
      };
}

/// Contains endpoint information through which to interact with a blockchain
/// node.
class EndpointInfo {
  /// The assigned URL for the node JSON-RPC API endpoint.
  ///
  /// Output only.
  core.String? jsonRpcApiEndpoint;

  /// The assigned URL for the node WebSockets API endpoint.
  ///
  /// Output only.
  core.String? websocketsApiEndpoint;

  EndpointInfo({
    this.jsonRpcApiEndpoint,
    this.websocketsApiEndpoint,
  });

  EndpointInfo.fromJson(core.Map json_)
      : this(
          jsonRpcApiEndpoint: json_.containsKey('jsonRpcApiEndpoint')
              ? json_['jsonRpcApiEndpoint'] as core.String
              : null,
          websocketsApiEndpoint: json_.containsKey('websocketsApiEndpoint')
              ? json_['websocketsApiEndpoint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jsonRpcApiEndpoint != null)
          'jsonRpcApiEndpoint': jsonRpcApiEndpoint!,
        if (websocketsApiEndpoint != null)
          'websocketsApiEndpoint': websocketsApiEndpoint!,
      };
}

/// Ethereum-specific blockchain node details.
class EthereumDetails {
  /// Ethereum-specific endpoint information.
  ///
  /// Output only.
  EthereumEndpoints? additionalEndpoints;

  /// Enables JSON-RPC access to functions in the `admin` namespace.
  ///
  /// Defaults to `false`.
  ///
  /// Immutable.
  core.bool? apiEnableAdmin;

  /// Enables JSON-RPC access to functions in the `debug` namespace.
  ///
  /// Defaults to `false`.
  ///
  /// Immutable.
  core.bool? apiEnableDebug;

  /// The consensus client.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "CONSENSUS_CLIENT_UNSPECIFIED" : Consensus client has not been
  /// specified, but should be.
  /// - "LIGHTHOUSE" : Consensus client implementation written in Rust,
  /// maintained by Sigma Prime. See \[Lighthouse - Sigma
  /// Prime\](https://lighthouse.sigmaprime.io/) for details.
  /// - "ERIGON_EMBEDDED_CONSENSUS_LAYER" : Erigon's embedded consensus client
  /// embedded in the execution client. Note this option is not currently
  /// available when creating new blockchain nodes. See
  /// [Erigon on GitHub](https://github.com/ledgerwatch/erigon#embedded-consensus-layer)
  /// for details.
  core.String? consensusClient;

  /// The execution client
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "EXECUTION_CLIENT_UNSPECIFIED" : Execution client has not been
  /// specified, but should be.
  /// - "GETH" : Official Go implementation of the Ethereum protocol. See
  /// \[go-ethereum\](https://geth.ethereum.org/) for details.
  /// - "ERIGON" : An implementation of Ethereum (execution client), on the
  /// efficiency frontier, written in Go. See
  /// [Erigon on GitHub](https://github.com/ledgerwatch/erigon) for details.
  core.String? executionClient;

  /// Details for the Geth execution client.
  GethDetails? gethDetails;

  /// The Ethereum environment being accessed.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "NETWORK_UNSPECIFIED" : The network has not been specified, but should
  /// be.
  /// - "MAINNET" : The Ethereum Mainnet.
  /// - "TESTNET_GOERLI_PRATER" : Deprecated: The Ethereum Testnet based on
  /// Goerli protocol. Holesky (TESTNET_HOLESKY) is the recommended testnet to
  /// replace Goerli.
  /// - "TESTNET_SEPOLIA" : The Ethereum Testnet based on Sepolia/Bepolia
  /// protocol. See https://github.com/eth-clients/sepolia.
  /// - "TESTNET_HOLESKY" : The Ethereum Testnet based on Holesky specification.
  /// See https://github.com/eth-clients/holesky.
  core.String? network;

  /// The type of Ethereum node.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "NODE_TYPE_UNSPECIFIED" : Node type has not been specified, but should
  /// be.
  /// - "LIGHT" : An Ethereum node that only downloads Ethereum block headers.
  /// - "FULL" : Keeps a complete copy of the blockchain data, and contributes
  /// to the network by receiving, validating, and forwarding transactions.
  /// - "ARCHIVE" : Holds the same data as full node as well as all of the
  /// blockchain's history state data dating back to the Genesis Block.
  core.String? nodeType;

  /// Configuration for validator-related parameters on the beacon client, and
  /// for any GCP-managed validator client.
  ValidatorConfig? validatorConfig;

  EthereumDetails({
    this.additionalEndpoints,
    this.apiEnableAdmin,
    this.apiEnableDebug,
    this.consensusClient,
    this.executionClient,
    this.gethDetails,
    this.network,
    this.nodeType,
    this.validatorConfig,
  });

  EthereumDetails.fromJson(core.Map json_)
      : this(
          additionalEndpoints: json_.containsKey('additionalEndpoints')
              ? EthereumEndpoints.fromJson(json_['additionalEndpoints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          apiEnableAdmin: json_.containsKey('apiEnableAdmin')
              ? json_['apiEnableAdmin'] as core.bool
              : null,
          apiEnableDebug: json_.containsKey('apiEnableDebug')
              ? json_['apiEnableDebug'] as core.bool
              : null,
          consensusClient: json_.containsKey('consensusClient')
              ? json_['consensusClient'] as core.String
              : null,
          executionClient: json_.containsKey('executionClient')
              ? json_['executionClient'] as core.String
              : null,
          gethDetails: json_.containsKey('gethDetails')
              ? GethDetails.fromJson(
                  json_['gethDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          nodeType: json_.containsKey('nodeType')
              ? json_['nodeType'] as core.String
              : null,
          validatorConfig: json_.containsKey('validatorConfig')
              ? ValidatorConfig.fromJson(json_['validatorConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalEndpoints != null)
          'additionalEndpoints': additionalEndpoints!,
        if (apiEnableAdmin != null) 'apiEnableAdmin': apiEnableAdmin!,
        if (apiEnableDebug != null) 'apiEnableDebug': apiEnableDebug!,
        if (consensusClient != null) 'consensusClient': consensusClient!,
        if (executionClient != null) 'executionClient': executionClient!,
        if (gethDetails != null) 'gethDetails': gethDetails!,
        if (network != null) 'network': network!,
        if (nodeType != null) 'nodeType': nodeType!,
        if (validatorConfig != null) 'validatorConfig': validatorConfig!,
      };
}

/// Contains endpoint information specific to Ethereum nodes.
class EthereumEndpoints {
  /// The assigned URL for the node's Beacon API endpoint.
  ///
  /// Output only.
  core.String? beaconApiEndpoint;

  /// The assigned URL for the node's Beacon Prometheus metrics endpoint.
  ///
  /// See
  /// [Prometheus Metrics](https://lighthouse-book.sigmaprime.io/advanced_metrics.html)
  /// for more details.
  ///
  /// Output only.
  core.String? beaconPrometheusMetricsApiEndpoint;

  /// The assigned URL for the node's execution client's Prometheus metrics
  /// endpoint.
  ///
  /// Output only.
  core.String? executionClientPrometheusMetricsApiEndpoint;

  EthereumEndpoints({
    this.beaconApiEndpoint,
    this.beaconPrometheusMetricsApiEndpoint,
    this.executionClientPrometheusMetricsApiEndpoint,
  });

  EthereumEndpoints.fromJson(core.Map json_)
      : this(
          beaconApiEndpoint: json_.containsKey('beaconApiEndpoint')
              ? json_['beaconApiEndpoint'] as core.String
              : null,
          beaconPrometheusMetricsApiEndpoint:
              json_.containsKey('beaconPrometheusMetricsApiEndpoint')
                  ? json_['beaconPrometheusMetricsApiEndpoint'] as core.String
                  : null,
          executionClientPrometheusMetricsApiEndpoint:
              json_.containsKey('executionClientPrometheusMetricsApiEndpoint')
                  ? json_['executionClientPrometheusMetricsApiEndpoint']
                      as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (beaconApiEndpoint != null) 'beaconApiEndpoint': beaconApiEndpoint!,
        if (beaconPrometheusMetricsApiEndpoint != null)
          'beaconPrometheusMetricsApiEndpoint':
              beaconPrometheusMetricsApiEndpoint!,
        if (executionClientPrometheusMetricsApiEndpoint != null)
          'executionClientPrometheusMetricsApiEndpoint':
              executionClientPrometheusMetricsApiEndpoint!,
      };
}

/// Options for the Geth execution client.
///
/// See \[Command-line
/// Options\](https://geth.ethereum.org/docs/fundamentals/command-line-options)
/// for more details.
class GethDetails {
  /// Blockchain garbage collection mode.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "GARBAGE_COLLECTION_MODE_UNSPECIFIED" : The garbage collection has not
  /// been specified.
  /// - "FULL" : Configures Geth's garbage collection so that older data not
  /// needed for a full node is deleted. This is the default mode when creating
  /// a full node.
  /// - "ARCHIVE" : Configures Geth's garbage collection so that old data is
  /// never deleted. This is the default mode when creating an archive node.
  /// This value can also be chosen when creating a full node in order to create
  /// a partial/recent archive node. See
  /// [Sync modes](https://geth.ethereum.org/docs/fundamentals/sync-modes) for
  /// more details.
  core.String? garbageCollectionMode;

  GethDetails({
    this.garbageCollectionMode,
  });

  GethDetails.fromJson(core.Map json_)
      : this(
          garbageCollectionMode: json_.containsKey('garbageCollectionMode')
              ? json_['garbageCollectionMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (garbageCollectionMode != null)
          'garbageCollectionMode': garbageCollectionMode!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// Message for response to listing blockchain nodes.
class ListBlockchainNodesResponse {
  /// The list of nodes
  core.List<BlockchainNode>? blockchainNodes;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBlockchainNodesResponse({
    this.blockchainNodes,
    this.nextPageToken,
    this.unreachable,
  });

  ListBlockchainNodesResponse.fromJson(core.Map json_)
      : this(
          blockchainNodes: json_.containsKey('blockchainNodes')
              ? (json_['blockchainNodes'] as core.List)
                  .map((value) => BlockchainNode.fromJson(
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
        if (blockchainNodes != null) 'blockchainNodes': blockchainNodes!,
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

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Configuration for validator-related parameters on the beacon client, and for
/// any GCP-managed validator client.
class ValidatorConfig {
  /// An Ethereum address which the beacon client will send fee rewards to if no
  /// recipient is configured in the validator client.
  ///
  /// See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or
  /// https://docs.prylabs.network/docs/execution-node/fee-recipient for
  /// examples of how this is used. Note that while this is often described as
  /// "suggested", as we run the execution node we can trust the execution node,
  /// and therefore this is considered enforced.
  core.String? beaconFeeRecipient;

  /// When true, deploys a GCP-managed validator client alongside the beacon
  /// client.
  ///
  /// Immutable.
  core.bool? managedValidatorClient;

  /// URLs for MEV-relay services to use for block building.
  ///
  /// When set, a GCP-managed MEV-boost service is configured on the beacon
  /// client.
  core.List<core.String>? mevRelayUrls;

  ValidatorConfig({
    this.beaconFeeRecipient,
    this.managedValidatorClient,
    this.mevRelayUrls,
  });

  ValidatorConfig.fromJson(core.Map json_)
      : this(
          beaconFeeRecipient: json_.containsKey('beaconFeeRecipient')
              ? json_['beaconFeeRecipient'] as core.String
              : null,
          managedValidatorClient: json_.containsKey('managedValidatorClient')
              ? json_['managedValidatorClient'] as core.bool
              : null,
          mevRelayUrls: json_.containsKey('mevRelayUrls')
              ? (json_['mevRelayUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (beaconFeeRecipient != null)
          'beaconFeeRecipient': beaconFeeRecipient!,
        if (managedValidatorClient != null)
          'managedValidatorClient': managedValidatorClient!,
        if (mevRelayUrls != null) 'mevRelayUrls': mevRelayUrls!,
      };
}
