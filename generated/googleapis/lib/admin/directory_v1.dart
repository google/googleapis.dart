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

/// Admin SDK API - directory_v1
///
/// Admin SDK lets administrators of enterprise domains to view and manage
/// resources like user, groups etc. It also provides audit and usage reports of
/// domain.
///
/// For more information, see <https://developers.google.com/admin-sdk/>
///
/// Create an instance of [DirectoryApi] to access these resources:
///
/// - [AspsResource]
/// - [ChannelsResource]
/// - [ChromeosdevicesResource]
/// - [CustomerResource]
///   - [CustomerDevicesResource]
///     - [CustomerDevicesChromeosResource]
///       - [CustomerDevicesChromeosCommandsResource]
/// - [CustomersResource]
///   - [CustomersChromeResource]
///     - [CustomersChromePrintersResource]
/// - [DomainAliasesResource]
/// - [DomainsResource]
/// - [GroupsResource]
///   - [GroupsAliasesResource]
/// - [MembersResource]
/// - [MobiledevicesResource]
/// - [OrgunitsResource]
/// - [PrivilegesResource]
/// - [ResourcesResource]
///   - [ResourcesBuildingsResource]
///   - [ResourcesCalendarsResource]
///   - [ResourcesFeaturesResource]
/// - [RoleAssignmentsResource]
/// - [RolesResource]
/// - [SchemasResource]
/// - [TokensResource]
/// - [TwoStepVerificationResource]
/// - [UsersResource]
///   - [UsersAliasesResource]
///   - [UsersPhotosResource]
/// - [VerificationCodesResource]
library admin.directory_v1;

import 'dart:async' as async;
import 'dart:collection' as collection;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Admin SDK lets administrators of enterprise domains to view and manage
/// resources like user, groups etc.
///
/// It also provides audit and usage reports of domain.
class DirectoryApi {
  /// See, add, edit, and permanently delete the printers that your organization
  /// can use with Chrome
  static const adminChromePrintersScope =
      'https://www.googleapis.com/auth/admin.chrome.printers';

  /// See the printers that your organization can use with Chrome
  static const adminChromePrintersReadonlyScope =
      'https://www.googleapis.com/auth/admin.chrome.printers.readonly';

  /// View and manage customer related information
  static const adminDirectoryCustomerScope =
      'https://www.googleapis.com/auth/admin.directory.customer';

  /// View customer related information
  static const adminDirectoryCustomerReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.customer.readonly';

  /// View and manage your Chrome OS devices' metadata
  static const adminDirectoryDeviceChromeosScope =
      'https://www.googleapis.com/auth/admin.directory.device.chromeos';

  /// View your Chrome OS devices' metadata
  static const adminDirectoryDeviceChromeosReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly';

  /// View and manage your mobile devices' metadata
  static const adminDirectoryDeviceMobileScope =
      'https://www.googleapis.com/auth/admin.directory.device.mobile';

  /// Manage your mobile devices by performing administrative tasks
  static const adminDirectoryDeviceMobileActionScope =
      'https://www.googleapis.com/auth/admin.directory.device.mobile.action';

  /// View your mobile devices' metadata
  static const adminDirectoryDeviceMobileReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.device.mobile.readonly';

  /// View and manage the provisioning of domains for your customers
  static const adminDirectoryDomainScope =
      'https://www.googleapis.com/auth/admin.directory.domain';

  /// View domains related to your customers
  static const adminDirectoryDomainReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.domain.readonly';

  /// View and manage the provisioning of groups on your domain
  static const adminDirectoryGroupScope =
      'https://www.googleapis.com/auth/admin.directory.group';

  /// View and manage group subscriptions on your domain
  static const adminDirectoryGroupMemberScope =
      'https://www.googleapis.com/auth/admin.directory.group.member';

  /// View group subscriptions on your domain
  static const adminDirectoryGroupMemberReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.group.member.readonly';

  /// View groups on your domain
  static const adminDirectoryGroupReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.group.readonly';

  /// View and manage organization units on your domain
  static const adminDirectoryOrgunitScope =
      'https://www.googleapis.com/auth/admin.directory.orgunit';

  /// View organization units on your domain
  static const adminDirectoryOrgunitReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.orgunit.readonly';

  /// View and manage the provisioning of calendar resources on your domain
  static const adminDirectoryResourceCalendarScope =
      'https://www.googleapis.com/auth/admin.directory.resource.calendar';

  /// View calendar resources on your domain
  static const adminDirectoryResourceCalendarReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly';

  /// Manage delegated admin roles for your domain
  static const adminDirectoryRolemanagementScope =
      'https://www.googleapis.com/auth/admin.directory.rolemanagement';

  /// View delegated admin roles for your domain
  static const adminDirectoryRolemanagementReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly';

  /// View and manage the provisioning of users on your domain
  static const adminDirectoryUserScope =
      'https://www.googleapis.com/auth/admin.directory.user';

  /// View and manage user aliases on your domain
  static const adminDirectoryUserAliasScope =
      'https://www.googleapis.com/auth/admin.directory.user.alias';

  /// View user aliases on your domain
  static const adminDirectoryUserAliasReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.user.alias.readonly';

  /// See info about users on your domain
  static const adminDirectoryUserReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.user.readonly';

  /// Manage data access permissions for users on your domain
  static const adminDirectoryUserSecurityScope =
      'https://www.googleapis.com/auth/admin.directory.user.security';

  /// View and manage the provisioning of user schemas on your domain
  static const adminDirectoryUserschemaScope =
      'https://www.googleapis.com/auth/admin.directory.userschema';

  /// View user schemas on your domain
  static const adminDirectoryUserschemaReadonlyScope =
      'https://www.googleapis.com/auth/admin.directory.userschema.readonly';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  AspsResource get asps => AspsResource(_requester);
  ChannelsResource get channels => ChannelsResource(_requester);
  ChromeosdevicesResource get chromeosdevices =>
      ChromeosdevicesResource(_requester);
  CustomerResource get customer => CustomerResource(_requester);
  CustomersResource get customers => CustomersResource(_requester);
  DomainAliasesResource get domainAliases => DomainAliasesResource(_requester);
  DomainsResource get domains => DomainsResource(_requester);
  GroupsResource get groups => GroupsResource(_requester);
  MembersResource get members => MembersResource(_requester);
  MobiledevicesResource get mobiledevices => MobiledevicesResource(_requester);
  OrgunitsResource get orgunits => OrgunitsResource(_requester);
  PrivilegesResource get privileges => PrivilegesResource(_requester);
  ResourcesResource get resources => ResourcesResource(_requester);
  RoleAssignmentsResource get roleAssignments =>
      RoleAssignmentsResource(_requester);
  RolesResource get roles => RolesResource(_requester);
  SchemasResource get schemas => SchemasResource(_requester);
  TokensResource get tokens => TokensResource(_requester);
  TwoStepVerificationResource get twoStepVerification =>
      TwoStepVerificationResource(_requester);
  UsersResource get users => UsersResource(_requester);
  VerificationCodesResource get verificationCodes =>
      VerificationCodesResource(_requester);

  DirectoryApi(http.Client client,
      {core.String rootUrl = 'https://admin.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AspsResource {
  final commons.ApiRequester _requester;

  AspsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an ASP issued by a user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [codeId] - The unique ID of the ASP to be deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userKey,
    core.int codeId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/asps/' +
        commons.escapeVariable('$codeId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets information about an ASP issued by a user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [codeId] - The unique ID of the ASP.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Asp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Asp> get(
    core.String userKey,
    core.int codeId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/asps/' +
        commons.escapeVariable('$codeId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Asp.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the ASPs issued by a user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Asps].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Asps> list(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/asps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Asps.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ChannelsResource {
  final commons.ApiRequester _requester;

  ChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Stops watching resources through this channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> stop(
    Channel request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/directory_v1/channels/stop';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class ChromeosdevicesResource {
  final commons.ApiRequester _requester;

  ChromeosdevicesResource(commons.ApiRequester client) : _requester = client;

  /// Takes an action that affects a Chrome OS Device.
  ///
  /// This includes deprovisioning, disabling, and re-enabling devices.
  /// *Warning:* * Deprovisioning a device will stop device policy syncing and
  /// remove device-level printers. After a device is deprovisioned, it must be
  /// wiped before it can be re-enrolled. * Lost or stolen devices should use
  /// the disable action. * Re-enabling a disabled device will consume a device
  /// license. If you do not have sufficient licenses available when completing
  /// the re-enable action, you will receive an error. For more information
  /// about deprovisioning and disabling devices, visit the
  /// [help center](https://support.google.com/chrome/a/answer/3523633).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [resourceId] - The unique ID of the device. The `resourceId`s are returned
  /// in the response from the
  /// \[chromeosdevices.list\](/admin-sdk/directory/v1/reference/chromeosdevices/list)
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> action(
    ChromeOsDeviceAction request,
    core.String customerId,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.escapeVariable('$resourceId') +
        '/action';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a Chrome OS device's properties.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [deviceId] - The unique ID of the device. The `deviceId`s are returned in
  /// the response from the
  /// \[chromeosdevices.list\](/admin-sdk/directory/v1/reference/chromeosdevices/list)
  /// method.
  ///
  /// [projection] - Determines whether the response contains the full list of
  /// properties or only a subset.
  /// Possible string values are:
  /// - "BASIC" : Includes only the basic metadata fields (e.g., deviceId,
  /// serialNumber, status, and user)
  /// - "FULL" : Includes all metadata fields
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChromeOsDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChromeOsDevice> get(
    core.String customerId,
    core.String deviceId, {
    core.String? projection,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projection != null) 'projection': [projection],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.escapeVariable('$deviceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ChromeOsDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a paginated list of Chrome OS devices within an account.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [includeChildOrgunits] - Return devices from all child orgunits, as well
  /// as the specified org unit. If this is set to true 'orgUnitPath' must be
  /// provided.
  ///
  /// [maxResults] - Maximum number of results to return.
  ///
  /// [orderBy] - Device property to use for sorting results.
  /// Possible string values are:
  /// - "annotatedLocation" : Chrome device location as annotated by the
  /// administrator.
  /// - "annotatedUser" : Chromebook user as annotated by administrator.
  /// - "lastSync" : The date and time the Chrome device was last synchronized
  /// with the policy settings in the Admin console.
  /// - "notes" : Chrome device notes as annotated by the administrator.
  /// - "serialNumber" : The Chrome device serial number entered when the device
  /// was enabled.
  /// - "status" : Chrome device status. For more information, see the \<a
  /// \[chromeosdevices\](/admin-sdk/directory/v1/reference/chromeosdevices.html).
  /// - "supportEndDate" : Chrome device support end date. This is applicable
  /// only for devices purchased directly from Google.
  ///
  /// [orgUnitPath] - The full path of the organizational unit (minus the
  /// leading `/`) or its unique ID.
  ///
  /// [pageToken] - The `pageToken` query parameter is used to request the next
  /// page of query results. The follow-on request's `pageToken` query parameter
  /// is the `nextPageToken` from your previous response.
  ///
  /// [projection] - Restrict information returned to a set of selected fields.
  /// Possible string values are:
  /// - "BASIC" : Includes only the basic metadata fields (e.g., deviceId,
  /// serialNumber, status, and user)
  /// - "FULL" : Includes all metadata fields
  ///
  /// [query] - Search string in the format given at
  /// https://developers.google.com/admin-sdk/directory/v1/list-query-operators
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Must be used with the `orderBy` parameter.
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChromeOsDevices].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChromeOsDevices> list(
    core.String customerId, {
    core.bool? includeChildOrgunits,
    core.int? maxResults,
    core.String? orderBy,
    core.String? orgUnitPath,
    core.String? pageToken,
    core.String? projection,
    core.String? query,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeChildOrgunits != null)
        'includeChildOrgunits': ['${includeChildOrgunits}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitPath != null) 'orgUnitPath': [orgUnitPath],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projection != null) 'projection': [projection],
      if (query != null) 'query': [query],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/chromeos';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ChromeOsDevices.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Moves or inserts multiple Chrome OS devices to an organizational unit.
  ///
  /// You can move up to 50 devices at once.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account
  ///
  /// [orgUnitPath] - Full path of the target organizational unit or its ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> moveDevicesToOu(
    ChromeOsMoveDevicesToOu request,
    core.String customerId,
    core.String orgUnitPath, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'orgUnitPath': [orgUnitPath],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/chromeos/moveDevicesToOu';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Updates a device's updatable properties, such as `annotatedUser`,
  /// `annotatedLocation`, `notes`, `orgUnitPath`, or `annotatedAssetId`.
  ///
  /// This method supports \[patch
  /// semantics\](/admin-sdk/directory/v1/guides/performance#patch).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [deviceId] - The unique ID of the device. The `deviceId`s are returned in
  /// the response from the
  /// \[chromeosdevices.list\](/admin-sdk/v1/reference/chromeosdevices/list)
  /// method.
  ///
  /// [projection] - Restrict information returned to a set of selected fields.
  /// Possible string values are:
  /// - "BASIC" : Includes only the basic metadata fields (e.g., deviceId,
  /// serialNumber, status, and user)
  /// - "FULL" : Includes all metadata fields
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChromeOsDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChromeOsDevice> patch(
    ChromeOsDevice request,
    core.String customerId,
    core.String deviceId, {
    core.String? projection,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projection != null) 'projection': [projection],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.escapeVariable('$deviceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ChromeOsDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a device's updatable properties, such as `annotatedUser`,
  /// `annotatedLocation`, `notes`, `orgUnitPath`, or `annotatedAssetId`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [deviceId] - The unique ID of the device. The `deviceId`s are returned in
  /// the response from the
  /// \[chromeosdevices.list\](/admin-sdk/v1/reference/chromeosdevices/list)
  /// method.
  ///
  /// [projection] - Restrict information returned to a set of selected fields.
  /// Possible string values are:
  /// - "BASIC" : Includes only the basic metadata fields (e.g., deviceId,
  /// serialNumber, status, and user)
  /// - "FULL" : Includes all metadata fields
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChromeOsDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChromeOsDevice> update(
    ChromeOsDevice request,
    core.String customerId,
    core.String deviceId, {
    core.String? projection,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projection != null) 'projection': [projection],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.escapeVariable('$deviceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ChromeOsDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomerResource {
  final commons.ApiRequester _requester;

  CustomerDevicesResource get devices => CustomerDevicesResource(_requester);

  CustomerResource(commons.ApiRequester client) : _requester = client;
}

class CustomerDevicesResource {
  final commons.ApiRequester _requester;

  CustomerDevicesChromeosResource get chromeos =>
      CustomerDevicesChromeosResource(_requester);

  CustomerDevicesResource(commons.ApiRequester client) : _requester = client;
}

class CustomerDevicesChromeosResource {
  final commons.ApiRequester _requester;

  CustomerDevicesChromeosCommandsResource get commands =>
      CustomerDevicesChromeosCommandsResource(_requester);

  CustomerDevicesChromeosResource(commons.ApiRequester client)
      : _requester = client;

  /// Issues a command for the device to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable. Immutable ID of the Google Workspace account.
  ///
  /// [deviceId] - Immutable. Immutable ID of Chrome OS Device.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DirectoryChromeosdevicesIssueCommandResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DirectoryChromeosdevicesIssueCommandResponse> issueCommand(
    DirectoryChromeosdevicesIssueCommandRequest request,
    core.String customerId,
    core.String deviceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.escapeVariable('$deviceId') +
        ':issueCommand';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DirectoryChromeosdevicesIssueCommandResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomerDevicesChromeosCommandsResource {
  final commons.ApiRequester _requester;

  CustomerDevicesChromeosCommandsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets command data a specific command issued to the device.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable. Immutable ID of the Google Workspace account.
  ///
  /// [deviceId] - Immutable. Immutable ID of Chrome OS Device.
  ///
  /// [commandId] - Immutable. Immutable ID of Chrome OS Device Command.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DirectoryChromeosdevicesCommand].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DirectoryChromeosdevicesCommand> get(
    core.String customerId,
    core.String deviceId,
    core.String commandId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.escapeVariable('$deviceId') +
        '/commands/' +
        commons.escapeVariable('$commandId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DirectoryChromeosdevicesCommand.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersChromeResource get chrome => CustomersChromeResource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a customer.
  ///
  /// Request parameters:
  ///
  /// [customerKey] - Id of the customer to be retrieved
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Customer> get(
    core.String customerKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customers/' +
        commons.escapeVariable('$customerKey');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Customer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerKey] - Id of the customer to be updated
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Customer> patch(
    Customer request,
    core.String customerKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customers/' +
        commons.escapeVariable('$customerKey');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Customer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerKey] - Id of the customer to be updated
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Customer> update(
    Customer request,
    core.String customerKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customers/' +
        commons.escapeVariable('$customerKey');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Customer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomersChromeResource {
  final commons.ApiRequester _requester;

  CustomersChromePrintersResource get printers =>
      CustomersChromePrintersResource(_requester);

  CustomersChromeResource(commons.ApiRequester client) : _requester = client;
}

class CustomersChromePrintersResource {
  final commons.ApiRequester _requester;

  CustomersChromePrintersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates printers under given Organization Unit.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the customer. Format:
  /// customers/{customer_id}
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreatePrintersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreatePrintersResponse> batchCreatePrinters(
    BatchCreatePrintersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/' +
        core.Uri.encodeFull('$parent') +
        '/chrome/printers:batchCreatePrinters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreatePrintersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes printers in batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the customer. Format:
  /// customers/{customer_id}
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchDeletePrintersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchDeletePrintersResponse> batchDeletePrinters(
    BatchDeletePrintersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/' +
        core.Uri.encodeFull('$parent') +
        '/chrome/printers:batchDeletePrinters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchDeletePrintersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a printer under given Organization Unit.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the customer. Format:
  /// customers/{customer_id}
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Printer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Printer> create(
    Printer request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/' +
        core.Uri.encodeFull('$parent') +
        '/chrome/printers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Printer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `Printer`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the printer to be updated. Format:
  /// customers/{customer_id}/chrome/printers/{printer_id}
  /// Value must have pattern `^customers/\[^/\]+/chrome/printers/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a `Printer` resource (printer's config).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the printer to retrieve. Format:
  /// customers/{customer_id}/chrome/printers/{printer_id}
  /// Value must have pattern `^customers/\[^/\]+/chrome/printers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Printer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Printer> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Printer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List printers configs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the customer who owns this collection of
  /// printers. Format: customers/{customer_id}
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Search query. Search syntax is shared between this api and
  /// Admin Console printers pages.
  ///
  /// [orderBy] - The order to sort results by. Must be one of display_name,
  /// description, make_and_model, or create_time. Default order is ascending,
  /// but descending order can be returned by appending "desc" to the order_by
  /// field. For instance, "description desc" will return the printers sorted by
  /// description in descending order.
  ///
  /// [orgUnitId] - Organization Unit that we want to list the printers for.
  /// When org_unit is not present in the request then all printers of the
  /// customer are returned (or filtered). When org_unit is present in the
  /// request then only printers available to this OU will be returned (owned or
  /// inherited). You may see if printer is owned or inherited for this OU by
  /// looking at Printer.org_unit_id.
  ///
  /// [pageSize] - The maximum number of objects to return. The service may
  /// return fewer than this value.
  ///
  /// [pageToken] - A page token, received from a previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrintersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrintersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/' +
        core.Uri.encodeFull('$parent') +
        '/chrome/printers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrintersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the supported printer models.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the customer who owns this collection of
  /// printers. Format: customers/{customer_id}
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Filer to list only models by a given manufacturer in format:
  /// "manufacturer:Brother". Search syntax is shared between this api and Admin
  /// Console printers pages.
  ///
  /// [pageSize] - The maximum number of objects to return. The service may
  /// return fewer than this value.
  ///
  /// [pageToken] - A page token, received from a previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrinterModelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrinterModelsResponse> listPrinterModels(
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

    final url_ = 'admin/directory/v1/' +
        core.Uri.encodeFull('$parent') +
        '/chrome/printers:listPrinterModels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrinterModelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a `Printer` resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Printer object, in the format
  /// customers/{customer-id}/printers/{printer-id} (During printer creation
  /// leave empty)
  /// Value must have pattern `^customers/\[^/\]+/chrome/printers/\[^/\]+$`.
  ///
  /// [clearMask] - The list of fields to be cleared. Note, some of the fields
  /// are read only and cannot be updated. Values for not specified fields will
  /// be patched.
  ///
  /// [updateMask] - The list of fields to be updated. Note, some of the fields
  /// are read only and cannot be updated. Values for not specified fields will
  /// be patched.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Printer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Printer> patch(
    Printer request,
    core.String name, {
    core.String? clearMask,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clearMask != null) 'clearMask': [clearMask],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Printer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class DomainAliasesResource {
  final commons.ApiRequester _requester;

  DomainAliasesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a domain Alias of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [domainAliasName] - Name of domain alias to be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customer,
    core.String domainAliasName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/domainaliases/' +
        commons.escapeVariable('$domainAliasName');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a domain alias of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [domainAliasName] - Name of domain alias to be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainAlias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainAlias> get(
    core.String customer,
    core.String domainAliasName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/domainaliases/' +
        commons.escapeVariable('$domainAliasName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DomainAlias.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a domain alias of the customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainAlias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainAlias> insert(
    DomainAlias request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/domainaliases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DomainAlias.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the domain aliases of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [parentDomainName] - Name of the parent domain for which domain aliases
  /// are to be fetched.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainAliases].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainAliases> list(
    core.String customer, {
    core.String? parentDomainName,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parentDomainName != null) 'parentDomainName': [parentDomainName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/domainaliases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DomainAliases.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class DomainsResource {
  final commons.ApiRequester _requester;

  DomainsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a domain of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [domainName] - Name of domain to be deleted
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customer,
    core.String domainName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/domains/' +
        commons.escapeVariable('$domainName');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a domain of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [domainName] - Name of domain to be retrieved
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domains].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domains> get(
    core.String customer,
    core.String domainName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/domains/' +
        commons.escapeVariable('$domainName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Domains.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a domain of the customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domains].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domains> insert(
    Domains request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/domains';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Domains.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the domains of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domains2].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domains2> list(
    core.String customer, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/domains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Domains2.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class GroupsResource {
  final commons.ApiRequester _requester;

  GroupsAliasesResource get aliases => GroupsAliasesResource(_requester);

  GroupsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a group.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String groupKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/directory/v1/groups/' + commons.escapeVariable('$groupKey');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a group's properties.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
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
    core.String groupKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/directory/v1/groups/' + commons.escapeVariable('$groupKey');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Group> insert(
    Group request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/directory/v1/groups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves all groups of a domain or of a user given a userKey (paginated).
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. In
  /// case of a multi-domain account, to fetch all groups for a customer, fill
  /// in this field instead of `domain`. You can also use the `my_customer`
  /// alias to represent your account's `customerId`. The `customerId` is also
  /// returned as part of the \[Users\](/admin-sdk/directory/v1/reference/users)
  /// resource. Either the `customer` or the `domain` parameter must be
  /// provided.
  ///
  /// [domain] - The domain name. Use this field to get groups from only one
  /// domain. To return all domains for a customer account, use the `customer`
  /// query parameter instead.
  ///
  /// [maxResults] - Maximum number of results to return. Max allowed value is
  /// 200.
  ///
  /// [orderBy] - Column to use for sorting results
  /// Possible string values are:
  /// - "email" : Email of the group.
  ///
  /// [pageToken] - Token to specify next page in the list
  ///
  /// [query] - Query string search. Should be of the form "". Complete
  /// documentation is at https:
  /// //developers.google.com/admin-sdk/directory/v1/guides/search-groups
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Only of use when orderBy is also used
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [userKey] - Email or immutable ID of the user if only those groups are to
  /// be listed, the given user is a member of. If it's an ID, it should match
  /// with the ID of the user object.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Groups].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Groups> list({
    core.String? customer,
    core.String? domain,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? query,
    core.String? sortOrder,
    core.String? userKey,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if (domain != null) 'domain': [domain],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (userKey != null) 'userKey': [userKey],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/directory/v1/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Groups.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a group's properties.
  ///
  /// This method supports \[patch
  /// semantics\](/admin-sdk/directory/v1/guides/performance#patch).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
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
  async.Future<Group> patch(
    Group request,
    core.String groupKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/directory/v1/groups/' + commons.escapeVariable('$groupKey');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a group's properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
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
  async.Future<Group> update(
    Group request,
    core.String groupKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/directory/v1/groups/' + commons.escapeVariable('$groupKey');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class GroupsAliasesResource {
  final commons.ApiRequester _requester;

  GroupsAliasesResource(commons.ApiRequester client) : _requester = client;

  /// Removes an alias.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [alias] - The alias to be removed
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String groupKey,
    core.String alias, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/aliases/' +
        commons.escapeVariable('$alias');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Adds an alias for the group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alias> insert(
    Alias request,
    core.String groupKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/aliases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Alias.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all aliases for a group.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Aliases].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Aliases> list(
    core.String groupKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/aliases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Aliases.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class MembersResource {
  final commons.ApiRequester _requester;

  MembersResource(commons.ApiRequester client) : _requester = client;

  /// Removes a member from a group.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [memberKey] - Identifies the group member in the API request. A group
  /// member can be a user or another group. The value can be the member's
  /// (group or user) primary email address, alias, or unique ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String groupKey,
    core.String memberKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/members/' +
        commons.escapeVariable('$memberKey');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a group member's properties.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [memberKey] - Identifies the group member in the API request. A group
  /// member can be a user or another group. The value can be the member's
  /// (group or user) primary email address, alias, or unique ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Member].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Member> get(
    core.String groupKey,
    core.String memberKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/members/' +
        commons.escapeVariable('$memberKey');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Member.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Checks whether the given user is a member of the group.
  ///
  /// Membership can be direct or nested.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [memberKey] - Identifies the user member in the API request. The value can
  /// be the user's primary email address, alias, or unique ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MembersHasMember].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MembersHasMember> hasMember(
    core.String groupKey,
    core.String memberKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/hasMember/' +
        commons.escapeVariable('$memberKey');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MembersHasMember.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds a user to the specified group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Member].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Member> insert(
    Member request,
    core.String groupKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/members';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Member.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a paginated list of all members in a group.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [includeDerivedMembership] - Whether to list indirect memberships.
  /// Default: false.
  ///
  /// [maxResults] - Maximum number of results to return. Max allowed value is
  /// 200.
  ///
  /// [pageToken] - Token to specify next page in the list.
  ///
  /// [roles] - The `roles` query parameter allows you to retrieve group members
  /// by role. Allowed values are `OWNER`, `MANAGER`, and `MEMBER`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Members].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Members> list(
    core.String groupKey, {
    core.bool? includeDerivedMembership,
    core.int? maxResults,
    core.String? pageToken,
    core.String? roles,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeDerivedMembership != null)
        'includeDerivedMembership': ['${includeDerivedMembership}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (roles != null) 'roles': [roles],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/members';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Members.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the membership properties of a user in the specified group.
  ///
  /// This method supports \[patch
  /// semantics\](/admin-sdk/directory/v1/guides/performance#patch).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [memberKey] - Identifies the group member in the API request. A group
  /// member can be a user or another group. The value can be the member's
  /// (group or user) primary email address, alias, or unique ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Member].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Member> patch(
    Member request,
    core.String groupKey,
    core.String memberKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/members/' +
        commons.escapeVariable('$memberKey');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Member.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the membership of a user in the specified group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Identifies the group in the API request. The value can be the
  /// group's email address, group alias, or the unique group ID.
  ///
  /// [memberKey] - Identifies the group member in the API request. A group
  /// member can be a user or another group. The value can be the member's
  /// (group or user) primary email address, alias, or unique ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Member].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Member> update(
    Member request,
    core.String groupKey,
    core.String memberKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/groups/' +
        commons.escapeVariable('$groupKey') +
        '/members/' +
        commons.escapeVariable('$memberKey');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Member.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class MobiledevicesResource {
  final commons.ApiRequester _requester;

  MobiledevicesResource(commons.ApiRequester client) : _requester = client;

  /// Takes an action that affects a mobile device.
  ///
  /// For example, remotely wiping a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [resourceId] - The unique ID the API service uses to identify the mobile
  /// device.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> action(
    MobileDeviceAction request,
    core.String customerId,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/mobile/' +
        commons.escapeVariable('$resourceId') +
        '/action';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Removes a mobile device.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [resourceId] - The unique ID the API service uses to identify the mobile
  /// device.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customerId,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/mobile/' +
        commons.escapeVariable('$resourceId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a mobile device's properties.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [resourceId] - The unique ID the API service uses to identify the mobile
  /// device.
  ///
  /// [projection] - Restrict information returned to a set of selected fields.
  /// Possible string values are:
  /// - "BASIC" : Includes only the basic metadata fields (e.g., deviceId,
  /// model, status, type, and status)
  /// - "FULL" : Includes all metadata fields
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MobileDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MobileDevice> get(
    core.String customerId,
    core.String resourceId, {
    core.String? projection,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projection != null) 'projection': [projection],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/mobile/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MobileDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a paginated list of all user-owned mobile devices for an
  /// account.
  ///
  /// To retrieve a list that includes company-owned devices, use the Cloud
  /// Identity
  /// [Devices API](https://cloud.google.com/identity/docs/concepts/overview-devices)
  /// instead.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [maxResults] - Maximum number of results to return. Max allowed value is
  /// 100.
  /// Value must be between "1" and "100".
  ///
  /// [orderBy] - Device property to use for sorting results.
  /// Possible string values are:
  /// - "deviceId" : The serial number for a Google Sync mobile device. For
  /// Android devices, this is a software generated unique identifier.
  /// - "email" : The device owner's email address.
  /// - "lastSync" : Last policy settings sync date time of the device.
  /// - "model" : The mobile device's model.
  /// - "name" : The device owner's user name.
  /// - "os" : The device's operating system.
  /// - "status" : The device status.
  /// - "type" : Type of the device.
  ///
  /// [pageToken] - Token to specify next page in the list
  ///
  /// [projection] - Restrict information returned to a set of selected fields.
  /// Possible string values are:
  /// - "BASIC" : Includes only the basic metadata fields (e.g., deviceId,
  /// model, status, type, and status)
  /// - "FULL" : Includes all metadata fields
  ///
  /// [query] - Search string in the format given at
  /// https://developers.google.com/admin-sdk/directory/v1/search-operators
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Must be used with the `orderBy` parameter.
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MobileDevices].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MobileDevices> list(
    core.String customerId, {
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? projection,
    core.String? query,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projection != null) 'projection': [projection],
      if (query != null) 'query': [query],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/devices/mobile';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MobileDevices.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrgunitsResource {
  final commons.ApiRequester _requester;

  OrgunitsResource(commons.ApiRequester client) : _requester = client;

  /// Removes an organizational unit.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [orgUnitPath] - The full path of the organizational unit (minus the
  /// leading `/`) or its unique ID.
  /// Value must have pattern `^.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customerId,
    core.String orgUnitPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/orgunits/' +
        core.Uri.encodeFull('$orgUnitPath');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves an organizational unit.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [orgUnitPath] - The full path of the organizational unit (minus the
  /// leading `/`) or its unique ID.
  /// Value must have pattern `^.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgUnit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgUnit> get(
    core.String customerId,
    core.String orgUnitPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/orgunits/' +
        core.Uri.encodeFull('$orgUnitPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OrgUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds an organizational unit.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgUnit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgUnit> insert(
    OrgUnit request,
    core.String customerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/orgunits';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of all organizational units for an account.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [orgUnitPath] - The full path to the organizational unit or its unique ID.
  /// Returns the children of the specified organizational unit.
  ///
  /// [type] - Whether to return all sub-organizations or just immediate
  /// children.
  /// Possible string values are:
  /// - "all" : All sub-organizational units.
  /// - "children" : Immediate children only (default).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgUnits].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgUnits> list(
    core.String customerId, {
    core.String? orgUnitPath,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orgUnitPath != null) 'orgUnitPath': [orgUnitPath],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/orgunits';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OrgUnits.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an organizational unit.
  ///
  /// This method supports \[patch
  /// semantics\](/admin-sdk/directory/v1/guides/performance#patch)
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [orgUnitPath] - The full path of the organizational unit (minus the
  /// leading `/`) or its unique ID.
  /// Value must have pattern `^.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgUnit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgUnit> patch(
    OrgUnit request,
    core.String customerId,
    core.String orgUnitPath, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/orgunits/' +
        core.Uri.encodeFull('$orgUnitPath');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an organizational unit.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - The unique ID for the customer's Google Workspace account.
  /// As an account administrator, you can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users).
  ///
  /// [orgUnitPath] - The full path of the organizational unit (minus the
  /// leading `/`) or its unique ID.
  /// Value must have pattern `^.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgUnit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgUnit> update(
    OrgUnit request,
    core.String customerId,
    core.String orgUnitPath, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/orgunits/' +
        core.Uri.encodeFull('$orgUnitPath');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PrivilegesResource {
  final commons.ApiRequester _requester;

  PrivilegesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a paginated list of all privileges for a customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Privileges].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Privileges> list(
    core.String customer, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roles/ALL/privileges';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Privileges.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ResourcesResource {
  final commons.ApiRequester _requester;

  ResourcesBuildingsResource get buildings =>
      ResourcesBuildingsResource(_requester);
  ResourcesCalendarsResource get calendars =>
      ResourcesCalendarsResource(_requester);
  ResourcesFeaturesResource get features =>
      ResourcesFeaturesResource(_requester);

  ResourcesResource(commons.ApiRequester client) : _requester = client;
}

class ResourcesBuildingsResource {
  final commons.ApiRequester _requester;

  ResourcesBuildingsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a building.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [buildingId] - The id of the building to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customer,
    core.String buildingId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/buildings/' +
        commons.escapeVariable('$buildingId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a building.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [buildingId] - The unique ID of the building to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Building].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Building> get(
    core.String customer,
    core.String buildingId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/buildings/' +
        commons.escapeVariable('$buildingId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Building.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a building.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [coordinatesSource] - Source from which Building.coordinates are derived.
  /// Possible string values are:
  /// - "CLIENT_SPECIFIED" : Building.coordinates are set to the coordinates
  /// included in the request.
  /// - "RESOLVED_FROM_ADDRESS" : Building.coordinates are automatically
  /// populated based on the postal address.
  /// - "SOURCE_UNSPECIFIED" : Defaults to `RESOLVED_FROM_ADDRESS` if postal
  /// address is provided. Otherwise, defaults to `CLIENT_SPECIFIED` if
  /// coordinates are provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Building].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Building> insert(
    Building request,
    core.String customer, {
    core.String? coordinatesSource,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (coordinatesSource != null) 'coordinatesSource': [coordinatesSource],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/buildings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Building.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of buildings for an account.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "1" and "500".
  ///
  /// [pageToken] - Token to specify the next page in the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Buildings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Buildings> list(
    core.String customer, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/buildings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Buildings.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a building.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [buildingId] - The id of the building to update.
  ///
  /// [coordinatesSource] - Source from which Building.coordinates are derived.
  /// Possible string values are:
  /// - "CLIENT_SPECIFIED" : Building.coordinates are set to the coordinates
  /// included in the request.
  /// - "RESOLVED_FROM_ADDRESS" : Building.coordinates are automatically
  /// populated based on the postal address.
  /// - "SOURCE_UNSPECIFIED" : Defaults to `RESOLVED_FROM_ADDRESS` if postal
  /// address is provided. Otherwise, defaults to `CLIENT_SPECIFIED` if
  /// coordinates are provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Building].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Building> patch(
    Building request,
    core.String customer,
    core.String buildingId, {
    core.String? coordinatesSource,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (coordinatesSource != null) 'coordinatesSource': [coordinatesSource],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/buildings/' +
        commons.escapeVariable('$buildingId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Building.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a building.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [buildingId] - The id of the building to update.
  ///
  /// [coordinatesSource] - Source from which Building.coordinates are derived.
  /// Possible string values are:
  /// - "CLIENT_SPECIFIED" : Building.coordinates are set to the coordinates
  /// included in the request.
  /// - "RESOLVED_FROM_ADDRESS" : Building.coordinates are automatically
  /// populated based on the postal address.
  /// - "SOURCE_UNSPECIFIED" : Defaults to `RESOLVED_FROM_ADDRESS` if postal
  /// address is provided. Otherwise, defaults to `CLIENT_SPECIFIED` if
  /// coordinates are provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Building].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Building> update(
    Building request,
    core.String customer,
    core.String buildingId, {
    core.String? coordinatesSource,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (coordinatesSource != null) 'coordinatesSource': [coordinatesSource],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/buildings/' +
        commons.escapeVariable('$buildingId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Building.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ResourcesCalendarsResource {
  final commons.ApiRequester _requester;

  ResourcesCalendarsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a calendar resource.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [calendarResourceId] - The unique ID of the calendar resource to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customer,
    core.String calendarResourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/calendars/' +
        commons.escapeVariable('$calendarResourceId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a calendar resource.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [calendarResourceId] - The unique ID of the calendar resource to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarResource> get(
    core.String customer,
    core.String calendarResourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/calendars/' +
        commons.escapeVariable('$calendarResourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CalendarResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a calendar resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarResource> insert(
    CalendarResource request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/calendars';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CalendarResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of calendar resources for an account.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "1" and "500".
  ///
  /// [orderBy] - Field(s) to sort results by in either ascending or descending
  /// order. Supported fields include `resourceId`, `resourceName`, `capacity`,
  /// `buildingId`, and `floorName`. If no order is specified, defaults to
  /// ascending. Should be of the form "field \[asc|desc\], field \[asc|desc\],
  /// ...". For example `buildingId, capacity desc` would return results sorted
  /// first by `buildingId` in ascending order then by `capacity` in descending
  /// order.
  ///
  /// [pageToken] - Token to specify the next page in the list.
  ///
  /// [query] - String query used to filter results. Should be of the form
  /// "field operator value" where field can be any of supported fields and
  /// operators can be any of supported operations. Operators include '=' for
  /// exact match, '!=' for mismatch and ':' for prefix match or HAS match where
  /// applicable. For prefix match, the value should always be followed by a *.
  /// Logical operators NOT and AND are supported (in this order of precedence).
  /// Supported fields include `generatedResourceName`, `name`, `buildingId`,
  /// `floor_name`, `capacity`, `featureInstances.feature.name`,
  /// `resourceEmail`, `resourceCategory`. For example `buildingId=US-NYC-9TH
  /// AND featureInstances.feature.name:Phone`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarResources].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarResources> list(
    core.String customer, {
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/calendars';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CalendarResources.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a calendar resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [calendarResourceId] - The unique ID of the calendar resource to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarResource> patch(
    CalendarResource request,
    core.String customer,
    core.String calendarResourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/calendars/' +
        commons.escapeVariable('$calendarResourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CalendarResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a calendar resource.
  ///
  /// This method supports patch semantics, meaning you only need to include the
  /// fields you wish to update. Fields that are not present in the request will
  /// be preserved.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [calendarResourceId] - The unique ID of the calendar resource to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarResource> update(
    CalendarResource request,
    core.String customer,
    core.String calendarResourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/calendars/' +
        commons.escapeVariable('$calendarResourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return CalendarResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ResourcesFeaturesResource {
  final commons.ApiRequester _requester;

  ResourcesFeaturesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a feature.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [featureKey] - The unique ID of the feature to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customer,
    core.String featureKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/features/' +
        commons.escapeVariable('$featureKey');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a feature.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [featureKey] - The unique ID of the feature to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Feature].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Feature> get(
    core.String customer,
    core.String featureKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/features/' +
        commons.escapeVariable('$featureKey');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Feature.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Feature].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Feature> insert(
    Feature request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/features';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Feature.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of features for an account.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "1" and "500".
  ///
  /// [pageToken] - Token to specify the next page in the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Features].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Features> list(
    core.String customer, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/features';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Features.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [featureKey] - The unique ID of the feature to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Feature].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Feature> patch(
    Feature request,
    core.String customer,
    core.String featureKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/features/' +
        commons.escapeVariable('$featureKey');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Feature.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Renames a feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [oldName] - The unique ID of the feature to rename.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> rename(
    FeatureRename request,
    core.String customer,
    core.String oldName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/features/' +
        commons.escapeVariable('$oldName') +
        '/rename';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Updates a feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. As
  /// an account administrator, you can also use the `my_customer` alias to
  /// represent your account's customer ID.
  ///
  /// [featureKey] - The unique ID of the feature to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Feature].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Feature> update(
    Feature request,
    core.String customer,
    core.String featureKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/resources/features/' +
        commons.escapeVariable('$featureKey');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Feature.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class RoleAssignmentsResource {
  final commons.ApiRequester _requester;

  RoleAssignmentsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a role assignment.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [roleAssignmentId] - Immutable ID of the role assignment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customer,
    core.String roleAssignmentId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roleassignments/' +
        commons.escapeVariable('$roleAssignmentId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a role assignment.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [roleAssignmentId] - Immutable ID of the role assignment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RoleAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RoleAssignment> get(
    core.String customer,
    core.String roleAssignmentId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roleassignments/' +
        commons.escapeVariable('$roleAssignmentId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RoleAssignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a role assignment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RoleAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RoleAssignment> insert(
    RoleAssignment request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roleassignments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RoleAssignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a paginated list of all roleAssignments.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "1" and "200".
  ///
  /// [pageToken] - Token to specify the next page in the list.
  ///
  /// [roleId] - Immutable ID of a role. If included in the request, returns
  /// only role assignments containing this role ID.
  ///
  /// [userKey] - The user's primary email address, alias email address, or
  /// unique user ID. If included in the request, returns role assignments only
  /// for this user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RoleAssignments].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RoleAssignments> list(
    core.String customer, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? roleId,
    core.String? userKey,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (roleId != null) 'roleId': [roleId],
      if (userKey != null) 'userKey': [userKey],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roleassignments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RoleAssignments.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RolesResource {
  final commons.ApiRequester _requester;

  RolesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a role.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [roleId] - Immutable ID of the role.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customer,
    core.String roleId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roles/' +
        commons.escapeVariable('$roleId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a role.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [roleId] - Immutable ID of the role.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(
    core.String customer,
    core.String roleId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roles/' +
        commons.escapeVariable('$roleId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> insert(
    Role request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a paginated list of all the roles in a domain.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - Token to specify the next page in the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Roles].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Roles> list(
    core.String customer, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Roles.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [roleId] - Immutable ID of the role.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> patch(
    Role request,
    core.String customer,
    core.String roleId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roles/' +
        commons.escapeVariable('$roleId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the Google Workspace account.
  ///
  /// [roleId] - Immutable ID of the role.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> update(
    Role request,
    core.String customer,
    core.String roleId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customer') +
        '/roles/' +
        commons.escapeVariable('$roleId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SchemasResource {
  final commons.ApiRequester _requester;

  SchemasResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a schema.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account.
  ///
  /// [schemaKey] - Name or immutable ID of the schema.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String customerId,
    core.String schemaKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/schemas/' +
        commons.escapeVariable('$schemaKey');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a schema.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account.
  ///
  /// [schemaKey] - Name or immutable ID of the schema.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> get(
    core.String customerId,
    core.String schemaKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/schemas/' +
        commons.escapeVariable('$schemaKey');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> insert(
    Schema request,
    core.String customerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/schemas';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves all schemas for a customer.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schemas].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schemas> list(
    core.String customerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/schemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Schemas.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account.
  ///
  /// [schemaKey] - Name or immutable ID of the schema.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> patch(
    Schema request,
    core.String customerId,
    core.String schemaKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/schemas/' +
        commons.escapeVariable('$schemaKey');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account.
  ///
  /// [schemaKey] - Name or immutable ID of the schema.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> update(
    Schema request,
    core.String customerId,
    core.String schemaKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/customer/' +
        commons.escapeVariable('$customerId') +
        '/schemas/' +
        commons.escapeVariable('$schemaKey');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TokensResource {
  final commons.ApiRequester _requester;

  TokensResource(commons.ApiRequester client) : _requester = client;

  /// Deletes all access tokens issued by a user for an application.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [clientId] - The Client ID of the application the token is issued to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userKey,
    core.String clientId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/tokens/' +
        commons.escapeVariable('$clientId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets information about an access token issued by a user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [clientId] - The Client ID of the application the token is issued to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Token].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Token> get(
    core.String userKey,
    core.String clientId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/tokens/' +
        commons.escapeVariable('$clientId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Token.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the set of tokens specified user has issued to 3rd party
  /// applications.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tokens].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tokens> list(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/tokens';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Tokens.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TwoStepVerificationResource {
  final commons.ApiRequester _requester;

  TwoStepVerificationResource(commons.ApiRequester client)
      : _requester = client;

  /// Turns off 2-Step Verification for user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> turnOff(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/twoStepVerification/turnOff';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersAliasesResource get aliases => UsersAliasesResource(_requester);
  UsersPhotosResource get photos => UsersPhotosResource(_requester);

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/directory/v1/users/' + commons.escapeVariable('$userKey');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [customFieldMask] - A comma-separated list of schema names. All fields
  /// from these schemas are fetched. This should only be set when
  /// `projection=custom`.
  ///
  /// [projection] - What subset of fields to fetch for this user.
  /// Possible string values are:
  /// - "basic" : Do not include any custom fields for the user.
  /// - "custom" : Include custom fields from schemas requested in
  /// `customFieldMask`.
  /// - "full" : Include all fields associated with this user.
  ///
  /// [viewType] - Whether to fetch the administrator-only or domain-wide public
  /// view of the user. For more information, see \[Retrieve a user as a
  /// non-administrator\](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin).
  /// Possible string values are:
  /// - "admin_view" : Results include both administrator-only and domain-public
  /// fields for the user.
  /// - "domain_public" : Results only include fields for the user that are
  /// publicly visible to other users in the domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(
    core.String userKey, {
    core.String? customFieldMask,
    core.String? projection,
    core.String? viewType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customFieldMask != null) 'customFieldMask': [customFieldMask],
      if (projection != null) 'projection': [projection],
      if (viewType != null) 'viewType': [viewType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/directory/v1/users/' + commons.escapeVariable('$userKey');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> insert(
    User request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/directory/v1/users';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a paginated list of either deleted users or all users in a
  /// domain.
  ///
  /// Request parameters:
  ///
  /// [customFieldMask] - A comma-separated list of schema names. All fields
  /// from these schemas are fetched. This should only be set when
  /// `projection=custom`.
  ///
  /// [customer] - The unique ID for the customer's Google Workspace account. In
  /// case of a multi-domain account, to fetch all groups for a customer, fill
  /// this field instead of domain. You can also use the `my_customer` alias to
  /// represent your account's `customerId`. The `customerId` is also returned
  /// as part of the \[Users
  /// resource\](/admin-sdk/directory/v1/reference/users). Either the `customer`
  /// or the `domain` parameter must be provided.
  ///
  /// [domain] - The domain name. Use this field to get groups from only one
  /// domain. To return all domains for a customer account, use the `customer`
  /// query parameter instead. Either the `customer` or the `domain` parameter
  /// must be provided.
  ///
  /// [event] - Event on which subscription is intended (if subscribing)
  /// Possible string values are:
  /// - "add" : User Created Event
  /// - "delete" : User Deleted Event
  /// - "makeAdmin" : User Admin Status Change Event
  /// - "undelete" : User Undeleted Event
  /// - "update" : User Updated Event
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "1" and "500".
  ///
  /// [orderBy] - Property to use for sorting results.
  /// Possible string values are:
  /// - "email" : Primary email of the user.
  /// - "familyName" : User's family name.
  /// - "givenName" : User's given name.
  ///
  /// [pageToken] - Token to specify next page in the list
  ///
  /// [projection] - What subset of fields to fetch for this user.
  /// Possible string values are:
  /// - "basic" : Do not include any custom fields for the user.
  /// - "custom" : Include custom fields from schemas requested in
  /// `customFieldMask`.
  /// - "full" : Include all fields associated with this user.
  ///
  /// [query] - Query string for searching user fields. For more information on
  /// constructing user queries, see \[Search for
  /// Users\](/admin-sdk/directory/v1/guides/search-users).
  ///
  /// [showDeleted] - If set to `true`, retrieves the list of deleted users.
  /// (Default: `false`)
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order,
  /// ignoring case.
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [viewType] - Whether to fetch the administrator-only or domain-wide public
  /// view of the user. For more information, see \[Retrieve a user as a
  /// non-administrator\](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin).
  /// Possible string values are:
  /// - "admin_view" : Results include both administrator-only and domain-public
  /// fields for the user.
  /// - "domain_public" : Results only include fields for the user that are
  /// publicly visible to other users in the domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Users].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Users> list({
    core.String? customFieldMask,
    core.String? customer,
    core.String? domain,
    core.String? event,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? projection,
    core.String? query,
    core.String? showDeleted,
    core.String? sortOrder,
    core.String? viewType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customFieldMask != null) 'customFieldMask': [customFieldMask],
      if (customer != null) 'customer': [customer],
      if (domain != null) 'domain': [domain],
      if (event != null) 'event': [event],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projection != null) 'projection': [projection],
      if (query != null) 'query': [query],
      if (showDeleted != null) 'showDeleted': [showDeleted],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (viewType != null) 'viewType': [viewType],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/directory/v1/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Users.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Makes a user a super administrator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> makeAdmin(
    UserMakeAdmin request,
    core.String userKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/makeAdmin';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Updates a user using patch semantics.
  ///
  /// The update method should be used instead, since it also supports patch
  /// semantics and has better performance. This method is unable to clear
  /// fields that contain repeated objects (`addresses`, `phones`, etc). Use the
  /// update method instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> patch(
    User request,
    core.String userKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/directory/v1/users/' + commons.escapeVariable('$userKey');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs a user out of all web and device sessions and reset their sign-in
  /// cookies.
  ///
  /// User will have to sign in by authenticating again.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the target user in the API request. The value can
  /// be the user's primary email address, alias email address, or unique user
  /// ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> signOut(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/signOut';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Undeletes a deleted user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - The immutable id of the user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> undelete(
    UserUndelete request,
    core.String userKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/undelete';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Updates a user.
  ///
  /// This method supports patch semantics, meaning you only need to include the
  /// fields you wish to update. Fields that are not present in the request will
  /// be preserved, and fields set to `null` will be cleared.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> update(
    User request,
    core.String userKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/directory/v1/users/' + commons.escapeVariable('$userKey');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watches for changes in users list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customFieldMask] - Comma-separated list of schema names. All fields from
  /// these schemas are fetched. This should only be set when projection=custom.
  ///
  /// [customer] - Immutable ID of the Google Workspace account. In case of
  /// multi-domain, to fetch all users for a customer, fill this field instead
  /// of domain.
  ///
  /// [domain] - Name of the domain. Fill this field to get users from only this
  /// domain. To return all users in a multi-domain fill customer field
  /// instead."
  ///
  /// [event] - Events to watch for.
  /// Possible string values are:
  /// - "add" : User Created Event
  /// - "delete" : User Deleted Event
  /// - "makeAdmin" : User Admin Status Change Event
  /// - "undelete" : User Undeleted Event
  /// - "update" : User Updated Event
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "1" and "500".
  ///
  /// [orderBy] - Column to use for sorting results
  /// Possible string values are:
  /// - "email" : Primary email of the user.
  /// - "familyName" : User's family name.
  /// - "givenName" : User's given name.
  ///
  /// [pageToken] - Token to specify next page in the list
  ///
  /// [projection] - What subset of fields to fetch for this user.
  /// Possible string values are:
  /// - "basic" : Do not include any custom fields for the user.
  /// - "custom" : Include custom fields from schemas mentioned in
  /// customFieldMask.
  /// - "full" : Include all fields associated with this user.
  ///
  /// [query] - Query string search. Should be of the form "". Complete
  /// documentation is at https:
  /// //developers.google.com/admin-sdk/directory/v1/guides/search-users
  ///
  /// [showDeleted] - If set to true, retrieves the list of deleted users.
  /// (Default: false)
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [viewType] - Whether to fetch the administrator-only or domain-wide public
  /// view of the user. For more information, see \[Retrieve a user as a
  /// non-administrator\](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin).
  /// Possible string values are:
  /// - "admin_view" : Results include both administrator-only and domain-public
  /// fields.
  /// - "domain_public" : Results only include fields for the user that are
  /// publicly visible to other users in the domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watch(
    Channel request, {
    core.String? customFieldMask,
    core.String? customer,
    core.String? domain,
    core.String? event,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? projection,
    core.String? query,
    core.String? showDeleted,
    core.String? sortOrder,
    core.String? viewType,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customFieldMask != null) 'customFieldMask': [customFieldMask],
      if (customer != null) 'customer': [customer],
      if (domain != null) 'domain': [domain],
      if (event != null) 'event': [event],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projection != null) 'projection': [projection],
      if (query != null) 'query': [query],
      if (showDeleted != null) 'showDeleted': [showDeleted],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (viewType != null) 'viewType': [viewType],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/directory/v1/users/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersAliasesResource {
  final commons.ApiRequester _requester;

  UsersAliasesResource(commons.ApiRequester client) : _requester = client;

  /// Removes an alias.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [alias] - The alias to be removed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userKey,
    core.String alias, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/aliases/' +
        commons.escapeVariable('$alias');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Adds an alias.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alias> insert(
    Alias request,
    core.String userKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/aliases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Alias.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all aliases for a user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [event] - Events to watch for.
  /// Possible string values are:
  /// - "add" : Alias Created Event
  /// - "delete" : Alias Deleted Event
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Aliases].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Aliases> list(
    core.String userKey, {
    core.String? event,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (event != null) 'event': [event],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/aliases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Aliases.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watches for changes in users list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
  ///
  /// [event] - Events to watch for.
  /// Possible string values are:
  /// - "add" : Alias Created Event
  /// - "delete" : Alias Deleted Event
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watch(
    Channel request,
    core.String userKey, {
    core.String? event,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (event != null) 'event': [event],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/aliases/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersPhotosResource {
  final commons.ApiRequester _requester;

  UsersPhotosResource(commons.ApiRequester client) : _requester = client;

  /// Removes the user's photo.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/photos/thumbnail';

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves the user's photo.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserPhoto].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPhoto> get(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/photos/thumbnail';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserPhoto.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds a photo for the user.
  ///
  /// This method supports \[patch
  /// semantics\](/admin-sdk/directory/v1/guides/performance#patch).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserPhoto].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPhoto> patch(
    UserPhoto request,
    core.String userKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/photos/thumbnail';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UserPhoto.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds a photo for the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserPhoto].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPhoto> update(
    UserPhoto request,
    core.String userKey, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/photos/thumbnail';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return UserPhoto.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class VerificationCodesResource {
  final commons.ApiRequester _requester;

  VerificationCodesResource(commons.ApiRequester client) : _requester = client;

  /// Generates new backup verification codes for the user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> generate(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/verificationCodes/generate';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Invalidates the current backup verification codes for the user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> invalidate(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/verificationCodes/invalidate';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns the current set of valid backup verification codes for the
  /// specified user.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Identifies the user in the API request. The value can be the
  /// user's primary email address, alias email address, or unique user ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerificationCodes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerificationCodes> list(
    core.String userKey, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'admin/directory/v1/users/' +
        commons.escapeVariable('$userKey') +
        '/verificationCodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VerificationCodes.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// JSON template for Alias object in Directory API.
class Alias {
  core.String? alias;
  core.String? etag;
  core.String? id;
  core.String? kind;
  core.String? primaryEmail;

  Alias({
    this.alias,
    this.etag,
    this.id,
    this.kind,
    this.primaryEmail,
  });

  Alias.fromJson(core.Map json_)
      : this(
          alias:
              json_.containsKey('alias') ? json_['alias'] as core.String : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          primaryEmail: json_.containsKey('primaryEmail')
              ? json_['primaryEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alias != null) 'alias': alias!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (primaryEmail != null) 'primaryEmail': primaryEmail!,
      };
}

/// JSON response template to list aliases in Directory API.
class Aliases {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? aliases;
  core.String? etag;
  core.String? kind;

  Aliases({
    this.aliases,
    this.etag,
    this.kind,
  });

  Aliases.fromJson(core.Map json_)
      : this(
          aliases: json_.containsKey('aliases')
              ? json_['aliases'] as core.List
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliases != null) 'aliases': aliases!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
      };
}

/// An application-specific password (ASP) is used with applications that do not
/// accept a verification code when logging into the application on certain
/// devices.
///
/// The ASP access code is used instead of the login and password you commonly
/// use when accessing an application through a browser. For more information
/// about ASPs and how to create one, see the
/// [help center](https://support.google.com/a/answer/2537800#asp).
class Asp {
  /// The unique ID of the ASP.
  core.int? codeId;

  /// The time when the ASP was created.
  ///
  /// Expressed in [Unix time](https://en.wikipedia.org/wiki/Epoch_time) format.
  core.String? creationTime;

  /// ETag of the ASP.
  core.String? etag;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#asp`.
  core.String? kind;

  /// The time when the ASP was last used.
  ///
  /// Expressed in [Unix time](https://en.wikipedia.org/wiki/Epoch_time) format.
  core.String? lastTimeUsed;

  /// The name of the application that the user, represented by their `userId`,
  /// entered when the ASP was created.
  core.String? name;

  /// The unique ID of the user who issued the ASP.
  core.String? userKey;

  Asp({
    this.codeId,
    this.creationTime,
    this.etag,
    this.kind,
    this.lastTimeUsed,
    this.name,
    this.userKey,
  });

  Asp.fromJson(core.Map json_)
      : this(
          codeId:
              json_.containsKey('codeId') ? json_['codeId'] as core.int : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastTimeUsed: json_.containsKey('lastTimeUsed')
              ? json_['lastTimeUsed'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          userKey: json_.containsKey('userKey')
              ? json_['userKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codeId != null) 'codeId': codeId!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (lastTimeUsed != null) 'lastTimeUsed': lastTimeUsed!,
        if (name != null) 'name': name!,
        if (userKey != null) 'userKey': userKey!,
      };
}

class Asps {
  /// ETag of the resource.
  core.String? etag;

  /// A list of ASP resources.
  core.List<Asp>? items;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#aspList`.
  core.String? kind;

  Asps({
    this.etag,
    this.items,
    this.kind,
  });

  Asps.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Asp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// Auxiliary message about issues with printers or settings.
///
/// Example: {message_type:AUXILIARY_MESSAGE_WARNING, field_mask:make_and_model,
/// message:"Given printer is invalid or no longer supported."}
class AuxiliaryMessage {
  /// Human readable message in English.
  ///
  /// Example: "Given printer is invalid or no longer supported."
  core.String? auxiliaryMessage;

  /// Field that this message concerns.
  core.String? fieldMask;

  /// Message severity
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Message type unspecified.
  /// - "SEVERITY_INFO" : Message of severity: info.
  /// - "SEVERITY_WARNING" : Message of severity: warning.
  /// - "SEVERITY_ERROR" : Message of severity: error.
  core.String? severity;

  AuxiliaryMessage({
    this.auxiliaryMessage,
    this.fieldMask,
    this.severity,
  });

  AuxiliaryMessage.fromJson(core.Map json_)
      : this(
          auxiliaryMessage: json_.containsKey('auxiliaryMessage')
              ? json_['auxiliaryMessage'] as core.String
              : null,
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auxiliaryMessage != null) 'auxiliaryMessage': auxiliaryMessage!,
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (severity != null) 'severity': severity!,
      };
}

/// Request for adding new printers in batch.
class BatchCreatePrintersRequest {
  /// A list of Printers to be created.
  ///
  /// Max 50 at a time.
  core.List<CreatePrinterRequest>? requests;

  BatchCreatePrintersRequest({
    this.requests,
  });

  BatchCreatePrintersRequest.fromJson(core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => CreatePrinterRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Response for adding new printers in batch.
class BatchCreatePrintersResponse {
  /// A list of create failures.
  ///
  /// Printer IDs are not populated, as printer were not created.
  core.List<FailureInfo>? failures;

  /// A list of successfully created printers with their IDs populated.
  core.List<Printer>? printers;

  BatchCreatePrintersResponse({
    this.failures,
    this.printers,
  });

  BatchCreatePrintersResponse.fromJson(core.Map json_)
      : this(
          failures: json_.containsKey('failures')
              ? (json_['failures'] as core.List)
                  .map((value) => FailureInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          printers: json_.containsKey('printers')
              ? (json_['printers'] as core.List)
                  .map((value) => Printer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failures != null) 'failures': failures!,
        if (printers != null) 'printers': printers!,
      };
}

/// Request for deleting existing printers in batch.
class BatchDeletePrintersRequest {
  /// A list of Printer.id that should be deleted.
  ///
  /// Max 100 at a time.
  core.List<core.String>? printerIds;

  BatchDeletePrintersRequest({
    this.printerIds,
  });

  BatchDeletePrintersRequest.fromJson(core.Map json_)
      : this(
          printerIds: json_.containsKey('printerIds')
              ? (json_['printerIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (printerIds != null) 'printerIds': printerIds!,
      };
}

/// Response for deleting existing printers in batch.
class BatchDeletePrintersResponse {
  /// A list of update failures.
  core.List<FailureInfo>? failedPrinters;

  /// A list of Printer.id that were successfully deleted.
  core.List<core.String>? printerIds;

  BatchDeletePrintersResponse({
    this.failedPrinters,
    this.printerIds,
  });

  BatchDeletePrintersResponse.fromJson(core.Map json_)
      : this(
          failedPrinters: json_.containsKey('failedPrinters')
              ? (json_['failedPrinters'] as core.List)
                  .map((value) => FailureInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          printerIds: json_.containsKey('printerIds')
              ? (json_['printerIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedPrinters != null) 'failedPrinters': failedPrinters!,
        if (printerIds != null) 'printerIds': printerIds!,
      };
}

/// Public API: Resources.buildings
class Building {
  /// The postal address of the building.
  ///
  /// See \[`PostalAddress`\](/my-business/reference/rest/v4/PostalAddress) for
  /// details. Note that only a single address line and region code are
  /// required.
  BuildingAddress? address;

  /// Unique identifier for the building.
  ///
  /// The maximum length is 100 characters.
  core.String? buildingId;

  /// The building name as seen by users in Calendar.
  ///
  /// Must be unique for the customer. For example, "NYC-CHEL". The maximum
  /// length is 100 characters.
  core.String? buildingName;

  /// The geographic coordinates of the center of the building, expressed as
  /// latitude and longitude in decimal degrees.
  BuildingCoordinates? coordinates;

  /// A brief description of the building.
  ///
  /// For example, "Chelsea Market".
  core.String? description;

  /// ETag of the resource.
  core.String? etags;

  /// The display names for all floors in this building.
  ///
  /// The floors are expected to be sorted in ascending order, from lowest floor
  /// to highest floor. For example, \["B2", "B1", "L", "1", "2", "2M", "3",
  /// "PH"\] Must contain at least one entry.
  core.List<core.String>? floorNames;

  /// Kind of resource this is.
  core.String? kind;

  Building({
    this.address,
    this.buildingId,
    this.buildingName,
    this.coordinates,
    this.description,
    this.etags,
    this.floorNames,
    this.kind,
  });

  Building.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? BuildingAddress.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
          buildingId: json_.containsKey('buildingId')
              ? json_['buildingId'] as core.String
              : null,
          buildingName: json_.containsKey('buildingName')
              ? json_['buildingName'] as core.String
              : null,
          coordinates: json_.containsKey('coordinates')
              ? BuildingCoordinates.fromJson(
                  json_['coordinates'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etags:
              json_.containsKey('etags') ? json_['etags'] as core.String : null,
          floorNames: json_.containsKey('floorNames')
              ? (json_['floorNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (buildingId != null) 'buildingId': buildingId!,
        if (buildingName != null) 'buildingName': buildingName!,
        if (coordinates != null) 'coordinates': coordinates!,
        if (description != null) 'description': description!,
        if (etags != null) 'etags': etags!,
        if (floorNames != null) 'floorNames': floorNames!,
        if (kind != null) 'kind': kind!,
      };
}

/// Public API: Resources.buildings
class BuildingAddress {
  /// Unstructured address lines describing the lower levels of an address.
  core.List<core.String>? addressLines;

  /// Highest administrative subdivision which is used for postal addresses of a
  /// country or region.
  ///
  /// Optional.
  core.String? administrativeArea;

  /// BCP-47 language code of the contents of this address (if known).
  ///
  /// Optional.
  core.String? languageCode;

  /// Generally refers to the city/town portion of the address.
  ///
  /// Examples: US city, IT comune, UK post town. In regions of the world where
  /// localities are not well defined or do not fit into this structure well,
  /// leave locality empty and use addressLines.
  ///
  /// Optional.
  core.String? locality;

  /// Postal code of the address.
  ///
  /// Optional.
  core.String? postalCode;

  /// CLDR region code of the country/region of the address.
  ///
  /// Required.
  core.String? regionCode;

  /// Sublocality of the address.
  ///
  /// Optional.
  core.String? sublocality;

  BuildingAddress({
    this.addressLines,
    this.administrativeArea,
    this.languageCode,
    this.locality,
    this.postalCode,
    this.regionCode,
    this.sublocality,
  });

  BuildingAddress.fromJson(core.Map json_)
      : this(
          addressLines: json_.containsKey('addressLines')
              ? (json_['addressLines'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          administrativeArea: json_.containsKey('administrativeArea')
              ? json_['administrativeArea'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          locality: json_.containsKey('locality')
              ? json_['locality'] as core.String
              : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
          sublocality: json_.containsKey('sublocality')
              ? json_['sublocality'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressLines != null) 'addressLines': addressLines!,
        if (administrativeArea != null)
          'administrativeArea': administrativeArea!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (locality != null) 'locality': locality!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (sublocality != null) 'sublocality': sublocality!,
      };
}

/// Public API: Resources.buildings
class BuildingCoordinates {
  /// Latitude in decimal degrees.
  core.double? latitude;

  /// Longitude in decimal degrees.
  core.double? longitude;

  BuildingCoordinates({
    this.latitude,
    this.longitude,
  });

  BuildingCoordinates.fromJson(core.Map json_)
      : this(
          latitude: json_.containsKey('latitude')
              ? (json_['latitude'] as core.num).toDouble()
              : null,
          longitude: json_.containsKey('longitude')
              ? (json_['longitude'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

/// Public API: Resources.buildings
class Buildings {
  /// The Buildings in this page of results.
  core.List<Building>? buildings;

  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  Buildings({
    this.buildings,
    this.etag,
    this.kind,
    this.nextPageToken,
  });

  Buildings.fromJson(core.Map json_)
      : this(
          buildings: json_.containsKey('buildings')
              ? (json_['buildings'] as core.List)
                  .map((value) => Building.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildings != null) 'buildings': buildings!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Public API: Resources.calendars
class CalendarResource {
  /// Unique ID for the building a resource is located in.
  core.String? buildingId;

  /// Capacity of a resource, number of seats in a room.
  core.int? capacity;

  /// ETag of the resource.
  core.String? etags;

  /// Instances of features for the calendar resource.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? featureInstances;

  /// Name of the floor a resource is located on.
  core.String? floorName;

  /// Name of the section within a floor a resource is located in.
  core.String? floorSection;

  /// The read-only auto-generated name of the calendar resource which includes
  /// metadata about the resource such as building name, floor, capacity, etc.
  ///
  /// For example, "NYC-2-Training Room 1A (16)".
  core.String? generatedResourceName;

  /// The type of the resource.
  ///
  /// For calendar resources, the value is
  /// `admin#directory#resources#calendars#CalendarResource`.
  core.String? kind;

  /// The category of the calendar resource.
  ///
  /// Either CONFERENCE_ROOM or OTHER. Legacy data is set to CATEGORY_UNKNOWN.
  core.String? resourceCategory;

  /// Description of the resource, visible only to admins.
  core.String? resourceDescription;

  /// The read-only email for the calendar resource.
  ///
  /// Generated as part of creating a new calendar resource.
  core.String? resourceEmail;

  /// The unique ID for the calendar resource.
  core.String? resourceId;

  /// The name of the calendar resource.
  ///
  /// For example, "Training Room 1A".
  core.String? resourceName;

  /// The type of the calendar resource, intended for non-room resources.
  core.String? resourceType;

  /// Description of the resource, visible to users and admins.
  core.String? userVisibleDescription;

  CalendarResource({
    this.buildingId,
    this.capacity,
    this.etags,
    this.featureInstances,
    this.floorName,
    this.floorSection,
    this.generatedResourceName,
    this.kind,
    this.resourceCategory,
    this.resourceDescription,
    this.resourceEmail,
    this.resourceId,
    this.resourceName,
    this.resourceType,
    this.userVisibleDescription,
  });

  CalendarResource.fromJson(core.Map json_)
      : this(
          buildingId: json_.containsKey('buildingId')
              ? json_['buildingId'] as core.String
              : null,
          capacity: json_.containsKey('capacity')
              ? json_['capacity'] as core.int
              : null,
          etags:
              json_.containsKey('etags') ? json_['etags'] as core.String : null,
          featureInstances: json_.containsKey('featureInstances')
              ? json_['featureInstances']
              : null,
          floorName: json_.containsKey('floorName')
              ? json_['floorName'] as core.String
              : null,
          floorSection: json_.containsKey('floorSection')
              ? json_['floorSection'] as core.String
              : null,
          generatedResourceName: json_.containsKey('generatedResourceName')
              ? json_['generatedResourceName'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          resourceCategory: json_.containsKey('resourceCategory')
              ? json_['resourceCategory'] as core.String
              : null,
          resourceDescription: json_.containsKey('resourceDescription')
              ? json_['resourceDescription'] as core.String
              : null,
          resourceEmail: json_.containsKey('resourceEmail')
              ? json_['resourceEmail'] as core.String
              : null,
          resourceId: json_.containsKey('resourceId')
              ? json_['resourceId'] as core.String
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
          userVisibleDescription: json_.containsKey('userVisibleDescription')
              ? json_['userVisibleDescription'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildingId != null) 'buildingId': buildingId!,
        if (capacity != null) 'capacity': capacity!,
        if (etags != null) 'etags': etags!,
        if (featureInstances != null) 'featureInstances': featureInstances!,
        if (floorName != null) 'floorName': floorName!,
        if (floorSection != null) 'floorSection': floorSection!,
        if (generatedResourceName != null)
          'generatedResourceName': generatedResourceName!,
        if (kind != null) 'kind': kind!,
        if (resourceCategory != null) 'resourceCategory': resourceCategory!,
        if (resourceDescription != null)
          'resourceDescription': resourceDescription!,
        if (resourceEmail != null) 'resourceEmail': resourceEmail!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (userVisibleDescription != null)
          'userVisibleDescription': userVisibleDescription!,
      };
}

/// Public API: Resources.calendars
class CalendarResources {
  /// ETag of the resource.
  core.String? etag;

  /// The CalendarResources in this page of results.
  core.List<CalendarResource>? items;

  /// Identifies this as a collection of CalendarResources.
  ///
  /// This is always
  /// `admin#directory#resources#calendars#calendarResourcesList`.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  CalendarResources({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  CalendarResources.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => CalendarResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// An notification channel used to watch for resource changes.
class Channel {
  /// The address where notifications are delivered for this channel.
  core.String? address;

  /// Date and time of notification channel expiration, expressed as a Unix
  /// timestamp, in milliseconds.
  ///
  /// Optional.
  core.String? expiration;

  /// A UUID or similar unique string that identifies this channel.
  core.String? id;

  /// Identifies this as a notification channel used to watch for changes to a
  /// resource, which is `api#channel`.
  core.String? kind;

  /// Additional parameters controlling delivery channel behavior.
  ///
  /// Optional.
  core.Map<core.String, core.String>? params;

  /// A Boolean value to indicate whether payload is wanted.
  ///
  /// Optional.
  core.bool? payload;

  /// An opaque ID that identifies the resource being watched on this channel.
  ///
  /// Stable across different API versions.
  core.String? resourceId;

  /// A version-specific identifier for the watched resource.
  core.String? resourceUri;

  /// An arbitrary string delivered to the target address with each notification
  /// delivered over this channel.
  ///
  /// Optional.
  core.String? token;

  /// The type of delivery mechanism used for this channel.
  core.String? type;

  Channel({
    this.address,
    this.expiration,
    this.id,
    this.kind,
    this.params,
    this.payload,
    this.resourceId,
    this.resourceUri,
    this.token,
    this.type,
  });

  Channel.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          expiration: json_.containsKey('expiration')
              ? json_['expiration'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          params: json_.containsKey('params')
              ? (json_['params'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.bool
              : null,
          resourceId: json_.containsKey('resourceId')
              ? json_['resourceId'] as core.String
              : null,
          resourceUri: json_.containsKey('resourceUri')
              ? json_['resourceUri'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (expiration != null) 'expiration': expiration!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (params != null) 'params': params!,
        if (payload != null) 'payload': payload!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (token != null) 'token': token!,
        if (type != null) 'type': type!,
      };
}

class ChromeOsDeviceActiveTimeRanges {
  /// Duration of usage in milliseconds.
  core.int? activeTime;

  /// Date of usage
  core.DateTime? date;

  ChromeOsDeviceActiveTimeRanges({
    this.activeTime,
    this.date,
  });

  ChromeOsDeviceActiveTimeRanges.fromJson(core.Map json_)
      : this(
          activeTime: json_.containsKey('activeTime')
              ? json_['activeTime'] as core.int
              : null,
          date: json_.containsKey('date')
              ? core.DateTime.parse(json_['date'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeTime != null) 'activeTime': activeTime!,
        if (date != null)
          'date':
              "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
      };
}

/// Status of a single C-state.
///
/// C-states are various modes the CPU can transition to in order to use more or
/// less power.
class ChromeOsDeviceCpuInfoLogicalCpusCStates {
  /// Name of the state.
  core.String? displayName;

  /// Time spent in the state since the last reboot.
  core.String? sessionDuration;

  ChromeOsDeviceCpuInfoLogicalCpusCStates({
    this.displayName,
    this.sessionDuration,
  });

  ChromeOsDeviceCpuInfoLogicalCpusCStates.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          sessionDuration: json_.containsKey('sessionDuration')
              ? json_['sessionDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (sessionDuration != null) 'sessionDuration': sessionDuration!,
      };
}

/// Status of a single logical CPU.
class ChromeOsDeviceCpuInfoLogicalCpus {
  /// C-States indicate the power consumption state of the CPU.
  ///
  /// For more information look at documentation published by the CPU maker.
  core.List<ChromeOsDeviceCpuInfoLogicalCpusCStates>? cStates;

  /// Current frequency the CPU is running at.
  core.int? currentScalingFrequencyKhz;

  /// Idle time since last boot.
  core.String? idleDuration;

  /// Maximum frequency the CPU is allowed to run at, by policy.
  core.int? maxScalingFrequencyKhz;

  ChromeOsDeviceCpuInfoLogicalCpus({
    this.cStates,
    this.currentScalingFrequencyKhz,
    this.idleDuration,
    this.maxScalingFrequencyKhz,
  });

  ChromeOsDeviceCpuInfoLogicalCpus.fromJson(core.Map json_)
      : this(
          cStates: json_.containsKey('cStates')
              ? (json_['cStates'] as core.List)
                  .map((value) =>
                      ChromeOsDeviceCpuInfoLogicalCpusCStates.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          currentScalingFrequencyKhz:
              json_.containsKey('currentScalingFrequencyKhz')
                  ? json_['currentScalingFrequencyKhz'] as core.int
                  : null,
          idleDuration: json_.containsKey('idleDuration')
              ? json_['idleDuration'] as core.String
              : null,
          maxScalingFrequencyKhz: json_.containsKey('maxScalingFrequencyKhz')
              ? json_['maxScalingFrequencyKhz'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cStates != null) 'cStates': cStates!,
        if (currentScalingFrequencyKhz != null)
          'currentScalingFrequencyKhz': currentScalingFrequencyKhz!,
        if (idleDuration != null) 'idleDuration': idleDuration!,
        if (maxScalingFrequencyKhz != null)
          'maxScalingFrequencyKhz': maxScalingFrequencyKhz!,
      };
}

/// CPU specs for a CPU.
class ChromeOsDeviceCpuInfo {
  /// The CPU architecture.
  core.String? architecture;

  /// Information for the Logical CPUs
  core.List<ChromeOsDeviceCpuInfoLogicalCpus>? logicalCpus;

  /// The max CPU clock speed in kHz.
  core.int? maxClockSpeedKhz;

  /// The CPU model name.
  core.String? model;

  ChromeOsDeviceCpuInfo({
    this.architecture,
    this.logicalCpus,
    this.maxClockSpeedKhz,
    this.model,
  });

  ChromeOsDeviceCpuInfo.fromJson(core.Map json_)
      : this(
          architecture: json_.containsKey('architecture')
              ? json_['architecture'] as core.String
              : null,
          logicalCpus: json_.containsKey('logicalCpus')
              ? (json_['logicalCpus'] as core.List)
                  .map((value) => ChromeOsDeviceCpuInfoLogicalCpus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxClockSpeedKhz: json_.containsKey('maxClockSpeedKhz')
              ? json_['maxClockSpeedKhz'] as core.int
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (logicalCpus != null) 'logicalCpus': logicalCpus!,
        if (maxClockSpeedKhz != null) 'maxClockSpeedKhz': maxClockSpeedKhz!,
        if (model != null) 'model': model!,
      };
}

class ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo {
  /// CPU label
  core.String? label;

  /// Temperature in Celsius degrees.
  core.int? temperature;

  ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo({
    this.label,
    this.temperature,
  });

  ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo.fromJson(core.Map json_)
      : this(
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          temperature: json_.containsKey('temperature')
              ? json_['temperature'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (temperature != null) 'temperature': temperature!,
      };
}

class ChromeOsDeviceCpuStatusReports {
  /// List of CPU temperature samples.
  core.List<ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo>?
      cpuTemperatureInfo;
  core.List<core.int>? cpuUtilizationPercentageInfo;

  /// Date and time the report was received.
  core.DateTime? reportTime;

  ChromeOsDeviceCpuStatusReports({
    this.cpuTemperatureInfo,
    this.cpuUtilizationPercentageInfo,
    this.reportTime,
  });

  ChromeOsDeviceCpuStatusReports.fromJson(core.Map json_)
      : this(
          cpuTemperatureInfo: json_.containsKey('cpuTemperatureInfo')
              ? (json_['cpuTemperatureInfo'] as core.List)
                  .map((value) =>
                      ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cpuUtilizationPercentageInfo:
              json_.containsKey('cpuUtilizationPercentageInfo')
                  ? (json_['cpuUtilizationPercentageInfo'] as core.List)
                      .map((value) => value as core.int)
                      .toList()
                  : null,
          reportTime: json_.containsKey('reportTime')
              ? core.DateTime.parse(json_['reportTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuTemperatureInfo != null)
          'cpuTemperatureInfo': cpuTemperatureInfo!,
        if (cpuUtilizationPercentageInfo != null)
          'cpuUtilizationPercentageInfo': cpuUtilizationPercentageInfo!,
        if (reportTime != null)
          'reportTime': reportTime!.toUtc().toIso8601String(),
      };
}

class ChromeOsDeviceDeviceFiles {
  /// Date and time the file was created
  core.DateTime? createTime;

  /// File download URL
  core.String? downloadUrl;

  /// File name
  core.String? name;

  /// File type
  core.String? type;

  ChromeOsDeviceDeviceFiles({
    this.createTime,
    this.downloadUrl,
    this.name,
    this.type,
  });

  ChromeOsDeviceDeviceFiles.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? core.DateTime.parse(json_['createTime'] as core.String)
              : null,
          downloadUrl: json_.containsKey('downloadUrl')
              ? json_['downloadUrl'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null)
          'createTime': createTime!.toUtc().toIso8601String(),
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

class ChromeOsDeviceDiskVolumeReportsVolumeInfo {
  /// Free disk space \[in bytes\]
  core.String? storageFree;

  /// Total disk space \[in bytes\]
  core.String? storageTotal;

  /// Volume id
  core.String? volumeId;

  ChromeOsDeviceDiskVolumeReportsVolumeInfo({
    this.storageFree,
    this.storageTotal,
    this.volumeId,
  });

  ChromeOsDeviceDiskVolumeReportsVolumeInfo.fromJson(core.Map json_)
      : this(
          storageFree: json_.containsKey('storageFree')
              ? json_['storageFree'] as core.String
              : null,
          storageTotal: json_.containsKey('storageTotal')
              ? json_['storageTotal'] as core.String
              : null,
          volumeId: json_.containsKey('volumeId')
              ? json_['volumeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (storageFree != null) 'storageFree': storageFree!,
        if (storageTotal != null) 'storageTotal': storageTotal!,
        if (volumeId != null) 'volumeId': volumeId!,
      };
}

class ChromeOsDeviceDiskVolumeReports {
  /// Disk volumes
  core.List<ChromeOsDeviceDiskVolumeReportsVolumeInfo>? volumeInfo;

  ChromeOsDeviceDiskVolumeReports({
    this.volumeInfo,
  });

  ChromeOsDeviceDiskVolumeReports.fromJson(core.Map json_)
      : this(
          volumeInfo: json_.containsKey('volumeInfo')
              ? (json_['volumeInfo'] as core.List)
                  .map((value) =>
                      ChromeOsDeviceDiskVolumeReportsVolumeInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (volumeInfo != null) 'volumeInfo': volumeInfo!,
      };
}

/// Information for an ip address.
class ChromeOsDeviceLastKnownNetwork {
  /// The IP address.
  core.String? ipAddress;

  /// The WAN IP address.
  core.String? wanIpAddress;

  ChromeOsDeviceLastKnownNetwork({
    this.ipAddress,
    this.wanIpAddress,
  });

  ChromeOsDeviceLastKnownNetwork.fromJson(core.Map json_)
      : this(
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          wanIpAddress: json_.containsKey('wanIpAddress')
              ? json_['wanIpAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (wanIpAddress != null) 'wanIpAddress': wanIpAddress!,
      };
}

/// List of recent device users, in descending order, by last login time.
class ChromeOsDeviceRecentUsers {
  /// The user's email address.
  ///
  /// This is only present if the user type is `USER_TYPE_MANAGED`.
  core.String? email;

  /// The type of the user.
  core.String? type;

  ChromeOsDeviceRecentUsers({
    this.email,
    this.type,
  });

  ChromeOsDeviceRecentUsers.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (type != null) 'type': type!,
      };
}

class ChromeOsDeviceScreenshotFiles {
  /// Date and time the file was created
  core.DateTime? createTime;

  /// File download URL
  core.String? downloadUrl;

  /// File name
  core.String? name;

  /// File type
  core.String? type;

  ChromeOsDeviceScreenshotFiles({
    this.createTime,
    this.downloadUrl,
    this.name,
    this.type,
  });

  ChromeOsDeviceScreenshotFiles.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? core.DateTime.parse(json_['createTime'] as core.String)
              : null,
          downloadUrl: json_.containsKey('downloadUrl')
              ? json_['downloadUrl'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null)
          'createTime': createTime!.toUtc().toIso8601String(),
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

class ChromeOsDeviceSystemRamFreeReports {
  /// Date and time the report was received.
  core.DateTime? reportTime;
  core.List<core.String>? systemRamFreeInfo;

  ChromeOsDeviceSystemRamFreeReports({
    this.reportTime,
    this.systemRamFreeInfo,
  });

  ChromeOsDeviceSystemRamFreeReports.fromJson(core.Map json_)
      : this(
          reportTime: json_.containsKey('reportTime')
              ? core.DateTime.parse(json_['reportTime'] as core.String)
              : null,
          systemRamFreeInfo: json_.containsKey('systemRamFreeInfo')
              ? (json_['systemRamFreeInfo'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reportTime != null)
          'reportTime': reportTime!.toUtc().toIso8601String(),
        if (systemRamFreeInfo != null) 'systemRamFreeInfo': systemRamFreeInfo!,
      };
}

/// Trusted Platform Module (TPM) (Read-only)
class ChromeOsDeviceTpmVersionInfo {
  /// TPM family.
  ///
  /// We use the TPM 2.0 style encoding, e.g.: TPM 1.2: "1.2" -\> 312e3200 TPM
  /// 2.0: "2.0" -\> 322e3000
  core.String? family;

  /// TPM firmware version.
  core.String? firmwareVersion;

  /// TPM manufacturer code.
  core.String? manufacturer;

  /// TPM specification level.
  ///
  /// See Library Specification for TPM 2.0 and Main Specification for TPM 1.2.
  core.String? specLevel;

  /// TPM model number.
  core.String? tpmModel;

  /// Vendor-specific information such as Vendor ID.
  core.String? vendorSpecific;

  ChromeOsDeviceTpmVersionInfo({
    this.family,
    this.firmwareVersion,
    this.manufacturer,
    this.specLevel,
    this.tpmModel,
    this.vendorSpecific,
  });

  ChromeOsDeviceTpmVersionInfo.fromJson(core.Map json_)
      : this(
          family: json_.containsKey('family')
              ? json_['family'] as core.String
              : null,
          firmwareVersion: json_.containsKey('firmwareVersion')
              ? json_['firmwareVersion'] as core.String
              : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
          specLevel: json_.containsKey('specLevel')
              ? json_['specLevel'] as core.String
              : null,
          tpmModel: json_.containsKey('tpmModel')
              ? json_['tpmModel'] as core.String
              : null,
          vendorSpecific: json_.containsKey('vendorSpecific')
              ? json_['vendorSpecific'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (family != null) 'family': family!,
        if (firmwareVersion != null) 'firmwareVersion': firmwareVersion!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (specLevel != null) 'specLevel': specLevel!,
        if (tpmModel != null) 'tpmModel': tpmModel!,
        if (vendorSpecific != null) 'vendorSpecific': vendorSpecific!,
      };
}

/// Google Chrome devices run on the
/// [Chrome OS](https://support.google.com/chromeos).
///
/// For more information about common API tasks, see the \[Developer's
/// Guide\](/admin-sdk/directory/v1/guides/manage-chrome-devices).
class ChromeOsDevice {
  /// List of active time ranges (Read-only).
  core.List<ChromeOsDeviceActiveTimeRanges>? activeTimeRanges;

  /// The asset identifier as noted by an administrator or specified during
  /// enrollment.
  core.String? annotatedAssetId;

  /// The address or location of the device as noted by the administrator.
  ///
  /// Maximum length is `200` characters. Empty values are allowed.
  core.String? annotatedLocation;

  /// The user of the device as noted by the administrator.
  ///
  /// Maximum length is 100 characters. Empty values are allowed.
  core.String? annotatedUser;

  /// (Read-only) The timestamp after which the device will stop receiving
  /// Chrome updates or support
  core.String? autoUpdateExpiration;

  /// The boot mode for the device.
  ///
  /// The possible values are: * `Verified`: The device is running a valid
  /// version of the Chrome OS. * `Dev`: The devices's developer hardware switch
  /// is enabled. When booted, the device has a command line shell. For an
  /// example of a developer switch, see the
  /// [Chromebook developer information](https://www.chromium.org/chromium-os/developer-information-for-chrome-os-devices/samsung-series-5-chromebook#TOC-Developer-switch).
  core.String? bootMode;

  /// Information regarding CPU specs in the device.
  core.List<ChromeOsDeviceCpuInfo>? cpuInfo;

  /// Reports of CPU utilization and temperature (Read-only)
  core.List<ChromeOsDeviceCpuStatusReports>? cpuStatusReports;

  /// List of device files to download (Read-only)
  core.List<ChromeOsDeviceDeviceFiles>? deviceFiles;

  /// The unique ID of the Chrome device.
  core.String? deviceId;

  /// Reports of disk space and other info about mounted/connected volumes.
  core.List<ChromeOsDeviceDiskVolumeReports>? diskVolumeReports;

  /// (Read-only) Built-in MAC address for the docking station that the device
  /// connected to.
  ///
  /// Factory sets Media access control address (MAC address) assigned for use
  /// by a dock. It is reserved specifically for MAC pass through device policy.
  /// The format is twelve (12) hexadecimal digits without any delimiter
  /// (uppercase letters). This is only relevant for some devices.
  core.String? dockMacAddress;

  /// ETag of the resource.
  core.String? etag;

  /// The device's MAC address on the ethernet network interface.
  core.String? ethernetMacAddress;

  /// (Read-only) MAC address used by the Chromebook’s internal ethernet port,
  /// and for onboard network (ethernet) interface.
  ///
  /// The format is twelve (12) hexadecimal digits without any delimiter
  /// (uppercase letters). This is only relevant for some devices.
  core.String? ethernetMacAddress0;

  /// The Chrome device's firmware version.
  core.String? firmwareVersion;

  /// Date and time for the first time the device was enrolled.
  core.String? firstEnrollmentTime;

  /// The type of resource.
  ///
  /// For the Chromeosdevices resource, the value is
  /// `admin#directory#chromeosdevice`.
  core.String? kind;

  /// Date and time the device was last enrolled (Read-only)
  core.DateTime? lastEnrollmentTime;

  /// Contains last known network (Read-only)
  core.List<ChromeOsDeviceLastKnownNetwork>? lastKnownNetwork;

  /// Date and time the device was last synchronized with the policy settings in
  /// the G Suite administrator control panel (Read-only)
  core.DateTime? lastSync;

  /// The device's wireless MAC address.
  ///
  /// If the device does not have this information, it is not included in the
  /// response.
  core.String? macAddress;

  /// (Read-only) The date the device was manufactured in yyyy-mm-dd format.
  core.String? manufactureDate;

  /// The Mobile Equipment Identifier (MEID) or the International Mobile
  /// Equipment Identity (IMEI) for the 3G mobile card in a mobile device.
  ///
  /// A MEID/IMEI is typically used when adding a device to a wireless carrier's
  /// post-pay service plan. If the device does not have this information, this
  /// property is not included in the response. For more information on how to
  /// export a MEID/IMEI list, see the \[Developer's
  /// Guide\](/admin-sdk/directory/v1/guides/manage-chrome-devices.html#export_meid).
  core.String? meid;

  /// The device's model information.
  ///
  /// If the device does not have this information, this property is not
  /// included in the response.
  core.String? model;

  /// Notes about this device added by the administrator.
  ///
  /// This property can be
  /// [searched](https://support.google.com/chrome/a/answer/1698333) with the
  /// \[list\](/admin-sdk/directory/v1/reference/chromeosdevices/list) method's
  /// `query` parameter. Maximum length is 500 characters. Empty values are
  /// allowed.
  core.String? notes;

  /// The device's order number.
  ///
  /// Only devices directly purchased from Google have an order number.
  core.String? orderNumber;

  /// The unique ID of the organizational unit.
  ///
  /// orgUnitPath is the human readable version of orgUnitId. While orgUnitPath
  /// may change by renaming an organizational unit within the path, orgUnitId
  /// is unchangeable for one organizational unit. This property can be
  /// \[updated\](/admin-sdk/directory/v1/guides/manage-chrome-devices#move_chrome_devices_to_ou)
  /// using the API. For more information about how to create an organizational
  /// structure for your device, see the
  /// [administration help center](https://support.google.com/a/answer/182433).
  core.String? orgUnitId;

  /// The full parent path with the organizational unit's name associated with
  /// the device.
  ///
  /// Path names are case insensitive. If the parent organizational unit is the
  /// top-level organization, it is represented as a forward slash, `/`. This
  /// property can be
  /// \[updated\](/admin-sdk/directory/v1/guides/manage-chrome-devices#move_chrome_devices_to_ou)
  /// using the API. For more information about how to create an organizational
  /// structure for your device, see the
  /// [administration help center](https://support.google.com/a/answer/182433).
  core.String? orgUnitPath;

  /// The status of the OS updates for the device.
  OsUpdateStatus? osUpdateStatus;

  /// The Chrome device's operating system version.
  core.String? osVersion;

  /// The Chrome device's platform version.
  core.String? platformVersion;

  /// List of recent device users, in descending order, by last login time.
  core.List<ChromeOsDeviceRecentUsers>? recentUsers;

  /// List of screenshot files to download.
  ///
  /// Type is always "SCREENSHOT_FILE". (Read-only)
  core.List<ChromeOsDeviceScreenshotFiles>? screenshotFiles;

  /// The Chrome device serial number entered when the device was enabled.
  ///
  /// This value is the same as the Admin console's *Serial Number* in the
  /// *Chrome OS Devices* tab.
  core.String? serialNumber;

  /// The status of the device.
  core.String? status;

  /// Final date the device will be supported (Read-only)
  core.DateTime? supportEndDate;

  /// Reports of amounts of available RAM memory (Read-only)
  core.List<ChromeOsDeviceSystemRamFreeReports>? systemRamFreeReports;

  /// Total RAM on the device \[in bytes\] (Read-only)
  core.String? systemRamTotal;

  /// Trusted Platform Module (TPM) (Read-only)
  ChromeOsDeviceTpmVersionInfo? tpmVersionInfo;

  /// Determines if the device will auto renew its support after the support end
  /// date.
  ///
  /// This is a read-only property.
  core.bool? willAutoRenew;

  ChromeOsDevice({
    this.activeTimeRanges,
    this.annotatedAssetId,
    this.annotatedLocation,
    this.annotatedUser,
    this.autoUpdateExpiration,
    this.bootMode,
    this.cpuInfo,
    this.cpuStatusReports,
    this.deviceFiles,
    this.deviceId,
    this.diskVolumeReports,
    this.dockMacAddress,
    this.etag,
    this.ethernetMacAddress,
    this.ethernetMacAddress0,
    this.firmwareVersion,
    this.firstEnrollmentTime,
    this.kind,
    this.lastEnrollmentTime,
    this.lastKnownNetwork,
    this.lastSync,
    this.macAddress,
    this.manufactureDate,
    this.meid,
    this.model,
    this.notes,
    this.orderNumber,
    this.orgUnitId,
    this.orgUnitPath,
    this.osUpdateStatus,
    this.osVersion,
    this.platformVersion,
    this.recentUsers,
    this.screenshotFiles,
    this.serialNumber,
    this.status,
    this.supportEndDate,
    this.systemRamFreeReports,
    this.systemRamTotal,
    this.tpmVersionInfo,
    this.willAutoRenew,
  });

  ChromeOsDevice.fromJson(core.Map json_)
      : this(
          activeTimeRanges: json_.containsKey('activeTimeRanges')
              ? (json_['activeTimeRanges'] as core.List)
                  .map((value) => ChromeOsDeviceActiveTimeRanges.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          annotatedAssetId: json_.containsKey('annotatedAssetId')
              ? json_['annotatedAssetId'] as core.String
              : null,
          annotatedLocation: json_.containsKey('annotatedLocation')
              ? json_['annotatedLocation'] as core.String
              : null,
          annotatedUser: json_.containsKey('annotatedUser')
              ? json_['annotatedUser'] as core.String
              : null,
          autoUpdateExpiration: json_.containsKey('autoUpdateExpiration')
              ? json_['autoUpdateExpiration'] as core.String
              : null,
          bootMode: json_.containsKey('bootMode')
              ? json_['bootMode'] as core.String
              : null,
          cpuInfo: json_.containsKey('cpuInfo')
              ? (json_['cpuInfo'] as core.List)
                  .map((value) => ChromeOsDeviceCpuInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cpuStatusReports: json_.containsKey('cpuStatusReports')
              ? (json_['cpuStatusReports'] as core.List)
                  .map((value) => ChromeOsDeviceCpuStatusReports.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deviceFiles: json_.containsKey('deviceFiles')
              ? (json_['deviceFiles'] as core.List)
                  .map((value) => ChromeOsDeviceDeviceFiles.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deviceId: json_.containsKey('deviceId')
              ? json_['deviceId'] as core.String
              : null,
          diskVolumeReports: json_.containsKey('diskVolumeReports')
              ? (json_['diskVolumeReports'] as core.List)
                  .map((value) => ChromeOsDeviceDiskVolumeReports.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dockMacAddress: json_.containsKey('dockMacAddress')
              ? json_['dockMacAddress'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          ethernetMacAddress: json_.containsKey('ethernetMacAddress')
              ? json_['ethernetMacAddress'] as core.String
              : null,
          ethernetMacAddress0: json_.containsKey('ethernetMacAddress0')
              ? json_['ethernetMacAddress0'] as core.String
              : null,
          firmwareVersion: json_.containsKey('firmwareVersion')
              ? json_['firmwareVersion'] as core.String
              : null,
          firstEnrollmentTime: json_.containsKey('firstEnrollmentTime')
              ? json_['firstEnrollmentTime'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastEnrollmentTime: json_.containsKey('lastEnrollmentTime')
              ? core.DateTime.parse(json_['lastEnrollmentTime'] as core.String)
              : null,
          lastKnownNetwork: json_.containsKey('lastKnownNetwork')
              ? (json_['lastKnownNetwork'] as core.List)
                  .map((value) => ChromeOsDeviceLastKnownNetwork.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lastSync: json_.containsKey('lastSync')
              ? core.DateTime.parse(json_['lastSync'] as core.String)
              : null,
          macAddress: json_.containsKey('macAddress')
              ? json_['macAddress'] as core.String
              : null,
          manufactureDate: json_.containsKey('manufactureDate')
              ? json_['manufactureDate'] as core.String
              : null,
          meid: json_.containsKey('meid') ? json_['meid'] as core.String : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          orderNumber: json_.containsKey('orderNumber')
              ? json_['orderNumber'] as core.String
              : null,
          orgUnitId: json_.containsKey('orgUnitId')
              ? json_['orgUnitId'] as core.String
              : null,
          orgUnitPath: json_.containsKey('orgUnitPath')
              ? json_['orgUnitPath'] as core.String
              : null,
          osUpdateStatus: json_.containsKey('osUpdateStatus')
              ? OsUpdateStatus.fromJson(json_['osUpdateStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          osVersion: json_.containsKey('osVersion')
              ? json_['osVersion'] as core.String
              : null,
          platformVersion: json_.containsKey('platformVersion')
              ? json_['platformVersion'] as core.String
              : null,
          recentUsers: json_.containsKey('recentUsers')
              ? (json_['recentUsers'] as core.List)
                  .map((value) => ChromeOsDeviceRecentUsers.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          screenshotFiles: json_.containsKey('screenshotFiles')
              ? (json_['screenshotFiles'] as core.List)
                  .map((value) => ChromeOsDeviceScreenshotFiles.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          supportEndDate: json_.containsKey('supportEndDate')
              ? core.DateTime.parse(json_['supportEndDate'] as core.String)
              : null,
          systemRamFreeReports: json_.containsKey('systemRamFreeReports')
              ? (json_['systemRamFreeReports'] as core.List)
                  .map((value) => ChromeOsDeviceSystemRamFreeReports.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          systemRamTotal: json_.containsKey('systemRamTotal')
              ? json_['systemRamTotal'] as core.String
              : null,
          tpmVersionInfo: json_.containsKey('tpmVersionInfo')
              ? ChromeOsDeviceTpmVersionInfo.fromJson(json_['tpmVersionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          willAutoRenew: json_.containsKey('willAutoRenew')
              ? json_['willAutoRenew'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeTimeRanges != null) 'activeTimeRanges': activeTimeRanges!,
        if (annotatedAssetId != null) 'annotatedAssetId': annotatedAssetId!,
        if (annotatedLocation != null) 'annotatedLocation': annotatedLocation!,
        if (annotatedUser != null) 'annotatedUser': annotatedUser!,
        if (autoUpdateExpiration != null)
          'autoUpdateExpiration': autoUpdateExpiration!,
        if (bootMode != null) 'bootMode': bootMode!,
        if (cpuInfo != null) 'cpuInfo': cpuInfo!,
        if (cpuStatusReports != null) 'cpuStatusReports': cpuStatusReports!,
        if (deviceFiles != null) 'deviceFiles': deviceFiles!,
        if (deviceId != null) 'deviceId': deviceId!,
        if (diskVolumeReports != null) 'diskVolumeReports': diskVolumeReports!,
        if (dockMacAddress != null) 'dockMacAddress': dockMacAddress!,
        if (etag != null) 'etag': etag!,
        if (ethernetMacAddress != null)
          'ethernetMacAddress': ethernetMacAddress!,
        if (ethernetMacAddress0 != null)
          'ethernetMacAddress0': ethernetMacAddress0!,
        if (firmwareVersion != null) 'firmwareVersion': firmwareVersion!,
        if (firstEnrollmentTime != null)
          'firstEnrollmentTime': firstEnrollmentTime!,
        if (kind != null) 'kind': kind!,
        if (lastEnrollmentTime != null)
          'lastEnrollmentTime': lastEnrollmentTime!.toUtc().toIso8601String(),
        if (lastKnownNetwork != null) 'lastKnownNetwork': lastKnownNetwork!,
        if (lastSync != null) 'lastSync': lastSync!.toUtc().toIso8601String(),
        if (macAddress != null) 'macAddress': macAddress!,
        if (manufactureDate != null) 'manufactureDate': manufactureDate!,
        if (meid != null) 'meid': meid!,
        if (model != null) 'model': model!,
        if (notes != null) 'notes': notes!,
        if (orderNumber != null) 'orderNumber': orderNumber!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
        if (orgUnitPath != null) 'orgUnitPath': orgUnitPath!,
        if (osUpdateStatus != null) 'osUpdateStatus': osUpdateStatus!,
        if (osVersion != null) 'osVersion': osVersion!,
        if (platformVersion != null) 'platformVersion': platformVersion!,
        if (recentUsers != null) 'recentUsers': recentUsers!,
        if (screenshotFiles != null) 'screenshotFiles': screenshotFiles!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (status != null) 'status': status!,
        if (supportEndDate != null)
          'supportEndDate': supportEndDate!.toUtc().toIso8601String(),
        if (systemRamFreeReports != null)
          'systemRamFreeReports': systemRamFreeReports!,
        if (systemRamTotal != null) 'systemRamTotal': systemRamTotal!,
        if (tpmVersionInfo != null) 'tpmVersionInfo': tpmVersionInfo!,
        if (willAutoRenew != null) 'willAutoRenew': willAutoRenew!,
      };
}

class ChromeOsDeviceAction {
  /// Action to be taken on the Chrome OS device.
  core.String? action;

  /// Only used when the action is `deprovision`.
  ///
  /// With the `deprovision` action, this field is required. *Note*: The
  /// deprovision reason is audited because it might have implications on
  /// licenses for perpetual subscription customers.
  core.String? deprovisionReason;

  ChromeOsDeviceAction({
    this.action,
    this.deprovisionReason,
  });

  ChromeOsDeviceAction.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          deprovisionReason: json_.containsKey('deprovisionReason')
              ? json_['deprovisionReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (deprovisionReason != null) 'deprovisionReason': deprovisionReason!,
      };
}

class ChromeOsDevices {
  /// List of Chrome OS Device objects.
  core.List<ChromeOsDevice>? chromeosdevices;

  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  /// Token used to access the next page of this result.
  ///
  /// To access the next page, use this token's value in the `pageToken` query
  /// string of this request.
  core.String? nextPageToken;

  ChromeOsDevices({
    this.chromeosdevices,
    this.etag,
    this.kind,
    this.nextPageToken,
  });

  ChromeOsDevices.fromJson(core.Map json_)
      : this(
          chromeosdevices: json_.containsKey('chromeosdevices')
              ? (json_['chromeosdevices'] as core.List)
                  .map((value) => ChromeOsDevice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chromeosdevices != null) 'chromeosdevices': chromeosdevices!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ChromeOsMoveDevicesToOu {
  /// Chrome OS devices to be moved to OU
  core.List<core.String>? deviceIds;

  ChromeOsMoveDevicesToOu({
    this.deviceIds,
  });

  ChromeOsMoveDevicesToOu.fromJson(core.Map json_)
      : this(
          deviceIds: json_.containsKey('deviceIds')
              ? (json_['deviceIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceIds != null) 'deviceIds': deviceIds!,
      };
}

/// Request for adding a new printer.
class CreatePrinterRequest {
  /// The name of the customer.
  ///
  /// Format: customers/{customer_id}
  ///
  /// Required.
  core.String? parent;

  /// A printer to create.
  ///
  /// If you want to place the printer under particular OU then populate
  /// printer.org_unit_id filed. Otherwise the printer will be placed under root
  /// OU.
  ///
  /// Required.
  Printer? printer;

  CreatePrinterRequest({
    this.parent,
    this.printer,
  });

  CreatePrinterRequest.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          printer: json_.containsKey('printer')
              ? Printer.fromJson(
                  json_['printer'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (printer != null) 'printer': printer!,
      };
}

class Customer {
  /// The customer's secondary contact email address.
  ///
  /// This email address cannot be on the same domain as the `customerDomain`
  core.String? alternateEmail;

  /// The customer's creation time (Readonly)
  core.DateTime? customerCreationTime;

  /// The customer's primary domain name string.
  ///
  /// Do not include the `www` prefix when creating a new customer.
  core.String? customerDomain;

  /// ETag of the resource.
  core.String? etag;

  /// The unique ID for the customer's Google Workspace account.
  ///
  /// (Readonly)
  core.String? id;

  /// Identifies the resource as a customer.
  ///
  /// Value: `admin#directory#customer`
  core.String? kind;

  /// The customer's ISO 639-2 language code.
  ///
  /// See the \[Language Codes\](/admin-sdk/directory/v1/languages) page for the
  /// list of supported codes. Valid language codes outside the supported set
  /// will be accepted by the API but may lead to unexpected behavior. The
  /// default value is `en`.
  core.String? language;

  /// The customer's contact phone number in
  /// [E.164](https://en.wikipedia.org/wiki/E.164) format.
  core.String? phoneNumber;

  /// The customer's postal address information.
  CustomerPostalAddress? postalAddress;

  Customer({
    this.alternateEmail,
    this.customerCreationTime,
    this.customerDomain,
    this.etag,
    this.id,
    this.kind,
    this.language,
    this.phoneNumber,
    this.postalAddress,
  });

  Customer.fromJson(core.Map json_)
      : this(
          alternateEmail: json_.containsKey('alternateEmail')
              ? json_['alternateEmail'] as core.String
              : null,
          customerCreationTime: json_.containsKey('customerCreationTime')
              ? core.DateTime.parse(
                  json_['customerCreationTime'] as core.String)
              : null,
          customerDomain: json_.containsKey('customerDomain')
              ? json_['customerDomain'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          postalAddress: json_.containsKey('postalAddress')
              ? CustomerPostalAddress.fromJson(
                  json_['postalAddress'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateEmail != null) 'alternateEmail': alternateEmail!,
        if (customerCreationTime != null)
          'customerCreationTime':
              customerCreationTime!.toUtc().toIso8601String(),
        if (customerDomain != null) 'customerDomain': customerDomain!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (language != null) 'language': language!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (postalAddress != null) 'postalAddress': postalAddress!,
      };
}

class CustomerPostalAddress {
  /// A customer's physical address.
  ///
  /// The address can be composed of one to three lines.
  core.String? addressLine1;

  /// Address line 2 of the address.
  core.String? addressLine2;

  /// Address line 3 of the address.
  core.String? addressLine3;

  /// The customer contact's name.
  core.String? contactName;

  /// This is a required property.
  ///
  /// For `countryCode` information see the
  /// [ISO 3166 country code elements](https://www.iso.org/iso/country_codes.htm).
  core.String? countryCode;

  /// Name of the locality.
  ///
  /// An example of a locality value is the city of `San Francisco`.
  core.String? locality;

  /// The company or company division name.
  core.String? organizationName;

  /// The postal code.
  ///
  /// A postalCode example is a postal zip code such as `10009`. This is in
  /// accordance with - http:
  /// //portablecontacts.net/draft-spec.html#address_element.
  core.String? postalCode;

  /// Name of the region.
  ///
  /// An example of a region value is `NY` for the state of New York.
  core.String? region;

  CustomerPostalAddress({
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.contactName,
    this.countryCode,
    this.locality,
    this.organizationName,
    this.postalCode,
    this.region,
  });

  CustomerPostalAddress.fromJson(core.Map json_)
      : this(
          addressLine1: json_.containsKey('addressLine1')
              ? json_['addressLine1'] as core.String
              : null,
          addressLine2: json_.containsKey('addressLine2')
              ? json_['addressLine2'] as core.String
              : null,
          addressLine3: json_.containsKey('addressLine3')
              ? json_['addressLine3'] as core.String
              : null,
          contactName: json_.containsKey('contactName')
              ? json_['contactName'] as core.String
              : null,
          countryCode: json_.containsKey('countryCode')
              ? json_['countryCode'] as core.String
              : null,
          locality: json_.containsKey('locality')
              ? json_['locality'] as core.String
              : null,
          organizationName: json_.containsKey('organizationName')
              ? json_['organizationName'] as core.String
              : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressLine1 != null) 'addressLine1': addressLine1!,
        if (addressLine2 != null) 'addressLine2': addressLine2!,
        if (addressLine3 != null) 'addressLine3': addressLine3!,
        if (contactName != null) 'contactName': contactName!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (locality != null) 'locality': locality!,
        if (organizationName != null) 'organizationName': organizationName!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (region != null) 'region': region!,
      };
}

/// Information regarding a command that was issued to a device.
class DirectoryChromeosdevicesCommand {
  /// The time at which the command will expire.
  ///
  /// If the device doesn't execute the command within this time the command
  /// will become expired.
  core.String? commandExpireTime;

  /// Unique ID of a device command.
  core.String? commandId;

  /// The result of the command execution.
  DirectoryChromeosdevicesCommandResult? commandResult;

  /// The timestamp when the command was issued by the admin.
  core.String? issueTime;

  /// The payload that the command specified, if any.
  core.String? payload;

  /// Indicates the command state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The command status was unspecified.
  /// - "PENDING" : An unexpired command not yet sent to the client.
  /// - "EXPIRED" : The command didn't get executed by the client within the
  /// expected time.
  /// - "CANCELLED" : The command is cancelled by admin while in PENDING.
  /// - "SENT_TO_CLIENT" : The command has been sent to the client.
  /// - "ACKED_BY_CLIENT" : The client has responded that it received the
  /// command.
  /// - "EXECUTED_BY_CLIENT" : The client has (un)successfully executed the
  /// command.
  core.String? state;

  /// The type of the command.
  /// Possible string values are:
  /// - "COMMAND_TYPE_UNSPECIFIED" : The command type was unspecified.
  /// - "REBOOT" : Reboot the device. Can only be issued to Kiosk and managed
  /// guest session devices.
  /// - "TAKE_A_SCREENSHOT" : Take a screenshot of the device. Only available if
  /// the device is in Kiosk Mode.
  /// - "SET_VOLUME" : Set the volume of the device. Can only be issued to Kiosk
  /// and managed guest session devices.
  /// - "WIPE_USERS" : Wipe all the users off of the device. Executing this
  /// command in the device will remove all user profile data, but it will keep
  /// device policy and enrollment.
  /// - "REMOTE_POWERWASH" : Wipes the device by performing a power wash.
  /// Executing this command in the device will remove all data including user
  /// policies, device policies and enrollment policies. Warning: This will
  /// revert the device back to a factory state with no enrollment unless the
  /// device is subject to forced or auto enrollment. Use with caution, as this
  /// is an irreversible action!
  core.String? type;

  DirectoryChromeosdevicesCommand({
    this.commandExpireTime,
    this.commandId,
    this.commandResult,
    this.issueTime,
    this.payload,
    this.state,
    this.type,
  });

  DirectoryChromeosdevicesCommand.fromJson(core.Map json_)
      : this(
          commandExpireTime: json_.containsKey('commandExpireTime')
              ? json_['commandExpireTime'] as core.String
              : null,
          commandId: json_.containsKey('commandId')
              ? json_['commandId'] as core.String
              : null,
          commandResult: json_.containsKey('commandResult')
              ? DirectoryChromeosdevicesCommandResult.fromJson(
                  json_['commandResult'] as core.Map<core.String, core.dynamic>)
              : null,
          issueTime: json_.containsKey('issueTime')
              ? json_['issueTime'] as core.String
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commandExpireTime != null) 'commandExpireTime': commandExpireTime!,
        if (commandId != null) 'commandId': commandId!,
        if (commandResult != null) 'commandResult': commandResult!,
        if (issueTime != null) 'issueTime': issueTime!,
        if (payload != null) 'payload': payload!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// The result of executing a command.
class DirectoryChromeosdevicesCommandResult {
  /// The error message with a short explanation as to why the command failed.
  ///
  /// Only present if the command failed.
  core.String? errorMessage;

  /// The time at which the command was executed or failed to execute.
  core.String? executeTime;

  /// The result of the command.
  /// Possible string values are:
  /// - "COMMAND_RESULT_TYPE_UNSPECIFIED" : The command result was unspecified.
  /// - "IGNORED" : The command was ignored as obsolete.
  /// - "FAILURE" : The command could not be executed successfully.
  /// - "SUCCESS" : The command was successfully executed.
  core.String? result;

  DirectoryChromeosdevicesCommandResult({
    this.errorMessage,
    this.executeTime,
    this.result,
  });

  DirectoryChromeosdevicesCommandResult.fromJson(core.Map json_)
      : this(
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          executeTime: json_.containsKey('executeTime')
              ? json_['executeTime'] as core.String
              : null,
          result: json_.containsKey('result')
              ? json_['result'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (executeTime != null) 'executeTime': executeTime!,
        if (result != null) 'result': result!,
      };
}

/// A request for issuing a command.
class DirectoryChromeosdevicesIssueCommandRequest {
  /// The type of command.
  /// Possible string values are:
  /// - "COMMAND_TYPE_UNSPECIFIED" : The command type was unspecified.
  /// - "REBOOT" : Reboot the device. Can only be issued to Kiosk and managed
  /// guest session devices.
  /// - "TAKE_A_SCREENSHOT" : Take a screenshot of the device. Only available if
  /// the device is in Kiosk Mode.
  /// - "SET_VOLUME" : Set the volume of the device. Can only be issued to Kiosk
  /// and managed guest session devices.
  /// - "WIPE_USERS" : Wipe all the users off of the device. Executing this
  /// command in the device will remove all user profile data, but it will keep
  /// device policy and enrollment.
  /// - "REMOTE_POWERWASH" : Wipes the device by performing a power wash.
  /// Executing this command in the device will remove all data including user
  /// policies, device policies and enrollment policies. Warning: This will
  /// revert the device back to a factory state with no enrollment unless the
  /// device is subject to forced or auto enrollment. Use with caution, as this
  /// is an irreversible action!
  core.String? commandType;

  /// The payload for the command, provide it only if command supports it.
  ///
  /// The following commands support adding payload: - SET_VOLUME: Payload is a
  /// stringified JSON object in the form: { "volume": 50 }. The volume has to
  /// be an integer in the range \[0,100\].
  core.String? payload;

  DirectoryChromeosdevicesIssueCommandRequest({
    this.commandType,
    this.payload,
  });

  DirectoryChromeosdevicesIssueCommandRequest.fromJson(core.Map json_)
      : this(
          commandType: json_.containsKey('commandType')
              ? json_['commandType'] as core.String
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commandType != null) 'commandType': commandType!,
        if (payload != null) 'payload': payload!,
      };
}

/// A response for issuing a command.
class DirectoryChromeosdevicesIssueCommandResponse {
  /// The unique ID of the issued command, used to retrieve the command status.
  core.String? commandId;

  DirectoryChromeosdevicesIssueCommandResponse({
    this.commandId,
  });

  DirectoryChromeosdevicesIssueCommandResponse.fromJson(core.Map json_)
      : this(
          commandId: json_.containsKey('commandId')
              ? json_['commandId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commandId != null) 'commandId': commandId!,
      };
}

class DomainAlias {
  /// The creation time of the domain alias.
  ///
  /// (Read-only).
  core.String? creationTime;

  /// The domain alias name.
  core.String? domainAliasName;

  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  /// The parent domain name that the domain alias is associated with.
  ///
  /// This can either be a primary or secondary domain name within a customer.
  core.String? parentDomainName;

  /// Indicates the verification state of a domain alias.
  ///
  /// (Read-only)
  core.bool? verified;

  DomainAlias({
    this.creationTime,
    this.domainAliasName,
    this.etag,
    this.kind,
    this.parentDomainName,
    this.verified,
  });

  DomainAlias.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          domainAliasName: json_.containsKey('domainAliasName')
              ? json_['domainAliasName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          parentDomainName: json_.containsKey('parentDomainName')
              ? json_['parentDomainName'] as core.String
              : null,
          verified: json_.containsKey('verified')
              ? json_['verified'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (domainAliasName != null) 'domainAliasName': domainAliasName!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (parentDomainName != null) 'parentDomainName': parentDomainName!,
        if (verified != null) 'verified': verified!,
      };
}

class DomainAliases {
  /// List of domain alias objects.
  core.List<DomainAlias>? domainAliases;

  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  DomainAliases({
    this.domainAliases,
    this.etag,
    this.kind,
  });

  DomainAliases.fromJson(core.Map json_)
      : this(
          domainAliases: json_.containsKey('domainAliases')
              ? (json_['domainAliases'] as core.List)
                  .map((value) => DomainAlias.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainAliases != null) 'domainAliases': domainAliases!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
      };
}

class Domains {
  /// Creation time of the domain.
  ///
  /// Expressed in [Unix time](https://en.wikipedia.org/wiki/Epoch_time) format.
  /// (Read-only).
  core.String? creationTime;

  /// List of domain alias objects.
  ///
  /// (Read-only)
  core.List<DomainAlias>? domainAliases;

  /// The domain name of the customer.
  core.String? domainName;

  /// ETag of the resource.
  core.String? etag;

  /// Indicates if the domain is a primary domain (Read-only).
  core.bool? isPrimary;

  /// Kind of resource this is.
  core.String? kind;

  /// Indicates the verification state of a domain.
  ///
  /// (Read-only).
  core.bool? verified;

  Domains({
    this.creationTime,
    this.domainAliases,
    this.domainName,
    this.etag,
    this.isPrimary,
    this.kind,
    this.verified,
  });

  Domains.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          domainAliases: json_.containsKey('domainAliases')
              ? (json_['domainAliases'] as core.List)
                  .map((value) => DomainAlias.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          domainName: json_.containsKey('domainName')
              ? json_['domainName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          isPrimary: json_.containsKey('isPrimary')
              ? json_['isPrimary'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          verified: json_.containsKey('verified')
              ? json_['verified'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (domainAliases != null) 'domainAliases': domainAliases!,
        if (domainName != null) 'domainName': domainName!,
        if (etag != null) 'etag': etag!,
        if (isPrimary != null) 'isPrimary': isPrimary!,
        if (kind != null) 'kind': kind!,
        if (verified != null) 'verified': verified!,
      };
}

class Domains2 {
  /// List of domain objects.
  core.List<Domains>? domains;

  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  Domains2({
    this.domains,
    this.etag,
    this.kind,
  });

  Domains2.fromJson(core.Map json_)
      : this(
          domains: json_.containsKey('domains')
              ? (json_['domains'] as core.List)
                  .map((value) => Domains.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null) 'domains': domains!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Info about failures
class FailureInfo {
  /// Canonical code for why the update failed to apply.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level. For example, when
  /// a client-specified test-and-set fails, indicating the client should
  /// restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the
  /// client should not retry until the system state has been explicitly fixed.
  /// For example, if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range \[0,2^32-1\], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String? errorCode;

  /// Failure reason message.
  core.String? errorMessage;

  /// Failed printer.
  Printer? printer;

  /// Id of a failed printer.
  core.String? printerId;

  FailureInfo({
    this.errorCode,
    this.errorMessage,
    this.printer,
    this.printerId,
  });

  FailureInfo.fromJson(core.Map json_)
      : this(
          errorCode: json_.containsKey('errorCode')
              ? json_['errorCode'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          printer: json_.containsKey('printer')
              ? Printer.fromJson(
                  json_['printer'] as core.Map<core.String, core.dynamic>)
              : null,
          printerId: json_.containsKey('printerId')
              ? json_['printerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorCode != null) 'errorCode': errorCode!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (printer != null) 'printer': printer!,
        if (printerId != null) 'printerId': printerId!,
      };
}

/// JSON template for Feature object in Directory API.
class Feature {
  /// ETag of the resource.
  core.String? etags;

  /// Kind of resource this is.
  core.String? kind;

  /// The name of the feature.
  core.String? name;

  Feature({
    this.etags,
    this.kind,
    this.name,
  });

  Feature.fromJson(core.Map json_)
      : this(
          etags:
              json_.containsKey('etags') ? json_['etags'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etags != null) 'etags': etags!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

class FeatureRename {
  /// New name of the feature.
  core.String? newName;

  FeatureRename({
    this.newName,
  });

  FeatureRename.fromJson(core.Map json_)
      : this(
          newName: json_.containsKey('newName')
              ? json_['newName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newName != null) 'newName': newName!,
      };
}

/// Public API: Resources.features
class Features {
  /// ETag of the resource.
  core.String? etag;

  /// The Features in this page of results.
  core.List<Feature>? features;

  /// Kind of resource this is.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  Features({
    this.etag,
    this.features,
    this.kind,
    this.nextPageToken,
  });

  Features.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          features: json_.containsKey('features')
              ? (json_['features'] as core.List)
                  .map((value) => Feature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (features != null) 'features': features!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Google Groups provide your users the ability to send messages to groups of
/// people using the group's email address.
///
/// For more information about common tasks, see the \[Developer's
/// Guide\](/admin-sdk/directory/v1/guides/manage-groups).
class Group {
  /// Read-only.
  ///
  /// Value is `true` if this group was created by an administrator rather than
  /// a user.
  core.bool? adminCreated;

  /// Read-only.
  ///
  /// A list of a group's alias email addresses. To add, update, or remove a
  /// group's aliases, use the `groups.aliases` methods. If edited in a group's
  /// POST or PUT request, the edit is ignored.
  core.List<core.String>? aliases;

  /// An extended description to help users determine the purpose of a group.
  ///
  /// For example, you can include information about who should join the group,
  /// the types of messages to send to the group, links to FAQs about the group,
  /// or related groups. Maximum length is `4,096` characters.
  core.String? description;

  /// The number of users that are direct members of the group.
  ///
  /// If a group is a member (child) of this group (the parent), members of the
  /// child group are not counted in the `directMembersCount` property of the
  /// parent group.
  core.String? directMembersCount;

  /// The group's email address.
  ///
  /// If your account has multiple domains, select the appropriate domain for
  /// the email address. The `email` must be unique. This property is required
  /// when creating a group. Group email addresses are subject to the same
  /// character usage rules as usernames, see the
  /// [help center](https://support.google.com/a/answer/9193374) for details.
  core.String? email;

  /// ETag of the resource.
  core.String? etag;

  /// Read-only.
  ///
  /// The unique ID of a group. A group `id` can be used as a group request
  /// URI's `groupKey`.
  core.String? id;

  /// The type of the API resource.
  ///
  /// For Groups resources, the value is `admin#directory#group`.
  core.String? kind;

  /// The group's display name.
  core.String? name;

  /// Read-only.
  ///
  /// A list of the group's non-editable alias email addresses that are outside
  /// of the account's primary domain or subdomains. These are functioning email
  /// addresses used by the group. This is a read-only property returned in the
  /// API's response for a group. If edited in a group's POST or PUT request,
  /// the edit is ignored.
  core.List<core.String>? nonEditableAliases;

  Group({
    this.adminCreated,
    this.aliases,
    this.description,
    this.directMembersCount,
    this.email,
    this.etag,
    this.id,
    this.kind,
    this.name,
    this.nonEditableAliases,
  });

  Group.fromJson(core.Map json_)
      : this(
          adminCreated: json_.containsKey('adminCreated')
              ? json_['adminCreated'] as core.bool
              : null,
          aliases: json_.containsKey('aliases')
              ? (json_['aliases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          directMembersCount: json_.containsKey('directMembersCount')
              ? json_['directMembersCount'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nonEditableAliases: json_.containsKey('nonEditableAliases')
              ? (json_['nonEditableAliases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminCreated != null) 'adminCreated': adminCreated!,
        if (aliases != null) 'aliases': aliases!,
        if (description != null) 'description': description!,
        if (directMembersCount != null)
          'directMembersCount': directMembersCount!,
        if (email != null) 'email': email!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (nonEditableAliases != null)
          'nonEditableAliases': nonEditableAliases!,
      };
}

class Groups {
  /// ETag of the resource.
  core.String? etag;

  /// List of group objects.
  core.List<Group>? groups;

  /// Kind of resource this is.
  core.String? kind;

  /// Token used to access next page of this result.
  core.String? nextPageToken;

  Groups({
    this.etag,
    this.groups,
    this.kind,
    this.nextPageToken,
  });

  Groups.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.List)
                  .map((value) => Group.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (groups != null) 'groups': groups!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for listing allowed printer models.
class ListPrinterModelsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Printer models that are currently allowed to be configured for ChromeOs.
  ///
  /// Some printers may be added or removed over time.
  core.List<PrinterModel>? printerModels;

  ListPrinterModelsResponse({
    this.nextPageToken,
    this.printerModels,
  });

  ListPrinterModelsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          printerModels: json_.containsKey('printerModels')
              ? (json_['printerModels'] as core.List)
                  .map((value) => PrinterModel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (printerModels != null) 'printerModels': printerModels!,
      };
}

/// Response for listing printers.
class ListPrintersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of printers.
  ///
  /// If `org_unit_id` was given in the request, then only printers visible for
  /// this OU will be returned. If `org_unit_id` was not given in the request,
  /// then all printers will be returned.
  core.List<Printer>? printers;

  ListPrintersResponse({
    this.nextPageToken,
    this.printers,
  });

  ListPrintersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          printers: json_.containsKey('printers')
              ? (json_['printers'] as core.List)
                  .map((value) => Printer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (printers != null) 'printers': printers!,
      };
}

/// A Google Groups member can be a user or another group.
///
/// This member can be inside or outside of your account's domains. For more
/// information about common group member tasks, see the \[Developer's
/// Guide\](/admin-sdk/directory/v1/guides/manage-group-members).
class Member {
  /// Defines mail delivery preferences of member.
  ///
  /// This is only supported by create/update/get.
  core.String? deliverySettings;

  /// The member's email address.
  ///
  /// A member can be a user or another group. This property is required when
  /// adding a member to a group. The `email` must be unique and cannot be an
  /// alias of another group. If the email address is changed, the API
  /// automatically reflects the email address changes.
  core.String? email;

  /// ETag of the resource.
  core.String? etag;

  /// The unique ID of the group member.
  ///
  /// A member `id` can be used as a member request URI's `memberKey`.
  core.String? id;

  /// The type of the API resource.
  ///
  /// For Members resources, the value is `admin#directory#member`.
  core.String? kind;

  /// The member's role in a group.
  ///
  /// The API returns an error for cycles in group memberships. For example, if
  /// `group1` is a member of `group2`, `group2` cannot be a member of `group1`.
  /// For more information about a member's role, see the
  /// [administration help center](https://support.google.com/a/answer/167094).
  core.String? role;

  /// Status of member (Immutable)
  core.String? status;

  /// The type of group member.
  core.String? type;

  Member({
    this.deliverySettings,
    this.email,
    this.etag,
    this.id,
    this.kind,
    this.role,
    this.status,
    this.type,
  });

  Member.fromJson(core.Map json_)
      : this(
          deliverySettings: json_.containsKey('delivery_settings')
              ? json_['delivery_settings'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deliverySettings != null) 'delivery_settings': deliverySettings!,
        if (email != null) 'email': email!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (role != null) 'role': role!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
      };
}

class Members {
  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  /// List of member objects.
  core.List<Member>? members;

  /// Token used to access next page of this result.
  core.String? nextPageToken;

  Members({
    this.etag,
    this.kind,
    this.members,
    this.nextPageToken,
  });

  Members.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => Member.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (members != null) 'members': members!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// JSON template for Has Member response in Directory API.
class MembersHasMember {
  /// Identifies whether the given user is a member of the group.
  ///
  /// Membership can be direct or nested.
  ///
  /// Output only.
  core.bool? isMember;

  MembersHasMember({
    this.isMember,
  });

  MembersHasMember.fromJson(core.Map json_)
      : this(
          isMember: json_.containsKey('isMember')
              ? json_['isMember'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isMember != null) 'isMember': isMember!,
      };
}

class MobileDeviceApplications {
  /// The application's display name.
  ///
  /// An example is `Browser`.
  core.String? displayName;

  /// The application's package name.
  ///
  /// An example is `com.android.browser`.
  core.String? packageName;

  /// The list of permissions of this application.
  ///
  /// These can be either a standard Android permission or one defined by the
  /// application, and are found in an application's
  /// [Android manifest](https://developer.android.com/guide/topics/manifest/uses-permission-element.html).
  /// Examples of a Calendar application's permissions are `READ_CALENDAR`, or
  /// `MANAGE_ACCOUNTS`.
  core.List<core.String>? permission;

  /// The application's version code.
  ///
  /// An example is `13`.
  core.int? versionCode;

  /// The application's version name.
  ///
  /// An example is `3.2-140714`.
  core.String? versionName;

  MobileDeviceApplications({
    this.displayName,
    this.packageName,
    this.permission,
    this.versionCode,
    this.versionName,
  });

  MobileDeviceApplications.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          permission: json_.containsKey('permission')
              ? (json_['permission'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          versionCode: json_.containsKey('versionCode')
              ? json_['versionCode'] as core.int
              : null,
          versionName: json_.containsKey('versionName')
              ? json_['versionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (packageName != null) 'packageName': packageName!,
        if (permission != null) 'permission': permission!,
        if (versionCode != null) 'versionCode': versionCode!,
        if (versionName != null) 'versionName': versionName!,
      };
}

/// Google Workspace Mobile Management includes Android,
/// [Google Sync](https://support.google.com/a/answer/135937), and iOS devices.
///
/// For more information about common group mobile device API tasks, see the
/// \[Developer's
/// Guide\](/admin-sdk/directory/v1/guides/manage-mobile-devices.html).
class MobileDevice {
  /// Adb (USB debugging) enabled or disabled on device (Read-only)
  core.bool? adbStatus;

  /// The list of applications installed on an Android mobile device.
  ///
  /// It is not applicable to Google Sync and iOS devices. The list includes any
  /// Android applications that access Google Workspace data. When updating an
  /// applications list, it is important to note that updates replace the
  /// existing list. If the Android device has two existing applications and the
  /// API updates the list with five applications, the is now the updated list
  /// of five applications.
  core.List<MobileDeviceApplications>? applications;

  /// The device's baseband version.
  core.String? basebandVersion;

  /// Mobile Device Bootloader version (Read-only)
  core.String? bootloaderVersion;

  /// Mobile Device Brand (Read-only)
  core.String? brand;

  /// The device's operating system build number.
  core.String? buildNumber;

  /// The default locale used on the device.
  core.String? defaultLanguage;

  /// Developer options enabled or disabled on device (Read-only)
  core.bool? developerOptionsStatus;

  /// The compromised device status.
  core.String? deviceCompromisedStatus;

  /// The serial number for a Google Sync mobile device.
  ///
  /// For Android and iOS devices, this is a software generated unique
  /// identifier.
  core.String? deviceId;

  /// DevicePasswordStatus (Read-only)
  core.String? devicePasswordStatus;

  /// List of owner's email addresses.
  ///
  /// If your application needs the current list of user emails, use the
  /// \[get\](/admin-sdk/directory/v1/reference/mobiledevices/get.html) method.
  /// For additional information, see the \[retrieve a
  /// user\](/admin-sdk/directory/v1/guides/manage-users#get_user) method.
  core.List<core.String>? email;

  /// Mobile Device Encryption Status (Read-only)
  core.String? encryptionStatus;

  /// ETag of the resource.
  core.String? etag;

  /// Date and time the device was first synchronized with the policy settings
  /// in the G Suite administrator control panel (Read-only)
  core.DateTime? firstSync;

  /// Mobile Device Hardware (Read-only)
  core.String? hardware;

  /// The IMEI/MEID unique identifier for Android hardware.
  ///
  /// It is not applicable to Google Sync devices. When adding an Android mobile
  /// device, this is an optional property. When updating one of these devices,
  /// this is a read-only property.
  core.String? hardwareId;

  /// The device's IMEI number.
  core.String? imei;

  /// The device's kernel version.
  core.String? kernelVersion;

  /// The type of the API resource.
  ///
  /// For Mobiledevices resources, the value is `admin#directory#mobiledevice`.
  core.String? kind;

  /// Date and time the device was last synchronized with the policy settings in
  /// the G Suite administrator control panel (Read-only)
  core.DateTime? lastSync;

  /// Boolean indicating if this account is on owner/primary profile or not.
  core.bool? managedAccountIsOnOwnerProfile;

  /// Mobile Device manufacturer (Read-only)
  core.String? manufacturer;

  /// The device's MEID number.
  core.String? meid;

  /// The mobile device's model name, for example Nexus S.
  ///
  /// This property can be
  /// \[updated\](/admin-sdk/directory/v1/reference/mobiledevices/update.html).
  /// For more information, see the \[Developer's
  /// Guide\](/admin-sdk/directory/v1/guides/manage-mobile=devices#update_mobile_device).
  core.String? model;

  /// List of the owner's user names.
  ///
  /// If your application needs the current list of device owner names, use the
  /// \[get\](/admin-sdk/directory/v1/reference/mobiledevices/get.html) method.
  /// For more information about retrieving mobile device user information, see
  /// the \[Developer's
  /// Guide\](/admin-sdk/directory/v1/guides/manage-users#get_user).
  core.List<core.String>? name;

  /// Mobile Device mobile or network operator (if available) (Read-only)
  core.String? networkOperator;

  /// The mobile device's operating system, for example IOS 4.3 or Android
  /// 2.3.5.
  ///
  /// This property can be
  /// \[updated\](/admin-sdk/directory/v1/reference/mobiledevices/update.html).
  /// For more information, see the \[Developer's
  /// Guide\](/admin-sdk/directory/v1/guides/manage-mobile-devices#update_mobile_device).
  core.String? os;

  /// List of accounts added on device (Read-only)
  core.List<core.String>? otherAccountsInfo;

  /// DMAgentPermission (Read-only)
  core.String? privilege;

  /// Mobile Device release version version (Read-only)
  core.String? releaseVersion;

  /// The unique ID the API service uses to identify the mobile device.
  core.String? resourceId;

  /// Mobile Device Security patch level (Read-only)
  core.String? securityPatchLevel;

  /// The device's serial number.
  core.String? serialNumber;

  /// The device's status.
  core.String? status;

  /// Work profile supported on device (Read-only)
  core.bool? supportsWorkProfile;

  /// The type of mobile device.
  core.String? type;

  /// Unknown sources enabled or disabled on device (Read-only)
  core.bool? unknownSourcesStatus;

  /// Gives information about the device such as `os` version.
  ///
  /// This property can be
  /// \[updated\](/admin-sdk/directory/v1/reference/mobiledevices/update.html).
  /// For more information, see the \[Developer's
  /// Guide\](/admin-sdk/directory/v1/guides/manage-mobile-devices#update_mobile_device).
  core.String? userAgent;

  /// The device's MAC address on Wi-Fi networks.
  core.String? wifiMacAddress;

  MobileDevice({
    this.adbStatus,
    this.applications,
    this.basebandVersion,
    this.bootloaderVersion,
    this.brand,
    this.buildNumber,
    this.defaultLanguage,
    this.developerOptionsStatus,
    this.deviceCompromisedStatus,
    this.deviceId,
    this.devicePasswordStatus,
    this.email,
    this.encryptionStatus,
    this.etag,
    this.firstSync,
    this.hardware,
    this.hardwareId,
    this.imei,
    this.kernelVersion,
    this.kind,
    this.lastSync,
    this.managedAccountIsOnOwnerProfile,
    this.manufacturer,
    this.meid,
    this.model,
    this.name,
    this.networkOperator,
    this.os,
    this.otherAccountsInfo,
    this.privilege,
    this.releaseVersion,
    this.resourceId,
    this.securityPatchLevel,
    this.serialNumber,
    this.status,
    this.supportsWorkProfile,
    this.type,
    this.unknownSourcesStatus,
    this.userAgent,
    this.wifiMacAddress,
  });

  MobileDevice.fromJson(core.Map json_)
      : this(
          adbStatus: json_.containsKey('adbStatus')
              ? json_['adbStatus'] as core.bool
              : null,
          applications: json_.containsKey('applications')
              ? (json_['applications'] as core.List)
                  .map((value) => MobileDeviceApplications.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
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
          defaultLanguage: json_.containsKey('defaultLanguage')
              ? json_['defaultLanguage'] as core.String
              : null,
          developerOptionsStatus: json_.containsKey('developerOptionsStatus')
              ? json_['developerOptionsStatus'] as core.bool
              : null,
          deviceCompromisedStatus: json_.containsKey('deviceCompromisedStatus')
              ? json_['deviceCompromisedStatus'] as core.String
              : null,
          deviceId: json_.containsKey('deviceId')
              ? json_['deviceId'] as core.String
              : null,
          devicePasswordStatus: json_.containsKey('devicePasswordStatus')
              ? json_['devicePasswordStatus'] as core.String
              : null,
          email: json_.containsKey('email')
              ? (json_['email'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          encryptionStatus: json_.containsKey('encryptionStatus')
              ? json_['encryptionStatus'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          firstSync: json_.containsKey('firstSync')
              ? core.DateTime.parse(json_['firstSync'] as core.String)
              : null,
          hardware: json_.containsKey('hardware')
              ? json_['hardware'] as core.String
              : null,
          hardwareId: json_.containsKey('hardwareId')
              ? json_['hardwareId'] as core.String
              : null,
          imei: json_.containsKey('imei') ? json_['imei'] as core.String : null,
          kernelVersion: json_.containsKey('kernelVersion')
              ? json_['kernelVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastSync: json_.containsKey('lastSync')
              ? core.DateTime.parse(json_['lastSync'] as core.String)
              : null,
          managedAccountIsOnOwnerProfile:
              json_.containsKey('managedAccountIsOnOwnerProfile')
                  ? json_['managedAccountIsOnOwnerProfile'] as core.bool
                  : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
          meid: json_.containsKey('meid') ? json_['meid'] as core.String : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          name: json_.containsKey('name')
              ? (json_['name'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          networkOperator: json_.containsKey('networkOperator')
              ? json_['networkOperator'] as core.String
              : null,
          os: json_.containsKey('os') ? json_['os'] as core.String : null,
          otherAccountsInfo: json_.containsKey('otherAccountsInfo')
              ? (json_['otherAccountsInfo'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          privilege: json_.containsKey('privilege')
              ? json_['privilege'] as core.String
              : null,
          releaseVersion: json_.containsKey('releaseVersion')
              ? json_['releaseVersion'] as core.String
              : null,
          resourceId: json_.containsKey('resourceId')
              ? json_['resourceId'] as core.String
              : null,
          securityPatchLevel: json_.containsKey('securityPatchLevel')
              ? json_['securityPatchLevel'] as core.String
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          supportsWorkProfile: json_.containsKey('supportsWorkProfile')
              ? json_['supportsWorkProfile'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          unknownSourcesStatus: json_.containsKey('unknownSourcesStatus')
              ? json_['unknownSourcesStatus'] as core.bool
              : null,
          userAgent: json_.containsKey('userAgent')
              ? json_['userAgent'] as core.String
              : null,
          wifiMacAddress: json_.containsKey('wifiMacAddress')
              ? json_['wifiMacAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adbStatus != null) 'adbStatus': adbStatus!,
        if (applications != null) 'applications': applications!,
        if (basebandVersion != null) 'basebandVersion': basebandVersion!,
        if (bootloaderVersion != null) 'bootloaderVersion': bootloaderVersion!,
        if (brand != null) 'brand': brand!,
        if (buildNumber != null) 'buildNumber': buildNumber!,
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
        if (developerOptionsStatus != null)
          'developerOptionsStatus': developerOptionsStatus!,
        if (deviceCompromisedStatus != null)
          'deviceCompromisedStatus': deviceCompromisedStatus!,
        if (deviceId != null) 'deviceId': deviceId!,
        if (devicePasswordStatus != null)
          'devicePasswordStatus': devicePasswordStatus!,
        if (email != null) 'email': email!,
        if (encryptionStatus != null) 'encryptionStatus': encryptionStatus!,
        if (etag != null) 'etag': etag!,
        if (firstSync != null)
          'firstSync': firstSync!.toUtc().toIso8601String(),
        if (hardware != null) 'hardware': hardware!,
        if (hardwareId != null) 'hardwareId': hardwareId!,
        if (imei != null) 'imei': imei!,
        if (kernelVersion != null) 'kernelVersion': kernelVersion!,
        if (kind != null) 'kind': kind!,
        if (lastSync != null) 'lastSync': lastSync!.toUtc().toIso8601String(),
        if (managedAccountIsOnOwnerProfile != null)
          'managedAccountIsOnOwnerProfile': managedAccountIsOnOwnerProfile!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (meid != null) 'meid': meid!,
        if (model != null) 'model': model!,
        if (name != null) 'name': name!,
        if (networkOperator != null) 'networkOperator': networkOperator!,
        if (os != null) 'os': os!,
        if (otherAccountsInfo != null) 'otherAccountsInfo': otherAccountsInfo!,
        if (privilege != null) 'privilege': privilege!,
        if (releaseVersion != null) 'releaseVersion': releaseVersion!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (securityPatchLevel != null)
          'securityPatchLevel': securityPatchLevel!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (status != null) 'status': status!,
        if (supportsWorkProfile != null)
          'supportsWorkProfile': supportsWorkProfile!,
        if (type != null) 'type': type!,
        if (unknownSourcesStatus != null)
          'unknownSourcesStatus': unknownSourcesStatus!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (wifiMacAddress != null) 'wifiMacAddress': wifiMacAddress!,
      };
}

class MobileDeviceAction {
  /// The action to be performed on the device.
  core.String? action;

  MobileDeviceAction({
    this.action,
  });

  MobileDeviceAction.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
      };
}

class MobileDevices {
  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  /// List of Mobile Device objects.
  core.List<MobileDevice>? mobiledevices;

  /// Token used to access next page of this result.
  core.String? nextPageToken;

  MobileDevices({
    this.etag,
    this.kind,
    this.mobiledevices,
    this.nextPageToken,
  });

  MobileDevices.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mobiledevices: json_.containsKey('mobiledevices')
              ? (json_['mobiledevices'] as core.List)
                  .map((value) => MobileDevice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (mobiledevices != null) 'mobiledevices': mobiledevices!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Managing your account's organizational units allows you to configure your
/// users' access to services and custom settings.
///
/// For more information about common organizational unit tasks, see the
/// \[Developer's Guide\](/admin-sdk/directory/v1/guides/manage-org-units.html).
/// The customer's organizational unit hierarchy is limited to 35 levels of
/// depth.
class OrgUnit {
  /// Determines if a sub-organizational unit can inherit the settings of the
  /// parent organization.
  ///
  /// The default value is `false`, meaning a sub-organizational unit inherits
  /// the settings of the nearest parent organizational unit. For more
  /// information on inheritance and users in an organization structure, see the
  /// [administration help center](https://support.google.com/a/answer/4352075).
  core.bool? blockInheritance;

  /// Description of the organizational unit.
  core.String? description;

  /// ETag of the resource.
  core.String? etag;

  /// The type of the API resource.
  ///
  /// For Orgunits resources, the value is `admin#directory#orgUnit`.
  core.String? kind;

  /// The organizational unit's path name.
  ///
  /// For example, an organizational unit's name within the
  /// /corp/support/sales_support parent path is sales_support. Required.
  core.String? name;

  /// The unique ID of the organizational unit.
  core.String? orgUnitId;

  /// The full path to the organizational unit.
  ///
  /// The `orgUnitPath` is a derived property. When listed, it is derived from
  /// `parentOrgunitPath` and organizational unit's `name`. For example, for an
  /// organizational unit named 'apps' under parent organization '/engineering',
  /// the orgUnitPath is '/engineering/apps'. In order to edit an `orgUnitPath`,
  /// either update the name of the organization or the `parentOrgunitPath`. A
  /// user's organizational unit determines which Google Workspace services the
  /// user has access to. If the user is moved to a new organization, the user's
  /// access changes. For more information about organization structures, see
  /// the
  /// [administration help center](https://support.google.com/a/answer/4352075).
  /// For more information about moving a user to a different organization, see
  /// \[Update a
  /// user\](/admin-sdk/directory/v1/guides/manage-users.html#update_user).
  core.String? orgUnitPath;

  /// The unique ID of the parent organizational unit.
  ///
  /// Required, unless `parentOrgUnitPath` is set.
  core.String? parentOrgUnitId;

  /// The organizational unit's parent path.
  ///
  /// For example, /corp/sales is the parent path for /corp/sales/sales_support
  /// organizational unit. Required, unless `parentOrgUnitId` is set.
  core.String? parentOrgUnitPath;

  OrgUnit({
    this.blockInheritance,
    this.description,
    this.etag,
    this.kind,
    this.name,
    this.orgUnitId,
    this.orgUnitPath,
    this.parentOrgUnitId,
    this.parentOrgUnitPath,
  });

  OrgUnit.fromJson(core.Map json_)
      : this(
          blockInheritance: json_.containsKey('blockInheritance')
              ? json_['blockInheritance'] as core.bool
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          orgUnitId: json_.containsKey('orgUnitId')
              ? json_['orgUnitId'] as core.String
              : null,
          orgUnitPath: json_.containsKey('orgUnitPath')
              ? json_['orgUnitPath'] as core.String
              : null,
          parentOrgUnitId: json_.containsKey('parentOrgUnitId')
              ? json_['parentOrgUnitId'] as core.String
              : null,
          parentOrgUnitPath: json_.containsKey('parentOrgUnitPath')
              ? json_['parentOrgUnitPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blockInheritance != null) 'blockInheritance': blockInheritance!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
        if (orgUnitPath != null) 'orgUnitPath': orgUnitPath!,
        if (parentOrgUnitId != null) 'parentOrgUnitId': parentOrgUnitId!,
        if (parentOrgUnitPath != null) 'parentOrgUnitPath': parentOrgUnitPath!,
      };
}

class OrgUnits {
  /// ETag of the resource.
  core.String? etag;

  /// The type of the API resource.
  ///
  /// For Org Unit resources, the type is `admin#directory#orgUnits`.
  core.String? kind;

  /// List of organizational unit objects.
  core.List<OrgUnit>? organizationUnits;

  OrgUnits({
    this.etag,
    this.kind,
    this.organizationUnits,
  });

  OrgUnits.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          organizationUnits: json_.containsKey('organizationUnits')
              ? (json_['organizationUnits'] as core.List)
                  .map((value) => OrgUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (organizationUnits != null) 'organizationUnits': organizationUnits!,
      };
}

/// Contains information regarding the current OS update status.
class OsUpdateStatus {
  /// Date and time of the last reboot.
  core.String? rebootTime;

  /// The update state of an OS update.
  /// Possible string values are:
  /// - "updateStateUnspecified" : The update state is unspecified.
  /// - "updateStateNotStarted" : There is an update pending but it hasn't
  /// started.
  /// - "updateStateDownloadInProgress" : The pending update is being
  /// downloaded.
  /// - "updateStateNeedReboot" : The device is ready to install the update, but
  /// it just needs to reboot.
  core.String? state;

  /// New required platform version from the pending updated kiosk app.
  core.String? targetKioskAppVersion;

  /// New platform version of the OS image being downloaded and applied.
  ///
  /// It is only set when update status is UPDATE_STATUS_DOWNLOAD_IN_PROGRESS or
  /// UPDATE_STATUS_NEED_REBOOT. Note this could be a dummy "0.0.0.0" for
  /// UPDATE_STATUS_NEED_REBOOT for some edge cases, e.g. update engine is
  /// restarted without a reboot.
  core.String? targetOsVersion;

  /// Date and time of the last update check.
  core.String? updateCheckTime;

  /// Date and time of the last successful OS update.
  core.String? updateTime;

  OsUpdateStatus({
    this.rebootTime,
    this.state,
    this.targetKioskAppVersion,
    this.targetOsVersion,
    this.updateCheckTime,
    this.updateTime,
  });

  OsUpdateStatus.fromJson(core.Map json_)
      : this(
          rebootTime: json_.containsKey('rebootTime')
              ? json_['rebootTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          targetKioskAppVersion: json_.containsKey('targetKioskAppVersion')
              ? json_['targetKioskAppVersion'] as core.String
              : null,
          targetOsVersion: json_.containsKey('targetOsVersion')
              ? json_['targetOsVersion'] as core.String
              : null,
          updateCheckTime: json_.containsKey('updateCheckTime')
              ? json_['updateCheckTime'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rebootTime != null) 'rebootTime': rebootTime!,
        if (state != null) 'state': state!,
        if (targetKioskAppVersion != null)
          'targetKioskAppVersion': targetKioskAppVersion!,
        if (targetOsVersion != null) 'targetOsVersion': targetOsVersion!,
        if (updateCheckTime != null) 'updateCheckTime': updateCheckTime!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Printer configuration.
class Printer {
  /// Auxiliary messages about issues with the printer configuration if any.
  ///
  /// Output only.
  core.List<AuxiliaryMessage>? auxiliaryMessages;

  /// Time when printer was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Editable.
  ///
  /// Description of printer.
  core.String? description;

  /// Editable.
  ///
  /// Name of printer.
  core.String? displayName;

  /// Id of the printer.
  ///
  /// (During printer creation leave empty)
  core.String? id;

  /// Editable.
  ///
  /// Make and model of printer. e.g. Lexmark MS610de Value must be in format as
  /// seen in ListPrinterModels response.
  core.String? makeAndModel;

  /// The resource name of the Printer object, in the format
  /// customers/{customer-id}/printers/{printer-id} (During printer creation
  /// leave empty)
  core.String? name;

  /// Organization Unit that owns this printer (Only can be set during Printer
  /// creation)
  core.String? orgUnitId;

  /// Editable.
  ///
  /// Printer URI.
  core.String? uri;

  /// Editable.
  ///
  /// flag to use driverless configuration or not. If it's set to be true,
  /// make_and_model can be ignored
  core.bool? useDriverlessConfig;

  Printer({
    this.auxiliaryMessages,
    this.createTime,
    this.description,
    this.displayName,
    this.id,
    this.makeAndModel,
    this.name,
    this.orgUnitId,
    this.uri,
    this.useDriverlessConfig,
  });

  Printer.fromJson(core.Map json_)
      : this(
          auxiliaryMessages: json_.containsKey('auxiliaryMessages')
              ? (json_['auxiliaryMessages'] as core.List)
                  .map((value) => AuxiliaryMessage.fromJson(
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
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          makeAndModel: json_.containsKey('makeAndModel')
              ? json_['makeAndModel'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          orgUnitId: json_.containsKey('orgUnitId')
              ? json_['orgUnitId'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
          useDriverlessConfig: json_.containsKey('useDriverlessConfig')
              ? json_['useDriverlessConfig'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auxiliaryMessages != null) 'auxiliaryMessages': auxiliaryMessages!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
        if (makeAndModel != null) 'makeAndModel': makeAndModel!,
        if (name != null) 'name': name!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
        if (uri != null) 'uri': uri!,
        if (useDriverlessConfig != null)
          'useDriverlessConfig': useDriverlessConfig!,
      };
}

/// Printer manufacturer and model
class PrinterModel {
  /// Display name.
  ///
  /// eq. "Brother MFC-8840D"
  core.String? displayName;

  /// Make and model as represented in "make_and_model" field in Printer object.
  ///
  /// eq. "brother mfc-8840d"
  core.String? makeAndModel;

  /// Manufacturer.
  ///
  /// eq. "Brother"
  core.String? manufacturer;

  PrinterModel({
    this.displayName,
    this.makeAndModel,
    this.manufacturer,
  });

  PrinterModel.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          makeAndModel: json_.containsKey('makeAndModel')
              ? json_['makeAndModel'] as core.String
              : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (makeAndModel != null) 'makeAndModel': makeAndModel!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
      };
}

class Privilege {
  /// A list of child privileges.
  ///
  /// Privileges for a service form a tree. Each privilege can have a list of
  /// child privileges; this list is empty for a leaf privilege.
  core.List<Privilege>? childPrivileges;

  /// ETag of the resource.
  core.String? etag;

  /// If the privilege can be restricted to an organization unit.
  core.bool? isOuScopable;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#privilege`.
  core.String? kind;

  /// The name of the privilege.
  core.String? privilegeName;

  /// The obfuscated ID of the service this privilege is for.
  ///
  /// This value is returned with
  /// \[`Privileges.list()`\](/admin-sdk/directory/v1/reference/privileges/list).
  core.String? serviceId;

  /// The name of the service this privilege is for.
  core.String? serviceName;

  Privilege({
    this.childPrivileges,
    this.etag,
    this.isOuScopable,
    this.kind,
    this.privilegeName,
    this.serviceId,
    this.serviceName,
  });

  Privilege.fromJson(core.Map json_)
      : this(
          childPrivileges: json_.containsKey('childPrivileges')
              ? (json_['childPrivileges'] as core.List)
                  .map((value) => Privilege.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          isOuScopable: json_.containsKey('isOuScopable')
              ? json_['isOuScopable'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          privilegeName: json_.containsKey('privilegeName')
              ? json_['privilegeName'] as core.String
              : null,
          serviceId: json_.containsKey('serviceId')
              ? json_['serviceId'] as core.String
              : null,
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childPrivileges != null) 'childPrivileges': childPrivileges!,
        if (etag != null) 'etag': etag!,
        if (isOuScopable != null) 'isOuScopable': isOuScopable!,
        if (kind != null) 'kind': kind!,
        if (privilegeName != null) 'privilegeName': privilegeName!,
        if (serviceId != null) 'serviceId': serviceId!,
        if (serviceName != null) 'serviceName': serviceName!,
      };
}

class Privileges {
  /// ETag of the resource.
  core.String? etag;

  /// A list of Privilege resources.
  core.List<Privilege>? items;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#privileges`.
  core.String? kind;

  Privileges({
    this.etag,
    this.items,
    this.kind,
  });

  Privileges.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Privilege.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

class RoleRolePrivileges {
  /// The name of the privilege.
  core.String? privilegeName;

  /// The obfuscated ID of the service this privilege is for.
  ///
  /// This value is returned with
  /// \[`Privileges.list()`\](/admin-sdk/directory/v1/reference/privileges/list).
  core.String? serviceId;

  RoleRolePrivileges({
    this.privilegeName,
    this.serviceId,
  });

  RoleRolePrivileges.fromJson(core.Map json_)
      : this(
          privilegeName: json_.containsKey('privilegeName')
              ? json_['privilegeName'] as core.String
              : null,
          serviceId: json_.containsKey('serviceId')
              ? json_['serviceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privilegeName != null) 'privilegeName': privilegeName!,
        if (serviceId != null) 'serviceId': serviceId!,
      };
}

class Role {
  /// ETag of the resource.
  core.String? etag;

  /// Returns `true` if the role is a super admin role.
  core.bool? isSuperAdminRole;

  /// Returns `true` if this is a pre-defined system role.
  core.bool? isSystemRole;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#role`.
  core.String? kind;

  /// A short description of the role.
  core.String? roleDescription;

  /// ID of the role.
  core.String? roleId;

  /// Name of the role.
  core.String? roleName;

  /// The set of privileges that are granted to this role.
  core.List<RoleRolePrivileges>? rolePrivileges;

  Role({
    this.etag,
    this.isSuperAdminRole,
    this.isSystemRole,
    this.kind,
    this.roleDescription,
    this.roleId,
    this.roleName,
    this.rolePrivileges,
  });

  Role.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          isSuperAdminRole: json_.containsKey('isSuperAdminRole')
              ? json_['isSuperAdminRole'] as core.bool
              : null,
          isSystemRole: json_.containsKey('isSystemRole')
              ? json_['isSystemRole'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          roleDescription: json_.containsKey('roleDescription')
              ? json_['roleDescription'] as core.String
              : null,
          roleId: json_.containsKey('roleId')
              ? json_['roleId'] as core.String
              : null,
          roleName: json_.containsKey('roleName')
              ? json_['roleName'] as core.String
              : null,
          rolePrivileges: json_.containsKey('rolePrivileges')
              ? (json_['rolePrivileges'] as core.List)
                  .map((value) => RoleRolePrivileges.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (isSuperAdminRole != null) 'isSuperAdminRole': isSuperAdminRole!,
        if (isSystemRole != null) 'isSystemRole': isSystemRole!,
        if (kind != null) 'kind': kind!,
        if (roleDescription != null) 'roleDescription': roleDescription!,
        if (roleId != null) 'roleId': roleId!,
        if (roleName != null) 'roleName': roleName!,
        if (rolePrivileges != null) 'rolePrivileges': rolePrivileges!,
      };
}

/// Defines an assignment of a role.
class RoleAssignment {
  /// The unique ID of the entity this role is assigned to—either the `user_id`
  /// of a user or the `uniqueId` of a service account, as defined in \[Identity
  /// and Access Management
  /// (IAM)\](https://cloud.google.com/iam/docs/reference/rest/v1/projects.serviceAccounts).
  core.String? assignedTo;

  /// ETag of the resource.
  core.String? etag;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#roleAssignment`.
  core.String? kind;

  /// If the role is restricted to an organization unit, this contains the ID
  /// for the organization unit the exercise of this role is restricted to.
  core.String? orgUnitId;

  /// ID of this roleAssignment.
  core.String? roleAssignmentId;

  /// The ID of the role that is assigned.
  core.String? roleId;

  /// The scope in which this role is assigned.
  core.String? scopeType;

  RoleAssignment({
    this.assignedTo,
    this.etag,
    this.kind,
    this.orgUnitId,
    this.roleAssignmentId,
    this.roleId,
    this.scopeType,
  });

  RoleAssignment.fromJson(core.Map json_)
      : this(
          assignedTo: json_.containsKey('assignedTo')
              ? json_['assignedTo'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          orgUnitId: json_.containsKey('orgUnitId')
              ? json_['orgUnitId'] as core.String
              : null,
          roleAssignmentId: json_.containsKey('roleAssignmentId')
              ? json_['roleAssignmentId'] as core.String
              : null,
          roleId: json_.containsKey('roleId')
              ? json_['roleId'] as core.String
              : null,
          scopeType: json_.containsKey('scopeType')
              ? json_['scopeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTo != null) 'assignedTo': assignedTo!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
        if (roleAssignmentId != null) 'roleAssignmentId': roleAssignmentId!,
        if (roleId != null) 'roleId': roleId!,
        if (scopeType != null) 'scopeType': scopeType!,
      };
}

class RoleAssignments {
  /// ETag of the resource.
  core.String? etag;

  /// A list of RoleAssignment resources.
  core.List<RoleAssignment>? items;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#roleAssignments`.
  core.String? kind;
  core.String? nextPageToken;

  RoleAssignments({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  RoleAssignments.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => RoleAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class Roles {
  /// ETag of the resource.
  core.String? etag;

  /// A list of Role resources.
  core.List<Role>? items;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#roles`.
  core.String? kind;
  core.String? nextPageToken;

  Roles({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  Roles.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Role.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The type of API resource.
///
/// For Schema resources, this is always `admin#directory#schema`.
class Schema {
  /// Display name for the schema.
  core.String? displayName;

  /// The ETag of the resource.
  core.String? etag;

  /// A list of fields in the schema.
  core.List<SchemaFieldSpec>? fields;

  /// Kind of resource this is.
  core.String? kind;

  /// The unique identifier of the schema (Read-only)
  core.String? schemaId;

  /// The schema's name.
  ///
  /// Each `schema_name` must be unique within a customer. Reusing a name
  /// results in a `409: Entity already exists` error.
  core.String? schemaName;

  Schema({
    this.displayName,
    this.etag,
    this.fields,
    this.kind,
    this.schemaId,
    this.schemaName,
  });

  Schema.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => SchemaFieldSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          schemaId: json_.containsKey('schemaId')
              ? json_['schemaId'] as core.String
              : null,
          schemaName: json_.containsKey('schemaName')
              ? json_['schemaName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (fields != null) 'fields': fields!,
        if (kind != null) 'kind': kind!,
        if (schemaId != null) 'schemaId': schemaId!,
        if (schemaName != null) 'schemaName': schemaName!,
      };
}

/// Indexing spec for a numeric field.
///
/// By default, only exact match queries will be supported for numeric fields.
/// Setting the `numericIndexingSpec` allows range queries to be supported.
class SchemaFieldSpecNumericIndexingSpec {
  /// Maximum value of this field.
  ///
  /// This is meant to be indicative rather than enforced. Values outside this
  /// range will still be indexed, but search may not be as performant.
  core.double? maxValue;

  /// Minimum value of this field.
  ///
  /// This is meant to be indicative rather than enforced. Values outside this
  /// range will still be indexed, but search may not be as performant.
  core.double? minValue;

  SchemaFieldSpecNumericIndexingSpec({
    this.maxValue,
    this.minValue,
  });

  SchemaFieldSpecNumericIndexingSpec.fromJson(core.Map json_)
      : this(
          maxValue: json_.containsKey('maxValue')
              ? (json_['maxValue'] as core.num).toDouble()
              : null,
          minValue: json_.containsKey('minValue')
              ? (json_['minValue'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
      };
}

/// You can use schemas to add custom fields to user profiles.
///
/// You can use these fields to store information such as the projects your
/// users work on, their physical locations, their hire dates, or whatever else
/// fits your business needs. For more information, see \[Custom User
/// Fields\](/admin-sdk/directory/v1/guides/manage-schemas).
class SchemaFieldSpec {
  /// Display Name of the field.
  core.String? displayName;

  /// The ETag of the field.
  core.String? etag;

  /// The unique identifier of the field (Read-only)
  core.String? fieldId;

  /// The name of the field.
  core.String? fieldName;

  /// The type of the field.
  core.String? fieldType;

  /// Boolean specifying whether the field is indexed or not.
  ///
  /// Default: `true`.
  core.bool? indexed;

  /// The kind of resource this is.
  ///
  /// For schema fields this is always `admin#directory#schema#fieldspec`.
  core.String? kind;

  /// A boolean specifying whether this is a multi-valued field or not.
  ///
  /// Default: `false`.
  core.bool? multiValued;

  /// Indexing spec for a numeric field.
  ///
  /// By default, only exact match queries will be supported for numeric fields.
  /// Setting the `numericIndexingSpec` allows range queries to be supported.
  SchemaFieldSpecNumericIndexingSpec? numericIndexingSpec;

  /// Specifies who can view values of this field.
  ///
  /// See \[Retrieve users as a
  /// non-administrator\](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin)
  /// for more information. Note: It may take up to 24 hours for changes to this
  /// field to be reflected.
  core.String? readAccessType;

  SchemaFieldSpec({
    this.displayName,
    this.etag,
    this.fieldId,
    this.fieldName,
    this.fieldType,
    this.indexed,
    this.kind,
    this.multiValued,
    this.numericIndexingSpec,
    this.readAccessType,
  });

  SchemaFieldSpec.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
          fieldName: json_.containsKey('fieldName')
              ? json_['fieldName'] as core.String
              : null,
          fieldType: json_.containsKey('fieldType')
              ? json_['fieldType'] as core.String
              : null,
          indexed: json_.containsKey('indexed')
              ? json_['indexed'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          multiValued: json_.containsKey('multiValued')
              ? json_['multiValued'] as core.bool
              : null,
          numericIndexingSpec: json_.containsKey('numericIndexingSpec')
              ? SchemaFieldSpecNumericIndexingSpec.fromJson(
                  json_['numericIndexingSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          readAccessType: json_.containsKey('readAccessType')
              ? json_['readAccessType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (fieldId != null) 'fieldId': fieldId!,
        if (fieldName != null) 'fieldName': fieldName!,
        if (fieldType != null) 'fieldType': fieldType!,
        if (indexed != null) 'indexed': indexed!,
        if (kind != null) 'kind': kind!,
        if (multiValued != null) 'multiValued': multiValued!,
        if (numericIndexingSpec != null)
          'numericIndexingSpec': numericIndexingSpec!,
        if (readAccessType != null) 'readAccessType': readAccessType!,
      };
}

/// JSON response template for List Schema operation in Directory API.
class Schemas {
  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  /// List of UserSchema objects.
  core.List<Schema>? schemas;

  Schemas({
    this.etag,
    this.kind,
    this.schemas,
  });

  Schemas.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          schemas: json_.containsKey('schemas')
              ? (json_['schemas'] as core.List)
                  .map((value) => Schema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (schemas != null) 'schemas': schemas!,
      };
}

/// JSON template for token resource in Directory API.
class Token {
  /// Whether the application is registered with Google.
  ///
  /// The value is `true` if the application has an anonymous Client ID.
  core.bool? anonymous;

  /// The Client ID of the application the token is issued to.
  core.String? clientId;

  /// The displayable name of the application the token is issued to.
  core.String? displayText;

  /// ETag of the resource.
  core.String? etag;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#token`.
  core.String? kind;

  /// Whether the token is issued to an installed application.
  ///
  /// The value is `true` if the application is installed to a desktop or mobile
  /// device.
  core.bool? nativeApp;

  /// A list of authorization scopes the application is granted.
  core.List<core.String>? scopes;

  /// The unique ID of the user that issued the token.
  core.String? userKey;

  Token({
    this.anonymous,
    this.clientId,
    this.displayText,
    this.etag,
    this.kind,
    this.nativeApp,
    this.scopes,
    this.userKey,
  });

  Token.fromJson(core.Map json_)
      : this(
          anonymous: json_.containsKey('anonymous')
              ? json_['anonymous'] as core.bool
              : null,
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          displayText: json_.containsKey('displayText')
              ? json_['displayText'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nativeApp: json_.containsKey('nativeApp')
              ? json_['nativeApp'] as core.bool
              : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          userKey: json_.containsKey('userKey')
              ? json_['userKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (anonymous != null) 'anonymous': anonymous!,
        if (clientId != null) 'clientId': clientId!,
        if (displayText != null) 'displayText': displayText!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (nativeApp != null) 'nativeApp': nativeApp!,
        if (scopes != null) 'scopes': scopes!,
        if (userKey != null) 'userKey': userKey!,
      };
}

/// JSON response template for List tokens operation in Directory API.
class Tokens {
  /// ETag of the resource.
  core.String? etag;

  /// A list of Token resources.
  core.List<Token>? items;

  /// The type of the API resource.
  ///
  /// This is always `admin#directory#tokenList`.
  core.String? kind;

  Tokens({
    this.etag,
    this.items,
    this.kind,
  });

  Tokens.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Token.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// The Directory API allows you to create and manage your account's users, user
/// aliases, and user Gmail chat profile photos.
///
/// For more information about common tasks, see the \[User Accounts Developer's
/// Guide\](/admin-sdk/directory/v1/guides/manage-users.html) and the \[User
/// Aliases Developer's
/// Guide\](/admin-sdk/directory/v1/guides/manage-user-aliases.html).
class User {
  /// A list of the user's addresses.
  ///
  /// The maximum allowed data size for this field is 10Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? addresses;

  /// This property is `true` if the user has completed an initial login and
  /// accepted the Terms of Service agreement.
  ///
  /// Output only.
  core.bool? agreedToTerms;

  /// A list of the user's alias email addresses.
  ///
  /// Output only.
  core.List<core.String>? aliases;

  /// Indicates if user is archived.
  core.bool? archived;

  /// Indicates if the user is forced to change their password at next login.
  ///
  /// This setting doesn't apply when \[the user signs in via a third-party
  /// identity provider\](https://support.google.com/a/answer/60224).
  core.bool? changePasswordAtNextLogin;

  /// User's G Suite account creation time.
  ///
  /// (Read-only)
  core.DateTime? creationTime;

  /// Custom fields of the user.
  ///
  /// The key is a `schema_name` and its values are `'field_name':
  /// 'field_value'`.
  core.Map<core.String, UserCustomProperties>? customSchemas;

  /// The customer ID to \[retrieve all account
  /// users\](/admin-sdk/directory/v1/guides/manage-users.html#get_all_users).
  ///
  /// You can use the alias `my_customer` to represent your account's
  /// `customerId`. As a reseller administrator, you can use the resold customer
  /// account's `customerId`. To get a `customerId`, use the account's primary
  /// domain in the `domain` parameter of a
  /// \[users.list\](/admin-sdk/directory/v1/reference/users/list) request.
  ///
  /// Output only.
  core.String? customerId;
  core.DateTime? deletionTime;

  /// A list of the user's email addresses.
  ///
  /// The maximum allowed data size for this field is 10Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? emails;

  /// ETag of the resource.
  ///
  /// Output only.
  core.String? etag;

  /// A list of external IDs for the user, such as an employee or network ID.
  ///
  /// The maximum allowed data size for this field is 2Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? externalIds;

  /// The user's gender.
  ///
  /// The maximum allowed data size for this field is 1Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? gender;

  /// Stores the hash format of the `password` property.
  ///
  /// The following `hashFunction` values are allowed: * `MD5` - Accepts simple
  /// hex-encoded values. * `SHA1` - Accepts simple hex-encoded values. *
  /// `crypt` - Compliant with the
  /// [C crypt library](https://en.wikipedia.org/wiki/Crypt_%28C%29). Supports
  /// the DES, MD5 (hash prefix `$1$`), SHA-256 (hash prefix `$5$`), and SHA-512
  /// (hash prefix `$6$`) hash algorithms. If rounds are specified as part of
  /// the prefix, they must be 10,000 or fewer.
  core.String? hashFunction;

  /// The unique ID for the user.
  ///
  /// A user `id` can be used as a user request URI's `userKey`.
  core.String? id;

  /// The user's Instant Messenger (IM) accounts.
  ///
  /// A user account can have multiple ims properties. But, only one of these
  /// ims properties can be the primary IM contact. The maximum allowed data
  /// size for this field is 2Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? ims;

  /// Indicates if the user's profile is visible in the Google Workspace global
  /// address list when the contact sharing feature is enabled for the domain.
  ///
  /// For more information about excluding user profiles, see the
  /// [administration help center](https://support.google.com/a/answer/1285988).
  core.bool? includeInGlobalAddressList;

  /// If `true`, the user's IP address is
  /// [whitelisted](https://support.google.com/a/answer/60752).
  core.bool? ipWhitelisted;

  /// Indicates a user with super admininistrator privileges.
  ///
  /// The `isAdmin` property can only be edited in the \[Make a user an
  /// administrator\](/admin-sdk/directory/v1/guides/manage-users.html#make_admin)
  /// operation (
  /// \[makeAdmin\](/admin-sdk/directory/v1/reference/users/makeAdmin.html)
  /// method). If edited in the user
  /// \[insert\](/admin-sdk/directory/v1/reference/users/insert.html) or
  /// \[update\](/admin-sdk/directory/v1/reference/users/update.html) methods,
  /// the edit is ignored by the API service.
  ///
  /// Output only.
  core.bool? isAdmin;

  /// Indicates if the user is a delegated administrator.
  ///
  /// Delegated administrators are supported by the API but cannot create or
  /// undelete users, or make users administrators. These requests are ignored
  /// by the API service. Roles and privileges for administrators are assigned
  /// using the [Admin console](https://support.google.com/a/answer/33325).
  ///
  /// Output only.
  core.bool? isDelegatedAdmin;

  /// Is 2-step verification enforced (Read-only)
  ///
  /// Output only.
  core.bool? isEnforcedIn2Sv;

  /// Is enrolled in 2-step verification (Read-only)
  ///
  /// Output only.
  core.bool? isEnrolledIn2Sv;

  /// Indicates if the user's Google mailbox is created.
  ///
  /// This property is only applicable if the user has been assigned a Gmail
  /// license.
  ///
  /// Output only.
  core.bool? isMailboxSetup;

  /// The user's keywords.
  ///
  /// The maximum allowed data size for this field is 1Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? keywords;

  /// The type of the API resource.
  ///
  /// For Users resources, the value is `admin#directory#user`.
  ///
  /// Output only.
  core.String? kind;

  /// The user's languages.
  ///
  /// The maximum allowed data size for this field is 1Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? languages;

  /// User's last login time.
  ///
  /// (Read-only)
  core.DateTime? lastLoginTime;

  /// The user's locations.
  ///
  /// The maximum allowed data size for this field is 10Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? locations;

  /// Holds the given and family names of the user, and the read-only `fullName`
  /// value.
  ///
  /// The maximum number of characters in the `givenName` and in the
  /// `familyName` values is 60. In addition, name values support unicode/UTF-8
  /// characters, and can contain spaces, letters (a-z), numbers (0-9), dashes
  /// (-), forward slashes (/), and periods (.). For more information about
  /// character usage rules, see the
  /// [administration help center](https://support.google.com/a/answer/9193374).
  /// Maximum allowed data size for this field is 1Kb.
  UserName? name;

  /// List of the user's non-editable alias email addresses.
  ///
  /// These are typically outside the account's primary domain or sub-domain.
  ///
  /// Output only.
  core.List<core.String>? nonEditableAliases;

  /// Notes for the user.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? notes;

  /// The full path of the parent organization associated with the user.
  ///
  /// If the parent organization is the top-level, it is represented as a
  /// forward slash (`/`).
  core.String? orgUnitPath;

  /// A list of organizations the user belongs to.
  ///
  /// The maximum allowed data size for this field is 10Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? organizations;

  /// User's password
  core.String? password;

  /// A list of the user's phone numbers.
  ///
  /// The maximum allowed data size for this field is 1Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? phones;

  /// A list of [POSIX](https://www.opengroup.org/austin/papers/posix_faq.html)
  /// account information for the user.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? posixAccounts;

  /// The user's primary email address.
  ///
  /// This property is required in a request to create a user account. The
  /// `primaryEmail` must be unique and cannot be an alias of another user.
  core.String? primaryEmail;

  /// Recovery email of the user.
  core.String? recoveryEmail;

  /// Recovery phone of the user.
  ///
  /// The phone number must be in the E.164 format, starting with the plus sign
  /// (+). Example: *+16506661212*.
  core.String? recoveryPhone;

  /// A list of the user's relationships to other users.
  ///
  /// The maximum allowed data size for this field is 2Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? relations;

  /// A list of SSH public keys.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? sshPublicKeys;

  /// Indicates if user is suspended.
  core.bool? suspended;

  /// Has the reason a user account is suspended either by the administrator or
  /// by Google at the time of suspension.
  ///
  /// The property is returned only if the `suspended` property is `true`.
  ///
  /// Output only.
  core.String? suspensionReason;

  /// ETag of the user's photo (Read-only)
  ///
  /// Output only.
  core.String? thumbnailPhotoEtag;

  /// Photo Url of the user (Read-only)
  ///
  /// Output only.
  core.String? thumbnailPhotoUrl;

  /// The user's websites.
  ///
  /// The maximum allowed data size for this field is 2Kb.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? websites;

  User({
    this.addresses,
    this.agreedToTerms,
    this.aliases,
    this.archived,
    this.changePasswordAtNextLogin,
    this.creationTime,
    this.customSchemas,
    this.customerId,
    this.deletionTime,
    this.emails,
    this.etag,
    this.externalIds,
    this.gender,
    this.hashFunction,
    this.id,
    this.ims,
    this.includeInGlobalAddressList,
    this.ipWhitelisted,
    this.isAdmin,
    this.isDelegatedAdmin,
    this.isEnforcedIn2Sv,
    this.isEnrolledIn2Sv,
    this.isMailboxSetup,
    this.keywords,
    this.kind,
    this.languages,
    this.lastLoginTime,
    this.locations,
    this.name,
    this.nonEditableAliases,
    this.notes,
    this.orgUnitPath,
    this.organizations,
    this.password,
    this.phones,
    this.posixAccounts,
    this.primaryEmail,
    this.recoveryEmail,
    this.recoveryPhone,
    this.relations,
    this.sshPublicKeys,
    this.suspended,
    this.suspensionReason,
    this.thumbnailPhotoEtag,
    this.thumbnailPhotoUrl,
    this.websites,
  });

  User.fromJson(core.Map json_)
      : this(
          addresses: json_.containsKey('addresses') ? json_['addresses'] : null,
          agreedToTerms: json_.containsKey('agreedToTerms')
              ? json_['agreedToTerms'] as core.bool
              : null,
          aliases: json_.containsKey('aliases')
              ? (json_['aliases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          archived: json_.containsKey('archived')
              ? json_['archived'] as core.bool
              : null,
          changePasswordAtNextLogin:
              json_.containsKey('changePasswordAtNextLogin')
                  ? json_['changePasswordAtNextLogin'] as core.bool
                  : null,
          creationTime: json_.containsKey('creationTime')
              ? core.DateTime.parse(json_['creationTime'] as core.String)
              : null,
          customSchemas: json_.containsKey('customSchemas')
              ? (json_['customSchemas'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    UserCustomProperties.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          customerId: json_.containsKey('customerId')
              ? json_['customerId'] as core.String
              : null,
          deletionTime: json_.containsKey('deletionTime')
              ? core.DateTime.parse(json_['deletionTime'] as core.String)
              : null,
          emails: json_.containsKey('emails') ? json_['emails'] : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          externalIds:
              json_.containsKey('externalIds') ? json_['externalIds'] : null,
          gender: json_.containsKey('gender') ? json_['gender'] : null,
          hashFunction: json_.containsKey('hashFunction')
              ? json_['hashFunction'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          ims: json_.containsKey('ims') ? json_['ims'] : null,
          includeInGlobalAddressList:
              json_.containsKey('includeInGlobalAddressList')
                  ? json_['includeInGlobalAddressList'] as core.bool
                  : null,
          ipWhitelisted: json_.containsKey('ipWhitelisted')
              ? json_['ipWhitelisted'] as core.bool
              : null,
          isAdmin: json_.containsKey('isAdmin')
              ? json_['isAdmin'] as core.bool
              : null,
          isDelegatedAdmin: json_.containsKey('isDelegatedAdmin')
              ? json_['isDelegatedAdmin'] as core.bool
              : null,
          isEnforcedIn2Sv: json_.containsKey('isEnforcedIn2Sv')
              ? json_['isEnforcedIn2Sv'] as core.bool
              : null,
          isEnrolledIn2Sv: json_.containsKey('isEnrolledIn2Sv')
              ? json_['isEnrolledIn2Sv'] as core.bool
              : null,
          isMailboxSetup: json_.containsKey('isMailboxSetup')
              ? json_['isMailboxSetup'] as core.bool
              : null,
          keywords: json_.containsKey('keywords') ? json_['keywords'] : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          languages: json_.containsKey('languages') ? json_['languages'] : null,
          lastLoginTime: json_.containsKey('lastLoginTime')
              ? core.DateTime.parse(json_['lastLoginTime'] as core.String)
              : null,
          locations: json_.containsKey('locations') ? json_['locations'] : null,
          name: json_.containsKey('name')
              ? UserName.fromJson(
                  json_['name'] as core.Map<core.String, core.dynamic>)
              : null,
          nonEditableAliases: json_.containsKey('nonEditableAliases')
              ? (json_['nonEditableAliases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          notes: json_.containsKey('notes') ? json_['notes'] : null,
          orgUnitPath: json_.containsKey('orgUnitPath')
              ? json_['orgUnitPath'] as core.String
              : null,
          organizations: json_.containsKey('organizations')
              ? json_['organizations']
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          phones: json_.containsKey('phones') ? json_['phones'] : null,
          posixAccounts: json_.containsKey('posixAccounts')
              ? json_['posixAccounts']
              : null,
          primaryEmail: json_.containsKey('primaryEmail')
              ? json_['primaryEmail'] as core.String
              : null,
          recoveryEmail: json_.containsKey('recoveryEmail')
              ? json_['recoveryEmail'] as core.String
              : null,
          recoveryPhone: json_.containsKey('recoveryPhone')
              ? json_['recoveryPhone'] as core.String
              : null,
          relations: json_.containsKey('relations') ? json_['relations'] : null,
          sshPublicKeys: json_.containsKey('sshPublicKeys')
              ? json_['sshPublicKeys']
              : null,
          suspended: json_.containsKey('suspended')
              ? json_['suspended'] as core.bool
              : null,
          suspensionReason: json_.containsKey('suspensionReason')
              ? json_['suspensionReason'] as core.String
              : null,
          thumbnailPhotoEtag: json_.containsKey('thumbnailPhotoEtag')
              ? json_['thumbnailPhotoEtag'] as core.String
              : null,
          thumbnailPhotoUrl: json_.containsKey('thumbnailPhotoUrl')
              ? json_['thumbnailPhotoUrl'] as core.String
              : null,
          websites: json_.containsKey('websites') ? json_['websites'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addresses != null) 'addresses': addresses!,
        if (agreedToTerms != null) 'agreedToTerms': agreedToTerms!,
        if (aliases != null) 'aliases': aliases!,
        if (archived != null) 'archived': archived!,
        if (changePasswordAtNextLogin != null)
          'changePasswordAtNextLogin': changePasswordAtNextLogin!,
        if (creationTime != null)
          'creationTime': creationTime!.toUtc().toIso8601String(),
        if (customSchemas != null) 'customSchemas': customSchemas!,
        if (customerId != null) 'customerId': customerId!,
        if (deletionTime != null)
          'deletionTime': deletionTime!.toUtc().toIso8601String(),
        if (emails != null) 'emails': emails!,
        if (etag != null) 'etag': etag!,
        if (externalIds != null) 'externalIds': externalIds!,
        if (gender != null) 'gender': gender!,
        if (hashFunction != null) 'hashFunction': hashFunction!,
        if (id != null) 'id': id!,
        if (ims != null) 'ims': ims!,
        if (includeInGlobalAddressList != null)
          'includeInGlobalAddressList': includeInGlobalAddressList!,
        if (ipWhitelisted != null) 'ipWhitelisted': ipWhitelisted!,
        if (isAdmin != null) 'isAdmin': isAdmin!,
        if (isDelegatedAdmin != null) 'isDelegatedAdmin': isDelegatedAdmin!,
        if (isEnforcedIn2Sv != null) 'isEnforcedIn2Sv': isEnforcedIn2Sv!,
        if (isEnrolledIn2Sv != null) 'isEnrolledIn2Sv': isEnrolledIn2Sv!,
        if (isMailboxSetup != null) 'isMailboxSetup': isMailboxSetup!,
        if (keywords != null) 'keywords': keywords!,
        if (kind != null) 'kind': kind!,
        if (languages != null) 'languages': languages!,
        if (lastLoginTime != null)
          'lastLoginTime': lastLoginTime!.toUtc().toIso8601String(),
        if (locations != null) 'locations': locations!,
        if (name != null) 'name': name!,
        if (nonEditableAliases != null)
          'nonEditableAliases': nonEditableAliases!,
        if (notes != null) 'notes': notes!,
        if (orgUnitPath != null) 'orgUnitPath': orgUnitPath!,
        if (organizations != null) 'organizations': organizations!,
        if (password != null) 'password': password!,
        if (phones != null) 'phones': phones!,
        if (posixAccounts != null) 'posixAccounts': posixAccounts!,
        if (primaryEmail != null) 'primaryEmail': primaryEmail!,
        if (recoveryEmail != null) 'recoveryEmail': recoveryEmail!,
        if (recoveryPhone != null) 'recoveryPhone': recoveryPhone!,
        if (relations != null) 'relations': relations!,
        if (sshPublicKeys != null) 'sshPublicKeys': sshPublicKeys!,
        if (suspended != null) 'suspended': suspended!,
        if (suspensionReason != null) 'suspensionReason': suspensionReason!,
        if (thumbnailPhotoEtag != null)
          'thumbnailPhotoEtag': thumbnailPhotoEtag!,
        if (thumbnailPhotoUrl != null) 'thumbnailPhotoUrl': thumbnailPhotoUrl!,
        if (websites != null) 'websites': websites!,
      };
}

/// JSON template for a set of custom properties (i.e. all fields in a
/// particular schema)
class UserCustomProperties
    extends collection.MapBase<core.String, core.Object?> {
  final _innerMap = <core.String, core.Object?>{};

  UserCustomProperties();

  UserCustomProperties.fromJson(core.Map<core.String, core.dynamic> json_) {
    json_.forEach((core.String key, value) {
      this[key] = value;
    });
  }

  @core.override
  core.Object? operator [](core.Object? key) => _innerMap[key];

  @core.override
  void operator []=(core.String key, core.Object? value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  core.Object? remove(core.Object? key) => _innerMap.remove(key);
}

class UserMakeAdmin {
  /// Indicates the administrator status of the user.
  core.bool? status;

  UserMakeAdmin({
    this.status,
  });

  UserMakeAdmin.fromJson(core.Map json_)
      : this(
          status:
              json_.containsKey('status') ? json_['status'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
      };
}

class UserName {
  /// The user's last name.
  ///
  /// Required when creating a user account.
  core.String? familyName;

  /// The user's full name formed by concatenating the first and last name
  /// values.
  core.String? fullName;

  /// The user's first name.
  ///
  /// Required when creating a user account.
  core.String? givenName;

  UserName({
    this.familyName,
    this.fullName,
    this.givenName,
  });

  UserName.fromJson(core.Map json_)
      : this(
          familyName: json_.containsKey('familyName')
              ? json_['familyName'] as core.String
              : null,
          fullName: json_.containsKey('fullName')
              ? json_['fullName'] as core.String
              : null,
          givenName: json_.containsKey('givenName')
              ? json_['givenName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (familyName != null) 'familyName': familyName!,
        if (fullName != null) 'fullName': fullName!,
        if (givenName != null) 'givenName': givenName!,
      };
}

class UserPhoto {
  /// ETag of the resource.
  core.String? etag;

  /// Height of the photo in pixels.
  core.int? height;

  /// The ID the API uses to uniquely identify the user.
  core.String? id;

  /// The type of the API resource.
  ///
  /// For Photo resources, this is `admin#directory#user#photo`.
  core.String? kind;

  /// The MIME type of the photo.
  ///
  /// Allowed values are `JPEG`, `PNG`, `GIF`, `BMP`, `TIFF`, and web-safe
  /// base64 encoding.
  core.String? mimeType;

  /// The user photo's upload data in \[web-safe
  /// Base64\](https://en.wikipedia.org/wiki/Base64#URL_applications) format in
  /// bytes.
  ///
  /// This means: * The slash (/) character is replaced with the underscore (_)
  /// character. * The plus sign (+) character is replaced with the hyphen (-)
  /// character. * The equals sign (=) character is replaced with the asterisk
  /// (*). * For padding, the period (.) character is used instead of the
  /// RFC-4648 baseURL definition which uses the equals sign (=) for padding.
  /// This is done to simplify URL-parsing. * Whatever the size of the photo
  /// being uploaded, the API downsizes it to 96x96 pixels.
  core.String? photoData;
  core.List<core.int> get photoDataAsBytes => convert.base64.decode(photoData!);

  set photoDataAsBytes(core.List<core.int> bytes_) {
    photoData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The user's primary email address.
  core.String? primaryEmail;

  /// Width of the photo in pixels.
  core.int? width;

  UserPhoto({
    this.etag,
    this.height,
    this.id,
    this.kind,
    this.mimeType,
    this.photoData,
    this.primaryEmail,
    this.width,
  });

  UserPhoto.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          photoData: json_.containsKey('photoData')
              ? json_['photoData'] as core.String
              : null,
          primaryEmail: json_.containsKey('primaryEmail')
              ? json_['primaryEmail'] as core.String
              : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (height != null) 'height': height!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (photoData != null) 'photoData': photoData!,
        if (primaryEmail != null) 'primaryEmail': primaryEmail!,
        if (width != null) 'width': width!,
      };
}

class UserUndelete {
  /// OrgUnit of User
  core.String? orgUnitPath;

  UserUndelete({
    this.orgUnitPath,
  });

  UserUndelete.fromJson(core.Map json_)
      : this(
          orgUnitPath: json_.containsKey('orgUnitPath')
              ? json_['orgUnitPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (orgUnitPath != null) 'orgUnitPath': orgUnitPath!,
      };
}

class Users {
  /// ETag of the resource.
  core.String? etag;

  /// Kind of resource this is.
  core.String? kind;

  /// Token used to access next page of this result.
  core.String? nextPageToken;

  /// Event that triggered this response (only used in case of Push Response)
  core.String? triggerEvent;

  /// List of user objects.
  core.List<User>? users;

  Users({
    this.etag,
    this.kind,
    this.nextPageToken,
    this.triggerEvent,
    this.users,
  });

  Users.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          triggerEvent: json_.containsKey('trigger_event')
              ? json_['trigger_event'] as core.String
              : null,
          users: json_.containsKey('users')
              ? (json_['users'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (triggerEvent != null) 'trigger_event': triggerEvent!,
        if (users != null) 'users': users!,
      };
}

/// The Directory API allows you to view, generate, and invalidate backup
/// verification codes for a user.
class VerificationCode {
  /// ETag of the resource.
  core.String? etag;

  /// The type of the resource.
  ///
  /// This is always `admin#directory#verificationCode`.
  core.String? kind;

  /// The obfuscated unique ID of the user.
  core.String? userId;

  /// A current verification code for the user.
  ///
  /// Invalidated or used verification codes are not returned as part of the
  /// result.
  core.String? verificationCode;

  VerificationCode({
    this.etag,
    this.kind,
    this.userId,
    this.verificationCode,
  });

  VerificationCode.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
          verificationCode: json_.containsKey('verificationCode')
              ? json_['verificationCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (userId != null) 'userId': userId!,
        if (verificationCode != null) 'verificationCode': verificationCode!,
      };
}

/// JSON response template for List verification codes operation in Directory
/// API.
class VerificationCodes {
  /// ETag of the resource.
  core.String? etag;

  /// A list of verification code resources.
  core.List<VerificationCode>? items;

  /// The type of the resource.
  ///
  /// This is always `admin#directory#verificationCodesList`.
  core.String? kind;

  VerificationCodes({
    this.etag,
    this.items,
    this.kind,
  });

  VerificationCodes.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => VerificationCode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}
