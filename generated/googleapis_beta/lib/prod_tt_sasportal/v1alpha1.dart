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

/// SAS Portal API (Testing) - v1alpha1
///
/// For more information, see
/// <https://developers.google.com/spectrum-access-system/>
///
/// Create an instance of [SASPortalTestingApi] to access these resources:
///
/// - [CustomersResource]
///   - [CustomersDeploymentsResource]
///     - [CustomersDeploymentsDevicesResource]
///   - [CustomersDevicesResource]
///   - [CustomersNodesResource]
///     - [CustomersNodesDeploymentsResource]
///     - [CustomersNodesDevicesResource]
///     - [CustomersNodesNodesResource]
/// - [DeploymentsResource]
///   - [DeploymentsDevicesResource]
/// - [InstallerResource]
/// - [NodesResource]
///   - [NodesDeploymentsResource]
///     - [NodesDeploymentsDevicesResource]
///   - [NodesDevicesResource]
///   - [NodesNodesResource]
///     - [NodesNodesDeploymentsResource]
///     - [NodesNodesDevicesResource]
///     - [NodesNodesNodesResource]
/// - [PoliciesResource]
library prod_tt_sasportal.v1alpha1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class SASPortalTestingApi {
  /// See your primary Google Account email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  CustomersResource get customers => CustomersResource(_requester);
  DeploymentsResource get deployments => DeploymentsResource(_requester);
  InstallerResource get installer => InstallerResource(_requester);
  NodesResource get nodes => NodesResource(_requester);
  PoliciesResource get policies => PoliciesResource(_requester);

  SASPortalTestingApi(http.Client client,
      {core.String rootUrl = 'https://prod-tt-sasportal.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersDeploymentsResource get deployments =>
      CustomersDeploymentsResource(_requester);
  CustomersDevicesResource get devices => CustomersDevicesResource(_requester);
  CustomersNodesResource get nodes => CustomersNodesResource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;

  /// Returns a requested customer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the customer.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalCustomer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalCustomer> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalCustomer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of requested customers.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of customers to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListCustomers that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListCustomersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListCustomersResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha1/customers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListCustomersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the customer.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalCustomer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalCustomer> patch(
    SasPortalCustomer request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalCustomer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersDeploymentsResource {
  final commons.ApiRequester _requester;

  CustomersDeploymentsDevicesResource get devices =>
      CustomersDeploymentsDevicesResource(_requester);

  CustomersDeploymentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the deployment is to
  /// be created.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDeployment> create(
    SasPortalDeployment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment.
  /// Value must have pattern `^customers/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a requested deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment.
  /// Value must have pattern `^customers/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDeployment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists deployments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1",
  /// customer/1/nodes/2.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have the following
  /// format: "DIRECT_CHILDREN" or format: "direct_children". The filter is case
  /// insensitive. If empty, then no deployments are filtered.
  ///
  /// [pageSize] - The maximum number of deployments to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDeployments that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDeploymentsResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDeploymentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Moves a deployment under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment to move.
  /// Value must have pattern `^customers/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalOperation> move(
    SasPortalMoveDeploymentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name.
  /// Value must have pattern `^customers/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDeployment> patch(
    SasPortalDeployment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersDeploymentsDevicesResource {
  final commons.ApiRequester _requester;

  CustomersDeploymentsDevicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> create(
    SasPortalDevice request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> createSigned(
    SasPortalCreateSignedDeviceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial number of the device. The filter is case insensitive.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range \[0,
  /// 1000\].
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDevicesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersDevicesResource {
  final commons.ApiRequester _requester;

  CustomersDevicesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> create(
    SasPortalDevice request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> createSigned(
    SasPortalCreateSignedDeviceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern `^customers/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern `^customers/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial number of the device. The filter is case insensitive.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range \[0,
  /// 1000\].
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDevicesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Moves a device under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to move.
  /// Value must have pattern `^customers/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalOperation> move(
    SasPortalMoveDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern `^customers/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> patch(
    SasPortalDevice request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern `^customers/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> signDevice(
    SasPortalSignDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':signDevice';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a signed device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to update.
  /// Value must have pattern `^customers/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> updateSigned(
    SasPortalUpdateSignedDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':updateSigned';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersNodesResource {
  final commons.ApiRequester _requester;

  CustomersNodesDeploymentsResource get deployments =>
      CustomersNodesDeploymentsResource(_requester);
  CustomersNodesDevicesResource get devices =>
      CustomersNodesDevicesResource(_requester);
  CustomersNodesNodesResource get nodes =>
      CustomersNodesNodesResource(_requester);

  CustomersNodesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the node is to be
  /// created.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> create(
    SasPortalNode request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a requested node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have the following
  /// format: "DIRECT_CHILDREN" or format: "direct_children". The filter is case
  /// insensitive. If empty, then no nodes are filtered.
  ///
  /// [pageSize] - The maximum number of nodes to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListNodes that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListNodesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListNodesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Moves a node under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node to move.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalOperation> move(
    SasPortalMoveNodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> patch(
    SasPortalNode request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersNodesDeploymentsResource {
  final commons.ApiRequester _requester;

  CustomersNodesDeploymentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the deployment is to
  /// be created.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDeployment> create(
    SasPortalDeployment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists deployments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1",
  /// customer/1/nodes/2.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have the following
  /// format: "DIRECT_CHILDREN" or format: "direct_children". The filter is case
  /// insensitive. If empty, then no deployments are filtered.
  ///
  /// [pageSize] - The maximum number of deployments to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDeployments that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDeploymentsResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDeploymentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersNodesDevicesResource {
  final commons.ApiRequester _requester;

  CustomersNodesDevicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> create(
    SasPortalDevice request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> createSigned(
    SasPortalCreateSignedDeviceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial number of the device. The filter is case insensitive.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range \[0,
  /// 1000\].
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDevicesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersNodesNodesResource {
  final commons.ApiRequester _requester;

  CustomersNodesNodesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the node is to be
  /// created.
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> create(
    SasPortalNode request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1".
  /// Value must have pattern `^customers/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have the following
  /// format: "DIRECT_CHILDREN" or format: "direct_children". The filter is case
  /// insensitive. If empty, then no nodes are filtered.
  ///
  /// [pageSize] - The maximum number of nodes to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListNodes that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListNodesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListNodesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DeploymentsResource {
  final commons.ApiRequester _requester;

  DeploymentsDevicesResource get devices =>
      DeploymentsDevicesResource(_requester);

  DeploymentsResource(commons.ApiRequester client) : _requester = client;

  /// Returns a requested deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment.
  /// Value must have pattern `^deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDeployment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DeploymentsDevicesResource {
  final commons.ApiRequester _requester;

  DeploymentsDevicesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern `^deployments/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern `^deployments/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Moves a device under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to move.
  /// Value must have pattern `^deployments/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalOperation> move(
    SasPortalMoveDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern `^deployments/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> patch(
    SasPortalDevice request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern `^deployments/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> signDevice(
    SasPortalSignDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':signDevice';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a signed device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to update.
  /// Value must have pattern `^deployments/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> updateSigned(
    SasPortalUpdateSignedDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':updateSigned';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class InstallerResource {
  final commons.ApiRequester _requester;

  InstallerResource(commons.ApiRequester client) : _requester = client;

  /// Generates a secret to be used with the ValidateInstaller.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalGenerateSecretResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalGenerateSecretResponse> generateSecret(
    SasPortalGenerateSecretRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha1/installer:generateSecret';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalGenerateSecretResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Validates the identity of a Certified Professional Installer (CPI).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalValidateInstallerResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalValidateInstallerResponse> validate(
    SasPortalValidateInstallerRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha1/installer:validate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalValidateInstallerResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NodesResource {
  final commons.ApiRequester _requester;

  NodesDeploymentsResource get deployments =>
      NodesDeploymentsResource(_requester);
  NodesDevicesResource get devices => NodesDevicesResource(_requester);
  NodesNodesResource get nodes => NodesNodesResource(_requester);

  NodesResource(commons.ApiRequester client) : _requester = client;

  /// Returns a requested node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern `^nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NodesDeploymentsResource {
  final commons.ApiRequester _requester;

  NodesDeploymentsDevicesResource get devices =>
      NodesDeploymentsDevicesResource(_requester);

  NodesDeploymentsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment.
  /// Value must have pattern `^nodes/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a requested deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment.
  /// Value must have pattern `^nodes/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDeployment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists deployments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1",
  /// customer/1/nodes/2.
  /// Value must have pattern `^nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have the following
  /// format: "DIRECT_CHILDREN" or format: "direct_children". The filter is case
  /// insensitive. If empty, then no deployments are filtered.
  ///
  /// [pageSize] - The maximum number of deployments to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDeployments that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDeploymentsResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDeploymentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Moves a deployment under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment to move.
  /// Value must have pattern `^nodes/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalOperation> move(
    SasPortalMoveDeploymentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name.
  /// Value must have pattern `^nodes/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDeployment> patch(
    SasPortalDeployment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NodesDeploymentsDevicesResource {
  final commons.ApiRequester _requester;

  NodesDeploymentsDevicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> create(
    SasPortalDevice request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> createSigned(
    SasPortalCreateSignedDeviceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial number of the device. The filter is case insensitive.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range \[0,
  /// 1000\].
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDevicesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NodesDevicesResource {
  final commons.ApiRequester _requester;

  NodesDevicesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> create(
    SasPortalDevice request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> createSigned(
    SasPortalCreateSignedDeviceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern `^nodes/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern `^nodes/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial number of the device. The filter is case insensitive.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range \[0,
  /// 1000\].
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDevicesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Moves a device under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to move.
  /// Value must have pattern `^nodes/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalOperation> move(
    SasPortalMoveDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern `^nodes/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> patch(
    SasPortalDevice request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Signs a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern `^nodes/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> signDevice(
    SasPortalSignDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':signDevice';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a signed device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to update.
  /// Value must have pattern `^nodes/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> updateSigned(
    SasPortalUpdateSignedDeviceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':updateSigned';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NodesNodesResource {
  final commons.ApiRequester _requester;

  NodesNodesDeploymentsResource get deployments =>
      NodesNodesDeploymentsResource(_requester);
  NodesNodesDevicesResource get devices =>
      NodesNodesDevicesResource(_requester);
  NodesNodesNodesResource get nodes => NodesNodesNodesResource(_requester);

  NodesNodesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the node is to be
  /// created.
  /// Value must have pattern `^nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> create(
    SasPortalNode request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return SasPortalEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a requested node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1".
  /// Value must have pattern `^nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have the following
  /// format: "DIRECT_CHILDREN" or format: "direct_children". The filter is case
  /// insensitive. If empty, then no nodes are filtered.
  ///
  /// [pageSize] - The maximum number of nodes to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListNodes that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListNodesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListNodesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Moves a node under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node to move.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalOperation> move(
    SasPortalMoveNodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> patch(
    SasPortalNode request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NodesNodesDeploymentsResource {
  final commons.ApiRequester _requester;

  NodesNodesDeploymentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the deployment is to
  /// be created.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDeployment> create(
    SasPortalDeployment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDeployment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists deployments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1",
  /// customer/1/nodes/2.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have the following
  /// format: "DIRECT_CHILDREN" or format: "direct_children". The filter is case
  /// insensitive. If empty, then no deployments are filtered.
  ///
  /// [pageSize] - The maximum number of deployments to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDeployments that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDeploymentsResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDeploymentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NodesNodesDevicesResource {
  final commons.ApiRequester _requester;

  NodesNodesDevicesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> create(
    SasPortalDevice request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalDevice> createSigned(
    SasPortalCreateSignedDeviceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial number of the device. The filter is case insensitive.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range \[0,
  /// 1000\].
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListDevicesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NodesNodesNodesResource {
  final commons.ApiRequester _requester;

  NodesNodesNodesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the node is to be
  /// created.
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalNode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalNode> create(
    SasPortalNode request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalNode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1".
  /// Value must have pattern `^nodes/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The filter should have the following
  /// format: "DIRECT_CHILDREN" or format: "direct_children". The filter is case
  /// insensitive. If empty, then no nodes are filtered.
  ///
  /// [pageSize] - The maximum number of nodes to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListNodes that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalListNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalListNodesResponse> list(
    core.String parent, {
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

    final _url = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SasPortalListNodesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PoliciesResource {
  final commons.ApiRequester _requester;

  PoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalPolicy> get(
    SasPortalGetPolicyRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha1/policies:get';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalPolicy> set(
    SasPortalSetPolicyRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha1/policies:set';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalTestPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalTestPermissionsResponse> test(
    SasPortalTestPermissionsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha1/policies:test';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SasPortalTestPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Associates `members` with a `role`.
class SasPortalAssignment {
  /// The identities the role is assigned to.
  ///
  /// It can have the following values: * `{user_email}`: An email address that
  /// represents a specific Google account. For example: `alice@gmail.com`. *
  /// `{group_email}`: An email address that represents a Google group. For
  /// example, `viewers@gmail.com`.
  core.List<core.String>? members;

  /// Role that is assigned to `members`.
  ///
  /// Required.
  core.String? role;

  SasPortalAssignment({
    this.members,
    this.role,
  });

  SasPortalAssignment.fromJson(core.Map _json)
      : this(
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The channel with score.
class SasPortalChannelWithScore {
  /// The frequency range of the channel.
  SasPortalFrequencyRange? frequencyRange;

  /// The channel score, normalized to be in \[0,100\].
  core.double? score;

  SasPortalChannelWithScore({
    this.frequencyRange,
    this.score,
  });

  SasPortalChannelWithScore.fromJson(core.Map _json)
      : this(
          frequencyRange: _json.containsKey('frequencyRange')
              ? SasPortalFrequencyRange.fromJson(_json['frequencyRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          score: _json.containsKey('score')
              ? (_json['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frequencyRange != null) 'frequencyRange': frequencyRange!.toJson(),
        if (score != null) 'score': score!,
      };
}

/// Request for CreateSignedDevice.
class SasPortalCreateSignedDeviceRequest {
  /// JSON Web Token signed using a CPI private key.
  ///
  /// Payload must be the JSON encoding of the device. The user_id field must be
  /// set.
  ///
  /// Required.
  core.String? encodedDevice;
  core.List<core.int> get encodedDeviceAsBytes =>
      convert.base64.decode(encodedDevice!);

  set encodedDeviceAsBytes(core.List<core.int> _bytes) {
    encodedDevice =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Unique installer id (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  SasPortalCreateSignedDeviceRequest({
    this.encodedDevice,
    this.installerId,
  });

  SasPortalCreateSignedDeviceRequest.fromJson(core.Map _json)
      : this(
          encodedDevice: _json.containsKey('encodedDevice')
              ? _json['encodedDevice'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedDevice != null) 'encodedDevice': encodedDevice!,
        if (installerId != null) 'installerId': installerId!,
      };
}

/// Entity representing a SAS customer.
class SasPortalCustomer {
  /// Name of the organization that the customer entity represents.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of the customer.
  ///
  /// Output only.
  core.String? name;

  /// User IDs used by the devices belonging to this customer.
  core.List<core.String>? sasUserIds;

  SasPortalCustomer({
    this.displayName,
    this.name,
    this.sasUserIds,
  });

  SasPortalCustomer.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

/// The Deployment.
class SasPortalDeployment {
  /// The allowed billing modes under this deployment.
  core.List<core.String>? allowedBillingModes;

  /// Default billing mode for the deployment and devices under it.
  /// Possible string values are:
  /// - "BILLING_MODE_UNSPECIFIED" : Billing mode has not been specified.
  /// - "MOBILE" : Price is based on category of CBSD: Category A, Category B
  /// registered with SAS.
  /// - "FIXED_WIRELESS" : Price is based on type of CBSD: Base station or CPE.
  core.String? defaultBillingMode;

  /// The deployment's display name.
  core.String? displayName;

  /// The FRNs copied from its direct parent.
  ///
  /// Output only.
  core.List<core.String>? frns;

  /// Resource name.
  ///
  /// Output only.
  core.String? name;

  /// User ID used by the devices belonging to this deployment.
  ///
  /// Each deployment should be associated with one unique user ID.
  core.List<core.String>? sasUserIds;

  SasPortalDeployment({
    this.allowedBillingModes,
    this.defaultBillingMode,
    this.displayName,
    this.frns,
    this.name,
    this.sasUserIds,
  });

  SasPortalDeployment.fromJson(core.Map _json)
      : this(
          allowedBillingModes: _json.containsKey('allowedBillingModes')
              ? (_json['allowedBillingModes'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          defaultBillingMode: _json.containsKey('defaultBillingMode')
              ? _json['defaultBillingMode'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          frns: _json.containsKey('frns')
              ? (_json['frns'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedBillingModes != null)
          'allowedBillingModes': allowedBillingModes!,
        if (defaultBillingMode != null)
          'defaultBillingMode': defaultBillingMode!,
        if (displayName != null) 'displayName': displayName!,
        if (frns != null) 'frns': frns!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

class SasPortalDevice {
  /// Current configuration of the device as registered to the SAS.
  ///
  /// Output only.
  SasPortalDeviceConfig? activeConfig;

  /// Current channels with scores.
  ///
  /// Output only.
  core.List<SasPortalChannelWithScore>? currentChannels;

  /// Device parameters that can be overridden by both SAS Portal and SAS
  /// registration requests.
  SasPortalDeviceMetadata? deviceMetadata;

  /// Device display name.
  core.String? displayName;

  /// The FCC identifier of the device.
  core.String? fccId;

  /// Only ranges within the allowlists are available for new grants.
  core.List<SasPortalFrequencyRange>? grantRangeAllowlists;

  /// Grants held by the device.
  ///
  /// Output only.
  core.List<SasPortalDeviceGrant>? grants;

  /// The resource path name.
  ///
  /// Output only.
  core.String? name;

  /// Configuration of the device, as specified via SAS Portal API.
  SasPortalDeviceConfig? preloadedConfig;

  /// A serial number assigned to the device by the device manufacturer.
  core.String? serialNumber;

  /// Device state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEVICE_STATE_UNSPECIFIED" : Unspecified state.
  /// - "RESERVED" : Device created in the SAS Portal, however, not yet
  /// registered with SAS.
  /// - "REGISTERED" : Device registered with SAS.
  /// - "DEREGISTERED" : Device de-registered with SAS.
  core.String? state;

  SasPortalDevice({
    this.activeConfig,
    this.currentChannels,
    this.deviceMetadata,
    this.displayName,
    this.fccId,
    this.grantRangeAllowlists,
    this.grants,
    this.name,
    this.preloadedConfig,
    this.serialNumber,
    this.state,
  });

  SasPortalDevice.fromJson(core.Map _json)
      : this(
          activeConfig: _json.containsKey('activeConfig')
              ? SasPortalDeviceConfig.fromJson(
                  _json['activeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          currentChannels: _json.containsKey('currentChannels')
              ? (_json['currentChannels'] as core.List)
                  .map<SasPortalChannelWithScore>((value) =>
                      SasPortalChannelWithScore.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deviceMetadata: _json.containsKey('deviceMetadata')
              ? SasPortalDeviceMetadata.fromJson(_json['deviceMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          fccId:
              _json.containsKey('fccId') ? _json['fccId'] as core.String : null,
          grantRangeAllowlists: _json.containsKey('grantRangeAllowlists')
              ? (_json['grantRangeAllowlists'] as core.List)
                  .map<SasPortalFrequencyRange>((value) =>
                      SasPortalFrequencyRange.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          grants: _json.containsKey('grants')
              ? (_json['grants'] as core.List)
                  .map<SasPortalDeviceGrant>((value) =>
                      SasPortalDeviceGrant.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          preloadedConfig: _json.containsKey('preloadedConfig')
              ? SasPortalDeviceConfig.fromJson(_json['preloadedConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serialNumber: _json.containsKey('serialNumber')
              ? _json['serialNumber'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeConfig != null) 'activeConfig': activeConfig!.toJson(),
        if (currentChannels != null)
          'currentChannels':
              currentChannels!.map((value) => value.toJson()).toList(),
        if (deviceMetadata != null) 'deviceMetadata': deviceMetadata!.toJson(),
        if (displayName != null) 'displayName': displayName!,
        if (fccId != null) 'fccId': fccId!,
        if (grantRangeAllowlists != null)
          'grantRangeAllowlists':
              grantRangeAllowlists!.map((value) => value.toJson()).toList(),
        if (grants != null)
          'grants': grants!.map((value) => value.toJson()).toList(),
        if (name != null) 'name': name!,
        if (preloadedConfig != null)
          'preloadedConfig': preloadedConfig!.toJson(),
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (state != null) 'state': state!,
      };
}

/// Information about the device's air interface.
class SasPortalDeviceAirInterface {
  /// Conditional.
  ///
  /// This field specifies the radio access technology that is used for the
  /// CBSD.
  /// Possible string values are:
  /// - "RADIO_TECHNOLOGY_UNSPECIFIED"
  /// - "E_UTRA"
  /// - "CAMBIUM_NETWORKS"
  /// - "FOUR_G_BBW_SAA_1"
  /// - "NR"
  /// - "DOODLE_CBRS"
  /// - "CW"
  /// - "REDLINE"
  /// - "TARANA_WIRELESS"
  core.String? radioTechnology;

  /// This field is related to the `radioTechnology` and provides the air
  /// interface specification that the CBSD is compliant with at the time of
  /// registration.
  ///
  /// Optional.
  core.String? supportedSpec;

  SasPortalDeviceAirInterface({
    this.radioTechnology,
    this.supportedSpec,
  });

  SasPortalDeviceAirInterface.fromJson(core.Map _json)
      : this(
          radioTechnology: _json.containsKey('radioTechnology')
              ? _json['radioTechnology'] as core.String
              : null,
          supportedSpec: _json.containsKey('supportedSpec')
              ? _json['supportedSpec'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (radioTechnology != null) 'radioTechnology': radioTechnology!,
        if (supportedSpec != null) 'supportedSpec': supportedSpec!,
      };
}

/// Information about the device configuration.
class SasPortalDeviceConfig {
  /// Information about this device's air interface.
  SasPortalDeviceAirInterface? airInterface;

  /// The call sign of the device operator.
  core.String? callSign;

  /// FCC category of the device.
  /// Possible string values are:
  /// - "DEVICE_CATEGORY_UNSPECIFIED" : Unspecified device category.
  /// - "DEVICE_CATEGORY_A" : Category A.
  /// - "DEVICE_CATEGORY_B" : Category B.
  core.String? category;

  /// Installation parameters for the device.
  SasPortalInstallationParams? installationParams;

  /// Whether the configuration has been signed by a CPI.
  ///
  /// Output only.
  core.bool? isSigned;

  /// Measurement reporting capabilities of the device.
  core.List<core.String>? measurementCapabilities;

  /// Information about this device model.
  SasPortalDeviceModel? model;

  /// State of the configuration.
  /// Possible string values are:
  /// - "DEVICE_CONFIG_STATE_UNSPECIFIED"
  /// - "DRAFT"
  /// - "FINAL"
  core.String? state;

  /// The last time the device configuration was edited.
  ///
  /// Output only.
  core.String? updateTime;

  /// The identifier of a device user.
  core.String? userId;

  SasPortalDeviceConfig({
    this.airInterface,
    this.callSign,
    this.category,
    this.installationParams,
    this.isSigned,
    this.measurementCapabilities,
    this.model,
    this.state,
    this.updateTime,
    this.userId,
  });

  SasPortalDeviceConfig.fromJson(core.Map _json)
      : this(
          airInterface: _json.containsKey('airInterface')
              ? SasPortalDeviceAirInterface.fromJson(
                  _json['airInterface'] as core.Map<core.String, core.dynamic>)
              : null,
          callSign: _json.containsKey('callSign')
              ? _json['callSign'] as core.String
              : null,
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          installationParams: _json.containsKey('installationParams')
              ? SasPortalInstallationParams.fromJson(_json['installationParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          isSigned: _json.containsKey('isSigned')
              ? _json['isSigned'] as core.bool
              : null,
          measurementCapabilities: _json.containsKey('measurementCapabilities')
              ? (_json['measurementCapabilities'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          model: _json.containsKey('model')
              ? SasPortalDeviceModel.fromJson(
                  _json['model'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (airInterface != null) 'airInterface': airInterface!.toJson(),
        if (callSign != null) 'callSign': callSign!,
        if (category != null) 'category': category!,
        if (installationParams != null)
          'installationParams': installationParams!.toJson(),
        if (isSigned != null) 'isSigned': isSigned!,
        if (measurementCapabilities != null)
          'measurementCapabilities': measurementCapabilities!,
        if (model != null) 'model': model!.toJson(),
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (userId != null) 'userId': userId!,
      };
}

/// Device grant.
///
/// It is an authorization provided by the Spectrum Access System to a device to
/// transmit using specified operating parameters after a successful heartbeat
/// by the device.
class SasPortalDeviceGrant {
  /// Type of channel used.
  /// Possible string values are:
  /// - "CHANNEL_TYPE_UNSPECIFIED"
  /// - "CHANNEL_TYPE_GAA"
  /// - "CHANNEL_TYPE_PAL"
  core.String? channelType;

  /// The expiration time of the grant.
  core.String? expireTime;

  /// The transmission frequency range.
  SasPortalFrequencyRange? frequencyRange;

  /// Grant Id.
  core.String? grantId;

  /// Maximum Equivalent Isotropically Radiated Power (EIRP) permitted by the
  /// grant.
  ///
  /// The maximum EIRP is in units of dBm/MHz. The value of `maxEirp` represents
  /// the average (RMS) EIRP that would be measured by the procedure defined in
  /// FCC part 96.41(e)(3).
  core.double? maxEirp;

  /// The DPA move lists on which this grant appears.
  core.List<SasPortalDpaMoveList>? moveList;

  /// State of the grant.
  /// Possible string values are:
  /// - "GRANT_STATE_UNSPECIFIED"
  /// - "GRANT_STATE_GRANTED" : The grant has been granted but the device is not
  /// heartbeating on it.
  /// - "GRANT_STATE_TERMINATED" : The grant has been terminated by the SAS.
  /// - "GRANT_STATE_SUSPENDED" : The grant has been suspended by the SAS.
  /// - "GRANT_STATE_AUTHORIZED" : The device is currently transmitting.
  /// - "GRANT_STATE_EXPIRED" : The grant has expired.
  core.String? state;

  /// If the grant is suspended, the reason(s) for suspension.
  core.List<core.String>? suspensionReason;

  SasPortalDeviceGrant({
    this.channelType,
    this.expireTime,
    this.frequencyRange,
    this.grantId,
    this.maxEirp,
    this.moveList,
    this.state,
    this.suspensionReason,
  });

  SasPortalDeviceGrant.fromJson(core.Map _json)
      : this(
          channelType: _json.containsKey('channelType')
              ? _json['channelType'] as core.String
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          frequencyRange: _json.containsKey('frequencyRange')
              ? SasPortalFrequencyRange.fromJson(_json['frequencyRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          grantId: _json.containsKey('grantId')
              ? _json['grantId'] as core.String
              : null,
          maxEirp: _json.containsKey('maxEirp')
              ? (_json['maxEirp'] as core.num).toDouble()
              : null,
          moveList: _json.containsKey('moveList')
              ? (_json['moveList'] as core.List)
                  .map<SasPortalDpaMoveList>((value) =>
                      SasPortalDpaMoveList.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          suspensionReason: _json.containsKey('suspensionReason')
              ? (_json['suspensionReason'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelType != null) 'channelType': channelType!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (frequencyRange != null) 'frequencyRange': frequencyRange!.toJson(),
        if (grantId != null) 'grantId': grantId!,
        if (maxEirp != null) 'maxEirp': maxEirp!,
        if (moveList != null)
          'moveList': moveList!.map((value) => value.toJson()).toList(),
        if (state != null) 'state': state!,
        if (suspensionReason != null) 'suspensionReason': suspensionReason!,
      };
}

/// Device data overridable by both SAS Portal and registration requests.
class SasPortalDeviceMetadata {
  /// If populated, the Antenna Model Pattern to use.
  ///
  /// Format is: RecordCreatorId:PatternId
  core.String? antennaModel;

  /// CCG.
  ///
  /// A group of CBSDs in the same ICG requesting a common primary channel
  /// assignment. See CBRSA-TS-2001 V3.0.0 for more details.
  core.String? commonChannelGroup;

  /// ICG.
  ///
  /// A group of CBSDs that manage their own interference with the group. See
  /// CBRSA-TS-2001 V3.0.0 for more details.
  core.String? interferenceCoordinationGroup;

  SasPortalDeviceMetadata({
    this.antennaModel,
    this.commonChannelGroup,
    this.interferenceCoordinationGroup,
  });

  SasPortalDeviceMetadata.fromJson(core.Map _json)
      : this(
          antennaModel: _json.containsKey('antennaModel')
              ? _json['antennaModel'] as core.String
              : null,
          commonChannelGroup: _json.containsKey('commonChannelGroup')
              ? _json['commonChannelGroup'] as core.String
              : null,
          interferenceCoordinationGroup:
              _json.containsKey('interferenceCoordinationGroup')
                  ? _json['interferenceCoordinationGroup'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (antennaModel != null) 'antennaModel': antennaModel!,
        if (commonChannelGroup != null)
          'commonChannelGroup': commonChannelGroup!,
        if (interferenceCoordinationGroup != null)
          'interferenceCoordinationGroup': interferenceCoordinationGroup!,
      };
}

/// Information about the model of the device.
class SasPortalDeviceModel {
  /// The firmware version of the device.
  core.String? firmwareVersion;

  /// The hardware version of the device.
  core.String? hardwareVersion;

  /// The name of the device model.
  core.String? name;

  /// The software version of the device.
  core.String? softwareVersion;

  /// The name of the device vendor.
  core.String? vendor;

  SasPortalDeviceModel({
    this.firmwareVersion,
    this.hardwareVersion,
    this.name,
    this.softwareVersion,
    this.vendor,
  });

  SasPortalDeviceModel.fromJson(core.Map _json)
      : this(
          firmwareVersion: _json.containsKey('firmwareVersion')
              ? _json['firmwareVersion'] as core.String
              : null,
          hardwareVersion: _json.containsKey('hardwareVersion')
              ? _json['hardwareVersion'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          softwareVersion: _json.containsKey('softwareVersion')
              ? _json['softwareVersion'] as core.String
              : null,
          vendor: _json.containsKey('vendor')
              ? _json['vendor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firmwareVersion != null) 'firmwareVersion': firmwareVersion!,
        if (hardwareVersion != null) 'hardwareVersion': hardwareVersion!,
        if (name != null) 'name': name!,
        if (softwareVersion != null) 'softwareVersion': softwareVersion!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// An entry in a DPA's move list.
class SasPortalDpaMoveList {
  /// The ID of the DPA.
  core.String? dpaId;

  /// The frequency range that the move list affects.
  SasPortalFrequencyRange? frequencyRange;

  SasPortalDpaMoveList({
    this.dpaId,
    this.frequencyRange,
  });

  SasPortalDpaMoveList.fromJson(core.Map _json)
      : this(
          dpaId:
              _json.containsKey('dpaId') ? _json['dpaId'] as core.String : null,
          frequencyRange: _json.containsKey('frequencyRange')
              ? SasPortalFrequencyRange.fromJson(_json['frequencyRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dpaId != null) 'dpaId': dpaId!,
        if (frequencyRange != null) 'frequencyRange': frequencyRange!.toJson(),
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class SasPortalEmpty {
  SasPortalEmpty();

  SasPortalEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Frequency range from `low_frequency` to `high_frequency`.
class SasPortalFrequencyRange {
  /// The highest frequency of the frequency range in MHz.
  core.double? highFrequencyMhz;

  /// The lowest frequency of the frequency range in MHz.
  core.double? lowFrequencyMhz;

  SasPortalFrequencyRange({
    this.highFrequencyMhz,
    this.lowFrequencyMhz,
  });

  SasPortalFrequencyRange.fromJson(core.Map _json)
      : this(
          highFrequencyMhz: _json.containsKey('highFrequencyMhz')
              ? (_json['highFrequencyMhz'] as core.num).toDouble()
              : null,
          lowFrequencyMhz: _json.containsKey('lowFrequencyMhz')
              ? (_json['lowFrequencyMhz'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highFrequencyMhz != null) 'highFrequencyMhz': highFrequencyMhz!,
        if (lowFrequencyMhz != null) 'lowFrequencyMhz': lowFrequencyMhz!,
      };
}

/// Request for GenerateSecret.
class SasPortalGenerateSecretRequest {
  SasPortalGenerateSecretRequest();

  SasPortalGenerateSecretRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Response for GenerateSecret.
class SasPortalGenerateSecretResponse {
  /// The secret generated by the string and used by ValidateInstaller.
  core.String? secret;

  SasPortalGenerateSecretResponse({
    this.secret,
  });

  SasPortalGenerateSecretResponse.fromJson(core.Map _json)
      : this(
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secret != null) 'secret': secret!,
      };
}

/// Request message for `GetPolicy` method.
class SasPortalGetPolicyRequest {
  /// The resource for which the policy is being requested.
  ///
  /// Required.
  core.String? resource;

  SasPortalGetPolicyRequest({
    this.resource,
  });

  SasPortalGetPolicyRequest.fromJson(core.Map _json)
      : this(
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

/// Information about the device installation parameters.
class SasPortalInstallationParams {
  /// Boresight direction of the horizontal plane of the antenna in degrees with
  /// respect to true north.
  ///
  /// The value of this parameter is an integer with a value between 0 and 359
  /// inclusive. A value of 0 degrees means true north; a value of 90 degrees
  /// means east. This parameter is optional for Category A devices and
  /// conditional for Category B devices.
  core.int? antennaAzimuth;

  /// 3-dB antenna beamwidth of the antenna in the horizontal-plane in degrees.
  ///
  /// This parameter is an unsigned integer having a value between 0 and 360
  /// (degrees) inclusive; it is optional for Category A devices and conditional
  /// for Category B devices.
  core.int? antennaBeamwidth;

  /// Antenna downtilt in degrees and is an integer with a value between -90 and
  /// +90 inclusive; a negative value means the antenna is tilted up (above
  /// horizontal).
  ///
  /// This parameter is optional for Category A devices and conditional for
  /// Category B devices.
  core.int? antennaDowntilt;

  /// Peak antenna gain in dBi.
  ///
  /// This parameter is an integer with a value between -127 and +128 (dBi)
  /// inclusive.
  core.int? antennaGain;

  /// If an external antenna is used, the antenna model is optionally provided
  /// in this field.
  ///
  /// The string has a maximum length of 128 octets.
  core.String? antennaModel;

  /// If present, this parameter specifies whether the CBSD is a CPE-CBSD or
  /// not.
  core.bool? cpeCbsdIndication;

  /// This parameter is the maximum device EIRP in units of dBm/10MHz and is an
  /// integer with a value between -127 and +47 (dBm/10 MHz) inclusive.
  ///
  /// If not included, SAS interprets it as maximum allowable EIRP in units of
  /// dBm/10MHz for device category.
  core.int? eirpCapability;

  /// Device antenna height in meters.
  ///
  /// When the `heightType` parameter value is "AGL", the antenna height should
  /// be given relative to ground level. When the `heightType` parameter value
  /// is "AMSL", it is given with respect to WGS84 datum.
  core.double? height;

  /// Specifies how the height is measured.
  /// Possible string values are:
  /// - "HEIGHT_TYPE_UNSPECIFIED" : Unspecified height type.
  /// - "HEIGHT_TYPE_AGL" : AGL height is measured relative to the ground level.
  /// - "HEIGHT_TYPE_AMSL" : AMSL height is measured relative to the mean sea
  /// level.
  core.String? heightType;

  /// A positive number in meters to indicate accuracy of the device antenna
  /// horizontal location.
  ///
  /// This optional parameter should only be present if its value is less than
  /// the FCC requirement of 50 meters.
  core.double? horizontalAccuracy;

  /// Whether the device antenna is indoor or not.
  ///
  /// `true`: indoor. `false`: outdoor.
  core.bool? indoorDeployment;

  /// Latitude of the device antenna location in degrees relative to the WGS 84
  /// datum.
  ///
  /// The allowed range is from -90.000000 to +90.000000. Positive values
  /// represent latitudes north of the equator; negative values south of the
  /// equator.
  core.double? latitude;

  /// Longitude of the device antenna location in degrees relative to the WGS 84
  /// datum.
  ///
  /// The allowed range is from -180.000000 to +180.000000. Positive values
  /// represent longitudes east of the prime meridian; negative values west of
  /// the prime meridian.
  core.double? longitude;

  /// A positive number in meters to indicate accuracy of the device antenna
  /// vertical location.
  ///
  /// This optional parameter should only be present if its value is less than
  /// the FCC requirement of 3 meters.
  core.double? verticalAccuracy;

  SasPortalInstallationParams({
    this.antennaAzimuth,
    this.antennaBeamwidth,
    this.antennaDowntilt,
    this.antennaGain,
    this.antennaModel,
    this.cpeCbsdIndication,
    this.eirpCapability,
    this.height,
    this.heightType,
    this.horizontalAccuracy,
    this.indoorDeployment,
    this.latitude,
    this.longitude,
    this.verticalAccuracy,
  });

  SasPortalInstallationParams.fromJson(core.Map _json)
      : this(
          antennaAzimuth: _json.containsKey('antennaAzimuth')
              ? _json['antennaAzimuth'] as core.int
              : null,
          antennaBeamwidth: _json.containsKey('antennaBeamwidth')
              ? _json['antennaBeamwidth'] as core.int
              : null,
          antennaDowntilt: _json.containsKey('antennaDowntilt')
              ? _json['antennaDowntilt'] as core.int
              : null,
          antennaGain: _json.containsKey('antennaGain')
              ? _json['antennaGain'] as core.int
              : null,
          antennaModel: _json.containsKey('antennaModel')
              ? _json['antennaModel'] as core.String
              : null,
          cpeCbsdIndication: _json.containsKey('cpeCbsdIndication')
              ? _json['cpeCbsdIndication'] as core.bool
              : null,
          eirpCapability: _json.containsKey('eirpCapability')
              ? _json['eirpCapability'] as core.int
              : null,
          height: _json.containsKey('height')
              ? (_json['height'] as core.num).toDouble()
              : null,
          heightType: _json.containsKey('heightType')
              ? _json['heightType'] as core.String
              : null,
          horizontalAccuracy: _json.containsKey('horizontalAccuracy')
              ? (_json['horizontalAccuracy'] as core.num).toDouble()
              : null,
          indoorDeployment: _json.containsKey('indoorDeployment')
              ? _json['indoorDeployment'] as core.bool
              : null,
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
          verticalAccuracy: _json.containsKey('verticalAccuracy')
              ? (_json['verticalAccuracy'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (antennaAzimuth != null) 'antennaAzimuth': antennaAzimuth!,
        if (antennaBeamwidth != null) 'antennaBeamwidth': antennaBeamwidth!,
        if (antennaDowntilt != null) 'antennaDowntilt': antennaDowntilt!,
        if (antennaGain != null) 'antennaGain': antennaGain!,
        if (antennaModel != null) 'antennaModel': antennaModel!,
        if (cpeCbsdIndication != null) 'cpeCbsdIndication': cpeCbsdIndication!,
        if (eirpCapability != null) 'eirpCapability': eirpCapability!,
        if (height != null) 'height': height!,
        if (heightType != null) 'heightType': heightType!,
        if (horizontalAccuracy != null)
          'horizontalAccuracy': horizontalAccuracy!,
        if (indoorDeployment != null) 'indoorDeployment': indoorDeployment!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
        if (verticalAccuracy != null) 'verticalAccuracy': verticalAccuracy!,
      };
}

/// Response for `ListCustomers`.
class SasPortalListCustomersResponse {
  /// The list of customers that match the request.
  core.List<SasPortalCustomer>? customers;

  /// A pagination token returned from a previous call to ListCustomers that
  /// indicates from where listing should continue.
  ///
  /// If the field is missing or empty, it means there are no more customers.
  core.String? nextPageToken;

  SasPortalListCustomersResponse({
    this.customers,
    this.nextPageToken,
  });

  SasPortalListCustomersResponse.fromJson(core.Map _json)
      : this(
          customers: _json.containsKey('customers')
              ? (_json['customers'] as core.List)
                  .map<SasPortalCustomer>((value) => SasPortalCustomer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customers != null)
          'customers': customers!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListDeployments.
class SasPortalListDeploymentsResponse {
  /// The deployments that match the request.
  core.List<SasPortalDeployment>? deployments;

  /// A pagination token returned from a previous call to ListDeployments that
  /// indicates from where listing should continue.
  ///
  /// If the field is missing or empty, it means there are no more deployments.
  core.String? nextPageToken;

  SasPortalListDeploymentsResponse({
    this.deployments,
    this.nextPageToken,
  });

  SasPortalListDeploymentsResponse.fromJson(core.Map _json)
      : this(
          deployments: _json.containsKey('deployments')
              ? (_json['deployments'] as core.List)
                  .map<SasPortalDeployment>((value) =>
                      SasPortalDeployment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployments != null)
          'deployments': deployments!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListDevices.
class SasPortalListDevicesResponse {
  /// The devices that match the request.
  core.List<SasPortalDevice>? devices;

  /// A pagination token returned from a previous call to ListDevices that
  /// indicates from where listing should continue.
  ///
  /// If the field is missing or empty, it means there is no more devices.
  core.String? nextPageToken;

  SasPortalListDevicesResponse({
    this.devices,
    this.nextPageToken,
  });

  SasPortalListDevicesResponse.fromJson(core.Map _json)
      : this(
          devices: _json.containsKey('devices')
              ? (_json['devices'] as core.List)
                  .map<SasPortalDevice>((value) => SasPortalDevice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devices != null)
          'devices': devices!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListNodes.
class SasPortalListNodesResponse {
  /// A pagination token returned from a previous call to ListNodes that
  /// indicates from where listing should continue.
  ///
  /// If the field is missing or empty, it means there is no more nodes.
  core.String? nextPageToken;

  /// The nodes that match the request.
  core.List<SasPortalNode>? nodes;

  SasPortalListNodesResponse({
    this.nextPageToken,
    this.nodes,
  });

  SasPortalListNodesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          nodes: _json.containsKey('nodes')
              ? (_json['nodes'] as core.List)
                  .map<SasPortalNode>((value) => SasPortalNode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nodes != null)
          'nodes': nodes!.map((value) => value.toJson()).toList(),
      };
}

/// Request for MoveDeployment.
class SasPortalMoveDeploymentRequest {
  /// The name of the new parent resource node or customer to reparent the
  /// deployment under.
  ///
  /// Required.
  core.String? destination;

  SasPortalMoveDeploymentRequest({
    this.destination,
  });

  SasPortalMoveDeploymentRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// Request for MoveDevice.
class SasPortalMoveDeviceRequest {
  /// The name of the new parent resource node or customer to reparent the
  /// device under.
  ///
  /// Required.
  core.String? destination;

  SasPortalMoveDeviceRequest({
    this.destination,
  });

  SasPortalMoveDeviceRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// Request for MoveNode.
class SasPortalMoveNodeRequest {
  /// The name of the new parent resource node or customer to reparent the node
  /// under.
  ///
  /// Required.
  core.String? destination;

  SasPortalMoveNodeRequest({
    this.destination,
  });

  SasPortalMoveNodeRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// The Node.
class SasPortalNode {
  /// The node's display name.
  core.String? displayName;

  /// Resource name.
  ///
  /// Output only.
  core.String? name;

  /// User ids used by the devices belonging to this node.
  core.List<core.String>? sasUserIds;

  SasPortalNode({
    this.displayName,
    this.name,
    this.sasUserIds,
  });

  SasPortalNode.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class SasPortalOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  SasPortalStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? metadata;

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
  core.Map<core.String, core.Object>? response;

  SasPortalOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  SasPortalOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? SasPortalStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? (_json['response'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// Defines an access control policy to the resources.
class SasPortalPolicy {
  /// List of assignments
  core.List<SasPortalAssignment>? assignments;

  /// The etag is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the etag in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An etag is returned in the response to GetPolicy, and systems
  /// are expected to put that etag in the request to SetPolicy to ensure that
  /// their change will be applied to the same version of the policy. If no etag
  /// is provided in the call to GetPolicy, then the existing policy is
  /// overwritten blindly.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SasPortalPolicy({
    this.assignments,
    this.etag,
  });

  SasPortalPolicy.fromJson(core.Map _json)
      : this(
          assignments: _json.containsKey('assignments')
              ? (_json['assignments'] as core.List)
                  .map<SasPortalAssignment>((value) =>
                      SasPortalAssignment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignments != null)
          'assignments': assignments!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
      };
}

/// Request message for `SetPolicy` method.
class SasPortalSetPolicyRequest {
  /// Set the field as true when we would like to disable the onboarding
  /// notification.
  ///
  /// Optional.
  core.bool? disableNotification;

  /// The policy to be applied to the `resource`.
  ///
  /// Required.
  SasPortalPolicy? policy;

  /// The resource for which the policy is being specified.
  ///
  /// This policy replaces any existing policy.
  ///
  /// Required.
  core.String? resource;

  SasPortalSetPolicyRequest({
    this.disableNotification,
    this.policy,
    this.resource,
  });

  SasPortalSetPolicyRequest.fromJson(core.Map _json)
      : this(
          disableNotification: _json.containsKey('disableNotification')
              ? _json['disableNotification'] as core.bool
              : null,
          policy: _json.containsKey('policy')
              ? SasPortalPolicy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableNotification != null)
          'disableNotification': disableNotification!,
        if (policy != null) 'policy': policy!.toJson(),
        if (resource != null) 'resource': resource!,
      };
}

/// Request for SignDevice.
class SasPortalSignDeviceRequest {
  /// The device to sign.
  ///
  /// The device fields name, fcc_id and serial_number must be set. The user_id
  /// field must be set.
  ///
  /// Required.
  SasPortalDevice? device;

  SasPortalSignDeviceRequest({
    this.device,
  });

  SasPortalSignDeviceRequest.fromJson(core.Map _json)
      : this(
          device: _json.containsKey('device')
              ? SasPortalDevice.fromJson(
                  _json['device'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (device != null) 'device': device!.toJson(),
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class SasPortalStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  SasPortalStatus({
    this.code,
    this.details,
    this.message,
  });

  SasPortalStatus.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Request message for `TestPermissions` method.
class SasPortalTestPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  core.List<core.String>? permissions;

  /// The resource for which the permissions are being requested.
  ///
  /// Required.
  core.String? resource;

  SasPortalTestPermissionsRequest({
    this.permissions,
    this.resource,
  });

  SasPortalTestPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
        if (resource != null) 'resource': resource!,
      };
}

/// Response message for `TestPermissions` method.
class SasPortalTestPermissionsResponse {
  /// A set of permissions that the caller is allowed.
  core.List<core.String>? permissions;

  SasPortalTestPermissionsResponse({
    this.permissions,
  });

  SasPortalTestPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Request for UpdateSignedDevice.
class SasPortalUpdateSignedDeviceRequest {
  /// The JSON Web Token signed using a CPI private key.
  ///
  /// Payload must be the JSON encoding of the device. The user_id field must be
  /// set.
  ///
  /// Required.
  core.String? encodedDevice;
  core.List<core.int> get encodedDeviceAsBytes =>
      convert.base64.decode(encodedDevice!);

  set encodedDeviceAsBytes(core.List<core.int> _bytes) {
    encodedDevice =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Unique installer ID (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  SasPortalUpdateSignedDeviceRequest({
    this.encodedDevice,
    this.installerId,
  });

  SasPortalUpdateSignedDeviceRequest.fromJson(core.Map _json)
      : this(
          encodedDevice: _json.containsKey('encodedDevice')
              ? _json['encodedDevice'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedDevice != null) 'encodedDevice': encodedDevice!,
        if (installerId != null) 'installerId': installerId!,
      };
}

/// Request for ValidateInstaller.
class SasPortalValidateInstallerRequest {
  /// JSON Web Token signed using a CPI private key.
  ///
  /// Payload must include a "secret" claim whose value is the secret.
  ///
  /// Required.
  core.String? encodedSecret;

  /// Unique installer id (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  /// Secret returned by the GenerateSecret.
  ///
  /// Required.
  core.String? secret;

  SasPortalValidateInstallerRequest({
    this.encodedSecret,
    this.installerId,
    this.secret,
  });

  SasPortalValidateInstallerRequest.fromJson(core.Map _json)
      : this(
          encodedSecret: _json.containsKey('encodedSecret')
              ? _json['encodedSecret'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
              : null,
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedSecret != null) 'encodedSecret': encodedSecret!,
        if (installerId != null) 'installerId': installerId!,
        if (secret != null) 'secret': secret!,
      };
}

/// Response for ValidateInstaller.
class SasPortalValidateInstallerResponse {
  SasPortalValidateInstallerResponse();

  SasPortalValidateInstallerResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}
