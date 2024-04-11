// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
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
/// - [CustomersResource]
///   - [CustomersUserinvitationsResource]
/// - [DevicesResource]
///   - [DevicesDeviceUsersResource]
///     - [DevicesDeviceUsersClientStatesResource]
/// - [GroupsResource]
///   - [GroupsMembershipsResource]
/// - [InboundSamlSsoProfilesResource]
///   - [InboundSamlSsoProfilesIdpCredentialsResource]
/// - [InboundSsoAssignmentsResource]
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

  CustomersResource get customers => CustomersResource(_requester);
  DevicesResource get devices => DevicesResource(_requester);
  GroupsResource get groups => GroupsResource(_requester);
  InboundSamlSsoProfilesResource get inboundSamlSsoProfiles =>
      InboundSamlSsoProfilesResource(_requester);
  InboundSsoAssignmentsResource get inboundSsoAssignments =>
      InboundSsoAssignmentsResource(_requester);

  CloudIdentityApi(http.Client client,
      {core.String rootUrl = 'https://cloudidentity.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersUserinvitationsResource get userinvitations =>
      CustomersUserinvitationsResource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;
}

class CustomersUserinvitationsResource {
  final commons.ApiRequester _requester;

  CustomersUserinvitationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Cancels a UserInvitation that was already sent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. `UserInvitation` name in the format
  /// `customers/{customer}/userinvitations/{user_email_address}`
  /// Value must have pattern `^customers/\[^/\]+/userinvitations/\[^/\]+$`.
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
  async.Future<Operation> cancel(
    CancelUserInvitationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a UserInvitation resource.
  ///
  /// **Note:** New consumer accounts with the customer's verified domain
  /// created within the previous 48 hours will not appear in the result. This
  /// delay also applies to newly-verified domains.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. `UserInvitation` name in the format
  /// `customers/{customer}/userinvitations/{user_email_address}`
  /// Value must have pattern `^customers/\[^/\]+/userinvitations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserInvitation> get(
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
    return UserInvitation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verifies whether a user account is eligible to receive a UserInvitation
  /// (is an unmanaged account).
  ///
  /// Eligibility is based on the following criteria: * the email address is a
  /// consumer account and it's the primary email address of the account, and *
  /// the domain of the email address matches an existing verified Google
  /// Workspace or Cloud Identity domain If both conditions are met, the user is
  /// eligible. **Note:** This method is not supported for Workspace Essentials
  /// customers.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. `UserInvitation` name in the format
  /// `customers/{customer}/userinvitations/{user_email_address}`
  /// Value must have pattern `^customers/\[^/\]+/userinvitations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IsInvitableUserResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IsInvitableUserResponse> isInvitableUser(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':isInvitableUser';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return IsInvitableUserResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of UserInvitation resources.
  ///
  /// **Note:** New consumer accounts with the customer's verified domain
  /// created within the previous 48 hours will not appear in the result. This
  /// delay also applies to newly-verified domains.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The customer ID of the Google Workspace or Cloud
  /// Identity account the UserInvitation resources are associated with.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Optional. A query string for filtering `UserInvitation` results
  /// by their current state, in the format: `"state=='invited'"`.
  ///
  /// [orderBy] - Optional. The sort order of the list results. You can sort the
  /// results in descending order based on either email or last update timestamp
  /// but not both, using `order_by="email desc"`. Currently, sorting is
  /// supported for `update_time asc`, `update_time desc`, `email asc`, and
  /// `email desc`. If not specified, results will be returned based on `email
  /// asc` order.
  ///
  /// [pageSize] - Optional. The maximum number of UserInvitation resources to
  /// return. If unspecified, at most 100 resources will be returned. The
  /// maximum value is 200; values above 200 will be set to 200.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListUserInvitations` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListBooks` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserInvitationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserInvitationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userinvitations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserInvitationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends a UserInvitation to email.
  ///
  /// If the `UserInvitation` does not exist for this request and it is a valid
  /// request, the request creates a `UserInvitation`. **Note:** The `get` and
  /// `list` methods have a 48-hour delay where newly-created consumer accounts
  /// will not appear in the results. You can still send a `UserInvitation` to
  /// those accounts if you know the unmanaged email address and
  /// IsInvitableUser==True.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. `UserInvitation` name in the format
  /// `customers/{customer}/userinvitations/{user_email_address}`
  /// Value must have pattern `^customers/\[^/\]+/userinvitations/\[^/\]+$`.
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
  async.Future<Operation> send(
    SendUserInvitationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':send';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancelWipe';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/devices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsCloudidentityDevicesV1Device.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':wipe';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':block';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancelWipe';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deviceUsers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// dependent files. * macOS: ~/.secureConnect/context_aware_config.json *
  /// Windows: %USERPROFILE%\AppData\Local\Google\Endpoint
  /// Verification\accounts.json * Linux:
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (androidId != null) 'androidId': [androidId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (rawResourceId != null) 'rawResourceId': [rawResourceId],
      if (userId != null) 'userId': [userId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':lookup';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':wipe';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clientStates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (initialGroupConfig != null)
        'initialGroupConfig': [initialGroupConfig],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/groups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecuritySettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// external- identity-mapped groups or `customers/{customer_id}` for Google
  /// Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn').
  /// [Find your customer ID.](https://support.google.com/cloudidentity/answer/10070793)
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Looks up the
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of a
  /// `Group` by its `EntityKey`.
  ///
  /// Request parameters:
  ///
  /// [groupKey_id] - The ID of the entity. For Google-managed entities, the
  /// `id` should be the email address of an existing group or user. Email
  /// addresses need to adhere to
  /// [name guidelines for users and groups](https://support.google.com/a/answer/9193374).
  /// For external-identity-mapped entities, the `id` must be a string
  /// conforming to the Identity Source's requirements. Must be unique within a
  /// `namespace`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupKey_id != null) 'groupKey.id': [groupKey_id],
      if (groupKey_namespace != null)
        'groupKey.namespace': [groupKey_namespace],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/groups:lookup';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LookupGroupNameResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [query] - Required. The search query. * Must be specified in
  /// [Common Expression Language](https://opensource.google/projects/cel). *
  /// Must contain equality operators on the parent, e.g. `parent ==
  /// 'customers/{customer_id}'`. The `customer_id` must begin with "C" (for
  /// example, 'C046psxkn').
  /// [Find your customer ID.](https://support.google.com/cloudidentity/answer/10070793)
  /// * Can contain optional inclusion operators on `labels` such as
  /// `'cloudidentity.googleapis.com/groups.discussion_forum' in labels`). * Can
  /// contain an optional equality operator on `domain_name`. e.g. `domain_name
  /// == 'examplepetstore.com'` * Can contain optional
  /// `startsWith/contains/equality` operators on `group_key`, e.g.
  /// `group_key.startsWith('dev')`, `group_key.contains('dev'), group_key ==
  /// 'dev@examplepetstore.com'` * Can contain optional
  /// `startsWith/contains/equality` operators on `display_name`, such as
  /// `display_name.startsWith('dev')` , `display_name.contains('dev')`,
  /// `display_name == 'dev'`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/groups:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:checkTransitiveMembership';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckTransitiveMembershipResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Membership.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:getMembershipGraph';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMembershipsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `id` should be the email address of an existing group or user. Email
  /// addresses need to adhere to
  /// [name guidelines for users and groups](https://support.google.com/a/answer/9193374).
  /// For external-identity-mapped entities, the `id` must be a string
  /// conforming to the Identity Source's requirements. Must be unique within a
  /// `namespace`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (memberKey_id != null) 'memberKey.id': [memberKey_id],
      if (memberKey_namespace != null)
        'memberKey.namespace': [memberKey_namespace],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships:lookup';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LookupMembershipNameResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':modifyMembershipRoles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ModifyMembershipRolesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches direct groups of a member.
  ///
  /// Request parameters:
  ///
  /// [parent] -
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the group to search transitive memberships in. Format: groups/{group_id},
  /// where group_id is always '-' as this API will search across all groups for
  /// a given member.
  /// Value must have pattern `^groups/\[^/\]+$`.
  ///
  /// [orderBy] - The ordering of membership relation for the display name or
  /// email in the response. The syntax for this field can be found at
  /// https://cloud.google.com/apis/design/design_patterns#sorting_order.
  /// Example: Sort by the ascending display name: order_by="group_name" or
  /// order_by="group_name asc". Sort by the descending display name:
  /// order_by="group_name desc". Sort by the ascending group key:
  /// order_by="group_key" or order_by="group_key asc". Sort by the descending
  /// group key: order_by="group_key desc".
  ///
  /// [pageSize] - The default page size is 200 (max 1000).
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any
  ///
  /// [query] - Required. A CEL expression that MUST include member
  /// specification AND label(s). Users can search on label attributes of
  /// groups. CONTAINS match ('in') is supported on labels. Identity-mapped
  /// groups are uniquely identified by both a `member_key_id` and a
  /// `member_key_namespace`, which requires an additional query input:
  /// `member_key_namespace`. Example query: `member_key_id ==
  /// 'member_key_id_value' && 'label_value' in labels`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchDirectGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchDirectGroupsResponse> searchDirectGroups(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:searchDirectGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchDirectGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// 'member_key_id_value' && in labels` Query may optionally contain equality
  /// operators on the parent of the group restricting the search within a
  /// particular customer, e.g. `parent == 'customers/{customer_id}'`. The
  /// `customer_id` must begin with "C" (for example, 'C046psxkn'). This
  /// filtering is only supported for Admins with groups read permissons on the
  /// input customer. Example query: `member_key_id == 'member_key_id_value' &&
  /// in labels && parent == 'customers/C046psxkn'`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:searchTransitiveGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchTransitiveGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:searchTransitiveMemberships';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchTransitiveMembershipsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class InboundSamlSsoProfilesResource {
  final commons.ApiRequester _requester;

  InboundSamlSsoProfilesIdpCredentialsResource get idpCredentials =>
      InboundSamlSsoProfilesIdpCredentialsResource(_requester);

  InboundSamlSsoProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InboundSamlSsoProfile for a customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    InboundSamlSsoProfile request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/inboundSamlSsoProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InboundSamlSsoProfile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the InboundSamlSsoProfile to delete. Format:
  /// `inboundSamlSsoProfiles/{sso_profile_id}`
  /// Value must have pattern `^inboundSamlSsoProfiles/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Gets an InboundSamlSsoProfile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the InboundSamlSsoProfile to get. Format:
  /// `inboundSamlSsoProfiles/{sso_profile_id}`
  /// Value must have pattern `^inboundSamlSsoProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InboundSamlSsoProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InboundSamlSsoProfile> get(
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
    return InboundSamlSsoProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists InboundSamlSsoProfiles for a customer.
  ///
  /// Request parameters:
  ///
  /// [filter] - A
  /// [Common Expression Language](https://github.com/google/cel-spec)
  /// expression to filter the results. The only supported filter is filtering
  /// by customer. For example: `customer=="customers/C0123abc"`. Omitting the
  /// filter or specifying a filter of `customer=="customers/my_customer"` will
  /// return the profiles for the customer that the caller (authenticated user)
  /// belongs to.
  ///
  /// [pageSize] - The maximum number of InboundSamlSsoProfiles to return. The
  /// service may return fewer than this value. If omitted (or defaulted to
  /// zero) the server will use a sensible default. This default may change over
  /// time. The maximum allowed value is 100. Requests with page_size greater
  /// than that will be silently interpreted as having this maximum value.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListInboundSamlSsoProfiles` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListInboundSamlSsoProfiles` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInboundSamlSsoProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInboundSamlSsoProfilesResponse> list({
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

    const url_ = 'v1/inboundSamlSsoProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInboundSamlSsoProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an InboundSamlSsoProfile.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the SAML SSO profile.
  /// Value must have pattern `^inboundSamlSsoProfiles/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated.
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
    InboundSamlSsoProfile request,
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

class InboundSamlSsoProfilesIdpCredentialsResource {
  final commons.ApiRequester _requester;

  InboundSamlSsoProfilesIdpCredentialsResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds an IdpCredential.
  ///
  /// Up to 2 credentials are allowed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The InboundSamlSsoProfile that owns the
  /// IdpCredential. Format: `inboundSamlSsoProfiles/{sso_profile_id}`
  /// Value must have pattern `^inboundSamlSsoProfiles/\[^/\]+$`.
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
    AddIdpCredentialRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/idpCredentials:add';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an IdpCredential.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the IdpCredential to delete. Format:
  /// `inboundSamlSsoProfiles/{sso_profile_id}/idpCredentials/{idp_credential_id}`
  /// Value must have pattern
  /// `^inboundSamlSsoProfiles/\[^/\]+/idpCredentials/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Gets an IdpCredential.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the IdpCredential to retrieve. Format:
  /// `inboundSamlSsoProfiles/{sso_profile_id}/idpCredentials/{idp_credential_id}`
  /// Value must have pattern
  /// `^inboundSamlSsoProfiles/\[^/\]+/idpCredentials/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdpCredential].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdpCredential> get(
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
    return IdpCredential.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of IdpCredentials in an InboundSamlSsoProfile.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// `IdpCredential`s. Format: `inboundSamlSsoProfiles/{sso_profile_id}`
  /// Value must have pattern `^inboundSamlSsoProfiles/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of `IdpCredential`s to return. The service
  /// may return fewer than this value.
  ///
  /// [pageToken] - A page token, received from a previous `ListIdpCredentials`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListIdpCredentials` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListIdpCredentialsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIdpCredentialsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/idpCredentials';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListIdpCredentialsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class InboundSsoAssignmentsResource {
  final commons.ApiRequester _requester;

  InboundSsoAssignmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InboundSsoAssignment for users and devices in a `Customer`
  /// under a given `Group` or `OrgUnit`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    InboundSsoAssignment request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/inboundSsoAssignments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InboundSsoAssignment.
  ///
  /// To disable SSO, Create (or Update) an assignment that has `sso_mode` ==
  /// `SSO_OFF`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the InboundSsoAssignment to delete. Format:
  /// `inboundSsoAssignments/{assignment}`
  /// Value must have pattern `^inboundSsoAssignments/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Gets an InboundSsoAssignment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the InboundSsoAssignment to fetch. Format:
  /// `inboundSsoAssignments/{assignment}`
  /// Value must have pattern `^inboundSsoAssignments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InboundSsoAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InboundSsoAssignment> get(
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
    return InboundSsoAssignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the InboundSsoAssignments for a `Customer`.
  ///
  /// Request parameters:
  ///
  /// [filter] - A CEL expression to filter the results. The only supported
  /// filter is filtering by customer. For example:
  /// `customer==customers/C0123abc`. Omitting the filter or specifying a filter
  /// of `customer==customers/my_customer` will return the assignments for the
  /// customer that the caller (authenticated user) belongs to.
  ///
  /// [pageSize] - The maximum number of assignments to return. The service may
  /// return fewer than this value. If omitted (or defaulted to zero) the server
  /// will use a sensible default. This default may change over time. The
  /// maximum allowed value is 100, though requests with page_size greater than
  /// that will be silently interpreted as having this maximum value. This may
  /// increase in the futue.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListInboundSsoAssignments` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListInboundSsoAssignments` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInboundSsoAssignmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInboundSsoAssignmentsResponse> list({
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

    const url_ = 'v1/inboundSsoAssignments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInboundSsoAssignmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an InboundSsoAssignment.
  ///
  /// The body of this request is the `inbound_sso_assignment` field and the
  /// `update_mask` is relative to that. For example: a PATCH to
  /// `/v1/inboundSsoAssignments/0abcdefg1234567&update_mask=rank` with a body
  /// of `{ "rank": 1 }` moves that (presumably group-targeted) SSO assignment
  /// to the highest priority and shifts any other group-targeted assignments
  /// down in priority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only.
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Inbound SSO Assignment.
  /// Value must have pattern `^inboundSsoAssignments/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated.
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
    InboundSsoAssignment request,
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

/// The request for creating an IdpCredential with its associated payload.
///
/// An InboundSamlSsoProfile can own up to 2 credentials.
class AddIdpCredentialRequest {
  /// PEM encoded x509 certificate containing the public key for verifying IdP
  /// signatures.
  core.String? pemData;

  AddIdpCredentialRequest({
    this.pemData,
  });

  AddIdpCredentialRequest.fromJson(core.Map json_)
      : this(
          pemData: json_.containsKey('pemData')
              ? json_['pemData'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pemData != null) 'pemData': pemData!,
      };
}

/// Request to cancel sent invitation for target email in UserInvitation.
typedef CancelUserInvitationRequest = $Empty;

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

  CheckTransitiveMembershipResponse.fromJson(core.Map json_)
      : this(
          hasMembership: json_.containsKey('hasMembership')
              ? json_['hasMembership'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasMembership != null) 'hasMembership': hasMembership!,
      };
}

/// Information of a DSA public key.
class DsaPublicKeyInfo {
  /// Key size in bits (size of parameter P).
  core.int? keySize;

  DsaPublicKeyInfo({
    this.keySize,
  });

  DsaPublicKeyInfo.fromJson(core.Map json_)
      : this(
          keySize: json_.containsKey('keySize')
              ? json_['keySize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keySize != null) 'keySize': keySize!,
      };
}

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadata {
  /// Memberships will be the union of all queries.
  ///
  /// Only one entry with USER resource is currently supported. Customers can
  /// create up to 500 dynamic groups.
  core.List<DynamicGroupQuery>? queries;

  /// Status of the dynamic group.
  ///
  /// Output only.
  DynamicGroupStatus? status;

  DynamicGroupMetadata({
    this.queries,
    this.status,
  });

  DynamicGroupMetadata.fromJson(core.Map json_)
      : this(
          queries: json_.containsKey('queries')
              ? (json_['queries'] as core.List)
                  .map((value) => DynamicGroupQuery.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          status: json_.containsKey('status')
              ? DynamicGroupStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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

  DynamicGroupQuery.fromJson(core.Map json_)
      : this(
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
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

  DynamicGroupStatus.fromJson(core.Map json_)
      : this(
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          statusTime: json_.containsKey('statusTime')
              ? json_['statusTime'] as core.String
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
  /// existing group or user. Email addresses need to adhere to
  /// [name guidelines for users and groups](https://support.google.com/a/answer/9193374).
  /// For external-identity-mapped entities, the `id` must be a string
  /// conforming to the Identity Source's requirements. Must be unique within a
  /// `namespace`.
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

  EntityKey.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          namespace: json_.containsKey('namespace')
              ? json_['namespace'] as core.String
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

  ExpiryDetail.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
      };
}

/// Resource representing the Android specific attributes of a Device.
class GoogleAppsCloudidentityDevicesV1AndroidAttributes {
  /// Whether the device passes Android CTS compliance.
  core.bool? ctsProfileMatch;

  /// Whether applications from unknown sources can be installed on device.
  core.bool? enabledUnknownSources;

  /// Whether any potentially harmful apps were detected on the device.
  core.bool? hasPotentiallyHarmfulApps;

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

  /// Whether Android verified boot status is GREEN.
  core.bool? verifiedBoot;

  /// Whether Google Play Protect Verify Apps is enabled.
  core.bool? verifyAppsEnabled;

  GoogleAppsCloudidentityDevicesV1AndroidAttributes({
    this.ctsProfileMatch,
    this.enabledUnknownSources,
    this.hasPotentiallyHarmfulApps,
    this.ownerProfileAccount,
    this.ownershipPrivilege,
    this.supportsWorkProfile,
    this.verifiedBoot,
    this.verifyAppsEnabled,
  });

  GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(core.Map json_)
      : this(
          ctsProfileMatch: json_.containsKey('ctsProfileMatch')
              ? json_['ctsProfileMatch'] as core.bool
              : null,
          enabledUnknownSources: json_.containsKey('enabledUnknownSources')
              ? json_['enabledUnknownSources'] as core.bool
              : null,
          hasPotentiallyHarmfulApps:
              json_.containsKey('hasPotentiallyHarmfulApps')
                  ? json_['hasPotentiallyHarmfulApps'] as core.bool
                  : null,
          ownerProfileAccount: json_.containsKey('ownerProfileAccount')
              ? json_['ownerProfileAccount'] as core.bool
              : null,
          ownershipPrivilege: json_.containsKey('ownershipPrivilege')
              ? json_['ownershipPrivilege'] as core.String
              : null,
          supportsWorkProfile: json_.containsKey('supportsWorkProfile')
              ? json_['supportsWorkProfile'] as core.bool
              : null,
          verifiedBoot: json_.containsKey('verifiedBoot')
              ? json_['verifiedBoot'] as core.bool
              : null,
          verifyAppsEnabled: json_.containsKey('verifyAppsEnabled')
              ? json_['verifyAppsEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ctsProfileMatch != null) 'ctsProfileMatch': ctsProfileMatch!,
        if (enabledUnknownSources != null)
          'enabledUnknownSources': enabledUnknownSources!,
        if (hasPotentiallyHarmfulApps != null)
          'hasPotentiallyHarmfulApps': hasPotentiallyHarmfulApps!,
        if (ownerProfileAccount != null)
          'ownerProfileAccount': ownerProfileAccount!,
        if (ownershipPrivilege != null)
          'ownershipPrivilege': ownershipPrivilege!,
        if (supportsWorkProfile != null)
          'supportsWorkProfile': supportsWorkProfile!,
        if (verifiedBoot != null) 'verifiedBoot': verifiedBoot!,
        if (verifyAppsEnabled != null) 'verifyAppsEnabled': verifyAppsEnabled!,
      };
}

/// Request message for approving the device to access user data.
typedef GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest = $Request00;

/// Request message for blocking account on device.
typedef GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = $Request00;

/// Contains information about browser profiles reported by the
/// [Endpoint Verification extension](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1).
class GoogleAppsCloudidentityDevicesV1BrowserAttributes {
  /// Represents the current state of the
  /// [Chrome browser attributes](https://cloud.google.com/access-context-manager/docs/browser-attributes)
  /// sent by the
  /// [Endpoint Verification extension](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1).
  GoogleAppsCloudidentityDevicesV1BrowserInfo? chromeBrowserInfo;

  /// Chrome profile ID that is exposed by the Chrome API.
  ///
  /// It is unique for each device.
  core.String? chromeProfileId;

  /// Timestamp in milliseconds since Epoch when the profile/gcm id was last
  /// synced.
  core.String? lastProfileSyncTime;

  GoogleAppsCloudidentityDevicesV1BrowserAttributes({
    this.chromeBrowserInfo,
    this.chromeProfileId,
    this.lastProfileSyncTime,
  });

  GoogleAppsCloudidentityDevicesV1BrowserAttributes.fromJson(core.Map json_)
      : this(
          chromeBrowserInfo: json_.containsKey('chromeBrowserInfo')
              ? GoogleAppsCloudidentityDevicesV1BrowserInfo.fromJson(
                  json_['chromeBrowserInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          chromeProfileId: json_.containsKey('chromeProfileId')
              ? json_['chromeProfileId'] as core.String
              : null,
          lastProfileSyncTime: json_.containsKey('lastProfileSyncTime')
              ? json_['lastProfileSyncTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chromeBrowserInfo != null) 'chromeBrowserInfo': chromeBrowserInfo!,
        if (chromeProfileId != null) 'chromeProfileId': chromeProfileId!,
        if (lastProfileSyncTime != null)
          'lastProfileSyncTime': lastProfileSyncTime!,
      };
}

/// Browser-specific fields reported by the
/// [Endpoint Verification extension](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1).
///
/// LINT.IfChange
class GoogleAppsCloudidentityDevicesV1BrowserInfo {
  /// Browser's management state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Management state is not specified.
  /// - "UNMANAGED" : Browser/Profile is not managed by any customer.
  /// - "MANAGED_BY_OTHER_DOMAIN" : Browser/Profile is managed, but by some
  /// other customer.
  /// - "PROFILE_MANAGED" : Profile is managed by customer.
  /// - "BROWSER_MANAGED" : Browser is managed by customer.
  core.String? browserManagementState;

  /// Version of the request initiating browser.
  core.String? browserVersion;

  /// Current state of \[built-in DNS
  /// client\](https://chromeenterprise.google/policies/#BuiltInDnsClientEnabled).
  core.bool? isBuiltInDnsClientEnabled;

  /// Current state of
  /// [bulk data analysis](https://chromeenterprise.google/policies/#OnBulkDataEntryEnterpriseConnector).
  ///
  /// Set to true if provider list from Chrome is non-empty.
  core.bool? isBulkDataEntryAnalysisEnabled;

  /// Current state of
  /// [Chrome Cleanup](https://chromeenterprise.google/policies/#ChromeCleanupEnabled).
  core.bool? isChromeCleanupEnabled;

  /// Current state of
  /// [Chrome Remote Desktop app](https://chromeenterprise.google/policies/#URLBlocklist).
  core.bool? isChromeRemoteDesktopAppBlocked;

  /// Current state of
  /// [file download analysis](https://chromeenterprise.google/policies/#OnFileDownloadedEnterpriseConnector).
  ///
  /// Set to true if provider list from Chrome is non-empty.
  core.bool? isFileDownloadAnalysisEnabled;

  /// Current state of
  /// [file upload analysis](https://chromeenterprise.google/policies/#OnFileAttachedEnterpriseConnector).
  ///
  /// Set to true if provider list from Chrome is non-empty.
  core.bool? isFileUploadAnalysisEnabled;

  /// Current state of \[real-time URL
  /// check\](https://chromeenterprise.google/policies/#EnterpriseRealTimeUrlCheckMode).
  ///
  /// Set to true if provider list from Chrome is non-empty.
  core.bool? isRealtimeUrlCheckEnabled;

  /// Current state of
  /// [security event analysis](https://chromeenterprise.google/policies/#OnSecurityEventEnterpriseConnector).
  ///
  /// Set to true if provider list from Chrome is non-empty.
  core.bool? isSecurityEventAnalysisEnabled;

  /// Current state of
  /// [site isolation](https://chromeenterprise.google/policies/?policy=IsolateOrigins).
  core.bool? isSiteIsolationEnabled;

  /// Current state of \[third-party
  /// blocking\](https://chromeenterprise.google/policies/#ThirdPartyBlockingEnabled).
  core.bool? isThirdPartyBlockingEnabled;

  /// Current state of
  /// [password protection trigger](https://chromeenterprise.google/policies/#PasswordProtectionWarningTrigger).
  /// Possible string values are:
  /// - "PASSWORD_PROTECTION_TRIGGER_UNSPECIFIED" : Password protection is not
  /// specified.
  /// - "PROTECTION_OFF" : Password reuse is never detected.
  /// - "PASSWORD_REUSE" : Warning is shown when the user reuses their protected
  /// password on a non-allowed site.
  /// - "PHISHING_REUSE" : Warning is shown when the user reuses their protected
  /// password on a phishing site.
  core.String? passwordProtectionWarningTrigger;

  /// Current state of
  /// [Safe Browsing protection level](https://chromeenterprise.google/policies/#SafeBrowsingProtectionLevel).
  /// Possible string values are:
  /// - "SAFE_BROWSING_LEVEL_UNSPECIFIED" : Browser protection level is not
  /// specified.
  /// - "DISABLED" : No protection against dangerous websites, downloads, and
  /// extensions.
  /// - "STANDARD" : Standard protection against websites, downloads, and
  /// extensions that are known to be dangerous.
  /// - "ENHANCED" : Faster, proactive protection against dangerous websites,
  /// downloads, and extensions.
  core.String? safeBrowsingProtectionLevel;

  GoogleAppsCloudidentityDevicesV1BrowserInfo({
    this.browserManagementState,
    this.browserVersion,
    this.isBuiltInDnsClientEnabled,
    this.isBulkDataEntryAnalysisEnabled,
    this.isChromeCleanupEnabled,
    this.isChromeRemoteDesktopAppBlocked,
    this.isFileDownloadAnalysisEnabled,
    this.isFileUploadAnalysisEnabled,
    this.isRealtimeUrlCheckEnabled,
    this.isSecurityEventAnalysisEnabled,
    this.isSiteIsolationEnabled,
    this.isThirdPartyBlockingEnabled,
    this.passwordProtectionWarningTrigger,
    this.safeBrowsingProtectionLevel,
  });

  GoogleAppsCloudidentityDevicesV1BrowserInfo.fromJson(core.Map json_)
      : this(
          browserManagementState: json_.containsKey('browserManagementState')
              ? json_['browserManagementState'] as core.String
              : null,
          browserVersion: json_.containsKey('browserVersion')
              ? json_['browserVersion'] as core.String
              : null,
          isBuiltInDnsClientEnabled:
              json_.containsKey('isBuiltInDnsClientEnabled')
                  ? json_['isBuiltInDnsClientEnabled'] as core.bool
                  : null,
          isBulkDataEntryAnalysisEnabled:
              json_.containsKey('isBulkDataEntryAnalysisEnabled')
                  ? json_['isBulkDataEntryAnalysisEnabled'] as core.bool
                  : null,
          isChromeCleanupEnabled: json_.containsKey('isChromeCleanupEnabled')
              ? json_['isChromeCleanupEnabled'] as core.bool
              : null,
          isChromeRemoteDesktopAppBlocked:
              json_.containsKey('isChromeRemoteDesktopAppBlocked')
                  ? json_['isChromeRemoteDesktopAppBlocked'] as core.bool
                  : null,
          isFileDownloadAnalysisEnabled:
              json_.containsKey('isFileDownloadAnalysisEnabled')
                  ? json_['isFileDownloadAnalysisEnabled'] as core.bool
                  : null,
          isFileUploadAnalysisEnabled:
              json_.containsKey('isFileUploadAnalysisEnabled')
                  ? json_['isFileUploadAnalysisEnabled'] as core.bool
                  : null,
          isRealtimeUrlCheckEnabled:
              json_.containsKey('isRealtimeUrlCheckEnabled')
                  ? json_['isRealtimeUrlCheckEnabled'] as core.bool
                  : null,
          isSecurityEventAnalysisEnabled:
              json_.containsKey('isSecurityEventAnalysisEnabled')
                  ? json_['isSecurityEventAnalysisEnabled'] as core.bool
                  : null,
          isSiteIsolationEnabled: json_.containsKey('isSiteIsolationEnabled')
              ? json_['isSiteIsolationEnabled'] as core.bool
              : null,
          isThirdPartyBlockingEnabled:
              json_.containsKey('isThirdPartyBlockingEnabled')
                  ? json_['isThirdPartyBlockingEnabled'] as core.bool
                  : null,
          passwordProtectionWarningTrigger:
              json_.containsKey('passwordProtectionWarningTrigger')
                  ? json_['passwordProtectionWarningTrigger'] as core.String
                  : null,
          safeBrowsingProtectionLevel:
              json_.containsKey('safeBrowsingProtectionLevel')
                  ? json_['safeBrowsingProtectionLevel'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (browserManagementState != null)
          'browserManagementState': browserManagementState!,
        if (browserVersion != null) 'browserVersion': browserVersion!,
        if (isBuiltInDnsClientEnabled != null)
          'isBuiltInDnsClientEnabled': isBuiltInDnsClientEnabled!,
        if (isBulkDataEntryAnalysisEnabled != null)
          'isBulkDataEntryAnalysisEnabled': isBulkDataEntryAnalysisEnabled!,
        if (isChromeCleanupEnabled != null)
          'isChromeCleanupEnabled': isChromeCleanupEnabled!,
        if (isChromeRemoteDesktopAppBlocked != null)
          'isChromeRemoteDesktopAppBlocked': isChromeRemoteDesktopAppBlocked!,
        if (isFileDownloadAnalysisEnabled != null)
          'isFileDownloadAnalysisEnabled': isFileDownloadAnalysisEnabled!,
        if (isFileUploadAnalysisEnabled != null)
          'isFileUploadAnalysisEnabled': isFileUploadAnalysisEnabled!,
        if (isRealtimeUrlCheckEnabled != null)
          'isRealtimeUrlCheckEnabled': isRealtimeUrlCheckEnabled!,
        if (isSecurityEventAnalysisEnabled != null)
          'isSecurityEventAnalysisEnabled': isSecurityEventAnalysisEnabled!,
        if (isSiteIsolationEnabled != null)
          'isSiteIsolationEnabled': isSiteIsolationEnabled!,
        if (isThirdPartyBlockingEnabled != null)
          'isThirdPartyBlockingEnabled': isThirdPartyBlockingEnabled!,
        if (passwordProtectionWarningTrigger != null)
          'passwordProtectionWarningTrigger': passwordProtectionWarningTrigger!,
        if (safeBrowsingProtectionLevel != null)
          'safeBrowsingProtectionLevel': safeBrowsingProtectionLevel!,
      };
}

/// Request message for cancelling an unfinished device wipe.
typedef GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest = $Request00;

/// Request message for cancelling an unfinished user account wipe.
typedef GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    = $Request00;

/// Stores information about a certificate.
class GoogleAppsCloudidentityDevicesV1CertificateAttributes {
  /// The X.509 extension for CertificateTemplate.
  GoogleAppsCloudidentityDevicesV1CertificateTemplate? certificateTemplate;

  /// The encoded certificate fingerprint.
  core.String? fingerprint;

  /// The name of the issuer of this certificate.
  core.String? issuer;

  /// Serial number of the certificate, Example: "123456789".
  core.String? serialNumber;

  /// The subject name of this certificate.
  core.String? subject;

  /// The certificate thumbprint.
  core.String? thumbprint;

  /// Validation state of this certificate.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CERTIFICATE_VALIDATION_STATE_UNSPECIFIED" : Default value.
  /// - "VALIDATION_SUCCESSFUL" : Certificate validation was successful.
  /// - "VALIDATION_FAILED" : Certificate validation failed.
  core.String? validationState;

  /// Certificate not valid at or after this timestamp.
  core.String? validityExpirationTime;

  /// Certificate not valid before this timestamp.
  core.String? validityStartTime;

  GoogleAppsCloudidentityDevicesV1CertificateAttributes({
    this.certificateTemplate,
    this.fingerprint,
    this.issuer,
    this.serialNumber,
    this.subject,
    this.thumbprint,
    this.validationState,
    this.validityExpirationTime,
    this.validityStartTime,
  });

  GoogleAppsCloudidentityDevicesV1CertificateAttributes.fromJson(core.Map json_)
      : this(
          certificateTemplate: json_.containsKey('certificateTemplate')
              ? GoogleAppsCloudidentityDevicesV1CertificateTemplate.fromJson(
                  json_['certificateTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          issuer: json_.containsKey('issuer')
              ? json_['issuer'] as core.String
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          subject: json_.containsKey('subject')
              ? json_['subject'] as core.String
              : null,
          thumbprint: json_.containsKey('thumbprint')
              ? json_['thumbprint'] as core.String
              : null,
          validationState: json_.containsKey('validationState')
              ? json_['validationState'] as core.String
              : null,
          validityExpirationTime: json_.containsKey('validityExpirationTime')
              ? json_['validityExpirationTime'] as core.String
              : null,
          validityStartTime: json_.containsKey('validityStartTime')
              ? json_['validityStartTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateTemplate != null)
          'certificateTemplate': certificateTemplate!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (issuer != null) 'issuer': issuer!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (subject != null) 'subject': subject!,
        if (thumbprint != null) 'thumbprint': thumbprint!,
        if (validationState != null) 'validationState': validationState!,
        if (validityExpirationTime != null)
          'validityExpirationTime': validityExpirationTime!,
        if (validityStartTime != null) 'validityStartTime': validityStartTime!,
      };
}

/// CertificateTemplate (v3 Extension in X.509).
class GoogleAppsCloudidentityDevicesV1CertificateTemplate {
  /// The template id of the template.
  ///
  /// Example:
  /// "1.3.6.1.4.1.311.21.8.15608621.11768144.5720724.16068415.6889630.81.2472537.7784047".
  core.String? id;

  /// The Major version of the template.
  ///
  /// Example: 100.
  core.int? majorVersion;

  /// The minor version of the template.
  ///
  /// Example: 12.
  core.int? minorVersion;

  GoogleAppsCloudidentityDevicesV1CertificateTemplate({
    this.id,
    this.majorVersion,
    this.minorVersion,
  });

  GoogleAppsCloudidentityDevicesV1CertificateTemplate.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          majorVersion: json_.containsKey('majorVersion')
              ? json_['majorVersion'] as core.int
              : null,
          minorVersion: json_.containsKey('minorVersion')
              ? json_['minorVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (majorVersion != null) 'majorVersion': majorVersion!,
        if (minorVersion != null) 'minorVersion': minorVersion!,
      };
}

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

  GoogleAppsCloudidentityDevicesV1ClientState.fromJson(core.Map json_)
      : this(
          assetTags: json_.containsKey('assetTags')
              ? (json_['assetTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          complianceState: json_.containsKey('complianceState')
              ? json_['complianceState'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          customId: json_.containsKey('customId')
              ? json_['customId'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          healthScore: json_.containsKey('healthScore')
              ? json_['healthScore'] as core.String
              : null,
          keyValuePairs: json_.containsKey('keyValuePairs')
              ? (json_['keyValuePairs'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleAppsCloudidentityDevicesV1CustomAttributeValue
                        .fromJson(value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          managed: json_.containsKey('managed')
              ? json_['managed'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ownerType: json_.containsKey('ownerType')
              ? json_['ownerType'] as core.String
              : null,
          scoreReason: json_.containsKey('scoreReason')
              ? json_['scoreReason'] as core.String
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

  GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(core.Map json_)
      : this(
          boolValue: json_.containsKey('boolValue')
              ? json_['boolValue'] as core.bool
              : null,
          numberValue: json_.containsKey('numberValue')
              ? (json_['numberValue'] as core.num).toDouble()
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
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

  /// Unique identifier for the device.
  core.String? deviceId;

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

  /// Attributes specific to
  /// [Endpoint Verification](https://cloud.google.com/endpoint-verification/docs/overview)
  /// devices.
  ///
  /// Output only.
  GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes?
      endpointVerificationSpecificAttributes;

  /// Host name of the device.
  core.String? hostname;

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
    this.deviceId,
    this.deviceType,
    this.enabledDeveloperOptions,
    this.enabledUsbDebugging,
    this.encryptionState,
    this.endpointVerificationSpecificAttributes,
    this.hostname,
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

  GoogleAppsCloudidentityDevicesV1Device.fromJson(core.Map json_)
      : this(
          androidSpecificAttributes:
              json_.containsKey('androidSpecificAttributes')
                  ? GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(
                      json_['androidSpecificAttributes']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          assetTag: json_.containsKey('assetTag')
              ? json_['assetTag'] as core.String
              : null,
          basebandVersion: json_.containsKey('basebandVersion')
              ? json_['basebandVersion'] as core.String
              : null,
          bootloaderVersion: json_.containsKey('bootloaderVersion')
              ? json_['bootloaderVersion'] as core.String
              : null,
          brand:
              json_.containsKey('brand') ? json_['brand'] as core.String : null,
          buildNumber: json_.containsKey('buildNumber')
              ? json_['buildNumber'] as core.String
              : null,
          compromisedState: json_.containsKey('compromisedState')
              ? json_['compromisedState'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deviceId: json_.containsKey('deviceId')
              ? json_['deviceId'] as core.String
              : null,
          deviceType: json_.containsKey('deviceType')
              ? json_['deviceType'] as core.String
              : null,
          enabledDeveloperOptions: json_.containsKey('enabledDeveloperOptions')
              ? json_['enabledDeveloperOptions'] as core.bool
              : null,
          enabledUsbDebugging: json_.containsKey('enabledUsbDebugging')
              ? json_['enabledUsbDebugging'] as core.bool
              : null,
          encryptionState: json_.containsKey('encryptionState')
              ? json_['encryptionState'] as core.String
              : null,
          endpointVerificationSpecificAttributes: json_
                  .containsKey('endpointVerificationSpecificAttributes')
              ? GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
                  .fromJson(json_['endpointVerificationSpecificAttributes']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          imei: json_.containsKey('imei') ? json_['imei'] as core.String : null,
          kernelVersion: json_.containsKey('kernelVersion')
              ? json_['kernelVersion'] as core.String
              : null,
          lastSyncTime: json_.containsKey('lastSyncTime')
              ? json_['lastSyncTime'] as core.String
              : null,
          managementState: json_.containsKey('managementState')
              ? json_['managementState'] as core.String
              : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
          meid: json_.containsKey('meid') ? json_['meid'] as core.String : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkOperator: json_.containsKey('networkOperator')
              ? json_['networkOperator'] as core.String
              : null,
          osVersion: json_.containsKey('osVersion')
              ? json_['osVersion'] as core.String
              : null,
          otherAccounts: json_.containsKey('otherAccounts')
              ? (json_['otherAccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ownerType: json_.containsKey('ownerType')
              ? json_['ownerType'] as core.String
              : null,
          releaseVersion: json_.containsKey('releaseVersion')
              ? json_['releaseVersion'] as core.String
              : null,
          securityPatchTime: json_.containsKey('securityPatchTime')
              ? json_['securityPatchTime'] as core.String
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          wifiMacAddresses: json_.containsKey('wifiMacAddresses')
              ? (json_['wifiMacAddresses'] as core.List)
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
        if (deviceId != null) 'deviceId': deviceId!,
        if (deviceType != null) 'deviceType': deviceType!,
        if (enabledDeveloperOptions != null)
          'enabledDeveloperOptions': enabledDeveloperOptions!,
        if (enabledUsbDebugging != null)
          'enabledUsbDebugging': enabledUsbDebugging!,
        if (encryptionState != null) 'encryptionState': encryptionState!,
        if (endpointVerificationSpecificAttributes != null)
          'endpointVerificationSpecificAttributes':
              endpointVerificationSpecificAttributes!,
        if (hostname != null) 'hostname': hostname!,
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

  GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(core.Map json_)
      : this(
          compromisedState: json_.containsKey('compromisedState')
              ? json_['compromisedState'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          firstSyncTime: json_.containsKey('firstSyncTime')
              ? json_['firstSyncTime'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          lastSyncTime: json_.containsKey('lastSyncTime')
              ? json_['lastSyncTime'] as core.String
              : null,
          managementState: json_.containsKey('managementState')
              ? json_['managementState'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          passwordState: json_.containsKey('passwordState')
              ? json_['passwordState'] as core.String
              : null,
          userAgent: json_.containsKey('userAgent')
              ? json_['userAgent'] as core.String
              : null,
          userEmail: json_.containsKey('userEmail')
              ? json_['userEmail'] as core.String
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

/// Resource representing the \[Endpoint Verification-specific
/// attributes\](https://cloud.google.com/endpoint-verification/docs/device-information)
/// of a device.
class GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes {
  /// Additional signals reported by Endpoint Verification.
  ///
  /// It includes the following attributes: 1. Non-configurable attributes:
  /// hotfixes, av_installed, av_enabled, windows_domain_name,
  /// is_os_native_firewall_enabled, and is_secure_boot_enabled. 2.
  /// [Configurable attributes](https://cloud.google.com/endpoint-verification/docs/collect-config-attributes):
  /// file, folder, and binary attributes; registry entries; and properties in a
  /// plist.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? additionalSignals;

  /// Details of browser profiles reported by Endpoint Verification.
  core.List<GoogleAppsCloudidentityDevicesV1BrowserAttributes>?
      browserAttributes;

  /// Details of certificates.
  core.List<GoogleAppsCloudidentityDevicesV1CertificateAttributes>?
      certificateAttributes;

  GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes({
    this.additionalSignals,
    this.browserAttributes,
    this.certificateAttributes,
  });

  GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes.fromJson(
      core.Map json_)
      : this(
          additionalSignals: json_.containsKey('additionalSignals')
              ? json_['additionalSignals']
                  as core.Map<core.String, core.dynamic>
              : null,
          browserAttributes: json_.containsKey('browserAttributes')
              ? (json_['browserAttributes'] as core.List)
                  .map((value) =>
                      GoogleAppsCloudidentityDevicesV1BrowserAttributes
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          certificateAttributes: json_.containsKey('certificateAttributes')
              ? (json_['certificateAttributes'] as core.List)
                  .map((value) =>
                      GoogleAppsCloudidentityDevicesV1CertificateAttributes
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalSignals != null) 'additionalSignals': additionalSignals!,
        if (browserAttributes != null) 'browserAttributes': browserAttributes!,
        if (certificateAttributes != null)
          'certificateAttributes': certificateAttributes!,
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
      core.Map json_)
      : this(
          clientStates: json_.containsKey('clientStates')
              ? (json_['clientStates'] as core.List)
                  .map((value) =>
                      GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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
      core.Map json_)
      : this(
          deviceUsers: json_.containsKey('deviceUsers')
              ? (json_['deviceUsers'] as core.List)
                  .map((value) =>
                      GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(core.Map json_)
      : this(
          devices: json_.containsKey('devices')
              ? (json_['devices'] as core.List)
                  .map((value) =>
                      GoogleAppsCloudidentityDevicesV1Device.fromJson(
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

/// Response containing resource names of the DeviceUsers associated with the
/// caller's credentials.
class GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse {
  /// The customer resource name that may be passed back to other Devices API
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
      core.Map json_)
      : this(
          customer: json_.containsKey('customer')
              ? json_['customer'] as core.String
              : null,
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(core.Map json_)
      : this(
          customer: json_.containsKey('customer')
              ? json_['customer'] as core.String
              : null,
          removeResetLock: json_.containsKey('removeResetLock')
              ? json_['removeResetLock'] as core.bool
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
  /// Additional group keys associated with the Group.
  ///
  /// Output only.
  core.List<EntityKey>? additionalGroupKeys;

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
  /// Must be of the form `identitysources/{identity_source}` for external
  /// \[identity-mapped groups\](https://support.google.com/a/answer/9039510) or
  /// `customers/{customer_id}` for Google Groups. The `customer_id` must begin
  /// with "C" (for example, 'C046psxkn').
  /// [Find your customer ID.](https://support.google.com/cloudidentity/answer/10070793)
  ///
  /// Required. Immutable.
  core.String? parent;

  /// The time when the `Group` was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Group({
    this.additionalGroupKeys,
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

  Group.fromJson(core.Map json_)
      : this(
          additionalGroupKeys: json_.containsKey('additionalGroupKeys')
              ? (json_['additionalGroupKeys'] as core.List)
                  .map((value) => EntityKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          dynamicGroupMetadata: json_.containsKey('dynamicGroupMetadata')
              ? DynamicGroupMetadata.fromJson(json_['dynamicGroupMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          groupKey: json_.containsKey('groupKey')
              ? EntityKey.fromJson(
                  json_['groupKey'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalGroupKeys != null)
          'additionalGroupKeys': additionalGroupKeys!,
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

  GroupRelation.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          groupKey: json_.containsKey('groupKey')
              ? EntityKey.fromJson(
                  json_['groupKey'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          relationType: json_.containsKey('relationType')
              ? json_['relationType'] as core.String
              : null,
          roles: json_.containsKey('roles')
              ? (json_['roles'] as core.List)
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

/// Credential for verifying signatures produced by the Identity Provider.
class IdpCredential {
  /// Information of a DSA public key.
  ///
  /// Output only.
  DsaPublicKeyInfo? dsaKeyInfo;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the credential.
  ///
  /// Output only.
  core.String? name;

  /// Information of a RSA public key.
  ///
  /// Output only.
  RsaPublicKeyInfo? rsaKeyInfo;

  /// Time when the `IdpCredential` was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  IdpCredential({
    this.dsaKeyInfo,
    this.name,
    this.rsaKeyInfo,
    this.updateTime,
  });

  IdpCredential.fromJson(core.Map json_)
      : this(
          dsaKeyInfo: json_.containsKey('dsaKeyInfo')
              ? DsaPublicKeyInfo.fromJson(
                  json_['dsaKeyInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rsaKeyInfo: json_.containsKey('rsaKeyInfo')
              ? RsaPublicKeyInfo.fromJson(
                  json_['rsaKeyInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dsaKeyInfo != null) 'dsaKeyInfo': dsaKeyInfo!,
        if (name != null) 'name': name!,
        if (rsaKeyInfo != null) 'rsaKeyInfo': rsaKeyInfo!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A [SAML 2.0](https://www.oasis-open.org/standards#samlv2.0) federation
/// between a Google enterprise customer and a SAML identity provider.
class InboundSamlSsoProfile {
  /// The customer.
  ///
  /// For example: `customers/C0123abc`.
  ///
  /// Immutable.
  core.String? customer;

  /// Human-readable name of the SAML SSO profile.
  core.String? displayName;

  /// SAML identity provider configuration.
  SamlIdpConfig? idpConfig;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the SAML SSO profile.
  ///
  /// Output only.
  core.String? name;

  /// SAML service provider configuration for this SAML SSO profile.
  ///
  /// These are the service provider details provided by Google that should be
  /// configured on the corresponding identity provider.
  SamlSpConfig? spConfig;

  InboundSamlSsoProfile({
    this.customer,
    this.displayName,
    this.idpConfig,
    this.name,
    this.spConfig,
  });

  InboundSamlSsoProfile.fromJson(core.Map json_)
      : this(
          customer: json_.containsKey('customer')
              ? json_['customer'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          idpConfig: json_.containsKey('idpConfig')
              ? SamlIdpConfig.fromJson(
                  json_['idpConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          spConfig: json_.containsKey('spConfig')
              ? SamlSpConfig.fromJson(
                  json_['spConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customer != null) 'customer': customer!,
        if (displayName != null) 'displayName': displayName!,
        if (idpConfig != null) 'idpConfig': idpConfig!,
        if (name != null) 'name': name!,
        if (spConfig != null) 'spConfig': spConfig!,
      };
}

/// Targets with "set" SSO assignments and their respective assignments.
class InboundSsoAssignment {
  /// The customer.
  ///
  /// For example: `customers/C0123abc`.
  ///
  /// Immutable.
  core.String? customer;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the Inbound SSO Assignment.
  ///
  /// Output only.
  core.String? name;

  /// Must be zero (which is the default value so it can be omitted) for
  /// assignments with `target_org_unit` set and must be
  /// greater-than-or-equal-to one for assignments with `target_group` set.
  core.int? rank;

  /// SAML SSO details.
  ///
  /// Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  SamlSsoInfo? samlSsoInfo;

  /// Assertions about users assigned to an IdP will always be accepted from
  /// that IdP.
  ///
  /// This controls whether/when Google should redirect a user to the IdP. Unset
  /// (defaults) is the recommended configuration.
  SignInBehavior? signInBehavior;

  /// Inbound SSO behavior.
  /// Possible string values are:
  /// - "SSO_MODE_UNSPECIFIED" : Not allowed.
  /// - "SSO_OFF" : Disable SSO for the targeted users.
  /// - "SAML_SSO" : Use an external SAML Identity Provider for SSO for the
  /// targeted users.
  /// - "DOMAIN_WIDE_SAML_IF_ENABLED" : Use the domain-wide SAML Identity
  /// Provider for the targeted users if one is configured; otherwise, this is
  /// equivalent to `SSO_OFF`. Note that this will also be equivalent to
  /// `SSO_OFF` if/when support for domain-wide SAML is removed. Google may
  /// disallow this mode at that point and existing assignments with this mode
  /// may be automatically changed to `SSO_OFF`.
  core.String? ssoMode;

  /// Must be of the form `groups/{group}`.
  ///
  /// Immutable.
  core.String? targetGroup;

  /// Must be of the form `orgUnits/{org_unit}`.
  ///
  /// Immutable.
  core.String? targetOrgUnit;

  InboundSsoAssignment({
    this.customer,
    this.name,
    this.rank,
    this.samlSsoInfo,
    this.signInBehavior,
    this.ssoMode,
    this.targetGroup,
    this.targetOrgUnit,
  });

  InboundSsoAssignment.fromJson(core.Map json_)
      : this(
          customer: json_.containsKey('customer')
              ? json_['customer'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rank: json_.containsKey('rank') ? json_['rank'] as core.int : null,
          samlSsoInfo: json_.containsKey('samlSsoInfo')
              ? SamlSsoInfo.fromJson(
                  json_['samlSsoInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          signInBehavior: json_.containsKey('signInBehavior')
              ? SignInBehavior.fromJson(json_['signInBehavior']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ssoMode: json_.containsKey('ssoMode')
              ? json_['ssoMode'] as core.String
              : null,
          targetGroup: json_.containsKey('targetGroup')
              ? json_['targetGroup'] as core.String
              : null,
          targetOrgUnit: json_.containsKey('targetOrgUnit')
              ? json_['targetOrgUnit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customer != null) 'customer': customer!,
        if (name != null) 'name': name!,
        if (rank != null) 'rank': rank!,
        if (samlSsoInfo != null) 'samlSsoInfo': samlSsoInfo!,
        if (signInBehavior != null) 'signInBehavior': signInBehavior!,
        if (ssoMode != null) 'ssoMode': ssoMode!,
        if (targetGroup != null) 'targetGroup': targetGroup!,
        if (targetOrgUnit != null) 'targetOrgUnit': targetOrgUnit!,
      };
}

/// Response for IsInvitableUser RPC.
class IsInvitableUserResponse {
  /// Returns true if the email address is invitable.
  core.bool? isInvitableUser;

  IsInvitableUserResponse({
    this.isInvitableUser,
  });

  IsInvitableUserResponse.fromJson(core.Map json_)
      : this(
          isInvitableUser: json_.containsKey('isInvitableUser')
              ? json_['isInvitableUser'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isInvitableUser != null) 'isInvitableUser': isInvitableUser!,
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

  ListGroupsResponse.fromJson(core.Map json_)
      : this(
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.List)
                  .map((value) => Group.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groups != null) 'groups': groups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response of the InboundSamlSsoProfilesService.ListIdpCredentials method.
class ListIdpCredentialsResponse {
  /// The IdpCredentials from the specified InboundSamlSsoProfile.
  core.List<IdpCredential>? idpCredentials;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListIdpCredentialsResponse({
    this.idpCredentials,
    this.nextPageToken,
  });

  ListIdpCredentialsResponse.fromJson(core.Map json_)
      : this(
          idpCredentials: json_.containsKey('idpCredentials')
              ? (json_['idpCredentials'] as core.List)
                  .map((value) => IdpCredential.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idpCredentials != null) 'idpCredentials': idpCredentials!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response of the InboundSamlSsoProfilesService.ListInboundSamlSsoProfiles
/// method.
class ListInboundSamlSsoProfilesResponse {
  /// List of InboundSamlSsoProfiles.
  core.List<InboundSamlSsoProfile>? inboundSamlSsoProfiles;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListInboundSamlSsoProfilesResponse({
    this.inboundSamlSsoProfiles,
    this.nextPageToken,
  });

  ListInboundSamlSsoProfilesResponse.fromJson(core.Map json_)
      : this(
          inboundSamlSsoProfiles: json_.containsKey('inboundSamlSsoProfiles')
              ? (json_['inboundSamlSsoProfiles'] as core.List)
                  .map((value) => InboundSamlSsoProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inboundSamlSsoProfiles != null)
          'inboundSamlSsoProfiles': inboundSamlSsoProfiles!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response of the InboundSsoAssignmentsService.ListInboundSsoAssignments
/// method.
class ListInboundSsoAssignmentsResponse {
  /// The assignments.
  core.List<InboundSsoAssignment>? inboundSsoAssignments;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListInboundSsoAssignmentsResponse({
    this.inboundSsoAssignments,
    this.nextPageToken,
  });

  ListInboundSsoAssignmentsResponse.fromJson(core.Map json_)
      : this(
          inboundSsoAssignments: json_.containsKey('inboundSsoAssignments')
              ? (json_['inboundSsoAssignments'] as core.List)
                  .map((value) => InboundSsoAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inboundSsoAssignments != null)
          'inboundSsoAssignments': inboundSsoAssignments!,
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

  ListMembershipsResponse.fromJson(core.Map json_)
      : this(
          memberships: json_.containsKey('memberships')
              ? (json_['memberships'] as core.List)
                  .map((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberships != null) 'memberships': memberships!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for UserInvitation listing request.
class ListUserInvitationsResponse {
  /// The token for the next page.
  ///
  /// If not empty, indicates that there may be more `UserInvitation` resources
  /// that match the listing request; this value can be used in a subsequent
  /// ListUserInvitationsRequest to get continued results with the current list
  /// call.
  core.String? nextPageToken;

  /// The list of UserInvitation resources.
  core.List<UserInvitation>? userInvitations;

  ListUserInvitationsResponse({
    this.nextPageToken,
    this.userInvitations,
  });

  ListUserInvitationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          userInvitations: json_.containsKey('userInvitations')
              ? (json_['userInvitations'] as core.List)
                  .map((value) => UserInvitation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userInvitations != null) 'userInvitations': userInvitations!,
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

  LookupGroupNameResponse.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

  LookupMembershipNameResponse.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

  MemberRelation.fromJson(core.Map json_)
      : this(
          member: json_.containsKey('member')
              ? json_['member'] as core.String
              : null,
          preferredMemberKey: json_.containsKey('preferredMemberKey')
              ? (json_['preferredMemberKey'] as core.List)
                  .map((value) => EntityKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relationType: json_.containsKey('relationType')
              ? json_['relationType'] as core.String
              : null,
          roles: json_.containsKey('roles')
              ? (json_['roles'] as core.List)
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

  MemberRestriction.fromJson(core.Map json_)
      : this(
          evaluation: json_.containsKey('evaluation')
              ? RestrictionEvaluation.fromJson(
                  json_['evaluation'] as core.Map<core.String, core.dynamic>)
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
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

  /// Delivery setting associated with the membership.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DELIVERY_SETTING_UNSPECIFIED" : Default. Should not be used.
  /// - "ALL_MAIL" : Represents each mail should be delivered
  /// - "DIGEST" : Represents 1 email for every 25 messages.
  /// - "DAILY" : Represents daily summary of messages.
  /// - "NONE" : Represents no delivery.
  /// - "DISABLED" : Represents disabled state.
  core.String? deliverySetting;

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
    this.deliverySetting,
    this.name,
    this.preferredMemberKey,
    this.roles,
    this.type,
    this.updateTime,
  });

  Membership.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deliverySetting: json_.containsKey('deliverySetting')
              ? json_['deliverySetting'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          preferredMemberKey: json_.containsKey('preferredMemberKey')
              ? EntityKey.fromJson(json_['preferredMemberKey']
                  as core.Map<core.String, core.dynamic>)
              : null,
          roles: json_.containsKey('roles')
              ? (json_['roles'] as core.List)
                  .map((value) => MembershipRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deliverySetting != null) 'deliverySetting': deliverySetting!,
        if (name != null) 'name': name!,
        if (preferredMemberKey != null)
          'preferredMemberKey': preferredMemberKey!,
        if (roles != null) 'roles': roles!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Message containing membership relation.
class MembershipRelation {
  /// An extended description to help users determine the purpose of a `Group`.
  core.String? description;

  /// The display name of the `Group`.
  core.String? displayName;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names)
  /// of the `Group`.
  ///
  /// Shall be of the form `groups/{group_id}`.
  core.String? group;

  /// The `EntityKey` of the `Group`.
  EntityKey? groupKey;

  /// One or more label entries that apply to the Group.
  ///
  /// Currently supported labels contain a key with an empty value.
  core.Map<core.String, core.String>? labels;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names)
  /// of the `Membership`.
  ///
  /// Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  core.String? membership;

  /// The `MembershipRole`s that apply to the `Membership`.
  core.List<MembershipRole>? roles;

  MembershipRelation({
    this.description,
    this.displayName,
    this.group,
    this.groupKey,
    this.labels,
    this.membership,
    this.roles,
  });

  MembershipRelation.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          groupKey: json_.containsKey('groupKey')
              ? EntityKey.fromJson(
                  json_['groupKey'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          membership: json_.containsKey('membership')
              ? json_['membership'] as core.String
              : null,
          roles: json_.containsKey('roles')
              ? (json_['roles'] as core.List)
                  .map((value) => MembershipRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (group != null) 'group': group!,
        if (groupKey != null) 'groupKey': groupKey!,
        if (labels != null) 'labels': labels!,
        if (membership != null) 'membership': membership!,
        if (roles != null) 'roles': roles!,
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

  MembershipRole.fromJson(core.Map json_)
      : this(
          expiryDetail: json_.containsKey('expiryDetail')
              ? ExpiryDetail.fromJson(
                  json_['expiryDetail'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          restrictionEvaluations: json_.containsKey('restrictionEvaluations')
              ? RestrictionEvaluations.fromJson(json_['restrictionEvaluations']
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

  MembershipRoleRestrictionEvaluation.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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

  ModifyMembershipRolesRequest.fromJson(core.Map json_)
      : this(
          addRoles: json_.containsKey('addRoles')
              ? (json_['addRoles'] as core.List)
                  .map((value) => MembershipRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          removeRoles: json_.containsKey('removeRoles')
              ? (json_['removeRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateRolesParams: json_.containsKey('updateRolesParams')
              ? (json_['updateRolesParams'] as core.List)
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

  ModifyMembershipRolesResponse.fromJson(core.Map json_)
      : this(
          membership: json_.containsKey('membership')
              ? Membership.fromJson(
                  json_['membership'] as core.Map<core.String, core.dynamic>)
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

  RestrictionEvaluation.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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

  RestrictionEvaluations.fromJson(core.Map json_)
      : this(
          memberRestrictionEvaluation:
              json_.containsKey('memberRestrictionEvaluation')
                  ? MembershipRoleRestrictionEvaluation.fromJson(
                      json_['memberRestrictionEvaluation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberRestrictionEvaluation != null)
          'memberRestrictionEvaluation': memberRestrictionEvaluation!,
      };
}

/// Information of a RSA public key.
class RsaPublicKeyInfo {
  /// Key size in bits (size of the modulus).
  core.int? keySize;

  RsaPublicKeyInfo({
    this.keySize,
  });

  RsaPublicKeyInfo.fromJson(core.Map json_)
      : this(
          keySize: json_.containsKey('keySize')
              ? json_['keySize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keySize != null) 'keySize': keySize!,
      };
}

/// SAML IDP (identity provider) configuration.
class SamlIdpConfig {
  /// The **Change Password URL** of the identity provider.
  ///
  /// Users will be sent to this URL when changing their passwords at
  /// `myaccount.google.com`. This takes precedence over the change password URL
  /// configured at customer-level. Must use `HTTPS`.
  core.String? changePasswordUri;

  /// The SAML **Entity ID** of the identity provider.
  ///
  /// Required.
  core.String? entityId;

  /// The **Logout Redirect URL** (sign-out page URL) of the identity provider.
  ///
  /// When a user clicks the sign-out link on a Google page, they will be
  /// redirected to this URL. This is a pure redirect with no attached SAML
  /// `LogoutRequest` i.e. SAML single logout is not supported. Must use
  /// `HTTPS`.
  core.String? logoutRedirectUri;

  /// The `SingleSignOnService` endpoint location (sign-in page URL) of the
  /// identity provider.
  ///
  /// This is the URL where the `AuthnRequest` will be sent. Must use `HTTPS`.
  /// Assumed to accept the `HTTP-Redirect` binding.
  ///
  /// Required.
  core.String? singleSignOnServiceUri;

  SamlIdpConfig({
    this.changePasswordUri,
    this.entityId,
    this.logoutRedirectUri,
    this.singleSignOnServiceUri,
  });

  SamlIdpConfig.fromJson(core.Map json_)
      : this(
          changePasswordUri: json_.containsKey('changePasswordUri')
              ? json_['changePasswordUri'] as core.String
              : null,
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
          logoutRedirectUri: json_.containsKey('logoutRedirectUri')
              ? json_['logoutRedirectUri'] as core.String
              : null,
          singleSignOnServiceUri: json_.containsKey('singleSignOnServiceUri')
              ? json_['singleSignOnServiceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changePasswordUri != null) 'changePasswordUri': changePasswordUri!,
        if (entityId != null) 'entityId': entityId!,
        if (logoutRedirectUri != null) 'logoutRedirectUri': logoutRedirectUri!,
        if (singleSignOnServiceUri != null)
          'singleSignOnServiceUri': singleSignOnServiceUri!,
      };
}

/// SAML SP (service provider) configuration.
class SamlSpConfig {
  /// The SAML **Assertion Consumer Service (ACS) URL** to be used for the
  /// IDP-initiated login.
  ///
  /// Assumed to accept response messages via the `HTTP-POST` binding.
  ///
  /// Output only.
  core.String? assertionConsumerServiceUri;

  /// The SAML **Entity ID** for this service provider.
  ///
  /// Output only.
  core.String? entityId;

  SamlSpConfig({
    this.assertionConsumerServiceUri,
    this.entityId,
  });

  SamlSpConfig.fromJson(core.Map json_)
      : this(
          assertionConsumerServiceUri:
              json_.containsKey('assertionConsumerServiceUri')
                  ? json_['assertionConsumerServiceUri'] as core.String
                  : null,
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assertionConsumerServiceUri != null)
          'assertionConsumerServiceUri': assertionConsumerServiceUri!,
        if (entityId != null) 'entityId': entityId!,
      };
}

/// Details that are applicable when `sso_mode` == `SAML_SSO`.
class SamlSsoInfo {
  /// Name of the `InboundSamlSsoProfile` to use.
  ///
  /// Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  ///
  /// Required.
  core.String? inboundSamlSsoProfile;

  SamlSsoInfo({
    this.inboundSamlSsoProfile,
  });

  SamlSsoInfo.fromJson(core.Map json_)
      : this(
          inboundSamlSsoProfile: json_.containsKey('inboundSamlSsoProfile')
              ? json_['inboundSamlSsoProfile'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inboundSamlSsoProfile != null)
          'inboundSamlSsoProfile': inboundSamlSsoProfile!,
      };
}

/// The response message for MembershipsService.SearchDirectGroups.
class SearchDirectGroupsResponse {
  /// List of direct groups satisfying the query.
  core.List<MembershipRelation>? memberships;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results available for listing.
  core.String? nextPageToken;

  SearchDirectGroupsResponse({
    this.memberships,
    this.nextPageToken,
  });

  SearchDirectGroupsResponse.fromJson(core.Map json_)
      : this(
          memberships: json_.containsKey('memberships')
              ? (json_['memberships'] as core.List)
                  .map((value) => MembershipRelation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberships != null) 'memberships': memberships!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  SearchGroupsResponse.fromJson(core.Map json_)
      : this(
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.List)
                  .map((value) => Group.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  SearchTransitiveGroupsResponse.fromJson(core.Map json_)
      : this(
          memberships: json_.containsKey('memberships')
              ? (json_['memberships'] as core.List)
                  .map((value) => GroupRelation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  SearchTransitiveMembershipsResponse.fromJson(core.Map json_)
      : this(
          memberships: json_.containsKey('memberships')
              ? (json_['memberships'] as core.List)
                  .map((value) => MemberRelation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  SecuritySettings.fromJson(core.Map json_)
      : this(
          memberRestriction: json_.containsKey('memberRestriction')
              ? MemberRestriction.fromJson(json_['memberRestriction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberRestriction != null) 'memberRestriction': memberRestriction!,
        if (name != null) 'name': name!,
      };
}

/// A request to send email for inviting target user corresponding to the
/// UserInvitation.
typedef SendUserInvitationRequest = $Empty;

/// Controls sign-in behavior.
class SignInBehavior {
  /// When to redirect sign-ins to the IdP.
  /// Possible string values are:
  /// - "REDIRECT_CONDITION_UNSPECIFIED" : Default and means "always"
  /// - "NEVER" : Sign-in flows where the user is prompted for their identity
  /// will not redirect to the IdP (so the user will most likely be prompted by
  /// Google for a password), but special flows like IdP-initiated SAML and
  /// sign-in following automatic redirection to the IdP by domain-specific
  /// service URLs will accept the IdP's assertion of the user's identity.
  core.String? redirectCondition;

  SignInBehavior({
    this.redirectCondition,
  });

  SignInBehavior.fromJson(core.Map json_)
      : this(
          redirectCondition: json_.containsKey('redirectCondition')
              ? json_['redirectCondition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (redirectCondition != null) 'redirectCondition': redirectCondition!,
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

  TransitiveMembershipRole.fromJson(core.Map json_)
      : this(
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
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

  UpdateMembershipRolesParams.fromJson(core.Map json_)
      : this(
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          membershipRole: json_.containsKey('membershipRole')
              ? MembershipRole.fromJson(json_['membershipRole']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (membershipRole != null) 'membershipRole': membershipRole!,
      };
}

/// The `UserInvitation` resource represents an email that can be sent to an
/// unmanaged user account inviting them to join the customer's Google Workspace
/// or Cloud Identity account.
///
/// An unmanaged account shares an email address domain with the Google
/// Workspace or Cloud Identity account but is not managed by it yet. If the
/// user accepts the `UserInvitation`, the user account will become managed.
class UserInvitation {
  /// Number of invitation emails sent to the user.
  core.String? mailsSentCount;

  /// Shall be of the form
  /// `customers/{customer}/userinvitations/{user_email_address}`.
  core.String? name;

  /// State of the `UserInvitation`.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "NOT_YET_SENT" : The `UserInvitation` has been created and is ready for
  /// sending as an email.
  /// - "INVITED" : The user has been invited by email.
  /// - "ACCEPTED" : The user has accepted the invitation and is part of the
  /// organization.
  /// - "DECLINED" : The user declined the invitation.
  core.String? state;

  /// Time when the `UserInvitation` was last updated.
  core.String? updateTime;

  UserInvitation({
    this.mailsSentCount,
    this.name,
    this.state,
    this.updateTime,
  });

  UserInvitation.fromJson(core.Map json_)
      : this(
          mailsSentCount: json_.containsKey('mailsSentCount')
              ? json_['mailsSentCount'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mailsSentCount != null) 'mailsSentCount': mailsSentCount!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
