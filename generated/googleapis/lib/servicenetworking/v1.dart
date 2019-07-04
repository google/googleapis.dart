// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.servicenetworking.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http_1;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client servicenetworking/v1';

/// Provides automatic management of network configurations necessary for
/// certain services.
class ServicenetworkingApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Manage your Google API service configuration
  static const ServiceManagementScope =
      "https://www.googleapis.com/auth/service.management";

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ServicesResourceApi get services => new ServicesResourceApi(_requester);

  ServicenetworkingApi(http_1.Client client,
      {core.String rootUrl = "https://servicenetworking.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.  The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed.  If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
  /// Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with
  /// an Operation.error value with a google.rpc.Status.code of 1,
  /// corresponding to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^operations/.+$".
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
  async.Future<Empty> cancel(CancelOperationRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^operations/.+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/[^/]+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^operations$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
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
  async.Future<ListOperationsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

class ServicesResourceApi {
  final commons.ApiRequester _requester;

  ServicesConnectionsResourceApi get connections =>
      new ServicesConnectionsResourceApi(_requester);

  ServicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// For service producers, provisions a new subnet in a
  /// peered service's shared VPC network in the requested region and with the
  /// requested size that's expressed as a CIDR range (number of leading bits of
  /// ipV4 network mask). The method checks against the assigned allocated
  /// ranges
  /// to find a non-conflicting IP address range. The method will reuse a subnet
  /// if subsequent calls contain the same subnet name, region, and prefix
  /// length. This method will make producer's tenant project to be a shared VPC
  /// service project as needed. The response from the `get` operation will be
  /// of
  /// type `Subnetwork` if the operation successfully completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A tenant project in the service producer
  /// organization, in the
  /// following format: services/{service}/{collection-id}/{resource-id}.
  /// {collection-id} is the cloud resource collection type that represents the
  /// tenant project. Only `projects` are supported.
  /// {resource-id} is the tenant project numeric id, such as
  /// `123456`. {service} the name of the peering service, such as
  /// `service-peering.example.com`. This service must already be
  /// enabled in the service consumer's project.
  /// Value must have pattern "^services/[^/]+/[^/]+/[^/]+$".
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
      AddSubnetworkRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':addSubnetwork';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Service producers can use this method to find a currently unused range
  /// within consumer allocated ranges.   This returned range is not reserved,
  /// and not guaranteed to remain unused.
  /// It will validate previously provided allocated ranges, find
  /// non-conflicting sub-range of requested size (expressed in
  /// number of leading bits of ipv4 network mask, as in CIDR range
  /// notation).
  /// Operation<response: Range>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. This is in a form services/{service}.
  /// {service} the name of the private access management service, for example
  /// 'service-peering.example.com'.
  /// Value must have pattern "^services/[^/]+$".
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
      SearchRangeRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':searchRange';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ServicesConnectionsResourceApi {
  final commons.ApiRequester _requester;

  ServicesConnectionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a private connection that establishes a VPC Network Peering
  /// connection to a VPC network in the service producer's organization.
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
  /// producer's
  /// organization. For Google services that support this functionality, this
  /// value is `services/servicenetworking.googleapis.com`.
  /// Value must have pattern "^services/[^/]+$".
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
  async.Future<Operation> create(Connection request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/connections';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// List the private connections that are configured in a service consumer's
  /// VPC network.
  ///
  /// Request parameters:
  ///
  /// [parent] - The service that is managing peering connectivity for a service
  /// producer's
  /// organization. For Google services that support this functionality, this
  /// value is `services/servicenetworking.googleapis.com`.
  /// If you specify `services/-` as the parameter value, all configured peering
  /// services are listed.
  /// Value must have pattern "^services/[^/]+$".
  ///
  /// [network] - The name of service consumer's VPC network that's connected
  /// with service
  /// producer network through a private connection. The network name must be in
  /// the following format:
  /// `projects/{project}/global/networks/{network}`. {project} is a
  /// project number, such as in `12345` that includes the VPC service
  /// consumer's VPC network. {network} is the name of the service consumer's
  /// VPC
  /// network.
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
  async.Future<ListConnectionsResponse> list(core.String parent,
      {core.String network, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (network != null) {
      _queryParams["network"] = [network];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/connections';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListConnectionsResponse.fromJson(data));
  }

  /// Updates the allocated ranges that are assigned to a connection.
  /// The response from the `get` operation will be of type `Connection` if the
  /// operation successfully completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The private service connection that connects to a service
  /// producer
  /// organization. The name includes both the private service name and the VPC
  /// network peering name in the format of
  /// `services/{peering_service_name}/connections/{vpc_peering_name}`. For
  /// Google services that support this functionality, this is
  /// `services/servicenetworking.googleapis.com/connections/servicenetworking-googleapis-com`.
  /// Value must have pattern "^services/[^/]+/connections/[^/]+$".
  ///
  /// [updateMask] - The update mask. If this is omitted, it defaults to "*".
  /// You can only
  /// update the listed peering ranges.
  ///
  /// [force] - If a previously defined allocated range is removed, force flag
  /// must be
  /// set to true.
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
  async.Future<Operation> patch(Connection request, core.String name,
      {core.String updateMask, core.bool force, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if (force != null) {
      _queryParams["force"] = ["${force}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

/// Request to create a subnetwork in a previously peered service network.
class AddSubnetworkRequest {
  /// Required. A resource that represents the service consumer, such as
  /// `projects/123456`. The project number can be different from the
  /// value in the consumer network parameter. For example, the network might be
  /// part of a Shared VPC network. In those cases, Service Networking validates
  /// that this resource belongs to that Shared VPC.
  core.String consumer;

  /// Required. The name of the service consumer's VPC network. The network
  /// must have an existing private connection that was provisioned through the
  /// connections.create method. The name must be in the following format:
  /// `projects/{project}/global/networks/{network}`, where {project}
  /// is a project number, such as `12345`. {network} is the name of a
  /// VPC network in the project.
  core.String consumerNetwork;

  /// An optional description of the subnet.
  core.String description;

  /// Required. The prefix length of the subnet's IP address range.  Use CIDR
  /// range notation, such as `30` to provision a subnet with an
  /// `x.x.x.x/30` CIDR range. The IP address range is drawn from a
  /// pool of available ranges in the service consumer's allocated range.
  core.int ipPrefixLength;

  /// Required. The name of a [region](/compute/docs/regions-zones)
  /// for the subnet, such `europe-west1`.
  core.String region;

  /// Optional. The starting address of a range. The address must be a valid
  /// IPv4 address in the x.x.x.x format. This value combined with the IP prefix
  /// range is the CIDR range for the subnet. The range must be within the
  /// allocated range that is assigned to the private connection. If the CIDR
  /// range isn't available, the call fails.
  core.String requestedAddress;

  /// Required. A name for the new subnet. For information about the naming
  /// requirements, see
  /// [subnetwork](/compute/docs/reference/rest/v1/subnetworks)
  /// in the Compute API documentation.
  core.String subnetwork;

  /// A list of members that are granted the `compute.networkUser`
  /// role on the subnet.
  core.List<core.String> subnetworkUsers;

  AddSubnetworkRequest();

  AddSubnetworkRequest.fromJson(core.Map _json) {
    if (_json.containsKey("consumer")) {
      consumer = _json["consumer"];
    }
    if (_json.containsKey("consumerNetwork")) {
      consumerNetwork = _json["consumerNetwork"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("ipPrefixLength")) {
      ipPrefixLength = _json["ipPrefixLength"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("requestedAddress")) {
      requestedAddress = _json["requestedAddress"];
    }
    if (_json.containsKey("subnetwork")) {
      subnetwork = _json["subnetwork"];
    }
    if (_json.containsKey("subnetworkUsers")) {
      subnetworkUsers =
          (_json["subnetworkUsers"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumer != null) {
      _json["consumer"] = consumer;
    }
    if (consumerNetwork != null) {
      _json["consumerNetwork"] = consumerNetwork;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (ipPrefixLength != null) {
      _json["ipPrefixLength"] = ipPrefixLength;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (requestedAddress != null) {
      _json["requestedAddress"] = requestedAddress;
    }
    if (subnetwork != null) {
      _json["subnetwork"] = subnetwork;
    }
    if (subnetworkUsers != null) {
      _json["subnetworkUsers"] = subnetworkUsers;
    }
    return _json;
  }
}

/// Api is a light-weight descriptor for an API Interface.
///
/// Interfaces are also described as "protocol buffer services" in some
/// contexts,
/// such as by the "service" keyword in a .proto file, but they are different
/// from API Services, which represent a concrete implementation of an interface
/// as opposed to simply a description of methods and bindings. They are also
/// sometimes simply referred to as "APIs" in other contexts, such as the name
/// of
/// this message itself. See https://cloud.google.com/apis/design/glossary for
/// detailed terminology.
class Api {
  /// The methods of this interface, in unspecified order.
  core.List<Method> methods;

  /// Included interfaces. See Mixin.
  core.List<Mixin> mixins;

  /// The fully qualified name of this interface, including package name
  /// followed by the interface's simple name.
  core.String name;

  /// Any metadata attached to the interface.
  core.List<Option> options;

  /// Source context for the protocol buffer service represented by this
  /// message.
  SourceContext sourceContext;

  /// The source syntax of the service.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String syntax;

  /// A version string for this interface. If specified, must have the form
  /// `major-version.minor-version`, as in `1.10`. If the minor version is
  /// omitted, it defaults to zero. If the entire version field is empty, the
  /// major version is derived from the package name, as outlined below. If the
  /// field is not empty, the version in the package name will be verified to be
  /// consistent with what is provided here.
  ///
  /// The versioning schema uses [semantic
  /// versioning](http://semver.org) where the major version number
  /// indicates a breaking change and the minor version an additive,
  /// non-breaking change. Both version numbers are signals to users
  /// what to expect from different versions, and should be carefully
  /// chosen based on the product plan.
  ///
  /// The major version is also reflected in the package name of the
  /// interface, which must end in `v<major-version>`, as in
  /// `google.feature.v1`. For major versions 0 and 1, the suffix can
  /// be omitted. Zero major versions must only be used for
  /// experimental, non-GA interfaces.
  core.String version;

  Api();

  Api.fromJson(core.Map _json) {
    if (_json.containsKey("methods")) {
      methods = (_json["methods"] as core.List)
          .map<Method>((value) => new Method.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mixins")) {
      mixins = (_json["mixins"] as core.List)
          .map<Mixin>((value) => new Mixin.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sourceContext")) {
      sourceContext = new SourceContext.fromJson(_json["sourceContext"]);
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (methods != null) {
      _json["methods"] = methods.map((value) => (value).toJson()).toList();
    }
    if (mixins != null) {
      _json["mixins"] = mixins.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (sourceContext != null) {
      _json["sourceContext"] = (sourceContext).toJson();
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Configuration for an authentication provider, including support for
/// [JSON Web Token
/// (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
class AuthProvider {
  /// The list of JWT
  /// [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
  /// that are allowed to access. A JWT containing any of these audiences will
  /// be accepted. When this setting is absent, only JWTs with audience
  /// "https://Service_name/API_name"
  /// will be accepted. For example, if no audiences are in the setting,
  /// LibraryService API will only accept JWTs with the following audience
  /// "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
  ///
  /// Example:
  ///
  ///     audiences: bookstore_android.apps.googleusercontent.com,
  ///                bookstore_web.apps.googleusercontent.com
  core.String audiences;

  /// Redirect URL if JWT token is required but not present or is expired.
  /// Implement authorizationUrl of securityDefinitions in OpenAPI spec.
  core.String authorizationUrl;

  /// The unique identifier of the auth provider. It will be referred to by
  /// `AuthRequirement.provider_id`.
  ///
  /// Example: "bookstore_auth".
  core.String id;

  /// Identifies the principal that issued the JWT. See
  /// https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1
  /// Usually a URL or an email address.
  ///
  /// Example: https://securetoken.google.com
  /// Example: 1234567-compute@developer.gserviceaccount.com
  core.String issuer;

  /// URL of the provider's public key set to validate signature of the JWT. See
  /// [OpenID
  /// Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata).
  /// Optional if the key set document:
  ///  - can be retrieved from
  ///    [OpenID
  /// Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html of
  ///    the issuer.
  ///  - can be inferred from the email domain of the issuer (e.g. a Google
  ///  service account).
  ///
  /// Example: https://www.googleapis.com/oauth2/v1/certs
  core.String jwksUri;

  AuthProvider();

  AuthProvider.fromJson(core.Map _json) {
    if (_json.containsKey("audiences")) {
      audiences = _json["audiences"];
    }
    if (_json.containsKey("authorizationUrl")) {
      authorizationUrl = _json["authorizationUrl"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("issuer")) {
      issuer = _json["issuer"];
    }
    if (_json.containsKey("jwksUri")) {
      jwksUri = _json["jwksUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audiences != null) {
      _json["audiences"] = audiences;
    }
    if (authorizationUrl != null) {
      _json["authorizationUrl"] = authorizationUrl;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (issuer != null) {
      _json["issuer"] = issuer;
    }
    if (jwksUri != null) {
      _json["jwksUri"] = jwksUri;
    }
    return _json;
  }
}

/// User-defined authentication requirements, including support for
/// [JSON Web Token
/// (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
class AuthRequirement {
  /// NOTE: This will be deprecated soon, once AuthProvider.audiences is
  /// implemented and accepted in all the runtime components.
  ///
  /// The list of JWT
  /// [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
  /// that are allowed to access. A JWT containing any of these audiences will
  /// be accepted. When this setting is absent, only JWTs with audience
  /// "https://Service_name/API_name"
  /// will be accepted. For example, if no audiences are in the setting,
  /// LibraryService API will only accept JWTs with the following audience
  /// "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
  ///
  /// Example:
  ///
  ///     audiences: bookstore_android.apps.googleusercontent.com,
  ///                bookstore_web.apps.googleusercontent.com
  core.String audiences;

  /// id from authentication provider.
  ///
  /// Example:
  ///
  ///     provider_id: bookstore_auth
  core.String providerId;

  AuthRequirement();

  AuthRequirement.fromJson(core.Map _json) {
    if (_json.containsKey("audiences")) {
      audiences = _json["audiences"];
    }
    if (_json.containsKey("providerId")) {
      providerId = _json["providerId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audiences != null) {
      _json["audiences"] = audiences;
    }
    if (providerId != null) {
      _json["providerId"] = providerId;
    }
    return _json;
  }
}

/// `Authentication` defines the authentication configuration for an API.
///
/// Example for an API targeted for external use:
///
///     name: calendar.googleapis.com
///     authentication:
///       providers:
///       - id: google_calendar_auth
///         jwks_uri: https://www.googleapis.com/oauth2/v1/certs
///         issuer: https://securetoken.google.com
///       rules:
///       - selector: "*"
///         requirements:
///           provider_id: google_calendar_auth
class Authentication {
  /// Defines a set of authentication providers that a service supports.
  core.List<AuthProvider> providers;

  /// A list of authentication rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<AuthenticationRule> rules;

  Authentication();

  Authentication.fromJson(core.Map _json) {
    if (_json.containsKey("providers")) {
      providers = (_json["providers"] as core.List)
          .map<AuthProvider>((value) => new AuthProvider.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<AuthenticationRule>(
              (value) => new AuthenticationRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (providers != null) {
      _json["providers"] = providers.map((value) => (value).toJson()).toList();
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Authentication rules for the service.
///
/// By default, if a method has any authentication requirements, every request
/// must include a valid credential matching one of the requirements.
/// It's an error to include more than one kind of credential in a single
/// request.
///
/// If a method doesn't have any auth requirements, request credentials will be
/// ignored.
class AuthenticationRule {
  /// If true, the service accepts API keys without any other credential.
  core.bool allowWithoutCredential;

  /// The requirements for OAuth credentials.
  OAuthRequirements oauth;

  /// Requirements for additional authentication providers.
  core.List<AuthRequirement> requirements;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  AuthenticationRule();

  AuthenticationRule.fromJson(core.Map _json) {
    if (_json.containsKey("allowWithoutCredential")) {
      allowWithoutCredential = _json["allowWithoutCredential"];
    }
    if (_json.containsKey("oauth")) {
      oauth = new OAuthRequirements.fromJson(_json["oauth"]);
    }
    if (_json.containsKey("requirements")) {
      requirements = (_json["requirements"] as core.List)
          .map<AuthRequirement>((value) => new AuthRequirement.fromJson(value))
          .toList();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowWithoutCredential != null) {
      _json["allowWithoutCredential"] = allowWithoutCredential;
    }
    if (oauth != null) {
      _json["oauth"] = (oauth).toJson();
    }
    if (requirements != null) {
      _json["requirements"] =
          requirements.map((value) => (value).toJson()).toList();
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// `Backend` defines the backend configuration for a service.
class Backend {
  /// A list of API backend rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<BackendRule> rules;

  Backend();

  Backend.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<BackendRule>((value) => new BackendRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A backend rule provides configuration for an individual API element.
class BackendRule {
  /// The address of the API backend.
  core.String address;

  /// The number of seconds to wait for a response from a request.  The default
  /// deadline for gRPC is infinite (no deadline) and HTTP requests is 5
  /// seconds.
  core.double deadline;

  /// The JWT audience is used when generating a JWT id token for the backend.
  core.String jwtAudience;

  /// Minimum deadline in seconds needed for this method. Calls having deadline
  /// value lower than this will be rejected.
  core.double minDeadline;

  /// The number of seconds to wait for the completion of a long running
  /// operation. The default is no deadline.
  core.double operationDeadline;

  ///
  /// Possible string values are:
  /// - "PATH_TRANSLATION_UNSPECIFIED"
  /// - "CONSTANT_ADDRESS" : Use the backend address as-is, with no modification
  /// to the path. If the
  /// URL pattern contains variables, the variable names and values will be
  /// appended to the query string. If a query string parameter and a URL
  /// pattern variable have the same name, this may result in duplicate keys in
  /// the query string.
  ///
  /// # Examples
  ///
  /// Given the following operation config:
  ///
  ///     Method path:        /api/company/{cid}/user/{uid}
  ///     Backend address:    https://example.cloudfunctions.net/getUser
  ///
  /// Requests to the following request paths will call the backend at the
  /// translated path:
  ///
  ///     Request path: /api/company/widgetworks/user/johndoe
  ///     Translated:
  /// https://example.cloudfunctions.net/getUser?cid=widgetworks&uid=johndoe
  ///
  ///     Request path: /api/company/widgetworks/user/johndoe?timezone=EST
  ///     Translated:
  /// https://example.cloudfunctions.net/getUser?timezone=EST&cid=widgetworks&uid=johndoe
  /// - "APPEND_PATH_TO_ADDRESS" : The request path will be appended to the
  /// backend address.
  ///
  /// # Examples
  ///
  /// Given the following operation config:
  ///
  ///     Method path:        /api/company/{cid}/user/{uid}
  ///     Backend address:    https://example.appspot.com
  ///
  /// Requests to the following request paths will call the backend at the
  /// translated path:
  ///
  ///     Request path: /api/company/widgetworks/user/johndoe
  ///     Translated:
  ///     https://example.appspot.com/api/company/widgetworks/user/johndoe
  ///
  ///     Request path: /api/company/widgetworks/user/johndoe?timezone=EST
  ///     Translated:
  /// https://example.appspot.com/api/company/widgetworks/user/johndoe?timezone=EST
  core.String pathTranslation;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  BackendRule();

  BackendRule.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("deadline")) {
      deadline = _json["deadline"].toDouble();
    }
    if (_json.containsKey("jwtAudience")) {
      jwtAudience = _json["jwtAudience"];
    }
    if (_json.containsKey("minDeadline")) {
      minDeadline = _json["minDeadline"].toDouble();
    }
    if (_json.containsKey("operationDeadline")) {
      operationDeadline = _json["operationDeadline"].toDouble();
    }
    if (_json.containsKey("pathTranslation")) {
      pathTranslation = _json["pathTranslation"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (deadline != null) {
      _json["deadline"] = deadline;
    }
    if (jwtAudience != null) {
      _json["jwtAudience"] = jwtAudience;
    }
    if (minDeadline != null) {
      _json["minDeadline"] = minDeadline;
    }
    if (operationDeadline != null) {
      _json["operationDeadline"] = operationDeadline;
    }
    if (pathTranslation != null) {
      _json["pathTranslation"] = pathTranslation;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// Billing related configuration of the service.
///
/// The following example shows how to configure monitored resources and metrics
/// for billing:
///
///     monitored_resources:
///     - type: library.googleapis.com/branch
///       labels:
///       - key: /city
///         description: The city where the library branch is located in.
///       - key: /name
///         description: The name of the branch.
///     metrics:
///     - name: library.googleapis.com/book/borrowed_count
///       metric_kind: DELTA
///       value_type: INT64
///     billing:
///       consumer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         metrics:
///         - library.googleapis.com/book/borrowed_count
class Billing {
  /// Billing configurations for sending metrics to the consumer project.
  /// There can be multiple consumer destinations per service, each one must
  /// have
  /// a different monitored resource type. A metric can be used in at most
  /// one consumer destination.
  core.List<BillingDestination> consumerDestinations;

  Billing();

  Billing.fromJson(core.Map _json) {
    if (_json.containsKey("consumerDestinations")) {
      consumerDestinations = (_json["consumerDestinations"] as core.List)
          .map<BillingDestination>(
              (value) => new BillingDestination.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerDestinations != null) {
      _json["consumerDestinations"] =
          consumerDestinations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Configuration of a specific billing destination (Currently only support
/// bill against consumer project).
class BillingDestination {
  /// Names of the metrics to report to this billing destination.
  /// Each name must be defined in Service.metrics section.
  core.List<core.String> metrics;

  /// The monitored resource type. The type must be defined in
  /// Service.monitored_resources section.
  core.String monitoredResource;

  BillingDestination();

  BillingDestination.fromJson(core.Map _json) {
    if (_json.containsKey("metrics")) {
      metrics = (_json["metrics"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("monitoredResource")) {
      monitoredResource = _json["monitoredResource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metrics != null) {
      _json["metrics"] = metrics;
    }
    if (monitoredResource != null) {
      _json["monitoredResource"] = monitoredResource;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Represents a private connection resource. A private connection is
/// implemented
/// as a VPC Network Peering connection between a service producer's VPC network
/// and a service consumer's VPC network.
class Connection {
  /// The name of service consumer's VPC network that's connected with service
  /// producer network, in the following format:
  /// `projects/{project}/global/networks/{network}`.
  /// `{project}` is a project number, such as in `12345` that includes
  /// the VPC service consumer's VPC network. `{network}` is the name of the
  /// service consumer's VPC network.
  core.String network;

  /// Output only.
  /// The name of the VPC Network Peering connection that was created by the
  /// service producer.
  core.String peering;

  /// The name of one or more allocated IP address ranges for this service
  /// producer of type `PEERING`.
  /// Note that invoking CreateConnection method with a different range when
  /// connection is already established will not modify already provisioned
  /// service producer subnetworks.
  /// If CreateConnection method is invoked repeatedly to reconnect when peering
  /// connection had been disconnected on the consumer side, leaving this field
  /// empty will restore previously allocated IP ranges.
  core.List<core.String> reservedPeeringRanges;

  /// Output only.
  /// The name of the peering service that's associated with this connection, in
  /// the following format: `services/{service name}`.
  core.String service;

  Connection();

  Connection.fromJson(core.Map _json) {
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("peering")) {
      peering = _json["peering"];
    }
    if (_json.containsKey("reservedPeeringRanges")) {
      reservedPeeringRanges =
          (_json["reservedPeeringRanges"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (network != null) {
      _json["network"] = network;
    }
    if (peering != null) {
      _json["peering"] = peering;
    }
    if (reservedPeeringRanges != null) {
      _json["reservedPeeringRanges"] = reservedPeeringRanges;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// `Context` defines which contexts an API requests.
///
/// Example:
///
///     context:
///       rules:
///       - selector: "*"
///         requested:
///         - google.rpc.context.ProjectContext
///         - google.rpc.context.OriginContext
///
/// The above specifies that all methods in the API request
/// `google.rpc.context.ProjectContext` and
/// `google.rpc.context.OriginContext`.
///
/// Available context types are defined in package
/// `google.rpc.context`.
///
/// This also provides mechanism to whitelist any protobuf message extension
/// that
/// can be sent in grpc metadata using “x-goog-ext-<extension_id>-bin” and
/// “x-goog-ext-<extension_id>-jspb” format. For example, list any service
/// specific protobuf types that can appear in grpc metadata as follows in your
/// yaml file:
///
/// Example:
///
///     context:
///       rules:
///        - selector: "google.example.library.v1.LibraryService.CreateBook"
///          allowed_request_extensions:
///          - google.foo.v1.NewExtension
///          allowed_response_extensions:
///          - google.foo.v1.NewExtension
///
/// You can also specify extension ID instead of fully qualified extension name
/// here.
class Context {
  /// A list of RPC context rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<ContextRule> rules;

  Context();

  Context.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<ContextRule>((value) => new ContextRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A context rule provides information about the context for an individual API
/// element.
class ContextRule {
  /// A list of full type names or extension IDs of extensions allowed in grpc
  /// side channel from client to backend.
  core.List<core.String> allowedRequestExtensions;

  /// A list of full type names or extension IDs of extensions allowed in grpc
  /// side channel from backend to client.
  core.List<core.String> allowedResponseExtensions;

  /// A list of full type names of provided contexts.
  core.List<core.String> provided;

  /// A list of full type names of requested contexts.
  core.List<core.String> requested;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  ContextRule();

  ContextRule.fromJson(core.Map _json) {
    if (_json.containsKey("allowedRequestExtensions")) {
      allowedRequestExtensions =
          (_json["allowedRequestExtensions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("allowedResponseExtensions")) {
      allowedResponseExtensions =
          (_json["allowedResponseExtensions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("provided")) {
      provided = (_json["provided"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("requested")) {
      requested = (_json["requested"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowedRequestExtensions != null) {
      _json["allowedRequestExtensions"] = allowedRequestExtensions;
    }
    if (allowedResponseExtensions != null) {
      _json["allowedResponseExtensions"] = allowedResponseExtensions;
    }
    if (provided != null) {
      _json["provided"] = provided;
    }
    if (requested != null) {
      _json["requested"] = requested;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// Selects and configures the service controller used by the service.  The
/// service controller handles features like abuse, quota, billing, logging,
/// monitoring, etc.
class Control {
  /// The service control environment to use. If empty, no control plane
  /// feature (like quota and billing) will be enabled.
  core.String environment;

  Control();

  Control.fromJson(core.Map _json) {
    if (_json.containsKey("environment")) {
      environment = _json["environment"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (environment != null) {
      _json["environment"] = environment;
    }
    return _json;
  }
}

/// Customize service error responses.  For example, list any service
/// specific protobuf types that can appear in error detail lists of
/// error responses.
///
/// Example:
///
///     custom_error:
///       types:
///       - google.foo.v1.CustomError
///       - google.foo.v1.AnotherError
class CustomError {
  /// The list of custom error rules that apply to individual API messages.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<CustomErrorRule> rules;

  /// The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.
  core.List<core.String> types;

  CustomError();

  CustomError.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<CustomErrorRule>((value) => new CustomErrorRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("types")) {
      types = (_json["types"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    if (types != null) {
      _json["types"] = types;
    }
    return _json;
  }
}

/// A custom error rule.
class CustomErrorRule {
  /// Mark this message as possible payload in error response.  Otherwise,
  /// objects of this type will be filtered when they appear in error payload.
  core.bool isErrorType;

  /// Selects messages to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  CustomErrorRule();

  CustomErrorRule.fromJson(core.Map _json) {
    if (_json.containsKey("isErrorType")) {
      isErrorType = _json["isErrorType"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isErrorType != null) {
      _json["isErrorType"] = isErrorType;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// A custom pattern is used for defining custom HTTP verb.
class CustomHttpPattern {
  /// The name of this custom HTTP verb.
  core.String kind;

  /// The path matched by this custom verb.
  core.String path;

  CustomHttpPattern();

  CustomHttpPattern.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

/// `Documentation` provides the information for describing a service.
///
/// Example:
/// <pre><code>documentation:
///   summary: >
///     The Google Calendar API gives access
///     to most calendar features.
///   pages:
///   - name: Overview
///     content: &#40;== include google/foo/overview.md ==&#41;
///   - name: Tutorial
///     content: &#40;== include google/foo/tutorial.md ==&#41;
///     subpages;
///     - name: Java
///       content: &#40;== include google/foo/tutorial_java.md ==&#41;
///   rules:
///   - selector: google.calendar.Calendar.Get
///     description: >
///       ...
///   - selector: google.calendar.Calendar.Put
///     description: >
///       ...
/// </code></pre>
/// Documentation is provided in markdown syntax. In addition to
/// standard markdown features, definition lists, tables and fenced
/// code blocks are supported. Section headers can be provided and are
/// interpreted relative to the section nesting of the context where
/// a documentation fragment is embedded.
///
/// Documentation from the IDL is merged with documentation defined
/// via the config at normalization time, where documentation provided
/// by config rules overrides IDL provided.
///
/// A number of constructs specific to the API platform are supported
/// in documentation text.
///
/// In order to reference a proto element, the following
/// notation can be used:
/// <pre><code>&#91;fully.qualified.proto.name]&#91;]</code></pre>
/// To override the display text used for the link, this can be used:
/// <pre><code>&#91;display text]&#91;fully.qualified.proto.name]</code></pre>
/// Text can be excluded from doc using the following notation:
/// <pre><code>&#40;-- internal comment --&#41;</code></pre>
///
/// A few directives are available in documentation. Note that
/// directives must appear on a single line to be properly
/// identified. The `include` directive includes a markdown file from
/// an external source:
/// <pre><code>&#40;== include path/to/file ==&#41;</code></pre>
/// The `resource_for` directive marks a message to be the resource of
/// a collection in REST view. If it is not specified, tools attempt
/// to infer the resource from the operations in a collection:
/// <pre><code>&#40;== resource_for v1.shelves.books ==&#41;</code></pre>
/// The directive `suppress_warning` does not directly affect documentation
/// and is documented together with service config validation.
class Documentation {
  /// The URL to the root of documentation.
  core.String documentationRootUrl;

  /// Declares a single overview page. For example:
  /// <pre><code>documentation:
  ///   summary: ...
  ///   overview: &#40;== include overview.md ==&#41;
  /// </code></pre>
  /// This is a shortcut for the following declaration (using pages style):
  /// <pre><code>documentation:
  ///   summary: ...
  ///   pages:
  ///   - name: Overview
  ///     content: &#40;== include overview.md ==&#41;
  /// </code></pre>
  /// Note: you cannot specify both `overview` field and `pages` field.
  core.String overview;

  /// The top level pages for the documentation set.
  core.List<Page> pages;

  /// A list of documentation rules that apply to individual API elements.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<DocumentationRule> rules;

  /// A short summary of what the service does. Can only be provided by
  /// plain text.
  core.String summary;

  Documentation();

  Documentation.fromJson(core.Map _json) {
    if (_json.containsKey("documentationRootUrl")) {
      documentationRootUrl = _json["documentationRootUrl"];
    }
    if (_json.containsKey("overview")) {
      overview = _json["overview"];
    }
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List)
          .map<Page>((value) => new Page.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<DocumentationRule>(
              (value) => new DocumentationRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("summary")) {
      summary = _json["summary"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (documentationRootUrl != null) {
      _json["documentationRootUrl"] = documentationRootUrl;
    }
    if (overview != null) {
      _json["overview"] = overview;
    }
    if (pages != null) {
      _json["pages"] = pages.map((value) => (value).toJson()).toList();
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    if (summary != null) {
      _json["summary"] = summary;
    }
    return _json;
  }
}

/// A documentation rule provides information about individual API elements.
class DocumentationRule {
  /// Deprecation description of the selected element(s). It can be provided if
  /// an element is marked as `deprecated`.
  core.String deprecationDescription;

  /// Description of the selected API(s).
  core.String description;

  /// The selector is a comma-separated list of patterns. Each pattern is a
  /// qualified name of the element which may end in "*", indicating a wildcard.
  /// Wildcards are only allowed at the end and for a whole component of the
  /// qualified name, i.e. "foo.*" is ok, but not "foo.b*" or "foo.*.bar". A
  /// wildcard will match one or more components. To specify a default for all
  /// applicable elements, the whole pattern "*" is used.
  core.String selector;

  DocumentationRule();

  DocumentationRule.fromJson(core.Map _json) {
    if (_json.containsKey("deprecationDescription")) {
      deprecationDescription = _json["deprecationDescription"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deprecationDescription != null) {
      _json["deprecationDescription"] = deprecationDescription;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// `Endpoint` describes a network endpoint that serves a set of APIs.
/// A service may expose any number of endpoints, and all endpoints share the
/// same service configuration, such as quota configuration and monitoring
/// configuration.
///
/// Example service configuration:
///
///     name: library-example.googleapis.com
///     endpoints:
///       # Below entry makes 'google.example.library.v1.Library'
///       # API be served from endpoint address library-example.googleapis.com.
///       # It also allows HTTP OPTIONS calls to be passed to the backend, for
///       # it to decide whether the subsequent cross-origin request is
///       # allowed to proceed.
///     - name: library-example.googleapis.com
///       allow_cors: true
class Endpoint {
  /// DEPRECATED: This field is no longer supported. Instead of using aliases,
  /// please specify multiple google.api.Endpoint for each of the intended
  /// aliases.
  ///
  /// Additional names that this endpoint will be hosted on.
  core.List<core.String> aliases;

  /// Allowing
  /// [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka
  /// cross-domain traffic, would allow the backends served from this endpoint
  /// to
  /// receive and respond to HTTP OPTIONS requests. The response will be used by
  /// the browser to determine whether the subsequent cross-origin request is
  /// allowed to proceed.
  core.bool allowCors;

  /// The list of features enabled on this endpoint.
  core.List<core.String> features;

  /// The canonical name of this endpoint.
  core.String name;

  /// The specification of an Internet routable address of API frontend that
  /// will
  /// handle requests to this [API
  /// Endpoint](https://cloud.google.com/apis/design/glossary). It should be
  /// either a valid IPv4 address or a fully-qualified domain name. For example,
  /// "8.8.8.8" or "myservice.appspot.com".
  core.String target;

  Endpoint();

  Endpoint.fromJson(core.Map _json) {
    if (_json.containsKey("aliases")) {
      aliases = (_json["aliases"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("allowCors")) {
      allowCors = _json["allowCors"];
    }
    if (_json.containsKey("features")) {
      features = (_json["features"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aliases != null) {
      _json["aliases"] = aliases;
    }
    if (allowCors != null) {
      _json["allowCors"] = allowCors;
    }
    if (features != null) {
      _json["features"] = features;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

/// Enum type definition.
class Enum {
  /// Enum value definitions.
  core.List<EnumValue> enumvalue;

  /// Enum type name.
  core.String name;

  /// Protocol buffer options.
  core.List<Option> options;

  /// The source context.
  SourceContext sourceContext;

  /// The source syntax.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String syntax;

  Enum();

  Enum.fromJson(core.Map _json) {
    if (_json.containsKey("enumvalue")) {
      enumvalue = (_json["enumvalue"] as core.List)
          .map<EnumValue>((value) => new EnumValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sourceContext")) {
      sourceContext = new SourceContext.fromJson(_json["sourceContext"]);
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enumvalue != null) {
      _json["enumvalue"] = enumvalue.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (sourceContext != null) {
      _json["sourceContext"] = (sourceContext).toJson();
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    return _json;
  }
}

/// Enum value definition.
class EnumValue {
  /// Enum value name.
  core.String name;

  /// Enum value number.
  core.int number;

  /// Protocol buffer options.
  core.List<Option> options;

  EnumValue();

  EnumValue.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("number")) {
      number = _json["number"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (number != null) {
      _json["number"] = number;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A single field of a message type.
class Field {
  /// The field cardinality.
  /// Possible string values are:
  /// - "CARDINALITY_UNKNOWN" : For fields with unknown cardinality.
  /// - "CARDINALITY_OPTIONAL" : For optional fields.
  /// - "CARDINALITY_REQUIRED" : For required fields. Proto2 syntax only.
  /// - "CARDINALITY_REPEATED" : For repeated fields.
  core.String cardinality;

  /// The string value of the default value of this field. Proto2 syntax only.
  core.String defaultValue;

  /// The field JSON name.
  core.String jsonName;

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
  core.String kind;

  /// The field name.
  core.String name;

  /// The field number.
  core.int number;

  /// The index of the field type in `Type.oneofs`, for message or enumeration
  /// types. The first type has index 1; zero means the type is not in the list.
  core.int oneofIndex;

  /// The protocol buffer options.
  core.List<Option> options;

  /// Whether to use alternative packed wire representation.
  core.bool packed;

  /// The field type URL, without the scheme, for message or enumeration
  /// types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  core.String typeUrl;

  Field();

  Field.fromJson(core.Map _json) {
    if (_json.containsKey("cardinality")) {
      cardinality = _json["cardinality"];
    }
    if (_json.containsKey("defaultValue")) {
      defaultValue = _json["defaultValue"];
    }
    if (_json.containsKey("jsonName")) {
      jsonName = _json["jsonName"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("number")) {
      number = _json["number"];
    }
    if (_json.containsKey("oneofIndex")) {
      oneofIndex = _json["oneofIndex"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("packed")) {
      packed = _json["packed"];
    }
    if (_json.containsKey("typeUrl")) {
      typeUrl = _json["typeUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cardinality != null) {
      _json["cardinality"] = cardinality;
    }
    if (defaultValue != null) {
      _json["defaultValue"] = defaultValue;
    }
    if (jsonName != null) {
      _json["jsonName"] = jsonName;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (number != null) {
      _json["number"] = number;
    }
    if (oneofIndex != null) {
      _json["oneofIndex"] = oneofIndex;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (packed != null) {
      _json["packed"] = packed;
    }
    if (typeUrl != null) {
      _json["typeUrl"] = typeUrl;
    }
    return _json;
  }
}

/// Represents a subnet that was created or discovered by a private access
/// management service.
class GoogleCloudServicenetworkingV1betaSubnetwork {
  /// Subnetwork CIDR range in `10.x.x.x/y` format.
  core.String ipCidrRange;

  /// Subnetwork name.
  /// See https://cloud.google.com/compute/docs/vpc/
  core.String name;

  /// In the Shared VPC host project, the VPC network that's peered with the
  /// consumer network. For example:
  /// `projects/1234321/global/networks/host-network`
  core.String network;

  /// This is a discovered subnet that is not within the current consumer
  /// allocated ranges.
  core.bool outsideAllocation;

  GoogleCloudServicenetworkingV1betaSubnetwork();

  GoogleCloudServicenetworkingV1betaSubnetwork.fromJson(core.Map _json) {
    if (_json.containsKey("ipCidrRange")) {
      ipCidrRange = _json["ipCidrRange"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("outsideAllocation")) {
      outsideAllocation = _json["outsideAllocation"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipCidrRange != null) {
      _json["ipCidrRange"] = ipCidrRange;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (outsideAllocation != null) {
      _json["outsideAllocation"] = outsideAllocation;
    }
    return _json;
  }
}

/// Defines the HTTP configuration for an API service. It contains a list of
/// HttpRule, each specifying the mapping of an RPC method
/// to one or more HTTP REST API methods.
class Http {
  /// When set to true, URL path parameters will be fully URI-decoded except in
  /// cases of single segment matches in reserved expansion, where "%2F" will be
  /// left encoded.
  ///
  /// The default behavior is to not decode RFC 6570 reserved characters in
  /// multi
  /// segment matches.
  core.bool fullyDecodeReservedExpansion;

  /// A list of HTTP configuration rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<HttpRule> rules;

  Http();

  Http.fromJson(core.Map _json) {
    if (_json.containsKey("fullyDecodeReservedExpansion")) {
      fullyDecodeReservedExpansion = _json["fullyDecodeReservedExpansion"];
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<HttpRule>((value) => new HttpRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullyDecodeReservedExpansion != null) {
      _json["fullyDecodeReservedExpansion"] = fullyDecodeReservedExpansion;
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// # gRPC Transcoding
///
/// gRPC Transcoding is a feature for mapping between a gRPC method and one or
/// more HTTP REST endpoints. It allows developers to build a single API service
/// that supports both gRPC APIs and REST APIs. Many systems, including [Google
/// APIs](https://github.com/googleapis/googleapis),
/// [Cloud Endpoints](https://cloud.google.com/endpoints), [gRPC
/// Gateway](https://github.com/grpc-ecosystem/grpc-gateway),
/// and [Envoy](https://github.com/envoyproxy/envoy) proxy support this feature
/// and use it for large scale production services.
///
/// `HttpRule` defines the schema of the gRPC/REST mapping. The mapping
/// specifies
/// how different portions of the gRPC request message are mapped to the URL
/// path, URL query parameters, and HTTP request body. It also controls how the
/// gRPC response message is mapped to the HTTP response body. `HttpRule` is
/// typically specified as an `google.api.http` annotation on the gRPC method.
///
/// Each mapping specifies a URL path template and an HTTP method. The path
/// template may refer to one or more fields in the gRPC request message, as
/// long
/// as each field is a non-repeated field with a primitive (non-message) type.
/// The path template controls how fields of the request message are mapped to
/// the URL path.
///
/// Example:
///
///     service Messaging {
///       rpc GetMessage(GetMessageRequest) returns (Message) {
///         option (google.api.http) = {
///             get: "/v1/{name=messages / * }"
///         };
///       }
///     }
///     message GetMessageRequest {
///       string name = 1; // Mapped to URL path.
///     }
///     message Message {
///       string text = 1; // The resource content.
///     }
///
/// This enables an HTTP REST to gRPC mapping as below:
///
/// HTTP | gRPC
/// -----|-----
/// `GET /v1/messages/123456`  | `GetMessage(name: "messages/123456")`
///
/// Any fields in the request message which are not bound by the path template
/// automatically become HTTP query parameters if there is no HTTP request body.
/// For example:
///
///     service Messaging {
///       rpc GetMessage(GetMessageRequest) returns (Message) {
///         option (google.api.http) = {
///             get:"/v1/messages/{message_id}"
///         };
///       }
///     }
///     message GetMessageRequest {
///       message SubMessage {
///         string subfield = 1;
///       }
///       string message_id = 1; // Mapped to URL path.
///       int64 revision = 2;    // Mapped to URL query parameter `revision`.
/// SubMessage sub = 3;    // Mapped to URL query parameter `sub.subfield`.
///     }
///
/// This enables a HTTP JSON to RPC mapping as below:
///
/// HTTP | gRPC
/// -----|-----
/// `GET /v1/messages/123456?revision=2&sub.subfield=foo` |
/// `GetMessage(message_id: "123456" revision: 2 sub: SubMessage(subfield:
/// "foo"))`
///
/// Note that fields which are mapped to URL query parameters must have a
/// primitive type or a repeated primitive type or a non-repeated message type.
/// In the case of a repeated type, the parameter can be repeated in the URL
/// as `...?param=A&param=B`. In the case of a message type, each field of the
/// message is mapped to a separate parameter, such as
/// `...?foo.a=A&foo.b=B&foo.c=C`.
///
/// For HTTP methods that allow a request body, the `body` field
/// specifies the mapping. Consider a REST update method on the
/// message resource collection:
///
///     service Messaging {
///       rpc UpdateMessage(UpdateMessageRequest) returns (Message) {
///         option (google.api.http) = {
///           patch: "/v1/messages/{message_id}"
///           body: "message"
///         };
///       }
///     }
///     message UpdateMessageRequest {
///       string message_id = 1; // mapped to the URL
///       Message message = 2;   // mapped to the body
///     }
///
/// The following HTTP JSON to RPC mapping is enabled, where the
/// representation of the JSON in the request body is determined by
/// protos JSON encoding:
///
/// HTTP | gRPC
/// -----|-----
/// `PATCH /v1/messages/123456 { "text": "Hi!" }` | `UpdateMessage(message_id:
/// "123456" message { text: "Hi!" })`
///
/// The special name `*` can be used in the body mapping to define that
/// every field not bound by the path template should be mapped to the
/// request body.  This enables the following alternative definition of
/// the update method:
///
///     service Messaging {
///       rpc UpdateMessage(Message) returns (Message) {
///         option (google.api.http) = {
///           patch: "/v1/messages/{message_id}"
///           body: "*"
///         };
///       }
///     }
///     message Message {
///       string message_id = 1;
///       string text = 2;
///     }
///
///
/// The following HTTP JSON to RPC mapping is enabled:
///
/// HTTP | gRPC
/// -----|-----
/// `PATCH /v1/messages/123456 { "text": "Hi!" }` | `UpdateMessage(message_id:
/// "123456" text: "Hi!")`
///
/// Note that when using `*` in the body mapping, it is not possible to
/// have HTTP parameters, as all fields not bound by the path end in
/// the body. This makes this option more rarely used in practice when
/// defining REST APIs. The common usage of `*` is in custom methods
/// which don't use the URL at all for transferring data.
///
/// It is possible to define multiple HTTP methods for one RPC by using
/// the `additional_bindings` option. Example:
///
///     service Messaging {
///       rpc GetMessage(GetMessageRequest) returns (Message) {
///         option (google.api.http) = {
///           get: "/v1/messages/{message_id}"
///           additional_bindings {
///             get: "/v1/users/{user_id}/messages/{message_id}"
///           }
///         };
///       }
///     }
///     message GetMessageRequest {
///       string message_id = 1;
///       string user_id = 2;
///     }
///
/// This enables the following two alternative HTTP JSON to RPC mappings:
///
/// HTTP | gRPC
/// -----|-----
/// `GET /v1/messages/123456` | `GetMessage(message_id: "123456")`
/// `GET /v1/users/me/messages/123456` | `GetMessage(user_id: "me" message_id:
/// "123456")`
///
/// ## Rules for HTTP mapping
///
/// 1. Leaf request fields (recursive expansion nested messages in the request
///    message) are classified into three categories:
/// - Fields referred by the path template. They are passed via the URL path.
///    - Fields referred by the HttpRule.body. They are passed via the HTTP
///      request body.
///    - All other fields are passed via the URL query parameters, and the
///      parameter name is the field path in the request message. A repeated
///      field can be represented as multiple query parameters under the same
///      name.
///  2. If HttpRule.body is "*", there is no URL query parameter, all fields
///     are passed via URL path and HTTP request body.
///  3. If HttpRule.body is omitted, there is no HTTP request body, all
///     fields are passed via URL path and URL query parameters.
///
/// ### Path template syntax
///
///     Template = "/" Segments [ Verb ] ;
///     Segments = Segment { "/" Segment } ;
///     Segment  = "*" | "**" | LITERAL | Variable ;
///     Variable = "{" FieldPath [ "=" Segments ] "}" ;
///     FieldPath = IDENT { "." IDENT } ;
///     Verb     = ":" LITERAL ;
///
/// The syntax `*` matches a single URL path segment. The syntax `**` matches
/// zero or more URL path segments, which must be the last part of the URL path
/// except the `Verb`.
///
/// The syntax `Variable` matches part of the URL path as specified by its
/// template. A variable template must not contain other variables. If a
/// variable
/// matches a single path segment, its template may be omitted, e.g. `{var}`
/// is equivalent to `{var=*}`.
///
/// The syntax `LITERAL` matches literal text in the URL path. If the `LITERAL`
/// contains any reserved character, such characters should be percent-encoded
/// before the matching.
///
/// If a variable contains exactly one path segment, such as `"{var}"` or
/// `"{var=*}"`, when such a variable is expanded into a URL path on the client
/// side, all characters except `[-_.~0-9a-zA-Z]` are percent-encoded. The
/// server side does the reverse decoding. Such variables show up in the
/// [Discovery
/// Document](https://developers.google.com/discovery/v1/reference/apis) as
/// `{var}`.
///
/// If a variable contains multiple path segments, such as `"{var=foo / * }"`
/// or `"{var=**}"`, when such a variable is expanded into a URL path on the
/// client side, all characters except `[-_.~/0-9a-zA-Z]` are percent-encoded.
/// The server side does the reverse decoding, except "%2F" and "%2f" are left
/// unchanged. Such variables show up in the
/// [Discovery
/// Document](https://developers.google.com/discovery/v1/reference/apis) as
/// `{+var}`.
///
/// ## Using gRPC API Service Configuration
///
/// gRPC API Service Configuration (service config) is a configuration language
/// for configuring a gRPC service to become a user-facing product. The
/// service config is simply the YAML representation of the `google.api.Service`
/// proto message.
///
/// As an alternative to annotating your proto file, you can configure gRPC
/// transcoding in your service config YAML files. You do this by specifying a
/// `HttpRule` that maps the gRPC method to a REST endpoint, achieving the same
/// effect as the proto annotation. This can be particularly useful if you
/// have a proto that is reused in multiple services. Note that any transcoding
/// specified in the service config will override any matching transcoding
/// configuration in the proto.
///
/// Example:
///
///     http:
///       rules:
///         # Selects a gRPC method and applies HttpRule to it.
///         - selector: example.v1.Messaging.GetMessage
///           get: /v1/messages/{message_id}/{sub.subfield}
///
/// ## Special notes
///
/// When gRPC Transcoding is used to map a gRPC to JSON REST endpoints, the
/// proto to JSON conversion must follow the [proto3
/// specification](https://developers.google.com/protocol-buffers/docs/proto3#json).
///
/// While the single segment variable follows the semantics of
/// [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2 Simple String
/// Expansion, the multi segment variable **does not** follow RFC 6570 Section
/// 3.2.3 Reserved Expansion. The reason is that the Reserved Expansion
/// does not expand special characters like `?` and `#`, which would lead
/// to invalid URLs. As the result, gRPC Transcoding uses a custom encoding
/// for multi segment variables.
///
/// The path variables **must not** refer to any repeated or mapped field,
/// because client libraries are not capable of handling such variable
/// expansion.
///
/// The path variables **must not** capture the leading "/" character. The
/// reason
/// is that the most common use case "{var}" does not capture the leading "/"
/// character. For consistency, all path variables must share the same behavior.
///
/// Repeated message fields must not be mapped to URL query parameters, because
/// no client library can support such complicated mapping.
///
/// If an API needs to use a JSON array for request or response body, it can map
/// the request or response body to a repeated field. However, some gRPC
/// Transcoding implementations may not support this feature.
class HttpRule {
  /// Additional HTTP bindings for the selector. Nested bindings must
  /// not contain an `additional_bindings` field themselves (that is,
  /// the nesting may only be one level deep).
  core.List<HttpRule> additionalBindings;

  /// The name of the request field whose value is mapped to the HTTP request
  /// body, or `*` for mapping all request fields not captured by the path
  /// pattern to the HTTP body, or omitted for not having any HTTP request body.
  ///
  /// NOTE: the referred field must be present at the top-level of the request
  /// message type.
  core.String body;

  /// The custom pattern is used for specifying an HTTP method that is not
  /// included in the `pattern` field, such as HEAD, or "*" to leave the
  /// HTTP method unspecified for this rule. The wild-card rule is useful
  /// for services that provide content to Web (HTML) clients.
  CustomHttpPattern custom;

  /// Maps to HTTP DELETE. Used for deleting a resource.
  core.String delete;

  /// Maps to HTTP GET. Used for listing and getting information about
  /// resources.
  core.String get;

  /// Maps to HTTP PATCH. Used for updating a resource.
  core.String patch;

  /// Maps to HTTP POST. Used for creating a resource or performing an action.
  core.String post;

  /// Maps to HTTP PUT. Used for replacing a resource.
  core.String put;

  /// Optional. The name of the response field whose value is mapped to the HTTP
  /// response body. When omitted, the entire response message will be used
  /// as the HTTP response body.
  ///
  /// NOTE: The referred field must be present at the top-level of the response
  /// message type.
  core.String responseBody;

  /// Selects a method to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  HttpRule();

  HttpRule.fromJson(core.Map _json) {
    if (_json.containsKey("additionalBindings")) {
      additionalBindings = (_json["additionalBindings"] as core.List)
          .map<HttpRule>((value) => new HttpRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("custom")) {
      custom = new CustomHttpPattern.fromJson(_json["custom"]);
    }
    if (_json.containsKey("delete")) {
      delete = _json["delete"];
    }
    if (_json.containsKey("get")) {
      get = _json["get"];
    }
    if (_json.containsKey("patch")) {
      patch = _json["patch"];
    }
    if (_json.containsKey("post")) {
      post = _json["post"];
    }
    if (_json.containsKey("put")) {
      put = _json["put"];
    }
    if (_json.containsKey("responseBody")) {
      responseBody = _json["responseBody"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additionalBindings != null) {
      _json["additionalBindings"] =
          additionalBindings.map((value) => (value).toJson()).toList();
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (custom != null) {
      _json["custom"] = (custom).toJson();
    }
    if (delete != null) {
      _json["delete"] = delete;
    }
    if (get != null) {
      _json["get"] = get;
    }
    if (patch != null) {
      _json["patch"] = patch;
    }
    if (post != null) {
      _json["post"] = post;
    }
    if (put != null) {
      _json["put"] = put;
    }
    if (responseBody != null) {
      _json["responseBody"] = responseBody;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// A description of a label.
class LabelDescriptor {
  /// A human-readable description for the label.
  core.String description;

  /// The label key.
  core.String key;

  /// The type of data that can be assigned to the label.
  /// Possible string values are:
  /// - "STRING" : A variable-length string. This is the default.
  /// - "BOOL" : Boolean; true or false.
  /// - "INT64" : A 64-bit signed integer.
  core.String valueType;

  LabelDescriptor();

  LabelDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/// ListConnectionsResponse is the response to list peering states for the
/// given service and consumer project.
class ListConnectionsResponse {
  /// The list of Connections.
  core.List<Connection> connections;

  ListConnectionsResponse();

  ListConnectionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("connections")) {
      connections = (_json["connections"] as core.List)
          .map<Connection>((value) => new Connection.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (connections != null) {
      _json["connections"] =
          connections.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A description of a log type. Example in YAML format:
///
///     - name: library.googleapis.com/activity_history
///       description: The history of borrowing and returning library items.
///       display_name: Activity
///       labels:
///       - key: /customer_id
///         description: Identifier of a library customer
class LogDescriptor {
  /// A human-readable description of this log. This information appears in
  /// the documentation and can contain details.
  core.String description;

  /// The human-readable name for this log. This information appears on
  /// the user interface and should be concise.
  core.String displayName;

  /// The set of labels that are available to describe a specific log entry.
  /// Runtime requests that contain labels not specified here are
  /// considered invalid.
  core.List<LabelDescriptor> labels;

  /// The name of the log. It must be less than 512 characters long and can
  /// include the following characters: upper- and lower-case alphanumeric
  /// characters [A-Za-z0-9], and punctuation characters including
  /// slash, underscore, hyphen, period [/_-.].
  core.String name;

  LogDescriptor();

  LogDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Logging configuration of the service.
///
/// The following example shows how to configure logs to be sent to the
/// producer and consumer projects. In the example, the `activity_history`
/// log is sent to both the producer and consumer projects, whereas the
/// `purchase_history` log is only sent to the producer project.
///
///     monitored_resources:
///     - type: library.googleapis.com/branch
///       labels:
///       - key: /city
///         description: The city where the library branch is located in.
///       - key: /name
///         description: The name of the branch.
///     logs:
///     - name: activity_history
///       labels:
///       - key: /customer_id
///     - name: purchase_history
///     logging:
///       producer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         logs:
///         - activity_history
///         - purchase_history
///       consumer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         logs:
///         - activity_history
class Logging {
  /// Logging configurations for sending logs to the consumer project.
  /// There can be multiple consumer destinations, each one must have a
  /// different monitored resource type. A log can be used in at most
  /// one consumer destination.
  core.List<LoggingDestination> consumerDestinations;

  /// Logging configurations for sending logs to the producer project.
  /// There can be multiple producer destinations, each one must have a
  /// different monitored resource type. A log can be used in at most
  /// one producer destination.
  core.List<LoggingDestination> producerDestinations;

  Logging();

  Logging.fromJson(core.Map _json) {
    if (_json.containsKey("consumerDestinations")) {
      consumerDestinations = (_json["consumerDestinations"] as core.List)
          .map<LoggingDestination>(
              (value) => new LoggingDestination.fromJson(value))
          .toList();
    }
    if (_json.containsKey("producerDestinations")) {
      producerDestinations = (_json["producerDestinations"] as core.List)
          .map<LoggingDestination>(
              (value) => new LoggingDestination.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerDestinations != null) {
      _json["consumerDestinations"] =
          consumerDestinations.map((value) => (value).toJson()).toList();
    }
    if (producerDestinations != null) {
      _json["producerDestinations"] =
          producerDestinations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Configuration of a specific logging destination (the producer project
/// or the consumer project).
class LoggingDestination {
  /// Names of the logs to be sent to this destination. Each name must
  /// be defined in the Service.logs section. If the log name is
  /// not a domain scoped name, it will be automatically prefixed with
  /// the service name followed by "/".
  core.List<core.String> logs;

  /// The monitored resource type. The type must be defined in the
  /// Service.monitored_resources section.
  core.String monitoredResource;

  LoggingDestination();

  LoggingDestination.fromJson(core.Map _json) {
    if (_json.containsKey("logs")) {
      logs = (_json["logs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("monitoredResource")) {
      monitoredResource = _json["monitoredResource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (logs != null) {
      _json["logs"] = logs;
    }
    if (monitoredResource != null) {
      _json["monitoredResource"] = monitoredResource;
    }
    return _json;
  }
}

/// Method represents a method of an API interface.
class Method {
  /// The simple name of this method.
  core.String name;

  /// Any metadata attached to the method.
  core.List<Option> options;

  /// If true, the request is streamed.
  core.bool requestStreaming;

  /// A URL of the input message type.
  core.String requestTypeUrl;

  /// If true, the response is streamed.
  core.bool responseStreaming;

  /// The URL of the output message type.
  core.String responseTypeUrl;

  /// The source syntax of this method.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String syntax;

  Method();

  Method.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("requestStreaming")) {
      requestStreaming = _json["requestStreaming"];
    }
    if (_json.containsKey("requestTypeUrl")) {
      requestTypeUrl = _json["requestTypeUrl"];
    }
    if (_json.containsKey("responseStreaming")) {
      responseStreaming = _json["responseStreaming"];
    }
    if (_json.containsKey("responseTypeUrl")) {
      responseTypeUrl = _json["responseTypeUrl"];
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (requestStreaming != null) {
      _json["requestStreaming"] = requestStreaming;
    }
    if (requestTypeUrl != null) {
      _json["requestTypeUrl"] = requestTypeUrl;
    }
    if (responseStreaming != null) {
      _json["responseStreaming"] = responseStreaming;
    }
    if (responseTypeUrl != null) {
      _json["responseTypeUrl"] = responseTypeUrl;
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    return _json;
  }
}

/// Defines a metric type and its schema. Once a metric descriptor is created,
/// deleting or altering it stops data collection and makes the metric type's
/// existing data unusable.
class MetricDescriptor {
  /// A detailed description of the metric, which can be used in documentation.
  core.String description;

  /// A concise name for the metric, which can be displayed in user interfaces.
  /// Use sentence case without an ending period, for example "Request count".
  /// This field is optional but it is recommended to be set for any metrics
  /// associated with user-visible concepts, such as Quota.
  core.String displayName;

  /// The set of labels that can be used to describe a specific
  /// instance of this metric type. For example, the
  /// `appengine.googleapis.com/http/server/response_latencies` metric
  /// type has a label for the HTTP response code, `response_code`, so
  /// you can look at latencies for successful responses or just
  /// for responses that failed.
  core.List<LabelDescriptor> labels;

  /// Optional. The launch stage of the metric definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use
  /// these features, you must sign up in advance and sign a Trusted Tester
  /// agreement (which includes confidentiality provisions). These features may
  /// be unstable, changed in backward-incompatible ways, and are not
  /// guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared
  /// for widespread use. By Alpha, all significant design issues are resolved
  /// and we are in the process of verifying functionality. Alpha customers
  /// need to apply for access, agree to applicable terms, and have their
  /// projects whitelisted. Alpha releases don’t have to be feature complete,
  /// no SLAs are provided, and there are no technical support obligations, but
  /// they will be far enough along that customers can actually use them in
  /// test environments or for limited-use tests -- just like they would in
  /// normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any
  /// customer to use. There are no SLA or technical support obligations in a
  /// Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and
  /// fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more
  /// information, see the “Deprecation Policy” section of our [Terms of
  /// Service](https://cloud.google.com/terms/)
  /// and the [Google Cloud Platform Subject to the Deprecation
  /// Policy](https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// Optional. Metadata which can be used to guide usage of the metric.
  MetricDescriptorMetadata metadata;

  /// Whether the metric records instantaneous values, changes to a value, etc.
  /// Some combinations of `metric_kind` and `value_type` might not be
  /// supported.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval.  Cumulative
  /// measurements in a time series should have the same start time
  /// and increasing end times, until an event resets the cumulative
  /// value to zero and sets a new start time for the following
  /// points.
  core.String metricKind;

  /// The resource name of the metric descriptor.
  core.String name;

  /// The metric type, including its DNS name prefix. The type is not
  /// URL-encoded.  All user-defined metric types have the DNS name
  /// `custom.googleapis.com` or `external.googleapis.com`.  Metric types should
  /// use a natural hierarchical grouping. For example:
  ///
  ///     "custom.googleapis.com/invoice/paid/amount"
  ///     "external.googleapis.com/prometheus/up"
  ///     "appengine.googleapis.com/http/server/response_latencies"
  core.String type;

  /// The unit in which the metric value is reported. It is only applicable
  /// if the `value_type` is `INT64`, `DOUBLE`, or `DISTRIBUTION`. The
  /// supported units are a subset of [The Unified Code for Units of
  /// Measure](http://unitsofmeasure.org/ucum.html) standard:
  ///
  /// **Basic units (UNIT)**
  ///
  /// * `bit`   bit
  /// * `By`    byte
  /// * `s`     second
  /// * `min`   minute
  /// * `h`     hour
  /// * `d`     day
  ///
  /// **Prefixes (PREFIX)**
  ///
  /// * `k`     kilo    (10**3)
  /// * `M`     mega    (10**6)
  /// * `G`     giga    (10**9)
  /// * `T`     tera    (10**12)
  /// * `P`     peta    (10**15)
  /// * `E`     exa     (10**18)
  /// * `Z`     zetta   (10**21)
  /// * `Y`     yotta   (10**24)
  /// * `m`     milli   (10**-3)
  /// * `u`     micro   (10**-6)
  /// * `n`     nano    (10**-9)
  /// * `p`     pico    (10**-12)
  /// * `f`     femto   (10**-15)
  /// * `a`     atto    (10**-18)
  /// * `z`     zepto   (10**-21)
  /// * `y`     yocto   (10**-24)
  /// * `Ki`    kibi    (2**10)
  /// * `Mi`    mebi    (2**20)
  /// * `Gi`    gibi    (2**30)
  /// * `Ti`    tebi    (2**40)
  ///
  /// **Grammar**
  ///
  /// The grammar also includes these connectors:
  ///
  /// * `/`    division (as an infix operator, e.g. `1/s`).
  /// * `.`    multiplication (as an infix operator, e.g. `GBy.d`)
  ///
  /// The grammar for a unit is as follows:
  ///
  ///     Expression = Component { "." Component } { "/" Component } ;
  ///
  ///     Component = ( [ PREFIX ] UNIT | "%" ) [ Annotation ]
  ///               | Annotation
  ///               | "1"
  ///               ;
  ///
  ///     Annotation = "{" NAME "}" ;
  ///
  /// Notes:
  ///
  /// * `Annotation` is just a comment if it follows a `UNIT` and is
  ///    equivalent to `1` if it is used alone. For examples,
  ///    `{requests}/s == 1/s`, `By{transmitted}/s == By/s`.
  /// * `NAME` is a sequence of non-blank printable ASCII characters not
  ///    containing '{' or '}'.
  /// * `1` represents dimensionless value 1, such as in `1/s`.
  /// * `%` represents dimensionless value 1/100, and annotates values giving
  ///    a percentage.
  core.String unit;

  /// Whether the measurement is an integer, a floating-point number, etc.
  /// Some combinations of `metric_kind` and `value_type` might not be
  /// supported.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean.
  /// This value type can be used only if the metric kind is `GAUGE`.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string.
  /// This value type can be used only if the metric kind is `GAUGE`.
  /// - "DISTRIBUTION" : The value is a `Distribution`.
  /// - "MONEY" : The value is money.
  core.String valueType;

  MetricDescriptor();

  MetricDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("launchStage")) {
      launchStage = _json["launchStage"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new MetricDescriptorMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("metricKind")) {
      metricKind = _json["metricKind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (launchStage != null) {
      _json["launchStage"] = launchStage;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (metricKind != null) {
      _json["metricKind"] = metricKind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/// Additional annotations that can be used to guide the usage of a metric.
class MetricDescriptorMetadata {
  /// The delay of data points caused by ingestion. Data points older than this
  /// age are guaranteed to be ingested and available to be read, excluding
  /// data loss due to errors.
  core.String ingestDelay;

  /// Deprecated. Please use the MetricDescriptor.launch_stage instead.
  /// The launch stage of the metric definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use
  /// these features, you must sign up in advance and sign a Trusted Tester
  /// agreement (which includes confidentiality provisions). These features may
  /// be unstable, changed in backward-incompatible ways, and are not
  /// guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared
  /// for widespread use. By Alpha, all significant design issues are resolved
  /// and we are in the process of verifying functionality. Alpha customers
  /// need to apply for access, agree to applicable terms, and have their
  /// projects whitelisted. Alpha releases don’t have to be feature complete,
  /// no SLAs are provided, and there are no technical support obligations, but
  /// they will be far enough along that customers can actually use them in
  /// test environments or for limited-use tests -- just like they would in
  /// normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any
  /// customer to use. There are no SLA or technical support obligations in a
  /// Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and
  /// fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more
  /// information, see the “Deprecation Policy” section of our [Terms of
  /// Service](https://cloud.google.com/terms/)
  /// and the [Google Cloud Platform Subject to the Deprecation
  /// Policy](https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// The sampling period of metric data points. For metrics which are written
  /// periodically, consecutive data points are stored at this time interval,
  /// excluding data loss due to errors. Metrics with a higher granularity have
  /// a smaller sampling period.
  core.String samplePeriod;

  MetricDescriptorMetadata();

  MetricDescriptorMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("ingestDelay")) {
      ingestDelay = _json["ingestDelay"];
    }
    if (_json.containsKey("launchStage")) {
      launchStage = _json["launchStage"];
    }
    if (_json.containsKey("samplePeriod")) {
      samplePeriod = _json["samplePeriod"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ingestDelay != null) {
      _json["ingestDelay"] = ingestDelay;
    }
    if (launchStage != null) {
      _json["launchStage"] = launchStage;
    }
    if (samplePeriod != null) {
      _json["samplePeriod"] = samplePeriod;
    }
    return _json;
  }
}

/// Bind API methods to metrics. Binding a method to a metric causes that
/// metric's configured quota behaviors to apply to the method call.
class MetricRule {
  /// Metrics to update when the selected methods are called, and the associated
  /// cost applied to each metric.
  ///
  /// The key of the map is the metric name, and the values are the amount
  /// increased for the metric against which the quota limits are defined.
  /// The value must not be negative.
  core.Map<core.String, core.String> metricCosts;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  MetricRule();

  MetricRule.fromJson(core.Map _json) {
    if (_json.containsKey("metricCosts")) {
      metricCosts =
          (_json["metricCosts"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metricCosts != null) {
      _json["metricCosts"] = metricCosts;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// Declares an API Interface to be included in this interface. The including
/// interface must redeclare all the methods from the included interface, but
/// documentation and options are inherited as follows:
///
/// - If after comment and whitespace stripping, the documentation
///   string of the redeclared method is empty, it will be inherited
///   from the original method.
///
/// - Each annotation belonging to the service config (http,
///   visibility) which is not set in the redeclared method will be
///   inherited.
///
/// - If an http annotation is inherited, the path pattern will be
///   modified as follows. Any version prefix will be replaced by the
///   version of the including interface plus the root path if
///   specified.
///
/// Example of a simple mixin:
///
///     package google.acl.v1;
///     service AccessControl {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v1/{resource=**}:getAcl";
///       }
///     }
///
///     package google.storage.v2;
///     service Storage {
///       //       rpc GetAcl(GetAclRequest) returns (Acl);
///
///       // Get a data record.
///       rpc GetData(GetDataRequest) returns (Data) {
///         option (google.api.http).get = "/v2/{resource=**}";
///       }
///     }
///
/// Example of a mixin configuration:
///
///     apis:
///     - name: google.storage.v2.Storage
///       mixins:
///       - name: google.acl.v1.AccessControl
///
/// The mixin construct implies that all methods in `AccessControl` are
/// also declared with same name and request/response types in
/// `Storage`. A documentation generator or annotation processor will
/// see the effective `Storage.GetAcl` method after inherting
/// documentation and annotations as follows:
///
///     service Storage {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v2/{resource=**}:getAcl";
///       }
///       ...
///     }
///
/// Note how the version in the path pattern changed from `v1` to `v2`.
///
/// If the `root` field in the mixin is specified, it should be a
/// relative path under which inherited HTTP paths are placed. Example:
///
///     apis:
///     - name: google.storage.v2.Storage
///       mixins:
///       - name: google.acl.v1.AccessControl
///         root: acls
///
/// This implies the following inherited HTTP annotation:
///
///     service Storage {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v2/acls/{resource=**}:getAcl";
///       }
///       ...
///     }
class Mixin {
  /// The fully qualified name of the interface which is included.
  core.String name;

  /// If non-empty specifies a path under which inherited HTTP paths
  /// are rooted.
  core.String root;

  Mixin();

  Mixin.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("root")) {
      root = _json["root"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (root != null) {
      _json["root"] = root;
    }
    return _json;
  }
}

/// An object that describes the schema of a MonitoredResource object using a
/// type name and a set of labels.  For example, the monitored resource
/// descriptor for Google Compute Engine VM instances has a type of
/// `"gce_instance"` and specifies the use of the labels `"instance_id"` and
/// `"zone"` to identify particular VM instances.
///
/// Different APIs can support different monitored resource types. APIs
/// generally
/// provide a `list` method that returns the monitored resource descriptors used
/// by the API.
class MonitoredResourceDescriptor {
  /// Optional. A detailed description of the monitored resource type that might
  /// be used in documentation.
  core.String description;

  /// Optional. A concise name for the monitored resource type that might be
  /// displayed in user interfaces. It should be a Title Cased Noun Phrase,
  /// without any article or other determiners. For example,
  /// `"Google Cloud SQL Database"`.
  core.String displayName;

  /// Required. A set of labels used to describe instances of this monitored
  /// resource type. For example, an individual Google Cloud SQL database is
  /// identified by values for the labels `"database_id"` and `"zone"`.
  core.List<LabelDescriptor> labels;

  /// Optional. The launch stage of the monitored resource definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use
  /// these features, you must sign up in advance and sign a Trusted Tester
  /// agreement (which includes confidentiality provisions). These features may
  /// be unstable, changed in backward-incompatible ways, and are not
  /// guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared
  /// for widespread use. By Alpha, all significant design issues are resolved
  /// and we are in the process of verifying functionality. Alpha customers
  /// need to apply for access, agree to applicable terms, and have their
  /// projects whitelisted. Alpha releases don’t have to be feature complete,
  /// no SLAs are provided, and there are no technical support obligations, but
  /// they will be far enough along that customers can actually use them in
  /// test environments or for limited-use tests -- just like they would in
  /// normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any
  /// customer to use. There are no SLA or technical support obligations in a
  /// Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and
  /// fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more
  /// information, see the “Deprecation Policy” section of our [Terms of
  /// Service](https://cloud.google.com/terms/)
  /// and the [Google Cloud Platform Subject to the Deprecation
  /// Policy](https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// Optional. The resource name of the monitored resource descriptor:
  /// `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where
  /// {type} is the value of the `type` field in this object and
  /// {project_id} is a project ID that provides API-specific context for
  /// accessing the type.  APIs that do not use project information can use the
  /// resource name format `"monitoredResourceDescriptors/{type}"`.
  core.String name;

  /// Required. The monitored resource type. For example, the type
  /// `"cloudsql_database"` represents databases in Google Cloud SQL.
  /// The maximum length of this value is 256 characters.
  core.String type;

  MonitoredResourceDescriptor();

  MonitoredResourceDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("launchStage")) {
      launchStage = _json["launchStage"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (launchStage != null) {
      _json["launchStage"] = launchStage;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Monitoring configuration of the service.
///
/// The example below shows how to configure monitored resources and metrics
/// for monitoring. In the example, a monitored resource and two metrics are
/// defined. The `library.googleapis.com/book/returned_count` metric is sent
/// to both producer and consumer projects, whereas the
/// `library.googleapis.com/book/overdue_count` metric is only sent to the
/// consumer project.
///
///     monitored_resources:
///     - type: library.googleapis.com/branch
///       labels:
///       - key: /city
///         description: The city where the library branch is located in.
///       - key: /name
///         description: The name of the branch.
///     metrics:
///     - name: library.googleapis.com/book/returned_count
///       metric_kind: DELTA
///       value_type: INT64
///       labels:
///       - key: /customer_id
///     - name: library.googleapis.com/book/overdue_count
///       metric_kind: GAUGE
///       value_type: INT64
///       labels:
///       - key: /customer_id
///     monitoring:
///       producer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         metrics:
///         - library.googleapis.com/book/returned_count
///       consumer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         metrics:
///         - library.googleapis.com/book/returned_count
///         - library.googleapis.com/book/overdue_count
class Monitoring {
  /// Monitoring configurations for sending metrics to the consumer project.
  /// There can be multiple consumer destinations. A monitored resouce type may
  /// appear in multiple monitoring destinations if different aggregations are
  /// needed for different sets of metrics associated with that monitored
  /// resource type. A monitored resource and metric pair may only be used once
  /// in the Monitoring configuration.
  core.List<MonitoringDestination> consumerDestinations;

  /// Monitoring configurations for sending metrics to the producer project.
  /// There can be multiple producer destinations. A monitored resouce type may
  /// appear in multiple monitoring destinations if different aggregations are
  /// needed for different sets of metrics associated with that monitored
  /// resource type. A monitored resource and metric pair may only be used once
  /// in the Monitoring configuration.
  core.List<MonitoringDestination> producerDestinations;

  Monitoring();

  Monitoring.fromJson(core.Map _json) {
    if (_json.containsKey("consumerDestinations")) {
      consumerDestinations = (_json["consumerDestinations"] as core.List)
          .map<MonitoringDestination>(
              (value) => new MonitoringDestination.fromJson(value))
          .toList();
    }
    if (_json.containsKey("producerDestinations")) {
      producerDestinations = (_json["producerDestinations"] as core.List)
          .map<MonitoringDestination>(
              (value) => new MonitoringDestination.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerDestinations != null) {
      _json["consumerDestinations"] =
          consumerDestinations.map((value) => (value).toJson()).toList();
    }
    if (producerDestinations != null) {
      _json["producerDestinations"] =
          producerDestinations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Configuration of a specific monitoring destination (the producer project
/// or the consumer project).
class MonitoringDestination {
  /// Types of the metrics to report to this monitoring destination.
  /// Each type must be defined in Service.metrics section.
  core.List<core.String> metrics;

  /// The monitored resource type. The type must be defined in
  /// Service.monitored_resources section.
  core.String monitoredResource;

  MonitoringDestination();

  MonitoringDestination.fromJson(core.Map _json) {
    if (_json.containsKey("metrics")) {
      metrics = (_json["metrics"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("monitoredResource")) {
      monitoredResource = _json["monitoredResource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metrics != null) {
      _json["metrics"] = metrics;
    }
    if (monitoredResource != null) {
      _json["monitoredResource"] = monitoredResource;
    }
    return _json;
  }
}

/// OAuth scopes are a way to define data and permissions on data. For example,
/// there are scopes defined for "Read-only access to Google Calendar" and
/// "Access to Cloud Platform". Users can consent to a scope for an application,
/// giving it permission to access that data on their behalf.
///
/// OAuth scope specifications should be fairly coarse grained; a user will need
/// to see and understand the text description of what your scope means.
///
/// In most cases: use one or at most two OAuth scopes for an entire family of
/// products. If your product has multiple APIs, you should probably be sharing
/// the OAuth scope across all of those APIs.
///
/// When you need finer grained OAuth consent screens: talk with your product
/// management about how developers will use them in practice.
///
/// Please note that even though each of the canonical scopes is enough for a
/// request to be accepted and passed to the backend, a request can still fail
/// due to the backend requiring additional scopes or permissions.
class OAuthRequirements {
  /// The list of publicly documented OAuth scopes that are allowed access. An
  /// OAuth token containing any of these scopes will be accepted.
  ///
  /// Example:
  ///
  ///      canonical_scopes: https://www.googleapis.com/auth/calendar,
  ///                        https://www.googleapis.com/auth/calendar.read
  core.String canonicalScopes;

  OAuthRequirements();

  OAuthRequirements.fromJson(core.Map _json) {
    if (_json.containsKey("canonicalScopes")) {
      canonicalScopes = _json["canonicalScopes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (canonicalScopes != null) {
      _json["canonicalScopes"] = canonicalScopes;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// A protocol buffer option, which can be attached to a message, field,
/// enumeration, etc.
class Option {
  /// The option's name. For protobuf built-in options (options defined in
  /// descriptor.proto), this is the short name. For example, `"map_entry"`.
  /// For custom options, it should be the fully-qualified name. For example,
  /// `"google.api.http"`.
  core.String name;

  /// The option's value packed in an Any message. If the value is a primitive,
  /// the corresponding wrapper type defined in google/protobuf/wrappers.proto
  /// should be used. If the value is an enum, it should be stored as an int32
  /// value using the google.protobuf.Int32Value type.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> value;

  Option();

  Option.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = (_json["value"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Represents a documentation page. A page can contain subpages to represent
/// nested documentation set structure.
class Page {
  /// The Markdown content of the page. You can use <code>&#40;== include {path}
  /// ==&#41;</code> to include content from a Markdown file.
  core.String content;

  /// The name of the page. It will be used as an identity of the page to
  /// generate URI of the page, text of the link to this page in navigation,
  /// etc. The full page name (start from the root page name to this page
  /// concatenated with `.`) can be used as reference to the page in your
  /// documentation. For example:
  /// <pre><code>pages:
  /// - name: Tutorial
  ///   content: &#40;== include tutorial.md ==&#41;
  ///   subpages:
  ///   - name: Java
  ///     content: &#40;== include tutorial_java.md ==&#41;
  /// </code></pre>
  /// You can reference `Java` page using Markdown reference link syntax:
  /// `Java`.
  core.String name;

  /// Subpages of this page. The order of subpages specified here will be
  /// honored in the generated docset.
  core.List<Page> subpages;

  Page();

  Page.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("subpages")) {
      subpages = (_json["subpages"] as core.List)
          .map<Page>((value) => new Page.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (subpages != null) {
      _json["subpages"] = subpages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Quota configuration helps to achieve fairness and budgeting in service
/// usage.
///
/// The metric based quota configuration works this way:
/// - The service configuration defines a set of metrics.
/// - For API calls, the quota.metric_rules maps methods to metrics with
///   corresponding costs.
/// - The quota.limits defines limits on the metrics, which will be used for
///   quota checks at runtime.
///
/// An example quota configuration in yaml format:
///
///    quota:
///      limits:
///
///      - name: apiWriteQpsPerProject
///        metric: library.googleapis.com/write_calls
///        unit: "1/min/{project}"  # rate limit for consumer projects
///        values:
///          STANDARD: 10000
///
///
///      # The metric rules bind all methods to the read_calls metric,
///      # except for the UpdateBook and DeleteBook methods. These two methods
///      # are mapped to the write_calls metric, with the UpdateBook method
///      # consuming at twice rate as the DeleteBook method.
///      metric_rules:
///      - selector: "*"
///        metric_costs:
///          library.googleapis.com/read_calls: 1
///      - selector: google.example.library.v1.LibraryService.UpdateBook
///        metric_costs:
///          library.googleapis.com/write_calls: 2
///      - selector: google.example.library.v1.LibraryService.DeleteBook
///        metric_costs:
///          library.googleapis.com/write_calls: 1
///
///  Corresponding Metric definition:
///
///      metrics:
///      - name: library.googleapis.com/read_calls
///        display_name: Read requests
///        metric_kind: DELTA
///        value_type: INT64
///
///      - name: library.googleapis.com/write_calls
///        display_name: Write requests
///        metric_kind: DELTA
///        value_type: INT64
class Quota {
  /// List of `QuotaLimit` definitions for the service.
  core.List<QuotaLimit> limits;

  /// List of `MetricRule` definitions, each one mapping a selected method to
  /// one
  /// or more metrics.
  core.List<MetricRule> metricRules;

  Quota();

  Quota.fromJson(core.Map _json) {
    if (_json.containsKey("limits")) {
      limits = (_json["limits"] as core.List)
          .map<QuotaLimit>((value) => new QuotaLimit.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metricRules")) {
      metricRules = (_json["metricRules"] as core.List)
          .map<MetricRule>((value) => new MetricRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (limits != null) {
      _json["limits"] = limits.map((value) => (value).toJson()).toList();
    }
    if (metricRules != null) {
      _json["metricRules"] =
          metricRules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// `QuotaLimit` defines a specific limit that applies over a specified duration
/// for a limit type. There can be at most one limit for a duration and limit
/// type combination defined within a `QuotaGroup`.
class QuotaLimit {
  /// Default number of tokens that can be consumed during the specified
  /// duration. This is the number of tokens assigned when a client
  /// application developer activates the service for his/her project.
  ///
  /// Specifying a value of 0 will block all requests. This can be used if you
  /// are provisioning quota to selected consumers and blocking others.
  /// Similarly, a value of -1 will indicate an unlimited quota. No other
  /// negative values are allowed.
  ///
  /// Used by group-based quotas only.
  core.String defaultLimit;

  /// Optional. User-visible, extended description for this quota limit.
  /// Should be used only when more context is needed to understand this limit
  /// than provided by the limit's display name (see: `display_name`).
  core.String description;

  /// User-visible display name for this limit.
  /// Optional. If not set, the UI will provide a default display name based on
  /// the quota configuration. This field can be used to override the default
  /// display name generated from the configuration.
  core.String displayName;

  /// Duration of this limit in textual notation. Example: "100s", "24h", "1d".
  /// For duration longer than a day, only multiple of days is supported. We
  /// support only "100s" and "1d" for now. Additional support will be added in
  /// the future. "0" indicates indefinite duration.
  ///
  /// Used by group-based quotas only.
  core.String duration;

  /// Free tier value displayed in the Developers Console for this limit.
  /// The free tier is the number of tokens that will be subtracted from the
  /// billed amount when billing is enabled.
  /// This field can only be set on a limit with duration "1d", in a billable
  /// group; it is invalid on any other limit. If this field is not set, it
  /// defaults to 0, indicating that there is no free tier for this service.
  ///
  /// Used by group-based quotas only.
  core.String freeTier;

  /// Maximum number of tokens that can be consumed during the specified
  /// duration. Client application developers can override the default limit up
  /// to this maximum. If specified, this value cannot be set to a value less
  /// than the default limit. If not specified, it is set to the default limit.
  ///
  /// To allow clients to apply overrides with no upper bound, set this to -1,
  /// indicating unlimited maximum quota.
  ///
  /// Used by group-based quotas only.
  core.String maxLimit;

  /// The name of the metric this quota limit applies to. The quota limits with
  /// the same metric will be checked together during runtime. The metric must
  /// be
  /// defined within the service config.
  core.String metric;

  /// Name of the quota limit.
  ///
  /// The name must be provided, and it must be unique within the service. The
  /// name can only include alphanumeric characters as well as '-'.
  ///
  /// The maximum length of the limit name is 64 characters.
  core.String name;

  /// Specify the unit of the quota limit. It uses the same syntax as
  /// Metric.unit. The supported unit kinds are determined by the quota
  /// backend system.
  ///
  /// Here are some examples:
  /// * "1/min/{project}" for quota per minute per project.
  ///
  /// Note: the order of unit components is insignificant.
  /// The "1" at the beginning is required to follow the metric unit syntax.
  core.String unit;

  /// Tiered limit values. You must specify this as a key:value pair, with an
  /// integer value that is the maximum number of requests allowed for the
  /// specified unit. Currently only STANDARD is supported.
  core.Map<core.String, core.String> values;

  QuotaLimit();

  QuotaLimit.fromJson(core.Map _json) {
    if (_json.containsKey("defaultLimit")) {
      defaultLimit = _json["defaultLimit"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("freeTier")) {
      freeTier = _json["freeTier"];
    }
    if (_json.containsKey("maxLimit")) {
      maxLimit = _json["maxLimit"];
    }
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultLimit != null) {
      _json["defaultLimit"] = defaultLimit;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (freeTier != null) {
      _json["freeTier"] = freeTier;
    }
    if (maxLimit != null) {
      _json["maxLimit"] = maxLimit;
    }
    if (metric != null) {
      _json["metric"] = metric;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Represents a found unused range.
class Range {
  /// CIDR range in "10.x.x.x/y" format that is within the
  /// allocated ranges and currently unused.
  core.String ipCidrRange;

  /// In the Shared VPC host project, the VPC network that's peered with the
  /// consumer network. For example:
  /// `projects/1234321/global/networks/host-network`
  core.String network;

  Range();

  Range.fromJson(core.Map _json) {
    if (_json.containsKey("ipCidrRange")) {
      ipCidrRange = _json["ipCidrRange"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipCidrRange != null) {
      _json["ipCidrRange"] = ipCidrRange;
    }
    if (network != null) {
      _json["network"] = network;
    }
    return _json;
  }
}

/// Request to search for an unused range within allocated ranges.
class SearchRangeRequest {
  /// Required. The prefix length of the IP range.
  /// Use usual CIDR range notation.
  /// For example, '30' to find unused x.x.x.x/30 CIDR range.
  /// Actual range will be determined using allocated range for the consumer
  /// peered network and returned in the result.
  core.int ipPrefixLength;

  /// Network name in the consumer project.   This network must have been
  /// already peered with a shared VPC network using CreateConnection
  /// method.
  /// Must be in a form 'projects/{project}/global/networks/{network}'.
  /// {project} is a project number, as in '12345'
  /// {network} is network name.
  core.String network;

  SearchRangeRequest();

  SearchRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ipPrefixLength")) {
      ipPrefixLength = _json["ipPrefixLength"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipPrefixLength != null) {
      _json["ipPrefixLength"] = ipPrefixLength;
    }
    if (network != null) {
      _json["network"] = network;
    }
    return _json;
  }
}

/// `Service` is the root object of Google service configuration schema. It
/// describes basic information about a service, such as the name and the
/// title, and delegates other aspects to sub-sections. Each sub-section is
/// either a proto message or a repeated proto message that configures a
/// specific aspect, such as auth. See each proto message definition for
/// details.
///
/// Example:
///
///     type: google.api.Service
///     config_version: 3
///     name: calendar.googleapis.com
///     title: Google Calendar API
///     apis:
///     - name: google.calendar.v3.Calendar
///     authentication:
///       providers:
///       - id: google_calendar_auth
///         jwks_uri: https://www.googleapis.com/oauth2/v1/certs
///         issuer: https://securetoken.google.com
///       rules:
///       - selector: "*"
///         requirements:
///           provider_id: google_calendar_auth
class Service {
  /// A list of API interfaces exported by this service. Only the `name` field
  /// of the google.protobuf.Api needs to be provided by the configuration
  /// author, as the remaining fields will be derived from the IDL during the
  /// normalization process. It is an error to specify an API interface here
  /// which cannot be resolved against the associated IDL files.
  core.List<Api> apis;

  /// Auth configuration.
  Authentication authentication;

  /// API backend configuration.
  Backend backend;

  /// Billing configuration.
  Billing billing;

  /// The semantic version of the service configuration. The config version
  /// affects the interpretation of the service configuration. For example,
  /// certain features are enabled by default for certain config versions.
  /// The latest config version is `3`.
  core.int configVersion;

  /// Context configuration.
  Context context;

  /// Configuration for the service control plane.
  Control control;

  /// Custom error configuration.
  CustomError customError;

  /// Additional API documentation.
  Documentation documentation;

  /// Configuration for network endpoints.  If this is empty, then an endpoint
  /// with the same name as the service is automatically generated to service
  /// all
  /// defined APIs.
  core.List<Endpoint> endpoints;

  /// A list of all enum types included in this API service.  Enums
  /// referenced directly or indirectly by the `apis` are automatically
  /// included.  Enums which are not referenced but shall be included
  /// should be listed here by name. Example:
  ///
  ///     enums:
  ///     - name: google.someapi.v1.SomeEnum
  core.List<Enum> enums;

  /// HTTP configuration.
  Http http;

  /// A unique ID for a specific instance of this message, typically assigned
  /// by the client for tracking purpose. If empty, the server may choose to
  /// generate one instead. Must be no longer than 60 characters.
  core.String id;

  /// Logging configuration.
  Logging logging;

  /// Defines the logs used by this service.
  core.List<LogDescriptor> logs;

  /// Defines the metrics used by this service.
  core.List<MetricDescriptor> metrics;

  /// Defines the monitored resources used by this service. This is required
  /// by the Service.monitoring and Service.logging configurations.
  core.List<MonitoredResourceDescriptor> monitoredResources;

  /// Monitoring configuration.
  Monitoring monitoring;

  /// The service name, which is a DNS-like logical identifier for the
  /// service, such as `calendar.googleapis.com`. The service name
  /// typically goes through DNS verification to make sure the owner
  /// of the service also owns the DNS name.
  core.String name;

  /// The Google project that owns this service.
  core.String producerProjectId;

  /// Quota configuration.
  Quota quota;

  /// Output only. The source information for this configuration if available.
  SourceInfo sourceInfo;

  /// System parameter configuration.
  SystemParameters systemParameters;

  /// A list of all proto message types included in this API service.
  /// It serves similar purpose as [google.api.Service.types], except that
  /// these types are not needed by user-defined APIs. Therefore, they will not
  /// show up in the generated discovery doc. This field should only be used
  /// to define system APIs in ESF.
  core.List<Type> systemTypes;

  /// The product title for this service.
  core.String title;

  /// A list of all proto message types included in this API service.
  /// Types referenced directly or indirectly by the `apis` are
  /// automatically included.  Messages which are not referenced but
  /// shall be included, such as types used by the `google.protobuf.Any` type,
  /// should be listed here by name. Example:
  ///
  ///     types:
  ///     - name: google.protobuf.Int32
  core.List<Type> types;

  /// Configuration controlling usage of this service.
  Usage usage;

  Service();

  Service.fromJson(core.Map _json) {
    if (_json.containsKey("apis")) {
      apis = (_json["apis"] as core.List)
          .map<Api>((value) => new Api.fromJson(value))
          .toList();
    }
    if (_json.containsKey("authentication")) {
      authentication = new Authentication.fromJson(_json["authentication"]);
    }
    if (_json.containsKey("backend")) {
      backend = new Backend.fromJson(_json["backend"]);
    }
    if (_json.containsKey("billing")) {
      billing = new Billing.fromJson(_json["billing"]);
    }
    if (_json.containsKey("configVersion")) {
      configVersion = _json["configVersion"];
    }
    if (_json.containsKey("context")) {
      context = new Context.fromJson(_json["context"]);
    }
    if (_json.containsKey("control")) {
      control = new Control.fromJson(_json["control"]);
    }
    if (_json.containsKey("customError")) {
      customError = new CustomError.fromJson(_json["customError"]);
    }
    if (_json.containsKey("documentation")) {
      documentation = new Documentation.fromJson(_json["documentation"]);
    }
    if (_json.containsKey("endpoints")) {
      endpoints = (_json["endpoints"] as core.List)
          .map<Endpoint>((value) => new Endpoint.fromJson(value))
          .toList();
    }
    if (_json.containsKey("enums")) {
      enums = (_json["enums"] as core.List)
          .map<Enum>((value) => new Enum.fromJson(value))
          .toList();
    }
    if (_json.containsKey("http")) {
      http = new Http.fromJson(_json["http"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("logging")) {
      logging = new Logging.fromJson(_json["logging"]);
    }
    if (_json.containsKey("logs")) {
      logs = (_json["logs"] as core.List)
          .map<LogDescriptor>((value) => new LogDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metrics")) {
      metrics = (_json["metrics"] as core.List)
          .map<MetricDescriptor>(
              (value) => new MetricDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("monitoredResources")) {
      monitoredResources = (_json["monitoredResources"] as core.List)
          .map<MonitoredResourceDescriptor>(
              (value) => new MonitoredResourceDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("monitoring")) {
      monitoring = new Monitoring.fromJson(_json["monitoring"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("producerProjectId")) {
      producerProjectId = _json["producerProjectId"];
    }
    if (_json.containsKey("quota")) {
      quota = new Quota.fromJson(_json["quota"]);
    }
    if (_json.containsKey("sourceInfo")) {
      sourceInfo = new SourceInfo.fromJson(_json["sourceInfo"]);
    }
    if (_json.containsKey("systemParameters")) {
      systemParameters =
          new SystemParameters.fromJson(_json["systemParameters"]);
    }
    if (_json.containsKey("systemTypes")) {
      systemTypes = (_json["systemTypes"] as core.List)
          .map<Type>((value) => new Type.fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("types")) {
      types = (_json["types"] as core.List)
          .map<Type>((value) => new Type.fromJson(value))
          .toList();
    }
    if (_json.containsKey("usage")) {
      usage = new Usage.fromJson(_json["usage"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apis != null) {
      _json["apis"] = apis.map((value) => (value).toJson()).toList();
    }
    if (authentication != null) {
      _json["authentication"] = (authentication).toJson();
    }
    if (backend != null) {
      _json["backend"] = (backend).toJson();
    }
    if (billing != null) {
      _json["billing"] = (billing).toJson();
    }
    if (configVersion != null) {
      _json["configVersion"] = configVersion;
    }
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (control != null) {
      _json["control"] = (control).toJson();
    }
    if (customError != null) {
      _json["customError"] = (customError).toJson();
    }
    if (documentation != null) {
      _json["documentation"] = (documentation).toJson();
    }
    if (endpoints != null) {
      _json["endpoints"] = endpoints.map((value) => (value).toJson()).toList();
    }
    if (enums != null) {
      _json["enums"] = enums.map((value) => (value).toJson()).toList();
    }
    if (http != null) {
      _json["http"] = (http).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (logging != null) {
      _json["logging"] = (logging).toJson();
    }
    if (logs != null) {
      _json["logs"] = logs.map((value) => (value).toJson()).toList();
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (monitoredResources != null) {
      _json["monitoredResources"] =
          monitoredResources.map((value) => (value).toJson()).toList();
    }
    if (monitoring != null) {
      _json["monitoring"] = (monitoring).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (producerProjectId != null) {
      _json["producerProjectId"] = producerProjectId;
    }
    if (quota != null) {
      _json["quota"] = (quota).toJson();
    }
    if (sourceInfo != null) {
      _json["sourceInfo"] = (sourceInfo).toJson();
    }
    if (systemParameters != null) {
      _json["systemParameters"] = (systemParameters).toJson();
    }
    if (systemTypes != null) {
      _json["systemTypes"] =
          systemTypes.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (types != null) {
      _json["types"] = types.map((value) => (value).toJson()).toList();
    }
    if (usage != null) {
      _json["usage"] = (usage).toJson();
    }
    return _json;
  }
}

/// `SourceContext` represents information about the source of a
/// protobuf element, like the file in which it is defined.
class SourceContext {
  /// The path-qualified name of the .proto file that contained the associated
  /// protobuf element.  For example: `"google/protobuf/source_context.proto"`.
  core.String fileName;

  SourceContext();

  SourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    return _json;
  }
}

/// Source information used to create a Service Config
class SourceInfo {
  /// All files used during config generation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> sourceFiles;

  SourceInfo();

  SourceInfo.fromJson(core.Map _json) {
    if (_json.containsKey("sourceFiles")) {
      sourceFiles = (_json["sourceFiles"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sourceFiles != null) {
      _json["sourceFiles"] = sourceFiles;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Represents a subnet that was created or discovered by a private access
/// management service.
class Subnetwork {
  /// Subnetwork CIDR range in `10.x.x.x/y` format.
  core.String ipCidrRange;

  /// Subnetwork name.
  /// See https://cloud.google.com/compute/docs/vpc/
  core.String name;

  /// In the Shared VPC host project, the VPC network that's peered with the
  /// consumer network. For example:
  /// `projects/1234321/global/networks/host-network`
  core.String network;

  /// This is a discovered subnet that is not within the current consumer
  /// allocated ranges.
  core.bool outsideAllocation;

  Subnetwork();

  Subnetwork.fromJson(core.Map _json) {
    if (_json.containsKey("ipCidrRange")) {
      ipCidrRange = _json["ipCidrRange"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("outsideAllocation")) {
      outsideAllocation = _json["outsideAllocation"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipCidrRange != null) {
      _json["ipCidrRange"] = ipCidrRange;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (outsideAllocation != null) {
      _json["outsideAllocation"] = outsideAllocation;
    }
    return _json;
  }
}

/// Define a parameter's name and location. The parameter may be passed as
/// either
/// an HTTP header or a URL query parameter, and if both are passed the behavior
/// is implementation-dependent.
class SystemParameter {
  /// Define the HTTP header name to use for the parameter. It is case
  /// insensitive.
  core.String httpHeader;

  /// Define the name of the parameter, such as "api_key" . It is case
  /// sensitive.
  core.String name;

  /// Define the URL query parameter name to use for the parameter. It is case
  /// sensitive.
  core.String urlQueryParameter;

  SystemParameter();

  SystemParameter.fromJson(core.Map _json) {
    if (_json.containsKey("httpHeader")) {
      httpHeader = _json["httpHeader"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("urlQueryParameter")) {
      urlQueryParameter = _json["urlQueryParameter"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (httpHeader != null) {
      _json["httpHeader"] = httpHeader;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (urlQueryParameter != null) {
      _json["urlQueryParameter"] = urlQueryParameter;
    }
    return _json;
  }
}

/// Define a system parameter rule mapping system parameter definitions to
/// methods.
class SystemParameterRule {
  /// Define parameters. Multiple names may be defined for a parameter.
  /// For a given method call, only one of them should be used. If multiple
  /// names are used the behavior is implementation-dependent.
  /// If none of the specified names are present the behavior is
  /// parameter-dependent.
  core.List<SystemParameter> parameters;

  /// Selects the methods to which this rule applies. Use '*' to indicate all
  /// methods in all APIs.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  SystemParameterRule();

  SystemParameterRule.fromJson(core.Map _json) {
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List)
          .map<SystemParameter>((value) => new SystemParameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parameters != null) {
      _json["parameters"] =
          parameters.map((value) => (value).toJson()).toList();
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    return _json;
  }
}

/// ### System parameter configuration
///
/// A system parameter is a special kind of parameter defined by the API
/// system, not by an individual API. It is typically mapped to an HTTP header
/// and/or a URL query parameter. This configuration specifies which methods
/// change the names of the system parameters.
class SystemParameters {
  /// Define system parameters.
  ///
  /// The parameters defined here will override the default parameters
  /// implemented by the system. If this field is missing from the service
  /// config, default system parameters will be used. Default system parameters
  /// and names is implementation-dependent.
  ///
  /// Example: define api key for all methods
  ///
  ///     system_parameters
  ///       rules:
  ///         - selector: "*"
  ///           parameters:
  ///             - name: api_key
  ///               url_query_parameter: api_key
  ///
  ///
  /// Example: define 2 api key names for a specific method.
  ///
  ///     system_parameters
  ///       rules:
  ///         - selector: "/ListShelves"
  ///           parameters:
  ///             - name: api_key
  ///               http_header: Api-Key1
  ///             - name: api_key
  ///               http_header: Api-Key2
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<SystemParameterRule> rules;

  SystemParameters();

  SystemParameters.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<SystemParameterRule>(
              (value) => new SystemParameterRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A protocol buffer message type.
class Type {
  /// The list of fields.
  core.List<Field> fields;

  /// The fully qualified message name.
  core.String name;

  /// The list of types appearing in `oneof` definitions in this type.
  core.List<core.String> oneofs;

  /// The protocol buffer options.
  core.List<Option> options;

  /// The source context.
  SourceContext sourceContext;

  /// The source syntax.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax `proto2`.
  /// - "SYNTAX_PROTO3" : Syntax `proto3`.
  core.String syntax;

  Type();

  Type.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<Field>((value) => new Field.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("oneofs")) {
      oneofs = (_json["oneofs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sourceContext")) {
      sourceContext = new SourceContext.fromJson(_json["sourceContext"]);
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (oneofs != null) {
      _json["oneofs"] = oneofs;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (sourceContext != null) {
      _json["sourceContext"] = (sourceContext).toJson();
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    return _json;
  }
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
  core.String producerNotificationChannel;

  /// Requirements that must be satisfied before a consumer project can use the
  /// service. Each requirement is of the form <service.name>/<requirement-id>;
  /// for example 'serviceusage.googleapis.com/billing-enabled'.
  core.List<core.String> requirements;

  /// A list of usage rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  core.List<UsageRule> rules;

  Usage();

  Usage.fromJson(core.Map _json) {
    if (_json.containsKey("producerNotificationChannel")) {
      producerNotificationChannel = _json["producerNotificationChannel"];
    }
    if (_json.containsKey("requirements")) {
      requirements = (_json["requirements"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<UsageRule>((value) => new UsageRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (producerNotificationChannel != null) {
      _json["producerNotificationChannel"] = producerNotificationChannel;
    }
    if (requirements != null) {
      _json["requirements"] = requirements;
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Usage configuration rules for the service.
///
/// NOTE: Under development.
///
///
/// Use this rule to configure unregistered calls for the service. Unregistered
/// calls are calls that do not contain consumer project identity.
/// (Example: calls that do not contain an API key).
/// By default, API methods do not allow unregistered calls, and each method
/// call
/// must be identified by a consumer project identity. Use this rule to
/// allow/disallow unregistered calls.
///
/// Example of an API that wants to allow unregistered calls for entire service.
///
///     usage:
///       rules:
///       - selector: "*"
///         allow_unregistered_calls: true
///
/// Example of a method that wants to allow unregistered calls.
///
///     usage:
///       rules:
///       - selector: "google.example.library.v1.LibraryService.CreateBook"
///         allow_unregistered_calls: true
class UsageRule {
  /// If true, the selected method allows unregistered calls, e.g. calls
  /// that don't identify any user or application.
  core.bool allowUnregisteredCalls;

  /// Selects the methods to which this rule applies. Use '*' to indicate all
  /// methods in all APIs.
  ///
  /// Refer to selector for syntax details.
  core.String selector;

  /// If true, the selected method should skip service control and the control
  /// plane features, such as quota and billing, will not be available.
  /// This flag is used by Google Cloud Endpoints to bypass checks for internal
  /// methods, such as service health check methods.
  core.bool skipServiceControl;

  UsageRule();

  UsageRule.fromJson(core.Map _json) {
    if (_json.containsKey("allowUnregisteredCalls")) {
      allowUnregisteredCalls = _json["allowUnregisteredCalls"];
    }
    if (_json.containsKey("selector")) {
      selector = _json["selector"];
    }
    if (_json.containsKey("skipServiceControl")) {
      skipServiceControl = _json["skipServiceControl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowUnregisteredCalls != null) {
      _json["allowUnregisteredCalls"] = allowUnregisteredCalls;
    }
    if (selector != null) {
      _json["selector"] = selector;
    }
    if (skipServiceControl != null) {
      _json["skipServiceControl"] = skipServiceControl;
    }
    return _json;
  }
}
