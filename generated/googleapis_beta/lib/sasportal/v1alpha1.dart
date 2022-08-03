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

/// SAS Portal API - v1alpha1
///
/// For more information, see
/// <https://developers.google.com/spectrum-access-system/>
///
/// Create an instance of [SasportalApi] to access these resources:
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
library sasportal.v1alpha1;

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

class SasportalApi {
  /// Read, create, update, and delete your SAS Portal data.
  static const sasportalScope = 'https://www.googleapis.com/auth/sasportal';

  /// See your primary Google Account email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  CustomersResource get customers => CustomersResource(_requester);
  DeploymentsResource get deployments => DeploymentsResource(_requester);
  InstallerResource get installer => InstallerResource(_requester);
  NodesResource get nodes => NodesResource(_requester);
  PoliciesResource get policies => PoliciesResource(_requester);

  SasportalApi(http.Client client,
      {core.String rootUrl = 'https://sasportal.googleapis.com/',
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalCustomer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/customers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListCustomersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalCustomer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDeploymentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':signDevice';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':updateSigned';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListNodesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDeploymentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListNodesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':signDevice';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':updateSigned';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/installer:generateSecret';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalGenerateSecretResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/installer:validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalValidateInstallerResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDeploymentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':signDevice';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':updateSigned';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return SasPortalEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListNodesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDeployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDeploymentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices:createSigned';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalNode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SasPortalListNodesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/policies:get';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/policies:set';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/policies:test';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SasPortalTestPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Associates `members` with a `role`.
typedef SasPortalAssignment = $SasPortalAssignment;

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

  SasPortalChannelWithScore.fromJson(core.Map json_)
      : this(
          frequencyRange: json_.containsKey('frequencyRange')
              ? SasPortalFrequencyRange.fromJson(json_['frequencyRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frequencyRange != null) 'frequencyRange': frequencyRange!,
        if (score != null) 'score': score!,
      };
}

/// Request for CreateSignedDevice.
typedef SasPortalCreateSignedDeviceRequest
    = $SasPortalCreateSignedDeviceRequest;

/// Entity representing a SAS customer.
typedef SasPortalCustomer = $SasPortalCustomer;

/// The Deployment.
typedef SasPortalDeployment = $SasPortalDeployment;

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

  SasPortalDevice.fromJson(core.Map json_)
      : this(
          activeConfig: json_.containsKey('activeConfig')
              ? SasPortalDeviceConfig.fromJson(
                  json_['activeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          currentChannels: json_.containsKey('currentChannels')
              ? (json_['currentChannels'] as core.List)
                  .map((value) => SasPortalChannelWithScore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deviceMetadata: json_.containsKey('deviceMetadata')
              ? SasPortalDeviceMetadata.fromJson(json_['deviceMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          fccId:
              json_.containsKey('fccId') ? json_['fccId'] as core.String : null,
          grantRangeAllowlists: json_.containsKey('grantRangeAllowlists')
              ? (json_['grantRangeAllowlists'] as core.List)
                  .map((value) => SasPortalFrequencyRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          grants: json_.containsKey('grants')
              ? (json_['grants'] as core.List)
                  .map((value) => SasPortalDeviceGrant.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          preloadedConfig: json_.containsKey('preloadedConfig')
              ? SasPortalDeviceConfig.fromJson(json_['preloadedConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeConfig != null) 'activeConfig': activeConfig!,
        if (currentChannels != null) 'currentChannels': currentChannels!,
        if (deviceMetadata != null) 'deviceMetadata': deviceMetadata!,
        if (displayName != null) 'displayName': displayName!,
        if (fccId != null) 'fccId': fccId!,
        if (grantRangeAllowlists != null)
          'grantRangeAllowlists': grantRangeAllowlists!,
        if (grants != null) 'grants': grants!,
        if (name != null) 'name': name!,
        if (preloadedConfig != null) 'preloadedConfig': preloadedConfig!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (state != null) 'state': state!,
      };
}

/// Information about the device's air interface.
typedef SasPortalDeviceAirInterface = $SasPortalDeviceAirInterface;

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

  SasPortalDeviceConfig.fromJson(core.Map json_)
      : this(
          airInterface: json_.containsKey('airInterface')
              ? SasPortalDeviceAirInterface.fromJson(
                  json_['airInterface'] as core.Map<core.String, core.dynamic>)
              : null,
          callSign: json_.containsKey('callSign')
              ? json_['callSign'] as core.String
              : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          installationParams: json_.containsKey('installationParams')
              ? SasPortalInstallationParams.fromJson(json_['installationParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          isSigned: json_.containsKey('isSigned')
              ? json_['isSigned'] as core.bool
              : null,
          measurementCapabilities: json_.containsKey('measurementCapabilities')
              ? (json_['measurementCapabilities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          model: json_.containsKey('model')
              ? SasPortalDeviceModel.fromJson(
                  json_['model'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (airInterface != null) 'airInterface': airInterface!,
        if (callSign != null) 'callSign': callSign!,
        if (category != null) 'category': category!,
        if (installationParams != null)
          'installationParams': installationParams!,
        if (isSigned != null) 'isSigned': isSigned!,
        if (measurementCapabilities != null)
          'measurementCapabilities': measurementCapabilities!,
        if (model != null) 'model': model!,
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

  /// The transmit expiration time of the last heartbeat.
  core.String? lastHeartbeatTransmitExpireTime;

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
    this.lastHeartbeatTransmitExpireTime,
    this.maxEirp,
    this.moveList,
    this.state,
    this.suspensionReason,
  });

  SasPortalDeviceGrant.fromJson(core.Map json_)
      : this(
          channelType: json_.containsKey('channelType')
              ? json_['channelType'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          frequencyRange: json_.containsKey('frequencyRange')
              ? SasPortalFrequencyRange.fromJson(json_['frequencyRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          grantId: json_.containsKey('grantId')
              ? json_['grantId'] as core.String
              : null,
          lastHeartbeatTransmitExpireTime:
              json_.containsKey('lastHeartbeatTransmitExpireTime')
                  ? json_['lastHeartbeatTransmitExpireTime'] as core.String
                  : null,
          maxEirp: json_.containsKey('maxEirp')
              ? (json_['maxEirp'] as core.num).toDouble()
              : null,
          moveList: json_.containsKey('moveList')
              ? (json_['moveList'] as core.List)
                  .map((value) => SasPortalDpaMoveList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          suspensionReason: json_.containsKey('suspensionReason')
              ? (json_['suspensionReason'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelType != null) 'channelType': channelType!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (frequencyRange != null) 'frequencyRange': frequencyRange!,
        if (grantId != null) 'grantId': grantId!,
        if (lastHeartbeatTransmitExpireTime != null)
          'lastHeartbeatTransmitExpireTime': lastHeartbeatTransmitExpireTime!,
        if (maxEirp != null) 'maxEirp': maxEirp!,
        if (moveList != null) 'moveList': moveList!,
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

  /// Whether a CPI has validated to have coordinated with the National Quiet
  /// Zone office.
  ///
  /// Output only.
  core.bool? nrqzValidated;

  /// National Radio Quiet Zone validation info.
  ///
  /// Output only.
  SasPortalNrqzValidation? nrqzValidation;

  SasPortalDeviceMetadata({
    this.antennaModel,
    this.commonChannelGroup,
    this.interferenceCoordinationGroup,
    this.nrqzValidated,
    this.nrqzValidation,
  });

  SasPortalDeviceMetadata.fromJson(core.Map json_)
      : this(
          antennaModel: json_.containsKey('antennaModel')
              ? json_['antennaModel'] as core.String
              : null,
          commonChannelGroup: json_.containsKey('commonChannelGroup')
              ? json_['commonChannelGroup'] as core.String
              : null,
          interferenceCoordinationGroup:
              json_.containsKey('interferenceCoordinationGroup')
                  ? json_['interferenceCoordinationGroup'] as core.String
                  : null,
          nrqzValidated: json_.containsKey('nrqzValidated')
              ? json_['nrqzValidated'] as core.bool
              : null,
          nrqzValidation: json_.containsKey('nrqzValidation')
              ? SasPortalNrqzValidation.fromJson(json_['nrqzValidation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (antennaModel != null) 'antennaModel': antennaModel!,
        if (commonChannelGroup != null)
          'commonChannelGroup': commonChannelGroup!,
        if (interferenceCoordinationGroup != null)
          'interferenceCoordinationGroup': interferenceCoordinationGroup!,
        if (nrqzValidated != null) 'nrqzValidated': nrqzValidated!,
        if (nrqzValidation != null) 'nrqzValidation': nrqzValidation!,
      };
}

/// Information about the model of the device.
typedef SasPortalDeviceModel = $SasPortalDeviceModel;

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

  SasPortalDpaMoveList.fromJson(core.Map json_)
      : this(
          dpaId:
              json_.containsKey('dpaId') ? json_['dpaId'] as core.String : null,
          frequencyRange: json_.containsKey('frequencyRange')
              ? SasPortalFrequencyRange.fromJson(json_['frequencyRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dpaId != null) 'dpaId': dpaId!,
        if (frequencyRange != null) 'frequencyRange': frequencyRange!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef SasPortalEmpty = $Empty;

/// Frequency range from `low_frequency` to `high_frequency`.
typedef SasPortalFrequencyRange = $SasPortalFrequencyRange;

/// Request for GenerateSecret.
typedef SasPortalGenerateSecretRequest = $Empty;

/// Response for GenerateSecret.
typedef SasPortalGenerateSecretResponse = $SasPortalGenerateSecretResponse;

/// Request message for `GetPolicy` method.
typedef SasPortalGetPolicyRequest = $SasPortalGetPolicyRequest;

/// Information about the device installation parameters.
typedef SasPortalInstallationParams = $SasPortalInstallationParams;

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

  SasPortalListCustomersResponse.fromJson(core.Map json_)
      : this(
          customers: json_.containsKey('customers')
              ? (json_['customers'] as core.List)
                  .map((value) => SasPortalCustomer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customers != null) 'customers': customers!,
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

  SasPortalListDeploymentsResponse.fromJson(core.Map json_)
      : this(
          deployments: json_.containsKey('deployments')
              ? (json_['deployments'] as core.List)
                  .map((value) => SasPortalDeployment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployments != null) 'deployments': deployments!,
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

  SasPortalListDevicesResponse.fromJson(core.Map json_)
      : this(
          devices: json_.containsKey('devices')
              ? (json_['devices'] as core.List)
                  .map((value) => SasPortalDevice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devices != null) 'devices': devices!,
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

  SasPortalListNodesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nodes: json_.containsKey('nodes')
              ? (json_['nodes'] as core.List)
                  .map((value) => SasPortalNode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nodes != null) 'nodes': nodes!,
      };
}

/// Request for MoveDeployment.
typedef SasPortalMoveDeploymentRequest = $SasPortalMoveDeploymentRequest;

/// Request for MoveDevice.
typedef SasPortalMoveDeviceRequest = $SasPortalMoveDeviceRequest;

/// Request for MoveNode.
typedef SasPortalMoveNodeRequest = $SasPortalMoveNodeRequest;

/// The Node.
typedef SasPortalNode = $SasPortalNode;

/// Information about National Radio Quiet Zone validation.
typedef SasPortalNrqzValidation = $SasPortalNrqzValidation;

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

  SasPortalOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  SasPortalOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? SasPortalStatus.fromJson(
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

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  SasPortalPolicy({
    this.assignments,
    this.etag,
  });

  SasPortalPolicy.fromJson(core.Map json_)
      : this(
          assignments: json_.containsKey('assignments')
              ? (json_['assignments'] as core.List)
                  .map((value) => SasPortalAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignments != null) 'assignments': assignments!,
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

  SasPortalSetPolicyRequest.fromJson(core.Map json_)
      : this(
          disableNotification: json_.containsKey('disableNotification')
              ? json_['disableNotification'] as core.bool
              : null,
          policy: json_.containsKey('policy')
              ? SasPortalPolicy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableNotification != null)
          'disableNotification': disableNotification!,
        if (policy != null) 'policy': policy!,
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

  SasPortalSignDeviceRequest.fromJson(core.Map json_)
      : this(
          device: json_.containsKey('device')
              ? SasPortalDevice.fromJson(
                  json_['device'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (device != null) 'device': device!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef SasPortalStatus = $Status;

/// Request message for `TestPermissions` method.
typedef SasPortalTestPermissionsRequest = $SasPortalTestPermissionsRequest;

/// Response message for `TestPermissions` method.
typedef SasPortalTestPermissionsResponse = $SasPortalTestPermissionsResponse;

/// Request for UpdateSignedDevice.
typedef SasPortalUpdateSignedDeviceRequest
    = $SasPortalUpdateSignedDeviceRequest;

/// Request for ValidateInstaller.
typedef SasPortalValidateInstallerRequest = $SasPortalValidateInstallerRequest;

/// Response for ValidateInstaller.
typedef SasPortalValidateInstallerResponse = $Empty;
