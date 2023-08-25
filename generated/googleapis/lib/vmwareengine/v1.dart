// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations

/// VMware Engine API - v1
///
/// The Google VMware Engine API lets you programmatically manage VMware
/// environments.
///
/// For more information, see
/// <https://cloud.google.com/solutions/vmware-as-a-service>
///
/// Create an instance of [VMwareEngineApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsNetworkPoliciesResource]
///     - [ProjectsLocationsNodeTypesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPrivateCloudsResource]
///       - [ProjectsLocationsPrivateCloudsClustersResource]
///       - [ProjectsLocationsPrivateCloudsHcxActivationKeysResource]
///       - [ProjectsLocationsPrivateCloudsSubnetsResource]
///     - [ProjectsLocationsPrivateConnectionsResource]
///       - [ProjectsLocationsPrivateConnectionsPeeringRoutesResource]
///     - [ProjectsLocationsVmwareEngineNetworksResource]
library vmwareengine_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Google VMware Engine API lets you programmatically manage VMware
/// environments.
class VMwareEngineApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  VMwareEngineApi(http.Client client,
      {core.String rootUrl = 'https://vmwareengine.googleapis.com/',
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

  ProjectsLocationsNetworkPoliciesResource get networkPolicies =>
      ProjectsLocationsNetworkPoliciesResource(_requester);
  ProjectsLocationsNodeTypesResource get nodeTypes =>
      ProjectsLocationsNodeTypesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPrivateCloudsResource get privateClouds =>
      ProjectsLocationsPrivateCloudsResource(_requester);
  ProjectsLocationsPrivateConnectionsResource get privateConnections =>
      ProjectsLocationsPrivateConnectionsResource(_requester);
  ProjectsLocationsVmwareEngineNetworksResource get vmwareEngineNetworks =>
      ProjectsLocationsVmwareEngineNetworksResource(_requester);

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

class ProjectsLocationsNetworkPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkPoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new network policy in a given VMware Engine network of a project
  /// and location (region).
  ///
  /// A new network policy cannot be created if another network policy already
  /// exists in the same scope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location (region) to create
  /// the new network policy in. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: `projects/my-project/locations/us-central1`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [networkPolicyId] - Required. The user-provided identifier of the network
  /// policy to be created. This identifier must be unique within parent
  /// `projects/{my-project}/locations/{us-central1}/networkPolicies` and
  /// becomes the final token in the name URI. The identifier must meet the
  /// following requirements: * Only contains 1-63 alphanumeric characters and
  /// hyphens * Begins with an alphabetical character * Ends with a non-hyphen
  /// character * Not formatted as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    NetworkPolicy request,
    core.String parent, {
    core.String? networkPolicyId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (networkPolicyId != null) 'networkPolicyId': [networkPolicyId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/networkPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `NetworkPolicy` resource.
  ///
  /// A network policy cannot be deleted when `NetworkService.state` is set to
  /// `RECONCILING` for either its external IP or internet access service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the network policy to delete.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Retrieves a `NetworkPolicy` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the network policy to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NetworkPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NetworkPolicy> get(
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
    return NetworkPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `NetworkPolicy` resources in a specified project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location (region) to query
  /// for network policies. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-central1`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of network
  /// policies, you can exclude the ones named `example-policy` by specifying
  /// `name != "example-policy"`. To filter on multiple expressions, provide
  /// each separate expression within parentheses. For example: ``` (name =
  /// "example-policy") (createTime > "2021-04-12T08:15:10.40Z") ``` By default,
  /// each expression is an `AND` expression. However, you can include `AND` and
  /// `OR` expressions explicitly. For example: ``` (name = "example-policy-1")
  /// AND (createTime > "2021-04-12T08:15:10.40Z") OR (name =
  /// "example-policy-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of network policies to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListNetworkPolicies`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListNetworkPolicies` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNetworkPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNetworkPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/networkPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNetworkPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies a `NetworkPolicy` resource.
  ///
  /// Only the following fields can be updated: `internet_access`,
  /// `external_ip`, `edge_services_cidr`. Only fields specified in `updateMask`
  /// are applied. When updating a network policy, the external IP network
  /// service can only be disabled if there are no external IP addresses present
  /// in the scope of the policy. Also, a `NetworkService` cannot be updated
  /// when `NetworkService.state` is set to `RECONCILING`. During operation
  /// processing, the resource is temporarily in the `ACTIVE` state before the
  /// operation fully completes. For that period of time, you can't update the
  /// resource. Use the operation status to determine when the processing fully
  /// completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this network policy. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `NetworkPolicy` resource by the update. The fields
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
    NetworkPolicy request,
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

class ProjectsLocationsNodeTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNodeTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single `NodeType`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the node type to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-proj/locations/us-central1-a/nodeTypes/standard-72`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodeTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NodeType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NodeType> get(
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
    return NodeType.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists node types
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to be queried for
  /// node types. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of node types,
  /// you can exclude the ones named `standard-72` by specifying `name !=
  /// "standard-72"`. To filter on multiple expressions, provide each separate
  /// expression within parentheses. For example: ``` (name = "standard-72")
  /// (virtual_cpu_count > 2) ``` By default, each expression is an `AND`
  /// expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (name = "standard-96") AND (virtual_cpu_count
  /// > 2) OR (name = "standard-72") ```
  ///
  /// [pageSize] - The maximum number of node types to return in one page. The
  /// service may return fewer than this value. The maximum value is coerced to
  /// 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListNodeTypes` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListNodeTypes` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNodeTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNodeTypesResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/nodeTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNodeTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

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

class ProjectsLocationsPrivateCloudsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsClustersResource get clusters =>
      ProjectsLocationsPrivateCloudsClustersResource(_requester);
  ProjectsLocationsPrivateCloudsHcxActivationKeysResource
      get hcxActivationKeys =>
          ProjectsLocationsPrivateCloudsHcxActivationKeysResource(_requester);
  ProjectsLocationsPrivateCloudsSubnetsResource get subnets =>
      ProjectsLocationsPrivateCloudsSubnetsResource(_requester);

  ProjectsLocationsPrivateCloudsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new `PrivateCloud` resource in a given project and location.
  ///
  /// Private clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources,
  /// `STRETCHED` private clouds are regional. Creating a private cloud also
  /// creates a
  /// [management cluster](https://cloud.google.com/vmware-engine/docs/concepts-vmware-components)
  /// for that private cloud.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to create the new
  /// private cloud in. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-central1-a`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [privateCloudId] - Required. The user-provided identifier of the private
  /// cloud to be created. This identifier must be unique among each
  /// `PrivateCloud` within the parent and becomes the final token in the name
  /// URI. The identifier must meet the following requirements: * Only contains
  /// 1-63 alphanumeric characters and hyphens * Begins with an alphabetical
  /// character * Ends with a non-hyphen character * Not formatted as a UUID *
  /// Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. True if you want the request to be validated
  /// and not executed; false otherwise.
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
    PrivateCloud request,
    core.String parent, {
    core.String? privateCloudId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (privateCloudId != null) 'privateCloudId': [privateCloudId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateClouds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Schedules a `PrivateCloud` resource for deletion.
  ///
  /// A `PrivateCloud` resource scheduled for deletion has `PrivateCloud.state`
  /// set to `DELETED` and `expireTime` set to the time when deletion is final
  /// and can no longer be reversed. The delete operation is marked as done as
  /// soon as the `PrivateCloud` is successfully scheduled for deletion (this
  /// also applies when `delayHours` is set to zero), and the operation is not
  /// kept in pending state until `PrivateCloud` is purged. `PrivateCloud` can
  /// be restored using `UndeletePrivateCloud` method before the `expireTime`
  /// elapses. When `expireTime` is reached, deletion is final and all private
  /// cloud resources are irreversibly removed and billing stops. During the
  /// final removal process, `PrivateCloud.state` is set to `PURGING`.
  /// `PrivateCloud` can be polled using standard `GET` method for the whole
  /// period of deletion and purging. It will not be returned only when it is
  /// completely purged.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private cloud to delete.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [delayHours] - Optional. Time delay of the deletion specified in hours.
  /// The default value is `3`. Specifying a non-zero value for this field
  /// changes the value of `PrivateCloud.state` to `DELETED` and sets
  /// `expire_time` to the planned deletion time. Deletion can be cancelled
  /// before `expire_time` elapses using VmwareEngine.UndeletePrivateCloud.
  /// Specifying a value of `0` for this field instead begins the deletion
  /// process and ceases billing immediately. During the final deletion process,
  /// the value of `PrivateCloud.state` becomes `PURGING`.
  ///
  /// [force] - Optional. If set to true, cascade delete is enabled and all
  /// children of this private cloud resource are also deleted. When this flag
  /// is set to false, the private cloud will not be deleted if there are any
  /// children other than the management cluster. The management cluster is
  /// always deleted.
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
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
    core.int? delayHours,
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (delayHours != null) 'delayHours': ['${delayHours}'],
      if (force != null) 'force': ['${force}'],
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

  /// Retrieves a `PrivateCloud` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private cloud to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PrivateCloud].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PrivateCloud> get(
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
    return PrivateCloud.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `PrivateCloud` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for clusters. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-central1-a`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of private
  /// clouds, you can exclude the ones named `example-pc` by specifying `name !=
  /// "example-pc"`. You can also filter nested fields. For example, you could
  /// specify `networkConfig.managementCidr = "192.168.0.0/24"` to include
  /// private clouds only if they have a matching address in their network
  /// configuration. To filter on multiple expressions, provide each separate
  /// expression within parentheses. For example: ``` (name = "example-pc")
  /// (createTime > "2021-04-12T08:15:10.40Z") ``` By default, each expression
  /// is an `AND` expression. However, you can include `AND` and `OR`
  /// expressions explicitly. For example: ``` (name = "private-cloud-1") AND
  /// (createTime > "2021-04-12T08:15:10.40Z") OR (name = "private-cloud-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of private clouds to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListPrivateClouds`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListPrivateClouds` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrivateCloudsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrivateCloudsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateClouds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrivateCloudsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies a `PrivateCloud` resource.
  ///
  /// Only the following fields can be updated: `description`. Only fields
  /// specified in `updateMask` are applied. During operation processing, the
  /// resource is temporarily in the `ACTIVE` state before the operation fully
  /// completes. For that period of time, you can't update the resource. Use the
  /// operation status to determine when the processing fully completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this private cloud. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `PrivateCloud` resource by the update. The fields
  /// specified in `updateMask` are relative to the resource, not the full
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
    PrivateCloud request,
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

  /// Resets credentials of the NSX appliance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [privateCloud] - Required. The resource name of the private cloud to reset
  /// credentials for. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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
  async.Future<Operation> resetNsxCredentials(
    ResetNsxCredentialsRequest request,
    core.String privateCloud, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$privateCloud') + ':resetNsxCredentials';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets credentials of the Vcenter appliance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [privateCloud] - Required. The resource name of the private cloud to reset
  /// credentials for. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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
  async.Future<Operation> resetVcenterCredentials(
    ResetVcenterCredentialsRequest request,
    core.String privateCloud, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$privateCloud') +
        ':resetVcenterCredentials';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of credentials for NSX appliance.
  ///
  /// Request parameters:
  ///
  /// [privateCloud] - Required. The resource name of the private cloud to be
  /// queried for credentials. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Credentials].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Credentials> showNsxCredentials(
    core.String privateCloud, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$privateCloud') + ':showNsxCredentials';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Credentials.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of credentials for Vcenter appliance.
  ///
  /// Request parameters:
  ///
  /// [privateCloud] - Required. The resource name of the private cloud to be
  /// queried for credentials. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Credentials].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Credentials> showVcenterCredentials(
    core.String privateCloud, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$privateCloud') +
        ':showVcenterCredentials';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Credentials.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a private cloud that was previously scheduled for deletion by
  /// `DeletePrivateCloud`.
  ///
  /// A `PrivateCloud` resource scheduled for deletion has `PrivateCloud.state`
  /// set to `DELETED` and `PrivateCloud.expireTime` set to the time when
  /// deletion can no longer be reversed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private cloud scheduled for
  /// deletion. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeletePrivateCloudRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPrivateCloudsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new cluster in a given private cloud.
  ///
  /// Creating a new cluster provides additional nodes for use in the parent
  /// private cloud and requires sufficient
  /// [node quota](https://cloud.google.com/vmware-engine/quotas).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to create a
  /// new cluster in. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [clusterId] - Required. The user-provided identifier of the new `Cluster`.
  /// This identifier must be unique among clusters within the parent and
  /// becomes the final token in the name URI. The identifier must meet the
  /// following requirements: * Only contains 1-63 alphanumeric characters and
  /// hyphens * Begins with an alphabetical character * Ends with a non-hyphen
  /// character * Not formatted as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. True if you want the request to be validated
  /// and not executed; false otherwise.
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

  /// Deletes a `Cluster` resource.
  ///
  /// To avoid unintended data loss, migrate or gracefully shut down any
  /// workloads running on the cluster before deletion. You cannot delete the
  /// management cluster of a private cloud using this method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the cluster to delete. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
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

  /// Retrieves a `Cluster` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The cluster resource name to retrieve. Resource names
  /// are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
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
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `Cluster` resources in a given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to query for
  /// clusters. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [filter] - To filter on multiple expressions, provide each separate
  /// expression within parentheses. For example: ``` (name = "example-cluster")
  /// (nodeCount = "3") ``` By default, each expression is an `AND` expression.
  /// However, you can include `AND` and `OR` expressions explicitly. For
  /// example: ``` (name = "example-cluster-1") AND (createTime >
  /// "2021-04-12T08:15:10.40Z") OR (name = "example-cluster-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of clusters to return in one page. The
  /// service may return fewer than this value. The maximum value is coerced to
  /// 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListClusters` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListClusters` must match the call that provided
  /// the page token.
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

  /// Modifies a `Cluster` resource.
  ///
  /// Only fields specified in `updateMask` are applied. During operation
  /// processing, the resource is temporarily in the `ACTIVE` state before the
  /// operation fully completes. For that period of time, you can't update the
  /// resource. Use the operation status to determine when the processing fully
  /// completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this cluster. Resource names
  /// are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `Cluster` resource by the update. The fields specified
  /// in the `updateMask` are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. True if you want the request to be validated
  /// and not executed; false otherwise.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPrivateCloudsHcxActivationKeysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsHcxActivationKeysResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new HCX activation key in a given private cloud.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to create the
  /// key for. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [hcxActivationKeyId] - Required. The user-provided identifier of the
  /// `HcxActivationKey` to be created. This identifier must be unique among
  /// `HcxActivationKey` resources within the parent and becomes the final token
  /// in the name URI. The identifier must meet the following requirements: *
  /// Only contains 1-63 alphanumeric characters and hyphens * Begins with an
  /// alphabetical character * Ends with a non-hyphen character * Not formatted
  /// as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server guarantees that a
  /// request doesn't result in creation of duplicate commitments for at least
  /// 60 minutes. For example, consider a situation where you make an initial
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
    HcxActivationKey request,
    core.String parent, {
    core.String? hcxActivationKeyId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hcxActivationKeyId != null)
        'hcxActivationKeyId': [hcxActivationKeyId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hcxActivationKeys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a `HcxActivationKey` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the HCX activation key to
  /// retrieve. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateClouds/my-cloud/hcxActivationKeys/my-key`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/hcxActivationKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HcxActivationKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HcxActivationKey> get(
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
    return HcxActivationKey.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/hcxActivationKeys/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `HcxActivationKey` resources in a given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for HCX activation keys. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of HCX activation keys to return in one
  /// page. The service may return fewer than this value. The maximum value is
  /// coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListHcxActivationKeys` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListHcxActivationKeys` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHcxActivationKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHcxActivationKeysResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hcxActivationKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHcxActivationKeysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/hcxActivationKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/hcxActivationKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPrivateCloudsSubnetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsSubnetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single subnet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the subnet to retrieve. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/subnets/my-subnet`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/subnets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subnet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subnet> get(
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
    return Subnet.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists subnets in a given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for subnets. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of subnets to return in one page. The
  /// service may return fewer than this value. The maximum value is coerced to
  /// 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListSubnetsRequest`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListSubnetsRequest` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubnetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubnetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subnets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubnetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single subnet.
  ///
  /// Only fields specified in `update_mask` are applied. *Note*: This API is
  /// synchronous and always returns a successful `google.longrunning.Operation`
  /// (LRO). The returned LRO will only have `done` and `response` fields.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this subnet. Resource names are
  /// schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/subnets/my-subnet`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/subnets/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `Subnet` resource by the update. The fields specified
  /// in the `update_mask` are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    Subnet request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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

class ProjectsLocationsPrivateConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateConnectionsPeeringRoutesResource get peeringRoutes =>
      ProjectsLocationsPrivateConnectionsPeeringRoutesResource(_requester);

  ProjectsLocationsPrivateConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new private connection that can be used for accessing private
  /// Clouds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to create the new
  /// private connection in. Private connection is a regional resource. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [privateConnectionId] - Required. The user-provided identifier of the new
  /// private connection. This identifier must be unique among private
  /// connection resources within the parent and becomes the final token in the
  /// name URI. The identifier must meet the following requirements: * Only
  /// contains 1-63 alphanumeric characters and hyphens * Begins with an
  /// alphabetical character * Ends with a non-hyphen character * Not formatted
  /// as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    PrivateConnection request,
    core.String parent, {
    core.String? privateConnectionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (privateConnectionId != null)
        'privateConnectionId': [privateConnectionId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateConnections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `PrivateConnection` resource.
  ///
  /// When a private connection is deleted for a VMware Engine network, the
  /// connected network becomes inaccessible to that VMware Engine network.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private connection to be
  /// deleted. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateConnections/my-connection`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Retrieves a `PrivateConnection` resource by its resource name.
  ///
  /// The resource contains details of the private connection, such as connected
  /// network, routing mode and state.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private connection to
  /// retrieve. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateConnections/my-connection`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PrivateConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PrivateConnection> get(
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
    return PrivateConnection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `PrivateConnection` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to query for
  /// private connections. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-central1`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of private
  /// connections, you can exclude the ones named `example-connection` by
  /// specifying `name != "example-connection"`. To filter on multiple
  /// expressions, provide each separate expression within parentheses. For
  /// example: ``` (name = "example-connection") (createTime >
  /// "2022-09-22T08:15:10.40Z") ``` By default, each expression is an `AND`
  /// expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (name = "example-connection-1") AND
  /// (createTime > "2021-04-12T08:15:10.40Z") OR (name =
  /// "example-connection-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of private connections to return in one
  /// page. The maximum value is coerced to 1000. The default value of this
  /// field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListPrivateConnections` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListPrivateConnections` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrivateConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrivateConnectionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateConnections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrivateConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies a `PrivateConnection` resource.
  ///
  /// Only `description` and `routing_mode` fields can be updated. Only fields
  /// specified in `updateMask` are applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the private connection.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateConnections/my-connection`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `PrivateConnection` resource by the update. The fields
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
    PrivateConnection request,
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

class ProjectsLocationsPrivateConnectionsPeeringRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateConnectionsPeeringRoutesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists the private connection routes exchanged over a peering connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private connection to
  /// retrieve peering routes from. Resource names are schemeless URIs that
  /// follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-west1/privateConnections/my-connection`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of peering routes to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListPrivateConnectionPeeringRoutes` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListPrivateConnectionPeeringRoutes` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrivateConnectionPeeringRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrivateConnectionPeeringRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/peeringRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrivateConnectionPeeringRoutesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVmwareEngineNetworksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVmwareEngineNetworksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new VMware Engine network that can be used by a private cloud.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to create the new
  /// VMware Engine network in. A VMware Engine network of type `LEGACY` is a
  /// regional resource, and a VMware Engine network of type `STANDARD` is a
  /// global resource. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [vmwareEngineNetworkId] - Required. The user-provided identifier of the
  /// new VMware Engine network. This identifier must be unique among VMware
  /// Engine network resources within the parent and becomes the final token in
  /// the name URI. The identifier must meet the following requirements: * For
  /// networks of type LEGACY, adheres to the format: `{region-id}-default`.
  /// Replace `{region-id}` with the region where you want to create the VMware
  /// Engine network. For example, "us-central1-default". * Only contains 1-63
  /// alphanumeric characters and hyphens * Begins with an alphabetical
  /// character * Ends with a non-hyphen character * Not formatted as a UUID *
  /// Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
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
    VmwareEngineNetwork request,
    core.String parent, {
    core.String? requestId,
    core.String? vmwareEngineNetworkId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (vmwareEngineNetworkId != null)
        'vmwareEngineNetworkId': [vmwareEngineNetworkId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/vmwareEngineNetworks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `VmwareEngineNetwork` resource.
  ///
  /// You can only delete a VMware Engine network after all resources that refer
  /// to it are deleted. For example, a private cloud, a network peering, and a
  /// network policy can all refer to the same VMware Engine network.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the VMware Engine network to be
  /// deleted. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareEngineNetworks/\[^/\]+$`.
  ///
  /// [etag] - Optional. Checksum used to ensure that the user-provided value is
  /// up to date before the server processes the request. The server compares
  /// provided checksum with the current checksum of the resource. If the
  /// user-provided value is out of date, this request returns an `ABORTED`
  /// error.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    core.String? etag,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
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

  /// Retrieves a `VmwareEngineNetwork` resource by its resource name.
  ///
  /// The resource contains details of the VMware Engine network, such as its
  /// VMware Engine network type, peered networks in a service project, and
  /// state (for example, `CREATING`, `ACTIVE`, `DELETING`).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the VMware Engine network to
  /// retrieve. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareEngineNetworks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VmwareEngineNetwork].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VmwareEngineNetwork> get(
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
    return VmwareEngineNetwork.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `VmwareEngineNetwork` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to query for VMware
  /// Engine networks. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of network
  /// peerings, you can exclude the ones named `example-network` by specifying
  /// `name != "example-network"`. To filter on multiple expressions, provide
  /// each separate expression within parentheses. For example: ``` (name =
  /// "example-network") (createTime > "2021-04-12T08:15:10.40Z") ``` By
  /// default, each expression is an `AND` expression. However, you can include
  /// `AND` and `OR` expressions explicitly. For example: ``` (name =
  /// "example-network-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name
  /// = "example-network-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of results to return in one page. The
  /// maximum value is coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListVmwareEngineNetworks` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListVmwareEngineNetworks` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVmwareEngineNetworksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVmwareEngineNetworksResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/vmwareEngineNetworks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVmwareEngineNetworksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies a VMware Engine network resource.
  ///
  /// Only the following fields can be updated: `description`. Only fields
  /// specified in `updateMask` are applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the VMware Engine network.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareEngineNetworks/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the VMware Engine network resource by the update. The
  /// fields specified in the `update_mask` are relative to the resource, not
  /// the full request. A field will be overwritten if it is in the mask. If the
  /// user does not provide a mask then all fields will be overwritten. Only the
  /// following fields can be updated: `description`.
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
    VmwareEngineNetwork request,
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

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// A cluster in a private cloud.
class Cluster {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// True if the cluster is a management cluster; false otherwise.
  ///
  /// There can only be one management cluster in a private cloud and it has to
  /// be the first one.
  ///
  /// Output only.
  core.bool? management;

  /// The resource name of this cluster.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  ///
  /// Output only.
  core.String? name;

  /// The map of cluster node types in this cluster, where the key is canonical
  /// identifier of the node type (corresponds to the `NodeType`).
  ///
  /// Required.
  core.Map<core.String, NodeTypeConfig>? nodeTypeConfigs;

  /// State of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : The Cluster is operational and can be used by the user.
  /// - "CREATING" : The Cluster is being deployed.
  /// - "UPDATING" : Adding or removing of a node to the cluster, any other
  /// cluster specific updates.
  /// - "DELETING" : The Cluster is being deleted.
  /// - "REPAIRING" : The Cluster is undergoing maintenance, for example: a
  /// failed node is getting replaced.
  core.String? state;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  Cluster({
    this.createTime,
    this.management,
    this.name,
    this.nodeTypeConfigs,
    this.state,
    this.uid,
    this.updateTime,
  });

  Cluster.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          management: json_.containsKey('management')
              ? json_['management'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodeTypeConfigs: json_.containsKey('nodeTypeConfigs')
              ? (json_['nodeTypeConfigs']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    NodeTypeConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (management != null) 'management': management!,
        if (name != null) 'name': name!,
        if (nodeTypeConfigs != null) 'nodeTypeConfigs': nodeTypeConfigs!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Credentials for a private cloud.
class Credentials {
  /// Initial password.
  core.String? password;

  /// Initial username.
  core.String? username;

  Credentials({
    this.password,
    this.username,
  });

  Credentials.fromJson(core.Map json_)
      : this(
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
        if (username != null) 'username': username!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// Details about a HCX Cloud Manager appliance.
typedef Hcx = $Shared02;

/// HCX activation key.
///
/// A default key is created during private cloud provisioning, but this
/// behavior is subject to change and you should always verify active keys. Use
/// VmwareEngine.ListHcxActivationKeys to retrieve existing keys and
/// VmwareEngine.CreateHcxActivationKey to create new ones.
class HcxActivationKey {
  /// HCX activation key.
  ///
  /// Output only.
  core.String? activationKey;

  /// Creation time of HCX activation key.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of this HcxActivationKey.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateClouds/my-cloud/hcxActivationKeys/my-key`
  ///
  /// Output only.
  core.String? name;

  /// State of HCX activation key.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "AVAILABLE" : State of a newly generated activation key.
  /// - "CONSUMED" : State of key when it has been used to activate HCX
  /// appliance.
  /// - "CREATING" : State of key when it is being created.
  core.String? state;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  HcxActivationKey({
    this.activationKey,
    this.createTime,
    this.name,
    this.state,
    this.uid,
  });

  HcxActivationKey.fromJson(core.Map json_)
      : this(
          activationKey: json_.containsKey('activationKey')
              ? json_['activationKey'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationKey != null) 'activationKey': activationKey!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
      };
}

/// Response message for VmwareEngine.ListClusters
class ListClustersResponse {
  /// A list of private cloud clusters.
  core.List<Cluster>? clusters;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
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

/// Response message for VmwareEngine.ListHcxActivationKeys
class ListHcxActivationKeysResponse {
  /// List of HCX activation keys.
  core.List<HcxActivationKey>? hcxActivationKeys;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListHcxActivationKeysResponse({
    this.hcxActivationKeys,
    this.nextPageToken,
    this.unreachable,
  });

  ListHcxActivationKeysResponse.fromJson(core.Map json_)
      : this(
          hcxActivationKeys: json_.containsKey('hcxActivationKeys')
              ? (json_['hcxActivationKeys'] as core.List)
                  .map((value) => HcxActivationKey.fromJson(
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
        if (hcxActivationKeys != null) 'hcxActivationKeys': hcxActivationKeys!,
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

/// Response message for VmwareEngine.ListNetworkPolicies
class ListNetworkPoliciesResponse {
  /// A list of network policies.
  core.List<NetworkPolicy>? networkPolicies;

  /// A token, which can be send as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListNetworkPoliciesResponse({
    this.networkPolicies,
    this.nextPageToken,
    this.unreachable,
  });

  ListNetworkPoliciesResponse.fromJson(core.Map json_)
      : this(
          networkPolicies: json_.containsKey('networkPolicies')
              ? (json_['networkPolicies'] as core.List)
                  .map((value) => NetworkPolicy.fromJson(
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
        if (networkPolicies != null) 'networkPolicies': networkPolicies!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for VmwareEngine.ListNodeTypes
class ListNodeTypesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of Node Types.
  core.List<NodeType>? nodeTypes;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListNodeTypesResponse({
    this.nextPageToken,
    this.nodeTypes,
    this.unreachable,
  });

  ListNodeTypesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nodeTypes: json_.containsKey('nodeTypes')
              ? (json_['nodeTypes'] as core.List)
                  .map((value) => NodeType.fromJson(
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
        if (nodeTypes != null) 'nodeTypes': nodeTypes!,
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

/// Response message for VmwareEngine.ListPrivateClouds
class ListPrivateCloudsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of private clouds.
  core.List<PrivateCloud>? privateClouds;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListPrivateCloudsResponse({
    this.nextPageToken,
    this.privateClouds,
    this.unreachable,
  });

  ListPrivateCloudsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          privateClouds: json_.containsKey('privateClouds')
              ? (json_['privateClouds'] as core.List)
                  .map((value) => PrivateCloud.fromJson(
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
        if (privateClouds != null) 'privateClouds': privateClouds!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for VmwareEngine.ListPrivateConnectionPeeringRoutes
class ListPrivateConnectionPeeringRoutesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of peering routes.
  core.List<PeeringRoute>? peeringRoutes;

  ListPrivateConnectionPeeringRoutesResponse({
    this.nextPageToken,
    this.peeringRoutes,
  });

  ListPrivateConnectionPeeringRoutesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          peeringRoutes: json_.containsKey('peeringRoutes')
              ? (json_['peeringRoutes'] as core.List)
                  .map((value) => PeeringRoute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (peeringRoutes != null) 'peeringRoutes': peeringRoutes!,
      };
}

/// Response message for VmwareEngine.ListPrivateConnections
class ListPrivateConnectionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of private connections.
  core.List<PrivateConnection>? privateConnections;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  ListPrivateConnectionsResponse({
    this.nextPageToken,
    this.privateConnections,
    this.unreachable,
  });

  ListPrivateConnectionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          privateConnections: json_.containsKey('privateConnections')
              ? (json_['privateConnections'] as core.List)
                  .map((value) => PrivateConnection.fromJson(
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
        if (privateConnections != null)
          'privateConnections': privateConnections!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for VmwareEngine.ListSubnets
class ListSubnetsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of subnets.
  core.List<Subnet>? subnets;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListSubnetsResponse({
    this.nextPageToken,
    this.subnets,
    this.unreachable,
  });

  ListSubnetsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subnets: json_.containsKey('subnets')
              ? (json_['subnets'] as core.List)
                  .map((value) => Subnet.fromJson(
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
        if (subnets != null) 'subnets': subnets!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for VmwareEngine.ListVmwareEngineNetworks
class ListVmwareEngineNetworksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  /// A list of VMware Engine networks.
  core.List<VmwareEngineNetwork>? vmwareEngineNetworks;

  ListVmwareEngineNetworksResponse({
    this.nextPageToken,
    this.unreachable,
    this.vmwareEngineNetworks,
  });

  ListVmwareEngineNetworksResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vmwareEngineNetworks: json_.containsKey('vmwareEngineNetworks')
              ? (json_['vmwareEngineNetworks'] as core.List)
                  .map((value) => VmwareEngineNetwork.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (vmwareEngineNetworks != null)
          'vmwareEngineNetworks': vmwareEngineNetworks!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Management cluster configuration.
class ManagementCluster {
  /// The user-provided identifier of the new `Cluster`.
  ///
  /// The identifier must meet the following requirements: * Only contains 1-63
  /// alphanumeric characters and hyphens * Begins with an alphabetical
  /// character * Ends with a non-hyphen character * Not formatted as a UUID *
  /// Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
  ///
  /// Required.
  core.String? clusterId;

  /// The map of cluster node types in this cluster, where the key is canonical
  /// identifier of the node type (corresponds to the `NodeType`).
  ///
  /// Required.
  core.Map<core.String, NodeTypeConfig>? nodeTypeConfigs;

  ManagementCluster({
    this.clusterId,
    this.nodeTypeConfigs,
  });

  ManagementCluster.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          nodeTypeConfigs: json_.containsKey('nodeTypeConfigs')
              ? (json_['nodeTypeConfigs']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    NodeTypeConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (nodeTypeConfigs != null) 'nodeTypeConfigs': nodeTypeConfigs!,
      };
}

/// Network configuration in the consumer project with which the peering has to
/// be done.
class NetworkConfig {
  /// Management CIDR used by VMware management appliances.
  ///
  /// Required.
  core.String? managementCidr;

  /// The IP address layout version of the management IP address range.
  ///
  /// Possible versions include: * `managementIpAddressLayoutVersion=1`:
  /// Indicates the legacy IP address layout used by some existing private
  /// clouds. This is no longer supported for new private clouds as it does not
  /// support all features. * `managementIpAddressLayoutVersion=2`: Indicates
  /// the latest IP address layout used by all newly created private clouds.
  /// This version supports all current features.
  ///
  /// Output only.
  core.int? managementIpAddressLayoutVersion;

  /// The relative resource name of the VMware Engine network attached to the
  /// private cloud.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  /// where `{project}` can either be a project number or a project ID.
  ///
  /// Optional.
  core.String? vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  ///
  /// Output only.
  core.String? vmwareEngineNetworkCanonical;

  NetworkConfig({
    this.managementCidr,
    this.managementIpAddressLayoutVersion,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  NetworkConfig.fromJson(core.Map json_)
      : this(
          managementCidr: json_.containsKey('managementCidr')
              ? json_['managementCidr'] as core.String
              : null,
          managementIpAddressLayoutVersion:
              json_.containsKey('managementIpAddressLayoutVersion')
                  ? json_['managementIpAddressLayoutVersion'] as core.int
                  : null,
          vmwareEngineNetwork: json_.containsKey('vmwareEngineNetwork')
              ? json_['vmwareEngineNetwork'] as core.String
              : null,
          vmwareEngineNetworkCanonical:
              json_.containsKey('vmwareEngineNetworkCanonical')
                  ? json_['vmwareEngineNetworkCanonical'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (managementCidr != null) 'managementCidr': managementCidr!,
        if (managementIpAddressLayoutVersion != null)
          'managementIpAddressLayoutVersion': managementIpAddressLayoutVersion!,
        if (vmwareEngineNetwork != null)
          'vmwareEngineNetwork': vmwareEngineNetwork!,
        if (vmwareEngineNetworkCanonical != null)
          'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical!,
      };
}

/// Represents a network policy resource.
///
/// Network policies are regional resources. You can use a network policy to
/// enable or disable internet access and external IP access. Network policies
/// are associated with a VMware Engine network, which might span across
/// regions. For a given region, a network policy applies to all private clouds
/// in the VMware Engine network associated with the policy.
class NetworkPolicy {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this network policy.
  ///
  /// Optional.
  core.String? description;

  /// IP address range in CIDR notation used to create internet access and
  /// external IP access.
  ///
  /// An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot
  /// overlap with any prefixes either in the consumer VPC network or in use by
  /// the private clouds attached to that VPC network.
  ///
  /// Required.
  core.String? edgeServicesCidr;

  /// Network service that allows External IP addresses to be assigned to VMware
  /// workloads.
  ///
  /// This service can only be enabled when `internet_access` is also enabled.
  NetworkService? externalIp;

  /// Network service that allows VMware workloads to access the internet.
  NetworkService? internetAccess;

  /// The resource name of this network policy.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  ///
  /// Output only.
  core.String? name;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// The relative resource name of the VMware Engine network.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  /// where `{project}` can either be a project number or a project ID.
  ///
  /// Optional.
  core.String? vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  ///
  /// Output only.
  core.String? vmwareEngineNetworkCanonical;

  NetworkPolicy({
    this.createTime,
    this.description,
    this.edgeServicesCidr,
    this.externalIp,
    this.internetAccess,
    this.name,
    this.uid,
    this.updateTime,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  NetworkPolicy.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          edgeServicesCidr: json_.containsKey('edgeServicesCidr')
              ? json_['edgeServicesCidr'] as core.String
              : null,
          externalIp: json_.containsKey('externalIp')
              ? NetworkService.fromJson(
                  json_['externalIp'] as core.Map<core.String, core.dynamic>)
              : null,
          internetAccess: json_.containsKey('internetAccess')
              ? NetworkService.fromJson(json_['internetAccess']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vmwareEngineNetwork: json_.containsKey('vmwareEngineNetwork')
              ? json_['vmwareEngineNetwork'] as core.String
              : null,
          vmwareEngineNetworkCanonical:
              json_.containsKey('vmwareEngineNetworkCanonical')
                  ? json_['vmwareEngineNetworkCanonical'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (edgeServicesCidr != null) 'edgeServicesCidr': edgeServicesCidr!,
        if (externalIp != null) 'externalIp': externalIp!,
        if (internetAccess != null) 'internetAccess': internetAccess!,
        if (name != null) 'name': name!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vmwareEngineNetwork != null)
          'vmwareEngineNetwork': vmwareEngineNetwork!,
        if (vmwareEngineNetworkCanonical != null)
          'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical!,
      };
}

/// Represents a network service that is managed by a `NetworkPolicy` resource.
///
/// A network service provides a way to control an aspect of external access to
/// VMware workloads. For example, whether the VMware workloads in the private
/// clouds governed by a network policy can access or be accessed from the
/// internet.
class NetworkService {
  /// True if the service is enabled; false otherwise.
  core.bool? enabled;

  /// State of the service.
  ///
  /// New values may be added to this enum when appropriate.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified service state. This is the default
  /// value.
  /// - "UNPROVISIONED" : Service is not provisioned.
  /// - "RECONCILING" : Service is in the process of being
  /// provisioned/deprovisioned.
  /// - "ACTIVE" : Service is active.
  core.String? state;

  NetworkService({
    this.enabled,
    this.state,
  });

  NetworkService.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (state != null) 'state': state!,
      };
}

/// Describes node type.
class NodeType {
  /// List of possible values of custom core count.
  ///
  /// Output only.
  core.List<core.int>? availableCustomCoreCounts;

  /// The amount of storage available, defined in GB.
  ///
  /// Output only.
  core.int? diskSizeGb;

  /// The friendly name for this node type.
  ///
  /// For example: ve1-standard-72
  ///
  /// Output only.
  core.String? displayName;

  /// The amount of physical memory available, defined in GB.
  ///
  /// Output only.
  core.int? memoryGb;

  /// The resource name of this node type.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-proj/locations/us-central1-a/nodeTypes/standard-72`
  ///
  /// Output only.
  core.String? name;

  /// The canonical identifier of the node type (corresponds to the `NodeType`).
  ///
  /// For example: standard-72.
  ///
  /// Output only.
  core.String? nodeTypeId;

  /// The total number of CPU cores in a single node.
  ///
  /// Output only.
  core.int? totalCoreCount;

  /// The total number of virtual CPUs in a single node.
  ///
  /// Output only.
  core.int? virtualCpuCount;

  NodeType({
    this.availableCustomCoreCounts,
    this.diskSizeGb,
    this.displayName,
    this.memoryGb,
    this.name,
    this.nodeTypeId,
    this.totalCoreCount,
    this.virtualCpuCount,
  });

  NodeType.fromJson(core.Map json_)
      : this(
          availableCustomCoreCounts:
              json_.containsKey('availableCustomCoreCounts')
                  ? (json_['availableCustomCoreCounts'] as core.List)
                      .map((value) => value as core.int)
                      .toList()
                  : null,
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.int
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          memoryGb: json_.containsKey('memoryGb')
              ? json_['memoryGb'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodeTypeId: json_.containsKey('nodeTypeId')
              ? json_['nodeTypeId'] as core.String
              : null,
          totalCoreCount: json_.containsKey('totalCoreCount')
              ? json_['totalCoreCount'] as core.int
              : null,
          virtualCpuCount: json_.containsKey('virtualCpuCount')
              ? json_['virtualCpuCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableCustomCoreCounts != null)
          'availableCustomCoreCounts': availableCustomCoreCounts!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (displayName != null) 'displayName': displayName!,
        if (memoryGb != null) 'memoryGb': memoryGb!,
        if (name != null) 'name': name!,
        if (nodeTypeId != null) 'nodeTypeId': nodeTypeId!,
        if (totalCoreCount != null) 'totalCoreCount': totalCoreCount!,
        if (virtualCpuCount != null) 'virtualCpuCount': virtualCpuCount!,
      };
}

/// Information about the type and number of nodes associated with the cluster.
class NodeTypeConfig {
  /// Customized number of cores available to each node of the type.
  ///
  /// This number must always be one of `nodeType.availableCustomCoreCounts`. If
  /// zero is provided max value from `nodeType.availableCustomCoreCounts` will
  /// be used.
  ///
  /// Optional.
  core.int? customCoreCount;

  /// The number of nodes of this type in the cluster
  ///
  /// Required.
  core.int? nodeCount;

  NodeTypeConfig({
    this.customCoreCount,
    this.nodeCount,
  });

  NodeTypeConfig.fromJson(core.Map json_)
      : this(
          customCoreCount: json_.containsKey('customCoreCount')
              ? json_['customCoreCount'] as core.int
              : null,
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customCoreCount != null) 'customCoreCount': customCoreCount!,
        if (nodeCount != null) 'nodeCount': nodeCount!,
      };
}

/// Details about a NSX Manager appliance.
typedef Nsx = $Shared02;

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

/// Exchanged network peering route.
class PeeringRoute {
  /// Destination range of the peering route in CIDR notation.
  ///
  /// Output only.
  core.String? destRange;

  /// Direction of the routes exchanged with the peer network, from the VMware
  /// Engine network perspective: * Routes of direction `INCOMING` are imported
  /// from the peer network.
  ///
  /// * Routes of direction `OUTGOING` are exported from the intranet VPC
  /// network of the VMware Engine network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified exchanged routes direction. This
  /// is default.
  /// - "INCOMING" : Routes imported from the peer network.
  /// - "OUTGOING" : Routes exported to the peer network.
  core.String? direction;

  /// True if the peering route has been imported from a peered VPC network;
  /// false otherwise.
  ///
  /// The import happens if the field `NetworkPeering.importCustomRoutes` is
  /// true for this network, `NetworkPeering.exportCustomRoutes` is true for the
  /// peer VPC network, and the import does not result in a route conflict.
  ///
  /// Output only.
  core.bool? imported;

  /// Region containing the next hop of the peering route.
  ///
  /// This field only applies to dynamic routes in the peer VPC network.
  ///
  /// Output only.
  core.String? nextHopRegion;

  /// The priority of the peering route.
  ///
  /// Output only.
  core.String? priority;

  /// Type of the route in the peer VPC network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified peering route type. This is the default
  /// value.
  /// - "DYNAMIC_PEERING_ROUTE" : Dynamic routes in the peer network.
  /// - "STATIC_PEERING_ROUTE" : Static routes in the peer network.
  /// - "SUBNET_PEERING_ROUTE" : Created, updated, and removed automatically by
  /// Google Cloud when subnets are created, modified, or deleted in the peer
  /// network.
  core.String? type;

  PeeringRoute({
    this.destRange,
    this.direction,
    this.imported,
    this.nextHopRegion,
    this.priority,
    this.type,
  });

  PeeringRoute.fromJson(core.Map json_)
      : this(
          destRange: json_.containsKey('destRange')
              ? json_['destRange'] as core.String
              : null,
          direction: json_.containsKey('direction')
              ? json_['direction'] as core.String
              : null,
          imported: json_.containsKey('imported')
              ? json_['imported'] as core.bool
              : null,
          nextHopRegion: json_.containsKey('nextHopRegion')
              ? json_['nextHopRegion'] as core.String
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destRange != null) 'destRange': destRange!,
        if (direction != null) 'direction': direction!,
        if (imported != null) 'imported': imported!,
        if (nextHopRegion != null) 'nextHopRegion': nextHopRegion!,
        if (priority != null) 'priority': priority!,
        if (type != null) 'type': type!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Represents a private cloud resource.
///
/// Private clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources,
/// `STRETCHED` private clouds are regional.
class PrivateCloud {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// Time when the resource was scheduled for deletion.
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-provided description for this private cloud.
  core.String? description;

  /// Time when the resource will be irreversibly deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// HCX appliance.
  ///
  /// Output only.
  Hcx? hcx;

  /// Input only.
  ///
  /// The management cluster for this private cloud. This field is required
  /// during creation of the private cloud to provide details for the default
  /// cluster. The following fields can't be changed after private cloud
  /// creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  ///
  /// Required.
  ManagementCluster? managementCluster;

  /// The resource name of this private cloud.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  ///
  /// Output only.
  core.String? name;

  /// Network configuration of the private cloud.
  ///
  /// Required.
  NetworkConfig? networkConfig;

  /// NSX appliance.
  ///
  /// Output only.
  Nsx? nsx;

  /// State of the resource.
  ///
  /// New values may be added to this enum when appropriate.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : The private cloud is ready.
  /// - "CREATING" : The private cloud is being created.
  /// - "UPDATING" : The private cloud is being updated.
  /// - "FAILED" : The private cloud is in failed state.
  /// - "DELETED" : The private cloud is scheduled for deletion. The deletion
  /// process can be cancelled by using the corresponding undelete method.
  /// - "PURGING" : The private cloud is irreversibly deleted and is being
  /// removed from the system.
  core.String? state;

  /// Type of the private cloud.
  ///
  /// Defaults to STANDARD.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STANDARD" : Standard private is a zonal resource, with 3+ nodes.
  /// Default type.
  /// - "TIME_LIMITED" : Time limited private cloud is a zonal resource, can
  /// have only 1 node and has limited life span. Will be deleted after defined
  /// period of time, can be converted into standard private cloud by expanding
  /// it up to 3 or more nodes.
  core.String? type;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// Vcenter appliance.
  ///
  /// Output only.
  Vcenter? vcenter;

  PrivateCloud({
    this.createTime,
    this.deleteTime,
    this.description,
    this.expireTime,
    this.hcx,
    this.managementCluster,
    this.name,
    this.networkConfig,
    this.nsx,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vcenter,
  });

  PrivateCloud.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          hcx: json_.containsKey('hcx')
              ? Hcx.fromJson(
                  json_['hcx'] as core.Map<core.String, core.dynamic>)
              : null,
          managementCluster: json_.containsKey('managementCluster')
              ? ManagementCluster.fromJson(json_['managementCluster']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          nsx: json_.containsKey('nsx')
              ? Nsx.fromJson(
                  json_['nsx'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vcenter: json_.containsKey('vcenter')
              ? Vcenter.fromJson(
                  json_['vcenter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (description != null) 'description': description!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (hcx != null) 'hcx': hcx!,
        if (managementCluster != null) 'managementCluster': managementCluster!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (nsx != null) 'nsx': nsx!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vcenter != null) 'vcenter': vcenter!,
      };
}

/// Private connection resource that provides connectivity for VMware Engine
/// private clouds.
class PrivateConnection {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this private connection.
  ///
  /// Optional.
  core.String? description;

  /// The resource name of the private connection.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateConnections/my-connection`
  ///
  /// Output only.
  core.String? name;

  /// VPC network peering id between given network VPC and VMwareEngineNetwork.
  ///
  /// Output only.
  core.String? peeringId;

  /// Peering state between service network and VMware Engine network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PEERING_STATE_UNSPECIFIED" : The default value. This value is used if
  /// the peering state is omitted or unknown.
  /// - "PEERING_ACTIVE" : The peering is in active state.
  /// - "PEERING_INACTIVE" : The peering is in inactive state.
  core.String? peeringState;

  /// Routing Mode.
  ///
  /// Default value is set to GLOBAL. For type = PRIVATE_SERVICE_ACCESS, this
  /// field can be set to GLOBAL or REGIONAL, for other types only GLOBAL is
  /// supported.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ROUTING_MODE_UNSPECIFIED" : The default value. This value should never
  /// be used.
  /// - "GLOBAL" : Global Routing Mode
  /// - "REGIONAL" : Regional Routing Mode
  core.String? routingMode;

  /// Service network to create private connection.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/global/networks/{network_id}` For type =
  /// PRIVATE_SERVICE_ACCESS, this field represents servicenetworking VPC, e.g.
  /// projects/project-tp/global/networks/servicenetworking. For type =
  /// NETAPP_CLOUD_VOLUME, this field represents NetApp service VPC, e.g.
  /// projects/project-tp/global/networks/netapp-tenant-vpc. For type =
  /// DELL_POWERSCALE, this field represent Dell service VPC, e.g.
  /// projects/project-tp/global/networks/dell-tenant-vpc. For type=
  /// THIRD_PARTY_SERVICE, this field could represent a consumer VPC or any
  /// other producer VPC to which the VMware Engine Network needs to be
  /// connected, e.g. projects/project/global/networks/vpc.
  ///
  /// Required.
  core.String? serviceNetwork;

  /// State of the private connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "CREATING" : The private connection is being created.
  /// - "ACTIVE" : The private connection is ready.
  /// - "UPDATING" : The private connection is being updated.
  /// - "DELETING" : The private connection is being deleted.
  /// - "UNPROVISIONED" : The private connection is not provisioned, since no
  /// private cloud is present for which this private connection is needed.
  /// - "FAILED" : The private connection is in failed state.
  core.String? state;

  /// Private connection type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The default value. This value should never be used.
  /// - "PRIVATE_SERVICE_ACCESS" : Connection used for establishing
  /// [private services access](https://cloud.google.com/vpc/docs/private-services-access).
  /// - "NETAPP_CLOUD_VOLUMES" : Connection used for connecting to NetApp Cloud
  /// Volumes.
  /// - "DELL_POWERSCALE" : Connection used for connecting to Dell PowerScale.
  /// - "THIRD_PARTY_SERVICE" : Connection used for connecting to third-party
  /// services.
  core.String? type;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// The relative resource name of Legacy VMware Engine network.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  /// where `{project}`, `{location}` will be same as specified in private
  /// connection resource name and `{vmware_engine_network_id}` will be in the
  /// form of `{location}`-default e.g.
  /// projects/project/locations/us-central1/vmwareEngineNetworks/us-central1-default.
  ///
  /// Required.
  core.String? vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  ///
  /// Output only.
  core.String? vmwareEngineNetworkCanonical;

  PrivateConnection({
    this.createTime,
    this.description,
    this.name,
    this.peeringId,
    this.peeringState,
    this.routingMode,
    this.serviceNetwork,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  PrivateConnection.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          peeringId: json_.containsKey('peeringId')
              ? json_['peeringId'] as core.String
              : null,
          peeringState: json_.containsKey('peeringState')
              ? json_['peeringState'] as core.String
              : null,
          routingMode: json_.containsKey('routingMode')
              ? json_['routingMode'] as core.String
              : null,
          serviceNetwork: json_.containsKey('serviceNetwork')
              ? json_['serviceNetwork'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vmwareEngineNetwork: json_.containsKey('vmwareEngineNetwork')
              ? json_['vmwareEngineNetwork'] as core.String
              : null,
          vmwareEngineNetworkCanonical:
              json_.containsKey('vmwareEngineNetworkCanonical')
                  ? json_['vmwareEngineNetworkCanonical'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (peeringId != null) 'peeringId': peeringId!,
        if (peeringState != null) 'peeringState': peeringState!,
        if (routingMode != null) 'routingMode': routingMode!,
        if (serviceNetwork != null) 'serviceNetwork': serviceNetwork!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vmwareEngineNetwork != null)
          'vmwareEngineNetwork': vmwareEngineNetwork!,
        if (vmwareEngineNetworkCanonical != null)
          'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical!,
      };
}

/// Request message for VmwareEngine.ResetNsxCredentials
typedef ResetNsxCredentialsRequest = $CredentialsRequest;

/// Request message for VmwareEngine.ResetVcenterCredentials
typedef ResetVcenterCredentialsRequest = $CredentialsRequest;

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
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

/// Subnet in a private cloud.
///
/// Either `management` subnets (such as vMotion) that are read-only, or
/// `userDefined`, which can also be updated.
class Subnet {
  /// The IP address of the gateway of this subnet.
  ///
  /// Must fall within the IP prefix defined above.
  core.String? gatewayIp;

  /// The IP address range of the subnet in CIDR format '10.0.0.0/24'.
  core.String? ipCidrRange;

  /// The resource name of this subnet.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/subnets/my-subnet`
  ///
  /// Output only.
  core.String? name;

  /// The state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : The subnet is ready.
  /// - "CREATING" : The subnet is being created.
  /// - "UPDATING" : The subnet is being updated.
  /// - "DELETING" : The subnet is being deleted.
  /// - "RECONCILING" : Changes requested in the last operation are being
  /// propagated.
  /// - "FAILED" : Last operation on the subnet did not succeed. Subnet's
  /// payload is reverted back to its most recent working state.
  core.String? state;

  /// The type of the subnet.
  ///
  /// For example "management" or "userDefined".
  ///
  /// Output only.
  core.String? type;

  Subnet({
    this.gatewayIp,
    this.ipCidrRange,
    this.name,
    this.state,
    this.type,
  });

  Subnet.fromJson(core.Map json_)
      : this(
          gatewayIp: json_.containsKey('gatewayIp')
              ? json_['gatewayIp'] as core.String
              : null,
          ipCidrRange: json_.containsKey('ipCidrRange')
              ? json_['ipCidrRange'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gatewayIp != null) 'gatewayIp': gatewayIp!,
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Request message for VmwareEngine.UndeletePrivateCloud
class UndeletePrivateCloudRequest {
  /// The request ID must be a valid UUID with the exception that zero UUID is
  /// not supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  UndeletePrivateCloudRequest({
    this.requestId,
  });

  UndeletePrivateCloudRequest.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Details about a vCenter Server management appliance.
typedef Vcenter = $Shared02;

/// VMware Engine network resource that provides connectivity for VMware Engine
/// private clouds.
class VmwareEngineNetwork {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this VMware Engine network.
  core.String? description;

  /// Checksum that may be sent on update and delete requests to ensure that the
  /// user-provided value is up to date before the server processes a request.
  ///
  /// The server computes checksums based on the value of other fields in the
  /// request.
  core.String? etag;

  /// The resource name of the VMware Engine network.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  ///
  /// Output only.
  core.String? name;

  /// State of the VMware Engine network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "CREATING" : The VMware Engine network is being created.
  /// - "ACTIVE" : The VMware Engine network is ready.
  /// - "UPDATING" : The VMware Engine network is being updated.
  /// - "DELETING" : The VMware Engine network is being deleted.
  core.String? state;

  /// VMware Engine network type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The default value. This value should never be used.
  /// - "LEGACY" : Network type used by private clouds created in projects
  /// without a network of type `STANDARD`. This network type is no longer used
  /// for new VMware Engine private cloud deployments.
  core.String? type;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// VMware Engine service VPC networks that provide connectivity from a
  /// private cloud to customer projects, the internet, and other Google Cloud
  /// services.
  ///
  /// Output only.
  core.List<VpcNetwork>? vpcNetworks;

  VmwareEngineNetwork({
    this.createTime,
    this.description,
    this.etag,
    this.name,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vpcNetworks,
  });

  VmwareEngineNetwork.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vpcNetworks: json_.containsKey('vpcNetworks')
              ? (json_['vpcNetworks'] as core.List)
                  .map((value) => VpcNetwork.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vpcNetworks != null) 'vpcNetworks': vpcNetworks!,
      };
}

/// Represents a VMware Engine VPC network that is managed by a VMware Engine
/// network resource.
class VpcNetwork {
  /// The relative resource name of the service VPC network this VMware Engine
  /// network is attached to.
  ///
  /// For example: `projects/123123/global/networks/my-network`
  ///
  /// Output only.
  core.String? network;

  /// Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The default value. This value should never be used.
  /// - "INTRANET" : VPC network that will be peered with a consumer VPC network
  /// or the intranet VPC of another VMware Engine network. Access a private
  /// cloud through Compute Engine VMs on a peered VPC network or an on-premises
  /// resource connected to a peered consumer VPC network.
  /// - "INTERNET" : VPC network used for internet access to and from a private
  /// cloud.
  /// - "GOOGLE_CLOUD" : VPC network used for access to Google Cloud services
  /// like Cloud Storage.
  core.String? type;

  VpcNetwork({
    this.network,
    this.type,
  });

  VpcNetwork.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (type != null) 'type': type!,
      };
}
