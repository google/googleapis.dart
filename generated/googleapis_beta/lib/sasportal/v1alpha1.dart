// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis_beta.sasportal.v1alpha1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client sasportal/v1alpha1';

class SasportalApi {
  /// View your email address
  static const UserinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  CustomersResourceApi get customers => CustomersResourceApi(_requester);
  DeploymentsResourceApi get deployments => DeploymentsResourceApi(_requester);
  InstallerResourceApi get installer => InstallerResourceApi(_requester);
  NodesResourceApi get nodes => NodesResourceApi(_requester);
  PoliciesResourceApi get policies => PoliciesResourceApi(_requester);

  SasportalApi(http.Client client,
      {core.String rootUrl = 'https://sasportal.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class CustomersResourceApi {
  final commons.ApiRequester _requester;

  CustomersDeploymentsResourceApi get deployments =>
      CustomersDeploymentsResourceApi(_requester);
  CustomersDevicesResourceApi get devices =>
      CustomersDevicesResourceApi(_requester);
  CustomersNodesResourceApi get nodes => CustomersNodesResourceApi(_requester);

  CustomersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns a requested customer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the customer.
  /// Value must have pattern "^customers/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalCustomer.fromJson(data));
  }

  /// Returns a list of requested customers.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of customers to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListCustomers method that indicates where this listing should continue
  /// from.
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/customers';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalListCustomersResponse.fromJson(data));
  }

  /// Updates an existing customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the customer.
  /// Value must have pattern "^customers/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalCustomer.fromJson(data));
  }
}

class CustomersDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  CustomersDeploymentsDevicesResourceApi get devices =>
      CustomersDeploymentsDevicesResourceApi(_requester);

  CustomersDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Moves a deployment under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment to move.
  /// Value must have pattern "^customers/[^/]+/deployments/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name') + ':move';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalOperation.fromJson(data));
  }
}

class CustomersDeploymentsDevicesResourceApi {
  final commons.ApiRequester _requester;

  CustomersDeploymentsDevicesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^customers/[^/]+/deployments/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^customers/[^/]+/deployments/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices:createSigned';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^customers/[^/]+/deployments/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial_number of the device. The filter is case insensitive.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range [0, 1000].
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
    core.String pageToken,
    core.String filter,
    core.int pageSize,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalListDevicesResponse.fromJson(data));
  }
}

class CustomersDevicesResourceApi {
  final commons.ApiRequester _requester;

  CustomersDevicesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device under a node or customer. Returned devices are unordered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^customers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalBulkCreateDeviceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalBulkCreateDeviceResponse> bulk(
    SasPortalBulkCreateDeviceRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices:bulk';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalBulkCreateDeviceResponse.fromJson(data));
  }

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^customers/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^customers/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices:createSigned';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Deletes a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern "^customers/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalEmpty.fromJson(data));
  }

  /// Gets details about a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern "^customers/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^customers/[^/]+$".
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range [0, 1000].
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial_number of the device. The filter is case insensitive.
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
    core.int pageSize,
    core.String filter,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalListDevicesResponse.fromJson(data));
  }

  /// Moves a device under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to move.
  /// Value must have pattern "^customers/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name') + ':move';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalOperation.fromJson(data));
  }

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern "^customers/[^/]+/devices/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Signs a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern "^customers/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':signDevice';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalEmpty.fromJson(data));
  }

  /// Updates a signed device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to update.
  /// Value must have pattern "^customers/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':updateSigned';

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }
}

class CustomersNodesResourceApi {
  final commons.ApiRequester _requester;

  CustomersNodesNodesResourceApi get nodes =>
      CustomersNodesNodesResourceApi(_requester);

  CustomersNodesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the node is to be
  /// created.
  /// Value must have pattern "^customers/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/nodes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }

  /// Deletes a node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern "^customers/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalEmpty.fromJson(data));
  }

  /// Returns a requested node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern "^customers/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1".
  /// Value must have pattern "^customers/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListNodes method that indicates where this listing should continue from.
  ///
  /// [pageSize] - The maximum number of nodes to return in the response.
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
    core.String pageToken,
    core.int pageSize,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/nodes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalListNodesResponse.fromJson(data));
  }

  /// Moves a node under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node to move.
  /// Value must have pattern "^customers/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name') + ':move';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalOperation.fromJson(data));
  }

  /// Updates an existing node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name.
  /// Value must have pattern "^customers/[^/]+/nodes/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }
}

class CustomersNodesNodesResourceApi {
  final commons.ApiRequester _requester;

  CustomersNodesNodesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the node is to be
  /// created.
  /// Value must have pattern "^customers/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/nodes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1".
  /// Value must have pattern "^customers/[^/]+/nodes/[^/]+$".
  ///
  /// [pageSize] - The maximum number of nodes to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListNodes method that indicates where this listing should continue from.
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/nodes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalListNodesResponse.fromJson(data));
  }
}

class DeploymentsResourceApi {
  final commons.ApiRequester _requester;

  DeploymentsDevicesResourceApi get devices =>
      DeploymentsDevicesResourceApi(_requester);

  DeploymentsResourceApi(commons.ApiRequester client) : _requester = client;
}

class DeploymentsDevicesResourceApi {
  final commons.ApiRequester _requester;

  DeploymentsDevicesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern "^deployments/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalEmpty.fromJson(data));
  }

  /// Gets details about a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern "^deployments/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Moves a device under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to move.
  /// Value must have pattern "^deployments/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name') + ':move';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalOperation.fromJson(data));
  }

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern "^deployments/[^/]+/devices/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Signs a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern "^deployments/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':signDevice';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalEmpty.fromJson(data));
  }

  /// Updates a signed device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to update.
  /// Value must have pattern "^deployments/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':updateSigned';

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }
}

class InstallerResourceApi {
  final commons.ApiRequester _requester;

  InstallerResourceApi(commons.ApiRequester client) : _requester = client;

  /// Generates a secret to be used with the ValidateInstaller method
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/installer:generateSecret';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalGenerateSecretResponse.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/installer:validate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalValidateInstallerResponse.fromJson(data));
  }
}

class NodesResourceApi {
  final commons.ApiRequester _requester;

  NodesDeploymentsResourceApi get deployments =>
      NodesDeploymentsResourceApi(_requester);
  NodesDevicesResourceApi get devices => NodesDevicesResourceApi(_requester);
  NodesNodesResourceApi get nodes => NodesNodesResourceApi(_requester);

  NodesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns a requested node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern "^nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }
}

class NodesDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  NodesDeploymentsDevicesResourceApi get devices =>
      NodesDeploymentsDevicesResourceApi(_requester);

  NodesDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Moves a deployment under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment to move.
  /// Value must have pattern "^nodes/[^/]+/deployments/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name') + ':move';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalOperation.fromJson(data));
  }
}

class NodesDeploymentsDevicesResourceApi {
  final commons.ApiRequester _requester;

  NodesDeploymentsDevicesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+/deployments/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+/deployments/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices:createSigned';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+/deployments/[^/]+$".
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial_number of the device. The filter is case insensitive.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range [0, 1000].
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
    core.String filter,
    core.String pageToken,
    core.int pageSize,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalListDevicesResponse.fromJson(data));
  }
}

class NodesDevicesResourceApi {
  final commons.ApiRequester _requester;

  NodesDevicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a device under a node or customer. Returned devices are unordered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalBulkCreateDeviceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalBulkCreateDeviceResponse> bulk(
    SasPortalBulkCreateDeviceRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices:bulk';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalBulkCreateDeviceResponse.fromJson(data));
  }

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices:createSigned';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Deletes a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern "^nodes/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalEmpty.fromJson(data));
  }

  /// Gets details about a device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device.
  /// Value must have pattern "^nodes/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+$".
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range [0, 1000].
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial_number of the device. The filter is case insensitive.
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
    core.int pageSize,
    core.String pageToken,
    core.String filter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalListDevicesResponse.fromJson(data));
  }

  /// Moves a device under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to move.
  /// Value must have pattern "^nodes/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name') + ':move';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalOperation.fromJson(data));
  }

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern "^nodes/[^/]+/devices/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Signs a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path name.
  /// Value must have pattern "^nodes/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':signDevice';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalEmpty.fromJson(data));
  }

  /// Updates a signed device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to update.
  /// Value must have pattern "^nodes/[^/]+/devices/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':updateSigned';

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }
}

class NodesNodesResourceApi {
  final commons.ApiRequester _requester;

  NodesNodesDevicesResourceApi get devices =>
      NodesNodesDevicesResourceApi(_requester);
  NodesNodesNodesResourceApi get nodes =>
      NodesNodesNodesResourceApi(_requester);

  NodesNodesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the node is to be
  /// created.
  /// Value must have pattern "^nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/nodes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }

  /// Deletes a node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalEmpty.fromJson(data));
  }

  /// Returns a requested node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1".
  /// Value must have pattern "^nodes/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListNodes method that indicates where this listing should continue from.
  ///
  /// [pageSize] - The maximum number of nodes to return in the response.
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
    core.String pageToken,
    core.int pageSize,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/nodes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalListNodesResponse.fromJson(data));
  }

  /// Moves a node under another node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node to move.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name') + ':move';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalOperation.fromJson(data));
  }

  /// Updates an existing node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }
}

class NodesNodesDevicesResourceApi {
  final commons.ApiRequester _requester;

  NodesNodesDevicesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a device under a node or customer. Returned devices are unordered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SasPortalBulkCreateDeviceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SasPortalBulkCreateDeviceResponse> bulk(
    SasPortalBulkCreateDeviceRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices:bulk';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalBulkCreateDeviceResponse.fromJson(data));
  }

  /// Creates a device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Creates a signed device under a node or customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices:createSigned';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalDevice.fromJson(data));
  }

  /// Lists devices under a node or customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListDevices that indicates where this listing should continue from.
  ///
  /// [pageSize] - The maximum number of devices to return in the response. If
  /// empty or zero, all devices will be listed. Must be in the range [0, 1000].
  ///
  /// [filter] - The filter expression. The filter should have one of the
  /// following formats: "sn=123454" or "display_name=MyDevice". sn corresponds
  /// to serial_number of the device. The filter is case insensitive.
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
    core.String pageToken,
    core.int pageSize,
    core.String filter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/devices';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalListDevicesResponse.fromJson(data));
  }
}

class NodesNodesNodesResourceApi {
  final commons.ApiRequester _requester;

  NodesNodesNodesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the node is to be
  /// created.
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/nodes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalNode.fromJson(data));
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, for example, "nodes/1".
  /// Value must have pattern "^nodes/[^/]+/nodes/[^/]+$".
  ///
  /// [pageSize] - The maximum number of nodes to return in the response.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListNodes method that indicates where this listing should continue from.
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/nodes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalListNodesResponse.fromJson(data));
  }
}

class PoliciesResourceApi {
  final commons.ApiRequester _requester;

  PoliciesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/policies:get';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalPolicy.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/policies:set';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SasPortalPolicy.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha1/policies:test';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SasPortalTestPermissionsResponse.fromJson(data));
  }
}

/// Associates `members` with a `role`.
class SasPortalAssignment {
  /// The identities the role is assigned to. It can have the following values:
  /// * `{user_email}`: An email address that represents a specific Google
  /// account. For example: `alice@gmail.com`. * `{group_email}`: An email
  /// address that represents a Google group. For example, `viewers@gmail.com`.
  core.List<core.String> members;

  /// Required. Role that is assigned to `members`.
  core.String role;

  SasPortalAssignment();

  SasPortalAssignment.fromJson(core.Map _json) {
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('role')) {
      role = _json['role'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// Request for BulkCreateDevice method.
class SasPortalBulkCreateDeviceRequest {
  /// Required. A csv with each row representing a [device]. Each row must
  /// conform to the regulations described on CreateDeviceRequest's device
  /// field.
  core.String csv;

  SasPortalBulkCreateDeviceRequest();

  SasPortalBulkCreateDeviceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('csv')) {
      csv = _json['csv'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (csv != null) {
      _json['csv'] = csv;
    }
    return _json;
  }
}

/// Response for BulkCreateDevice method.
class SasPortalBulkCreateDeviceResponse {
  /// Required. The devices that were imported.
  core.List<SasPortalDevice> devices;

  SasPortalBulkCreateDeviceResponse();

  SasPortalBulkCreateDeviceResponse.fromJson(core.Map _json) {
    if (_json.containsKey('devices')) {
      devices = (_json['devices'] as core.List)
          .map<SasPortalDevice>((value) => SasPortalDevice.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (devices != null) {
      _json['devices'] = devices.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request for CreateSignedDevice method.
class SasPortalCreateSignedDeviceRequest {
  /// Required. JSON Web Token signed using a CPI private key. Payload must be
  /// the JSON encoding of the [Device]. The user_id field must be set.
  core.String encodedDevice;
  core.List<core.int> get encodedDeviceAsBytes =>
      convert.base64.decode(encodedDevice);

  set encodedDeviceAsBytes(core.List<core.int> _bytes) {
    encodedDevice =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Required. Unique installer id (cpiId) from the Certified Professional
  /// Installers database.
  core.String installerId;

  SasPortalCreateSignedDeviceRequest();

  SasPortalCreateSignedDeviceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('encodedDevice')) {
      encodedDevice = _json['encodedDevice'];
    }
    if (_json.containsKey('installerId')) {
      installerId = _json['installerId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (encodedDevice != null) {
      _json['encodedDevice'] = encodedDevice;
    }
    if (installerId != null) {
      _json['installerId'] = installerId;
    }
    return _json;
  }
}

/// Entity representing a SAS customer.
class SasPortalCustomer {
  /// Required. Name of the organization that the customer entity represents.
  core.String displayName;

  /// Output only. Resource name of the customer.
  core.String name;

  /// User IDs used by the devices belonging to this customer.
  core.List<core.String> sasUserIds;

  SasPortalCustomer();

  SasPortalCustomer.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('sasUserIds')) {
      sasUserIds = (_json['sasUserIds'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (sasUserIds != null) {
      _json['sasUserIds'] = sasUserIds;
    }
    return _json;
  }
}

class SasPortalDevice {
  /// Output only. Current configuration of the device as registered to the SAS.
  SasPortalDeviceConfig activeConfig;

  /// Device parameters that can be overridden by both SAS Portal and SAS
  /// registration requests.
  SasPortalDeviceMetadata deviceMetadata;

  /// Device display name.
  core.String displayName;

  /// The FCC identifier of the device.
  core.String fccId;

  /// Output only. Grants held by the device.
  core.List<SasPortalDeviceGrant> grants;

  /// Output only. The resource path name.
  core.String name;

  /// Configuration of the device, as specified via SAS Portal API.
  SasPortalDeviceConfig preloadedConfig;

  /// A serial number assigned to the device by the device manufacturer.
  core.String serialNumber;

  /// Output only. Device state.
  /// Possible string values are:
  /// - "DEVICE_STATE_UNSPECIFIED" : Unspecified state.
  /// - "RESERVED" : Device created in the SAS Portal, however, not yet
  /// registered with SAS.
  /// - "REGISTERED" : Device registered with SAS.
  /// - "DEREGISTERED" : Device de-registered with SAS.
  core.String state;

  SasPortalDevice();

  SasPortalDevice.fromJson(core.Map _json) {
    if (_json.containsKey('activeConfig')) {
      activeConfig = SasPortalDeviceConfig.fromJson(_json['activeConfig']);
    }
    if (_json.containsKey('deviceMetadata')) {
      deviceMetadata =
          SasPortalDeviceMetadata.fromJson(_json['deviceMetadata']);
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('fccId')) {
      fccId = _json['fccId'];
    }
    if (_json.containsKey('grants')) {
      grants = (_json['grants'] as core.List)
          .map<SasPortalDeviceGrant>(
              (value) => SasPortalDeviceGrant.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('preloadedConfig')) {
      preloadedConfig =
          SasPortalDeviceConfig.fromJson(_json['preloadedConfig']);
    }
    if (_json.containsKey('serialNumber')) {
      serialNumber = _json['serialNumber'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (activeConfig != null) {
      _json['activeConfig'] = activeConfig.toJson();
    }
    if (deviceMetadata != null) {
      _json['deviceMetadata'] = deviceMetadata.toJson();
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (fccId != null) {
      _json['fccId'] = fccId;
    }
    if (grants != null) {
      _json['grants'] = grants.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (preloadedConfig != null) {
      _json['preloadedConfig'] = preloadedConfig.toJson();
    }
    if (serialNumber != null) {
      _json['serialNumber'] = serialNumber;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// Information about the device's air interface.
class SasPortalDeviceAirInterface {
  /// This field specifies the radio access technology that is used for the
  /// CBSD. Conditional
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
  core.String radioTechnology;

  /// This field is related to the radioTechnology field and provides the air
  /// interface specification that the CBSD is compliant with at the time of
  /// registration. Optional
  core.String supportedSpec;

  SasPortalDeviceAirInterface();

  SasPortalDeviceAirInterface.fromJson(core.Map _json) {
    if (_json.containsKey('radioTechnology')) {
      radioTechnology = _json['radioTechnology'];
    }
    if (_json.containsKey('supportedSpec')) {
      supportedSpec = _json['supportedSpec'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (radioTechnology != null) {
      _json['radioTechnology'] = radioTechnology;
    }
    if (supportedSpec != null) {
      _json['supportedSpec'] = supportedSpec;
    }
    return _json;
  }
}

/// Information about the device configuration.
class SasPortalDeviceConfig {
  /// Information about this device's air interface.
  SasPortalDeviceAirInterface airInterface;

  /// The call sign of the device operator.
  core.String callSign;

  /// FCC category of the device.
  /// Possible string values are:
  /// - "DEVICE_CATEGORY_UNSPECIFIED" : Unspecified device category.
  /// - "DEVICE_CATEGORY_A" : Category A.
  /// - "DEVICE_CATEGORY_B" : Category B.
  core.String category;

  /// Installation parameters for the device.
  SasPortalInstallationParams installationParams;

  /// Output-only. Whether the configuration has been signed by a CPI.
  core.bool isSigned;

  /// Measurement reporting capabilities of the device.
  core.List<core.String> measurementCapabilities;

  /// Information about this device model.
  SasPortalDeviceModel model;

  /// State of the configuration.
  /// Possible string values are:
  /// - "DEVICE_CONFIG_STATE_UNSPECIFIED"
  /// - "DRAFT"
  /// - "FINAL"
  core.String state;

  /// Output-only. The last time the device configuration was edited.
  core.String updateTime;

  /// The identifier of a device user.
  core.String userId;

  SasPortalDeviceConfig();

  SasPortalDeviceConfig.fromJson(core.Map _json) {
    if (_json.containsKey('airInterface')) {
      airInterface =
          SasPortalDeviceAirInterface.fromJson(_json['airInterface']);
    }
    if (_json.containsKey('callSign')) {
      callSign = _json['callSign'];
    }
    if (_json.containsKey('category')) {
      category = _json['category'];
    }
    if (_json.containsKey('installationParams')) {
      installationParams =
          SasPortalInstallationParams.fromJson(_json['installationParams']);
    }
    if (_json.containsKey('isSigned')) {
      isSigned = _json['isSigned'];
    }
    if (_json.containsKey('measurementCapabilities')) {
      measurementCapabilities =
          (_json['measurementCapabilities'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('model')) {
      model = SasPortalDeviceModel.fromJson(_json['model']);
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
    if (_json.containsKey('userId')) {
      userId = _json['userId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (airInterface != null) {
      _json['airInterface'] = airInterface.toJson();
    }
    if (callSign != null) {
      _json['callSign'] = callSign;
    }
    if (category != null) {
      _json['category'] = category;
    }
    if (installationParams != null) {
      _json['installationParams'] = installationParams.toJson();
    }
    if (isSigned != null) {
      _json['isSigned'] = isSigned;
    }
    if (measurementCapabilities != null) {
      _json['measurementCapabilities'] = measurementCapabilities;
    }
    if (model != null) {
      _json['model'] = model.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (userId != null) {
      _json['userId'] = userId;
    }
    return _json;
  }
}

/// Device grant. It is an authorization provided by the Spectrum Access System
/// to a device to transmit using specified operating parameters after a
/// successful heartbeat by the device.
class SasPortalDeviceGrant {
  /// Type of channel used.
  /// Possible string values are:
  /// - "CHANNEL_TYPE_UNSPECIFIED"
  /// - "CHANNEL_TYPE_GAA"
  /// - "CHANNEL_TYPE_PAL"
  core.String channelType;

  /// The expiration time of the grant.
  core.String expireTime;

  /// The transmission frequency range.
  SasPortalFrequencyRange frequencyRange;

  /// Grant Id.
  core.String grantId;

  /// Maximum Equivalent Isotropically Radiated Power (EIRP) permitted by the
  /// grant. The maximum EIRP is in units of dBm/MHz. The value of maxEirp
  /// represents the average (RMS) EIRP that would be measured by the procedure
  /// defined in FCC part 96.41(e)(3).
  core.double maxEirp;

  /// The DPA move lists on which this grant appears.
  core.List<SasPortalDpaMoveList> moveList;

  /// State of the grant.
  /// Possible string values are:
  /// - "GRANT_STATE_UNSPECIFIED"
  /// - "GRANT_STATE_GRANTED" : The grant has been granted but the device is not
  /// heartbeating on it.
  /// - "GRANT_STATE_TERMINATED" : The grant has been terminated by the SAS.
  /// - "GRANT_STATE_SUSPENDED" : The grant has been suspended by the SAS.
  /// - "GRANT_STATE_AUTHORIZED" : The device is currently transmitting.
  /// - "GRANT_STATE_EXPIRED" : The grant has expired.
  core.String state;

  /// If the grant is suspended, the reason(s) for suspension.
  core.List<core.String> suspensionReason;

  SasPortalDeviceGrant();

  SasPortalDeviceGrant.fromJson(core.Map _json) {
    if (_json.containsKey('channelType')) {
      channelType = _json['channelType'];
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'];
    }
    if (_json.containsKey('frequencyRange')) {
      frequencyRange =
          SasPortalFrequencyRange.fromJson(_json['frequencyRange']);
    }
    if (_json.containsKey('grantId')) {
      grantId = _json['grantId'];
    }
    if (_json.containsKey('maxEirp')) {
      maxEirp = _json['maxEirp'].toDouble();
    }
    if (_json.containsKey('moveList')) {
      moveList = (_json['moveList'] as core.List)
          .map<SasPortalDpaMoveList>(
              (value) => SasPortalDpaMoveList.fromJson(value))
          .toList();
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('suspensionReason')) {
      suspensionReason =
          (_json['suspensionReason'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (channelType != null) {
      _json['channelType'] = channelType;
    }
    if (expireTime != null) {
      _json['expireTime'] = expireTime;
    }
    if (frequencyRange != null) {
      _json['frequencyRange'] = frequencyRange.toJson();
    }
    if (grantId != null) {
      _json['grantId'] = grantId;
    }
    if (maxEirp != null) {
      _json['maxEirp'] = maxEirp;
    }
    if (moveList != null) {
      _json['moveList'] = moveList.map((value) => value.toJson()).toList();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (suspensionReason != null) {
      _json['suspensionReason'] = suspensionReason;
    }
    return _json;
  }
}

/// Device data overridable by both SAS Portal and registration requests.
class SasPortalDeviceMetadata {
  SasPortalDeviceMetadata();

  SasPortalDeviceMetadata.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Information about the model of the device.
class SasPortalDeviceModel {
  /// The firmware version of the device.
  core.String firmwareVersion;

  /// The hardware version of the device.
  core.String hardwareVersion;

  /// The name of the device model.
  core.String name;

  /// The software version of the device.
  core.String softwareVersion;

  /// The name of the device vendor.
  core.String vendor;

  SasPortalDeviceModel();

  SasPortalDeviceModel.fromJson(core.Map _json) {
    if (_json.containsKey('firmwareVersion')) {
      firmwareVersion = _json['firmwareVersion'];
    }
    if (_json.containsKey('hardwareVersion')) {
      hardwareVersion = _json['hardwareVersion'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('softwareVersion')) {
      softwareVersion = _json['softwareVersion'];
    }
    if (_json.containsKey('vendor')) {
      vendor = _json['vendor'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (firmwareVersion != null) {
      _json['firmwareVersion'] = firmwareVersion;
    }
    if (hardwareVersion != null) {
      _json['hardwareVersion'] = hardwareVersion;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (softwareVersion != null) {
      _json['softwareVersion'] = softwareVersion;
    }
    if (vendor != null) {
      _json['vendor'] = vendor;
    }
    return _json;
  }
}

/// An entry in a DPA's move list.
class SasPortalDpaMoveList {
  /// The ID of the DPA.
  core.String dpaId;

  /// The frequency range that the move list affects.
  SasPortalFrequencyRange frequencyRange;

  SasPortalDpaMoveList();

  SasPortalDpaMoveList.fromJson(core.Map _json) {
    if (_json.containsKey('dpaId')) {
      dpaId = _json['dpaId'];
    }
    if (_json.containsKey('frequencyRange')) {
      frequencyRange =
          SasPortalFrequencyRange.fromJson(_json['frequencyRange']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dpaId != null) {
      _json['dpaId'] = dpaId;
    }
    if (frequencyRange != null) {
      _json['frequencyRange'] = frequencyRange.toJson();
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class SasPortalEmpty {
  SasPortalEmpty();

  SasPortalEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Frequency range from `low_frequency` to `high_frequency`.
class SasPortalFrequencyRange {
  /// The highest frequency of the frequency range in MHz.
  core.double highFrequencyMhz;

  /// The lowest frequency of the frequency range in MHz.
  core.double lowFrequencyMhz;

  SasPortalFrequencyRange();

  SasPortalFrequencyRange.fromJson(core.Map _json) {
    if (_json.containsKey('highFrequencyMhz')) {
      highFrequencyMhz = _json['highFrequencyMhz'].toDouble();
    }
    if (_json.containsKey('lowFrequencyMhz')) {
      lowFrequencyMhz = _json['lowFrequencyMhz'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (highFrequencyMhz != null) {
      _json['highFrequencyMhz'] = highFrequencyMhz;
    }
    if (lowFrequencyMhz != null) {
      _json['lowFrequencyMhz'] = lowFrequencyMhz;
    }
    return _json;
  }
}

/// Request for GenerateSecret method]
/// [spectrum.sas.portal.v1alpha1.DeviceManager.GenerateSecret].
class SasPortalGenerateSecretRequest {
  SasPortalGenerateSecretRequest();

  SasPortalGenerateSecretRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Response for GenerateSecret method.
class SasPortalGenerateSecretResponse {
  /// The secret generated by the string and used by [ValidateInstaller] method.
  core.String secret;

  SasPortalGenerateSecretResponse();

  SasPortalGenerateSecretResponse.fromJson(core.Map _json) {
    if (_json.containsKey('secret')) {
      secret = _json['secret'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (secret != null) {
      _json['secret'] = secret;
    }
    return _json;
  }
}

/// Request message for `GetPolicy` method.
class SasPortalGetPolicyRequest {
  /// Required. The resource for which the policy is being requested.
  core.String resource;

  SasPortalGetPolicyRequest();

  SasPortalGetPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('resource')) {
      resource = _json['resource'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (resource != null) {
      _json['resource'] = resource;
    }
    return _json;
  }
}

/// Information about the device installation parameters.
class SasPortalInstallationParams {
  /// Boresight direction of the horizontal plane of the antenna in degrees with
  /// respect to true north. The value of this parameter is an integer with a
  /// value between 0 and 359 inclusive. A value of 0 degrees means true north;
  /// a value of 90 degrees means east. This parameter is optional for Category
  /// A devices and conditional for Category B devices.
  core.int antennaAzimuth;

  /// 3-dB antenna beamwidth of the antenna in the horizontal-plane in degrees.
  /// This parameter is an unsigned integer having a value between 0 and 360
  /// (degrees) inclusive; it is optional for Category A devices and conditional
  /// for Category B devices.
  core.int antennaBeamwidth;

  /// Antenna downtilt in degrees and is an integer with a value between -90 and
  /// +90 inclusive; a negative value means the antenna is tilted up (above
  /// horizontal). This parameter is optional for Category A devices and
  /// conditional for Category B devices.
  core.int antennaDowntilt;

  /// Peak antenna gain in dBi. This parameter is an integer with a value
  /// between -127 and +128 (dBi) inclusive.
  core.int antennaGain;

  /// If an external antenna is used, the antenna model is optionally provided
  /// in this field. The string has a maximum length of 128 octets.
  core.String antennaModel;

  /// If present, this parameter specifies whether the CBSD is a CPE-CBSD or
  /// not.
  core.bool cpeCbsdIndication;

  /// This parameter is the maximum device EIRP in units of dBm/10MHz and is an
  /// integer with a value between -127 and +47 (dBm/10 MHz) inclusive. If not
  /// included, SAS interprets it as maximum allowable EIRP in units of
  /// dBm/10MHz for device category.
  core.int eirpCapability;

  /// Device antenna height in meters. When the heightType parameter value is
  /// "AGL", the antenna height should be given relative to ground level. When
  /// the heightType parameter value is "AMSL", it is given with respect to
  /// WGS84 datum.
  core.double height;

  /// Specifies how the height is measured.
  /// Possible string values are:
  /// - "HEIGHT_TYPE_UNSPECIFIED" : Unspecified height type.
  /// - "HEIGHT_TYPE_AGL" : AGL height is measured relative to the ground level.
  /// - "HEIGHT_TYPE_AMSL" : AMSL height is measured relative to the mean sea
  /// level.
  core.String heightType;

  /// A positive number in meters to indicate accuracy of the device antenna
  /// horizontal location. This optional parameter should only be present if its
  /// value is less than the FCC requirement of 50 meters.
  core.double horizontalAccuracy;

  /// Whether the device antenna is indoor or not. True: indoor. False: outdoor.
  core.bool indoorDeployment;

  /// Latitude of the device antenna location in degrees relative to the WGS 84
  /// datum. The allowed range is from -90.000000 to +90.000000. Positive values
  /// represent latitudes north of the equator; negative values south of the
  /// equator.
  core.double latitude;

  /// Longitude of the device antenna location. in degrees relative to the WGS
  /// 84 datum. The allowed range is from -180.000000 to +180.000000. Positive
  /// values represent longitudes east of the prime meridian; negative values
  /// west of the prime meridian.
  core.double longitude;

  /// A positive number in meters to indicate accuracy of the device antenna
  /// vertical location. This optional parameter should only be present if its
  /// value is less than the FCC requirement of 3 meters.
  core.double verticalAccuracy;

  SasPortalInstallationParams();

  SasPortalInstallationParams.fromJson(core.Map _json) {
    if (_json.containsKey('antennaAzimuth')) {
      antennaAzimuth = _json['antennaAzimuth'];
    }
    if (_json.containsKey('antennaBeamwidth')) {
      antennaBeamwidth = _json['antennaBeamwidth'];
    }
    if (_json.containsKey('antennaDowntilt')) {
      antennaDowntilt = _json['antennaDowntilt'];
    }
    if (_json.containsKey('antennaGain')) {
      antennaGain = _json['antennaGain'];
    }
    if (_json.containsKey('antennaModel')) {
      antennaModel = _json['antennaModel'];
    }
    if (_json.containsKey('cpeCbsdIndication')) {
      cpeCbsdIndication = _json['cpeCbsdIndication'];
    }
    if (_json.containsKey('eirpCapability')) {
      eirpCapability = _json['eirpCapability'];
    }
    if (_json.containsKey('height')) {
      height = _json['height'].toDouble();
    }
    if (_json.containsKey('heightType')) {
      heightType = _json['heightType'];
    }
    if (_json.containsKey('horizontalAccuracy')) {
      horizontalAccuracy = _json['horizontalAccuracy'].toDouble();
    }
    if (_json.containsKey('indoorDeployment')) {
      indoorDeployment = _json['indoorDeployment'];
    }
    if (_json.containsKey('latitude')) {
      latitude = _json['latitude'].toDouble();
    }
    if (_json.containsKey('longitude')) {
      longitude = _json['longitude'].toDouble();
    }
    if (_json.containsKey('verticalAccuracy')) {
      verticalAccuracy = _json['verticalAccuracy'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (antennaAzimuth != null) {
      _json['antennaAzimuth'] = antennaAzimuth;
    }
    if (antennaBeamwidth != null) {
      _json['antennaBeamwidth'] = antennaBeamwidth;
    }
    if (antennaDowntilt != null) {
      _json['antennaDowntilt'] = antennaDowntilt;
    }
    if (antennaGain != null) {
      _json['antennaGain'] = antennaGain;
    }
    if (antennaModel != null) {
      _json['antennaModel'] = antennaModel;
    }
    if (cpeCbsdIndication != null) {
      _json['cpeCbsdIndication'] = cpeCbsdIndication;
    }
    if (eirpCapability != null) {
      _json['eirpCapability'] = eirpCapability;
    }
    if (height != null) {
      _json['height'] = height;
    }
    if (heightType != null) {
      _json['heightType'] = heightType;
    }
    if (horizontalAccuracy != null) {
      _json['horizontalAccuracy'] = horizontalAccuracy;
    }
    if (indoorDeployment != null) {
      _json['indoorDeployment'] = indoorDeployment;
    }
    if (latitude != null) {
      _json['latitude'] = latitude;
    }
    if (longitude != null) {
      _json['longitude'] = longitude;
    }
    if (verticalAccuracy != null) {
      _json['verticalAccuracy'] = verticalAccuracy;
    }
    return _json;
  }
}

/// Response for `ListCustomers`.
class SasPortalListCustomersResponse {
  /// The list of customers that match the request.
  core.List<SasPortalCustomer> customers;

  /// A pagination token returned from a previous call to ListCustomers method
  /// that indicates from where listing should continue. If the field is missing
  /// or empty, it means there are no more customers.
  core.String nextPageToken;

  SasPortalListCustomersResponse();

  SasPortalListCustomersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('customers')) {
      customers = (_json['customers'] as core.List)
          .map<SasPortalCustomer>((value) => SasPortalCustomer.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (customers != null) {
      _json['customers'] = customers.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response for ListDevices method.
class SasPortalListDevicesResponse {
  /// The devices that match the request.
  core.List<SasPortalDevice> devices;

  /// A pagination token returned from a previous call to ListDevices method
  /// that indicates from where listing should continue. If the field is missing
  /// or empty, it means there is no more devices.
  core.String nextPageToken;

  SasPortalListDevicesResponse();

  SasPortalListDevicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('devices')) {
      devices = (_json['devices'] as core.List)
          .map<SasPortalDevice>((value) => SasPortalDevice.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (devices != null) {
      _json['devices'] = devices.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response for ListNodes method.
class SasPortalListNodesResponse {
  /// A pagination token returned from a previous call to ListNodes method that
  /// indicates from where listing should continue. If the field is missing or
  /// empty, it means there is no more nodes.
  core.String nextPageToken;

  /// The nodes that match the request.
  core.List<SasPortalNode> nodes;

  SasPortalListNodesResponse();

  SasPortalListNodesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('nodes')) {
      nodes = (_json['nodes'] as core.List)
          .map<SasPortalNode>((value) => SasPortalNode.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (nodes != null) {
      _json['nodes'] = nodes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request for MoveDeployment method.
class SasPortalMoveDeploymentRequest {
  /// Required. The name of the new parent resource Node or Customer to reparent
  /// the deployment under.
  core.String destination;

  SasPortalMoveDeploymentRequest();

  SasPortalMoveDeploymentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('destination')) {
      destination = _json['destination'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (destination != null) {
      _json['destination'] = destination;
    }
    return _json;
  }
}

/// Request for MoveDevice method.
class SasPortalMoveDeviceRequest {
  /// Required. The name of the new parent resource (Node or Customer) to
  /// reparent the device under.
  core.String destination;

  SasPortalMoveDeviceRequest();

  SasPortalMoveDeviceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('destination')) {
      destination = _json['destination'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (destination != null) {
      _json['destination'] = destination;
    }
    return _json;
  }
}

/// Request for MoveNode method.
class SasPortalMoveNodeRequest {
  /// Required. The name of the new parent resource node or Customer) to
  /// reparent the node under.
  core.String destination;

  SasPortalMoveNodeRequest();

  SasPortalMoveNodeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('destination')) {
      destination = _json['destination'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (destination != null) {
      _json['destination'] = destination;
    }
    return _json;
  }
}

/// The Node.
class SasPortalNode {
  /// The node's display name.
  core.String displayName;

  /// Output only. Resource name.
  core.String name;

  /// User ids used by the devices belonging to this node.
  core.List<core.String> sasUserIds;

  SasPortalNode();

  SasPortalNode.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('sasUserIds')) {
      sasUserIds = (_json['sasUserIds'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (sasUserIds != null) {
      _json['sasUserIds'] = sasUserIds;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class SasPortalOperation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  SasPortalStatus error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  SasPortalOperation();

  SasPortalOperation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'];
    }
    if (_json.containsKey('error')) {
      error = SasPortalStatus.fromJson(_json['error']);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// Defines an access control policy to the resources.
class SasPortalPolicy {
  core.List<SasPortalAssignment> assignments;

  /// The [etag] is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other. It
  /// is strongly suggested that systems make use of the [etag] in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An [etag] is returned in the response to [GetPolicy], and
  /// systems are expected to put that etag in the request to [SetPolicy] to
  /// ensure that their change will be applied to the same version of the
  /// policy. If no [etag] is provided in the call to [SetPolicy], then the
  /// existing policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SasPortalPolicy();

  SasPortalPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('assignments')) {
      assignments = (_json['assignments'] as core.List)
          .map<SasPortalAssignment>(
              (value) => SasPortalAssignment.fromJson(value))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (assignments != null) {
      _json['assignments'] =
          assignments.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    return _json;
  }
}

/// Request message for `SetPolicy` method.
class SasPortalSetPolicyRequest {
  /// Required. The policy to be applied to the `resource`.
  SasPortalPolicy policy;

  /// Required. The resource for which the policy is being specified. This
  /// policy replaces any existing policy.
  core.String resource;

  SasPortalSetPolicyRequest();

  SasPortalSetPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = SasPortalPolicy.fromJson(_json['policy']);
    }
    if (_json.containsKey('resource')) {
      resource = _json['resource'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    if (resource != null) {
      _json['resource'] = resource;
    }
    return _json;
  }
}

/// Request for SignDevice method.
class SasPortalSignDeviceRequest {
  /// Required. The device to sign. The device fields name, fcc_id and
  /// serial_number must be set. The user_id field must be set.
  SasPortalDevice device;

  SasPortalSignDeviceRequest();

  SasPortalSignDeviceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('device')) {
      device = SasPortalDevice.fromJson(_json['device']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (device != null) {
      _json['device'] = device.toJson();
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class SasPortalStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  SasPortalStatus();

  SasPortalStatus.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Request message for `TestPermissions` method.
class SasPortalTestPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  core.List<core.String> permissions;

  /// Required. The resource for which the permissions are being requested.
  core.String resource;

  SasPortalTestPermissionsRequest();

  SasPortalTestPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('resource')) {
      resource = _json['resource'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    if (resource != null) {
      _json['resource'] = resource;
    }
    return _json;
  }
}

/// Response message for `TestPermissions` method.
class SasPortalTestPermissionsResponse {
  /// A set of permissions that the caller is allowed.
  core.List<core.String> permissions;

  SasPortalTestPermissionsResponse();

  SasPortalTestPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Request for UpdateSignedDevice method.
class SasPortalUpdateSignedDeviceRequest {
  /// Required. The JSON Web Token signed using a CPI private key. Payload must
  /// be the JSON encoding of the device. The user_id field must be set.
  core.String encodedDevice;
  core.List<core.int> get encodedDeviceAsBytes =>
      convert.base64.decode(encodedDevice);

  set encodedDeviceAsBytes(core.List<core.int> _bytes) {
    encodedDevice =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Required. Unique installer ID (CPI ID) from the Certified Professional
  /// Installers database.
  core.String installerId;

  SasPortalUpdateSignedDeviceRequest();

  SasPortalUpdateSignedDeviceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('encodedDevice')) {
      encodedDevice = _json['encodedDevice'];
    }
    if (_json.containsKey('installerId')) {
      installerId = _json['installerId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (encodedDevice != null) {
      _json['encodedDevice'] = encodedDevice;
    }
    if (installerId != null) {
      _json['installerId'] = installerId;
    }
    return _json;
  }
}

/// Request for ValidateInstaller method.
class SasPortalValidateInstallerRequest {
  /// Required. JSON Web Token signed using a CPI private key. Payload must
  /// include a "secret" claim whose value is the secret.
  core.String encodedSecret;

  /// Required. Unique installer id (cpiId) from the Certified Professional
  /// Installers database.
  core.String installerId;

  /// Required. Secret returned by the GenerateSecret method.
  core.String secret;

  SasPortalValidateInstallerRequest();

  SasPortalValidateInstallerRequest.fromJson(core.Map _json) {
    if (_json.containsKey('encodedSecret')) {
      encodedSecret = _json['encodedSecret'];
    }
    if (_json.containsKey('installerId')) {
      installerId = _json['installerId'];
    }
    if (_json.containsKey('secret')) {
      secret = _json['secret'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (encodedSecret != null) {
      _json['encodedSecret'] = encodedSecret;
    }
    if (installerId != null) {
      _json['installerId'] = installerId;
    }
    if (secret != null) {
      _json['secret'] = secret;
    }
    return _json;
  }
}

/// Response for ValidateInstaller method]
/// [spectrum.sas.portal.v1alpha1.DeviceManager.ValidateInstaller].
class SasPortalValidateInstallerResponse {
  SasPortalValidateInstallerResponse();

  SasPortalValidateInstallerResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}
