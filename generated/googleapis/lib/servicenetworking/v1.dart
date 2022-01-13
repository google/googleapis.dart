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
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
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

  ServiceNetworkingApi(http.Client client,
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
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

  /// Defines the purpose field of the subnet, e.g. 'PRIVATE_SERVICE_CONNECT'.
  ///
  /// For information about the purposes that can be set using this field, see
  /// [subnetwork](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks)
  /// in the Compute API documentation.
  ///
  /// Optional.
  core.String? purpose;

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
    this.purpose,
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
          purpose: _json.containsKey('purpose')
              ? _json['purpose'] as core.String
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
        if (purpose != null) 'purpose': purpose!,
        if (region != null) 'region': region!,
        if (requestedAddress != null) 'requestedAddress': requestedAddress!,
        if (requestedRanges != null) 'requestedRanges': requestedRanges!,
        if (secondaryIpRangeSpecs != null)
          'secondaryIpRangeSpecs': secondaryIpRangeSpecs!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (subnetworkUsers != null) 'subnetworkUsers': subnetworkUsers!,
      };
}

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

class ValidateConsumerConfigRequest {
  /// The IAM permission check determines whether the consumer project has
  /// 'servicenetworking.services.use' permission or not.
  ///
  /// Optional.
  core.bool? checkServiceNetworkingUsePermission;

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
    this.checkServiceNetworkingUsePermission,
    this.consumerNetwork,
    this.consumerProject,
    this.rangeReservation,
    this.validateNetwork,
  });

  ValidateConsumerConfigRequest.fromJson(core.Map _json)
      : this(
          checkServiceNetworkingUsePermission:
              _json.containsKey('checkServiceNetworkingUsePermission')
                  ? _json['checkServiceNetworkingUsePermission'] as core.bool
                  : null,
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
        if (checkServiceNetworkingUsePermission != null)
          'checkServiceNetworkingUsePermission':
              checkServiceNetworkingUsePermission!,
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
  /// - "USE_PERMISSION_NOT_FOUND" : The consumer project does not have the
  /// permission from the host project.
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
