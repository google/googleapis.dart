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

/// Service Networking API - v1beta
///
/// Provides automatic management of network configurations necessary for
/// certain services.
///
/// For more information, see
/// <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started>
///
/// Create an instance of [ServiceNetworkingApi] to access these resources:
///
/// - [OperationsResource]
/// - [ServicesResource]
///   - [ServicesConnectionsResource]
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

/// Provides automatic management of network configurations necessary for
/// certain services.
class ServiceNetworkingApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google API service configuration
  static const serviceManagementScope =
      'https://www.googleapis.com/auth/service.management';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ServicesResource get services => ServicesResource(_requester);

  ServiceNetworkingApi(
    http.Client client, {
    core.String rootUrl = 'https://servicenetworking.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/\[^/\]+$`.
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ServicesResource {
  final commons.ApiRequester _requester;

  ServicesConnectionsResource get connections =>
      ServicesConnectionsResource(_requester);

  ServicesResource(commons.ApiRequester client) : _requester = client;

  /// For service producers, provisions a new subnet in a peered service's
  /// shared VPC network in the requested region and with the requested size
  /// that's expressed as a CIDR range (number of leading bits of ipV4 network
  /// mask).
  ///
  /// The method checks against the assigned allocated ranges to find a
  /// non-conflicting IP address range. The method will reuse a subnet if
  /// subsequent calls contain the same subnet name, region, and prefix length.
  /// This method will make producer's tenant project to be a shared VPC service
  /// project as needed. The response from the `get` operation will be of type
  /// `Subnetwork` if the operation successfully completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A tenant project in the service producer
  /// organization, in the following format:
  /// services/{service}/{collection-id}/{resource-id}. {collection-id} is the
  /// cloud resource collection type that represents the tenant project. Only
  /// `projects` are supported. {resource-id} is the tenant project numeric id,
  /// such as `123456`. {service} the name of the peering service, such as
  /// `service-peering.example.com`. This service must already be enabled in the
  /// service consumer's project.
  /// Value must have pattern `^services/\[^/\]+/\[^/\]+/\[^/\]+$`.
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
  async.Future<Operation> addSubnetwork(
    AddSubnetworkRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + ':addSubnetwork';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Service producers can use this method to find a currently unused range
  /// within consumer allocated ranges.
  ///
  /// This returned range is not reserved, and not guaranteed to remain unused.
  /// It will validate previously provided allocated ranges, find
  /// non-conflicting sub-range of requested size (expressed in number of
  /// leading bits of ipv4 network mask, as in CIDR range notation). Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. This is in a form services/{service}. {service} the
  /// name of the private access management service, for example
  /// 'service-peering.example.com'.
  /// Value must have pattern `^services/\[^/\]+$`.
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
  async.Future<Operation> searchRange(
    SearchRangeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + ':searchRange';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the allocated ranges that are assigned to a connection.
  ///
  /// The response from the `get` operation will be of type `Connection` if the
  /// operation successfully completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The service producer peering service that is managing peering
  /// connectivity for a service producer organization. For Google services that
  /// support this functionality, this is
  /// `services/servicenetworking.googleapis.com`.
  /// Value must have pattern `^services/\[^/\]+$`.
  ///
  /// [force] - If a previously defined allocated range is removed, force flag
  /// must be set to true.
  ///
  /// [updateMask] - The update mask. If this is omitted, it defaults to "*".
  /// You can only update the listed peering ranges.
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
  async.Future<Operation> updateConnections(
    GoogleCloudServicenetworkingV1betaConnection request,
    core.String name, {
    core.bool? force,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + '/connections';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ServicesConnectionsResource {
  final commons.ApiRequester _requester;

  ServicesConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a private connection that establishes a VPC Network Peering
  /// connection to a VPC network in the service producer's organization.
  ///
  /// The administrator of the service consumer's VPC network invokes this
  /// method. The administrator must assign one or more allocated IP ranges for
  /// provisioning subnetworks in the service producer's VPC network. This
  /// connection is used for all supported services in the service producer's
  /// organization, so it only needs to be invoked once. The response from the
  /// `get` operation will be of type `Connection` if the operation successfully
  /// completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The service that is managing peering connectivity for a service
  /// producer's organization. For Google services that support this
  /// functionality, this value is `services/servicenetworking.googleapis.com`.
  /// Value must have pattern `^services/\[^/\]+$`.
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
    GoogleCloudServicenetworkingV1betaConnection request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List the private connections that are configured in a service consumer's
  /// VPC network.
  ///
  /// Request parameters:
  ///
  /// [parent] - The service that is managing peering connectivity for a service
  /// producer's organization. For Google services that support this
  /// functionality, this value is `services/servicenetworking.googleapis.com`.
  /// If you specify `-` as the parameter value, all configured public peering
  /// services are listed.
  /// Value must have pattern `^services/\[^/\]+$`.
  ///
  /// [network] - The name of service consumer's VPC network that's connected
  /// with service producer network through a private connection. The network
  /// name must be in the following format:
  /// `projects/{project}/global/networks/{network}`. {project} is a project
  /// number, such as in `12345` that includes the VPC service consumer's VPC
  /// network. {network} is the name of the service consumer's VPC network.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionsResponse> list(
    core.String parent, {
    core.String? network,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (network != null) 'network': [network],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Request to create a subnetwork in a previously peered service network.
class AddSubnetworkRequest {
  /// A resource that represents the service consumer, such as
  /// `projects/123456`.
  ///
  /// The project number can be different from the value in the consumer network
  /// parameter. For example, the network might be part of a Shared VPC network.
  /// In those cases, Service Networking validates that this resource belongs to
  /// that Shared VPC.
  ///
  /// Required.
  core.String? consumer;

  /// The name of the service consumer's VPC network.
  ///
  /// The network must have an existing private connection that was provisioned
  /// through the connections.create method. The name must be in the following
  /// format: `projects/{project}/global/networks/{network}`, where {project} is
  /// a project number, such as `12345`. {network} is the name of a VPC network
  /// in the project.
  ///
  /// Required.
  core.String? consumerNetwork;

  /// An optional description of the subnet.
  core.String? description;

  /// The prefix length of the subnet's IP address range.
  ///
  /// Use CIDR range notation, such as `30` to provision a subnet with an
  /// `x.x.x.x/30` CIDR range. The IP address range is drawn from a pool of
  /// available ranges in the service consumer's allocated range.
  ///
  /// Required.
  core.int? ipPrefixLength;

  /// The name of a \[region\](/compute/docs/regions-zones) for the subnet, such
  /// `europe-west1`.
  ///
  /// Required.
  core.String? region;

  /// The starting address of a range.
  ///
  /// The address must be a valid IPv4 address in the x.x.x.x format. This value
  /// combined with the IP prefix range is the CIDR range for the subnet. The
  /// range must be within the allocated range that is assigned to the private
  /// connection. If the CIDR range isn't available, the call fails.
  ///
  /// Optional.
  core.String? requestedAddress;

  /// A name for the new subnet.
  ///
  /// For information about the naming requirements, see
  /// \[subnetwork\](/compute/docs/reference/rest/v1/subnetworks) in the Compute
  /// API documentation.
  ///
  /// Required.
  core.String? subnetwork;

  /// A list of members that are granted the `compute.networkUser` role on the
  /// subnet.
  core.List<core.String>? subnetworkUsers;

  AddSubnetworkRequest({
    this.consumer,
    this.consumerNetwork,
    this.description,
    this.ipPrefixLength,
    this.region,
    this.requestedAddress,
    this.subnetwork,
    this.subnetworkUsers,
  });

  AddSubnetworkRequest.fromJson(core.Map json_)
    : this(
        consumer: json_['consumer'] as core.String?,
        consumerNetwork: json_['consumerNetwork'] as core.String?,
        description: json_['description'] as core.String?,
        ipPrefixLength: json_['ipPrefixLength'] as core.int?,
        region: json_['region'] as core.String?,
        requestedAddress: json_['requestedAddress'] as core.String?,
        subnetwork: json_['subnetwork'] as core.String?,
        subnetworkUsers:
            (json_['subnetworkUsers'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consumer != null) 'consumer': consumer!,
    if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
    if (description != null) 'description': description!,
    if (ipPrefixLength != null) 'ipPrefixLength': ipPrefixLength!,
    if (region != null) 'region': region!,
    if (requestedAddress != null) 'requestedAddress': requestedAddress!,
    if (subnetwork != null) 'subnetwork': subnetwork!,
    if (subnetworkUsers != null) 'subnetworkUsers': subnetworkUsers!,
  };
}

/// Represents a private connection resource.
///
/// A private connection is implemented as a VPC Network Peering connection
/// between a service producer's VPC network and a service consumer's VPC
/// network.
class GoogleCloudServicenetworkingV1betaConnection {
  /// The name of service consumer's VPC network that's connected with service
  /// producer network, in the following format:
  /// `projects/{project}/global/networks/{network}`.
  ///
  /// `{project}` is a project number, such as in `12345` that includes the VPC
  /// service consumer's VPC network. `{network}` is the name of the service
  /// consumer's VPC network.
  core.String? network;

  /// The name of the VPC Network Peering connection that was created by the
  /// service producer.
  ///
  /// Output only.
  core.String? peering;

  /// The name of one or more allocated IP address ranges for this service
  /// producer of type `PEERING`.
  ///
  /// Note that invoking this method with a different range when connection is
  /// already established will not modify already provisioned service producer
  /// subnetworks.
  core.List<core.String>? reservedPeeringRanges;

  /// The name of the peering service that's associated with this connection, in
  /// the following format: `services/{service name}`.
  ///
  /// Output only.
  core.String? service;

  GoogleCloudServicenetworkingV1betaConnection({
    this.network,
    this.peering,
    this.reservedPeeringRanges,
    this.service,
  });

  GoogleCloudServicenetworkingV1betaConnection.fromJson(core.Map json_)
    : this(
        network: json_['network'] as core.String?,
        peering: json_['peering'] as core.String?,
        reservedPeeringRanges:
            (json_['reservedPeeringRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (network != null) 'network': network!,
    if (peering != null) 'peering': peering!,
    if (reservedPeeringRanges != null)
      'reservedPeeringRanges': reservedPeeringRanges!,
    if (service != null) 'service': service!,
  };
}

/// ListConnectionsResponse is the response to list peering states for the given
/// service and consumer project.
class ListConnectionsResponse {
  /// The list of Connections.
  core.List<GoogleCloudServicenetworkingV1betaConnection>? connections;

  ListConnectionsResponse({this.connections});

  ListConnectionsResponse.fromJson(core.Map json_)
    : this(
        connections:
            (json_['connections'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudServicenetworkingV1betaConnection.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connections != null) 'connections': connections!,
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

/// Request to search for an unused range within allocated ranges.
class SearchRangeRequest {
  /// The prefix length of the IP range.
  ///
  /// Use usual CIDR range notation. For example, '30' to find unused x.x.x.x/30
  /// CIDR range. Actual range will be determined using allocated range for the
  /// consumer peered network and returned in the result.
  ///
  /// Required.
  core.int? ipPrefixLength;

  /// Network name in the consumer project.
  ///
  /// This network must have been already peered with a shared VPC network using
  /// CreateConnection method. Must be in a form
  /// 'projects/{project}/global/networks/{network}'. {project} is a project
  /// number, as in '12345' {network} is network name.
  core.String? network;

  SearchRangeRequest({this.ipPrefixLength, this.network});

  SearchRangeRequest.fromJson(core.Map json_)
    : this(
        ipPrefixLength: json_['ipPrefixLength'] as core.int?,
        network: json_['network'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ipPrefixLength != null) 'ipPrefixLength': ipPrefixLength!,
    if (network != null) 'network': network!,
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
