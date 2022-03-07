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

/// Cloud Identity API - v1
///
/// API for provisioning and managing identity resources.
///
/// For more information, see <https://cloud.google.com/identity/>
///
/// Create an instance of [CloudIdentityApi] to access these resources:
///
/// - [DevicesResource]
///   - [DevicesDeviceUsersResource]
///     - [DevicesDeviceUsersClientStatesResource]
/// - [GroupsResource]
///   - [GroupsMembershipsResource]
library cloudidentity.v1;

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

/// API for provisioning and managing identity resources.
class CloudIdentityApi {
  /// Private Service: https://www.googleapis.com/auth/cloud-identity.devices
  static const cloudIdentityDevicesScope =
      'https://www.googleapis.com/auth/cloud-identity.devices';

  /// See your device details
  static const cloudIdentityDevicesLookupScope =
      'https://www.googleapis.com/auth/cloud-identity.devices.lookup';

  /// Private Service:
  /// https://www.googleapis.com/auth/cloud-identity.devices.readonly
  static const cloudIdentityDevicesReadonlyScope =
      'https://www.googleapis.com/auth/cloud-identity.devices.readonly';

  /// See, change, create, and delete any of the Cloud Identity Groups that you
  /// can access, including the members of each group
  static const cloudIdentityGroupsScope =
      'https://www.googleapis.com/auth/cloud-identity.groups';

  /// See any Cloud Identity Groups that you can access, including group members
  /// and their emails
  static const cloudIdentityGroupsReadonlyScope =
      'https://www.googleapis.com/auth/cloud-identity.groups.readonly';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  DevicesResource get devices => DevicesResource(_requester);
  GroupsResource get groups => GroupsResource(_requester);

  CloudIdentityApi(http.Client client,
      {core.String rootUrl = 'https://cloudidentity.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DevicesResource {
  final commons.ApiRequester _requester;

  DevicesDeviceUsersResource get deviceUsers =>
      DevicesDeviceUsersResource(_requester);

  DevicesResource(commons.ApiRequester client) : _requester = client;

  /// Cancels an unfinished device wipe.
  ///
  /// This operation can be used to cancel device wipe in the gap between the
  /// wipe operation returning success and the device being wiped. This
  /// operation is possible when the device is in a "pending wipe" state. The
  /// device enters the "pending wipe" state when a wipe device command is
  /// issued, but has not yet been sent to the device. The cancel wipe will fail
  /// if the wipe command has already been issued to the device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}`, where device is the unique ID
  /// assigned to the Device.
  /// Value must have pattern `^devices/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancelWipe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a device.
  ///
  /// Only company-owned device may be created. **Note**: This method is
  /// available only to customers who have one of the following SKUs: Enterprise
  /// Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity
  /// Premium
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
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
    core.String? customer,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/devices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}`, where device is the unique ID
  /// assigned to the Device.
  /// Value must have pattern `^devices/\[^/\]+$`.
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
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
    core.String? customer,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
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

  /// Retrieves the specified device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in the format: `devices/{device}`, where device is the unique
  /// ID assigned to the Device.
  /// Value must have pattern `^devices/\[^/\]+$`.
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Customer in the format: `customers/{customer}`, where customer is the
  /// customer to whom the device belongs. If you're using this API for your own
  /// organization, use `customers/my_customer`. If you're using this API to
  /// manage another organization, use `customers/{customer}`, where customer is
  /// the customer to whom the device belongs.
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
    core.String? customer,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsCloudidentityDevicesV1Device.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists/Searches devices.
  ///
  /// Request parameters:
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer in the format: `customers/{customer}`, where customer is the
  /// customer to whom the device belongs. If you're using this API for your own
  /// organization, use `customers/my_customer`. If you're using this API to
  /// manage another organization, use `customers/{customer}`, where customer is
  /// the customer to whom the device belongs.
  ///
  /// [filter] - Optional. Additional restrictions when fetching list of
  /// devices. For a list of search fields, refer to
  /// [Mobile device search fields](https://developers.google.com/admin-sdk/directory/v1/search-operators).
  /// Multiple search fields are separated by the space character.
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
    core.String? customer,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Wipes all data on the specified device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}/deviceUsers/{device_user}`, where
  /// device is the unique ID assigned to the Device, and device_user is the
  /// unique ID assigned to the User.
  /// Value must have pattern `^devices/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':wipe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class DevicesDeviceUsersResource {
  final commons.ApiRequester _requester;

  DevicesDeviceUsersClientStatesResource get clientStates =>
      DevicesDeviceUsersClientStatesResource(_requester);

  DevicesDeviceUsersResource(commons.ApiRequester client) : _requester = client;

  /// Approves device to access user data.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}/deviceUsers/{device_user}`, where
  /// device is the unique ID assigned to the Device, and device_user is the
  /// unique ID assigned to the User.
  /// Value must have pattern `^devices/\[^/\]+/deviceUsers/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Blocks device from accessing user data
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}/deviceUsers/{device_user}`, where
  /// device is the unique ID assigned to the Device, and device_user is the
  /// unique ID assigned to the User.
  /// Value must have pattern `^devices/\[^/\]+/deviceUsers/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':block';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Cancels an unfinished user account wipe.
  ///
  /// This operation can be used to cancel device wipe in the gap between the
  /// wipe operation returning success and the device being wiped.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}/deviceUsers/{device_user}`, where
  /// device is the unique ID assigned to the Device, and device_user is the
  /// unique ID assigned to the User.
  /// Value must have pattern `^devices/\[^/\]+/deviceUsers/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancelWipe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified DeviceUser.
  ///
  /// This also revokes the user's access to device data.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}/deviceUsers/{device_user}`, where
  /// device is the unique ID assigned to the Device, and device_user is the
  /// unique ID assigned to the User.
  /// Value must have pattern `^devices/\[^/\]+/deviceUsers/\[^/\]+$`.
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
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
    core.String? customer,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
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

  /// Retrieves the specified DeviceUser
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}/deviceUsers/{device_user}`, where
  /// device is the unique ID assigned to the Device, and device_user is the
  /// unique ID assigned to the User.
  /// Value must have pattern `^devices/\[^/\]+/deviceUsers/\[^/\]+$`.
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
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
    core.String? customer,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists/Searches DeviceUsers.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. To list all DeviceUsers, set this to "devices/-". To
  /// list all DeviceUsers owned by a device, set this to the resource name of
  /// the device. Format: devices/{device}
  /// Value must have pattern `^devices/\[^/\]+$`.
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
  ///
  /// [filter] - Optional. Additional restrictions when fetching list of
  /// devices. For a list of search fields, refer to
  /// [Mobile device search fields](https://developers.google.com/admin-sdk/directory/v1/search-operators).
  /// Multiple search fields are separated by the space character.
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
    core.String? customer,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/deviceUsers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up resource names of the DeviceUsers associated with the caller's
  /// credentials, as well as the properties provided in the request.
  ///
  /// This method must be called with end-user credentials with the scope:
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
  /// Value must have pattern `^devices/\[^/\]+/deviceUsers$`.
  ///
  /// [androidId] - Android Id returned by
  /// \[Settings.Secure#ANDROID_ID\](https://developer.android.com/reference/android/provider/Settings.Secure.html#ANDROID_ID).
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
    core.String? androidId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? rawResourceId,
    core.String? userId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (androidId != null) 'androidId': [androidId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (rawResourceId != null) 'rawResourceId': [rawResourceId],
      if (userId != null) 'userId': [userId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':lookup';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Wipes the user's account on a device.
  ///
  /// Other data on the device that is not associated with the user's work
  /// account is not affected. For example, if a Gmail app is installed on a
  /// device that is used for personal and work purposes, and the user is logged
  /// in to the Gmail app with their personal account as well as their work
  /// account, wiping the "deviceUser" by their work administrator will not
  /// affect their personal account within Gmail or other apps such as Photos.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}/deviceUsers/{device_user}`, where
  /// device is the unique ID assigned to the Device, and device_user is the
  /// unique ID assigned to the User.
  /// Value must have pattern `^devices/\[^/\]+/deviceUsers/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':wipe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class DevicesDeviceUsersClientStatesResource {
  final commons.ApiRequester _requester;

  DevicesDeviceUsersClientStatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the client state for the device user
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the ClientState in format:
  /// `devices/{device}/deviceUsers/{device_user}/clientStates/{partner}`, where
  /// `device` is the unique ID assigned to the Device, `device_user` is the
  /// unique ID assigned to the User and `partner` identifies the partner
  /// storing the data. To get the client state for devices belonging to your
  /// own organization, the `partnerId` is in the format:
  /// `customerId-*anystring*`. Where the `customerId` is your organization's
  /// customer ID and `anystring` is any suffix. This suffix is used in setting
  /// up Custom Access Levels in Context-Aware Access. You may use `my_customer`
  /// instead of the customer ID for devices managed by your own organization.
  /// You may specify `-` in place of the `{device}`, so the ClientState
  /// resource name can be:
  /// `devices/-/deviceUsers/{device_user_resource}/clientStates/{partner}`.
  /// Value must have pattern
  /// `^devices/\[^/\]+/deviceUsers/\[^/\]+/clientStates/\[^/\]+$`.
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
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
    core.String? customer,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the client states for the given search query.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. To list all ClientStates, set this to
  /// "devices/-/deviceUsers/-". To list all ClientStates owned by a DeviceUser,
  /// set this to the resource name of the DeviceUser. Format:
  /// devices/{device}/deviceUsers/{deviceUser}
  /// Value must have pattern `^devices/\[^/\]+/deviceUsers/\[^/\]+$`.
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
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
    core.String? customer,
    core.String? filter,
    core.String? orderBy,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/clientStates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the client state for the device user **Note**: This method is
  /// available only to customers who have one of the following SKUs: Enterprise
  /// Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity
  /// Premium
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the ClientState in format:
  /// `devices/{device}/deviceUsers/{device_user}/clientState/{partner}`, where
  /// partner corresponds to the partner storing the data. For partners
  /// belonging to the "BeyondCorp Alliance", this is the partner ID specified
  /// to you by Google. For all other callers, this is a string of the form:
  /// `{customer}-suffix`, where `customer` is your customer ID. The *suffix* is
  /// any string the caller specifies. This string will be displayed verbatim in
  /// the administration console. This suffix is used in setting up Custom
  /// Access Levels in Context-Aware Access. Your organization's customer ID can
  /// be obtained from the URL: `GET
  /// https://www.googleapis.com/admin/directory/v1/customers/my_customer` The
  /// `id` field in the response contains the customer ID starting with the
  /// letter 'C'. The customer ID to be used in this API is the string after the
  /// letter 'C' (not including 'C')
  /// Value must have pattern
  /// `^devices/\[^/\]+/deviceUsers/\[^/\]+/clientStates/\[^/\]+$`.
  ///
  /// [customer] - Optional.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer. If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
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
    core.String? customer,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
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

class GroupsResource {
  final commons.ApiRequester _requester;

  GroupsMembershipsResource get memberships =>
      GroupsMembershipsResource(_requester);

  GroupsResource(commons.ApiRequester client) : _requester = client;

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
    core.String? initialGroupConfig,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (initialGroupConfig != null)
        'initialGroupConfig': [initialGroupConfig],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/groups';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `Group`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the `Group` to retrieve. Must be of the form `groups/{group}`.
  /// Value must have pattern `^groups/\[^/\]+$`.
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

  /// Retrieves a `Group`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the `Group` to retrieve. Must be of the form `groups/{group}`.
  /// Value must have pattern `^groups/\[^/\]+$`.
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
    return Group.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get Security Settings
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The security settings to retrieve. Format:
  /// `groups/{group_id}/securitySettings`
  /// Value must have pattern `^groups/\[^/\]+/securitySettings$`.
  ///
  /// [readMask] - Field-level read mask of which fields to return. "*" returns
  /// all fields. If not specified, all fields will be returned. May only
  /// contain the following field: `member_restriction`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecuritySettings> getSecuritySettings(
    core.String name, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SecuritySettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the `Group` resources under a customer or namespace.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of results to return. Note that the number
  /// of results returned may be less than this value even if there are more
  /// available results. To fetch all results, clients must continue calling
  /// this method repeatedly until the response no longer contains a
  /// `next_page_token`. If unspecified, defaults to 200 for `View.BASIC` and to
  /// 50 for `View.FULL`. Must not be greater than 1000 for `View.BASIC` or 500
  /// for `View.FULL`.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous list
  /// request, if any.
  ///
  /// [parent] - Required. The parent resource under which to list all `Group`
  /// resources. Must be of the form `identitysources/{identity_source}` for
  /// external- identity-mapped groups or `customers/{customer}` for Google
  /// Groups. The `customer` must begin with "C" (for example, 'C046psxkn').
  ///
  /// [view] - The level of detail to be returned. If unspecified, defaults to
  /// `View.BASIC`.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Default. Should not be used.
  /// - "BASIC" : Only basic resource information is returned.
  /// - "FULL" : All resource information is returned.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/groups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListGroupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up the
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of a
  /// `Group` by its `EntityKey`.
  ///
  /// Request parameters:
  ///
  /// [groupKey_id] - The ID of the entity. For Google-managed entities, the
  /// `id` should be the email address of an existing group or user. For
  /// external-identity-mapped entities, the `id` must be a string conforming to
  /// the Identity Source's requirements. Must be unique within a `namespace`.
  ///
  /// [groupKey_namespace] - The namespace in which the entity exists. If not
  /// specified, the `EntityKey` represents a Google-managed entity such as a
  /// Google user or a Google Group. If specified, the `EntityKey` represents an
  /// external-identity-mapped group. The namespace must correspond to an
  /// identity source created in Admin Console and must be in the form of
  /// `identitysources/{identity_source}`.
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
    core.String? groupKey_id,
    core.String? groupKey_namespace,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (groupKey_id != null) 'groupKey.id': [groupKey_id],
      if (groupKey_namespace != null)
        'groupKey.namespace': [groupKey_namespace],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/groups:lookup';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LookupGroupNameResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a `Group`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the `Group`. Shall be of the form `groups/{group}`.
  /// Value must have pattern `^groups/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The names of fields to update. May only contain
  /// the following field names: `display_name`, `description`, `labels`.
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
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
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

  /// Searches for `Group` resources matching a specified query.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of results to return. Note that the number
  /// of results returned may be less than this value even if there are more
  /// available results. To fetch all results, clients must continue calling
  /// this method repeatedly until the response no longer contains a
  /// `next_page_token`. If unspecified, defaults to 200 for `GroupView.BASIC`
  /// and 50 for `GroupView.FULL`. Must not be greater than 1000 for
  /// `GroupView.BASIC` or 500 for `GroupView.FULL`.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous search
  /// request, if any.
  ///
  /// [query] - Required. The search query. Must be specified in
  /// [Common Expression Language](https://opensource.google/projects/cel). May
  /// only contain equality operators on the parent and inclusion operators on
  /// labels (e.g., `parent == 'customers/{customer}' &&
  /// 'cloudidentity.googleapis.com/groups.discussion_forum' in labels`). The
  /// `customer` must begin with "C" (for example, 'C046psxkn').
  ///
  /// [view] - The level of detail to be returned. If unspecified, defaults to
  /// `View.BASIC`.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Default. Should not be used.
  /// - "BASIC" : Only basic resource information is returned.
  /// - "FULL" : All resource information is returned.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/groups:search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchGroupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update Security Settings
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the security settings. Shall be
  /// of the form `groups/{group_id}/securitySettings`.
  /// Value must have pattern `^groups/\[^/\]+/securitySettings$`.
  ///
  /// [updateMask] - Required. The fully-qualified names of fields to update.
  /// May only contain the following field: `member_restriction.query`.
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
  async.Future<Operation> updateSecuritySettings(
    SecuritySettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
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

class GroupsMembershipsResource {
  final commons.ApiRequester _requester;

  GroupsMembershipsResource(commons.ApiRequester client) : _requester = client;

  /// Check a potential member for membership in a group.
  ///
  /// **Note:** This feature is only available to Google Workspace Enterprise
  /// Standard, Enterprise Plus, and Enterprise for Education; and Cloud
  /// Identity Premium accounts. If the account of the member is not one of
  /// these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A
  /// member has membership to a group as long as there is a single viewable
  /// transitive membership between the group and the member. The actor must
  /// have view permissions to at least one transitive membership between the
  /// member and group.
  ///
  /// Request parameters:
  ///
  /// [parent] -
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the group to check the transitive membership in. Format: `groups/{group}`,
  /// where `group` is the unique id assigned to the Group to which the
  /// Membership belongs to.
  /// Value must have pattern `^groups/\[^/\]+$`.
  ///
  /// [query] - Required. A CEL expression that MUST include member
  /// specification. This is a `required` field. Certain groups are uniquely
  /// identified by both a 'member_key_id' and a 'member_key_namespace', which
  /// requires an additional query input: 'member_key_namespace'. Example query:
  /// `member_key_id == 'member_key_id_value'`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckTransitiveMembershipResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckTransitiveMembershipResponse> checkTransitiveMembership(
    core.String parent, {
    core.String? query,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:checkTransitiveMembership';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CheckTransitiveMembershipResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a `Membership`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent `Group` resource under which to create the
  /// `Membership`. Must be of the form `groups/{group}`.
  /// Value must have pattern `^groups/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `Membership`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the `Membership` to delete. Must be of the form
  /// `groups/{group}/memberships/{membership}`
  /// Value must have pattern `^groups/\[^/\]+/memberships/\[^/\]+$`.
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

  /// Retrieves a `Membership`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the `Membership` to retrieve. Must be of the form
  /// `groups/{group}/memberships/{membership}`.
  /// Value must have pattern `^groups/\[^/\]+/memberships/\[^/\]+$`.
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
    return Membership.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a membership graph of just a member or both a member and a group.
  ///
  /// **Note:** This feature is only available to Google Workspace Enterprise
  /// Standard, Enterprise Plus, and Enterprise for Education; and Cloud
  /// Identity Premium accounts. If the account of the member is not one of
  /// these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. Given
  /// a member, the response will contain all membership paths from the member.
  /// Given both a group and a member, the response will contain all membership
  /// paths between the group and the member.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the group to search transitive memberships in. Format: `groups/{group}`,
  /// where `group` is the unique ID assigned to the Group to which the
  /// Membership belongs to. group can be a wildcard collection id "-". When a
  /// group is specified, the membership graph will be constrained to paths
  /// between the member (defined in the query) and the parent. If a wildcard
  /// collection is provided, all membership paths connected to the member will
  /// be returned.
  /// Value must have pattern `^groups/\[^/\]+$`.
  ///
  /// [query] - Required. A CEL expression that MUST include member
  /// specification AND label(s). Certain groups are uniquely identified by both
  /// a 'member_key_id' and a 'member_key_namespace', which requires an
  /// additional query input: 'member_key_namespace'. Example query:
  /// `member_key_id == 'member_key_id_value' && in labels`
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
  async.Future<Operation> getMembershipGraph(
    core.String parent, {
    core.String? query,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:getMembershipGraph';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the `Membership`s within a `Group`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent `Group` resource under which to lookup the
  /// `Membership` name. Must be of the form `groups/{group}`.
  /// Value must have pattern `^groups/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return. Note that the number
  /// of results returned may be less than this value even if there are more
  /// available results. To fetch all results, clients must continue calling
  /// this method repeatedly until the response no longer contains a
  /// `next_page_token`. If unspecified, defaults to 200 for `GroupView.BASIC`
  /// and to 50 for `GroupView.FULL`. Must not be greater than 1000 for
  /// `GroupView.BASIC` or 500 for `GroupView.FULL`.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous search
  /// request, if any.
  ///
  /// [view] - The level of detail to be returned. If unspecified, defaults to
  /// `View.BASIC`.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Default. Should not be used.
  /// - "BASIC" : Only basic resource information is returned.
  /// - "FULL" : All resource information is returned.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMembershipsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up the
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of a
  /// `Membership` by its `EntityKey`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent `Group` resource under which to lookup the
  /// `Membership` name. Must be of the form `groups/{group}`.
  /// Value must have pattern `^groups/\[^/\]+$`.
  ///
  /// [memberKey_id] - The ID of the entity. For Google-managed entities, the
  /// `id` should be the email address of an existing group or user. For
  /// external-identity-mapped entities, the `id` must be a string conforming to
  /// the Identity Source's requirements. Must be unique within a `namespace`.
  ///
  /// [memberKey_namespace] - The namespace in which the entity exists. If not
  /// specified, the `EntityKey` represents a Google-managed entity such as a
  /// Google user or a Google Group. If specified, the `EntityKey` represents an
  /// external-identity-mapped group. The namespace must correspond to an
  /// identity source created in Admin Console and must be in the form of
  /// `identitysources/{identity_source}`.
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
    core.String? memberKey_id,
    core.String? memberKey_namespace,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (memberKey_id != null) 'memberKey.id': [memberKey_id],
      if (memberKey_namespace != null)
        'memberKey.namespace': [memberKey_namespace],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships:lookup';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LookupMembershipNameResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Modifies the `MembershipRole`s of a `Membership`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the `Membership` whose roles are to be modified. Must be of the form
  /// `groups/{group}/memberships/{membership}`.
  /// Value must have pattern `^groups/\[^/\]+/memberships/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$name') + ':modifyMembershipRoles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ModifyMembershipRolesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Search transitive groups of a member.
  ///
  /// **Note:** This feature is only available to Google Workspace Enterprise
  /// Standard, Enterprise Plus, and Enterprise for Education; and Cloud
  /// Identity Premium accounts. If the account of the member is not one of
  /// these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A
  /// transitive group is any group that has a direct or indirect membership to
  /// the member. Actor must have view permissions all transitive groups.
  ///
  /// Request parameters:
  ///
  /// [parent] -
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the group to search transitive memberships in. Format: `groups/{group}`,
  /// where `group` is always '-' as this API will search across all groups for
  /// a given member.
  /// Value must have pattern `^groups/\[^/\]+$`.
  ///
  /// [pageSize] - The default page size is 200 (max 1000).
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [query] - Required. A CEL expression that MUST include member
  /// specification AND label(s). This is a `required` field. Users can search
  /// on label attributes of groups. CONTAINS match ('in') is supported on
  /// labels. Identity-mapped groups are uniquely identified by both a
  /// `member_key_id` and a `member_key_namespace`, which requires an additional
  /// query input: `member_key_namespace`. Example query: `member_key_id ==
  /// 'member_key_id_value' && in labels`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchTransitiveGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchTransitiveGroupsResponse> searchTransitiveGroups(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:searchTransitiveGroups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchTransitiveGroupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Search transitive memberships of a group.
  ///
  /// **Note:** This feature is only available to Google Workspace Enterprise
  /// Standard, Enterprise Plus, and Enterprise for Education; and Cloud
  /// Identity Premium accounts. If the account of the group is not one of
  /// these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A
  /// transitive membership is any direct or indirect membership of a group.
  /// Actor must have view permissions to all transitive memberships.
  ///
  /// Request parameters:
  ///
  /// [parent] -
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the group to search transitive memberships in. Format: `groups/{group}`,
  /// where `group` is the unique ID assigned to the Group.
  /// Value must have pattern `^groups/\[^/\]+$`.
  ///
  /// [pageSize] - The default page size is 200 (max 1000).
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchTransitiveMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchTransitiveMembershipsResponse> searchTransitiveMemberships(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:searchTransitiveMemberships';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchTransitiveMembershipsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// The response message for MembershipsService.CheckTransitiveMembership.
class CheckTransitiveMembershipResponse {
  /// Response does not include the possible roles of a member since the
  /// behavior of this rpc is not all-or-nothing unlike the other rpcs.
  ///
  /// So, it may not be possible to list all the roles definitively, due to
  /// possible lack of authorization in some of the paths.
  core.bool? hasMembership;

  CheckTransitiveMembershipResponse({
    this.hasMembership,
  });

  CheckTransitiveMembershipResponse.fromJson(core.Map _json)
      : this(
          hasMembership: _json.containsKey('hasMembership')
              ? _json['hasMembership'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasMembership != null) 'hasMembership': hasMembership!,
      };
}

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadata {
  /// Memberships will be the union of all queries.
  ///
  /// Only one entry with USER resource is currently supported. Customers can
  /// create up to 100 dynamic groups.
  core.List<DynamicGroupQuery>? queries;

  /// Status of the dynamic group.
  ///
  /// Output only.
  DynamicGroupStatus? status;

  DynamicGroupMetadata({
    this.queries,
    this.status,
  });

  DynamicGroupMetadata.fromJson(core.Map _json)
      : this(
          queries: _json.containsKey('queries')
              ? (_json['queries'] as core.List)
                  .map((value) => DynamicGroupQuery.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          status: _json.containsKey('status')
              ? DynamicGroupStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queries != null) 'queries': queries!,
        if (status != null) 'status': status!,
      };
}

/// Defines a query on a resource.
class DynamicGroupQuery {
  /// Query that determines the memberships of the dynamic group.
  ///
  /// Examples: All users with at least one `organizations.department` of
  /// engineering. `user.organizations.exists(org,
  /// org.department=='engineering')` All users with at least one location that
  /// has `area` of `foo` and `building_id` of `bar`.
  /// `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')`
  /// All users with any variation of the name John Doe (case-insensitive
  /// queries add `equalsIgnoreCase()` to the value being queried).
  /// `user.name.value.equalsIgnoreCase('jOhn DoE')`
  core.String? query;

  /// Resource type for the Dynamic Group Query
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Default value (not valid)
  /// - "USER" : For queries on User
  core.String? resourceType;

  DynamicGroupQuery({
    this.query,
    this.resourceType,
  });

  DynamicGroupQuery.fromJson(core.Map _json)
      : this(
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          resourceType: _json.containsKey('resourceType')
              ? _json['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (query != null) 'query': query!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// The current status of a dynamic group along with timestamp.
class DynamicGroupStatus {
  /// Status of the dynamic group.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Default.
  /// - "UP_TO_DATE" : The dynamic group is up-to-date.
  /// - "UPDATING_MEMBERSHIPS" : The dynamic group has just been created and
  /// memberships are being updated.
  /// - "INVALID_QUERY" : Group is in an unrecoverable state and its memberships
  /// can't be updated.
  core.String? status;

  /// The latest time at which the dynamic group is guaranteed to be in the
  /// given status.
  ///
  /// If status is `UP_TO_DATE`, the latest time at which the dynamic group was
  /// confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time
  /// at which dynamic group was created.
  core.String? statusTime;

  DynamicGroupStatus({
    this.status,
    this.statusTime,
  });

  DynamicGroupStatus.fromJson(core.Map _json)
      : this(
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          statusTime: _json.containsKey('statusTime')
              ? _json['statusTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (statusTime != null) 'statusTime': statusTime!,
      };
}

/// A unique identifier for an entity in the Cloud Identity Groups API.
///
/// An entity can represent either a group with an optional `namespace` or a
/// user without a `namespace`. The combination of `id` and `namespace` must be
/// unique; however, the same `id` can be used with different `namespace`s.
class EntityKey {
  /// The ID of the entity.
  ///
  /// For Google-managed entities, the `id` should be the email address of an
  /// existing group or user. For external-identity-mapped entities, the `id`
  /// must be a string conforming to the Identity Source's requirements. Must be
  /// unique within a `namespace`.
  core.String? id;

  /// The namespace in which the entity exists.
  ///
  /// If not specified, the `EntityKey` represents a Google-managed entity such
  /// as a Google user or a Google Group. If specified, the `EntityKey`
  /// represents an external-identity-mapped group. The namespace must
  /// correspond to an identity source created in Admin Console and must be in
  /// the form of `identitysources/{identity_source}`.
  core.String? namespace;

  EntityKey({
    this.id,
    this.namespace,
  });

  EntityKey.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          namespace: _json.containsKey('namespace')
              ? _json['namespace'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (namespace != null) 'namespace': namespace!,
      };
}

/// The `MembershipRole` expiry details.
class ExpiryDetail {
  /// The time at which the `MembershipRole` will expire.
  core.String? expireTime;

  ExpiryDetail({
    this.expireTime,
  });

  ExpiryDetail.fromJson(core.Map _json)
      : this(
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
      };
}

/// Resource representing the Android specific attributes of a Device.
class GoogleAppsCloudidentityDevicesV1AndroidAttributes {
  /// Whether applications from unknown sources can be installed on device.
  core.bool? enabledUnknownSources;

  /// Whether this account is on an owner/primary profile.
  ///
  /// For phones, only true for owner profiles. Android 4+ devices can have
  /// secondary or restricted user profiles.
  core.bool? ownerProfileAccount;

  /// Ownership privileges on device.
  /// Possible string values are:
  /// - "OWNERSHIP_PRIVILEGE_UNSPECIFIED" : Ownership privilege is not set.
  /// - "DEVICE_ADMINISTRATOR" : Active device administrator privileges on the
  /// device.
  /// - "PROFILE_OWNER" : Profile Owner privileges. The account is in a managed
  /// corporate profile.
  /// - "DEVICE_OWNER" : Device Owner privileges on the device.
  core.String? ownershipPrivilege;

  /// Whether device supports Android work profiles.
  ///
  /// If false, this service will not block access to corp data even if an
  /// administrator turns on the "Enforce Work Profile" policy.
  core.bool? supportsWorkProfile;

  GoogleAppsCloudidentityDevicesV1AndroidAttributes({
    this.enabledUnknownSources,
    this.ownerProfileAccount,
    this.ownershipPrivilege,
    this.supportsWorkProfile,
  });

  GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(core.Map _json)
      : this(
          enabledUnknownSources: _json.containsKey('enabledUnknownSources')
              ? _json['enabledUnknownSources'] as core.bool
              : null,
          ownerProfileAccount: _json.containsKey('ownerProfileAccount')
              ? _json['ownerProfileAccount'] as core.bool
              : null,
          ownershipPrivilege: _json.containsKey('ownershipPrivilege')
              ? _json['ownershipPrivilege'] as core.String
              : null,
          supportsWorkProfile: _json.containsKey('supportsWorkProfile')
              ? _json['supportsWorkProfile'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledUnknownSources != null)
          'enabledUnknownSources': enabledUnknownSources!,
        if (ownerProfileAccount != null)
          'ownerProfileAccount': ownerProfileAccount!,
        if (ownershipPrivilege != null)
          'ownershipPrivilege': ownershipPrivilege!,
        if (supportsWorkProfile != null)
          'supportsWorkProfile': supportsWorkProfile!,
      };
}

/// Request message for approving the device to access user data.
typedef GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest = $Request00;

/// Request message for blocking account on device.
typedef GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = $Request00;

/// Request message for cancelling an unfinished device wipe.
typedef GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest = $Request00;

/// Request message for cancelling an unfinished user account wipe.
typedef GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    = $Request00;

/// Represents the state associated with an API client calling the Devices API.
///
/// Resource representing ClientState and supports updates from API users
class GoogleAppsCloudidentityDevicesV1ClientState {
  /// The caller can specify asset tags for this resource
  core.List<core.String>? assetTags;

  /// The compliance state of the resource as specified by the API client.
  /// Possible string values are:
  /// - "COMPLIANCE_STATE_UNSPECIFIED" : The compliance state of the resource is
  /// unknown or unspecified.
  /// - "COMPLIANT" : Device is compliant with third party policies
  /// - "NON_COMPLIANT" : Device is not compliant with third party policies
  core.String? complianceState;

  /// The time the client state data was created.
  ///
  /// Output only.
  core.String? createTime;

  /// This field may be used to store a unique identifier for the API resource
  /// within which these CustomAttributes are a field.
  core.String? customId;

  /// The token that needs to be passed back for concurrency control in updates.
  ///
  /// Token needs to be passed back in UpdateRequest
  core.String? etag;

  /// The Health score of the resource.
  ///
  /// The Health score is the callers specification of the condition of the
  /// device from a usability point of view. For example, a third-party device
  /// management provider may specify a health score based on its compliance
  /// with organizational policies.
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
  core.String? healthScore;

  /// The map of key-value attributes stored by callers specific to a device.
  ///
  /// The total serialized length of this map may not exceed 10KB. No limit is
  /// placed on the number of attributes in a map.
  core.Map<core.String, GoogleAppsCloudidentityDevicesV1CustomAttributeValue>?
      keyValuePairs;

  /// The time the client state data was last updated.
  ///
  /// Output only.
  core.String? lastUpdateTime;

  /// The management state of the resource as specified by the API client.
  /// Possible string values are:
  /// - "MANAGED_STATE_UNSPECIFIED" : The management state of the resource is
  /// unknown or unspecified.
  /// - "MANAGED" : The resource is managed.
  /// - "UNMANAGED" : The resource is not managed.
  core.String? managed;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the ClientState in format:
  /// `devices/{device}/deviceUsers/{device_user}/clientState/{partner}`, where
  /// partner corresponds to the partner storing the data.
  ///
  /// For partners belonging to the "BeyondCorp Alliance", this is the partner
  /// ID specified to you by Google. For all other callers, this is a string of
  /// the form: `{customer}-suffix`, where `customer` is your customer ID. The
  /// *suffix* is any string the caller specifies. This string will be displayed
  /// verbatim in the administration console. This suffix is used in setting up
  /// Custom Access Levels in Context-Aware Access. Your organization's customer
  /// ID can be obtained from the URL: `GET
  /// https://www.googleapis.com/admin/directory/v1/customers/my_customer` The
  /// `id` field in the response contains the customer ID starting with the
  /// letter 'C'. The customer ID to be used in this API is the string after the
  /// letter 'C' (not including 'C')
  ///
  /// Output only.
  core.String? name;

  /// The owner of the ClientState
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OWNER_TYPE_UNSPECIFIED" : Unknown owner type
  /// - "OWNER_TYPE_CUSTOMER" : Customer is the owner
  /// - "OWNER_TYPE_PARTNER" : Partner is the owner
  core.String? ownerType;

  /// A descriptive cause of the health score.
  core.String? scoreReason;

  GoogleAppsCloudidentityDevicesV1ClientState({
    this.assetTags,
    this.complianceState,
    this.createTime,
    this.customId,
    this.etag,
    this.healthScore,
    this.keyValuePairs,
    this.lastUpdateTime,
    this.managed,
    this.name,
    this.ownerType,
    this.scoreReason,
  });

  GoogleAppsCloudidentityDevicesV1ClientState.fromJson(core.Map _json)
      : this(
          assetTags: _json.containsKey('assetTags')
              ? (_json['assetTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          complianceState: _json.containsKey('complianceState')
              ? _json['complianceState'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          customId: _json.containsKey('customId')
              ? _json['customId'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          healthScore: _json.containsKey('healthScore')
              ? _json['healthScore'] as core.String
              : null,
          keyValuePairs: _json.containsKey('keyValuePairs')
              ? (_json['keyValuePairs'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleAppsCloudidentityDevicesV1CustomAttributeValue
                        .fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          lastUpdateTime: _json.containsKey('lastUpdateTime')
              ? _json['lastUpdateTime'] as core.String
              : null,
          managed: _json.containsKey('managed')
              ? _json['managed'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ownerType: _json.containsKey('ownerType')
              ? _json['ownerType'] as core.String
              : null,
          scoreReason: _json.containsKey('scoreReason')
              ? _json['scoreReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetTags != null) 'assetTags': assetTags!,
        if (complianceState != null) 'complianceState': complianceState!,
        if (createTime != null) 'createTime': createTime!,
        if (customId != null) 'customId': customId!,
        if (etag != null) 'etag': etag!,
        if (healthScore != null) 'healthScore': healthScore!,
        if (keyValuePairs != null) 'keyValuePairs': keyValuePairs!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (managed != null) 'managed': managed!,
        if (name != null) 'name': name!,
        if (ownerType != null) 'ownerType': ownerType!,
        if (scoreReason != null) 'scoreReason': scoreReason!,
      };
}

/// Additional custom attribute values may be one of these types
class GoogleAppsCloudidentityDevicesV1CustomAttributeValue {
  /// Represents a boolean value.
  core.bool? boolValue;

  /// Represents a double value.
  core.double? numberValue;

  /// Represents a string value.
  core.String? stringValue;

  GoogleAppsCloudidentityDevicesV1CustomAttributeValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
  });

  GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(core.Map _json)
      : this(
          boolValue: _json.containsKey('boolValue')
              ? _json['boolValue'] as core.bool
              : null,
          numberValue: _json.containsKey('numberValue')
              ? (_json['numberValue'] as core.num).toDouble()
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (numberValue != null) 'numberValue': numberValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

///  A Device within the Cloud Identity Devices API.
///
/// Represents a Device known to Google Cloud, independent of the device
/// ownership, type, and whether it is assigned or in use by a user.
class GoogleAppsCloudidentityDevicesV1Device {
  /// Attributes specific to Android devices.
  ///
  /// Output only.
  GoogleAppsCloudidentityDevicesV1AndroidAttributes? androidSpecificAttributes;

  /// Asset tag of the device.
  core.String? assetTag;

  /// Baseband version of the device.
  ///
  /// Output only.
  core.String? basebandVersion;

  /// Device bootloader version.
  ///
  /// Example: 0.6.7.
  ///
  /// Output only.
  core.String? bootloaderVersion;

  /// Device brand.
  ///
  /// Example: Samsung.
  ///
  /// Output only.
  core.String? brand;

  /// Build number of the device.
  ///
  /// Output only.
  core.String? buildNumber;

  /// Represents whether the Device is compromised.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPROMISED_STATE_UNSPECIFIED" : Default value.
  /// - "COMPROMISED" : The device is compromised (currently, this means Android
  /// device is rooted).
  /// - "UNCOMPROMISED" : The device is safe (currently, this means Android
  /// device is unrooted).
  core.String? compromisedState;

  /// When the Company-Owned device was imported.
  ///
  /// This field is empty for BYOD devices.
  ///
  /// Output only.
  core.String? createTime;

  /// Type of device.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : Unknown device type
  /// - "ANDROID" : Device is an Android device
  /// - "IOS" : Device is an iOS device
  /// - "GOOGLE_SYNC" : Device is a Google Sync device.
  /// - "WINDOWS" : Device is a Windows device.
  /// - "MAC_OS" : Device is a MacOS device.
  /// - "LINUX" : Device is a Linux device.
  /// - "CHROME_OS" : Device is a ChromeOS device.
  core.String? deviceType;

  /// Whether developer options is enabled on device.
  ///
  /// Output only.
  core.bool? enabledDeveloperOptions;

  /// Whether USB debugging is enabled on device.
  ///
  /// Output only.
  core.bool? enabledUsbDebugging;

  /// Device encryption state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENCRYPTION_STATE_UNSPECIFIED" : Encryption Status is not set.
  /// - "UNSUPPORTED_BY_DEVICE" : Device doesn't support encryption.
  /// - "ENCRYPTED" : Device is encrypted.
  /// - "NOT_ENCRYPTED" : Device is not encrypted.
  core.String? encryptionState;

  /// IMEI number of device if GSM device; empty otherwise.
  ///
  /// Output only.
  core.String? imei;

  /// Kernel version of the device.
  ///
  /// Output only.
  core.String? kernelVersion;

  /// Most recent time when device synced with this service.
  core.String? lastSyncTime;

  /// Management state of the device
  ///
  /// Output only.
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
  core.String? managementState;

  /// Device manufacturer.
  ///
  /// Example: Motorola.
  ///
  /// Output only.
  core.String? manufacturer;

  /// MEID number of device if CDMA device; empty otherwise.
  ///
  /// Output only.
  core.String? meid;

  /// Model name of device.
  ///
  /// Example: Pixel 3.
  ///
  /// Output only.
  core.String? model;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Device in format: `devices/{device}`, where device is the unique id
  /// assigned to the Device.
  ///
  /// Output only.
  core.String? name;

  /// Mobile or network operator of device, if available.
  ///
  /// Output only.
  core.String? networkOperator;

  /// OS version of the device.
  ///
  /// Example: Android 8.1.0.
  ///
  /// Output only.
  core.String? osVersion;

  /// Domain name for Google accounts on device.
  ///
  /// Type for other accounts on device. On Android, will only be populated if
  /// |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not
  /// include the account signed in to the device policy app if that account's
  /// domain has only one account. Examples: "com.example", "xyz.com".
  ///
  /// Output only.
  core.List<core.String>? otherAccounts;

  /// Whether the device is owned by the company or an individual
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEVICE_OWNERSHIP_UNSPECIFIED" : Default value. The value is unused.
  /// - "COMPANY" : Company owns the device.
  /// - "BYOD" : Bring Your Own Device (i.e. individual owns the device)
  core.String? ownerType;

  /// OS release version.
  ///
  /// Example: 6.0.
  ///
  /// Output only.
  core.String? releaseVersion;

  /// OS security patch update time on device.
  ///
  /// Output only.
  core.String? securityPatchTime;

  /// Serial Number of device.
  ///
  /// Example: HT82V1A01076.
  core.String? serialNumber;

  /// WiFi MAC addresses of device.
  core.List<core.String>? wifiMacAddresses;

  GoogleAppsCloudidentityDevicesV1Device({
    this.androidSpecificAttributes,
    this.assetTag,
    this.basebandVersion,
    this.bootloaderVersion,
    this.brand,
    this.buildNumber,
    this.compromisedState,
    this.createTime,
    this.deviceType,
    this.enabledDeveloperOptions,
    this.enabledUsbDebugging,
    this.encryptionState,
    this.imei,
    this.kernelVersion,
    this.lastSyncTime,
    this.managementState,
    this.manufacturer,
    this.meid,
    this.model,
    this.name,
    this.networkOperator,
    this.osVersion,
    this.otherAccounts,
    this.ownerType,
    this.releaseVersion,
    this.securityPatchTime,
    this.serialNumber,
    this.wifiMacAddresses,
  });

  GoogleAppsCloudidentityDevicesV1Device.fromJson(core.Map _json)
      : this(
          androidSpecificAttributes:
              _json.containsKey('androidSpecificAttributes')
                  ? GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(
                      _json['androidSpecificAttributes']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          assetTag: _json.containsKey('assetTag')
              ? _json['assetTag'] as core.String
              : null,
          basebandVersion: _json.containsKey('basebandVersion')
              ? _json['basebandVersion'] as core.String
              : null,
          bootloaderVersion: _json.containsKey('bootloaderVersion')
              ? _json['bootloaderVersion'] as core.String
              : null,
          brand:
              _json.containsKey('brand') ? _json['brand'] as core.String : null,
          buildNumber: _json.containsKey('buildNumber')
              ? _json['buildNumber'] as core.String
              : null,
          compromisedState: _json.containsKey('compromisedState')
              ? _json['compromisedState'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deviceType: _json.containsKey('deviceType')
              ? _json['deviceType'] as core.String
              : null,
          enabledDeveloperOptions: _json.containsKey('enabledDeveloperOptions')
              ? _json['enabledDeveloperOptions'] as core.bool
              : null,
          enabledUsbDebugging: _json.containsKey('enabledUsbDebugging')
              ? _json['enabledUsbDebugging'] as core.bool
              : null,
          encryptionState: _json.containsKey('encryptionState')
              ? _json['encryptionState'] as core.String
              : null,
          imei: _json.containsKey('imei') ? _json['imei'] as core.String : null,
          kernelVersion: _json.containsKey('kernelVersion')
              ? _json['kernelVersion'] as core.String
              : null,
          lastSyncTime: _json.containsKey('lastSyncTime')
              ? _json['lastSyncTime'] as core.String
              : null,
          managementState: _json.containsKey('managementState')
              ? _json['managementState'] as core.String
              : null,
          manufacturer: _json.containsKey('manufacturer')
              ? _json['manufacturer'] as core.String
              : null,
          meid: _json.containsKey('meid') ? _json['meid'] as core.String : null,
          model:
              _json.containsKey('model') ? _json['model'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          networkOperator: _json.containsKey('networkOperator')
              ? _json['networkOperator'] as core.String
              : null,
          osVersion: _json.containsKey('osVersion')
              ? _json['osVersion'] as core.String
              : null,
          otherAccounts: _json.containsKey('otherAccounts')
              ? (_json['otherAccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ownerType: _json.containsKey('ownerType')
              ? _json['ownerType'] as core.String
              : null,
          releaseVersion: _json.containsKey('releaseVersion')
              ? _json['releaseVersion'] as core.String
              : null,
          securityPatchTime: _json.containsKey('securityPatchTime')
              ? _json['securityPatchTime'] as core.String
              : null,
          serialNumber: _json.containsKey('serialNumber')
              ? _json['serialNumber'] as core.String
              : null,
          wifiMacAddresses: _json.containsKey('wifiMacAddresses')
              ? (_json['wifiMacAddresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidSpecificAttributes != null)
          'androidSpecificAttributes': androidSpecificAttributes!,
        if (assetTag != null) 'assetTag': assetTag!,
        if (basebandVersion != null) 'basebandVersion': basebandVersion!,
        if (bootloaderVersion != null) 'bootloaderVersion': bootloaderVersion!,
        if (brand != null) 'brand': brand!,
        if (buildNumber != null) 'buildNumber': buildNumber!,
        if (compromisedState != null) 'compromisedState': compromisedState!,
        if (createTime != null) 'createTime': createTime!,
        if (deviceType != null) 'deviceType': deviceType!,
        if (enabledDeveloperOptions != null)
          'enabledDeveloperOptions': enabledDeveloperOptions!,
        if (enabledUsbDebugging != null)
          'enabledUsbDebugging': enabledUsbDebugging!,
        if (encryptionState != null) 'encryptionState': encryptionState!,
        if (imei != null) 'imei': imei!,
        if (kernelVersion != null) 'kernelVersion': kernelVersion!,
        if (lastSyncTime != null) 'lastSyncTime': lastSyncTime!,
        if (managementState != null) 'managementState': managementState!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (meid != null) 'meid': meid!,
        if (model != null) 'model': model!,
        if (name != null) 'name': name!,
        if (networkOperator != null) 'networkOperator': networkOperator!,
        if (osVersion != null) 'osVersion': osVersion!,
        if (otherAccounts != null) 'otherAccounts': otherAccounts!,
        if (ownerType != null) 'ownerType': ownerType!,
        if (releaseVersion != null) 'releaseVersion': releaseVersion!,
        if (securityPatchTime != null) 'securityPatchTime': securityPatchTime!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (wifiMacAddresses != null) 'wifiMacAddresses': wifiMacAddresses!,
      };
}

/// Represents a user's use of a Device in the Cloud Identity Devices API.
///
/// A DeviceUser is a resource representing a user's use of a Device
class GoogleAppsCloudidentityDevicesV1DeviceUser {
  /// Compromised State of the DeviceUser object
  /// Possible string values are:
  /// - "COMPROMISED_STATE_UNSPECIFIED" : Compromised state of Device User
  /// account is unknown or unspecified.
  /// - "COMPROMISED" : Device User Account is compromised.
  /// - "NOT_COMPROMISED" : Device User Account is not compromised.
  core.String? compromisedState;

  /// When the user first signed in to the device
  core.String? createTime;

  /// Most recent time when user registered with this service.
  ///
  /// Output only.
  core.String? firstSyncTime;

  /// Default locale used on device, in IETF BCP-47 format.
  ///
  /// Output only.
  core.String? languageCode;

  /// Last time when user synced with policies.
  ///
  /// Output only.
  core.String? lastSyncTime;

  /// Management state of the user on the device.
  ///
  /// Output only.
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
  core.String? managementState;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the DeviceUser in format: `devices/{device}/deviceUsers/{device_user}`,
  /// where `device_user` uniquely identifies a user's use of a device.
  ///
  /// Output only.
  core.String? name;

  /// Password state of the DeviceUser object
  /// Possible string values are:
  /// - "PASSWORD_STATE_UNSPECIFIED" : Password state not set.
  /// - "PASSWORD_SET" : Password set in object.
  /// - "PASSWORD_NOT_SET" : Password not set in object.
  core.String? passwordState;

  /// User agent on the device for this specific user
  ///
  /// Output only.
  core.String? userAgent;

  /// Email address of the user registered on the device.
  core.String? userEmail;

  GoogleAppsCloudidentityDevicesV1DeviceUser({
    this.compromisedState,
    this.createTime,
    this.firstSyncTime,
    this.languageCode,
    this.lastSyncTime,
    this.managementState,
    this.name,
    this.passwordState,
    this.userAgent,
    this.userEmail,
  });

  GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(core.Map _json)
      : this(
          compromisedState: _json.containsKey('compromisedState')
              ? _json['compromisedState'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          firstSyncTime: _json.containsKey('firstSyncTime')
              ? _json['firstSyncTime'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          lastSyncTime: _json.containsKey('lastSyncTime')
              ? _json['lastSyncTime'] as core.String
              : null,
          managementState: _json.containsKey('managementState')
              ? _json['managementState'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          passwordState: _json.containsKey('passwordState')
              ? _json['passwordState'] as core.String
              : null,
          userAgent: _json.containsKey('userAgent')
              ? _json['userAgent'] as core.String
              : null,
          userEmail: _json.containsKey('userEmail')
              ? _json['userEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compromisedState != null) 'compromisedState': compromisedState!,
        if (createTime != null) 'createTime': createTime!,
        if (firstSyncTime != null) 'firstSyncTime': firstSyncTime!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (lastSyncTime != null) 'lastSyncTime': lastSyncTime!,
        if (managementState != null) 'managementState': managementState!,
        if (name != null) 'name': name!,
        if (passwordState != null) 'passwordState': passwordState!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (userEmail != null) 'userEmail': userEmail!,
      };
}

/// Response message that is returned in ListClientStates.
class GoogleAppsCloudidentityDevicesV1ListClientStatesResponse {
  /// Client states meeting the list restrictions.
  core.List<GoogleAppsCloudidentityDevicesV1ClientState>? clientStates;

  /// Token to retrieve the next page of results.
  ///
  /// Empty if there are no more results.
  core.String? nextPageToken;

  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse({
    this.clientStates,
    this.nextPageToken,
  });

  GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
      core.Map _json)
      : this(
          clientStates: _json.containsKey('clientStates')
              ? (_json['clientStates'] as core.List)
                  .map((value) =>
                      GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientStates != null) 'clientStates': clientStates!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message that is returned from the ListDeviceUsers method.
class GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse {
  /// Devices meeting the list restrictions.
  core.List<GoogleAppsCloudidentityDevicesV1DeviceUser>? deviceUsers;

  /// Token to retrieve the next page of results.
  ///
  /// Empty if there are no more results.
  core.String? nextPageToken;

  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse({
    this.deviceUsers,
    this.nextPageToken,
  });

  GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
      core.Map _json)
      : this(
          deviceUsers: _json.containsKey('deviceUsers')
              ? (_json['deviceUsers'] as core.List)
                  .map((value) =>
                      GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceUsers != null) 'deviceUsers': deviceUsers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message that is returned from the ListDevices method.
class GoogleAppsCloudidentityDevicesV1ListDevicesResponse {
  /// Devices meeting the list restrictions.
  core.List<GoogleAppsCloudidentityDevicesV1Device>? devices;

  /// Token to retrieve the next page of results.
  ///
  /// Empty if there are no more results.
  core.String? nextPageToken;

  GoogleAppsCloudidentityDevicesV1ListDevicesResponse({
    this.devices,
    this.nextPageToken,
  });

  GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(core.Map _json)
      : this(
          devices: _json.containsKey('devices')
              ? (_json['devices'] as core.List)
                  .map((value) =>
                      GoogleAppsCloudidentityDevicesV1Device.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devices != null) 'devices': devices!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response containing resource names of the DeviceUsers associated with the
/// caller's credentials.
class GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse {
  /// The obfuscated customer Id that may be passed back to other Devices API
  /// methods such as List, Get, etc.
  core.String? customer;

  /// [Resource names](https://cloud.google.com/apis/design/resource_names) of
  /// the DeviceUsers in the format:
  /// `devices/{device}/deviceUsers/{user_resource}`, where device is the unique
  /// ID assigned to a Device and user_resource is the unique user ID
  core.List<core.String>? names;

  /// Token to retrieve the next page of results.
  ///
  /// Empty if there are no more results.
  core.String? nextPageToken;

  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse({
    this.customer,
    this.names,
    this.nextPageToken,
  });

  GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse.fromJson(
      core.Map _json)
      : this(
          customer: _json.containsKey('customer')
              ? _json['customer'] as core.String
              : null,
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customer != null) 'customer': customer!,
        if (names != null) 'names': names!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message for wiping all data on the device.
class GoogleAppsCloudidentityDevicesV1WipeDeviceRequest {
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer.
  ///
  /// If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
  ///
  /// Optional.
  core.String? customer;

  /// Specifies if a user is able to factory reset a device after a Device Wipe.
  ///
  /// On iOS, this is called "Activation Lock", while on Android, this is known
  /// as "Factory Reset Protection". If true, this protection will be removed
  /// from the device, so that a user can successfully factory reset. If false,
  /// the setting is untouched on the device.
  ///
  /// Optional.
  core.bool? removeResetLock;

  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest({
    this.customer,
    this.removeResetLock,
  });

  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(core.Map _json)
      : this(
          customer: _json.containsKey('customer')
              ? _json['customer'] as core.String
              : null,
          removeResetLock: _json.containsKey('removeResetLock')
              ? _json['removeResetLock'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customer != null) 'customer': customer!,
        if (removeResetLock != null) 'removeResetLock': removeResetLock!,
      };
}

/// Request message for starting an account wipe on device.
typedef GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest = $Request00;

/// A group within the Cloud Identity Groups API.
///
/// A `Group` is a collection of entities, where each entity is either a user,
/// another group, or a service account.
class Group {
  /// The time when the `Group` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An extended description to help users determine the purpose of a `Group`.
  ///
  /// Must not be longer than 4,096 characters.
  core.String? description;

  /// The display name of the `Group`.
  core.String? displayName;

  /// Dynamic group metadata like queries and status.
  ///
  /// Optional.
  DynamicGroupMetadata? dynamicGroupMetadata;

  /// The `EntityKey` of the `Group`.
  ///
  /// Required.
  EntityKey? groupKey;

  /// One or more label entries that apply to the Group.
  ///
  /// Currently supported labels contain a key with an empty value. Google
  /// Groups are the default type of group and have a label with a key of
  /// `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value.
  /// Existing Google Groups can have an additional label with a key of
  /// `cloudidentity.googleapis.com/groups.security` and an empty value added to
  /// them. **This is an immutable change and the security label cannot be
  /// removed once added.** Dynamic groups have a label with a key of
  /// `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for
  /// Cloud Search have a label with a key of `system/groups/external` and an
  /// empty value.
  ///
  /// Required.
  core.Map<core.String, core.String>? labels;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names)
  /// of the `Group`.
  ///
  /// Shall be of the form `groups/{group}`.
  ///
  /// Output only.
  core.String? name;

  /// The resource name of the entity under which this `Group` resides in the
  /// Cloud Identity resource hierarchy.
  ///
  /// Must be of the form `identitysources/{identity_source}` for external-
  /// identity-mapped groups or `customers/{customer}` for Google Groups. The
  /// `customer` must begin with "C" (for example, 'C046psxkn').
  ///
  /// Required. Immutable.
  core.String? parent;

  /// The time when the `Group` was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Group({
    this.createTime,
    this.description,
    this.displayName,
    this.dynamicGroupMetadata,
    this.groupKey,
    this.labels,
    this.name,
    this.parent,
    this.updateTime,
  });

  Group.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          dynamicGroupMetadata: _json.containsKey('dynamicGroupMetadata')
              ? DynamicGroupMetadata.fromJson(_json['dynamicGroupMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          groupKey: _json.containsKey('groupKey')
              ? EntityKey.fromJson(
                  _json['groupKey'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (dynamicGroupMetadata != null)
          'dynamicGroupMetadata': dynamicGroupMetadata!,
        if (groupKey != null) 'groupKey': groupKey!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Message representing a transitive group of a user or a group.
class GroupRelation {
  /// Display name for this group.
  core.String? displayName;

  /// Resource name for this group.
  core.String? group;

  /// Entity key has an id and a namespace.
  ///
  /// In case of discussion forums, the id will be an email address without a
  /// namespace.
  EntityKey? groupKey;

  /// Labels for Group resource.
  core.Map<core.String, core.String>? labels;

  /// The relation between the member and the transitive group.
  /// Possible string values are:
  /// - "RELATION_TYPE_UNSPECIFIED" : The relation type is undefined or
  /// undetermined.
  /// - "DIRECT" : The two entities have only a direct membership with each
  /// other.
  /// - "INDIRECT" : The two entities have only an indirect membership with each
  /// other.
  /// - "DIRECT_AND_INDIRECT" : The two entities have both a direct and an
  /// indirect membership with each other.
  core.String? relationType;

  /// Membership roles of the member for the group.
  core.List<TransitiveMembershipRole>? roles;

  GroupRelation({
    this.displayName,
    this.group,
    this.groupKey,
    this.labels,
    this.relationType,
    this.roles,
  });

  GroupRelation.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          group:
              _json.containsKey('group') ? _json['group'] as core.String : null,
          groupKey: _json.containsKey('groupKey')
              ? EntityKey.fromJson(
                  _json['groupKey'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          relationType: _json.containsKey('relationType')
              ? _json['relationType'] as core.String
              : null,
          roles: _json.containsKey('roles')
              ? (_json['roles'] as core.List)
                  .map((value) => TransitiveMembershipRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (group != null) 'group': group!,
        if (groupKey != null) 'groupKey': groupKey!,
        if (labels != null) 'labels': labels!,
        if (relationType != null) 'relationType': relationType!,
        if (roles != null) 'roles': roles!,
      };
}

/// Response message for ListGroups operation.
class ListGroupsResponse {
  /// Groups returned in response to list request.
  ///
  /// The results are not sorted.
  core.List<Group>? groups;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results available for listing.
  core.String? nextPageToken;

  ListGroupsResponse({
    this.groups,
    this.nextPageToken,
  });

  ListGroupsResponse.fromJson(core.Map _json)
      : this(
          groups: _json.containsKey('groups')
              ? (_json['groups'] as core.List)
                  .map((value) => Group.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groups != null) 'groups': groups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for MembershipsService.ListMemberships.
class ListMembershipsResponse {
  /// The `Membership`s under the specified `parent`.
  core.List<Membership>? memberships;

  /// A continuation token to retrieve the next page of results, or empty if
  /// there are no more results available.
  core.String? nextPageToken;

  ListMembershipsResponse({
    this.memberships,
    this.nextPageToken,
  });

  ListMembershipsResponse.fromJson(core.Map _json)
      : this(
          memberships: _json.containsKey('memberships')
              ? (_json['memberships'] as core.List)
                  .map((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberships != null) 'memberships': memberships!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for GroupsService.LookupGroupName.
class LookupGroupNameResponse {
  /// The [resource name](https://cloud.google.com/apis/design/resource_names)
  /// of the looked-up `Group`.
  core.String? name;

  LookupGroupNameResponse({
    this.name,
  });

  LookupGroupNameResponse.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// The response message for MembershipsService.LookupMembershipName.
class LookupMembershipNameResponse {
  /// The [resource name](https://cloud.google.com/apis/design/resource_names)
  /// of the looked-up `Membership`.
  ///
  /// Must be of the form `groups/{group}/memberships/{membership}`.
  core.String? name;

  LookupMembershipNameResponse({
    this.name,
  });

  LookupMembershipNameResponse.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Message representing a transitive membership of a group.
class MemberRelation {
  /// Resource name for this member.
  core.String? member;

  /// Entity key has an id and a namespace.
  ///
  /// In case of discussion forums, the id will be an email address without a
  /// namespace.
  core.List<EntityKey>? preferredMemberKey;

  /// The relation between the group and the transitive member.
  /// Possible string values are:
  /// - "RELATION_TYPE_UNSPECIFIED" : The relation type is undefined or
  /// undetermined.
  /// - "DIRECT" : The two entities have only a direct membership with each
  /// other.
  /// - "INDIRECT" : The two entities have only an indirect membership with each
  /// other.
  /// - "DIRECT_AND_INDIRECT" : The two entities have both a direct and an
  /// indirect membership with each other.
  core.String? relationType;

  /// The membership role details (i.e name of role and expiry time).
  core.List<TransitiveMembershipRole>? roles;

  MemberRelation({
    this.member,
    this.preferredMemberKey,
    this.relationType,
    this.roles,
  });

  MemberRelation.fromJson(core.Map _json)
      : this(
          member: _json.containsKey('member')
              ? _json['member'] as core.String
              : null,
          preferredMemberKey: _json.containsKey('preferredMemberKey')
              ? (_json['preferredMemberKey'] as core.List)
                  .map((value) => EntityKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relationType: _json.containsKey('relationType')
              ? _json['relationType'] as core.String
              : null,
          roles: _json.containsKey('roles')
              ? (_json['roles'] as core.List)
                  .map((value) => TransitiveMembershipRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (member != null) 'member': member!,
        if (preferredMemberKey != null)
          'preferredMemberKey': preferredMemberKey!,
        if (relationType != null) 'relationType': relationType!,
        if (roles != null) 'roles': roles!,
      };
}

/// The definition of MemberRestriction
class MemberRestriction {
  /// The evaluated state of this restriction on a group.
  RestrictionEvaluation? evaluation;

  /// Member Restriction as defined by CEL expression.
  ///
  /// Supported restrictions are: `member.customer_id` and `member.type`. Valid
  /// values for `member.type` are `1`, `2` and `3`. They correspond to USER,
  /// SERVICE_ACCOUNT, and GROUP respectively. The value for
  /// `member.customer_id` only supports `groupCustomerId()` currently which
  /// means the customer id of the group will be used for restriction. Supported
  /// operators are `&&`, `||` and `==`, corresponding to AND, OR, and EQUAL.
  /// Examples: Allow only service accounts of given customer to be members.
  /// `member.type == 2 && member.customer_id == groupCustomerId()` Allow only
  /// users or groups to be members. `member.type == 1 || member.type == 3`
  core.String? query;

  MemberRestriction({
    this.evaluation,
    this.query,
  });

  MemberRestriction.fromJson(core.Map _json)
      : this(
          evaluation: _json.containsKey('evaluation')
              ? RestrictionEvaluation.fromJson(
                  _json['evaluation'] as core.Map<core.String, core.dynamic>)
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluation != null) 'evaluation': evaluation!,
        if (query != null) 'query': query!,
      };
}

/// A membership within the Cloud Identity Groups API.
///
/// A `Membership` defines a relationship between a `Group` and an entity
/// belonging to that `Group`, referred to as a "member".
class Membership {
  /// The time when the `Membership` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names)
  /// of the `Membership`.
  ///
  /// Shall be of the form `groups/{group}/memberships/{membership}`.
  ///
  /// Output only.
  core.String? name;

  /// The `EntityKey` of the member.
  ///
  /// Required. Immutable.
  EntityKey? preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`.
  ///
  /// If unspecified, defaults to a single `MembershipRole` with `name`
  /// `MEMBER`. Must not contain duplicate `MembershipRole`s with the same
  /// `name`.
  core.List<MembershipRole>? roles;

  /// The type of the membership.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default. Should not be used.
  /// - "USER" : Represents user type.
  /// - "SERVICE_ACCOUNT" : Represents service account type.
  /// - "GROUP" : Represents group type.
  /// - "SHARED_DRIVE" : Represents Shared drive.
  /// - "OTHER" : Represents other type.
  core.String? type;

  /// The time when the `Membership` was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Membership({
    this.createTime,
    this.name,
    this.preferredMemberKey,
    this.roles,
    this.type,
    this.updateTime,
  });

  Membership.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          preferredMemberKey: _json.containsKey('preferredMemberKey')
              ? EntityKey.fromJson(_json['preferredMemberKey']
                  as core.Map<core.String, core.dynamic>)
              : null,
          roles: _json.containsKey('roles')
              ? (_json['roles'] as core.List)
                  .map((value) => MembershipRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (preferredMemberKey != null)
          'preferredMemberKey': preferredMemberKey!,
        if (roles != null) 'roles': roles!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A membership role within the Cloud Identity Groups API.
///
/// A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRole {
  /// The expiry details of the `MembershipRole`.
  ///
  /// Expiry details are only supported for `MEMBER` `MembershipRoles`. May be
  /// set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  ExpiryDetail? expiryDetail;

  /// The name of the `MembershipRole`.
  ///
  /// Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  core.String? name;

  /// Evaluations of restrictions applied to parent group on this membership.
  RestrictionEvaluations? restrictionEvaluations;

  MembershipRole({
    this.expiryDetail,
    this.name,
    this.restrictionEvaluations,
  });

  MembershipRole.fromJson(core.Map _json)
      : this(
          expiryDetail: _json.containsKey('expiryDetail')
              ? ExpiryDetail.fromJson(
                  _json['expiryDetail'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          restrictionEvaluations: _json.containsKey('restrictionEvaluations')
              ? RestrictionEvaluations.fromJson(_json['restrictionEvaluations']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiryDetail != null) 'expiryDetail': expiryDetail!,
        if (name != null) 'name': name!,
        if (restrictionEvaluations != null)
          'restrictionEvaluations': restrictionEvaluations!,
      };
}

/// The evaluated state of this restriction.
class MembershipRoleRestrictionEvaluation {
  /// The current state of the restriction
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default. Should not be used.
  /// - "COMPLIANT" : The member adheres to the parent group's restriction.
  /// - "FORWARD_COMPLIANT" : The group-group membership might be currently
  /// violating some parent group's restriction but in future, it will never
  /// allow any new member in the child group which can violate parent group's
  /// restriction.
  /// - "NON_COMPLIANT" : The member violates the parent group's restriction.
  /// - "EVALUATING" : The state of the membership is under evaluation.
  core.String? state;

  MembershipRoleRestrictionEvaluation({
    this.state,
  });

  MembershipRoleRestrictionEvaluation.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// The request message for MembershipsService.ModifyMembershipRoles.
class ModifyMembershipRolesRequest {
  /// The `MembershipRole`s to be added.
  ///
  /// Adding or removing roles in the same request as updating roles is not
  /// supported. Must not be set if `update_roles_params` is set.
  core.List<MembershipRole>? addRoles;

  /// The `name`s of the `MembershipRole`s to be removed.
  ///
  /// Adding or removing roles in the same request as updating roles is not
  /// supported. It is not possible to remove the `MEMBER` `MembershipRole`. If
  /// you wish to delete a `Membership`, call
  /// MembershipsService.DeleteMembership instead. Must not contain `MEMBER`.
  /// Must not be set if `update_roles_params` is set.
  core.List<core.String>? removeRoles;

  /// The `MembershipRole`s to be updated.
  ///
  /// Updating roles in the same request as adding or removing roles is not
  /// supported. Must not be set if either `add_roles` or `remove_roles` is set.
  core.List<UpdateMembershipRolesParams>? updateRolesParams;

  ModifyMembershipRolesRequest({
    this.addRoles,
    this.removeRoles,
    this.updateRolesParams,
  });

  ModifyMembershipRolesRequest.fromJson(core.Map _json)
      : this(
          addRoles: _json.containsKey('addRoles')
              ? (_json['addRoles'] as core.List)
                  .map((value) => MembershipRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          removeRoles: _json.containsKey('removeRoles')
              ? (_json['removeRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateRolesParams: _json.containsKey('updateRolesParams')
              ? (_json['updateRolesParams'] as core.List)
                  .map((value) => UpdateMembershipRolesParams.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addRoles != null) 'addRoles': addRoles!,
        if (removeRoles != null) 'removeRoles': removeRoles!,
        if (updateRolesParams != null) 'updateRolesParams': updateRolesParams!,
      };
}

/// The response message for MembershipsService.ModifyMembershipRoles.
class ModifyMembershipRolesResponse {
  /// The `Membership` resource after modifying its `MembershipRole`s.
  Membership? membership;

  ModifyMembershipRolesResponse({
    this.membership,
  });

  ModifyMembershipRolesResponse.fromJson(core.Map _json)
      : this(
          membership: _json.containsKey('membership')
              ? Membership.fromJson(
                  _json['membership'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membership != null) 'membership': membership!,
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

/// The evaluated state of this restriction.
class RestrictionEvaluation {
  /// The current state of the restriction
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default. Should not be used.
  /// - "EVALUATING" : The restriction state is currently being evaluated.
  /// - "COMPLIANT" : All transitive memberships are adhering to restriction.
  /// - "FORWARD_COMPLIANT" : Some transitive memberships violate the
  /// restriction. No new violating memberships can be added.
  /// - "NON_COMPLIANT" : Some transitive memberships violate the restriction.
  /// New violating direct memberships will be denied while indirect memberships
  /// may be added.
  core.String? state;

  RestrictionEvaluation({
    this.state,
  });

  RestrictionEvaluation.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// Evaluations of restrictions applied to parent group on this membership.
class RestrictionEvaluations {
  /// Evaluation of the member restriction applied to this membership.
  ///
  /// Empty if the user lacks permission to view the restriction evaluation.
  MembershipRoleRestrictionEvaluation? memberRestrictionEvaluation;

  RestrictionEvaluations({
    this.memberRestrictionEvaluation,
  });

  RestrictionEvaluations.fromJson(core.Map _json)
      : this(
          memberRestrictionEvaluation:
              _json.containsKey('memberRestrictionEvaluation')
                  ? MembershipRoleRestrictionEvaluation.fromJson(
                      _json['memberRestrictionEvaluation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberRestrictionEvaluation != null)
          'memberRestrictionEvaluation': memberRestrictionEvaluation!,
      };
}

/// The response message for GroupsService.SearchGroups.
class SearchGroupsResponse {
  /// The `Group` resources that match the search query.
  core.List<Group>? groups;

  /// A continuation token to retrieve the next page of results, or empty if
  /// there are no more results available.
  core.String? nextPageToken;

  SearchGroupsResponse({
    this.groups,
    this.nextPageToken,
  });

  SearchGroupsResponse.fromJson(core.Map _json)
      : this(
          groups: _json.containsKey('groups')
              ? (_json['groups'] as core.List)
                  .map((value) => Group.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groups != null) 'groups': groups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for MembershipsService.SearchTransitiveGroups.
class SearchTransitiveGroupsResponse {
  /// List of transitive groups satisfying the query.
  core.List<GroupRelation>? memberships;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results available for listing.
  core.String? nextPageToken;

  SearchTransitiveGroupsResponse({
    this.memberships,
    this.nextPageToken,
  });

  SearchTransitiveGroupsResponse.fromJson(core.Map _json)
      : this(
          memberships: _json.containsKey('memberships')
              ? (_json['memberships'] as core.List)
                  .map((value) => GroupRelation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberships != null) 'memberships': memberships!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for MembershipsService.SearchTransitiveMemberships.
class SearchTransitiveMembershipsResponse {
  /// List of transitive members satisfying the query.
  core.List<MemberRelation>? memberships;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  SearchTransitiveMembershipsResponse({
    this.memberships,
    this.nextPageToken,
  });

  SearchTransitiveMembershipsResponse.fromJson(core.Map _json)
      : this(
          memberships: _json.containsKey('memberships')
              ? (_json['memberships'] as core.List)
                  .map((value) => MemberRelation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberships != null) 'memberships': memberships!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The definition of security settings.
class SecuritySettings {
  /// The Member Restriction value
  MemberRestriction? memberRestriction;

  /// The resource name of the security settings.
  ///
  /// Shall be of the form `groups/{group_id}/securitySettings`.
  ///
  /// Output only.
  core.String? name;

  SecuritySettings({
    this.memberRestriction,
    this.name,
  });

  SecuritySettings.fromJson(core.Map _json)
      : this(
          memberRestriction: _json.containsKey('memberRestriction')
              ? MemberRestriction.fromJson(_json['memberRestriction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberRestriction != null) 'memberRestriction': memberRestriction!,
        if (name != null) 'name': name!,
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

/// Message representing the role of a TransitiveMembership.
class TransitiveMembershipRole {
  /// TransitiveMembershipRole in string format.
  ///
  /// Currently supported TransitiveMembershipRoles: `"MEMBER"`, `"OWNER"`, and
  /// `"MANAGER"`.
  core.String? role;

  TransitiveMembershipRole({
    this.role,
  });

  TransitiveMembershipRole.fromJson(core.Map _json)
      : this(
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (role != null) 'role': role!,
      };
}

/// The details of an update to a `MembershipRole`.
class UpdateMembershipRolesParams {
  /// The fully-qualified names of fields to update.
  ///
  /// May only contain the field `expiry_detail.expire_time`.
  core.String? fieldMask;

  /// The `MembershipRole`s to be updated.
  ///
  /// Only `MEMBER` `MembershipRole` can currently be updated.
  MembershipRole? membershipRole;

  UpdateMembershipRolesParams({
    this.fieldMask,
    this.membershipRole,
  });

  UpdateMembershipRolesParams.fromJson(core.Map _json)
      : this(
          fieldMask: _json.containsKey('fieldMask')
              ? _json['fieldMask'] as core.String
              : null,
          membershipRole: _json.containsKey('membershipRole')
              ? MembershipRole.fromJson(_json['membershipRole']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (membershipRole != null) 'membershipRole': membershipRole!,
      };
}
