// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.cloudidentity.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudidentity/v1';

/// API for provisioning and managing identity resources.
class CloudidentityApi {
  /// See your device details
  static const CloudIdentityDevicesLookupScope =
      'https://www.googleapis.com/auth/cloud-identity.devices.lookup';

  /// See, change, create, and delete any of the Cloud Identity Groups that you
  /// can access, including the members of each group
  static const CloudIdentityGroupsScope =
      'https://www.googleapis.com/auth/cloud-identity.groups';

  /// See any Cloud Identity Groups that you can access, including group members
  /// and their emails
  static const CloudIdentityGroupsReadonlyScope =
      'https://www.googleapis.com/auth/cloud-identity.groups.readonly';

  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  DevicesResourceApi get devices => DevicesResourceApi(_requester);
  GroupsResourceApi get groups => GroupsResourceApi(_requester);

  CloudidentityApi(http.Client client,
      {core.String rootUrl = 'https://cloudidentity.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class DevicesResourceApi {
  final commons.ApiRequester _requester;

  DevicesDeviceUsersResourceApi get deviceUsers =>
      DevicesDeviceUsersResourceApi(_requester);

  DevicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Cancels an unfinished device wipe. This operation can be used to cancel
  /// device wipe in the gap between the wipe operation returning success and
  /// the device being wiped. This operation is possible when the device is in a
  /// "pending wipe" state. The device enters the "pending wipe" state when a
  /// wipe device command is issued, but has not yet been sent to the device.
  /// The cancel wipe will fail if the wipe command has already been issued to
  /// the device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}`, where device_id is the unique ID
  /// assigned to the Device, and device_user_id is the unique ID assigned to
  /// the User.
  /// Value must have pattern "^devices/[^/]+$".
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
  async.Future<Operation> cancelWipe(
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest request,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancelWipe';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Creates a device. Only company-owned device may be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
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
    GoogleAppsCloudidentityDevicesV1Device request, {
    core.String customer,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/devices';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes the specified device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}`, where device_id is the unique ID
  /// assigned to the Device.
  /// Value must have pattern "^devices/[^/]+$".
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
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
    core.String customer,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Retrieves the specified device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in the format: `devices/{device_id}`, where device_id is the unique ID
  /// assigned to the Device.
  /// Value must have pattern "^devices/[^/]+$".
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Customer
  /// in the format: `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs. If you're using this API for your own
  /// organization, use `customers/my_customer`. If you're using this API to
  /// manage another organization, use `customers/{customer_id}`, where
  /// customer_id is the customer to whom the device belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsCloudidentityDevicesV1Device].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsCloudidentityDevicesV1Device> get(
    core.String name, {
    core.String customer,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleAppsCloudidentityDevicesV1Device.fromJson(data));
  }

  /// Lists/Searches devices.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the customer
  /// in the format: `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs. If you're using this API for your own
  /// organization, use `customers/my_customer`. If you're using this API to
  /// manage another organization, use `customers/{customer_id}`, where
  /// customer_id is the customer to whom the device belongs.
  ///
  /// [filter] - Optional. Additional restrictions when fetching list of
  /// devices. [Help Center article
  /// link](https://support.google.com/a/answer/7549103)
  ///
  /// [orderBy] - Optional. Order specification for devices in the response.
  /// Only one of the following field names may be used to specify the order:
  /// `create_time`, `last_sync_time`, `model`, `os_version`, `device_type` and
  /// `serial_number`. `desc` may be specified optionally at the end to specify
  /// results to be sorted in descending order. Default order is ascending.
  ///
  /// [pageSize] - Optional. The maximum number of Devices to return. If
  /// unspecified, at most 20 Devices will be returned. The maximum value is
  /// 100; values above 100 will be coerced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDevices` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListDevices` must match the
  /// call that provided the page token.
  ///
  /// [view] - Optional. The view to use for the List request.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Default value. The value is unused.
  /// - "COMPANY_INVENTORY" : This view contains all devices imported by the
  /// company admin. Each device in the response contains all information
  /// specified by the company admin when importing the device (i.e. asset
  /// tags). This includes devices that may be unaassigned or assigned to users.
  /// - "USER_ASSIGNED_DEVICES" : This view contains all devices with at least
  /// one user registered on the device. Each device in the response contains
  /// all device information, except for asset tags.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsCloudidentityDevicesV1ListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsCloudidentityDevicesV1ListDevicesResponse> list({
    core.String customer,
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/devices';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(data));
  }

  /// Wipes all data on the specified device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}/deviceUsers/{device_user_id}`, where
  /// device_id is the unique ID assigned to the Device, and device_user_id is
  /// the unique ID assigned to the User.
  /// Value must have pattern "^devices/[^/]+$".
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
  async.Future<Operation> wipe(
    GoogleAppsCloudidentityDevicesV1WipeDeviceRequest request,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':wipe';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class DevicesDeviceUsersResourceApi {
  final commons.ApiRequester _requester;

  DevicesDeviceUsersClientStatesResourceApi get clientStates =>
      DevicesDeviceUsersClientStatesResourceApi(_requester);

  DevicesDeviceUsersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Approves device to access user data.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}/deviceUsers/{device_user_id}`, where
  /// device_id is the unique ID assigned to the Device, and device_user_id is
  /// the unique ID assigned to the User.
  /// Value must have pattern "^devices/[^/]+/deviceUsers/[^/]+$".
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
  async.Future<Operation> approve(
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest request,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':approve';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Blocks device from accessing user data
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}/deviceUsers/{device_user_id}`, where
  /// device_id is the unique ID assigned to the Device, and device_user_id is
  /// the unique ID assigned to the User.
  /// Value must have pattern "^devices/[^/]+/deviceUsers/[^/]+$".
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
  async.Future<Operation> block(
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest request,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':block';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Cancels an unfinished user account wipe. This operation can be used to
  /// cancel device wipe in the gap between the wipe operation returning success
  /// and the device being wiped.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}/deviceUsers/{device_user_id}`, where
  /// device_id is the unique ID assigned to the Device, and device_user_id is
  /// the unique ID assigned to the User.
  /// Value must have pattern "^devices/[^/]+/deviceUsers/[^/]+$".
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
  async.Future<Operation> cancelWipe(
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest request,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancelWipe';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes the specified DeviceUser. This also revokes the user's access to
  /// device data.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}/deviceUsers/{device_user_id}`, where
  /// device_id is the unique ID assigned to the Device, and device_user_id is
  /// the unique ID assigned to the User.
  /// Value must have pattern "^devices/[^/]+/deviceUsers/[^/]+$".
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
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
    core.String customer,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Retrieves the specified DeviceUser
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}/deviceUsers/{device_user_id}`, where
  /// device_id is the unique ID assigned to the Device, and device_user_id is
  /// the unique ID assigned to the User.
  /// Value must have pattern "^devices/[^/]+/deviceUsers/[^/]+$".
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsCloudidentityDevicesV1DeviceUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsCloudidentityDevicesV1DeviceUser> get(
    core.String name, {
    core.String customer,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(data));
  }

  /// Lists/Searches DeviceUsers.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. To list all DeviceUsers, set this to "devices/-". To
  /// list all DeviceUsers owned by a device, set this to the resource name of
  /// the device. Format: devices/{device}
  /// Value must have pattern "^devices/[^/]+$".
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  ///
  /// [filter] - Optional. Additional restrictions when fetching list of
  /// devices. [HC article](https://support.google.com/a/answer/7549103)
  ///
  /// [orderBy] - Optional. Order specification for devices in the response.
  ///
  /// [pageSize] - Optional. The maximum number of DeviceUsers to return. If
  /// unspecified, at most 5 DeviceUsers will be returned. The maximum value is
  /// 20; values above 20 will be coerced to 20.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDeviceUsers` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListBooks` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse> list(
    core.String parent, {
    core.String customer,
    core.String filter,
    core.String orderBy,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deviceUsers';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(data));
  }

  /// Looks up resource names of the DeviceUsers associated with the caller's
  /// credentials, as well as the properties provided in the request. This
  /// method must be called with end-user credentials with the scope:
  /// https://www.googleapis.com/auth/cloud-identity.devices.lookup If multiple
  /// properties are provided, only DeviceUsers having all of these properties
  /// are considered as matches - i.e. the query behaves like an AND. Different
  /// platforms require different amounts of information from the caller to
  /// ensure that the DeviceUser is uniquely identified. - iOS: No properties
  /// need to be passed, the caller's credentials are sufficient to identify the
  /// corresponding DeviceUser. - Android: Specifying the 'android_id' field is
  /// required. - Desktop: Specifying the 'raw_resource_id' field is required.
  ///
  /// Request parameters:
  ///
  /// [parent] - Must be set to "devices/-/deviceUsers" to search across all
  /// DeviceUser belonging to the user.
  /// Value must have pattern "^devices/[^/]+/deviceUsers$".
  ///
  /// [androidId] - Android Id returned by
  /// [Settings.Secure#ANDROID_ID](https://developer.android.com/reference/android/provider/Settings.Secure.html#ANDROID_ID).
  ///
  /// [pageSize] - The maximum number of DeviceUsers to return. If unspecified,
  /// at most 20 DeviceUsers will be returned. The maximum value is 20; values
  /// above 20 will be coerced to 20.
  ///
  /// [pageToken] - A page token, received from a previous `LookupDeviceUsers`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `LookupDeviceUsers` must match the call that
  /// provided the page token.
  ///
  /// [rawResourceId] - Raw Resource Id used by Google Endpoint Verification. If
  /// the user is enrolled into Google Endpoint Verification, this id will be
  /// saved as the 'device_resource_id' field in the following platform
  /// dependent files. Mac: ~/.secureConnect/context_aware_config.json Windows:
  /// C:\Users\%USERPROFILE%\.secureConnect\context_aware_config.json Linux:
  /// ~/.secureConnect/context_aware_config.json
  ///
  /// [userId] - The user whose DeviceUser's resource name will be fetched. Must
  /// be set to 'me' to fetch the DeviceUser's resource name for the calling
  /// user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse>
      lookup(
    core.String parent, {
    core.String androidId,
    core.int pageSize,
    core.String pageToken,
    core.String rawResourceId,
    core.String userId,
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
    if (androidId != null) {
      _queryParams['androidId'] = [androidId];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (rawResourceId != null) {
      _queryParams['rawResourceId'] = [rawResourceId];
    }
    if (userId != null) {
      _queryParams['userId'] = [userId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + ':lookup';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse.fromJson(
            data));
  }

  /// Wipes the user's account on a device. Other data on the device that is not
  /// associated with the user's work account is not affected. For example, if a
  /// Gmail app is installed on a device that is used for personal and work
  /// purposes, and the user is logged in to the Gmail app with their personal
  /// account as well as their work account, wiping the "deviceUser" by their
  /// work administrator will not affect their personal account within Gmail or
  /// other apps such as Photos.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}/deviceUsers/{device_user_id}`, where
  /// device_id is the unique ID assigned to the Device, and device_user_id is
  /// the unique ID assigned to the User.
  /// Value must have pattern "^devices/[^/]+/deviceUsers/[^/]+$".
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
  async.Future<Operation> wipe(
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest request,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':wipe';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class DevicesDeviceUsersClientStatesResourceApi {
  final commons.ApiRequester _requester;

  DevicesDeviceUsersClientStatesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the client state for the device user
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// ClientState in format:
  /// `devices/{device_id}/deviceUsers/{device_user_id}/clientStates/{partner_id}`,
  /// where device_id is the unique ID assigned to the Device, device_user_id is
  /// the unique ID assigned to the User and partner_id identifies the partner
  /// storing the data.
  /// Value must have pattern
  /// "^devices/[^/]+/deviceUsers/[^/]+/clientStates/[^/]+$".
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsCloudidentityDevicesV1ClientState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsCloudidentityDevicesV1ClientState> get(
    core.String name, {
    core.String customer,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleAppsCloudidentityDevicesV1ClientState.fromJson(data));
  }

  /// Lists the client states for the given search query.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. To list all ClientStates, set this to
  /// "devices/-/deviceUsers/-". To list all ClientStates owned by a DeviceUser,
  /// set this to the resource name of the DeviceUser. Format:
  /// devices/{device}/deviceUsers/{deviceUser}
  /// Value must have pattern "^devices/[^/]+/deviceUsers/[^/]+$".
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  ///
  /// [filter] - Optional. Additional restrictions when fetching list of client
  /// states.
  ///
  /// [orderBy] - Optional. Order specification for client states in the
  /// response.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListClientStates` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListClientStates` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAppsCloudidentityDevicesV1ListClientStatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsCloudidentityDevicesV1ListClientStatesResponse> list(
    core.String parent, {
    core.String customer,
    core.String filter,
    core.String orderBy,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/clientStates';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
            data));
  }

  /// Updates the client state for the device user
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// ClientState in format:
  /// `devices/{device_id}/deviceUsers/{device_user_id}/clientState/{partner_id}`,
  /// where partner_id corresponds to the partner storing the data. For partners
  /// belonging to the "BeyondCorp Alliance", this is the partner ID specified
  /// to you by Google. For all other callers, this is a string of the form:
  /// `{customer_id}-suffix`, where `customer_id` is your customer ID. The
  /// *suffix* is any string the caller specifies. This string will be displayed
  /// verbatim in the administration console. This suffix is used in setting up
  /// Custom Access Levels in Context-Aware Access. Your organization's customer
  /// ID can be obtained from the URL: `GET
  /// https://www.googleapis.com/admin/directory/v1/customers/my_customer` The
  /// `id` field in the response contains the customer ID starting with the
  /// letter 'C'. The customer ID to be used in this API is the string after the
  /// letter 'C' (not including 'C')
  /// Value must have pattern
  /// "^devices/[^/]+/deviceUsers/[^/]+/clientStates/[^/]+$".
  ///
  /// [customer] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  ///
  /// [updateMask] - Optional. Comma-separated list of fully qualified names of
  /// fields to be updated. If not specified, all updatable fields in
  /// ClientState are updated.
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
    GoogleAppsCloudidentityDevicesV1ClientState request,
    core.String name, {
    core.String customer,
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
    if (customer != null) {
      _queryParams['customer'] = [customer];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class GroupsResourceApi {
  final commons.ApiRequester _requester;

  GroupsMembershipsResourceApi get memberships =>
      GroupsMembershipsResourceApi(_requester);

  GroupsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a Group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [initialGroupConfig] - Optional. The initial configuration option for the
  /// `Group`.
  /// Possible string values are:
  /// - "INITIAL_GROUP_CONFIG_UNSPECIFIED" : Default. Should not be used.
  /// - "WITH_INITIAL_OWNER" : The end user making the request will be added as
  /// the initial owner of the `Group`.
  /// - "EMPTY" : An empty group is created without any initial owners. This can
  /// only be used by admins of the domain.
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
    Group request, {
    core.String initialGroupConfig,
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
    if (initialGroupConfig != null) {
      _queryParams['initialGroupConfig'] = [initialGroupConfig];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/groups';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes a Group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Group in
  /// the format: `groups/{group_id}`, where `group_id` is the unique ID
  /// assigned to the Group.
  /// Value must have pattern "^groups/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Retrieves a Group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Group in
  /// the format: `groups/{group_id}`, where `group_id` is the unique ID
  /// assigned to the Group.
  /// Value must have pattern "^groups/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> get(
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Group.fromJson(data));
  }

  /// Lists groups within a customer or a domain.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The default page size is 200 (max 1000) for the BASIC view,
  /// and 50 (max 500) for the FULL view.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [parent] - Required. Customer ID to list all groups from.
  ///
  /// [view] - Group resource view to be returned. Defaults to [View.BASIC]().
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Default. Should not be used.
  /// - "BASIC" : Server responses only include basic information.
  /// - "FULL" : Full representation of the resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupsResponse> list({
    core.int pageSize,
    core.String pageToken,
    core.String parent,
    core.String view,
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
    if (parent != null) {
      _queryParams['parent'] = [parent];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/groups';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListGroupsResponse.fromJson(data));
  }

  /// Looks up [resource
  /// name](https://cloud.google.com/apis/design/resource_names) of a Group by
  /// its EntityKey.
  ///
  /// Request parameters:
  ///
  /// [groupKey_id] - The ID of the entity within the given namespace. The ID
  /// must be unique within its namespace.
  ///
  /// [groupKey_namespace] - Namespaces provide isolation for IDs, so an ID only
  /// needs to be unique within its namespace. Namespaces are currently only
  /// created as part of IdentitySource creation from Admin Console. A namespace
  /// `"identitysources/{identity_source_id}"` is created corresponding to every
  /// Identity Source `identity_source_id`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupGroupNameResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupGroupNameResponse> lookup({
    core.String groupKey_id,
    core.String groupKey_namespace,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (groupKey_id != null) {
      _queryParams['groupKey.id'] = [groupKey_id];
    }
    if (groupKey_namespace != null) {
      _queryParams['groupKey.namespace'] = [groupKey_namespace];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/groups:lookup';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LookupGroupNameResponse.fromJson(data));
  }

  /// Updates a Group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Group in
  /// the format: `groups/{group_id}`, where group_id is the unique ID assigned
  /// to the Group. Must be left blank while creating a Group.
  /// Value must have pattern "^groups/[^/]+$".
  ///
  /// [updateMask] - Required. Editable fields: `display_name`, `description`
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
    Group request,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Searches for Groups.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The default page size is 200 (max 1000) for the BASIC view,
  /// and 50 (max 500) for the FULL view.
  ///
  /// [pageToken] - The next_page_token value returned from a previous search
  /// request, if any.
  ///
  /// [query] - Required. `Required`. Query string for performing search on
  /// groups. Users can search on parent and label attributes of groups. EXACT
  /// match ('==') is supported on parent, and CONTAINS match ('in') is
  /// supported on labels.
  ///
  /// [view] - Group resource view to be returned. Defaults to [View.BASIC]().
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Default. Should not be used.
  /// - "BASIC" : Server responses only include basic information.
  /// - "FULL" : Full representation of the resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchGroupsResponse> search({
    core.int pageSize,
    core.String pageToken,
    core.String query,
    core.String view,
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
    if (query != null) {
      _queryParams['query'] = [query];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/groups:search';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SearchGroupsResponse.fromJson(data));
  }
}

class GroupsMembershipsResourceApi {
  final commons.ApiRequester _requester;

  GroupsMembershipsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Membership.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Group to
  /// create Membership within. Format: `groups/{group_id}`, where `group_id` is
  /// the unique ID assigned to the Group.
  /// Value must have pattern "^groups/[^/]+$".
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
    Membership request,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/memberships';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes a Membership.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Membership to be deleted. Format:
  /// `groups/{group_id}/memberships/{member_id}`, where `group_id` is the
  /// unique ID assigned to the Group to which Membership belongs to, and
  /// member_id is the unique ID assigned to the member.
  /// Value must have pattern "^groups/[^/]+/memberships/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Retrieves a Membership.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Membership to be retrieved. Format:
  /// `groups/{group_id}/memberships/{member_id}`, where `group_id` is the
  /// unique id assigned to the Group to which Membership belongs to, and
  /// `member_id` is the unique ID assigned to the member.
  /// Value must have pattern "^groups/[^/]+/memberships/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Membership].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Membership> get(
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Membership.fromJson(data));
  }

  /// Lists Memberships within a Group.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Group to
  /// list Memberships within. Format: `groups/{group_id}`, where `group_id` is
  /// the unique ID assigned to the Group.
  /// Value must have pattern "^groups/[^/]+$".
  ///
  /// [pageSize] - The default page size is 200 (max 1000) for the BASIC view,
  /// and 50 (max 500) for the FULL view.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [view] - Membership resource view to be returned. Defaults to View.BASIC.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Default. Should not be used.
  /// - "BASIC" : Server responses only include basic information.
  /// - "FULL" : Full representation of the resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String view,
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
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/memberships';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListMembershipsResponse.fromJson(data));
  }

  /// Looks up [resource
  /// name](https://cloud.google.com/apis/design/resource_names) of a Membership
  /// within a Group by member's EntityKey.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Group to
  /// lookup Membership within. Format: `groups/{group_id}`, where `group_id` is
  /// the unique ID assigned to the Group.
  /// Value must have pattern "^groups/[^/]+$".
  ///
  /// [memberKey_id] - The ID of the entity within the given namespace. The ID
  /// must be unique within its namespace.
  ///
  /// [memberKey_namespace] - Namespaces provide isolation for IDs, so an ID
  /// only needs to be unique within its namespace. Namespaces are currently
  /// only created as part of IdentitySource creation from Admin Console. A
  /// namespace `"identitysources/{identity_source_id}"` is created
  /// corresponding to every Identity Source `identity_source_id`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupMembershipNameResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupMembershipNameResponse> lookup(
    core.String parent, {
    core.String memberKey_id,
    core.String memberKey_namespace,
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
    if (memberKey_id != null) {
      _queryParams['memberKey.id'] = [memberKey_id];
    }
    if (memberKey_namespace != null) {
      _queryParams['memberKey.namespace'] = [memberKey_namespace];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/memberships:lookup';

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
        .then((data) => LookupMembershipNameResponse.fromJson(data));
  }

  /// Modifies the `MembershipRole`s of a `Membership`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The [resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// `Membership` whose roles are to be modified. Must be of the form
  /// `groups/{group_id}/memberships/{membership_id}`.
  /// Value must have pattern "^groups/[^/]+/memberships/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ModifyMembershipRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ModifyMembershipRolesResponse> modifyMembershipRoles(
    ModifyMembershipRolesRequest request,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':modifyMembershipRoles';

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
        .then((data) => ModifyMembershipRolesResponse.fromJson(data));
  }
}

/// An EntityKey uniquely identifies an Entity. Namespaces are used to provide
/// isolation for IDs. A single ID can be reused across namespaces but the
/// combination of a namespace and an ID must be unique.
class EntityKey {
  /// The ID of the entity within the given namespace. The ID must be unique
  /// within its namespace.
  core.String id;

  /// Namespaces provide isolation for IDs, so an ID only needs to be unique
  /// within its namespace. Namespaces are currently only created as part of
  /// IdentitySource creation from Admin Console. A namespace
  /// `"identitysources/{identity_source_id}"` is created corresponding to every
  /// Identity Source `identity_source_id`.
  core.String namespace;

  EntityKey();

  EntityKey.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('namespace')) {
      namespace = _json['namespace'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (namespace != null) {
      _json['namespace'] = namespace;
    }
    return _json;
  }
}

/// Resource representing the Android specific attributes of a Device.
class GoogleAppsCloudidentityDevicesV1AndroidAttributes {
  /// Whether applications from unknown sources can be installed on device.
  core.bool enabledUnknownSources;

  /// Whether this account is on an owner/primary profile. For phones, only true
  /// for owner profiles. Android 4+ devices can have secondary or restricted
  /// user profiles.
  core.bool ownerProfileAccount;

  /// Ownership privileges on device.
  /// Possible string values are:
  /// - "OWNERSHIP_PRIVILEGE_UNSPECIFIED" : Ownership privilege is not set.
  /// - "DEVICE_ADMINISTRATOR" : Active device administrator privileges on the
  /// device.
  /// - "PROFILE_OWNER" : Profile Owner privileges. The account is in a managed
  /// corporate profile.
  /// - "DEVICE_OWNER" : Device Owner privileges on the device.
  core.String ownershipPrivilege;

  /// Whether device supports Android work profiles. If false, this service will
  /// not block access to corp data even if an administrator turns on the
  /// "Enforce Work Profile" policy.
  core.bool supportsWorkProfile;

  GoogleAppsCloudidentityDevicesV1AndroidAttributes();

  GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(core.Map _json) {
    if (_json.containsKey('enabledUnknownSources')) {
      enabledUnknownSources = _json['enabledUnknownSources'];
    }
    if (_json.containsKey('ownerProfileAccount')) {
      ownerProfileAccount = _json['ownerProfileAccount'];
    }
    if (_json.containsKey('ownershipPrivilege')) {
      ownershipPrivilege = _json['ownershipPrivilege'];
    }
    if (_json.containsKey('supportsWorkProfile')) {
      supportsWorkProfile = _json['supportsWorkProfile'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabledUnknownSources != null) {
      _json['enabledUnknownSources'] = enabledUnknownSources;
    }
    if (ownerProfileAccount != null) {
      _json['ownerProfileAccount'] = ownerProfileAccount;
    }
    if (ownershipPrivilege != null) {
      _json['ownershipPrivilege'] = ownershipPrivilege;
    }
    if (supportsWorkProfile != null) {
      _json['supportsWorkProfile'] = supportsWorkProfile;
    }
    return _json;
  }
}

/// Request message for approving the device to access user data.
class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest {
  /// Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  core.String customer;

  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();

  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('customer')) {
      customer = _json['customer'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (customer != null) {
      _json['customer'] = customer;
    }
    return _json;
  }
}

/// Response message for approving the device to access user data.
class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse {
  /// Resultant DeviceUser object for the action.
  GoogleAppsCloudidentityDevicesV1DeviceUser deviceUser;

  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse();

  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('deviceUser')) {
      deviceUser = GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
          _json['deviceUser']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (deviceUser != null) {
      _json['deviceUser'] = deviceUser.toJson();
    }
    return _json;
  }
}

/// Request message for blocking account on device.
class GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest {
  /// Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  core.String customer;

  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();

  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('customer')) {
      customer = _json['customer'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (customer != null) {
      _json['customer'] = customer;
    }
    return _json;
  }
}

/// Response message for blocking the device from accessing user data.
class GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse {
  /// Resultant DeviceUser object for the action.
  GoogleAppsCloudidentityDevicesV1DeviceUser deviceUser;

  GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse();

  GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('deviceUser')) {
      deviceUser = GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
          _json['deviceUser']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (deviceUser != null) {
      _json['deviceUser'] = deviceUser.toJson();
    }
    return _json;
  }
}

/// Request message for cancelling an unfinished device wipe.
class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest {
  /// Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  core.String customer;

  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();

  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('customer')) {
      customer = _json['customer'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (customer != null) {
      _json['customer'] = customer;
    }
    return _json;
  }
}

/// Response message for cancelling an unfinished device wipe.
class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse {
  /// Resultant Device object for the action. Note that asset tags will not be
  /// returned in the device object.
  GoogleAppsCloudidentityDevicesV1Device device;

  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse();

  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('device')) {
      device = GoogleAppsCloudidentityDevicesV1Device.fromJson(_json['device']);
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

/// Request message for cancelling an unfinished user account wipe.
class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest {
  /// Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  core.String customer;

  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();

  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('customer')) {
      customer = _json['customer'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (customer != null) {
      _json['customer'] = customer;
    }
    return _json;
  }
}

/// Response message for cancelling an unfinished user account wipe.
class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse {
  /// Resultant DeviceUser object for the action.
  GoogleAppsCloudidentityDevicesV1DeviceUser deviceUser;

  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse();

  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('deviceUser')) {
      deviceUser = GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
          _json['deviceUser']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (deviceUser != null) {
      _json['deviceUser'] = deviceUser.toJson();
    }
    return _json;
  }
}

/// Represents the state associated with an API client calling the Devices API.
/// Resource representing ClientState and supports updates from API users
class GoogleAppsCloudidentityDevicesV1ClientState {
  /// The caller can specify asset tags for this resource
  core.List<core.String> assetTags;

  /// The compliance state of the resource as specified by the API client.
  /// Possible string values are:
  /// - "COMPLIANCE_STATE_UNSPECIFIED" : The compliance state of the resource is
  /// unknown or unspecified.
  /// - "COMPLIANT" : Device is compliant with third party policies
  /// - "NON_COMPLIANT" : Device is not compliant with third party policies
  core.String complianceState;

  /// Output only. The time the client state data was created.
  core.String createTime;

  /// This field may be used to store a unique identifier for the API resource
  /// within which these CustomAttributes are a field.
  core.String customId;

  /// The token that needs to be passed back for concurrency control in updates.
  /// Token needs to be passed back in UpdateRequest
  core.String etag;

  /// The Health score of the resource. The Health score is the callers
  /// specification of the condition of the device from a usability point of
  /// view. For example, a third-party device management provider may specify a
  /// health score based on its compliance with organizational policies.
  /// Possible string values are:
  /// - "HEALTH_SCORE_UNSPECIFIED" : Default value
  /// - "VERY_POOR" : The object is in very poor health as defined by the
  /// caller.
  /// - "POOR" : The object is in poor health as defined by the caller.
  /// - "NEUTRAL" : The object health is neither good nor poor, as defined by
  /// the caller.
  /// - "GOOD" : The object is in good health as defined by the caller.
  /// - "VERY_GOOD" : The object is in very good health as defined by the
  /// caller.
  core.String healthScore;

  /// The map of key-value attributes stored by callers specific to a device.
  /// The total serialized length of this map may not exceed 10KB. No limit is
  /// placed on the number of attributes in a map.
  core.Map<core.String, GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
      keyValuePairs;

  /// Output only. The time the client state data was last updated.
  core.String lastUpdateTime;

  /// The management state of the resource as specified by the API client.
  /// Possible string values are:
  /// - "MANAGED_STATE_UNSPECIFIED" : The management state of the resource is
  /// unknown or unspecified.
  /// - "MANAGED" : The resource is managed.
  /// - "UNMANAGED" : The resource is not managed.
  core.String managed;

  /// Output only. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// ClientState in format:
  /// `devices/{device_id}/deviceUsers/{device_user_id}/clientState/{partner_id}`,
  /// where partner_id corresponds to the partner storing the data. For partners
  /// belonging to the "BeyondCorp Alliance", this is the partner ID specified
  /// to you by Google. For all other callers, this is a string of the form:
  /// `{customer_id}-suffix`, where `customer_id` is your customer ID. The
  /// *suffix* is any string the caller specifies. This string will be displayed
  /// verbatim in the administration console. This suffix is used in setting up
  /// Custom Access Levels in Context-Aware Access. Your organization's customer
  /// ID can be obtained from the URL: `GET
  /// https://www.googleapis.com/admin/directory/v1/customers/my_customer` The
  /// `id` field in the response contains the customer ID starting with the
  /// letter 'C'. The customer ID to be used in this API is the string after the
  /// letter 'C' (not including 'C')
  core.String name;

  /// Output only. The owner of the ClientState
  /// Possible string values are:
  /// - "OWNER_TYPE_UNSPECIFIED" : Unknown owner type
  /// - "OWNER_TYPE_CUSTOMER" : Customer is the owner
  /// - "OWNER_TYPE_PARTNER" : Partner is the owner
  core.String ownerType;

  /// A descriptive cause of the health score.
  core.String scoreReason;

  GoogleAppsCloudidentityDevicesV1ClientState();

  GoogleAppsCloudidentityDevicesV1ClientState.fromJson(core.Map _json) {
    if (_json.containsKey('assetTags')) {
      assetTags = (_json['assetTags'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('complianceState')) {
      complianceState = _json['complianceState'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('customId')) {
      customId = _json['customId'];
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('healthScore')) {
      healthScore = _json['healthScore'];
    }
    if (_json.containsKey('keyValuePairs')) {
      keyValuePairs = commons.mapMap<core.Map,
              GoogleAppsCloudidentityDevicesV1CustomAttributeValue>(
          _json['keyValuePairs'].cast<core.String, core.Map>(),
          (core.Map item) =>
              GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(
                  item));
    }
    if (_json.containsKey('lastUpdateTime')) {
      lastUpdateTime = _json['lastUpdateTime'];
    }
    if (_json.containsKey('managed')) {
      managed = _json['managed'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('ownerType')) {
      ownerType = _json['ownerType'];
    }
    if (_json.containsKey('scoreReason')) {
      scoreReason = _json['scoreReason'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (assetTags != null) {
      _json['assetTags'] = assetTags;
    }
    if (complianceState != null) {
      _json['complianceState'] = complianceState;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (customId != null) {
      _json['customId'] = customId;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (healthScore != null) {
      _json['healthScore'] = healthScore;
    }
    if (keyValuePairs != null) {
      _json['keyValuePairs'] = commons.mapMap<
              GoogleAppsCloudidentityDevicesV1CustomAttributeValue,
              core.Map<core.String, core.Object>>(
          keyValuePairs,
          (GoogleAppsCloudidentityDevicesV1CustomAttributeValue item) =>
              item.toJson());
    }
    if (lastUpdateTime != null) {
      _json['lastUpdateTime'] = lastUpdateTime;
    }
    if (managed != null) {
      _json['managed'] = managed;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (ownerType != null) {
      _json['ownerType'] = ownerType;
    }
    if (scoreReason != null) {
      _json['scoreReason'] = scoreReason;
    }
    return _json;
  }
}

/// Additional custom attribute values may be one of these types
class GoogleAppsCloudidentityDevicesV1CustomAttributeValue {
  /// Represents a boolean value.
  core.bool boolValue;

  /// Represents a double value.
  core.double numberValue;

  /// Represents a string value.
  core.String stringValue;

  GoogleAppsCloudidentityDevicesV1CustomAttributeValue();

  GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(
      core.Map _json) {
    if (_json.containsKey('boolValue')) {
      boolValue = _json['boolValue'];
    }
    if (_json.containsKey('numberValue')) {
      numberValue = _json['numberValue'].toDouble();
    }
    if (_json.containsKey('stringValue')) {
      stringValue = _json['stringValue'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (boolValue != null) {
      _json['boolValue'] = boolValue;
    }
    if (numberValue != null) {
      _json['numberValue'] = numberValue;
    }
    if (stringValue != null) {
      _json['stringValue'] = stringValue;
    }
    return _json;
  }
}

/// A Device within the Cloud Identity Devices API. Represents a Device known to
/// Google Cloud, independent of the device ownership, type, and whether it is
/// assigned or in use by a user.
class GoogleAppsCloudidentityDevicesV1Device {
  /// Output only. Attributes specific to Android devices.
  GoogleAppsCloudidentityDevicesV1AndroidAttributes androidSpecificAttributes;

  /// Asset tag of the device.
  core.String assetTag;

  /// Output only. Baseband version of the device.
  core.String basebandVersion;

  /// Output only. Device bootloader version. Example: 0.6.7.
  core.String bootloaderVersion;

  /// Output only. Device brand. Example: Samsung.
  core.String brand;

  /// Output only. Build number of the device.
  core.String buildNumber;

  /// Output only. Represents whether the Device is compromised.
  /// Possible string values are:
  /// - "COMPROMISED_STATE_UNSPECIFIED" : Default value.
  /// - "COMPROMISED" : The device is compromised (currently, this means Android
  /// device is rooted).
  /// - "UNCOMPROMISED" : The device is safe (currently, this means Android
  /// device is unrooted).
  core.String compromisedState;

  /// Output only. When the Company-Owned device was imported. This field is
  /// empty for BYOD devices.
  core.String createTime;

  /// Output only. Type of device.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : Unknown device type
  /// - "ANDROID" : Device is an Android device
  /// - "IOS" : Device is an iOS device
  /// - "GOOGLE_SYNC" : Device is a Google Sync device.
  /// - "WINDOWS" : Device is a Windows device.
  /// - "MAC_OS" : Device is a MacOS device.
  /// - "LINUX" : Device is a Linux device.
  /// - "CHROME_OS" : Device is a ChromeOS device.
  core.String deviceType;

  /// Output only. Whether developer options is enabled on device.
  core.bool enabledDeveloperOptions;

  /// Output only. Whether USB debugging is enabled on device.
  core.bool enabledUsbDebugging;

  /// Output only. Device encryption state.
  /// Possible string values are:
  /// - "ENCRYPTION_STATE_UNSPECIFIED" : Encryption Status is not set.
  /// - "UNSUPPORTED_BY_DEVICE" : Device doesn't support encryption.
  /// - "ENCRYPTED" : Device is encrypted.
  /// - "NOT_ENCRYPTED" : Device is not encrypted.
  core.String encryptionState;

  /// Output only. IMEI number of device if GSM device; empty otherwise.
  core.String imei;

  /// Output only. Kernel version of the device.
  core.String kernelVersion;

  /// Most recent time when device synced with this service.
  core.String lastSyncTime;

  /// Output only. Management state of the device
  /// Possible string values are:
  /// - "MANAGEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "APPROVED" : Device is approved.
  /// - "BLOCKED" : Device is blocked.
  /// - "PENDING" : Device is pending approval.
  /// - "UNPROVISIONED" : The device is not provisioned. Device will start from
  /// this state until some action is taken (i.e. a user starts using the
  /// device).
  /// - "WIPING" : Data and settings on the device are being removed.
  /// - "WIPED" : All data and settings on the device are removed.
  core.String managementState;

  /// Output only. Device manufacturer. Example: Motorola.
  core.String manufacturer;

  /// Output only. MEID number of device if CDMA device; empty otherwise.
  core.String meid;

  /// Output only. Model name of device. Example: Pixel 3.
  core.String model;

  /// Output only. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Device
  /// in format: `devices/{device_id}`, where device_id is the unique id
  /// assigned to the Device.
  core.String name;

  /// Output only. Mobile or network operator of device, if available.
  core.String networkOperator;

  /// Output only. OS version of the device. Example: Android 8.1.0.
  core.String osVersion;

  /// Output only. Domain name for Google accounts on device. Type for other
  /// accounts on device. On Android, will only be populated if
  /// |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not
  /// include the account signed in to the device policy app if that account's
  /// domain has only one account. Examples: "com.example", "xyz.com".
  core.List<core.String> otherAccounts;

  /// Output only. Whether the device is owned by the company or an individual
  /// Possible string values are:
  /// - "DEVICE_OWNERSHIP_UNSPECIFIED" : Default value. The value is unused.
  /// - "COMPANY" : Company owns the device.
  /// - "BYOD" : Bring Your Own Device (i.e. individual owns the device)
  core.String ownerType;

  /// Output only. OS release version. Example: 6.0.
  core.String releaseVersion;

  /// Output only. OS security patch update time on device.
  core.String securityPatchTime;

  /// Serial Number of device. Example: HT82V1A01076.
  core.String serialNumber;

  /// WiFi MAC addresses of device.
  core.List<core.String> wifiMacAddresses;

  GoogleAppsCloudidentityDevicesV1Device();

  GoogleAppsCloudidentityDevicesV1Device.fromJson(core.Map _json) {
    if (_json.containsKey('androidSpecificAttributes')) {
      androidSpecificAttributes =
          GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(
              _json['androidSpecificAttributes']);
    }
    if (_json.containsKey('assetTag')) {
      assetTag = _json['assetTag'];
    }
    if (_json.containsKey('basebandVersion')) {
      basebandVersion = _json['basebandVersion'];
    }
    if (_json.containsKey('bootloaderVersion')) {
      bootloaderVersion = _json['bootloaderVersion'];
    }
    if (_json.containsKey('brand')) {
      brand = _json['brand'];
    }
    if (_json.containsKey('buildNumber')) {
      buildNumber = _json['buildNumber'];
    }
    if (_json.containsKey('compromisedState')) {
      compromisedState = _json['compromisedState'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('deviceType')) {
      deviceType = _json['deviceType'];
    }
    if (_json.containsKey('enabledDeveloperOptions')) {
      enabledDeveloperOptions = _json['enabledDeveloperOptions'];
    }
    if (_json.containsKey('enabledUsbDebugging')) {
      enabledUsbDebugging = _json['enabledUsbDebugging'];
    }
    if (_json.containsKey('encryptionState')) {
      encryptionState = _json['encryptionState'];
    }
    if (_json.containsKey('imei')) {
      imei = _json['imei'];
    }
    if (_json.containsKey('kernelVersion')) {
      kernelVersion = _json['kernelVersion'];
    }
    if (_json.containsKey('lastSyncTime')) {
      lastSyncTime = _json['lastSyncTime'];
    }
    if (_json.containsKey('managementState')) {
      managementState = _json['managementState'];
    }
    if (_json.containsKey('manufacturer')) {
      manufacturer = _json['manufacturer'];
    }
    if (_json.containsKey('meid')) {
      meid = _json['meid'];
    }
    if (_json.containsKey('model')) {
      model = _json['model'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('networkOperator')) {
      networkOperator = _json['networkOperator'];
    }
    if (_json.containsKey('osVersion')) {
      osVersion = _json['osVersion'];
    }
    if (_json.containsKey('otherAccounts')) {
      otherAccounts = (_json['otherAccounts'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('ownerType')) {
      ownerType = _json['ownerType'];
    }
    if (_json.containsKey('releaseVersion')) {
      releaseVersion = _json['releaseVersion'];
    }
    if (_json.containsKey('securityPatchTime')) {
      securityPatchTime = _json['securityPatchTime'];
    }
    if (_json.containsKey('serialNumber')) {
      serialNumber = _json['serialNumber'];
    }
    if (_json.containsKey('wifiMacAddresses')) {
      wifiMacAddresses =
          (_json['wifiMacAddresses'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (androidSpecificAttributes != null) {
      _json['androidSpecificAttributes'] = androidSpecificAttributes.toJson();
    }
    if (assetTag != null) {
      _json['assetTag'] = assetTag;
    }
    if (basebandVersion != null) {
      _json['basebandVersion'] = basebandVersion;
    }
    if (bootloaderVersion != null) {
      _json['bootloaderVersion'] = bootloaderVersion;
    }
    if (brand != null) {
      _json['brand'] = brand;
    }
    if (buildNumber != null) {
      _json['buildNumber'] = buildNumber;
    }
    if (compromisedState != null) {
      _json['compromisedState'] = compromisedState;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (deviceType != null) {
      _json['deviceType'] = deviceType;
    }
    if (enabledDeveloperOptions != null) {
      _json['enabledDeveloperOptions'] = enabledDeveloperOptions;
    }
    if (enabledUsbDebugging != null) {
      _json['enabledUsbDebugging'] = enabledUsbDebugging;
    }
    if (encryptionState != null) {
      _json['encryptionState'] = encryptionState;
    }
    if (imei != null) {
      _json['imei'] = imei;
    }
    if (kernelVersion != null) {
      _json['kernelVersion'] = kernelVersion;
    }
    if (lastSyncTime != null) {
      _json['lastSyncTime'] = lastSyncTime;
    }
    if (managementState != null) {
      _json['managementState'] = managementState;
    }
    if (manufacturer != null) {
      _json['manufacturer'] = manufacturer;
    }
    if (meid != null) {
      _json['meid'] = meid;
    }
    if (model != null) {
      _json['model'] = model;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (networkOperator != null) {
      _json['networkOperator'] = networkOperator;
    }
    if (osVersion != null) {
      _json['osVersion'] = osVersion;
    }
    if (otherAccounts != null) {
      _json['otherAccounts'] = otherAccounts;
    }
    if (ownerType != null) {
      _json['ownerType'] = ownerType;
    }
    if (releaseVersion != null) {
      _json['releaseVersion'] = releaseVersion;
    }
    if (securityPatchTime != null) {
      _json['securityPatchTime'] = securityPatchTime;
    }
    if (serialNumber != null) {
      _json['serialNumber'] = serialNumber;
    }
    if (wifiMacAddresses != null) {
      _json['wifiMacAddresses'] = wifiMacAddresses;
    }
    return _json;
  }
}

/// Represents a user's use of a Device in the Cloud Identity Devices API. A
/// DeviceUser is a resource representing a user's use of a Device
class GoogleAppsCloudidentityDevicesV1DeviceUser {
  /// Compromised State of the DeviceUser object
  /// Possible string values are:
  /// - "COMPROMISED_STATE_UNSPECIFIED" : Compromised state of Device User
  /// account is unknown or unspecified.
  /// - "COMPROMISED" : Device User Account is compromised.
  /// - "NOT_COMPROMISED" : Device User Account is not compromised.
  core.String compromisedState;

  /// When the user first signed in to the device
  core.String createTime;

  /// Output only. Most recent time when user registered with this service.
  core.String firstSyncTime;

  /// Output only. Default locale used on device, in IETF BCP-47 format.
  core.String languageCode;

  /// Output only. Last time when user synced with policies.
  core.String lastSyncTime;

  /// Output only. Management state of the user on the device.
  /// Possible string values are:
  /// - "MANAGEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "WIPING" : This user's data and profile is being removed from the
  /// device.
  /// - "WIPED" : This user's data and profile is removed from the device.
  /// - "APPROVED" : User is approved to access data on the device.
  /// - "BLOCKED" : User is blocked from accessing data on the device.
  /// - "PENDING_APPROVAL" : User is awaiting approval.
  /// - "UNENROLLED" : User is unenrolled from Advanced Windows Management, but
  /// the Windows account is still intact.
  core.String managementState;

  /// Output only. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// DeviceUser in format: `devices/{device_id}/deviceUsers/{user_id}`, where
  /// user_id is the ID of the user associated with the user session.
  core.String name;

  /// Password state of the DeviceUser object
  /// Possible string values are:
  /// - "PASSWORD_STATE_UNSPECIFIED" : Password state not set.
  /// - "PASSWORD_SET" : Password set in object.
  /// - "PASSWORD_NOT_SET" : Password not set in object.
  core.String passwordState;

  /// Output only. User agent on the device for this specific user
  core.String userAgent;

  /// Email address of the user registered on the device.
  core.String userEmail;

  GoogleAppsCloudidentityDevicesV1DeviceUser();

  GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(core.Map _json) {
    if (_json.containsKey('compromisedState')) {
      compromisedState = _json['compromisedState'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('firstSyncTime')) {
      firstSyncTime = _json['firstSyncTime'];
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('lastSyncTime')) {
      lastSyncTime = _json['lastSyncTime'];
    }
    if (_json.containsKey('managementState')) {
      managementState = _json['managementState'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('passwordState')) {
      passwordState = _json['passwordState'];
    }
    if (_json.containsKey('userAgent')) {
      userAgent = _json['userAgent'];
    }
    if (_json.containsKey('userEmail')) {
      userEmail = _json['userEmail'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (compromisedState != null) {
      _json['compromisedState'] = compromisedState;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (firstSyncTime != null) {
      _json['firstSyncTime'] = firstSyncTime;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (lastSyncTime != null) {
      _json['lastSyncTime'] = lastSyncTime;
    }
    if (managementState != null) {
      _json['managementState'] = managementState;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (passwordState != null) {
      _json['passwordState'] = passwordState;
    }
    if (userAgent != null) {
      _json['userAgent'] = userAgent;
    }
    if (userEmail != null) {
      _json['userEmail'] = userEmail;
    }
    return _json;
  }
}

/// Response message that is returned in ListClientStates.
class GoogleAppsCloudidentityDevicesV1ListClientStatesResponse {
  /// Client states meeting the list restrictions.
  core.List<GoogleAppsCloudidentityDevicesV1ClientState> clientStates;

  /// Token to retrieve the next page of results. Empty if there are no more
  /// results.
  core.String nextPageToken;

  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse();

  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('clientStates')) {
      clientStates = (_json['clientStates'] as core.List)
          .map<GoogleAppsCloudidentityDevicesV1ClientState>((value) =>
              GoogleAppsCloudidentityDevicesV1ClientState.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clientStates != null) {
      _json['clientStates'] =
          clientStates.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message that is returned from the ListDeviceUsers method.
class GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse {
  /// Devices meeting the list restrictions.
  core.List<GoogleAppsCloudidentityDevicesV1DeviceUser> deviceUsers;

  /// Token to retrieve the next page of results. Empty if there are no more
  /// results.
  core.String nextPageToken;

  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();

  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('deviceUsers')) {
      deviceUsers = (_json['deviceUsers'] as core.List)
          .map<GoogleAppsCloudidentityDevicesV1DeviceUser>((value) =>
              GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (deviceUsers != null) {
      _json['deviceUsers'] =
          deviceUsers.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message that is returned from the ListDevices method.
class GoogleAppsCloudidentityDevicesV1ListDevicesResponse {
  /// Devices meeting the list restrictions.
  core.List<GoogleAppsCloudidentityDevicesV1Device> devices;

  /// Token to retrieve the next page of results. Empty if there are no more
  /// results.
  core.String nextPageToken;

  GoogleAppsCloudidentityDevicesV1ListDevicesResponse();

  GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('devices')) {
      devices = (_json['devices'] as core.List)
          .map<GoogleAppsCloudidentityDevicesV1Device>(
              (value) => GoogleAppsCloudidentityDevicesV1Device.fromJson(value))
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

/// Response containing resource names of the DeviceUsers associated with the
/// caller's credentials.
class GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse {
  /// The obfuscated customer Id that may be passed back to other Devices API
  /// methods such as List, Get, etc.
  core.String customer;

  /// [Resource names](https://cloud.google.com/apis/design/resource_names) of
  /// the DeviceUsers in the format:
  /// `devices/{device_id}/deviceUsers/{user_resource_id}`, where device_id is
  /// the unique ID assigned to a Device and user_resource_id is the unique user
  /// ID
  core.List<core.String> names;

  /// Token to retrieve the next page of results. Empty if there are no more
  /// results.
  core.String nextPageToken;

  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();

  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('customer')) {
      customer = _json['customer'];
    }
    if (_json.containsKey('names')) {
      names = (_json['names'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (customer != null) {
      _json['customer'] = customer;
    }
    if (names != null) {
      _json['names'] = names;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Request message for wiping all data on the device.
class GoogleAppsCloudidentityDevicesV1WipeDeviceRequest {
  /// Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  core.String customer;

  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest();

  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('customer')) {
      customer = _json['customer'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (customer != null) {
      _json['customer'] = customer;
    }
    return _json;
  }
}

/// Response message for wiping all data on the device.
class GoogleAppsCloudidentityDevicesV1WipeDeviceResponse {
  /// Resultant Device object for the action. Note that asset tags will not be
  /// returned in the device object.
  GoogleAppsCloudidentityDevicesV1Device device;

  GoogleAppsCloudidentityDevicesV1WipeDeviceResponse();

  GoogleAppsCloudidentityDevicesV1WipeDeviceResponse.fromJson(core.Map _json) {
    if (_json.containsKey('device')) {
      device = GoogleAppsCloudidentityDevicesV1Device.fromJson(_json['device']);
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

/// Request message for starting an account wipe on device.
class GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest {
  /// Required. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer_id}`, where customer_id is the
  /// customer to whom the device belongs.
  core.String customer;

  GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();

  GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('customer')) {
      customer = _json['customer'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (customer != null) {
      _json['customer'] = customer;
    }
    return _json;
  }
}

/// Response message for wiping the user's account from the device.
class GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse {
  /// Resultant DeviceUser object for the action.
  GoogleAppsCloudidentityDevicesV1DeviceUser deviceUser;

  GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse();

  GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('deviceUser')) {
      deviceUser = GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
          _json['deviceUser']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (deviceUser != null) {
      _json['deviceUser'] = deviceUser.toJson();
    }
    return _json;
  }
}

/// Resource representing a Group.
class Group {
  /// Output only. The time when the Group was created. Output only.
  core.String createTime;

  /// An extended description to help users determine the purpose of a Group.
  /// For example, you can include information about who should join the Group,
  /// the types of messages to send to the Group, links to FAQs about the Group,
  /// or related Groups. Maximum length is 4,096 characters.
  core.String description;

  /// The Group's display name.
  core.String displayName;

  /// Required. Immutable. EntityKey of the Group. Must be set when creating a
  /// Group, read-only afterwards.
  EntityKey groupKey;

  /// Required. `Required`. Labels for Group resource. For creating Groups under
  /// a namespace, set label key to 'labels/system/groups/external' and label
  /// value as empty.
  core.Map<core.String, core.String> labels;

  /// Output only. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the Group in
  /// the format: `groups/{group_id}`, where group_id is the unique ID assigned
  /// to the Group. Must be left blank while creating a Group.
  core.String name;

  /// Required. Immutable. The entity under which this Group resides in Cloud
  /// Identity resource hierarchy. Must be set when creating a Group, read-only
  /// afterwards. Currently allowed types: `identitysources`.
  core.String parent;

  /// Output only. The time when the Group was last updated. Output only.
  core.String updateTime;

  Group();

  Group.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('groupKey')) {
      groupKey = EntityKey.fromJson(_json['groupKey']);
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (groupKey != null) {
      _json['groupKey'] = groupKey.toJson();
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Response message for ListGroups operation.
class ListGroupsResponse {
  /// Groups returned in response to list request. The results are not sorted.
  core.List<Group> groups;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results available for listing.
  core.String nextPageToken;

  ListGroupsResponse();

  ListGroupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('groups')) {
      groups = (_json['groups'] as core.List)
          .map<Group>((value) => Group.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (groups != null) {
      _json['groups'] = groups.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

class ListMembershipsResponse {
  /// List of Memberships.
  core.List<Membership> memberships;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results available for listing.
  core.String nextPageToken;

  ListMembershipsResponse();

  ListMembershipsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('memberships')) {
      memberships = (_json['memberships'] as core.List)
          .map<Membership>((value) => Membership.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (memberships != null) {
      _json['memberships'] =
          memberships.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

class LookupGroupNameResponse {
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Group in the format: `groups/{group_id}`, where `group_id` is the
  /// unique ID assigned to the Group.
  core.String name;

  LookupGroupNameResponse();

  LookupGroupNameResponse.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

class LookupMembershipNameResponse {
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Membership being looked up. Format:
  /// `groups/{group_id}/memberships/{member_id}`, where `group_id` is the
  /// unique ID assigned to the Group to which Membership belongs to, and
  /// `member_id` is the unique ID assigned to the member.
  core.String name;

  LookupMembershipNameResponse();

  LookupMembershipNameResponse.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Resource representing a Membership within a Group
class Membership {
  /// Output only. Creation timestamp of the Membership. Output only.
  core.String createTime;

  /// Output only. [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Membership in the format: `groups/{group_id}/memberships/{member_id}`,
  /// where group_id is the unique ID assigned to the Group to which Membership
  /// belongs to, and member_id is the unique ID assigned to the member Must be
  /// left blank while creating a Membership.
  core.String name;

  /// Required. Immutable. EntityKey of the entity to be added as the member.
  /// Must be set while creating a Membership, read-only afterwards. Currently
  /// allowed entity types: `Users`, `Groups`.
  EntityKey preferredMemberKey;

  /// Roles for a member within the Group. Currently supported MembershipRoles:
  /// `"MEMBER"`.
  core.List<MembershipRole> roles;

  /// Output only. The type of the membership.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default. Should not be used.
  /// - "USER" : Represents user type.
  /// - "SERVICE_ACCOUNT" : Represents service account type.
  /// - "GROUP" : Represents group type.
  /// - "OTHER" : Represents other type.
  core.String type;

  /// Output only. Last updated timestamp of the Membership. Output only.
  core.String updateTime;

  Membership();

  Membership.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('preferredMemberKey')) {
      preferredMemberKey = EntityKey.fromJson(_json['preferredMemberKey']);
    }
    if (_json.containsKey('roles')) {
      roles = (_json['roles'] as core.List)
          .map<MembershipRole>((value) => MembershipRole.fromJson(value))
          .toList();
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (preferredMemberKey != null) {
      _json['preferredMemberKey'] = preferredMemberKey.toJson();
    }
    if (roles != null) {
      _json['roles'] = roles.map((value) => value.toJson()).toList();
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Resource representing a role within a Membership.
class MembershipRole {
  /// MembershipRole in string format. Currently supported MembershipRoles:
  /// `"MEMBER"`.
  core.String name;

  MembershipRole();

  MembershipRole.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// The request message for MembershipsService.ModifyMembershipRoles.
class ModifyMembershipRolesRequest {
  /// The `MembershipRole`s to be added. Adding or removing roles in the same
  /// request as updating roles is not supported. Must not be set if
  /// `update_roles_params` is set.
  core.List<MembershipRole> addRoles;

  /// The `name`s of the `MembershipRole`s to be removed. Adding or removing
  /// roles in the same request as updating roles is not supported. It is not
  /// possible to remove the `MEMBER` `MembershipRole`. If you wish to delete a
  /// `Membership`, call MembershipsService.DeleteMembership instead. Must not
  /// contain `MEMBER`. Must not be set if `update_roles_params` is set.
  core.List<core.String> removeRoles;

  ModifyMembershipRolesRequest();

  ModifyMembershipRolesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('addRoles')) {
      addRoles = (_json['addRoles'] as core.List)
          .map<MembershipRole>((value) => MembershipRole.fromJson(value))
          .toList();
    }
    if (_json.containsKey('removeRoles')) {
      removeRoles = (_json['removeRoles'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (addRoles != null) {
      _json['addRoles'] = addRoles.map((value) => value.toJson()).toList();
    }
    if (removeRoles != null) {
      _json['removeRoles'] = removeRoles;
    }
    return _json;
  }
}

/// The response message for MembershipsService.ModifyMembershipRoles.
class ModifyMembershipRolesResponse {
  /// The `Membership` resource after modifying its `MembershipRole`s.
  Membership membership;

  ModifyMembershipRolesResponse();

  ModifyMembershipRolesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('membership')) {
      membership = Membership.fromJson(_json['membership']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (membership != null) {
      _json['membership'] = membership.toJson();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

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

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'];
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(_json['error']);
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

class SearchGroupsResponse {
  /// List of Groups satisfying the search query.
  core.List<Group> groups;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results available for specified query.
  core.String nextPageToken;

  SearchGroupsResponse();

  SearchGroupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('groups')) {
      groups = (_json['groups'] as core.List)
          .map<Group>((value) => Group.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (groups != null) {
      _json['groups'] = groups.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
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
class Status {
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

  Status();

  Status.fromJson(core.Map _json) {
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
