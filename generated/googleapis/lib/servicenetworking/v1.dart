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

/// Service Networking API - v1
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
///   - [ServicesDnsRecordSetsResource]
///   - [ServicesDnsZonesResource]
///   - [ServicesProjectsResource]
///     - [ServicesProjectsGlobalResource]
///       - [ServicesProjectsGlobalNetworksResource]
///         - [ServicesProjectsGlobalNetworksPeeredDnsDomainsResource]
///   - [ServicesRolesResource]
library servicenetworking.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http_1;

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

  ServiceNetworkingApi(http_1.Client client,
      {core.String rootUrl = 'https://servicenetworking.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

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
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

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
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
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
  /// Value must have pattern `^operations$`.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ServicesResource {
  final commons.ApiRequester _requester;

  ServicesConnectionsResource get connections =>
      ServicesConnectionsResource(_requester);
  ServicesDnsRecordSetsResource get dnsRecordSets =>
      ServicesDnsRecordSetsResource(_requester);
  ServicesDnsZonesResource get dnsZones => ServicesDnsZonesResource(_requester);
  ServicesProjectsResource get projects => ServicesProjectsResource(_requester);
  ServicesRolesResource get roles => ServicesRolesResource(_requester);

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
  /// project as needed.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> addSubnetwork(
    AddSubnetworkRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':addSubnetwork';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Disables VPC service controls for a connection.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> disableVpcServiceControls(
    DisableVpcServiceControlsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + ':disableVpcServiceControls';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Enables VPC service controls for a connection.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> enableVpcServiceControls(
    EnableVpcServiceControlsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + ':enableVpcServiceControls';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Service producers can use this method to find a currently unused range
  /// within consumer allocated ranges.
  ///
  /// This returned range is not reserved, and not guaranteed to remain unused.
  /// It will validate previously provided allocated ranges, find
  /// non-conflicting sub-range of requested size (expressed in number of
  /// leading bits of ipv4 network mask, as in CIDR range notation).
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> searchRange(
    SearchRangeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':searchRange';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Service producers use this method to validate if the consumer provided
  /// network, project and requested range are valid.
  ///
  /// This allows them to use a fail-fast mechanism for consumer requests, and
  /// not have to wait for AddSubnetwork operation completion to determine if
  /// user request is invalid.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. This is in a form services/{service} where {service}
  /// is the name of the private access management service. For example
  /// 'service-peering.example.com'.
  /// Value must have pattern `^services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateConsumerConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ValidateConsumerConfigResponse> validate(
    ValidateConsumerConfigRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':validate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ValidateConsumerConfigResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// organization, so it only needs to be invoked once.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> create(
    Connection request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a private service access connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The private service connection that connects to a
  /// service producer organization. The name includes both the private service
  /// name and the VPC network peering name in the format of
  /// `services/{peering_service_name}/connections/{vpc_peering_name}`. For
  /// Google services that support this functionality, this is
  /// `services/servicenetworking.googleapis.com/connections/servicenetworking-googleapis-com`.
  /// Value must have pattern `^services/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> deleteConnection(
    DeleteConnectionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List the private connections that are configured in a service consumer's
  /// VPC network.
  ///
  /// Request parameters:
  ///
  /// [parent] - The service that is managing peering connectivity for a service
  /// producer's organization. For Google services that support this
  /// functionality, this value is `services/servicenetworking.googleapis.com`.
  /// If you specify `services/-` as the parameter value, all configured peering
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListConnectionsResponse> list(
    core.String parent, {
    core.String? network,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (network != null) 'network': [network],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListConnectionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the allocated ranges that are assigned to a connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The private service connection that connects to a service
  /// producer organization. The name includes both the private service name and
  /// the VPC network peering name in the format of
  /// `services/{peering_service_name}/connections/{vpc_peering_name}`. For
  /// Google services that support this functionality, this is
  /// `services/servicenetworking.googleapis.com/connections/servicenetworking-googleapis-com`.
  /// Value must have pattern `^services/\[^/\]+/connections/\[^/\]+$`.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> patch(
    Connection request,
    core.String name, {
    core.bool? force,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
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
}

class ServicesDnsRecordSetsResource {
  final commons.ApiRequester _requester;

  ServicesDnsRecordSetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Service producers can use this method to add DNS record sets to private
  /// DNS zones in the shared producer host project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The service that is managing peering connectivity for
  /// a service producer's organization. For Google services that support this
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> add(
    AddDnsRecordSetRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/dnsRecordSets:add';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Service producers can use this method to remove DNS record sets from
  /// private DNS zones in the shared producer host project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The service that is managing peering connectivity for
  /// a service producer's organization. For Google services that support this
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> remove(
    RemoveDnsRecordSetRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/dnsRecordSets:remove';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Service producers can use this method to update DNS record sets from
  /// private DNS zones in the shared producer host project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The service that is managing peering connectivity for
  /// a service producer's organization. For Google services that support this
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> update(
    UpdateDnsRecordSetRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/dnsRecordSets:update';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ServicesDnsZonesResource {
  final commons.ApiRequester _requester;

  ServicesDnsZonesResource(commons.ApiRequester client) : _requester = client;

  /// Service producers can use this method to add private DNS zones in the
  /// shared producer host project and matching peering zones in the consumer
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The service that is managing peering connectivity for
  /// a service producer's organization. For Google services that support this
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> add(
    AddDnsZoneRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/dnsZones:add';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Service producers can use this method to remove private DNS zones in the
  /// shared producer host project and matching peering zones in the consumer
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The service that is managing peering connectivity for
  /// a service producer's organization. For Google services that support this
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> remove(
    RemoveDnsZoneRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/dnsZones:remove';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ServicesProjectsResource {
  final commons.ApiRequester _requester;

  ServicesProjectsGlobalResource get global =>
      ServicesProjectsGlobalResource(_requester);

  ServicesProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ServicesProjectsGlobalResource {
  final commons.ApiRequester _requester;

  ServicesProjectsGlobalNetworksResource get networks =>
      ServicesProjectsGlobalNetworksResource(_requester);

  ServicesProjectsGlobalResource(commons.ApiRequester client)
      : _requester = client;
}

class ServicesProjectsGlobalNetworksResource {
  final commons.ApiRequester _requester;

  ServicesProjectsGlobalNetworksPeeredDnsDomainsResource get peeredDnsDomains =>
      ServicesProjectsGlobalNetworksPeeredDnsDomainsResource(_requester);

  ServicesProjectsGlobalNetworksResource(commons.ApiRequester client)
      : _requester = client;

  /// Service producers use this method to get the configuration of their
  /// connection including the import/export of custom routes and subnetwork
  /// routes with public IP.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the consumer config to retrieve in the format:
  /// `services/{service}/projects/{project}/global/networks/{network}`.
  /// {service} is the peering service that is managing connectivity for the
  /// service producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`. {project}
  /// is a project number e.g. `12345` that contains the service consumer's VPC
  /// network. {network} is the name of the service consumer's VPC network.
  /// Value must have pattern
  /// `^services/\[^/\]+/projects/\[^/\]+/global/networks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConsumerConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ConsumerConfig> get(
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
    return ConsumerConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Service producers use this method to update the configuration of their
  /// connection including the import/export of custom routes and subnetwork
  /// routes with public IP.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource identifying the connection for which
  /// the consumer config is being updated in the format:
  /// `services/{service}/projects/{project}/global/networks/{network}`
  /// {service} is the peering service that is managing connectivity for the
  /// service producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`. {project}
  /// is the number of the project that contains the service consumer's VPC
  /// network e.g. `12345`. {network} is the name of the service consumer's VPC
  /// network.
  /// Value must have pattern
  /// `^services/\[^/\]+/projects/\[^/\]+/global/networks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> updateConsumerConfig(
    UpdateConsumerConfigRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + ':updateConsumerConfig';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ServicesProjectsGlobalNetworksPeeredDnsDomainsResource {
  final commons.ApiRequester _requester;

  ServicesProjectsGlobalNetworksPeeredDnsDomainsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a peered DNS domain which sends requests for records in given
  /// namespace originating in the service producer VPC network to the consumer
  /// VPC network to be resolved.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource identifying the connection for which
  /// the peered DNS domain will be created in the format:
  /// `services/{service}/projects/{project}/global/networks/{network}`
  /// {service} is the peering service that is managing connectivity for the
  /// service producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`. {project}
  /// is the number of the project that contains the service consumer's VPC
  /// network e.g. `12345`. {network} is the name of the service consumer's VPC
  /// network.
  /// Value must have pattern
  /// `^services/\[^/\]+/projects/\[^/\]+/global/networks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> create(
    PeeredDnsDomain request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/peeredDnsDomains';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a peered DNS domain.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the peered DNS domain to delete in the
  /// format:
  /// `services/{service}/projects/{project}/global/networks/{network}/peeredDnsDomains/{name}`.
  /// {service} is the peering service that is managing connectivity for the
  /// service producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`. {project}
  /// is the number of the project that contains the service consumer's VPC
  /// network e.g. `12345`. {network} is the name of the service consumer's VPC
  /// network. {name} is the name of the peered DNS domain.
  /// Value must have pattern
  /// `^services/\[^/\]+/projects/\[^/\]+/global/networks/\[^/\]+/peeredDnsDomains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
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

  /// Lists peered DNS domains for a connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource identifying the connection which owns
  /// this collection of peered DNS domains in the format:
  /// `services/{service}/projects/{project}/global/networks/{network}`.
  /// {service} is the peering service that is managing connectivity for the
  /// service producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`. {project}
  /// is a project number e.g. `12345` that contains the service consumer's VPC
  /// network. {network} is the name of the service consumer's VPC network.
  /// Value must have pattern
  /// `^services/\[^/\]+/projects/\[^/\]+/global/networks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPeeredDnsDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListPeeredDnsDomainsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/peeredDnsDomains';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPeeredDnsDomainsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ServicesRolesResource {
  final commons.ApiRequester _requester;

  ServicesRolesResource(commons.ApiRequester client) : _requester = client;

  /// Service producers can use this method to add roles in the shared VPC host
  /// project.
  ///
  /// Each role is bound to the provided member. Each role must be selected from
  /// within an allowlisted set of roles. Each role is applied at only the
  /// granularity specified in the allowlist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. This is in a form services/{service} where {service}
  /// is the name of the private access management service. For example
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> add(
    AddRolesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/roles:add';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Metadata provided through GetOperation request for the LRO generated by
/// AddDnsRecordSet API
typedef AddDnsRecordSetMetadata = $Empty;

/// Request to add a record set to a private managed DNS zone in the shared
/// producer host project.
class AddDnsRecordSetRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is the project number, as in '12345' {network} is the network
  /// name.
  ///
  /// Required.
  core.String? consumerNetwork;

  /// The DNS record set to add.
  ///
  /// Required.
  DnsRecordSet? dnsRecordSet;

  /// The name of the private DNS zone in the shared producer host project to
  /// which the record set will be added.
  ///
  /// Required.
  core.String? zone;

  AddDnsRecordSetRequest({
    this.consumerNetwork,
    this.dnsRecordSet,
    this.zone,
  });

  AddDnsRecordSetRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
          dnsRecordSet: _json.containsKey('dnsRecordSet')
              ? DnsRecordSet.fromJson(
                  _json['dnsRecordSet'] as core.Map<core.String, core.dynamic>)
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
        if (dnsRecordSet != null) 'dnsRecordSet': dnsRecordSet!,
        if (zone != null) 'zone': zone!,
      };
}

/// Metadata provided through GetOperation request for the LRO generated by
/// AddDnsZone API
typedef AddDnsZoneMetadata = $Empty;

/// Request to add a private managed DNS zone in the shared producer host
/// project and a matching DNS peering zone in the consumer project.
class AddDnsZoneRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is the project number, as in '12345' {network} is the network
  /// name.
  ///
  /// Required.
  core.String? consumerNetwork;

  /// The DNS name suffix for the zones e.g. `example.com`.
  ///
  /// Required.
  core.String? dnsSuffix;

  /// The name for both the private zone in the shared producer host project and
  /// the peering zone in the consumer project.
  ///
  /// Must be unique within both projects. The name must be 1-63 characters
  /// long, must begin with a letter, end with a letter or digit, and only
  /// contain lowercase letters, digits or dashes.
  ///
  /// Required.
  core.String? name;

  AddDnsZoneRequest({
    this.consumerNetwork,
    this.dnsSuffix,
    this.name,
  });

  AddDnsZoneRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
          dnsSuffix: _json.containsKey('dnsSuffix')
              ? _json['dnsSuffix'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
        if (dnsSuffix != null) 'dnsSuffix': dnsSuffix!,
        if (name != null) 'name': name!,
      };
}

/// Represents managed DNS zones created in the shared producer host and
/// consumer projects.
class AddDnsZoneResponse {
  /// The DNS peering zone created in the consumer project.
  DnsZone? consumerPeeringZone;

  /// The private DNS zone created in the shared producer host project.
  DnsZone? producerPrivateZone;

  AddDnsZoneResponse({
    this.consumerPeeringZone,
    this.producerPrivateZone,
  });

  AddDnsZoneResponse.fromJson(core.Map _json)
      : this(
          consumerPeeringZone: _json.containsKey('consumerPeeringZone')
              ? DnsZone.fromJson(_json['consumerPeeringZone']
                  as core.Map<core.String, core.dynamic>)
              : null,
          producerPrivateZone: _json.containsKey('producerPrivateZone')
              ? DnsZone.fromJson(_json['producerPrivateZone']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerPeeringZone != null)
          'consumerPeeringZone': consumerPeeringZone!,
        if (producerPrivateZone != null)
          'producerPrivateZone': producerPrivateZone!,
      };
}

/// Metadata provided through GetOperation request for the LRO generated by
/// AddRoles API
typedef AddRolesMetadata = $Empty;

/// Request for AddRoles to allow Service Producers to add roles in the shared
/// VPC host project for them to use.
class AddRolesRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is a project number, as in '12345' {network} is a network name.
  ///
  /// Required.
  core.String? consumerNetwork;

  /// List of policy bindings to add to shared VPC host project.
  ///
  /// Required.
  core.List<PolicyBinding>? policyBinding;

  AddRolesRequest({
    this.consumerNetwork,
    this.policyBinding,
  });

  AddRolesRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
          policyBinding: _json.containsKey('policyBinding')
              ? (_json['policyBinding'] as core.List)
                  .map((value) => PolicyBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
        if (policyBinding != null) 'policyBinding': policyBinding!,
      };
}

/// Represents IAM roles added to the shared VPC host project.
class AddRolesResponse {
  /// List of policy bindings that were added to the shared VPC host project.
  ///
  /// Required.
  core.List<PolicyBinding>? policyBinding;

  AddRolesResponse({
    this.policyBinding,
  });

  AddRolesResponse.fromJson(core.Map _json)
      : this(
          policyBinding: _json.containsKey('policyBinding')
              ? (_json['policyBinding'] as core.List)
                  .map((value) => PolicyBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyBinding != null) 'policyBinding': policyBinding!,
      };
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

  /// Description of the subnet.
  ///
  /// Optional.
  core.String? description;

  /// The prefix length of the subnet's IP address range.
  ///
  /// Use CIDR range notation, such as `30` to provision a subnet with an
  /// `x.x.x.x/30` CIDR range. The IP address range is drawn from a pool of
  /// available ranges in the service consumer's allocated range.
  ///
  /// Required.
  core.int? ipPrefixLength;

  /// Enable outside allocation using public IP addresses.
  ///
  /// Any public IP range may be specified. If this field is provided, we will
  /// not use customer reserved ranges for this primary IP range.
  ///
  /// Optional.
  core.String? outsideAllocationPublicIpRange;

  /// The private IPv6 google access type for the VMs in this subnet.
  ///
  /// For information about the access types that can be set using this field,
  /// see
  /// [subnetwork](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks)
  /// in the Compute API documentation.
  ///
  /// Optional.
  core.String? privateIpv6GoogleAccess;

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

  /// The name of one or more allocated IP address ranges associated with this
  /// private service access connection.
  ///
  /// If no range names are provided all ranges associated with this connection
  /// will be considered. If a CIDR range with the specified IP prefix length is
  /// not available within these ranges, the call fails.
  ///
  /// Optional.
  core.List<core.String>? requestedRanges;

  /// A list of secondary IP ranges to be created within the new subnetwork.
  ///
  /// Optional.
  core.List<SecondaryIpRangeSpec>? secondaryIpRangeSpecs;

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
    this.outsideAllocationPublicIpRange,
    this.privateIpv6GoogleAccess,
    this.region,
    this.requestedAddress,
    this.requestedRanges,
    this.secondaryIpRangeSpecs,
    this.subnetwork,
    this.subnetworkUsers,
  });

  AddSubnetworkRequest.fromJson(core.Map _json)
      : this(
          consumer: _json.containsKey('consumer')
              ? _json['consumer'] as core.String
              : null,
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          ipPrefixLength: _json.containsKey('ipPrefixLength')
              ? _json['ipPrefixLength'] as core.int
              : null,
          outsideAllocationPublicIpRange:
              _json.containsKey('outsideAllocationPublicIpRange')
                  ? _json['outsideAllocationPublicIpRange'] as core.String
                  : null,
          privateIpv6GoogleAccess: _json.containsKey('privateIpv6GoogleAccess')
              ? _json['privateIpv6GoogleAccess'] as core.String
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          requestedAddress: _json.containsKey('requestedAddress')
              ? _json['requestedAddress'] as core.String
              : null,
          requestedRanges: _json.containsKey('requestedRanges')
              ? (_json['requestedRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          secondaryIpRangeSpecs: _json.containsKey('secondaryIpRangeSpecs')
              ? (_json['secondaryIpRangeSpecs'] as core.List)
                  .map((value) => SecondaryIpRangeSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          subnetwork: _json.containsKey('subnetwork')
              ? _json['subnetwork'] as core.String
              : null,
          subnetworkUsers: _json.containsKey('subnetworkUsers')
              ? (_json['subnetworkUsers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumer != null) 'consumer': consumer!,
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
        if (description != null) 'description': description!,
        if (ipPrefixLength != null) 'ipPrefixLength': ipPrefixLength!,
        if (outsideAllocationPublicIpRange != null)
          'outsideAllocationPublicIpRange': outsideAllocationPublicIpRange!,
        if (privateIpv6GoogleAccess != null)
          'privateIpv6GoogleAccess': privateIpv6GoogleAccess!,
        if (region != null) 'region': region!,
        if (requestedAddress != null) 'requestedAddress': requestedAddress!,
        if (requestedRanges != null) 'requestedRanges': requestedRanges!,
        if (secondaryIpRangeSpecs != null)
          'secondaryIpRangeSpecs': secondaryIpRangeSpecs!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (subnetworkUsers != null) 'subnetworkUsers': subnetworkUsers!,
      };
}

/// Api is a light-weight descriptor for an API Interface.
///
/// Interfaces are also described as "protocol buffer services" in some
/// contexts, such as by the "service" keyword in a .proto file, but they are
/// different from API Services, which represent a concrete implementation of an
/// interface as opposed to simply a description of methods and bindings. They
/// are also sometimes simply referred to as "APIs" in other contexts, such as
/// the name of this message itself. See
/// https://cloud.google.com/apis/design/glossary for detailed terminology.
class Api {
  /// The methods of this interface, in unspecified order.
  core.List<Method>? methods;

  /// Included interfaces.
  ///
  /// See Mixin.
  core.List<Mixin>? mixins;

  /// The fully qualified name of this interface, including package name
  /// followed by the interface's simple name.
  core.String? name;

  /// Any metadata attached to the interface.
  core.List<Option>? options;

  /// Source context for the protocol buffer service represented by this
  /// message.
  SourceContext? sourceContext;

  /// The source syntax of the service.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String? syntax;

  /// A version string for this interface.
  ///
  /// If specified, must have the form `major-version.minor-version`, as in
  /// `1.10`. If the minor version is omitted, it defaults to zero. If the
  /// entire version field is empty, the major version is derived from the
  /// package name, as outlined below. If the field is not empty, the version in
  /// the package name will be verified to be consistent with what is provided
  /// here. The versioning schema uses [semantic versioning](http://semver.org)
  /// where the major version number indicates a breaking change and the minor
  /// version an additive, non-breaking change. Both version numbers are signals
  /// to users what to expect from different versions, and should be carefully
  /// chosen based on the product plan. The major version is also reflected in
  /// the package name of the interface, which must end in `v`, as in
  /// `google.feature.v1`. For major versions 0 and 1, the suffix can be
  /// omitted. Zero major versions must only be used for experimental, non-GA
  /// interfaces.
  core.String? version;

  Api({
    this.methods,
    this.mixins,
    this.name,
    this.options,
    this.sourceContext,
    this.syntax,
    this.version,
  });

  Api.fromJson(core.Map _json)
      : this(
          methods: _json.containsKey('methods')
              ? (_json['methods'] as core.List)
                  .map((value) => Method.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mixins: _json.containsKey('mixins')
              ? (_json['mixins'] as core.List)
                  .map((value) => Mixin.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          options: _json.containsKey('options')
              ? (_json['options'] as core.List)
                  .map((value) => Option.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceContext: _json.containsKey('sourceContext')
              ? SourceContext.fromJson(
                  _json['sourceContext'] as core.Map<core.String, core.dynamic>)
              : null,
          syntax: _json.containsKey('syntax')
              ? _json['syntax'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (methods != null) 'methods': methods!,
        if (mixins != null) 'mixins': mixins!,
        if (name != null) 'name': name!,
        if (options != null) 'options': options!,
        if (sourceContext != null) 'sourceContext': sourceContext!,
        if (syntax != null) 'syntax': syntax!,
        if (version != null) 'version': version!,
      };
}

/// Configuration for an authentication provider, including support for \[JSON
/// Web Token
/// (JWT)\](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
class AuthProvider {
  /// The list of JWT
  /// [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
  ///
  /// that are allowed to access. A JWT containing any of these audiences will
  /// be accepted. When this setting is absent, JWTs with audiences: -
  /// "https://\[service.name\]/\[google.protobuf.Api.name\]" -
  /// "https://\[service.name\]/" will be accepted. For example, if no audiences
  /// are in the setting, LibraryService API will accept JWTs with the following
  /// audiences: -
  /// https://library-example.googleapis.com/google.example.library.v1.LibraryService
  /// - https://library-example.googleapis.com/ Example: audiences:
  /// bookstore_android.apps.googleusercontent.com,
  /// bookstore_web.apps.googleusercontent.com
  core.String? audiences;

  /// Redirect URL if JWT token is required but not present or is expired.
  ///
  /// Implement authorizationUrl of securityDefinitions in OpenAPI spec.
  core.String? authorizationUrl;

  /// The unique identifier of the auth provider.
  ///
  /// It will be referred to by `AuthRequirement.provider_id`. Example:
  /// "bookstore_auth".
  core.String? id;

  /// Identifies the principal that issued the JWT.
  ///
  /// See
  /// https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1
  /// Usually a URL or an email address. Example: https://securetoken.google.com
  /// Example: 1234567-compute@developer.gserviceaccount.com
  core.String? issuer;

  /// URL of the provider's public key set to validate signature of the JWT.
  ///
  /// See
  /// [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata).
  /// Optional if the key set document: - can be retrieved from
  /// [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html)
  /// of the issuer. - can be inferred from the email domain of the issuer (e.g.
  /// a Google service account). Example:
  /// https://www.googleapis.com/oauth2/v1/certs
  core.String? jwksUri;

  /// Defines the locations to extract the JWT.
  ///
  /// JWT locations can be either from HTTP headers or URL query parameters. The
  /// rule is that the first match wins. The checking order is: checking all
  /// headers first, then URL query parameters. If not specified, default to use
  /// following 3 locations: 1) Authorization: Bearer 2)
  /// x-goog-iap-jwt-assertion 3) access_token query parameter Default locations
  /// can be specified as followings: jwt_locations: - header: Authorization
  /// value_prefix: "Bearer " - header: x-goog-iap-jwt-assertion - query:
  /// access_token
  core.List<JwtLocation>? jwtLocations;

  AuthProvider({
    this.audiences,
    this.authorizationUrl,
    this.id,
    this.issuer,
    this.jwksUri,
    this.jwtLocations,
  });

  AuthProvider.fromJson(core.Map _json)
      : this(
          audiences: _json.containsKey('audiences')
              ? _json['audiences'] as core.String
              : null,
          authorizationUrl: _json.containsKey('authorizationUrl')
              ? _json['authorizationUrl'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          issuer: _json.containsKey('issuer')
              ? _json['issuer'] as core.String
              : null,
          jwksUri: _json.containsKey('jwksUri')
              ? _json['jwksUri'] as core.String
              : null,
          jwtLocations: _json.containsKey('jwtLocations')
              ? (_json['jwtLocations'] as core.List)
                  .map((value) => JwtLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audiences != null) 'audiences': audiences!,
        if (authorizationUrl != null) 'authorizationUrl': authorizationUrl!,
        if (id != null) 'id': id!,
        if (issuer != null) 'issuer': issuer!,
        if (jwksUri != null) 'jwksUri': jwksUri!,
        if (jwtLocations != null) 'jwtLocations': jwtLocations!,
      };
}

/// User-defined authentication requirements, including support for \[JSON Web
/// Token
/// (JWT)\](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
typedef AuthRequirement = $AuthRequirement;

/// `Authentication` defines the authentication configuration for API methods
/// provided by an API service.
///
/// Example: name: calendar.googleapis.com authentication: providers: - id:
/// google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs
/// issuer: https://securetoken.google.com rules: - selector: "*" requirements:
/// provider_id: google_calendar_auth - selector: google.calendar.Delegate
/// oauth: canonical_scopes: https://www.googleapis.com/auth/calendar.read
class Authentication {
  /// Defines a set of authentication providers that a service supports.
  core.List<AuthProvider>? providers;

  /// A list of authentication rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<AuthenticationRule>? rules;

  Authentication({
    this.providers,
    this.rules,
  });

  Authentication.fromJson(core.Map _json)
      : this(
          providers: _json.containsKey('providers')
              ? (_json['providers'] as core.List)
                  .map((value) => AuthProvider.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => AuthenticationRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (providers != null) 'providers': providers!,
        if (rules != null) 'rules': rules!,
      };
}

/// Authentication rules for the service.
///
/// By default, if a method has any authentication requirements, every request
/// must include a valid credential matching one of the requirements. It's an
/// error to include more than one kind of credential in a single request. If a
/// method doesn't have any auth requirements, request credentials will be
/// ignored.
class AuthenticationRule {
  /// If true, the service accepts API keys without any other credential.
  ///
  /// This flag only applies to HTTP and gRPC requests.
  core.bool? allowWithoutCredential;

  /// The requirements for OAuth credentials.
  OAuthRequirements? oauth;

  /// Requirements for additional authentication providers.
  core.List<AuthRequirement>? requirements;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String? selector;

  AuthenticationRule({
    this.allowWithoutCredential,
    this.oauth,
    this.requirements,
    this.selector,
  });

  AuthenticationRule.fromJson(core.Map _json)
      : this(
          allowWithoutCredential: _json.containsKey('allowWithoutCredential')
              ? _json['allowWithoutCredential'] as core.bool
              : null,
          oauth: _json.containsKey('oauth')
              ? OAuthRequirements.fromJson(
                  _json['oauth'] as core.Map<core.String, core.dynamic>)
              : null,
          requirements: _json.containsKey('requirements')
              ? (_json['requirements'] as core.List)
                  .map((value) => AuthRequirement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowWithoutCredential != null)
          'allowWithoutCredential': allowWithoutCredential!,
        if (oauth != null) 'oauth': oauth!,
        if (requirements != null) 'requirements': requirements!,
        if (selector != null) 'selector': selector!,
      };
}

/// `Backend` defines the backend configuration for a service.
class Backend {
  /// A list of API backend rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<BackendRule>? rules;

  Backend({
    this.rules,
  });

  Backend.fromJson(core.Map _json)
      : this(
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => BackendRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
      };
}

/// A backend rule provides configuration for an individual API element.
typedef BackendRule = $BackendRule;

/// Billing related configuration of the service.
///
/// The following example shows how to configure monitored resources and metrics
/// for billing, `consumer_destinations` is the only supported destination and
/// the monitored resources need at least one label key
/// `cloud.googleapis.com/location` to indicate the location of the billing
/// usage, using different monitored resources between monitoring and billing is
/// recommended so they can be evolved independently: monitored_resources: -
/// type: library.googleapis.com/billing_branch labels: - key:
/// cloud.googleapis.com/location description: | Predefined label to support
/// billing location restriction. - key: city description: | Custom label to
/// define the city where the library branch is located in. - key: name
/// description: Custom label to define the name of the library branch. metrics:
/// - name: library.googleapis.com/book/borrowed_count metric_kind: DELTA
/// value_type: INT64 unit: "1" billing: consumer_destinations: -
/// monitored_resource: library.googleapis.com/billing_branch metrics: -
/// library.googleapis.com/book/borrowed_count
class Billing {
  /// Billing configurations for sending metrics to the consumer project.
  ///
  /// There can be multiple consumer destinations per service, each one must
  /// have a different monitored resource type. A metric can be used in at most
  /// one consumer destination.
  core.List<BillingDestination>? consumerDestinations;

  Billing({
    this.consumerDestinations,
  });

  Billing.fromJson(core.Map _json)
      : this(
          consumerDestinations: _json.containsKey('consumerDestinations')
              ? (_json['consumerDestinations'] as core.List)
                  .map((value) => BillingDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerDestinations != null)
          'consumerDestinations': consumerDestinations!,
      };
}

/// Configuration of a specific billing destination (Currently only support bill
/// against consumer project).
typedef BillingDestination = $BillingDestination;

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Represents a private connection resource.
///
/// A private connection is implemented as a VPC Network Peering connection
/// between a service producer's VPC network and a service consumer's VPC
/// network.
class Connection {
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
  /// Note that invoking CreateConnection method with a different range when
  /// connection is already established will not modify already provisioned
  /// service producer subnetworks. If CreateConnection method is invoked
  /// repeatedly to reconnect when peering connection had been disconnected on
  /// the consumer side, leaving this field empty will restore previously
  /// allocated IP ranges.
  core.List<core.String>? reservedPeeringRanges;

  /// The name of the peering service that's associated with this connection, in
  /// the following format: `services/{service name}`.
  ///
  /// Output only.
  core.String? service;

  Connection({
    this.network,
    this.peering,
    this.reservedPeeringRanges,
    this.service,
  });

  Connection.fromJson(core.Map _json)
      : this(
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          peering: _json.containsKey('peering')
              ? _json['peering'] as core.String
              : null,
          reservedPeeringRanges: _json.containsKey('reservedPeeringRanges')
              ? (_json['reservedPeeringRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (peering != null) 'peering': peering!,
        if (reservedPeeringRanges != null)
          'reservedPeeringRanges': reservedPeeringRanges!,
        if (service != null) 'service': service!,
      };
}

/// Configuration information for a private service access connection.
class ConsumerConfig {
  /// Export custom routes flag value for peering from consumer to producer.
  core.bool? consumerExportCustomRoutes;

  /// Export subnet routes with public ip flag value for peering from consumer
  /// to producer.
  core.bool? consumerExportSubnetRoutesWithPublicIp;

  /// Import custom routes flag value for peering from consumer to producer.
  core.bool? consumerImportCustomRoutes;

  /// Import subnet routes with public ip flag value for peering from consumer
  /// to producer.
  core.bool? consumerImportSubnetRoutesWithPublicIp;

  /// Export custom routes flag value for peering from producer to consumer.
  core.bool? producerExportCustomRoutes;

  /// Export subnet routes with public ip flag value for peering from producer
  /// to consumer.
  core.bool? producerExportSubnetRoutesWithPublicIp;

  /// Import custom routes flag value for peering from producer to consumer.
  core.bool? producerImportCustomRoutes;

  /// Import subnet routes with public ip flag value for peering from producer
  /// to consumer.
  core.bool? producerImportSubnetRoutesWithPublicIp;

  /// The VPC host network that is used to host managed service instances.
  ///
  /// In the format, projects/{project}/global/networks/{network} where
  /// {project} is the project number e.g. '12345' and {network} is the network
  /// name.
  ///
  /// Output only.
  core.String? producerNetwork;

  /// The reserved ranges associated with this private service access
  /// connection.
  ///
  /// Output only.
  core.List<GoogleCloudServicenetworkingV1ConsumerConfigReservedRange>?
      reservedRanges;

  /// Indicates whether the VPC Service Controls reference architecture is
  /// configured for the producer VPC host network.
  ///
  /// Output only.
  core.bool? vpcScReferenceArchitectureEnabled;

  ConsumerConfig({
    this.consumerExportCustomRoutes,
    this.consumerExportSubnetRoutesWithPublicIp,
    this.consumerImportCustomRoutes,
    this.consumerImportSubnetRoutesWithPublicIp,
    this.producerExportCustomRoutes,
    this.producerExportSubnetRoutesWithPublicIp,
    this.producerImportCustomRoutes,
    this.producerImportSubnetRoutesWithPublicIp,
    this.producerNetwork,
    this.reservedRanges,
    this.vpcScReferenceArchitectureEnabled,
  });

  ConsumerConfig.fromJson(core.Map _json)
      : this(
          consumerExportCustomRoutes:
              _json.containsKey('consumerExportCustomRoutes')
                  ? _json['consumerExportCustomRoutes'] as core.bool
                  : null,
          consumerExportSubnetRoutesWithPublicIp:
              _json.containsKey('consumerExportSubnetRoutesWithPublicIp')
                  ? _json['consumerExportSubnetRoutesWithPublicIp'] as core.bool
                  : null,
          consumerImportCustomRoutes:
              _json.containsKey('consumerImportCustomRoutes')
                  ? _json['consumerImportCustomRoutes'] as core.bool
                  : null,
          consumerImportSubnetRoutesWithPublicIp:
              _json.containsKey('consumerImportSubnetRoutesWithPublicIp')
                  ? _json['consumerImportSubnetRoutesWithPublicIp'] as core.bool
                  : null,
          producerExportCustomRoutes:
              _json.containsKey('producerExportCustomRoutes')
                  ? _json['producerExportCustomRoutes'] as core.bool
                  : null,
          producerExportSubnetRoutesWithPublicIp:
              _json.containsKey('producerExportSubnetRoutesWithPublicIp')
                  ? _json['producerExportSubnetRoutesWithPublicIp'] as core.bool
                  : null,
          producerImportCustomRoutes:
              _json.containsKey('producerImportCustomRoutes')
                  ? _json['producerImportCustomRoutes'] as core.bool
                  : null,
          producerImportSubnetRoutesWithPublicIp:
              _json.containsKey('producerImportSubnetRoutesWithPublicIp')
                  ? _json['producerImportSubnetRoutesWithPublicIp'] as core.bool
                  : null,
          producerNetwork: _json.containsKey('producerNetwork')
              ? _json['producerNetwork'] as core.String
              : null,
          reservedRanges: _json.containsKey('reservedRanges')
              ? (_json['reservedRanges'] as core.List)
                  .map((value) =>
                      GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vpcScReferenceArchitectureEnabled:
              _json.containsKey('vpcScReferenceArchitectureEnabled')
                  ? _json['vpcScReferenceArchitectureEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerExportCustomRoutes != null)
          'consumerExportCustomRoutes': consumerExportCustomRoutes!,
        if (consumerExportSubnetRoutesWithPublicIp != null)
          'consumerExportSubnetRoutesWithPublicIp':
              consumerExportSubnetRoutesWithPublicIp!,
        if (consumerImportCustomRoutes != null)
          'consumerImportCustomRoutes': consumerImportCustomRoutes!,
        if (consumerImportSubnetRoutesWithPublicIp != null)
          'consumerImportSubnetRoutesWithPublicIp':
              consumerImportSubnetRoutesWithPublicIp!,
        if (producerExportCustomRoutes != null)
          'producerExportCustomRoutes': producerExportCustomRoutes!,
        if (producerExportSubnetRoutesWithPublicIp != null)
          'producerExportSubnetRoutesWithPublicIp':
              producerExportSubnetRoutesWithPublicIp!,
        if (producerImportCustomRoutes != null)
          'producerImportCustomRoutes': producerImportCustomRoutes!,
        if (producerImportSubnetRoutesWithPublicIp != null)
          'producerImportSubnetRoutesWithPublicIp':
              producerImportSubnetRoutesWithPublicIp!,
        if (producerNetwork != null) 'producerNetwork': producerNetwork!,
        if (reservedRanges != null) 'reservedRanges': reservedRanges!,
        if (vpcScReferenceArchitectureEnabled != null)
          'vpcScReferenceArchitectureEnabled':
              vpcScReferenceArchitectureEnabled!,
      };
}

/// Metadata provided through GetOperation request for the LRO generated by
/// UpdateConsumerConfig API.
typedef ConsumerConfigMetadata = $Empty;

/// Represents a consumer project.
class ConsumerProject {
  /// Project number of the consumer that is launching the service instance.
  ///
  /// It can own the network that is peered with Google or, be a service project
  /// in an XPN where the host project has the network.
  ///
  /// Required.
  core.String? projectNum;

  ConsumerProject({
    this.projectNum,
  });

  ConsumerProject.fromJson(core.Map _json)
      : this(
          projectNum: _json.containsKey('projectNum')
              ? _json['projectNum'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectNum != null) 'projectNum': projectNum!,
      };
}

/// `Context` defines which contexts an API requests.
///
/// Example: context: rules: - selector: "*" requested: -
/// google.rpc.context.ProjectContext - google.rpc.context.OriginContext The
/// above specifies that all methods in the API request
/// `google.rpc.context.ProjectContext` and `google.rpc.context.OriginContext`.
/// Available context types are defined in package `google.rpc.context`. This
/// also provides mechanism to allowlist any protobuf message extension that can
/// be sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb”
/// format. For example, list any service specific protobuf types that can
/// appear in grpc metadata as follows in your yaml file: Example: context:
/// rules: - selector: "google.example.library.v1.LibraryService.CreateBook"
/// allowed_request_extensions: - google.foo.v1.NewExtension
/// allowed_response_extensions: - google.foo.v1.NewExtension You can also
/// specify extension ID instead of fully qualified extension name here.
class Context {
  /// A list of RPC context rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<ContextRule>? rules;

  Context({
    this.rules,
  });

  Context.fromJson(core.Map _json)
      : this(
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => ContextRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
      };
}

/// A context rule provides information about the context for an individual API
/// element.
typedef ContextRule = $ContextRule;

/// Selects and configures the service controller used by the service.
///
/// The service controller handles features like abuse, quota, billing, logging,
/// monitoring, etc.
typedef Control = $Control;

/// Customize service error responses.
///
/// For example, list any service specific protobuf types that can appear in
/// error detail lists of error responses. Example: custom_error: types: -
/// google.foo.v1.CustomError - google.foo.v1.AnotherError
class CustomError {
  /// The list of custom error rules that apply to individual API messages.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<CustomErrorRule>? rules;

  /// The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.
  core.List<core.String>? types;

  CustomError({
    this.rules,
    this.types,
  });

  CustomError.fromJson(core.Map _json)
      : this(
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => CustomErrorRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          types: _json.containsKey('types')
              ? (_json['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
        if (types != null) 'types': types!,
      };
}

/// A custom error rule.
typedef CustomErrorRule = $CustomErrorRule;

/// A custom pattern is used for defining custom HTTP verb.
typedef CustomHttpPattern = $CustomHttpPattern;

/// Metadata provided through GetOperation request for the LRO generated by
/// Delete Connection API
typedef DeleteConnectionMetadata = $Empty;

/// Request to delete a private service access connection.
///
/// The call will fail if there are any managed service instances using this
/// connection.
class DeleteConnectionRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is a project number, as in '12345' {network} is a network name.
  ///
  /// Required.
  core.String? consumerNetwork;

  DeleteConnectionRequest({
    this.consumerNetwork,
  });

  DeleteConnectionRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
      };
}

/// Metadata provided through GetOperation request for the LRO generated by
/// DeletePeeredDnsDomain API.
typedef DeletePeeredDnsDomainMetadata = $Empty;

/// Request to disable VPC service controls.
typedef DisableVpcServiceControlsRequest = $VpcServiceControlsRequest;

/// Represents a DNS record set resource.
class DnsRecordSet {
  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) for
  /// examples see https://cloud.google.com/dns/records/json-record.
  ///
  /// Required.
  core.List<core.String>? data;

  /// The DNS or domain name of the record set, e.g. `test.example.com`.
  ///
  /// Required.
  core.String? domain;

  /// The period of time for which this RecordSet can be cached by resolvers.
  ///
  /// Required.
  core.String? ttl;

  /// The identifier of a supported record type.
  ///
  /// Required.
  core.String? type;

  DnsRecordSet({
    this.data,
    this.domain,
    this.ttl,
    this.type,
  });

  DnsRecordSet.fromJson(core.Map _json)
      : this(
          data: _json.containsKey('data')
              ? (_json['data'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          ttl: _json.containsKey('ttl') ? _json['ttl'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (domain != null) 'domain': domain!,
        if (ttl != null) 'ttl': ttl!,
        if (type != null) 'type': type!,
      };
}

/// Represents a DNS zone resource.
class DnsZone {
  /// The DNS name suffix of this zone e.g. `example.com.`.
  core.String? dnsSuffix;

  /// User assigned name for this resource.
  ///
  /// Must be unique within the project. The name must be 1-63 characters long,
  /// must begin with a letter, end with a letter or digit, and only contain
  /// lowercase letters, digits or dashes.
  core.String? name;

  DnsZone({
    this.dnsSuffix,
    this.name,
  });

  DnsZone.fromJson(core.Map _json)
      : this(
          dnsSuffix: _json.containsKey('dnsSuffix')
              ? _json['dnsSuffix'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsSuffix != null) 'dnsSuffix': dnsSuffix!,
        if (name != null) 'name': name!,
      };
}

/// `Documentation` provides the information for describing a service.
///
/// Example: documentation: summary: > The Google Calendar API gives access to
/// most calendar features. pages: - name: Overview content: (== include
/// google/foo/overview.md ==) - name: Tutorial content: (== include
/// google/foo/tutorial.md ==) subpages; - name: Java content: (== include
/// google/foo/tutorial_java.md ==) rules: - selector:
/// google.calendar.Calendar.Get description: > ... - selector:
/// google.calendar.Calendar.Put description: > ... Documentation is provided in
/// markdown syntax. In addition to standard markdown features, definition
/// lists, tables and fenced code blocks are supported. Section headers can be
/// provided and are interpreted relative to the section nesting of the context
/// where a documentation fragment is embedded. Documentation from the IDL is
/// merged with documentation defined via the config at normalization time,
/// where documentation provided by config rules overrides IDL provided. A
/// number of constructs specific to the API platform are supported in
/// documentation text. In order to reference a proto element, the following
/// notation can be used: \[fully.qualified.proto.name\]\[\] To override the
/// display text used for the link, this can be used: \[display
/// text\]\[fully.qualified.proto.name\] Text can be excluded from doc using the
/// following notation: (-- internal comment --) A few directives are available
/// in documentation. Note that directives must appear on a single line to be
/// properly identified. The `include` directive includes a markdown file from
/// an external source: (== include path/to/file ==) The `resource_for`
/// directive marks a message to be the resource of a collection in REST view.
/// If it is not specified, tools attempt to infer the resource from the
/// operations in a collection: (== resource_for v1.shelves.books ==) The
/// directive `suppress_warning` does not directly affect documentation and is
/// documented together with service config validation.
class Documentation {
  /// The URL to the root of documentation.
  core.String? documentationRootUrl;

  /// Declares a single overview page.
  ///
  /// For example: documentation: summary: ... overview: (== include overview.md
  /// ==) This is a shortcut for the following declaration (using pages style):
  /// documentation: summary: ... pages: - name: Overview content: (== include
  /// overview.md ==) Note: you cannot specify both `overview` field and `pages`
  /// field.
  core.String? overview;

  /// The top level pages for the documentation set.
  core.List<Page>? pages;

  /// A list of documentation rules that apply to individual API elements.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<DocumentationRule>? rules;

  /// Specifies the service root url if the default one (the service name from
  /// the yaml file) is not suitable.
  ///
  /// This can be seen in any fully specified service urls as well as sections
  /// that show a base that other urls are relative to.
  core.String? serviceRootUrl;

  /// A short description of what the service does.
  ///
  /// The summary must be plain text. It becomes the overview of the service
  /// displayed in Google Cloud Console. NOTE: This field is equivalent to the
  /// standard field `description`.
  core.String? summary;

  Documentation({
    this.documentationRootUrl,
    this.overview,
    this.pages,
    this.rules,
    this.serviceRootUrl,
    this.summary,
  });

  Documentation.fromJson(core.Map _json)
      : this(
          documentationRootUrl: _json.containsKey('documentationRootUrl')
              ? _json['documentationRootUrl'] as core.String
              : null,
          overview: _json.containsKey('overview')
              ? _json['overview'] as core.String
              : null,
          pages: _json.containsKey('pages')
              ? (_json['pages'] as core.List)
                  .map((value) => Page.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => DocumentationRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceRootUrl: _json.containsKey('serviceRootUrl')
              ? _json['serviceRootUrl'] as core.String
              : null,
          summary: _json.containsKey('summary')
              ? _json['summary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentationRootUrl != null)
          'documentationRootUrl': documentationRootUrl!,
        if (overview != null) 'overview': overview!,
        if (pages != null) 'pages': pages!,
        if (rules != null) 'rules': rules!,
        if (serviceRootUrl != null) 'serviceRootUrl': serviceRootUrl!,
        if (summary != null) 'summary': summary!,
      };
}

/// A documentation rule provides information about individual API elements.
typedef DocumentationRule = $DocumentationRule;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// Request to enable VPC service controls.
typedef EnableVpcServiceControlsRequest = $VpcServiceControlsRequest;

/// `Endpoint` describes a network address of a service that serves a set of
/// APIs.
///
/// It is commonly known as a service endpoint. A service may expose any number
/// of service endpoints, and all service endpoints share the same service
/// definition, such as quota limits and monitoring metrics. Example: type:
/// google.api.Service name: library-example.googleapis.com endpoints: #
/// Declares network address `https://library-example.googleapis.com` # for
/// service `library-example.googleapis.com`. The `https` scheme # is implicit
/// for all service endpoints. Other schemes may be # supported in the future. -
/// name: library-example.googleapis.com allow_cors: false - name:
/// content-staging-library-example.googleapis.com # Allows HTTP OPTIONS calls
/// to be passed to the API frontend, for it # to decide whether the subsequent
/// cross-origin request is allowed # to proceed. allow_cors: true
typedef Endpoint = $Endpoint;

/// Enum type definition.
class Enum {
  /// Enum value definitions.
  core.List<EnumValue>? enumvalue;

  /// Enum type name.
  core.String? name;

  /// Protocol buffer options.
  core.List<Option>? options;

  /// The source context.
  SourceContext? sourceContext;

  /// The source syntax.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String? syntax;

  Enum({
    this.enumvalue,
    this.name,
    this.options,
    this.sourceContext,
    this.syntax,
  });

  Enum.fromJson(core.Map _json)
      : this(
          enumvalue: _json.containsKey('enumvalue')
              ? (_json['enumvalue'] as core.List)
                  .map((value) => EnumValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          options: _json.containsKey('options')
              ? (_json['options'] as core.List)
                  .map((value) => Option.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceContext: _json.containsKey('sourceContext')
              ? SourceContext.fromJson(
                  _json['sourceContext'] as core.Map<core.String, core.dynamic>)
              : null,
          syntax: _json.containsKey('syntax')
              ? _json['syntax'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enumvalue != null) 'enumvalue': enumvalue!,
        if (name != null) 'name': name!,
        if (options != null) 'options': options!,
        if (sourceContext != null) 'sourceContext': sourceContext!,
        if (syntax != null) 'syntax': syntax!,
      };
}

/// Enum value definition.
class EnumValue {
  /// Enum value name.
  core.String? name;

  /// Enum value number.
  core.int? number;

  /// Protocol buffer options.
  core.List<Option>? options;

  EnumValue({
    this.name,
    this.number,
    this.options,
  });

  EnumValue.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          number:
              _json.containsKey('number') ? _json['number'] as core.int : null,
          options: _json.containsKey('options')
              ? (_json['options'] as core.List)
                  .map((value) => Option.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
        if (options != null) 'options': options!,
      };
}

/// A single field of a message type.
class Field {
  /// The field cardinality.
  /// Possible string values are:
  /// - "CARDINALITY_UNKNOWN" : For fields with unknown cardinality.
  /// - "CARDINALITY_OPTIONAL" : For optional fields.
  /// - "CARDINALITY_REQUIRED" : For required fields. Proto2 syntax only.
  /// - "CARDINALITY_REPEATED" : For repeated fields.
  core.String? cardinality;

  /// The string value of the default value of this field.
  ///
  /// Proto2 syntax only.
  core.String? defaultValue;

  /// The field JSON name.
  core.String? jsonName;

  /// The field type.
  /// Possible string values are:
  /// - "TYPE_UNKNOWN" : Field type unknown.
  /// - "TYPE_DOUBLE" : Field type double.
  /// - "TYPE_FLOAT" : Field type float.
  /// - "TYPE_INT64" : Field type int64.
  /// - "TYPE_UINT64" : Field type uint64.
  /// - "TYPE_INT32" : Field type int32.
  /// - "TYPE_FIXED64" : Field type fixed64.
  /// - "TYPE_FIXED32" : Field type fixed32.
  /// - "TYPE_BOOL" : Field type bool.
  /// - "TYPE_STRING" : Field type string.
  /// - "TYPE_GROUP" : Field type group. Proto2 syntax only, and deprecated.
  /// - "TYPE_MESSAGE" : Field type message.
  /// - "TYPE_BYTES" : Field type bytes.
  /// - "TYPE_UINT32" : Field type uint32.
  /// - "TYPE_ENUM" : Field type enum.
  /// - "TYPE_SFIXED32" : Field type sfixed32.
  /// - "TYPE_SFIXED64" : Field type sfixed64.
  /// - "TYPE_SINT32" : Field type sint32.
  /// - "TYPE_SINT64" : Field type sint64.
  core.String? kind;

  /// The field name.
  core.String? name;

  /// The field number.
  core.int? number;

  /// The index of the field type in `Type.oneofs`, for message or enumeration
  /// types.
  ///
  /// The first type has index 1; zero means the type is not in the list.
  core.int? oneofIndex;

  /// The protocol buffer options.
  core.List<Option>? options;

  /// Whether to use alternative packed wire representation.
  core.bool? packed;

  /// The field type URL, without the scheme, for message or enumeration types.
  ///
  /// Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  core.String? typeUrl;

  Field({
    this.cardinality,
    this.defaultValue,
    this.jsonName,
    this.kind,
    this.name,
    this.number,
    this.oneofIndex,
    this.options,
    this.packed,
    this.typeUrl,
  });

  Field.fromJson(core.Map _json)
      : this(
          cardinality: _json.containsKey('cardinality')
              ? _json['cardinality'] as core.String
              : null,
          defaultValue: _json.containsKey('defaultValue')
              ? _json['defaultValue'] as core.String
              : null,
          jsonName: _json.containsKey('jsonName')
              ? _json['jsonName'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          number:
              _json.containsKey('number') ? _json['number'] as core.int : null,
          oneofIndex: _json.containsKey('oneofIndex')
              ? _json['oneofIndex'] as core.int
              : null,
          options: _json.containsKey('options')
              ? (_json['options'] as core.List)
                  .map((value) => Option.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          packed:
              _json.containsKey('packed') ? _json['packed'] as core.bool : null,
          typeUrl: _json.containsKey('typeUrl')
              ? _json['typeUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardinality != null) 'cardinality': cardinality!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (jsonName != null) 'jsonName': jsonName!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
        if (oneofIndex != null) 'oneofIndex': oneofIndex!,
        if (options != null) 'options': options!,
        if (packed != null) 'packed': packed!,
        if (typeUrl != null) 'typeUrl': typeUrl!,
      };
}

/// Allocated IP address ranges for this private service access connection.
class GoogleCloudServicenetworkingV1ConsumerConfigReservedRange {
  /// The starting address of the reserved range.
  ///
  /// The address must be a valid IPv4 address in the x.x.x.x format. This value
  /// combined with the IP prefix length is the CIDR range for the reserved
  /// range.
  core.String? address;

  /// The prefix length of the reserved range.
  core.int? ipPrefixLength;

  /// The name of the reserved range.
  core.String? name;

  GoogleCloudServicenetworkingV1ConsumerConfigReservedRange({
    this.address,
    this.ipPrefixLength,
    this.name,
  });

  GoogleCloudServicenetworkingV1ConsumerConfigReservedRange.fromJson(
      core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          ipPrefixLength: _json.containsKey('ipPrefixLength')
              ? _json['ipPrefixLength'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (ipPrefixLength != null) 'ipPrefixLength': ipPrefixLength!,
        if (name != null) 'name': name!,
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

  GoogleCloudServicenetworkingV1betaConnection.fromJson(core.Map _json)
      : this(
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          peering: _json.containsKey('peering')
              ? _json['peering'] as core.String
              : null,
          reservedPeeringRanges: _json.containsKey('reservedPeeringRanges')
              ? (_json['reservedPeeringRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (peering != null) 'peering': peering!,
        if (reservedPeeringRanges != null)
          'reservedPeeringRanges': reservedPeeringRanges!,
        if (service != null) 'service': service!,
      };
}

/// Represents a subnet that was created or discovered by a private access
/// management service.
class GoogleCloudServicenetworkingV1betaSubnetwork {
  /// Subnetwork CIDR range in `10.x.x.x/y` format.
  core.String? ipCidrRange;

  /// Subnetwork name.
  ///
  /// See https://cloud.google.com/compute/docs/vpc/
  core.String? name;

  /// In the Shared VPC host project, the VPC network that's peered with the
  /// consumer network.
  ///
  /// For example: `projects/1234321/global/networks/host-network`
  core.String? network;

  /// This is a discovered subnet that is not within the current consumer
  /// allocated ranges.
  core.bool? outsideAllocation;

  GoogleCloudServicenetworkingV1betaSubnetwork({
    this.ipCidrRange,
    this.name,
    this.network,
    this.outsideAllocation,
  });

  GoogleCloudServicenetworkingV1betaSubnetwork.fromJson(core.Map _json)
      : this(
          ipCidrRange: _json.containsKey('ipCidrRange')
              ? _json['ipCidrRange'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          outsideAllocation: _json.containsKey('outsideAllocation')
              ? _json['outsideAllocation'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (outsideAllocation != null) 'outsideAllocation': outsideAllocation!,
      };
}

/// Defines the HTTP configuration for an API service.
///
/// It contains a list of HttpRule, each specifying the mapping of an RPC method
/// to one or more HTTP REST API methods.
class Http {
  /// When set to true, URL path parameters will be fully URI-decoded except in
  /// cases of single segment matches in reserved expansion, where "%2F" will be
  /// left encoded.
  ///
  /// The default behavior is to not decode RFC 6570 reserved characters in
  /// multi segment matches.
  core.bool? fullyDecodeReservedExpansion;

  /// A list of HTTP configuration rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<HttpRule>? rules;

  Http({
    this.fullyDecodeReservedExpansion,
    this.rules,
  });

  Http.fromJson(core.Map _json)
      : this(
          fullyDecodeReservedExpansion:
              _json.containsKey('fullyDecodeReservedExpansion')
                  ? _json['fullyDecodeReservedExpansion'] as core.bool
                  : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => HttpRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullyDecodeReservedExpansion != null)
          'fullyDecodeReservedExpansion': fullyDecodeReservedExpansion!,
        if (rules != null) 'rules': rules!,
      };
}

/// # gRPC Transcoding gRPC Transcoding is a feature for mapping between a gRPC
/// method and one or more HTTP REST endpoints.
///
/// It allows developers to build a single API service that supports both gRPC
/// APIs and REST APIs. Many systems, including
/// [Google APIs](https://github.com/googleapis/googleapis),
/// [Cloud Endpoints](https://cloud.google.com/endpoints),
/// [gRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway), and
/// [Envoy](https://github.com/envoyproxy/envoy) proxy support this feature and
/// use it for large scale production services. `HttpRule` defines the schema of
/// the gRPC/REST mapping. The mapping specifies how different portions of the
/// gRPC request message are mapped to the URL path, URL query parameters, and
/// HTTP request body. It also controls how the gRPC response message is mapped
/// to the HTTP response body. `HttpRule` is typically specified as an
/// `google.api.http` annotation on the gRPC method. Each mapping specifies a
/// URL path template and an HTTP method. The path template may refer to one or
/// more fields in the gRPC request message, as long as each field is a
/// non-repeated field with a primitive (non-message) type. The path template
/// controls how fields of the request message are mapped to the URL path.
/// Example: service Messaging { rpc GetMessage(GetMessageRequest) returns
/// (Message) { option (google.api.http) = { get: "/v1/{name=messages / * }" };
/// } } message GetMessageRequest { string name = 1; // Mapped to URL path. }
/// message Message { string text = 1; // The resource content. } This enables
/// an HTTP REST to gRPC mapping as below: HTTP | gRPC -----|----- `GET
/// /v1/messages/123456` | `GetMessage(name: "messages/123456")` Any fields in
/// the request message which are not bound by the path template automatically
/// become HTTP query parameters if there is no HTTP request body. For example:
/// service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) {
/// option (google.api.http) = { get:"/v1/messages/{message_id}" }; } } message
/// GetMessageRequest { message SubMessage { string subfield = 1; } string
/// message_id = 1; // Mapped to URL path. int64 revision = 2; // Mapped to URL
/// query parameter `revision`. SubMessage sub = 3; // Mapped to URL query
/// parameter `sub.subfield`. } This enables a HTTP JSON to RPC mapping as
/// below: HTTP | gRPC -----|----- `GET
/// /v1/messages/123456?revision=2&sub.subfield=foo` | `GetMessage(message_id:
/// "123456" revision: 2 sub: SubMessage(subfield: "foo"))` Note that fields
/// which are mapped to URL query parameters must have a primitive type or a
/// repeated primitive type or a non-repeated message type. In the case of a
/// repeated type, the parameter can be repeated in the URL as
/// `...?param=A&param=B`. In the case of a message type, each field of the
/// message is mapped to a separate parameter, such as
/// `...?foo.a=A&foo.b=B&foo.c=C`. For HTTP methods that allow a request body,
/// the `body` field specifies the mapping. Consider a REST update method on the
/// message resource collection: service Messaging { rpc
/// UpdateMessage(UpdateMessageRequest) returns (Message) { option
/// (google.api.http) = { patch: "/v1/messages/{message_id}" body: "message" };
/// } } message UpdateMessageRequest { string message_id = 1; // mapped to the
/// URL Message message = 2; // mapped to the body } The following HTTP JSON to
/// RPC mapping is enabled, where the representation of the JSON in the request
/// body is determined by protos JSON encoding: HTTP | gRPC -----|----- `PATCH
/// /v1/messages/123456 { "text": "Hi!" }` | `UpdateMessage(message_id: "123456"
/// message { text: "Hi!" })` The special name `*` can be used in the body
/// mapping to define that every field not bound by the path template should be
/// mapped to the request body. This enables the following alternative
/// definition of the update method: service Messaging { rpc
/// UpdateMessage(Message) returns (Message) { option (google.api.http) = {
/// patch: "/v1/messages/{message_id}" body: "*" }; } } message Message { string
/// message_id = 1; string text = 2; } The following HTTP JSON to RPC mapping is
/// enabled: HTTP | gRPC -----|----- `PATCH /v1/messages/123456 { "text": "Hi!"
/// }` | `UpdateMessage(message_id: "123456" text: "Hi!")` Note that when using
/// `*` in the body mapping, it is not possible to have HTTP parameters, as all
/// fields not bound by the path end in the body. This makes this option more
/// rarely used in practice when defining REST APIs. The common usage of `*` is
/// in custom methods which don't use the URL at all for transferring data. It
/// is possible to define multiple HTTP methods for one RPC by using the
/// `additional_bindings` option. Example: service Messaging { rpc
/// GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) =
/// { get: "/v1/messages/{message_id}" additional_bindings { get:
/// "/v1/users/{user_id}/messages/{message_id}" } }; } } message
/// GetMessageRequest { string message_id = 1; string user_id = 2; } This
/// enables the following two alternative HTTP JSON to RPC mappings: HTTP | gRPC
/// -----|----- `GET /v1/messages/123456` | `GetMessage(message_id: "123456")`
/// `GET /v1/users/me/messages/123456` | `GetMessage(user_id: "me" message_id:
/// "123456")` ## Rules for HTTP mapping 1. Leaf request fields (recursive
/// expansion nested messages in the request message) are classified into three
/// categories: - Fields referred by the path template. They are passed via the
/// URL path. - Fields referred by the HttpRule.body. They are passed via the
/// HTTP request body. - All other fields are passed via the URL query
/// parameters, and the parameter name is the field path in the request message.
/// A repeated field can be represented as multiple query parameters under the
/// same name. 2. If HttpRule.body is "*", there is no URL query parameter, all
/// fields are passed via URL path and HTTP request body. 3. If HttpRule.body is
/// omitted, there is no HTTP request body, all fields are passed via URL path
/// and URL query parameters. ### Path template syntax Template = "/" Segments
/// \[ Verb \] ; Segments = Segment { "/" Segment } ; Segment = "*" | "**" |
/// LITERAL | Variable ; Variable = "{" FieldPath \[ "=" Segments \] "}" ;
/// FieldPath = IDENT { "." IDENT } ; Verb = ":" LITERAL ; The syntax `*`
/// matches a single URL path segment. The syntax `**` matches zero or more URL
/// path segments, which must be the last part of the URL path except the
/// `Verb`. The syntax `Variable` matches part of the URL path as specified by
/// its template. A variable template must not contain other variables. If a
/// variable matches a single path segment, its template may be omitted, e.g.
/// `{var}` is equivalent to `{var=*}`. The syntax `LITERAL` matches literal
/// text in the URL path. If the `LITERAL` contains any reserved character, such
/// characters should be percent-encoded before the matching. If a variable
/// contains exactly one path segment, such as `"{var}"` or `"{var=*}"`, when
/// such a variable is expanded into a URL path on the client side, all
/// characters except `[-_.~0-9a-zA-Z]` are percent-encoded. The server side
/// does the reverse decoding. Such variables show up in the
/// [Discovery Document](https://developers.google.com/discovery/v1/reference/apis)
/// as `{var}`. If a variable contains multiple path segments, such as
/// `"{var=foo / * }"` or `"{var=**}"`, when such a variable is expanded into a
/// URL path on the client side, all characters except `[-_.~/0-9a-zA-Z]` are
/// percent-encoded. The server side does the reverse decoding, except "%2F" and
/// "%2f" are left unchanged. Such variables show up in the
/// [Discovery Document](https://developers.google.com/discovery/v1/reference/apis)
/// as `{+var}`. ## Using gRPC API Service Configuration gRPC API Service
/// Configuration (service config) is a configuration language for configuring a
/// gRPC service to become a user-facing product. The service config is simply
/// the YAML representation of the `google.api.Service` proto message. As an
/// alternative to annotating your proto file, you can configure gRPC
/// transcoding in your service config YAML files. You do this by specifying a
/// `HttpRule` that maps the gRPC method to a REST endpoint, achieving the same
/// effect as the proto annotation. This can be particularly useful if you have
/// a proto that is reused in multiple services. Note that any transcoding
/// specified in the service config will override any matching transcoding
/// configuration in the proto. Example: http: rules: # Selects a gRPC method
/// and applies HttpRule to it. - selector: example.v1.Messaging.GetMessage get:
/// /v1/messages/{message_id}/{sub.subfield} ## Special notes When gRPC
/// Transcoding is used to map a gRPC to JSON REST endpoints, the proto to JSON
/// conversion must follow the
/// [proto3 specification](https://developers.google.com/protocol-buffers/docs/proto3#json).
/// While the single segment variable follows the semantics of
/// [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2 Simple String
/// Expansion, the multi segment variable **does not** follow RFC 6570 Section
/// 3.2.3 Reserved Expansion. The reason is that the Reserved Expansion does not
/// expand special characters like `?` and `#`, which would lead to invalid
/// URLs. As the result, gRPC Transcoding uses a custom encoding for multi
/// segment variables. The path variables **must not** refer to any repeated or
/// mapped field, because client libraries are not capable of handling such
/// variable expansion. The path variables **must not** capture the leading "/"
/// character. The reason is that the most common use case "{var}" does not
/// capture the leading "/" character. For consistency, all path variables must
/// share the same behavior. Repeated message fields must not be mapped to URL
/// query parameters, because no client library can support such complicated
/// mapping. If an API needs to use a JSON array for request or response body,
/// it can map the request or response body to a repeated field. However, some
/// gRPC Transcoding implementations may not support this feature.
class HttpRule {
  /// Additional HTTP bindings for the selector.
  ///
  /// Nested bindings must not contain an `additional_bindings` field themselves
  /// (that is, the nesting may only be one level deep).
  core.List<HttpRule>? additionalBindings;

  /// The name of the request field whose value is mapped to the HTTP request
  /// body, or `*` for mapping all request fields not captured by the path
  /// pattern to the HTTP body, or omitted for not having any HTTP request body.
  ///
  /// NOTE: the referred field must be present at the top-level of the request
  /// message type.
  core.String? body;

  /// The custom pattern is used for specifying an HTTP method that is not
  /// included in the `pattern` field, such as HEAD, or "*" to leave the HTTP
  /// method unspecified for this rule.
  ///
  /// The wild-card rule is useful for services that provide content to Web
  /// (HTML) clients.
  CustomHttpPattern? custom;

  /// Maps to HTTP DELETE.
  ///
  /// Used for deleting a resource.
  core.String? delete;

  /// Maps to HTTP GET.
  ///
  /// Used for listing and getting information about resources.
  core.String? get;

  /// Maps to HTTP PATCH.
  ///
  /// Used for updating a resource.
  core.String? patch;

  /// Maps to HTTP POST.
  ///
  /// Used for creating a resource or performing an action.
  core.String? post;

  /// Maps to HTTP PUT.
  ///
  /// Used for replacing a resource.
  core.String? put;

  /// The name of the response field whose value is mapped to the HTTP response
  /// body.
  ///
  /// When omitted, the entire response message will be used as the HTTP
  /// response body. NOTE: The referred field must be present at the top-level
  /// of the response message type.
  ///
  /// Optional.
  core.String? responseBody;

  /// Selects a method to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String? selector;

  HttpRule({
    this.additionalBindings,
    this.body,
    this.custom,
    this.delete,
    this.get,
    this.patch,
    this.post,
    this.put,
    this.responseBody,
    this.selector,
  });

  HttpRule.fromJson(core.Map _json)
      : this(
          additionalBindings: _json.containsKey('additionalBindings')
              ? (_json['additionalBindings'] as core.List)
                  .map((value) => HttpRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          body: _json.containsKey('body') ? _json['body'] as core.String : null,
          custom: _json.containsKey('custom')
              ? CustomHttpPattern.fromJson(
                  _json['custom'] as core.Map<core.String, core.dynamic>)
              : null,
          delete: _json.containsKey('delete')
              ? _json['delete'] as core.String
              : null,
          get: _json.containsKey('get') ? _json['get'] as core.String : null,
          patch:
              _json.containsKey('patch') ? _json['patch'] as core.String : null,
          post: _json.containsKey('post') ? _json['post'] as core.String : null,
          put: _json.containsKey('put') ? _json['put'] as core.String : null,
          responseBody: _json.containsKey('responseBody')
              ? _json['responseBody'] as core.String
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalBindings != null)
          'additionalBindings': additionalBindings!,
        if (body != null) 'body': body!,
        if (custom != null) 'custom': custom!,
        if (delete != null) 'delete': delete!,
        if (get != null) 'get': get!,
        if (patch != null) 'patch': patch!,
        if (post != null) 'post': post!,
        if (put != null) 'put': put!,
        if (responseBody != null) 'responseBody': responseBody!,
        if (selector != null) 'selector': selector!,
      };
}

/// Specifies a location to extract JWT from an API request.
typedef JwtLocation = $JwtLocation;

/// A description of a label.
typedef LabelDescriptor = $LabelDescriptor;

/// ListConnectionsResponse is the response to list peering states for the given
/// service and consumer project.
class ListConnectionsResponse {
  /// The list of Connections.
  core.List<Connection>? connections;

  ListConnectionsResponse({
    this.connections,
  });

  ListConnectionsResponse.fromJson(core.Map _json)
      : this(
          connections: _json.containsKey('connections')
              ? (_json['connections'] as core.List)
                  .map((value) => Connection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null) 'connections': connections!,
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

/// Response to list peered DNS domains for a given connection.
class ListPeeredDnsDomainsResponse {
  /// The list of peered DNS domains.
  core.List<PeeredDnsDomain>? peeredDnsDomains;

  ListPeeredDnsDomainsResponse({
    this.peeredDnsDomains,
  });

  ListPeeredDnsDomainsResponse.fromJson(core.Map _json)
      : this(
          peeredDnsDomains: _json.containsKey('peeredDnsDomains')
              ? (_json['peeredDnsDomains'] as core.List)
                  .map((value) => PeeredDnsDomain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (peeredDnsDomains != null) 'peeredDnsDomains': peeredDnsDomains!,
      };
}

/// A description of a log type.
///
/// Example in YAML format: - name: library.googleapis.com/activity_history
/// description: The history of borrowing and returning library items.
/// display_name: Activity labels: - key: /customer_id description: Identifier
/// of a library customer
class LogDescriptor {
  /// A human-readable description of this log.
  ///
  /// This information appears in the documentation and can contain details.
  core.String? description;

  /// The human-readable name for this log.
  ///
  /// This information appears on the user interface and should be concise.
  core.String? displayName;

  /// The set of labels that are available to describe a specific log entry.
  ///
  /// Runtime requests that contain labels not specified here are considered
  /// invalid.
  core.List<LabelDescriptor>? labels;

  /// The name of the log.
  ///
  /// It must be less than 512 characters long and can include the following
  /// characters: upper- and lower-case alphanumeric characters \[A-Za-z0-9\],
  /// and punctuation characters including slash, underscore, hyphen, period
  /// \[/_-.\].
  core.String? name;

  LogDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.name,
  });

  LogDescriptor.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => LabelDescriptor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
      };
}

/// Logging configuration of the service.
///
/// The following example shows how to configure logs to be sent to the producer
/// and consumer projects. In the example, the `activity_history` log is sent to
/// both the producer and consumer projects, whereas the `purchase_history` log
/// is only sent to the producer project. monitored_resources: - type:
/// library.googleapis.com/branch labels: - key: /city description: The city
/// where the library branch is located in. - key: /name description: The name
/// of the branch. logs: - name: activity_history labels: - key: /customer_id -
/// name: purchase_history logging: producer_destinations: - monitored_resource:
/// library.googleapis.com/branch logs: - activity_history - purchase_history
/// consumer_destinations: - monitored_resource: library.googleapis.com/branch
/// logs: - activity_history
class Logging {
  /// Logging configurations for sending logs to the consumer project.
  ///
  /// There can be multiple consumer destinations, each one must have a
  /// different monitored resource type. A log can be used in at most one
  /// consumer destination.
  core.List<LoggingDestination>? consumerDestinations;

  /// Logging configurations for sending logs to the producer project.
  ///
  /// There can be multiple producer destinations, each one must have a
  /// different monitored resource type. A log can be used in at most one
  /// producer destination.
  core.List<LoggingDestination>? producerDestinations;

  Logging({
    this.consumerDestinations,
    this.producerDestinations,
  });

  Logging.fromJson(core.Map _json)
      : this(
          consumerDestinations: _json.containsKey('consumerDestinations')
              ? (_json['consumerDestinations'] as core.List)
                  .map((value) => LoggingDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          producerDestinations: _json.containsKey('producerDestinations')
              ? (_json['producerDestinations'] as core.List)
                  .map((value) => LoggingDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerDestinations != null)
          'consumerDestinations': consumerDestinations!,
        if (producerDestinations != null)
          'producerDestinations': producerDestinations!,
      };
}

/// Configuration of a specific logging destination (the producer project or the
/// consumer project).
typedef LoggingDestination = $LoggingDestination;

/// Method represents a method of an API interface.
class Method {
  /// The simple name of this method.
  core.String? name;

  /// Any metadata attached to the method.
  core.List<Option>? options;

  /// If true, the request is streamed.
  core.bool? requestStreaming;

  /// A URL of the input message type.
  core.String? requestTypeUrl;

  /// If true, the response is streamed.
  core.bool? responseStreaming;

  /// The URL of the output message type.
  core.String? responseTypeUrl;

  /// The source syntax of this method.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String? syntax;

  Method({
    this.name,
    this.options,
    this.requestStreaming,
    this.requestTypeUrl,
    this.responseStreaming,
    this.responseTypeUrl,
    this.syntax,
  });

  Method.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          options: _json.containsKey('options')
              ? (_json['options'] as core.List)
                  .map((value) => Option.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestStreaming: _json.containsKey('requestStreaming')
              ? _json['requestStreaming'] as core.bool
              : null,
          requestTypeUrl: _json.containsKey('requestTypeUrl')
              ? _json['requestTypeUrl'] as core.String
              : null,
          responseStreaming: _json.containsKey('responseStreaming')
              ? _json['responseStreaming'] as core.bool
              : null,
          responseTypeUrl: _json.containsKey('responseTypeUrl')
              ? _json['responseTypeUrl'] as core.String
              : null,
          syntax: _json.containsKey('syntax')
              ? _json['syntax'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (options != null) 'options': options!,
        if (requestStreaming != null) 'requestStreaming': requestStreaming!,
        if (requestTypeUrl != null) 'requestTypeUrl': requestTypeUrl!,
        if (responseStreaming != null) 'responseStreaming': responseStreaming!,
        if (responseTypeUrl != null) 'responseTypeUrl': responseTypeUrl!,
        if (syntax != null) 'syntax': syntax!,
      };
}

/// Defines a metric type and its schema.
///
/// Once a metric descriptor is created, deleting or altering it stops data
/// collection and makes the metric type's existing data unusable.
class MetricDescriptor {
  /// A detailed description of the metric, which can be used in documentation.
  core.String? description;

  /// A concise name for the metric, which can be displayed in user interfaces.
  ///
  /// Use sentence case without an ending period, for example "Request count".
  /// This field is optional but it is recommended to be set for any metrics
  /// associated with user-visible concepts, such as Quota.
  core.String? displayName;

  /// The set of labels that can be used to describe a specific instance of this
  /// metric type.
  ///
  /// For example, the `appengine.googleapis.com/http/server/response_latencies`
  /// metric type has a label for the HTTP response code, `response_code`, so
  /// you can look at latencies for successful responses or just for responses
  /// that failed.
  core.List<LabelDescriptor>? labels;

  /// The launch stage of the metric definition.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// Metadata which can be used to guide usage of the metric.
  ///
  /// Optional.
  MetricDescriptorMetadata? metadata;

  /// Whether the metric records instantaneous values, changes to a value, etc.
  ///
  /// Some combinations of `metric_kind` and `value_type` might not be
  /// supported.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval. Cumulative
  /// measurements in a time series should have the same start time and
  /// increasing end times, until an event resets the cumulative value to zero
  /// and sets a new start time for the following points.
  core.String? metricKind;

  /// Read-only.
  ///
  /// If present, then a time series, which is identified partially by a metric
  /// type and a MonitoredResourceDescriptor, that is associated with this
  /// metric type can only be associated with one of the monitored resource
  /// types listed here.
  core.List<core.String>? monitoredResourceTypes;

  /// The resource name of the metric descriptor.
  core.String? name;

  /// The metric type, including its DNS name prefix.
  ///
  /// The type is not URL-encoded. All user-defined metric types have the DNS
  /// name `custom.googleapis.com` or `external.googleapis.com`. Metric types
  /// should use a natural hierarchical grouping. For example:
  /// "custom.googleapis.com/invoice/paid/amount"
  /// "external.googleapis.com/prometheus/up"
  /// "appengine.googleapis.com/http/server/response_latencies"
  core.String? type;

  /// The units in which the metric value is reported.
  ///
  /// It is only applicable if the `value_type` is `INT64`, `DOUBLE`, or
  /// `DISTRIBUTION`. The `unit` defines the representation of the stored metric
  /// values. Different systems might scale the values to be more easily
  /// displayed (so a value of `0.02kBy` _might_ be displayed as `20By`, and a
  /// value of `3523kBy` _might_ be displayed as `3.5MBy`). However, if the
  /// `unit` is `kBy`, then the value of the metric is always in thousands of
  /// bytes, no matter how it might be displayed. If you want a custom metric to
  /// record the exact number of CPU-seconds used by a job, you can create an
  /// `INT64 CUMULATIVE` metric whose `unit` is `s{CPU}` (or equivalently
  /// `1s{CPU}` or just `s`). If the job uses 12,005 CPU-seconds, then the value
  /// is written as `12005`. Alternatively, if you want a custom metric to
  /// record data in a more granular way, you can create a `DOUBLE CUMULATIVE`
  /// metric whose `unit` is `ks{CPU}`, and then write the value `12.005` (which
  /// is `12005/1000`), or use `Kis{CPU}` and write `11.723` (which is
  /// `12005/1024`). The supported units are a subset of
  /// [The Unified Code for Units of Measure](https://unitsofmeasure.org/ucum.html)
  /// standard: **Basic units (UNIT)** * `bit` bit * `By` byte * `s` second *
  /// `min` minute * `h` hour * `d` day * `1` dimensionless **Prefixes
  /// (PREFIX)** * `k` kilo (10^3) * `M` mega (10^6) * `G` giga (10^9) * `T`
  /// tera (10^12) * `P` peta (10^15) * `E` exa (10^18) * `Z` zetta (10^21) *
  /// `Y` yotta (10^24) * `m` milli (10^-3) * `u` micro (10^-6) * `n` nano
  /// (10^-9) * `p` pico (10^-12) * `f` femto (10^-15) * `a` atto (10^-18) * `z`
  /// zepto (10^-21) * `y` yocto (10^-24) * `Ki` kibi (2^10) * `Mi` mebi (2^20)
  /// * `Gi` gibi (2^30) * `Ti` tebi (2^40) * `Pi` pebi (2^50) **Grammar** The
  /// grammar also includes these connectors: * `/` division or ratio (as an
  /// infix operator). For examples, `kBy/{email}` or `MiBy/10ms` (although you
  /// should almost never have `/s` in a metric `unit`; rates should always be
  /// computed at query time from the underlying cumulative or delta value). *
  /// `.` multiplication or composition (as an infix operator). For examples,
  /// `GBy.d` or `k{watt}.h`. The grammar for a unit is as follows: Expression =
  /// Component { "." Component } { "/" Component } ; Component = ( \[ PREFIX \]
  /// UNIT | "%" ) \[ Annotation \] | Annotation | "1" ; Annotation = "{" NAME
  /// "}" ; Notes: * `Annotation` is just a comment if it follows a `UNIT`. If
  /// the annotation is used alone, then the unit is equivalent to `1`. For
  /// examples, `{request}/s == 1/s`, `By{transmitted}/s == By/s`. * `NAME` is a
  /// sequence of non-blank printable ASCII characters not containing `{` or
  /// `}`. * `1` represents a unitary
  /// [dimensionless unit](https://en.wikipedia.org/wiki/Dimensionless_quantity)
  /// of 1, such as in `1/s`. It is typically used when none of the basic units
  /// are appropriate. For example, "new users per day" can be represented as
  /// `1/d` or `{new-users}/d` (and a metric value `5` would mean "5 new users).
  /// Alternatively, "thousands of page views per day" would be represented as
  /// `1000/d` or `k1/d` or `k{page_views}/d` (and a metric value of `5.3` would
  /// mean "5300 page views per day"). * `%` represents dimensionless value of
  /// 1/100, and annotates values giving a percentage (so the metric values are
  /// typically in the range of 0..100, and a metric value `3` means "3
  /// percent"). * `10^2.%` indicates a metric contains a ratio, typically in
  /// the range 0..1, that will be multiplied by 100 and displayed as a
  /// percentage (so a metric value `0.03` means "3 percent").
  core.String? unit;

  /// Whether the measurement is an integer, a floating-point number, etc.
  ///
  /// Some combinations of `metric_kind` and `value_type` might not be
  /// supported.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean. This value type can be used only if the
  /// metric kind is `GAUGE`.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string. This value type can be used only
  /// if the metric kind is `GAUGE`.
  /// - "DISTRIBUTION" : The value is a `Distribution`.
  /// - "MONEY" : The value is money.
  core.String? valueType;

  MetricDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.metadata,
    this.metricKind,
    this.monitoredResourceTypes,
    this.name,
    this.type,
    this.unit,
    this.valueType,
  });

  MetricDescriptor.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => LabelDescriptor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          launchStage: _json.containsKey('launchStage')
              ? _json['launchStage'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? MetricDescriptorMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          metricKind: _json.containsKey('metricKind')
              ? _json['metricKind'] as core.String
              : null,
          monitoredResourceTypes: _json.containsKey('monitoredResourceTypes')
              ? (_json['monitoredResourceTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (metadata != null) 'metadata': metadata!,
        if (metricKind != null) 'metricKind': metricKind!,
        if (monitoredResourceTypes != null)
          'monitoredResourceTypes': monitoredResourceTypes!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (unit != null) 'unit': unit!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Additional annotations that can be used to guide the usage of a metric.
typedef MetricDescriptorMetadata = $MetricDescriptorMetadata00;

/// Bind API methods to metrics.
///
/// Binding a method to a metric causes that metric's configured quota behaviors
/// to apply to the method call.
typedef MetricRule = $MetricRule;

/// Declares an API Interface to be included in this interface.
///
/// The including interface must redeclare all the methods from the included
/// interface, but documentation and options are inherited as follows: - If
/// after comment and whitespace stripping, the documentation string of the
/// redeclared method is empty, it will be inherited from the original method. -
/// Each annotation belonging to the service config (http, visibility) which is
/// not set in the redeclared method will be inherited. - If an http annotation
/// is inherited, the path pattern will be modified as follows. Any version
/// prefix will be replaced by the version of the including interface plus the
/// root path if specified. Example of a simple mixin: package google.acl.v1;
/// service AccessControl { // Get the underlying ACL object. rpc
/// GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get =
/// "/v1/{resource=**}:getAcl"; } } package google.storage.v2; service Storage {
/// // rpc GetAcl(GetAclRequest) returns (Acl); // Get a data record. rpc
/// GetData(GetDataRequest) returns (Data) { option (google.api.http).get =
/// "/v2/{resource=**}"; } } Example of a mixin configuration: apis: - name:
/// google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl The
/// mixin construct implies that all methods in `AccessControl` are also
/// declared with same name and request/response types in `Storage`. A
/// documentation generator or annotation processor will see the effective
/// `Storage.GetAcl` method after inheriting documentation and annotations as
/// follows: service Storage { // Get the underlying ACL object. rpc
/// GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get =
/// "/v2/{resource=**}:getAcl"; } ... } Note how the version in the path pattern
/// changed from `v1` to `v2`. If the `root` field in the mixin is specified, it
/// should be a relative path under which inherited HTTP paths are placed.
/// Example: apis: - name: google.storage.v2.Storage mixins: - name:
/// google.acl.v1.AccessControl root: acls This implies the following inherited
/// HTTP annotation: service Storage { // Get the underlying ACL object. rpc
/// GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get =
/// "/v2/acls/{resource=**}:getAcl"; } ... }
typedef Mixin = $Mixin;

/// An object that describes the schema of a MonitoredResource object using a
/// type name and a set of labels.
///
/// For example, the monitored resource descriptor for Google Compute Engine VM
/// instances has a type of `"gce_instance"` and specifies the use of the labels
/// `"instance_id"` and `"zone"` to identify particular VM instances. Different
/// APIs can support different monitored resource types. APIs generally provide
/// a `list` method that returns the monitored resource descriptors used by the
/// API.
class MonitoredResourceDescriptor {
  /// A detailed description of the monitored resource type that might be used
  /// in documentation.
  ///
  /// Optional.
  core.String? description;

  /// A concise name for the monitored resource type that might be displayed in
  /// user interfaces.
  ///
  /// It should be a Title Cased Noun Phrase, without any article or other
  /// determiners. For example, `"Google Cloud SQL Database"`.
  ///
  /// Optional.
  core.String? displayName;

  /// A set of labels used to describe instances of this monitored resource
  /// type.
  ///
  /// For example, an individual Google Cloud SQL database is identified by
  /// values for the labels `"database_id"` and `"zone"`.
  ///
  /// Required.
  core.List<LabelDescriptor>? labels;

  /// The launch stage of the monitored resource definition.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// The resource name of the monitored resource descriptor:
  /// `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where {type}
  /// is the value of the `type` field in this object and {project_id} is a
  /// project ID that provides API-specific context for accessing the type.
  ///
  /// APIs that do not use project information can use the resource name format
  /// `"monitoredResourceDescriptors/{type}"`.
  ///
  /// Optional.
  core.String? name;

  /// The monitored resource type.
  ///
  /// For example, the type `"cloudsql_database"` represents databases in Google
  /// Cloud SQL. For a list of types, see
  /// [Monitoring resource types](https://cloud.google.com/monitoring/api/resources)
  /// and
  /// [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  ///
  /// Required.
  core.String? type;

  MonitoredResourceDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.name,
    this.type,
  });

  MonitoredResourceDescriptor.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => LabelDescriptor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          launchStage: _json.containsKey('launchStage')
              ? _json['launchStage'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Monitoring configuration of the service.
///
/// The example below shows how to configure monitored resources and metrics for
/// monitoring. In the example, a monitored resource and two metrics are
/// defined. The `library.googleapis.com/book/returned_count` metric is sent to
/// both producer and consumer projects, whereas the
/// `library.googleapis.com/book/num_overdue` metric is only sent to the
/// consumer project. monitored_resources: - type: library.googleapis.com/Branch
/// display_name: "Library Branch" description: "A branch of a library."
/// launch_stage: GA labels: - key: resource_container description: "The Cloud
/// container (ie. project id) for the Branch." - key: location description:
/// "The location of the library branch." - key: branch_id description: "The id
/// of the branch." metrics: - name: library.googleapis.com/book/returned_count
/// display_name: "Books Returned" description: "The count of books that have
/// been returned." launch_stage: GA metric_kind: DELTA value_type: INT64 unit:
/// "1" labels: - key: customer_id description: "The id of the customer." -
/// name: library.googleapis.com/book/num_overdue display_name: "Books Overdue"
/// description: "The current number of overdue books." launch_stage: GA
/// metric_kind: GAUGE value_type: INT64 unit: "1" labels: - key: customer_id
/// description: "The id of the customer." monitoring: producer_destinations: -
/// monitored_resource: library.googleapis.com/Branch metrics: -
/// library.googleapis.com/book/returned_count consumer_destinations: -
/// monitored_resource: library.googleapis.com/Branch metrics: -
/// library.googleapis.com/book/returned_count -
/// library.googleapis.com/book/num_overdue
class Monitoring {
  /// Monitoring configurations for sending metrics to the consumer project.
  ///
  /// There can be multiple consumer destinations. A monitored resource type may
  /// appear in multiple monitoring destinations if different aggregations are
  /// needed for different sets of metrics associated with that monitored
  /// resource type. A monitored resource and metric pair may only be used once
  /// in the Monitoring configuration.
  core.List<MonitoringDestination>? consumerDestinations;

  /// Monitoring configurations for sending metrics to the producer project.
  ///
  /// There can be multiple producer destinations. A monitored resource type may
  /// appear in multiple monitoring destinations if different aggregations are
  /// needed for different sets of metrics associated with that monitored
  /// resource type. A monitored resource and metric pair may only be used once
  /// in the Monitoring configuration.
  core.List<MonitoringDestination>? producerDestinations;

  Monitoring({
    this.consumerDestinations,
    this.producerDestinations,
  });

  Monitoring.fromJson(core.Map _json)
      : this(
          consumerDestinations: _json.containsKey('consumerDestinations')
              ? (_json['consumerDestinations'] as core.List)
                  .map((value) => MonitoringDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          producerDestinations: _json.containsKey('producerDestinations')
              ? (_json['producerDestinations'] as core.List)
                  .map((value) => MonitoringDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerDestinations != null)
          'consumerDestinations': consumerDestinations!,
        if (producerDestinations != null)
          'producerDestinations': producerDestinations!,
      };
}

/// Configuration of a specific monitoring destination (the producer project or
/// the consumer project).
typedef MonitoringDestination = $MonitoringDestination;

/// OAuth scopes are a way to define data and permissions on data.
///
/// For example, there are scopes defined for "Read-only access to Google
/// Calendar" and "Access to Cloud Platform". Users can consent to a scope for
/// an application, giving it permission to access that data on their behalf.
/// OAuth scope specifications should be fairly coarse grained; a user will need
/// to see and understand the text description of what your scope means. In most
/// cases: use one or at most two OAuth scopes for an entire family of products.
/// If your product has multiple APIs, you should probably be sharing the OAuth
/// scope across all of those APIs. When you need finer grained OAuth consent
/// screens: talk with your product management about how developers will use
/// them in practice. Please note that even though each of the canonical scopes
/// is enough for a request to be accepted and passed to the backend, a request
/// can still fail due to the backend requiring additional scopes or
/// permissions.
typedef OAuthRequirements = $OAuthRequirements;

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

/// A protocol buffer option, which can be attached to a message, field,
/// enumeration, etc.
typedef Option = $Option;

/// Represents a documentation page.
///
/// A page can contain subpages to represent nested documentation set structure.
class Page {
  /// The Markdown content of the page.
  ///
  /// You can use (== include {path} ==) to include content from a Markdown
  /// file. The content can be used to produce the documentation page such as
  /// HTML format page.
  core.String? content;

  /// The name of the page.
  ///
  /// It will be used as an identity of the page to generate URI of the page,
  /// text of the link to this page in navigation, etc. The full page name
  /// (start from the root page name to this page concatenated with `.`) can be
  /// used as reference to the page in your documentation. For example: pages: -
  /// name: Tutorial content: (== include tutorial.md ==) subpages: - name: Java
  /// content: (== include tutorial_java.md ==) You can reference `Java` page
  /// using Markdown reference link syntax: `Java`.
  core.String? name;

  /// Subpages of this page.
  ///
  /// The order of subpages specified here will be honored in the generated
  /// docset.
  core.List<Page>? subpages;

  Page({
    this.content,
    this.name,
    this.subpages,
  });

  Page.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          subpages: _json.containsKey('subpages')
              ? (_json['subpages'] as core.List)
                  .map((value) => Page.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (name != null) 'name': name!,
        if (subpages != null) 'subpages': subpages!,
      };
}

/// Metadata provided through GetOperation request for the LRO generated by
/// Partial Delete Connection API
typedef PartialDeleteConnectionMetadata = $Empty;

/// DNS domain suffix for which requests originating in the producer VPC network
/// are resolved in the associated consumer VPC network.
class PeeredDnsDomain {
  /// The DNS domain name suffix e.g. `example.com.`.
  ///
  /// Cloud DNS requires that a DNS suffix ends with a trailing dot.
  core.String? dnsSuffix;

  /// User assigned name for this resource.
  ///
  /// Must be unique within the consumer network. The name must be 1-63
  /// characters long, must begin with a letter, end with a letter or digit, and
  /// only contain lowercase letters, digits or dashes.
  core.String? name;

  PeeredDnsDomain({
    this.dnsSuffix,
    this.name,
  });

  PeeredDnsDomain.fromJson(core.Map _json)
      : this(
          dnsSuffix: _json.containsKey('dnsSuffix')
              ? _json['dnsSuffix'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsSuffix != null) 'dnsSuffix': dnsSuffix!,
        if (name != null) 'name': name!,
      };
}

/// Metadata provided through GetOperation request for the LRO generated by
/// CreatePeeredDnsDomain API.
typedef PeeredDnsDomainMetadata = $Empty;

/// Grouping of IAM role and IAM member.
class PolicyBinding {
  /// Member to bind the role with.
  ///
  /// See /iam/docs/reference/rest/v1/Policy#Binding for how to format each
  /// member. Eg. - user:myuser@mydomain.com -
  /// serviceAccount:my-service-account@app.gserviceaccount.com
  ///
  /// Required.
  core.String? member;

  /// Role to apply.
  ///
  /// Only allowlisted roles can be used at the specified granularity. The role
  /// must be one of the following: - 'roles/container.hostServiceAgentUser'
  /// applied on the shared VPC host project - 'roles/compute.securityAdmin'
  /// applied on the shared VPC host project
  ///
  /// Required.
  core.String? role;

  PolicyBinding({
    this.member,
    this.role,
  });

  PolicyBinding.fromJson(core.Map _json)
      : this(
          member: _json.containsKey('member')
              ? _json['member'] as core.String
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (member != null) 'member': member!,
        if (role != null) 'role': role!,
      };
}

/// Quota configuration helps to achieve fairness and budgeting in service
/// usage.
///
/// The metric based quota configuration works this way: - The service
/// configuration defines a set of metrics. - For API calls, the
/// quota.metric_rules maps methods to metrics with corresponding costs. - The
/// quota.limits defines limits on the metrics, which will be used for quota
/// checks at runtime. An example quota configuration in yaml format: quota:
/// limits: - name: apiWriteQpsPerProject metric:
/// library.googleapis.com/write_calls unit: "1/min/{project}" # rate limit for
/// consumer projects values: STANDARD: 10000 # The metric rules bind all
/// methods to the read_calls metric, # except for the UpdateBook and DeleteBook
/// methods. These two methods # are mapped to the write_calls metric, with the
/// UpdateBook method # consuming at twice rate as the DeleteBook method.
/// metric_rules: - selector: "*" metric_costs:
/// library.googleapis.com/read_calls: 1 - selector:
/// google.example.library.v1.LibraryService.UpdateBook metric_costs:
/// library.googleapis.com/write_calls: 2 - selector:
/// google.example.library.v1.LibraryService.DeleteBook metric_costs:
/// library.googleapis.com/write_calls: 1 Corresponding Metric definition:
/// metrics: - name: library.googleapis.com/read_calls display_name: Read
/// requests metric_kind: DELTA value_type: INT64 - name:
/// library.googleapis.com/write_calls display_name: Write requests metric_kind:
/// DELTA value_type: INT64
class Quota {
  /// List of `QuotaLimit` definitions for the service.
  core.List<QuotaLimit>? limits;

  /// List of `MetricRule` definitions, each one mapping a selected method to
  /// one or more metrics.
  core.List<MetricRule>? metricRules;

  Quota({
    this.limits,
    this.metricRules,
  });

  Quota.fromJson(core.Map _json)
      : this(
          limits: _json.containsKey('limits')
              ? (_json['limits'] as core.List)
                  .map((value) => QuotaLimit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metricRules: _json.containsKey('metricRules')
              ? (_json['metricRules'] as core.List)
                  .map((value) => MetricRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limits != null) 'limits': limits!,
        if (metricRules != null) 'metricRules': metricRules!,
      };
}

/// `QuotaLimit` defines a specific limit that applies over a specified duration
/// for a limit type.
///
/// There can be at most one limit for a duration and limit type combination
/// defined within a `QuotaGroup`.
typedef QuotaLimit = $QuotaLimit;

/// Represents a found unused range.
class Range {
  /// CIDR range in "10.x.x.x/y" format that is within the allocated ranges and
  /// currently unused.
  core.String? ipCidrRange;

  /// In the Shared VPC host project, the VPC network that's peered with the
  /// consumer network.
  ///
  /// For example: `projects/1234321/global/networks/host-network`
  core.String? network;

  Range({
    this.ipCidrRange,
    this.network,
  });

  Range.fromJson(core.Map _json)
      : this(
          ipCidrRange: _json.containsKey('ipCidrRange')
              ? _json['ipCidrRange'] as core.String
              : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (network != null) 'network': network!,
      };
}

/// Represents a range reservation.
class RangeReservation {
  /// The size of the desired subnet.
  ///
  /// Use usual CIDR range notation. For example, '30' to find unused x.x.x.x/30
  /// CIDR range. The goal is to determine if one of the allocated ranges has
  /// enough free space for a subnet of the requested size.
  ///
  /// Required.
  core.int? ipPrefixLength;

  /// The name of one or more allocated IP address ranges associated with this
  /// private service access connection.
  ///
  /// If no range names are provided all ranges associated with this connection
  /// will be considered. If a CIDR range with the specified IP prefix length is
  /// not available within these ranges the validation fails.
  ///
  /// Optional.
  core.List<core.String>? requestedRanges;

  /// The size of the desired secondary ranges for the subnet.
  ///
  /// Use usual CIDR range notation. For example, '30' to find unused x.x.x.x/30
  /// CIDR range. The goal is to determine that the allocated ranges have enough
  /// free space for all the requested secondary ranges.
  ///
  /// Optional.
  core.List<core.int>? secondaryRangeIpPrefixLengths;

  /// List of subnetwork candidates to validate.
  ///
  /// The required input fields are `name`, `network`, and `region`. Subnetworks
  /// from this list which exist will be returned in the response with the
  /// `ip_cidr_range`, `secondary_ip_cider_ranges`, and `outside_allocation`
  /// fields set.
  ///
  /// Optional.
  core.List<Subnetwork>? subnetworkCandidates;

  RangeReservation({
    this.ipPrefixLength,
    this.requestedRanges,
    this.secondaryRangeIpPrefixLengths,
    this.subnetworkCandidates,
  });

  RangeReservation.fromJson(core.Map _json)
      : this(
          ipPrefixLength: _json.containsKey('ipPrefixLength')
              ? _json['ipPrefixLength'] as core.int
              : null,
          requestedRanges: _json.containsKey('requestedRanges')
              ? (_json['requestedRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          secondaryRangeIpPrefixLengths:
              _json.containsKey('secondaryRangeIpPrefixLengths')
                  ? (_json['secondaryRangeIpPrefixLengths'] as core.List)
                      .map((value) => value as core.int)
                      .toList()
                  : null,
          subnetworkCandidates: _json.containsKey('subnetworkCandidates')
              ? (_json['subnetworkCandidates'] as core.List)
                  .map((value) => Subnetwork.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipPrefixLength != null) 'ipPrefixLength': ipPrefixLength!,
        if (requestedRanges != null) 'requestedRanges': requestedRanges!,
        if (secondaryRangeIpPrefixLengths != null)
          'secondaryRangeIpPrefixLengths': secondaryRangeIpPrefixLengths!,
        if (subnetworkCandidates != null)
          'subnetworkCandidates': subnetworkCandidates!,
      };
}

/// Metadata provided through GetOperation request for the LRO generated by
/// RemoveDnsRecordSet API
typedef RemoveDnsRecordSetMetadata = $Empty;

/// Request to remove a record set from a private managed DNS zone in the shared
/// producer host project.
///
/// The name, type, ttl, and data values must all exactly match an existing
/// record set in the specified zone.
class RemoveDnsRecordSetRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is the project number, as in '12345' {network} is the network
  /// name.
  ///
  /// Required.
  core.String? consumerNetwork;

  /// The DNS record set to remove.
  ///
  /// Required.
  DnsRecordSet? dnsRecordSet;

  /// The name of the private DNS zone in the shared producer host project from
  /// which the record set will be removed.
  ///
  /// Required.
  core.String? zone;

  RemoveDnsRecordSetRequest({
    this.consumerNetwork,
    this.dnsRecordSet,
    this.zone,
  });

  RemoveDnsRecordSetRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
          dnsRecordSet: _json.containsKey('dnsRecordSet')
              ? DnsRecordSet.fromJson(
                  _json['dnsRecordSet'] as core.Map<core.String, core.dynamic>)
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
        if (dnsRecordSet != null) 'dnsRecordSet': dnsRecordSet!,
        if (zone != null) 'zone': zone!,
      };
}

/// Blank message response type for RemoveDnsRecordSet API
typedef RemoveDnsRecordSetResponse = $Empty;

/// Metadata provided through GetOperation request for the LRO generated by
/// RemoveDnsZone API
typedef RemoveDnsZoneMetadata = $Empty;

/// Request to remove a private managed DNS zone in the shared producer host
/// project and a matching DNS peering zone in the consumer project.
class RemoveDnsZoneRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is the project number, as in '12345' {network} is the network
  /// name.
  ///
  /// Required.
  core.String? consumerNetwork;

  /// The name for both the private zone in the shared producer host project and
  /// the peering zone in the consumer project.
  ///
  /// Required.
  core.String? name;

  RemoveDnsZoneRequest({
    this.consumerNetwork,
    this.name,
  });

  RemoveDnsZoneRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
        if (name != null) 'name': name!,
      };
}

/// Blank message response type for RemoveDnsZone API
typedef RemoveDnsZoneResponse = $Empty;

/// Represents a route that was created or discovered by a private access
/// management service.
class Route {
  /// Destination CIDR range that this route applies to.
  core.String? destRange;

  /// Route name.
  ///
  /// See https://cloud.google.com/vpc/docs/routes
  core.String? name;

  /// Fully-qualified URL of the VPC network in the producer host tenant project
  /// that this route applies to.
  ///
  /// For example: `projects/123456/global/networks/host-network`
  core.String? network;

  /// Fully-qualified URL of the gateway that should handle matching packets
  /// that this route applies to.
  ///
  /// For example: `projects/123456/global/gateways/default-internet-gateway`
  core.String? nextHopGateway;

  Route({
    this.destRange,
    this.name,
    this.network,
    this.nextHopGateway,
  });

  Route.fromJson(core.Map _json)
      : this(
          destRange: _json.containsKey('destRange')
              ? _json['destRange'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          nextHopGateway: _json.containsKey('nextHopGateway')
              ? _json['nextHopGateway'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destRange != null) 'destRange': destRange!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (nextHopGateway != null) 'nextHopGateway': nextHopGateway!,
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

  SearchRangeRequest({
    this.ipPrefixLength,
    this.network,
  });

  SearchRangeRequest.fromJson(core.Map _json)
      : this(
          ipPrefixLength: _json.containsKey('ipPrefixLength')
              ? _json['ipPrefixLength'] as core.int
              : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipPrefixLength != null) 'ipPrefixLength': ipPrefixLength!,
        if (network != null) 'network': network!,
      };
}

class SecondaryIpRange {
  /// Secondary IP CIDR range in `x.x.x.x/y` format.
  core.String? ipCidrRange;

  /// Name of the secondary IP range.
  core.String? rangeName;

  SecondaryIpRange({
    this.ipCidrRange,
    this.rangeName,
  });

  SecondaryIpRange.fromJson(core.Map _json)
      : this(
          ipCidrRange: _json.containsKey('ipCidrRange')
              ? _json['ipCidrRange'] as core.String
              : null,
          rangeName: _json.containsKey('rangeName')
              ? _json['rangeName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (rangeName != null) 'rangeName': rangeName!,
      };
}

class SecondaryIpRangeSpec {
  /// The prefix length of the secondary IP range.
  ///
  /// Use CIDR range notation, such as `30` to provision a secondary IP range
  /// with an `x.x.x.x/30` CIDR range. The IP address range is drawn from a pool
  /// of available ranges in the service consumer's allocated range.
  ///
  /// Required.
  core.int? ipPrefixLength;

  /// Enable outside allocation using public IP addresses.
  ///
  /// Any public IP range may be specified. If this field is provided, we will
  /// not use customer reserved ranges for this secondary IP range.
  ///
  /// Optional.
  core.String? outsideAllocationPublicIpRange;

  /// A name for the secondary IP range.
  ///
  /// The name must be 1-63 characters long, and comply with RFC1035. The name
  /// must be unique within the subnetwork.
  ///
  /// Required.
  core.String? rangeName;

  /// The starting address of a range.
  ///
  /// The address must be a valid IPv4 address in the x.x.x.x format. This value
  /// combined with the IP prefix range is the CIDR range for the secondary IP
  /// range. The range must be within the allocated range that is assigned to
  /// the private connection. If the CIDR range isn't available, the call fails.
  ///
  /// Optional.
  core.String? requestedAddress;

  SecondaryIpRangeSpec({
    this.ipPrefixLength,
    this.outsideAllocationPublicIpRange,
    this.rangeName,
    this.requestedAddress,
  });

  SecondaryIpRangeSpec.fromJson(core.Map _json)
      : this(
          ipPrefixLength: _json.containsKey('ipPrefixLength')
              ? _json['ipPrefixLength'] as core.int
              : null,
          outsideAllocationPublicIpRange:
              _json.containsKey('outsideAllocationPublicIpRange')
                  ? _json['outsideAllocationPublicIpRange'] as core.String
                  : null,
          rangeName: _json.containsKey('rangeName')
              ? _json['rangeName'] as core.String
              : null,
          requestedAddress: _json.containsKey('requestedAddress')
              ? _json['requestedAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipPrefixLength != null) 'ipPrefixLength': ipPrefixLength!,
        if (outsideAllocationPublicIpRange != null)
          'outsideAllocationPublicIpRange': outsideAllocationPublicIpRange!,
        if (rangeName != null) 'rangeName': rangeName!,
        if (requestedAddress != null) 'requestedAddress': requestedAddress!,
      };
}

/// `Service` is the root object of Google API service configuration (service
/// config).
///
/// It describes the basic information about a logical service, such as the
/// service name and the user-facing title, and delegates other aspects to
/// sub-sections. Each sub-section is either a proto message or a repeated proto
/// message that configures a specific aspect, such as auth. For more
/// information, see each proto message definition. Example: type:
/// google.api.Service name: calendar.googleapis.com title: Google Calendar API
/// apis: - name: google.calendar.v3.Calendar visibility: rules: - selector:
/// "google.calendar.v3.*" restriction: PREVIEW backend: rules: - selector:
/// "google.calendar.v3.*" address: calendar.example.com authentication:
/// providers: - id: google_calendar_auth jwks_uri:
/// https://www.googleapis.com/oauth2/v1/certs issuer:
/// https://securetoken.google.com rules: - selector: "*" requirements:
/// provider_id: google_calendar_auth
class Service {
  /// A list of API interfaces exported by this service.
  ///
  /// Only the `name` field of the google.protobuf.Api needs to be provided by
  /// the configuration author, as the remaining fields will be derived from the
  /// IDL during the normalization process. It is an error to specify an API
  /// interface here which cannot be resolved against the associated IDL files.
  core.List<Api>? apis;

  /// Auth configuration.
  Authentication? authentication;

  /// API backend configuration.
  Backend? backend;

  /// Billing configuration.
  Billing? billing;

  /// Obsolete.
  ///
  /// Do not use. This field has no semantic meaning. The service config
  /// compiler always sets this field to `3`.
  core.int? configVersion;

  /// Context configuration.
  Context? context;

  /// Configuration for the service control plane.
  Control? control;

  /// Custom error configuration.
  CustomError? customError;

  /// Additional API documentation.
  Documentation? documentation;

  /// Configuration for network endpoints.
  ///
  /// If this is empty, then an endpoint with the same name as the service is
  /// automatically generated to service all defined APIs.
  core.List<Endpoint>? endpoints;

  /// A list of all enum types included in this API service.
  ///
  /// Enums referenced directly or indirectly by the `apis` are automatically
  /// included. Enums which are not referenced but shall be included should be
  /// listed here by name by the configuration author. Example: enums: - name:
  /// google.someapi.v1.SomeEnum
  core.List<Enum>? enums;

  /// HTTP configuration.
  Http? http;

  /// A unique ID for a specific instance of this message, typically assigned by
  /// the client for tracking purpose.
  ///
  /// Must be no longer than 63 characters and only lower case letters, digits,
  /// '.', '_' and '-' are allowed. If empty, the server may choose to generate
  /// one instead.
  core.String? id;

  /// Logging configuration.
  Logging? logging;

  /// Defines the logs used by this service.
  core.List<LogDescriptor>? logs;

  /// Defines the metrics used by this service.
  core.List<MetricDescriptor>? metrics;

  /// Defines the monitored resources used by this service.
  ///
  /// This is required by the Service.monitoring and Service.logging
  /// configurations.
  core.List<MonitoredResourceDescriptor>? monitoredResources;

  /// Monitoring configuration.
  Monitoring? monitoring;

  /// The service name, which is a DNS-like logical identifier for the service,
  /// such as `calendar.googleapis.com`.
  ///
  /// The service name typically goes through DNS verification to make sure the
  /// owner of the service also owns the DNS name.
  core.String? name;

  /// The Google project that owns this service.
  core.String? producerProjectId;

  /// Quota configuration.
  Quota? quota;

  /// The source information for this configuration if available.
  ///
  /// Output only.
  SourceInfo? sourceInfo;

  /// System parameter configuration.
  SystemParameters? systemParameters;

  /// A list of all proto message types included in this API service.
  ///
  /// It serves similar purpose as \[google.api.Service.types\], except that
  /// these types are not needed by user-defined APIs. Therefore, they will not
  /// show up in the generated discovery doc. This field should only be used to
  /// define system APIs in ESF.
  core.List<Type>? systemTypes;

  /// The product title for this service, it is the name displayed in Google
  /// Cloud Console.
  core.String? title;

  /// A list of all proto message types included in this API service.
  ///
  /// Types referenced directly or indirectly by the `apis` are automatically
  /// included. Messages which are not referenced but shall be included, such as
  /// types used by the `google.protobuf.Any` type, should be listed here by
  /// name by the configuration author. Example: types: - name:
  /// google.protobuf.Int32
  core.List<Type>? types;

  /// Configuration controlling usage of this service.
  Usage? usage;

  Service({
    this.apis,
    this.authentication,
    this.backend,
    this.billing,
    this.configVersion,
    this.context,
    this.control,
    this.customError,
    this.documentation,
    this.endpoints,
    this.enums,
    this.http,
    this.id,
    this.logging,
    this.logs,
    this.metrics,
    this.monitoredResources,
    this.monitoring,
    this.name,
    this.producerProjectId,
    this.quota,
    this.sourceInfo,
    this.systemParameters,
    this.systemTypes,
    this.title,
    this.types,
    this.usage,
  });

  Service.fromJson(core.Map _json)
      : this(
          apis: _json.containsKey('apis')
              ? (_json['apis'] as core.List)
                  .map((value) => Api.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          authentication: _json.containsKey('authentication')
              ? Authentication.fromJson(_json['authentication']
                  as core.Map<core.String, core.dynamic>)
              : null,
          backend: _json.containsKey('backend')
              ? Backend.fromJson(
                  _json['backend'] as core.Map<core.String, core.dynamic>)
              : null,
          billing: _json.containsKey('billing')
              ? Billing.fromJson(
                  _json['billing'] as core.Map<core.String, core.dynamic>)
              : null,
          configVersion: _json.containsKey('configVersion')
              ? _json['configVersion'] as core.int
              : null,
          context: _json.containsKey('context')
              ? Context.fromJson(
                  _json['context'] as core.Map<core.String, core.dynamic>)
              : null,
          control: _json.containsKey('control')
              ? Control.fromJson(
                  _json['control'] as core.Map<core.String, core.dynamic>)
              : null,
          customError: _json.containsKey('customError')
              ? CustomError.fromJson(
                  _json['customError'] as core.Map<core.String, core.dynamic>)
              : null,
          documentation: _json.containsKey('documentation')
              ? Documentation.fromJson(
                  _json['documentation'] as core.Map<core.String, core.dynamic>)
              : null,
          endpoints: _json.containsKey('endpoints')
              ? (_json['endpoints'] as core.List)
                  .map((value) => Endpoint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enums: _json.containsKey('enums')
              ? (_json['enums'] as core.List)
                  .map((value) => Enum.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          http: _json.containsKey('http')
              ? Http.fromJson(
                  _json['http'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          logging: _json.containsKey('logging')
              ? Logging.fromJson(
                  _json['logging'] as core.Map<core.String, core.dynamic>)
              : null,
          logs: _json.containsKey('logs')
              ? (_json['logs'] as core.List)
                  .map((value) => LogDescriptor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => MetricDescriptor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          monitoredResources: _json.containsKey('monitoredResources')
              ? (_json['monitoredResources'] as core.List)
                  .map((value) => MonitoredResourceDescriptor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          monitoring: _json.containsKey('monitoring')
              ? Monitoring.fromJson(
                  _json['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          producerProjectId: _json.containsKey('producerProjectId')
              ? _json['producerProjectId'] as core.String
              : null,
          quota: _json.containsKey('quota')
              ? Quota.fromJson(
                  _json['quota'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceInfo: _json.containsKey('sourceInfo')
              ? SourceInfo.fromJson(
                  _json['sourceInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          systemParameters: _json.containsKey('systemParameters')
              ? SystemParameters.fromJson(_json['systemParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
          systemTypes: _json.containsKey('systemTypes')
              ? (_json['systemTypes'] as core.List)
                  .map((value) => Type.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          types: _json.containsKey('types')
              ? (_json['types'] as core.List)
                  .map((value) => Type.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          usage: _json.containsKey('usage')
              ? Usage.fromJson(
                  _json['usage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apis != null) 'apis': apis!,
        if (authentication != null) 'authentication': authentication!,
        if (backend != null) 'backend': backend!,
        if (billing != null) 'billing': billing!,
        if (configVersion != null) 'configVersion': configVersion!,
        if (context != null) 'context': context!,
        if (control != null) 'control': control!,
        if (customError != null) 'customError': customError!,
        if (documentation != null) 'documentation': documentation!,
        if (endpoints != null) 'endpoints': endpoints!,
        if (enums != null) 'enums': enums!,
        if (http != null) 'http': http!,
        if (id != null) 'id': id!,
        if (logging != null) 'logging': logging!,
        if (logs != null) 'logs': logs!,
        if (metrics != null) 'metrics': metrics!,
        if (monitoredResources != null)
          'monitoredResources': monitoredResources!,
        if (monitoring != null) 'monitoring': monitoring!,
        if (name != null) 'name': name!,
        if (producerProjectId != null) 'producerProjectId': producerProjectId!,
        if (quota != null) 'quota': quota!,
        if (sourceInfo != null) 'sourceInfo': sourceInfo!,
        if (systemParameters != null) 'systemParameters': systemParameters!,
        if (systemTypes != null) 'systemTypes': systemTypes!,
        if (title != null) 'title': title!,
        if (types != null) 'types': types!,
        if (usage != null) 'usage': usage!,
      };
}

/// `SourceContext` represents information about the source of a protobuf
/// element, like the file in which it is defined.
typedef SourceContext = $SourceContext;

/// Source information used to create a Service Config
typedef SourceInfo = $SourceInfo;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Represents a subnet that was created or discovered by a private access
/// management service.
class Subnetwork {
  /// Subnetwork CIDR range in `10.x.x.x/y` format.
  core.String? ipCidrRange;

  /// Subnetwork name.
  ///
  /// See https://cloud.google.com/compute/docs/vpc/
  core.String? name;

  /// In the Shared VPC host project, the VPC network that's peered with the
  /// consumer network.
  ///
  /// For example: `projects/1234321/global/networks/host-network`
  core.String? network;

  /// This is a discovered subnet that is not within the current consumer
  /// allocated ranges.
  core.bool? outsideAllocation;

  /// GCP region where the subnetwork is located.
  core.String? region;

  /// List of secondary IP ranges in this subnetwork.
  core.List<SecondaryIpRange>? secondaryIpRanges;

  Subnetwork({
    this.ipCidrRange,
    this.name,
    this.network,
    this.outsideAllocation,
    this.region,
    this.secondaryIpRanges,
  });

  Subnetwork.fromJson(core.Map _json)
      : this(
          ipCidrRange: _json.containsKey('ipCidrRange')
              ? _json['ipCidrRange'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          outsideAllocation: _json.containsKey('outsideAllocation')
              ? _json['outsideAllocation'] as core.bool
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          secondaryIpRanges: _json.containsKey('secondaryIpRanges')
              ? (_json['secondaryIpRanges'] as core.List)
                  .map((value) => SecondaryIpRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (outsideAllocation != null) 'outsideAllocation': outsideAllocation!,
        if (region != null) 'region': region!,
        if (secondaryIpRanges != null) 'secondaryIpRanges': secondaryIpRanges!,
      };
}

/// Define a parameter's name and location.
///
/// The parameter may be passed as either an HTTP header or a URL query
/// parameter, and if both are passed the behavior is implementation-dependent.
typedef SystemParameter = $SystemParameter;

/// Define a system parameter rule mapping system parameter definitions to
/// methods.
class SystemParameterRule {
  /// Define parameters.
  ///
  /// Multiple names may be defined for a parameter. For a given method call,
  /// only one of them should be used. If multiple names are used the behavior
  /// is implementation-dependent. If none of the specified names are present
  /// the behavior is parameter-dependent.
  core.List<SystemParameter>? parameters;

  /// Selects the methods to which this rule applies.
  ///
  /// Use '*' to indicate all methods in all APIs. Refer to selector for syntax
  /// details.
  core.String? selector;

  SystemParameterRule({
    this.parameters,
    this.selector,
  });

  SystemParameterRule.fromJson(core.Map _json)
      : this(
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) => SystemParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
        if (selector != null) 'selector': selector!,
      };
}

/// ### System parameter configuration A system parameter is a special kind of
/// parameter defined by the API system, not by an individual API.
///
/// It is typically mapped to an HTTP header and/or a URL query parameter. This
/// configuration specifies which methods change the names of the system
/// parameters.
class SystemParameters {
  /// Define system parameters.
  ///
  /// The parameters defined here will override the default parameters
  /// implemented by the system. If this field is missing from the service
  /// config, default system parameters will be used. Default system parameters
  /// and names is implementation-dependent. Example: define api key for all
  /// methods system_parameters rules: - selector: "*" parameters: - name:
  /// api_key url_query_parameter: api_key Example: define 2 api key names for a
  /// specific method. system_parameters rules: - selector: "/ListShelves"
  /// parameters: - name: api_key http_header: Api-Key1 - name: api_key
  /// http_header: Api-Key2 **NOTE:** All service configuration rules follow
  /// "last one wins" order.
  core.List<SystemParameterRule>? rules;

  SystemParameters({
    this.rules,
  });

  SystemParameters.fromJson(core.Map _json)
      : this(
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => SystemParameterRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
      };
}

/// A protocol buffer message type.
class Type {
  /// The list of fields.
  core.List<Field>? fields;

  /// The fully qualified message name.
  core.String? name;

  /// The list of types appearing in `oneof` definitions in this type.
  core.List<core.String>? oneofs;

  /// The protocol buffer options.
  core.List<Option>? options;

  /// The source context.
  SourceContext? sourceContext;

  /// The source syntax.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String? syntax;

  Type({
    this.fields,
    this.name,
    this.oneofs,
    this.options,
    this.sourceContext,
    this.syntax,
  });

  Type.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          oneofs: _json.containsKey('oneofs')
              ? (_json['oneofs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          options: _json.containsKey('options')
              ? (_json['options'] as core.List)
                  .map((value) => Option.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceContext: _json.containsKey('sourceContext')
              ? SourceContext.fromJson(
                  _json['sourceContext'] as core.Map<core.String, core.dynamic>)
              : null,
          syntax: _json.containsKey('syntax')
              ? _json['syntax'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
        if (oneofs != null) 'oneofs': oneofs!,
        if (options != null) 'options': options!,
        if (sourceContext != null) 'sourceContext': sourceContext!,
        if (syntax != null) 'syntax': syntax!,
      };
}

/// Request to update the configuration of a service networking connection
/// including the import/export of custom routes and subnetwork routes with
/// public IP.
class UpdateConsumerConfigRequest {
  /// The updated peering config.
  ///
  /// Required.
  ConsumerConfig? consumerConfig;

  UpdateConsumerConfigRequest({
    this.consumerConfig,
  });

  UpdateConsumerConfigRequest.fromJson(core.Map _json)
      : this(
          consumerConfig: _json.containsKey('consumerConfig')
              ? ConsumerConfig.fromJson(_json['consumerConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerConfig != null) 'consumerConfig': consumerConfig!,
      };
}

/// Metadata provided through GetOperation request for the LRO generated by
/// UpdateDnsRecordSet API
typedef UpdateDnsRecordSetMetadata = $Empty;

/// Request to update a record set from a private managed DNS zone in the shared
/// producer host project.
///
/// The name, type, ttl, and data values of the existing record set must all
/// exactly match an existing record set in the specified zone.
class UpdateDnsRecordSetRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is the project number, as in '12345' {network} is the network
  /// name.
  ///
  /// Required.
  core.String? consumerNetwork;

  /// The existing DNS record set to update.
  ///
  /// Required.
  DnsRecordSet? existingDnsRecordSet;

  /// The new values that the DNS record set should be updated to hold.
  ///
  /// Required.
  DnsRecordSet? newDnsRecordSet;

  /// The name of the private DNS zone in the shared producer host project from
  /// which the record set will be removed.
  ///
  /// Required.
  core.String? zone;

  UpdateDnsRecordSetRequest({
    this.consumerNetwork,
    this.existingDnsRecordSet,
    this.newDnsRecordSet,
    this.zone,
  });

  UpdateDnsRecordSetRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
          existingDnsRecordSet: _json.containsKey('existingDnsRecordSet')
              ? DnsRecordSet.fromJson(_json['existingDnsRecordSet']
                  as core.Map<core.String, core.dynamic>)
              : null,
          newDnsRecordSet: _json.containsKey('newDnsRecordSet')
              ? DnsRecordSet.fromJson(_json['newDnsRecordSet']
                  as core.Map<core.String, core.dynamic>)
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
        if (existingDnsRecordSet != null)
          'existingDnsRecordSet': existingDnsRecordSet!,
        if (newDnsRecordSet != null) 'newDnsRecordSet': newDnsRecordSet!,
        if (zone != null) 'zone': zone!,
      };
}

/// Configuration controlling usage of a service.
class Usage {
  /// The full resource name of a channel used for sending notifications to the
  /// service producer.
  ///
  /// Google Service Management currently only supports
  /// [Google Cloud Pub/Sub](https://cloud.google.com/pubsub) as a notification
  /// channel. To use Google Cloud Pub/Sub as the channel, this must be the name
  /// of a Cloud Pub/Sub topic that uses the Cloud Pub/Sub topic name format
  /// documented in https://cloud.google.com/pubsub/docs/overview.
  core.String? producerNotificationChannel;

  /// Requirements that must be satisfied before a consumer project can use the
  /// service.
  ///
  /// Each requirement is of the form /; for example
  /// 'serviceusage.googleapis.com/billing-enabled'. For Google APIs, a Terms of
  /// Service requirement must be included here. Google Cloud APIs must include
  /// "serviceusage.googleapis.com/tos/cloud". Other Google APIs should include
  /// "serviceusage.googleapis.com/tos/universal". Additional ToS can be
  /// included based on the business needs.
  core.List<core.String>? requirements;

  /// A list of usage rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<UsageRule>? rules;

  Usage({
    this.producerNotificationChannel,
    this.requirements,
    this.rules,
  });

  Usage.fromJson(core.Map _json)
      : this(
          producerNotificationChannel:
              _json.containsKey('producerNotificationChannel')
                  ? _json['producerNotificationChannel'] as core.String
                  : null,
          requirements: _json.containsKey('requirements')
              ? (_json['requirements'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => UsageRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (producerNotificationChannel != null)
          'producerNotificationChannel': producerNotificationChannel!,
        if (requirements != null) 'requirements': requirements!,
        if (rules != null) 'rules': rules!,
      };
}

/// Usage configuration rules for the service.
///
/// NOTE: Under development. Use this rule to configure unregistered calls for
/// the service. Unregistered calls are calls that do not contain consumer
/// project identity. (Example: calls that do not contain an API key). By
/// default, API methods do not allow unregistered calls, and each method call
/// must be identified by a consumer project identity. Use this rule to
/// allow/disallow unregistered calls. Example of an API that wants to allow
/// unregistered calls for entire service. usage: rules: - selector: "*"
/// allow_unregistered_calls: true Example of a method that wants to allow
/// unregistered calls. usage: rules: - selector:
/// "google.example.library.v1.LibraryService.CreateBook"
/// allow_unregistered_calls: true
typedef UsageRule = $UsageRule;

class ValidateConsumerConfigRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is a project number, as in '12345' {network} is network name.
  ///
  /// Required.
  core.String? consumerNetwork;

  /// NETWORK_NOT_IN_CONSUMERS_PROJECT, NETWORK_NOT_IN_CONSUMERS_HOST_PROJECT,
  /// and HOST_PROJECT_NOT_FOUND are done when consumer_project is provided.
  ConsumerProject? consumerProject;

  /// RANGES_EXHAUSTED, RANGES_EXHAUSTED, and RANGES_DELETED_LATER are done when
  /// range_reservation is provided.
  RangeReservation? rangeReservation;

  /// The validations will be performed in the order listed in the
  /// ValidationError enum.
  ///
  /// The first failure will return. If a validation is not requested, then the
  /// next one will be performed. SERVICE_NETWORKING_NOT_ENABLED and
  /// NETWORK_NOT_PEERED checks are performed for all requests where validation
  /// is requested. NETWORK_NOT_FOUND and NETWORK_DISCONNECTED checks are done
  /// for requests that have validate_network set to true.
  core.bool? validateNetwork;

  ValidateConsumerConfigRequest({
    this.consumerNetwork,
    this.consumerProject,
    this.rangeReservation,
    this.validateNetwork,
  });

  ValidateConsumerConfigRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
          consumerProject: _json.containsKey('consumerProject')
              ? ConsumerProject.fromJson(_json['consumerProject']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rangeReservation: _json.containsKey('rangeReservation')
              ? RangeReservation.fromJson(_json['rangeReservation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          validateNetwork: _json.containsKey('validateNetwork')
              ? _json['validateNetwork'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
        if (consumerProject != null) 'consumerProject': consumerProject!,
        if (rangeReservation != null) 'rangeReservation': rangeReservation!,
        if (validateNetwork != null) 'validateNetwork': validateNetwork!,
      };
}

class ValidateConsumerConfigResponse {
  /// List of subnetwork candidates from the request which exist with the
  /// `ip_cidr_range`, `secondary_ip_cider_ranges`, and `outside_allocation`
  /// fields set.
  core.List<Subnetwork>? existingSubnetworkCandidates;

  /// Indicates whether all the requested validations passed.
  core.bool? isValid;

  /// The first validation which failed.
  /// Possible string values are:
  /// - "VALIDATION_ERROR_UNSPECIFIED"
  /// - "VALIDATION_NOT_REQUESTED" : In case none of the validations are
  /// requested.
  /// - "SERVICE_NETWORKING_NOT_ENABLED"
  /// - "NETWORK_NOT_FOUND" : The network provided by the consumer does not
  /// exist.
  /// - "NETWORK_NOT_PEERED" : The network has not been peered with the producer
  /// org.
  /// - "NETWORK_PEERING_DELETED" : The peering was created and later deleted.
  /// - "NETWORK_NOT_IN_CONSUMERS_PROJECT" : The network is a regular VPC but
  /// the network is not in the consumer's project.
  /// - "NETWORK_NOT_IN_CONSUMERS_HOST_PROJECT" : The consumer project is a
  /// service project, and network is a shared VPC, but the network is not in
  /// the host project of this consumer project.
  /// - "HOST_PROJECT_NOT_FOUND" : The host project associated with the consumer
  /// project was not found.
  /// - "CONSUMER_PROJECT_NOT_SERVICE_PROJECT" : The consumer project is not a
  /// service project for the specified host project.
  /// - "RANGES_EXHAUSTED" : The reserved IP ranges do not have enough space to
  /// create a subnet of desired size.
  /// - "RANGES_NOT_RESERVED" : The IP ranges were not reserved.
  /// - "RANGES_DELETED_LATER" : The IP ranges were reserved but deleted later.
  /// - "COMPUTE_API_NOT_ENABLED" : The consumer project does not have the
  /// compute api enabled.
  core.String? validationError;

  ValidateConsumerConfigResponse({
    this.existingSubnetworkCandidates,
    this.isValid,
    this.validationError,
  });

  ValidateConsumerConfigResponse.fromJson(core.Map _json)
      : this(
          existingSubnetworkCandidates:
              _json.containsKey('existingSubnetworkCandidates')
                  ? (_json['existingSubnetworkCandidates'] as core.List)
                      .map((value) => Subnetwork.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          isValid: _json.containsKey('isValid')
              ? _json['isValid'] as core.bool
              : null,
          validationError: _json.containsKey('validationError')
              ? _json['validationError'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (existingSubnetworkCandidates != null)
          'existingSubnetworkCandidates': existingSubnetworkCandidates!,
        if (isValid != null) 'isValid': isValid!,
        if (validationError != null) 'validationError': validationError!,
      };
}
