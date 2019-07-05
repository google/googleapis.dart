// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.admin.directory_v1;

import 'dart:core' as core;
import 'dart:collection' as collection;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client admin/directory_v1';

/// Manages enterprise resources such as users and groups, administrative
/// notifications, security features, and more.
class AdminApi {
  /// View and manage customer related information
  static const AdminDirectoryCustomerScope =
      "https://www.googleapis.com/auth/admin.directory.customer";

  /// View customer related information
  static const AdminDirectoryCustomerReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.customer.readonly";

  /// View and manage your Chrome OS devices' metadata
  static const AdminDirectoryDeviceChromeosScope =
      "https://www.googleapis.com/auth/admin.directory.device.chromeos";

  /// View your Chrome OS devices' metadata
  static const AdminDirectoryDeviceChromeosReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly";

  /// View and manage your mobile devices' metadata
  static const AdminDirectoryDeviceMobileScope =
      "https://www.googleapis.com/auth/admin.directory.device.mobile";

  /// Manage your mobile devices by performing administrative tasks
  static const AdminDirectoryDeviceMobileActionScope =
      "https://www.googleapis.com/auth/admin.directory.device.mobile.action";

  /// View your mobile devices' metadata
  static const AdminDirectoryDeviceMobileReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly";

  /// View and manage the provisioning of domains for your customers
  static const AdminDirectoryDomainScope =
      "https://www.googleapis.com/auth/admin.directory.domain";

  /// View domains related to your customers
  static const AdminDirectoryDomainReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.domain.readonly";

  /// View and manage the provisioning of groups on your domain
  static const AdminDirectoryGroupScope =
      "https://www.googleapis.com/auth/admin.directory.group";

  /// View and manage group subscriptions on your domain
  static const AdminDirectoryGroupMemberScope =
      "https://www.googleapis.com/auth/admin.directory.group.member";

  /// View group subscriptions on your domain
  static const AdminDirectoryGroupMemberReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.group.member.readonly";

  /// View groups on your domain
  static const AdminDirectoryGroupReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.group.readonly";

  /// View and manage notifications received on your domain
  static const AdminDirectoryNotificationsScope =
      "https://www.googleapis.com/auth/admin.directory.notifications";

  /// View and manage organization units on your domain
  static const AdminDirectoryOrgunitScope =
      "https://www.googleapis.com/auth/admin.directory.orgunit";

  /// View organization units on your domain
  static const AdminDirectoryOrgunitReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.orgunit.readonly";

  /// View and manage the provisioning of calendar resources on your domain
  static const AdminDirectoryResourceCalendarScope =
      "https://www.googleapis.com/auth/admin.directory.resource.calendar";

  /// View calendar resources on your domain
  static const AdminDirectoryResourceCalendarReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly";

  /// Manage delegated admin roles for your domain
  static const AdminDirectoryRolemanagementScope =
      "https://www.googleapis.com/auth/admin.directory.rolemanagement";

  /// View delegated admin roles for your domain
  static const AdminDirectoryRolemanagementReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly";

  /// View and manage the provisioning of users on your domain
  static const AdminDirectoryUserScope =
      "https://www.googleapis.com/auth/admin.directory.user";

  /// View and manage user aliases on your domain
  static const AdminDirectoryUserAliasScope =
      "https://www.googleapis.com/auth/admin.directory.user.alias";

  /// View user aliases on your domain
  static const AdminDirectoryUserAliasReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.user.alias.readonly";

  /// View users on your domain
  static const AdminDirectoryUserReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.user.readonly";

  /// Manage data access permissions for users on your domain
  static const AdminDirectoryUserSecurityScope =
      "https://www.googleapis.com/auth/admin.directory.user.security";

  /// View and manage the provisioning of user schemas on your domain
  static const AdminDirectoryUserschemaScope =
      "https://www.googleapis.com/auth/admin.directory.userschema";

  /// View user schemas on your domain
  static const AdminDirectoryUserschemaReadonlyScope =
      "https://www.googleapis.com/auth/admin.directory.userschema.readonly";

  final commons.ApiRequester _requester;

  AspsResourceApi get asps => new AspsResourceApi(_requester);
  ChannelsResourceApi get channels => new ChannelsResourceApi(_requester);
  ChromeosdevicesResourceApi get chromeosdevices =>
      new ChromeosdevicesResourceApi(_requester);
  CustomersResourceApi get customers => new CustomersResourceApi(_requester);
  DomainAliasesResourceApi get domainAliases =>
      new DomainAliasesResourceApi(_requester);
  DomainsResourceApi get domains => new DomainsResourceApi(_requester);
  GroupsResourceApi get groups => new GroupsResourceApi(_requester);
  MembersResourceApi get members => new MembersResourceApi(_requester);
  MobiledevicesResourceApi get mobiledevices =>
      new MobiledevicesResourceApi(_requester);
  NotificationsResourceApi get notifications =>
      new NotificationsResourceApi(_requester);
  OrgunitsResourceApi get orgunits => new OrgunitsResourceApi(_requester);
  PrivilegesResourceApi get privileges => new PrivilegesResourceApi(_requester);
  ResolvedAppAccessSettingsResourceApi get resolvedAppAccessSettings =>
      new ResolvedAppAccessSettingsResourceApi(_requester);
  ResourcesResourceApi get resources => new ResourcesResourceApi(_requester);
  RoleAssignmentsResourceApi get roleAssignments =>
      new RoleAssignmentsResourceApi(_requester);
  RolesResourceApi get roles => new RolesResourceApi(_requester);
  SchemasResourceApi get schemas => new SchemasResourceApi(_requester);
  TokensResourceApi get tokens => new TokensResourceApi(_requester);
  UsersResourceApi get users => new UsersResourceApi(_requester);
  VerificationCodesResourceApi get verificationCodes =>
      new VerificationCodesResourceApi(_requester);

  AdminApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "admin/directory/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AspsResourceApi {
  final commons.ApiRequester _requester;

  AspsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Delete an ASP issued by a user.
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
  async.Future delete(core.String userKey, core.int codeId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (codeId == null) {
      throw new core.ArgumentError("Parameter codeId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/asps/' +
        commons.Escaper.ecapeVariable('$codeId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Get information about an ASP issued by a user.
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
  async.Future<Asp> get(core.String userKey, core.int codeId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (codeId == null) {
      throw new core.ArgumentError("Parameter codeId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/asps/' +
        commons.Escaper.ecapeVariable('$codeId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Asp.fromJson(data));
  }

  /// List the ASPs issued by a user.
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
  async.Future<Asps> list(core.String userKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey') + '/asps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Asps.fromJson(data));
  }
}

class ChannelsResourceApi {
  final commons.ApiRequester _requester;

  ChannelsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Stop watching resources through this channel
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
  async.Future stop(Channel request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = '/admin/directory_v1/channels/stop';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class ChromeosdevicesResourceApi {
  final commons.ApiRequester _requester;

  ChromeosdevicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Take action on Chrome OS Device
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [resourceId] - Immutable ID of Chrome OS Device
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future action(ChromeOsDeviceAction request, core.String customerId,
      core.String resourceId,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (resourceId == null) {
      throw new core.ArgumentError("Parameter resourceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.Escaper.ecapeVariable('$resourceId') +
        '/action';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieve Chrome OS Device
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [deviceId] - Immutable ID of Chrome OS Device
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
  async.Future<ChromeOsDevice> get(core.String customerId, core.String deviceId,
      {core.String projection, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.Escaper.ecapeVariable('$deviceId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ChromeOsDevice.fromJson(data));
  }

  /// Retrieve all Chrome OS Devices of a customer (paginated)
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [maxResults] - Maximum number of results to return. Default is 100
  ///
  /// [orderBy] - Column to use for sorting results
  /// Possible string values are:
  /// - "annotatedLocation" : Chromebook location as annotated by the
  /// administrator.
  /// - "annotatedUser" : Chromebook user as annotated by administrator.
  /// - "lastSync" : Chromebook last sync.
  /// - "notes" : Chromebook notes as annotated by the administrator.
  /// - "serialNumber" : Chromebook Serial Number.
  /// - "status" : Chromebook status.
  /// - "supportEndDate" : Chromebook support end date.
  ///
  /// [orgUnitPath] - Full path of the organizational unit or its ID
  ///
  /// [pageToken] - Token to specify next page in the list
  ///
  /// [projection] - Restrict information returned to a set of selected fields.
  /// Possible string values are:
  /// - "BASIC" : Includes only the basic metadata fields (e.g., deviceId,
  /// serialNumber, status, and user)
  /// - "FULL" : Includes all metadata fields
  ///
  /// [query] - Search string in the format given at
  /// http://support.google.com/chromeos/a/bin/answer.py?answer=1698333
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Only of use when orderBy is also used
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
  async.Future<ChromeOsDevices> list(core.String customerId,
      {core.int maxResults,
      core.String orderBy,
      core.String orgUnitPath,
      core.String pageToken,
      core.String projection,
      core.String query,
      core.String sortOrder,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (orgUnitPath != null) {
      _queryParams["orgUnitPath"] = [orgUnitPath];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (sortOrder != null) {
      _queryParams["sortOrder"] = [sortOrder];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/chromeos';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ChromeOsDevices.fromJson(data));
  }

  /// Move or insert multiple Chrome OS Devices to organizational unit
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
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
  async.Future moveDevicesToOu(ChromeOsMoveDevicesToOu request,
      core.String customerId, core.String orgUnitPath,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (orgUnitPath == null) {
      throw new core.ArgumentError("Parameter orgUnitPath is required.");
    }
    _queryParams["orgUnitPath"] = [orgUnitPath];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/chromeos/moveDevicesToOu';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Update Chrome OS Device. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [deviceId] - Immutable ID of Chrome OS Device
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
      ChromeOsDevice request, core.String customerId, core.String deviceId,
      {core.String projection, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.Escaper.ecapeVariable('$deviceId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ChromeOsDevice.fromJson(data));
  }

  /// Update Chrome OS Device
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [deviceId] - Immutable ID of Chrome OS Device
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
      ChromeOsDevice request, core.String customerId, core.String deviceId,
      {core.String projection, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/chromeos/' +
        commons.Escaper.ecapeVariable('$deviceId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ChromeOsDevice.fromJson(data));
  }
}

class CustomersResourceApi {
  final commons.ApiRequester _requester;

  CustomersResourceApi(commons.ApiRequester client) : _requester = client;

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
  async.Future<Customer> get(core.String customerKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerKey == null) {
      throw new core.ArgumentError("Parameter customerKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerKey');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Customer.fromJson(data));
  }

  /// Updates a customer. This method supports patch semantics.
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
  async.Future<Customer> patch(Customer request, core.String customerKey,
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
    if (customerKey == null) {
      throw new core.ArgumentError("Parameter customerKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerKey');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Customer.fromJson(data));
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
  async.Future<Customer> update(Customer request, core.String customerKey,
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
    if (customerKey == null) {
      throw new core.ArgumentError("Parameter customerKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customers/' + commons.Escaper.ecapeVariable('$customerKey');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Customer.fromJson(data));
  }
}

class DomainAliasesResourceApi {
  final commons.ApiRequester _requester;

  DomainAliasesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a Domain Alias of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future delete(core.String customer, core.String domainAliasName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (domainAliasName == null) {
      throw new core.ArgumentError("Parameter domainAliasName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/domainaliases/' +
        commons.Escaper.ecapeVariable('$domainAliasName');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a domain alias of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
      core.String customer, core.String domainAliasName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (domainAliasName == null) {
      throw new core.ArgumentError("Parameter domainAliasName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/domainaliases/' +
        commons.Escaper.ecapeVariable('$domainAliasName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DomainAlias.fromJson(data));
  }

  /// Inserts a Domain alias of the customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<DomainAlias> insert(DomainAlias request, core.String customer,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/domainaliases';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DomainAlias.fromJson(data));
  }

  /// Lists the domain aliases of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<DomainAliases> list(core.String customer,
      {core.String parentDomainName, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (parentDomainName != null) {
      _queryParams["parentDomainName"] = [parentDomainName];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/domainaliases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DomainAliases.fromJson(data));
  }
}

class DomainsResourceApi {
  final commons.ApiRequester _requester;

  DomainsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a domain of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future delete(core.String customer, core.String domainName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (domainName == null) {
      throw new core.ArgumentError("Parameter domainName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/domains/' +
        commons.Escaper.ecapeVariable('$domainName');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a domain of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<Domains> get(core.String customer, core.String domainName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (domainName == null) {
      throw new core.ArgumentError("Parameter domainName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/domains/' +
        commons.Escaper.ecapeVariable('$domainName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Domains.fromJson(data));
  }

  /// Inserts a domain of the customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<Domains> insert(Domains request, core.String customer,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'customer/' + commons.Escaper.ecapeVariable('$customer') + '/domains';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Domains.fromJson(data));
  }

  /// Lists the domains of the customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<Domains2> list(core.String customer, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'customer/' + commons.Escaper.ecapeVariable('$customer') + '/domains';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Domains2.fromJson(data));
  }
}

class GroupsResourceApi {
  final commons.ApiRequester _requester;

  GroupsAliasesResourceApi get aliases =>
      new GroupsAliasesResourceApi(_requester);

  GroupsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Delete Group
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String groupKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'groups/' + commons.Escaper.ecapeVariable('$groupKey');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieve Group
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
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
  async.Future<Group> get(core.String groupKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' + commons.Escaper.ecapeVariable('$groupKey');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }

  /// Create Group
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
  async.Future<Group> insert(Group request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }

  /// Retrieve all groups of a domain or of a user given a userKey (paginated)
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account. In case of multi-domain,
  /// to fetch all groups for a customer, fill this field instead of domain.
  ///
  /// [domain] - Name of the domain. Fill this field to get groups from only
  /// this domain. To return all groups in a multi-domain fill customer field
  /// instead.
  ///
  /// [maxResults] - Maximum number of results to return. Default is 200
  ///
  /// [orderBy] - Column to use for sorting results
  /// Possible string values are:
  /// - "email" : Email of the group.
  ///
  /// [pageToken] - Token to specify next page in the list
  ///
  /// [query] - Query string search. Should be of the form "". Complete
  /// documentation is at
  /// https://developers.google.com/admin-sdk/directory/v1/guides/search-groups
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Only of use when orderBy is also used
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [userKey] - Email or immutable Id of the user if only those groups are to
  /// be listed, the given user is a member of. If Id, it should match with id
  /// of user object
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
  async.Future<Groups> list(
      {core.String customer,
      core.String domain,
      core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String query,
      core.String sortOrder,
      core.String userKey,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer != null) {
      _queryParams["customer"] = [customer];
    }
    if (domain != null) {
      _queryParams["domain"] = [domain];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (sortOrder != null) {
      _queryParams["sortOrder"] = [sortOrder];
    }
    if (userKey != null) {
      _queryParams["userKey"] = [userKey];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Groups.fromJson(data));
  }

  /// Update Group. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group. If ID, it should match
  /// with id of group object
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
  async.Future<Group> patch(Group request, core.String groupKey,
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
    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' + commons.Escaper.ecapeVariable('$groupKey');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }

  /// Update Group
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group. If ID, it should match
  /// with id of group object
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
  async.Future<Group> update(Group request, core.String groupKey,
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
    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' + commons.Escaper.ecapeVariable('$groupKey');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }
}

class GroupsAliasesResourceApi {
  final commons.ApiRequester _requester;

  GroupsAliasesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Remove a alias for the group
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
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
  async.Future delete(core.String groupKey, core.String alias,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if (alias == null) {
      throw new core.ArgumentError("Parameter alias is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'groups/' +
        commons.Escaper.ecapeVariable('$groupKey') +
        '/aliases/' +
        commons.Escaper.ecapeVariable('$alias');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Add a alias for the group
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
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
  async.Future<Alias> insert(Alias request, core.String groupKey,
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
    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' + commons.Escaper.ecapeVariable('$groupKey') + '/aliases';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Alias.fromJson(data));
  }

  /// List all aliases for a group
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
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
  async.Future<Aliases> list(core.String groupKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' + commons.Escaper.ecapeVariable('$groupKey') + '/aliases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Aliases.fromJson(data));
  }
}

class MembersResourceApi {
  final commons.ApiRequester _requester;

  MembersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Remove membership.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
  ///
  /// [memberKey] - Email or immutable ID of the member
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String groupKey, core.String memberKey,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if (memberKey == null) {
      throw new core.ArgumentError("Parameter memberKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'groups/' +
        commons.Escaper.ecapeVariable('$groupKey') +
        '/members/' +
        commons.Escaper.ecapeVariable('$memberKey');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieve Group Member
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
  ///
  /// [memberKey] - Email or immutable ID of the member
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
  async.Future<Member> get(core.String groupKey, core.String memberKey,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if (memberKey == null) {
      throw new core.ArgumentError("Parameter memberKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' +
        commons.Escaper.ecapeVariable('$groupKey') +
        '/members/' +
        commons.Escaper.ecapeVariable('$memberKey');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Member.fromJson(data));
  }

  /// Checks whether the given user is a member of the group. Membership can be
  /// direct or nested.
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
      core.String groupKey, core.String memberKey,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if (memberKey == null) {
      throw new core.ArgumentError("Parameter memberKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' +
        commons.Escaper.ecapeVariable('$groupKey') +
        '/hasMember/' +
        commons.Escaper.ecapeVariable('$memberKey');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new MembersHasMember.fromJson(data));
  }

  /// Add user to the specified group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
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
  async.Future<Member> insert(Member request, core.String groupKey,
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
    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' + commons.Escaper.ecapeVariable('$groupKey') + '/members';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Member.fromJson(data));
  }

  /// Retrieve all members in a group (paginated)
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group
  ///
  /// [includeDerivedMembership] - Whether to list indirect memberships.
  /// Default: false.
  ///
  /// [maxResults] - Maximum number of results to return. Default is 200
  ///
  /// [pageToken] - Token to specify next page in the list
  ///
  /// [roles] - Comma separated role values to filter list results on.
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
  async.Future<Members> list(core.String groupKey,
      {core.bool includeDerivedMembership,
      core.int maxResults,
      core.String pageToken,
      core.String roles,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if (includeDerivedMembership != null) {
      _queryParams["includeDerivedMembership"] = [
        "${includeDerivedMembership}"
      ];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (roles != null) {
      _queryParams["roles"] = [roles];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' + commons.Escaper.ecapeVariable('$groupKey') + '/members';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Members.fromJson(data));
  }

  /// Update membership of a user in the specified group. This method supports
  /// patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group. If ID, it should match
  /// with id of group object
  ///
  /// [memberKey] - Email or immutable ID of the user. If ID, it should match
  /// with id of member object
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
      Member request, core.String groupKey, core.String memberKey,
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
    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if (memberKey == null) {
      throw new core.ArgumentError("Parameter memberKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' +
        commons.Escaper.ecapeVariable('$groupKey') +
        '/members/' +
        commons.Escaper.ecapeVariable('$memberKey');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Member.fromJson(data));
  }

  /// Update membership of a user in the specified group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupKey] - Email or immutable ID of the group. If ID, it should match
  /// with id of group object
  ///
  /// [memberKey] - Email or immutable ID of the user. If ID, it should match
  /// with id of member object
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
      Member request, core.String groupKey, core.String memberKey,
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
    if (groupKey == null) {
      throw new core.ArgumentError("Parameter groupKey is required.");
    }
    if (memberKey == null) {
      throw new core.ArgumentError("Parameter memberKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'groups/' +
        commons.Escaper.ecapeVariable('$groupKey') +
        '/members/' +
        commons.Escaper.ecapeVariable('$memberKey');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Member.fromJson(data));
  }
}

class MobiledevicesResourceApi {
  final commons.ApiRequester _requester;

  MobiledevicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Take action on Mobile Device
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [resourceId] - Immutable ID of Mobile Device
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future action(MobileDeviceAction request, core.String customerId,
      core.String resourceId,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (resourceId == null) {
      throw new core.ArgumentError("Parameter resourceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/mobile/' +
        commons.Escaper.ecapeVariable('$resourceId') +
        '/action';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Delete Mobile Device
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [resourceId] - Immutable ID of Mobile Device
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String customerId, core.String resourceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (resourceId == null) {
      throw new core.ArgumentError("Parameter resourceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/mobile/' +
        commons.Escaper.ecapeVariable('$resourceId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieve Mobile Device
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [resourceId] - Immutable ID of Mobile Device
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
  async.Future<MobileDevice> get(core.String customerId, core.String resourceId,
      {core.String projection, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (resourceId == null) {
      throw new core.ArgumentError("Parameter resourceId is required.");
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/mobile/' +
        commons.Escaper.ecapeVariable('$resourceId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new MobileDevice.fromJson(data));
  }

  /// Retrieve all Mobile Devices of a customer (paginated)
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [maxResults] - Maximum number of results to return. Default is 100
  ///
  /// [orderBy] - Column to use for sorting results
  /// Possible string values are:
  /// - "deviceId" : Mobile Device serial number.
  /// - "email" : Owner user email.
  /// - "lastSync" : Last policy settings sync date time of the device.
  /// - "model" : Mobile Device model.
  /// - "name" : Owner user name.
  /// - "os" : Mobile operating system.
  /// - "status" : Status of the device.
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
  /// http://support.google.com/a/bin/answer.py?answer=1408863#search
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Only of use when orderBy is also used
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
  async.Future<MobileDevices> list(core.String customerId,
      {core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String projection,
      core.String query,
      core.String sortOrder,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (sortOrder != null) {
      _queryParams["sortOrder"] = [sortOrder];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/devices/mobile';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new MobileDevices.fromJson(data));
  }
}

class NotificationsResourceApi {
  final commons.ApiRequester _requester;

  NotificationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a notification
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. The
  /// customerId is also returned as part of the Users resource.
  ///
  /// [notificationId] - The unique ID of the notification.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String customer, core.String notificationId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (notificationId == null) {
      throw new core.ArgumentError("Parameter notificationId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/notifications/' +
        commons.Escaper.ecapeVariable('$notificationId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a notification.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. The
  /// customerId is also returned as part of the Users resource.
  ///
  /// [notificationId] - The unique ID of the notification.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Notification].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Notification> get(
      core.String customer, core.String notificationId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (notificationId == null) {
      throw new core.ArgumentError("Parameter notificationId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/notifications/' +
        commons.Escaper.ecapeVariable('$notificationId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Notification.fromJson(data));
  }

  /// Retrieves a list of notifications.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account.
  ///
  /// [language] - The ISO 639-1 code of the language notifications are returned
  /// in. The default is English (en).
  ///
  /// [maxResults] - Maximum number of notifications to return per page. The
  /// default is 100.
  ///
  /// [pageToken] - The token to specify the page of results to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Notifications].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Notifications> list(core.String customer,
      {core.String language,
      core.int maxResults,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (language != null) {
      _queryParams["language"] = [language];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/notifications';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Notifications.fromJson(data));
  }

  /// Updates a notification. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account.
  ///
  /// [notificationId] - The unique ID of the notification.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Notification].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Notification> patch(
      Notification request, core.String customer, core.String notificationId,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (notificationId == null) {
      throw new core.ArgumentError("Parameter notificationId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/notifications/' +
        commons.Escaper.ecapeVariable('$notificationId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Notification.fromJson(data));
  }

  /// Updates a notification.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account.
  ///
  /// [notificationId] - The unique ID of the notification.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Notification].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Notification> update(
      Notification request, core.String customer, core.String notificationId,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (notificationId == null) {
      throw new core.ArgumentError("Parameter notificationId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/notifications/' +
        commons.Escaper.ecapeVariable('$notificationId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Notification.fromJson(data));
  }
}

class OrgunitsResourceApi {
  final commons.ApiRequester _requester;

  OrgunitsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Remove organizational unit
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [orgUnitPath] - Full path of the organizational unit or its ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
      core.String customerId, core.List<core.String> orgUnitPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (orgUnitPath == null || orgUnitPath.isEmpty) {
      throw new core.ArgumentError("Parameter orgUnitPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/orgunits' +
        '/' +
        (orgUnitPath)
            .map((item) => commons.Escaper.ecapePathComponent(item))
            .join('/');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieve organizational unit
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [orgUnitPath] - Full path of the organizational unit or its ID
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
      core.String customerId, core.List<core.String> orgUnitPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (orgUnitPath == null || orgUnitPath.isEmpty) {
      throw new core.ArgumentError("Parameter orgUnitPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/orgunits' +
        '/' +
        (orgUnitPath)
            .map((item) => commons.Escaper.ecapePathComponent(item))
            .join('/');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgUnit.fromJson(data));
  }

  /// Add organizational unit
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
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
  async.Future<OrgUnit> insert(OrgUnit request, core.String customerId,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/orgunits';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgUnit.fromJson(data));
  }

  /// Retrieve all organizational units
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [orgUnitPath] - the URL-encoded organizational unit's path or its ID
  ///
  /// [type] - Whether to return all sub-organizations or just immediate
  /// children
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
  async.Future<OrgUnits> list(core.String customerId,
      {core.String orgUnitPath, core.String type, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (orgUnitPath != null) {
      _queryParams["orgUnitPath"] = [orgUnitPath];
    }
    if (type != null) {
      _queryParams["type"] = [type];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/orgunits';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgUnits.fromJson(data));
  }

  /// Update organizational unit. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [orgUnitPath] - Full path of the organizational unit or its ID
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
  async.Future<OrgUnit> patch(OrgUnit request, core.String customerId,
      core.List<core.String> orgUnitPath,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (orgUnitPath == null || orgUnitPath.isEmpty) {
      throw new core.ArgumentError("Parameter orgUnitPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/orgunits' +
        '/' +
        (orgUnitPath)
            .map((item) => commons.Escaper.ecapePathComponent(item))
            .join('/');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgUnit.fromJson(data));
  }

  /// Update organizational unit
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [orgUnitPath] - Full path of the organizational unit or its ID
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
  async.Future<OrgUnit> update(OrgUnit request, core.String customerId,
      core.List<core.String> orgUnitPath,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (orgUnitPath == null || orgUnitPath.isEmpty) {
      throw new core.ArgumentError("Parameter orgUnitPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/orgunits' +
        '/' +
        (orgUnitPath)
            .map((item) => commons.Escaper.ecapePathComponent(item))
            .join('/');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgUnit.fromJson(data));
  }
}

class PrivilegesResourceApi {
  final commons.ApiRequester _requester;

  PrivilegesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a paginated list of all privileges for a customer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<Privileges> list(core.String customer, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roles/ALL/privileges';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Privileges.fromJson(data));
  }
}

class ResolvedAppAccessSettingsResourceApi {
  final commons.ApiRequester _requester;

  ResolvedAppAccessSettingsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves resolved app access settings of the logged in user.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppAccessCollections].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppAccessCollections> GetSettings({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'resolvedappaccesssettings';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AppAccessCollections.fromJson(data));
  }

  /// Retrieves the list of apps trusted by the admin of the logged in user.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TrustedApps].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TrustedApps> ListTrustedApps({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'trustedapps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TrustedApps.fromJson(data));
  }
}

class ResourcesResourceApi {
  final commons.ApiRequester _requester;

  ResourcesBuildingsResourceApi get buildings =>
      new ResourcesBuildingsResourceApi(_requester);
  ResourcesCalendarsResourceApi get calendars =>
      new ResourcesCalendarsResourceApi(_requester);
  ResourcesFeaturesResourceApi get features =>
      new ResourcesFeaturesResourceApi(_requester);

  ResourcesResourceApi(commons.ApiRequester client) : _requester = client;
}

class ResourcesBuildingsResourceApi {
  final commons.ApiRequester _requester;

  ResourcesBuildingsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a building.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
  ///
  /// [buildingId] - The ID of the building to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String customer, core.String buildingId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (buildingId == null) {
      throw new core.ArgumentError("Parameter buildingId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/buildings/' +
        commons.Escaper.ecapeVariable('$buildingId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a building.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future<Building> get(core.String customer, core.String buildingId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (buildingId == null) {
      throw new core.ArgumentError("Parameter buildingId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/buildings/' +
        commons.Escaper.ecapeVariable('$buildingId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Building.fromJson(data));
  }

  /// Inserts a building.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
  ///
  /// [coordinatesSource] - Source from which Building.coordinates are derived.
  /// Possible string values are:
  /// - "CLIENT_SPECIFIED" : Building.coordinates are set to the coordinates
  /// included in the request.
  /// - "RESOLVED_FROM_ADDRESS" : Building.coordinates are automatically
  /// populated based on the postal address.
  /// - "SOURCE_UNSPECIFIED" : Defaults to RESOLVED_FROM_ADDRESS if postal
  /// address is provided. Otherwise, defaults to CLIENT_SPECIFIED if
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
  async.Future<Building> insert(Building request, core.String customer,
      {core.String coordinatesSource, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (coordinatesSource != null) {
      _queryParams["coordinatesSource"] = [coordinatesSource];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/buildings';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Building.fromJson(data));
  }

  /// Retrieves a list of buildings for an account.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future<Buildings> list(core.String customer,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/buildings';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Buildings.fromJson(data));
  }

  /// Updates a building. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
  ///
  /// [buildingId] - The ID of the building to update.
  ///
  /// [coordinatesSource] - Source from which Building.coordinates are derived.
  /// Possible string values are:
  /// - "CLIENT_SPECIFIED" : Building.coordinates are set to the coordinates
  /// included in the request.
  /// - "RESOLVED_FROM_ADDRESS" : Building.coordinates are automatically
  /// populated based on the postal address.
  /// - "SOURCE_UNSPECIFIED" : Defaults to RESOLVED_FROM_ADDRESS if postal
  /// address is provided. Otherwise, defaults to CLIENT_SPECIFIED if
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
      Building request, core.String customer, core.String buildingId,
      {core.String coordinatesSource, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (buildingId == null) {
      throw new core.ArgumentError("Parameter buildingId is required.");
    }
    if (coordinatesSource != null) {
      _queryParams["coordinatesSource"] = [coordinatesSource];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/buildings/' +
        commons.Escaper.ecapeVariable('$buildingId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Building.fromJson(data));
  }

  /// Updates a building.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
  ///
  /// [buildingId] - The ID of the building to update.
  ///
  /// [coordinatesSource] - Source from which Building.coordinates are derived.
  /// Possible string values are:
  /// - "CLIENT_SPECIFIED" : Building.coordinates are set to the coordinates
  /// included in the request.
  /// - "RESOLVED_FROM_ADDRESS" : Building.coordinates are automatically
  /// populated based on the postal address.
  /// - "SOURCE_UNSPECIFIED" : Defaults to RESOLVED_FROM_ADDRESS if postal
  /// address is provided. Otherwise, defaults to CLIENT_SPECIFIED if
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
      Building request, core.String customer, core.String buildingId,
      {core.String coordinatesSource, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (buildingId == null) {
      throw new core.ArgumentError("Parameter buildingId is required.");
    }
    if (coordinatesSource != null) {
      _queryParams["coordinatesSource"] = [coordinatesSource];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/buildings/' +
        commons.Escaper.ecapeVariable('$buildingId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Building.fromJson(data));
  }
}

class ResourcesCalendarsResourceApi {
  final commons.ApiRequester _requester;

  ResourcesCalendarsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a calendar resource.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future delete(core.String customer, core.String calendarResourceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (calendarResourceId == null) {
      throw new core.ArgumentError("Parameter calendarResourceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/calendars/' +
        commons.Escaper.ecapeVariable('$calendarResourceId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a calendar resource.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
      core.String customer, core.String calendarResourceId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (calendarResourceId == null) {
      throw new core.ArgumentError("Parameter calendarResourceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/calendars/' +
        commons.Escaper.ecapeVariable('$calendarResourceId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CalendarResource.fromJson(data));
  }

  /// Inserts a calendar resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
      CalendarResource request, core.String customer,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/calendars';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CalendarResource.fromJson(data));
  }

  /// Retrieves a list of calendar resources for an account.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "1" and "500".
  ///
  /// [orderBy] - Field(s) to sort results by in either ascending or descending
  /// order. Supported fields include resourceId, resourceName, capacity,
  /// buildingId, and floorName. If no order is specified, defaults to
  /// ascending. Should be of the form "field [asc|desc], field [asc|desc],
  /// ...". For example buildingId, capacity desc would return results sorted
  /// first by buildingId in ascending order then by capacity in descending
  /// order.
  ///
  /// [pageToken] - Token to specify the next page in the list.
  ///
  /// [query] - String query used to filter results. Should be of the form
  /// "field operator value" where field can be any of supported fields and
  /// operators can be any of supported operations. Operators include '=' for
  /// exact match and ':' for prefix match or HAS match where applicable. For
  /// prefix match, the value should always be followed by a *. Supported fields
  /// include generatedResourceName, name, buildingId,
  /// featureInstances.feature.name. For example buildingId=US-NYC-9TH AND
  /// featureInstances.feature.name:Phone.
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
  async.Future<CalendarResources> list(core.String customer,
      {core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/calendars';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CalendarResources.fromJson(data));
  }

  /// Updates a calendar resource.
  ///
  /// This method supports patch semantics, meaning you only need to include the
  /// fields you wish to update. Fields that are not present in the request will
  /// be preserved. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future<CalendarResource> patch(CalendarResource request,
      core.String customer, core.String calendarResourceId,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (calendarResourceId == null) {
      throw new core.ArgumentError("Parameter calendarResourceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/calendars/' +
        commons.Escaper.ecapeVariable('$calendarResourceId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CalendarResource.fromJson(data));
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
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future<CalendarResource> update(CalendarResource request,
      core.String customer, core.String calendarResourceId,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (calendarResourceId == null) {
      throw new core.ArgumentError("Parameter calendarResourceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/calendars/' +
        commons.Escaper.ecapeVariable('$calendarResourceId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CalendarResource.fromJson(data));
  }
}

class ResourcesFeaturesResourceApi {
  final commons.ApiRequester _requester;

  ResourcesFeaturesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a feature.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future delete(core.String customer, core.String featureKey,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (featureKey == null) {
      throw new core.ArgumentError("Parameter featureKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/features/' +
        commons.Escaper.ecapeVariable('$featureKey');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a feature.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future<Feature> get(core.String customer, core.String featureKey,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (featureKey == null) {
      throw new core.ArgumentError("Parameter featureKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/features/' +
        commons.Escaper.ecapeVariable('$featureKey');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Feature.fromJson(data));
  }

  /// Inserts a feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future<Feature> insert(Feature request, core.String customer,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/features';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Feature.fromJson(data));
  }

  /// Retrieves a list of features for an account.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future<Features> list(core.String customer,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/features';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Features.fromJson(data));
  }

  /// Updates a feature. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
      Feature request, core.String customer, core.String featureKey,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (featureKey == null) {
      throw new core.ArgumentError("Parameter featureKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/features/' +
        commons.Escaper.ecapeVariable('$featureKey');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Feature.fromJson(data));
  }

  /// Renames a feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
  async.Future rename(
      FeatureRename request, core.String customer, core.String oldName,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (oldName == null) {
      throw new core.ArgumentError("Parameter oldName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/features/' +
        commons.Escaper.ecapeVariable('$oldName') +
        '/rename';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Updates a feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - The unique ID for the customer's G Suite account. As an
  /// account administrator, you can also use the my_customer alias to represent
  /// your account's customer ID.
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
      Feature request, core.String customer, core.String featureKey,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (featureKey == null) {
      throw new core.ArgumentError("Parameter featureKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/resources/features/' +
        commons.Escaper.ecapeVariable('$featureKey');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Feature.fromJson(data));
  }
}

class RoleAssignmentsResourceApi {
  final commons.ApiRequester _requester;

  RoleAssignmentsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a role assignment.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future delete(core.String customer, core.String roleAssignmentId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (roleAssignmentId == null) {
      throw new core.ArgumentError("Parameter roleAssignmentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roleassignments/' +
        commons.Escaper.ecapeVariable('$roleAssignmentId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieve a role assignment.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
      core.String customer, core.String roleAssignmentId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (roleAssignmentId == null) {
      throw new core.ArgumentError("Parameter roleAssignmentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roleassignments/' +
        commons.Escaper.ecapeVariable('$roleAssignmentId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RoleAssignment.fromJson(data));
  }

  /// Creates a role assignment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
      RoleAssignment request, core.String customer,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roleassignments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RoleAssignment.fromJson(data));
  }

  /// Retrieves a paginated list of all roleAssignments.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<RoleAssignments> list(core.String customer,
      {core.int maxResults,
      core.String pageToken,
      core.String roleId,
      core.String userKey,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (roleId != null) {
      _queryParams["roleId"] = [roleId];
    }
    if (userKey != null) {
      _queryParams["userKey"] = [userKey];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roleassignments';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RoleAssignments.fromJson(data));
  }
}

class RolesResourceApi {
  final commons.ApiRequester _requester;

  RolesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a role.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future delete(core.String customer, core.String roleId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (roleId == null) {
      throw new core.ArgumentError("Parameter roleId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roles/' +
        commons.Escaper.ecapeVariable('$roleId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a role.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<Role> get(core.String customer, core.String roleId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (roleId == null) {
      throw new core.ArgumentError("Parameter roleId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roles/' +
        commons.Escaper.ecapeVariable('$roleId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Creates a role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<Role> insert(Role request, core.String customer,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' + commons.Escaper.ecapeVariable('$customer') + '/roles';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Retrieves a paginated list of all the roles in a domain.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
  async.Future<Roles> list(core.String customer,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' + commons.Escaper.ecapeVariable('$customer') + '/roles';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Roles.fromJson(data));
  }

  /// Updates a role. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
      Role request, core.String customer, core.String roleId,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (roleId == null) {
      throw new core.ArgumentError("Parameter roleId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roles/' +
        commons.Escaper.ecapeVariable('$roleId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Updates a role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Immutable ID of the G Suite account.
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
      Role request, core.String customer, core.String roleId,
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
    if (customer == null) {
      throw new core.ArgumentError("Parameter customer is required.");
    }
    if (roleId == null) {
      throw new core.ArgumentError("Parameter roleId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customer') +
        '/roles/' +
        commons.Escaper.ecapeVariable('$roleId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }
}

class SchemasResourceApi {
  final commons.ApiRequester _requester;

  SchemasResourceApi(commons.ApiRequester client) : _requester = client;

  /// Delete schema
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [schemaKey] - Name or immutable ID of the schema
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String customerId, core.String schemaKey,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (schemaKey == null) {
      throw new core.ArgumentError("Parameter schemaKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/schemas/' +
        commons.Escaper.ecapeVariable('$schemaKey');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieve schema
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
  ///
  /// [schemaKey] - Name or immutable ID of the schema
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
  async.Future<Schema> get(core.String customerId, core.String schemaKey,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (schemaKey == null) {
      throw new core.ArgumentError("Parameter schemaKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/schemas/' +
        commons.Escaper.ecapeVariable('$schemaKey');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Schema.fromJson(data));
  }

  /// Create schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
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
  async.Future<Schema> insert(Schema request, core.String customerId,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'customer/' + commons.Escaper.ecapeVariable('$customerId') + '/schemas';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Schema.fromJson(data));
  }

  /// Retrieve all schemas for a customer
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
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
  async.Future<Schemas> list(core.String customerId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'customer/' + commons.Escaper.ecapeVariable('$customerId') + '/schemas';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Schemas.fromJson(data));
  }

  /// Update schema. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
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
      Schema request, core.String customerId, core.String schemaKey,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (schemaKey == null) {
      throw new core.ArgumentError("Parameter schemaKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/schemas/' +
        commons.Escaper.ecapeVariable('$schemaKey');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Schema.fromJson(data));
  }

  /// Update schema
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the G Suite account
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
      Schema request, core.String customerId, core.String schemaKey,
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
    if (customerId == null) {
      throw new core.ArgumentError("Parameter customerId is required.");
    }
    if (schemaKey == null) {
      throw new core.ArgumentError("Parameter schemaKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'customer/' +
        commons.Escaper.ecapeVariable('$customerId') +
        '/schemas/' +
        commons.Escaper.ecapeVariable('$schemaKey');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Schema.fromJson(data));
  }
}

class TokensResourceApi {
  final commons.ApiRequester _requester;

  TokensResourceApi(commons.ApiRequester client) : _requester = client;

  /// Delete all access tokens issued by a user for an application.
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
  async.Future delete(core.String userKey, core.String clientId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (clientId == null) {
      throw new core.ArgumentError("Parameter clientId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$clientId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Get information about an access token issued by a user.
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
  async.Future<Token> get(core.String userKey, core.String clientId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (clientId == null) {
      throw new core.ArgumentError("Parameter clientId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$clientId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Token.fromJson(data));
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
  async.Future<Tokens> list(core.String userKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey') + '/tokens';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Tokens.fromJson(data));
  }
}

class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersAliasesResourceApi get aliases =>
      new UsersAliasesResourceApi(_requester);
  UsersPhotosResourceApi get photos => new UsersPhotosResourceApi(_requester);

  UsersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Delete user
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
  async.Future delete(core.String userKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// retrieve user
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
  ///
  /// [customFieldMask] - Comma-separated list of schema names. All fields from
  /// these schemas are fetched. This should only be set when projection=custom.
  ///
  /// [projection] - What subset of fields to fetch for this user.
  /// Possible string values are:
  /// - "basic" : Do not include any custom fields for the user.
  /// - "custom" : Include custom fields from schemas mentioned in
  /// customFieldMask.
  /// - "full" : Include all fields associated with this user.
  ///
  /// [viewType] - Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the
  /// user.
  /// Possible string values are:
  /// - "admin_view" : Fetches the ADMIN_VIEW of the user.
  /// - "domain_public" : Fetches the DOMAIN_PUBLIC view of the user.
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
  async.Future<User> get(core.String userKey,
      {core.String customFieldMask,
      core.String projection,
      core.String viewType,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (customFieldMask != null) {
      _queryParams["customFieldMask"] = [customFieldMask];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (viewType != null) {
      _queryParams["viewType"] = [viewType];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// create user.
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
  async.Future<User> insert(User request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Retrieve either deleted users or all users in a domain (paginated)
  ///
  /// Request parameters:
  ///
  /// [customFieldMask] - Comma-separated list of schema names. All fields from
  /// these schemas are fetched. This should only be set when projection=custom.
  ///
  /// [customer] - Immutable ID of the G Suite account. In case of multi-domain,
  /// to fetch all users for a customer, fill this field instead of domain.
  ///
  /// [domain] - Name of the domain. Fill this field to get users from only this
  /// domain. To return all users in a multi-domain fill customer field instead.
  ///
  /// [event] - Event on which subscription is intended (if subscribing)
  /// Possible string values are:
  /// - "add" : User Created Event
  /// - "delete" : User Deleted Event
  /// - "makeAdmin" : User Admin Status Change Event
  /// - "undelete" : User Undeleted Event
  /// - "update" : User Updated Event
  ///
  /// [maxResults] - Maximum number of results to return. Default is 100. Max
  /// allowed is 500
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
  /// documentation is at
  /// https://developers.google.com/admin-sdk/directory/v1/guides/search-users
  ///
  /// [showDeleted] - If set to true retrieves the list of deleted users.
  /// Default is false
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [viewType] - Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the
  /// user.
  /// Possible string values are:
  /// - "admin_view" : Fetches the ADMIN_VIEW of the user.
  /// - "domain_public" : Fetches the DOMAIN_PUBLIC view of the user.
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
  async.Future<Users> list(
      {core.String customFieldMask,
      core.String customer,
      core.String domain,
      core.String event,
      core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String projection,
      core.String query,
      core.String showDeleted,
      core.String sortOrder,
      core.String viewType,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customFieldMask != null) {
      _queryParams["customFieldMask"] = [customFieldMask];
    }
    if (customer != null) {
      _queryParams["customer"] = [customer];
    }
    if (domain != null) {
      _queryParams["domain"] = [domain];
    }
    if (event != null) {
      _queryParams["event"] = [event];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (showDeleted != null) {
      _queryParams["showDeleted"] = [showDeleted];
    }
    if (sortOrder != null) {
      _queryParams["sortOrder"] = [sortOrder];
    }
    if (viewType != null) {
      _queryParams["viewType"] = [viewType];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Users.fromJson(data));
  }

  /// change admin status of a user
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user as admin
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future makeAdmin(UserMakeAdmin request, core.String userKey,
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
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey') + '/makeAdmin';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// update user. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user. If ID, it should match with
  /// id of user object
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
  async.Future<User> patch(User request, core.String userKey,
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
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Undelete a deleted user
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
  async.Future undelete(UserUndelete request, core.String userKey,
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
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey') + '/undelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// update user
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user. If ID, it should match with
  /// id of user object
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
  async.Future<User> update(User request, core.String userKey,
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
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Watch for changes in users list
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customFieldMask] - Comma-separated list of schema names. All fields from
  /// these schemas are fetched. This should only be set when projection=custom.
  ///
  /// [customer] - Immutable ID of the G Suite account. In case of multi-domain,
  /// to fetch all users for a customer, fill this field instead of domain.
  ///
  /// [domain] - Name of the domain. Fill this field to get users from only this
  /// domain. To return all users in a multi-domain fill customer field instead.
  ///
  /// [event] - Event on which subscription is intended (if subscribing)
  /// Possible string values are:
  /// - "add" : User Created Event
  /// - "delete" : User Deleted Event
  /// - "makeAdmin" : User Admin Status Change Event
  /// - "undelete" : User Undeleted Event
  /// - "update" : User Updated Event
  ///
  /// [maxResults] - Maximum number of results to return. Default is 100. Max
  /// allowed is 500
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
  /// documentation is at
  /// https://developers.google.com/admin-sdk/directory/v1/guides/search-users
  ///
  /// [showDeleted] - If set to true retrieves the list of deleted users.
  /// Default is false
  ///
  /// [sortOrder] - Whether to return results in ascending or descending order.
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [viewType] - Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the
  /// user.
  /// Possible string values are:
  /// - "admin_view" : Fetches the ADMIN_VIEW of the user.
  /// - "domain_public" : Fetches the DOMAIN_PUBLIC view of the user.
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
  async.Future<Channel> watch(Channel request,
      {core.String customFieldMask,
      core.String customer,
      core.String domain,
      core.String event,
      core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String projection,
      core.String query,
      core.String showDeleted,
      core.String sortOrder,
      core.String viewType,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (customFieldMask != null) {
      _queryParams["customFieldMask"] = [customFieldMask];
    }
    if (customer != null) {
      _queryParams["customer"] = [customer];
    }
    if (domain != null) {
      _queryParams["domain"] = [domain];
    }
    if (event != null) {
      _queryParams["event"] = [event];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projection != null) {
      _queryParams["projection"] = [projection];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (showDeleted != null) {
      _queryParams["showDeleted"] = [showDeleted];
    }
    if (sortOrder != null) {
      _queryParams["sortOrder"] = [sortOrder];
    }
    if (viewType != null) {
      _queryParams["viewType"] = [viewType];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/watch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Channel.fromJson(data));
  }
}

class UsersAliasesResourceApi {
  final commons.ApiRequester _requester;

  UsersAliasesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Remove a alias for the user
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
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
  async.Future delete(core.String userKey, core.String alias,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (alias == null) {
      throw new core.ArgumentError("Parameter alias is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/aliases/' +
        commons.Escaper.ecapeVariable('$alias');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Add a alias for the user
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
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
  async.Future<Alias> insert(Alias request, core.String userKey,
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
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey') + '/aliases';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Alias.fromJson(data));
  }

  /// List all aliases for a user
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
  ///
  /// [event] - Event on which subscription is intended (if subscribing)
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
  async.Future<Aliases> list(core.String userKey,
      {core.String event, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (event != null) {
      _queryParams["event"] = [event];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$userKey') + '/aliases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Aliases.fromJson(data));
  }

  /// Watch for changes in user aliases list
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
  ///
  /// [event] - Event on which subscription is intended (if subscribing)
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
  async.Future<Channel> watch(Channel request, core.String userKey,
      {core.String event, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (event != null) {
      _queryParams["event"] = [event];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'users/' + commons.Escaper.ecapeVariable('$userKey') + '/aliases/watch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Channel.fromJson(data));
  }
}

class UsersPhotosResourceApi {
  final commons.ApiRequester _requester;

  UsersPhotosResourceApi(commons.ApiRequester client) : _requester = client;

  /// Remove photos for the user
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
  async.Future delete(core.String userKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/photos/thumbnail';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieve photo of a user
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
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
  async.Future<UserPhoto> get(core.String userKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/photos/thumbnail';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserPhoto.fromJson(data));
  }

  /// Add a photo for the user. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
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
  async.Future<UserPhoto> patch(UserPhoto request, core.String userKey,
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
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/photos/thumbnail';

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserPhoto.fromJson(data));
  }

  /// Add a photo for the user
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Email or immutable ID of the user
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
  async.Future<UserPhoto> update(UserPhoto request, core.String userKey,
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
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/photos/thumbnail';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserPhoto.fromJson(data));
  }
}

class VerificationCodesResourceApi {
  final commons.ApiRequester _requester;

  VerificationCodesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Generate new backup verification codes for the user.
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
  async.Future generate(core.String userKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/verificationCodes/generate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Invalidate the current backup verification codes for the user.
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
  async.Future invalidate(core.String userKey, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/verificationCodes/invalidate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
  async.Future<VerificationCodes> list(core.String userKey,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/verificationCodes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new VerificationCodes.fromJson(data));
  }
}

/// JSON template for Alias object in Directory API.
class Alias {
  /// A alias email
  core.String alias;

  /// ETag of the resource.
  core.String etag;

  /// Unique id of the group (Read-only) Unique id of the user (Read-only)
  core.String id;

  /// Kind of resource this is.
  core.String kind;

  /// Group's primary email (Read-only) User's primary email (Read-only)
  core.String primaryEmail;

  Alias();

  Alias.fromJson(core.Map _json) {
    if (_json.containsKey("alias")) {
      alias = _json["alias"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("primaryEmail")) {
      primaryEmail = _json["primaryEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alias != null) {
      _json["alias"] = alias;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (primaryEmail != null) {
      _json["primaryEmail"] = primaryEmail;
    }
    return _json;
  }
}

/// JSON response template to list aliases in Directory API.
class Aliases {
  /// List of alias objects.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> aliases;

  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  Aliases();

  Aliases.fromJson(core.Map _json) {
    if (_json.containsKey("aliases")) {
      aliases = (_json["aliases"] as core.List).cast<core.Object>();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aliases != null) {
      _json["aliases"] = aliases;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// JSON template for App Access Collections Resource object in Directory API.
class AppAccessCollections {
  /// List of blocked api access buckets.
  core.List<core.String> blockedApiAccessBuckets;

  /// Boolean to indicate whether to enforce app access settings on Android
  /// Drive or not.
  core.bool enforceSettingsForAndroidDrive;

  /// Error message provided by the Admin that will be shown to the user when an
  /// app is blocked.
  core.String errorMessage;

  /// ETag of the resource.
  core.String etag;

  /// Identifies the resource as an app access collection. Value:
  /// admin#directory#appaccesscollection
  core.String kind;

  /// Unique ID of app access collection. (Readonly)
  core.String resourceId;

  /// Resource name given by the customer while creating/updating. Should be
  /// unique under given customer.
  core.String resourceName;

  /// Boolean that indicates whether to trust domain owned apps.
  core.bool trustDomainOwnedApps;

  AppAccessCollections();

  AppAccessCollections.fromJson(core.Map _json) {
    if (_json.containsKey("blockedApiAccessBuckets")) {
      blockedApiAccessBuckets =
          (_json["blockedApiAccessBuckets"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("enforceSettingsForAndroidDrive")) {
      enforceSettingsForAndroidDrive = _json["enforceSettingsForAndroidDrive"];
    }
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
    if (_json.containsKey("trustDomainOwnedApps")) {
      trustDomainOwnedApps = _json["trustDomainOwnedApps"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockedApiAccessBuckets != null) {
      _json["blockedApiAccessBuckets"] = blockedApiAccessBuckets;
    }
    if (enforceSettingsForAndroidDrive != null) {
      _json["enforceSettingsForAndroidDrive"] = enforceSettingsForAndroidDrive;
    }
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    if (trustDomainOwnedApps != null) {
      _json["trustDomainOwnedApps"] = trustDomainOwnedApps;
    }
    return _json;
  }
}

/// The template that returns individual ASP (Access Code) data.
class Asp {
  /// The unique ID of the ASP.
  core.int codeId;

  /// The time when the ASP was created. Expressed in Unix time format.
  core.String creationTime;

  /// ETag of the ASP.
  core.String etag;

  /// The type of the API resource. This is always admin#directory#asp.
  core.String kind;

  /// The time when the ASP was last used. Expressed in Unix time format.
  core.String lastTimeUsed;

  /// The name of the application that the user, represented by their userId,
  /// entered when the ASP was created.
  core.String name;

  /// The unique ID of the user who issued the ASP.
  core.String userKey;

  Asp();

  Asp.fromJson(core.Map _json) {
    if (_json.containsKey("codeId")) {
      codeId = _json["codeId"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastTimeUsed")) {
      lastTimeUsed = _json["lastTimeUsed"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("userKey")) {
      userKey = _json["userKey"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (codeId != null) {
      _json["codeId"] = codeId;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastTimeUsed != null) {
      _json["lastTimeUsed"] = lastTimeUsed;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (userKey != null) {
      _json["userKey"] = userKey;
    }
    return _json;
  }
}

class Asps {
  /// ETag of the resource.
  core.String etag;

  /// A list of ASP resources.
  core.List<Asp> items;

  /// The type of the API resource. This is always admin#directory#aspList.
  core.String kind;

  Asps();

  Asps.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Asp>((value) => new Asp.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// JSON template for Building object in Directory API.
class Building {
  /// The postal address of the building. See PostalAddress for details. Note
  /// that only a single address line and region code are required.
  BuildingAddress address;

  /// Unique identifier for the building. The maximum length is 100 characters.
  core.String buildingId;

  /// The building name as seen by users in Calendar. Must be unique for the
  /// customer. For example, "NYC-CHEL". The maximum length is 100 characters.
  core.String buildingName;

  /// The geographic coordinates of the center of the building, expressed as
  /// latitude and longitude in decimal degrees.
  BuildingCoordinates coordinates;

  /// A brief description of the building. For example, "Chelsea Market".
  core.String description;

  /// ETag of the resource.
  core.String etags;

  /// The display names for all floors in this building. The floors are expected
  /// to be sorted in ascending order, from lowest floor to highest floor. For
  /// example, ["B2", "B1", "L", "1", "2", "2M", "3", "PH"] Must contain at
  /// least one entry.
  core.List<core.String> floorNames;

  /// Kind of resource this is.
  core.String kind;

  Building();

  Building.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = new BuildingAddress.fromJson(_json["address"]);
    }
    if (_json.containsKey("buildingId")) {
      buildingId = _json["buildingId"];
    }
    if (_json.containsKey("buildingName")) {
      buildingName = _json["buildingName"];
    }
    if (_json.containsKey("coordinates")) {
      coordinates = new BuildingCoordinates.fromJson(_json["coordinates"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("etags")) {
      etags = _json["etags"];
    }
    if (_json.containsKey("floorNames")) {
      floorNames = (_json["floorNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = (address).toJson();
    }
    if (buildingId != null) {
      _json["buildingId"] = buildingId;
    }
    if (buildingName != null) {
      _json["buildingName"] = buildingName;
    }
    if (coordinates != null) {
      _json["coordinates"] = (coordinates).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (etags != null) {
      _json["etags"] = etags;
    }
    if (floorNames != null) {
      _json["floorNames"] = floorNames;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// JSON template for the postal address of a building in Directory API.
class BuildingAddress {
  /// Unstructured address lines describing the lower levels of an address.
  core.List<core.String> addressLines;

  /// Optional. Highest administrative subdivision which is used for postal
  /// addresses of a country or region.
  core.String administrativeArea;

  /// Optional. BCP-47 language code of the contents of this address (if known).
  core.String languageCode;

  /// Optional. Generally refers to the city/town portion of the address.
  /// Examples: US city, IT comune, UK post town. In regions of the world where
  /// localities are not well defined or do not fit into this structure well,
  /// leave locality empty and use addressLines.
  core.String locality;

  /// Optional. Postal code of the address.
  core.String postalCode;

  /// Required. CLDR region code of the country/region of the address.
  core.String regionCode;

  /// Optional. Sublocality of the address.
  core.String sublocality;

  BuildingAddress();

  BuildingAddress.fromJson(core.Map _json) {
    if (_json.containsKey("addressLines")) {
      addressLines = (_json["addressLines"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("administrativeArea")) {
      administrativeArea = _json["administrativeArea"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("locality")) {
      locality = _json["locality"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
    if (_json.containsKey("sublocality")) {
      sublocality = _json["sublocality"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addressLines != null) {
      _json["addressLines"] = addressLines;
    }
    if (administrativeArea != null) {
      _json["administrativeArea"] = administrativeArea;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (locality != null) {
      _json["locality"] = locality;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    if (sublocality != null) {
      _json["sublocality"] = sublocality;
    }
    return _json;
  }
}

/// JSON template for coordinates of a building in Directory API.
class BuildingCoordinates {
  /// Latitude in decimal degrees.
  core.double latitude;

  /// Longitude in decimal degrees.
  core.double longitude;

  BuildingCoordinates();

  BuildingCoordinates.fromJson(core.Map _json) {
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"].toDouble();
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latitude != null) {
      _json["latitude"] = latitude;
    }
    if (longitude != null) {
      _json["longitude"] = longitude;
    }
    return _json;
  }
}

/// JSON template for Building List Response object in Directory API.
class Buildings {
  /// The Buildings in this page of results.
  core.List<Building> buildings;

  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  Buildings();

  Buildings.fromJson(core.Map _json) {
    if (_json.containsKey("buildings")) {
      buildings = (_json["buildings"] as core.List)
          .map<Building>((value) => new Building.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buildings != null) {
      _json["buildings"] = buildings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// JSON template for Calendar Resource object in Directory API.
class CalendarResource {
  /// Unique ID for the building a resource is located in.
  core.String buildingId;

  /// Capacity of a resource, number of seats in a room.
  core.int capacity;

  /// ETag of the resource.
  core.String etags;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object featureInstances;

  /// Name of the floor a resource is located on.
  core.String floorName;

  /// Name of the section within a floor a resource is located in.
  core.String floorSection;

  /// The read-only auto-generated name of the calendar resource which includes
  /// metadata about the resource such as building name, floor, capacity, etc.
  /// For example, "NYC-2-Training Room 1A (16)".
  core.String generatedResourceName;

  /// The type of the resource. For calendar resources, the value is
  /// admin#directory#resources#calendars#CalendarResource.
  core.String kind;

  /// The category of the calendar resource. Either CONFERENCE_ROOM or OTHER.
  /// Legacy data is set to CATEGORY_UNKNOWN.
  core.String resourceCategory;

  /// Description of the resource, visible only to admins.
  core.String resourceDescription;

  /// The read-only email for the calendar resource. Generated as part of
  /// creating a new calendar resource.
  core.String resourceEmail;

  /// The unique ID for the calendar resource.
  core.String resourceId;

  /// The name of the calendar resource. For example, "Training Room 1A".
  core.String resourceName;

  /// The type of the calendar resource, intended for non-room resources.
  core.String resourceType;

  /// Description of the resource, visible to users and admins.
  core.String userVisibleDescription;

  CalendarResource();

  CalendarResource.fromJson(core.Map _json) {
    if (_json.containsKey("buildingId")) {
      buildingId = _json["buildingId"];
    }
    if (_json.containsKey("capacity")) {
      capacity = _json["capacity"];
    }
    if (_json.containsKey("etags")) {
      etags = _json["etags"];
    }
    if (_json.containsKey("featureInstances")) {
      featureInstances = _json["featureInstances"];
    }
    if (_json.containsKey("floorName")) {
      floorName = _json["floorName"];
    }
    if (_json.containsKey("floorSection")) {
      floorSection = _json["floorSection"];
    }
    if (_json.containsKey("generatedResourceName")) {
      generatedResourceName = _json["generatedResourceName"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("resourceCategory")) {
      resourceCategory = _json["resourceCategory"];
    }
    if (_json.containsKey("resourceDescription")) {
      resourceDescription = _json["resourceDescription"];
    }
    if (_json.containsKey("resourceEmail")) {
      resourceEmail = _json["resourceEmail"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
    if (_json.containsKey("resourceType")) {
      resourceType = _json["resourceType"];
    }
    if (_json.containsKey("userVisibleDescription")) {
      userVisibleDescription = _json["userVisibleDescription"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buildingId != null) {
      _json["buildingId"] = buildingId;
    }
    if (capacity != null) {
      _json["capacity"] = capacity;
    }
    if (etags != null) {
      _json["etags"] = etags;
    }
    if (featureInstances != null) {
      _json["featureInstances"] = featureInstances;
    }
    if (floorName != null) {
      _json["floorName"] = floorName;
    }
    if (floorSection != null) {
      _json["floorSection"] = floorSection;
    }
    if (generatedResourceName != null) {
      _json["generatedResourceName"] = generatedResourceName;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (resourceCategory != null) {
      _json["resourceCategory"] = resourceCategory;
    }
    if (resourceDescription != null) {
      _json["resourceDescription"] = resourceDescription;
    }
    if (resourceEmail != null) {
      _json["resourceEmail"] = resourceEmail;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    if (resourceType != null) {
      _json["resourceType"] = resourceType;
    }
    if (userVisibleDescription != null) {
      _json["userVisibleDescription"] = userVisibleDescription;
    }
    return _json;
  }
}

/// JSON template for Calendar Resource List Response object in Directory API.
class CalendarResources {
  /// ETag of the resource.
  core.String etag;

  /// The CalendarResources in this page of results.
  core.List<CalendarResource> items;

  /// Identifies this as a collection of CalendarResources. This is always
  /// admin#directory#resources#calendars#calendarResourcesList.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  CalendarResources();

  CalendarResources.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<CalendarResource>(
              (value) => new CalendarResource.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// An notification channel used to watch for resource changes.
class Channel {
  /// The address where notifications are delivered for this channel.
  core.String address;

  /// Date and time of notification channel expiration, expressed as a Unix
  /// timestamp, in milliseconds. Optional.
  core.String expiration;

  /// A UUID or similar unique string that identifies this channel.
  core.String id;

  /// Identifies this as a notification channel used to watch for changes to a
  /// resource, which is "api#channel".
  core.String kind;

  /// Additional parameters controlling delivery channel behavior. Optional.
  core.Map<core.String, core.String> params;

  /// A Boolean value to indicate whether payload is wanted. Optional.
  core.bool payload;

  /// An opaque ID that identifies the resource being watched on this channel.
  /// Stable across different API versions.
  core.String resourceId;

  /// A version-specific identifier for the watched resource.
  core.String resourceUri;

  /// An arbitrary string delivered to the target address with each notification
  /// delivered over this channel. Optional.
  core.String token;

  /// The type of delivery mechanism used for this channel.
  core.String type;

  Channel();

  Channel.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("params")) {
      params = (_json["params"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("resourceUri")) {
      resourceUri = _json["resourceUri"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
    }
    if (token != null) {
      _json["token"] = token;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class ChromeOsDeviceActiveTimeRanges {
  /// Duration in milliseconds
  core.int activeTime;

  /// Date of usage
  core.DateTime date;

  ChromeOsDeviceActiveTimeRanges();

  ChromeOsDeviceActiveTimeRanges.fromJson(core.Map _json) {
    if (_json.containsKey("activeTime")) {
      activeTime = _json["activeTime"];
    }
    if (_json.containsKey("date")) {
      date = core.DateTime.parse(_json["date"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (activeTime != null) {
      _json["activeTime"] = activeTime;
    }
    if (date != null) {
      _json["date"] =
          "${(date).year.toString().padLeft(4, '0')}-${(date).month.toString().padLeft(2, '0')}-${(date).day.toString().padLeft(2, '0')}";
    }
    return _json;
  }
}

class ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo {
  /// CPU label
  core.String label;

  /// Temperature in Celsius degrees.
  core.int temperature;

  ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo();

  ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("temperature")) {
      temperature = _json["temperature"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (temperature != null) {
      _json["temperature"] = temperature;
    }
    return _json;
  }
}

class ChromeOsDeviceCpuStatusReports {
  /// List of CPU temperature samples.
  core.List<ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo>
      cpuTemperatureInfo;
  core.List<core.int> cpuUtilizationPercentageInfo;

  /// Date and time the report was received.
  core.DateTime reportTime;

  ChromeOsDeviceCpuStatusReports();

  ChromeOsDeviceCpuStatusReports.fromJson(core.Map _json) {
    if (_json.containsKey("cpuTemperatureInfo")) {
      cpuTemperatureInfo = (_json["cpuTemperatureInfo"] as core.List)
          .map<ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo>((value) =>
              new ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("cpuUtilizationPercentageInfo")) {
      cpuUtilizationPercentageInfo =
          (_json["cpuUtilizationPercentageInfo"] as core.List).cast<core.int>();
    }
    if (_json.containsKey("reportTime")) {
      reportTime = core.DateTime.parse(_json["reportTime"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cpuTemperatureInfo != null) {
      _json["cpuTemperatureInfo"] =
          cpuTemperatureInfo.map((value) => (value).toJson()).toList();
    }
    if (cpuUtilizationPercentageInfo != null) {
      _json["cpuUtilizationPercentageInfo"] = cpuUtilizationPercentageInfo;
    }
    if (reportTime != null) {
      _json["reportTime"] = (reportTime).toIso8601String();
    }
    return _json;
  }
}

class ChromeOsDeviceDeviceFiles {
  /// Date and time the file was created
  core.DateTime createTime;

  /// File download URL
  core.String downloadUrl;

  /// File name
  core.String name;

  /// File type
  core.String type;

  ChromeOsDeviceDeviceFiles();

  ChromeOsDeviceDeviceFiles.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = core.DateTime.parse(_json["createTime"]);
    }
    if (_json.containsKey("downloadUrl")) {
      downloadUrl = _json["downloadUrl"];
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
    if (createTime != null) {
      _json["createTime"] = (createTime).toIso8601String();
    }
    if (downloadUrl != null) {
      _json["downloadUrl"] = downloadUrl;
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

class ChromeOsDeviceDiskVolumeReportsVolumeInfo {
  /// Free disk space [in bytes]
  core.String storageFree;

  /// Total disk space [in bytes]
  core.String storageTotal;

  /// Volume id
  core.String volumeId;

  ChromeOsDeviceDiskVolumeReportsVolumeInfo();

  ChromeOsDeviceDiskVolumeReportsVolumeInfo.fromJson(core.Map _json) {
    if (_json.containsKey("storageFree")) {
      storageFree = _json["storageFree"];
    }
    if (_json.containsKey("storageTotal")) {
      storageTotal = _json["storageTotal"];
    }
    if (_json.containsKey("volumeId")) {
      volumeId = _json["volumeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (storageFree != null) {
      _json["storageFree"] = storageFree;
    }
    if (storageTotal != null) {
      _json["storageTotal"] = storageTotal;
    }
    if (volumeId != null) {
      _json["volumeId"] = volumeId;
    }
    return _json;
  }
}

class ChromeOsDeviceDiskVolumeReports {
  /// Disk volumes
  core.List<ChromeOsDeviceDiskVolumeReportsVolumeInfo> volumeInfo;

  ChromeOsDeviceDiskVolumeReports();

  ChromeOsDeviceDiskVolumeReports.fromJson(core.Map _json) {
    if (_json.containsKey("volumeInfo")) {
      volumeInfo = (_json["volumeInfo"] as core.List)
          .map<ChromeOsDeviceDiskVolumeReportsVolumeInfo>((value) =>
              new ChromeOsDeviceDiskVolumeReportsVolumeInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (volumeInfo != null) {
      _json["volumeInfo"] =
          volumeInfo.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ChromeOsDeviceRecentUsers {
  /// Email address of the user. Present only if the user type is managed
  core.String email;

  /// The type of the user
  core.String type;

  ChromeOsDeviceRecentUsers();

  ChromeOsDeviceRecentUsers.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class ChromeOsDeviceSystemRamFreeReports {
  /// Date and time the report was received.
  core.DateTime reportTime;
  core.List<core.String> systemRamFreeInfo;

  ChromeOsDeviceSystemRamFreeReports();

  ChromeOsDeviceSystemRamFreeReports.fromJson(core.Map _json) {
    if (_json.containsKey("reportTime")) {
      reportTime = core.DateTime.parse(_json["reportTime"]);
    }
    if (_json.containsKey("systemRamFreeInfo")) {
      systemRamFreeInfo =
          (_json["systemRamFreeInfo"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (reportTime != null) {
      _json["reportTime"] = (reportTime).toIso8601String();
    }
    if (systemRamFreeInfo != null) {
      _json["systemRamFreeInfo"] = systemRamFreeInfo;
    }
    return _json;
  }
}

/// Trusted Platform Module (TPM) (Read-only)
class ChromeOsDeviceTpmVersionInfo {
  /// TPM family.
  core.String family;

  /// TPM firmware version.
  core.String firmwareVersion;

  /// TPM manufacturer code.
  core.String manufacturer;

  /// TPM specification level.
  core.String specLevel;

  /// TPM model number.
  core.String tpmModel;

  /// Vendor-specific information such as Vendor ID.
  core.String vendorSpecific;

  ChromeOsDeviceTpmVersionInfo();

  ChromeOsDeviceTpmVersionInfo.fromJson(core.Map _json) {
    if (_json.containsKey("family")) {
      family = _json["family"];
    }
    if (_json.containsKey("firmwareVersion")) {
      firmwareVersion = _json["firmwareVersion"];
    }
    if (_json.containsKey("manufacturer")) {
      manufacturer = _json["manufacturer"];
    }
    if (_json.containsKey("specLevel")) {
      specLevel = _json["specLevel"];
    }
    if (_json.containsKey("tpmModel")) {
      tpmModel = _json["tpmModel"];
    }
    if (_json.containsKey("vendorSpecific")) {
      vendorSpecific = _json["vendorSpecific"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (family != null) {
      _json["family"] = family;
    }
    if (firmwareVersion != null) {
      _json["firmwareVersion"] = firmwareVersion;
    }
    if (manufacturer != null) {
      _json["manufacturer"] = manufacturer;
    }
    if (specLevel != null) {
      _json["specLevel"] = specLevel;
    }
    if (tpmModel != null) {
      _json["tpmModel"] = tpmModel;
    }
    if (vendorSpecific != null) {
      _json["vendorSpecific"] = vendorSpecific;
    }
    return _json;
  }
}

/// JSON template for Chrome Os Device resource in Directory API.
class ChromeOsDevice {
  /// List of active time ranges (Read-only)
  core.List<ChromeOsDeviceActiveTimeRanges> activeTimeRanges;

  /// AssetId specified during enrollment or through later annotation
  core.String annotatedAssetId;

  /// Address or location of the device as noted by the administrator
  core.String annotatedLocation;

  /// User of the device
  core.String annotatedUser;

  /// Chromebook boot mode (Read-only)
  core.String bootMode;

  /// Reports of CPU utilization and temperature (Read-only)
  core.List<ChromeOsDeviceCpuStatusReports> cpuStatusReports;

  /// List of device files to download (Read-only)
  core.List<ChromeOsDeviceDeviceFiles> deviceFiles;

  /// Unique identifier of Chrome OS Device (Read-only)
  core.String deviceId;

  /// Reports of disk space and other info about mounted/connected volumes.
  core.List<ChromeOsDeviceDiskVolumeReports> diskVolumeReports;

  /// ETag of the resource.
  core.String etag;

  /// Chromebook Mac Address on ethernet network interface (Read-only)
  core.String ethernetMacAddress;

  /// Chromebook firmware version (Read-only)
  core.String firmwareVersion;

  /// Kind of resource this is.
  core.String kind;

  /// Date and time the device was last enrolled (Read-only)
  core.DateTime lastEnrollmentTime;

  /// Date and time the device was last synchronized with the policy settings in
  /// the G Suite administrator control panel (Read-only)
  core.DateTime lastSync;

  /// Chromebook Mac Address on wifi network interface (Read-only)
  core.String macAddress;

  /// Mobile Equipment identifier for the 3G mobile card in the Chromebook
  /// (Read-only)
  core.String meid;

  /// Chromebook Model (Read-only)
  core.String model;

  /// Notes added by the administrator
  core.String notes;

  /// Chromebook order number (Read-only)
  core.String orderNumber;

  /// OrgUnit of the device
  core.String orgUnitPath;

  /// Chromebook Os Version (Read-only)
  core.String osVersion;

  /// Chromebook platform version (Read-only)
  core.String platformVersion;

  /// List of recent device users, in descending order by last login time
  /// (Read-only)
  core.List<ChromeOsDeviceRecentUsers> recentUsers;

  /// Chromebook serial number (Read-only)
  core.String serialNumber;

  /// status of the device (Read-only)
  core.String status;

  /// Final date the device will be supported (Read-only)
  core.DateTime supportEndDate;

  /// Reports of amounts of available RAM memory (Read-only)
  core.List<ChromeOsDeviceSystemRamFreeReports> systemRamFreeReports;

  /// Total RAM on the device [in bytes] (Read-only)
  core.String systemRamTotal;

  /// Trusted Platform Module (TPM) (Read-only)
  ChromeOsDeviceTpmVersionInfo tpmVersionInfo;

  /// Will Chromebook auto renew after support end date (Read-only)
  core.bool willAutoRenew;

  ChromeOsDevice();

  ChromeOsDevice.fromJson(core.Map _json) {
    if (_json.containsKey("activeTimeRanges")) {
      activeTimeRanges = (_json["activeTimeRanges"] as core.List)
          .map<ChromeOsDeviceActiveTimeRanges>(
              (value) => new ChromeOsDeviceActiveTimeRanges.fromJson(value))
          .toList();
    }
    if (_json.containsKey("annotatedAssetId")) {
      annotatedAssetId = _json["annotatedAssetId"];
    }
    if (_json.containsKey("annotatedLocation")) {
      annotatedLocation = _json["annotatedLocation"];
    }
    if (_json.containsKey("annotatedUser")) {
      annotatedUser = _json["annotatedUser"];
    }
    if (_json.containsKey("bootMode")) {
      bootMode = _json["bootMode"];
    }
    if (_json.containsKey("cpuStatusReports")) {
      cpuStatusReports = (_json["cpuStatusReports"] as core.List)
          .map<ChromeOsDeviceCpuStatusReports>(
              (value) => new ChromeOsDeviceCpuStatusReports.fromJson(value))
          .toList();
    }
    if (_json.containsKey("deviceFiles")) {
      deviceFiles = (_json["deviceFiles"] as core.List)
          .map<ChromeOsDeviceDeviceFiles>(
              (value) => new ChromeOsDeviceDeviceFiles.fromJson(value))
          .toList();
    }
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("diskVolumeReports")) {
      diskVolumeReports = (_json["diskVolumeReports"] as core.List)
          .map<ChromeOsDeviceDiskVolumeReports>(
              (value) => new ChromeOsDeviceDiskVolumeReports.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("ethernetMacAddress")) {
      ethernetMacAddress = _json["ethernetMacAddress"];
    }
    if (_json.containsKey("firmwareVersion")) {
      firmwareVersion = _json["firmwareVersion"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastEnrollmentTime")) {
      lastEnrollmentTime = core.DateTime.parse(_json["lastEnrollmentTime"]);
    }
    if (_json.containsKey("lastSync")) {
      lastSync = core.DateTime.parse(_json["lastSync"]);
    }
    if (_json.containsKey("macAddress")) {
      macAddress = _json["macAddress"];
    }
    if (_json.containsKey("meid")) {
      meid = _json["meid"];
    }
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("orderNumber")) {
      orderNumber = _json["orderNumber"];
    }
    if (_json.containsKey("orgUnitPath")) {
      orgUnitPath = _json["orgUnitPath"];
    }
    if (_json.containsKey("osVersion")) {
      osVersion = _json["osVersion"];
    }
    if (_json.containsKey("platformVersion")) {
      platformVersion = _json["platformVersion"];
    }
    if (_json.containsKey("recentUsers")) {
      recentUsers = (_json["recentUsers"] as core.List)
          .map<ChromeOsDeviceRecentUsers>(
              (value) => new ChromeOsDeviceRecentUsers.fromJson(value))
          .toList();
    }
    if (_json.containsKey("serialNumber")) {
      serialNumber = _json["serialNumber"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("supportEndDate")) {
      supportEndDate = core.DateTime.parse(_json["supportEndDate"]);
    }
    if (_json.containsKey("systemRamFreeReports")) {
      systemRamFreeReports = (_json["systemRamFreeReports"] as core.List)
          .map<ChromeOsDeviceSystemRamFreeReports>(
              (value) => new ChromeOsDeviceSystemRamFreeReports.fromJson(value))
          .toList();
    }
    if (_json.containsKey("systemRamTotal")) {
      systemRamTotal = _json["systemRamTotal"];
    }
    if (_json.containsKey("tpmVersionInfo")) {
      tpmVersionInfo =
          new ChromeOsDeviceTpmVersionInfo.fromJson(_json["tpmVersionInfo"]);
    }
    if (_json.containsKey("willAutoRenew")) {
      willAutoRenew = _json["willAutoRenew"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (activeTimeRanges != null) {
      _json["activeTimeRanges"] =
          activeTimeRanges.map((value) => (value).toJson()).toList();
    }
    if (annotatedAssetId != null) {
      _json["annotatedAssetId"] = annotatedAssetId;
    }
    if (annotatedLocation != null) {
      _json["annotatedLocation"] = annotatedLocation;
    }
    if (annotatedUser != null) {
      _json["annotatedUser"] = annotatedUser;
    }
    if (bootMode != null) {
      _json["bootMode"] = bootMode;
    }
    if (cpuStatusReports != null) {
      _json["cpuStatusReports"] =
          cpuStatusReports.map((value) => (value).toJson()).toList();
    }
    if (deviceFiles != null) {
      _json["deviceFiles"] =
          deviceFiles.map((value) => (value).toJson()).toList();
    }
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (diskVolumeReports != null) {
      _json["diskVolumeReports"] =
          diskVolumeReports.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (ethernetMacAddress != null) {
      _json["ethernetMacAddress"] = ethernetMacAddress;
    }
    if (firmwareVersion != null) {
      _json["firmwareVersion"] = firmwareVersion;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastEnrollmentTime != null) {
      _json["lastEnrollmentTime"] = (lastEnrollmentTime).toIso8601String();
    }
    if (lastSync != null) {
      _json["lastSync"] = (lastSync).toIso8601String();
    }
    if (macAddress != null) {
      _json["macAddress"] = macAddress;
    }
    if (meid != null) {
      _json["meid"] = meid;
    }
    if (model != null) {
      _json["model"] = model;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (orderNumber != null) {
      _json["orderNumber"] = orderNumber;
    }
    if (orgUnitPath != null) {
      _json["orgUnitPath"] = orgUnitPath;
    }
    if (osVersion != null) {
      _json["osVersion"] = osVersion;
    }
    if (platformVersion != null) {
      _json["platformVersion"] = platformVersion;
    }
    if (recentUsers != null) {
      _json["recentUsers"] =
          recentUsers.map((value) => (value).toJson()).toList();
    }
    if (serialNumber != null) {
      _json["serialNumber"] = serialNumber;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (supportEndDate != null) {
      _json["supportEndDate"] = (supportEndDate).toIso8601String();
    }
    if (systemRamFreeReports != null) {
      _json["systemRamFreeReports"] =
          systemRamFreeReports.map((value) => (value).toJson()).toList();
    }
    if (systemRamTotal != null) {
      _json["systemRamTotal"] = systemRamTotal;
    }
    if (tpmVersionInfo != null) {
      _json["tpmVersionInfo"] = (tpmVersionInfo).toJson();
    }
    if (willAutoRenew != null) {
      _json["willAutoRenew"] = willAutoRenew;
    }
    return _json;
  }
}

/// JSON request template for firing actions on ChromeOs Device in Directory
/// Devices API.
class ChromeOsDeviceAction {
  /// Action to be taken on the ChromeOs Device
  core.String action;
  core.String deprovisionReason;

  ChromeOsDeviceAction();

  ChromeOsDeviceAction.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("deprovisionReason")) {
      deprovisionReason = _json["deprovisionReason"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (deprovisionReason != null) {
      _json["deprovisionReason"] = deprovisionReason;
    }
    return _json;
  }
}

/// JSON response template for List Chrome OS Devices operation in Directory
/// API.
class ChromeOsDevices {
  /// List of Chrome OS Device objects.
  core.List<ChromeOsDevice> chromeosdevices;

  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// Token used to access next page of this result.
  core.String nextPageToken;

  ChromeOsDevices();

  ChromeOsDevices.fromJson(core.Map _json) {
    if (_json.containsKey("chromeosdevices")) {
      chromeosdevices = (_json["chromeosdevices"] as core.List)
          .map<ChromeOsDevice>((value) => new ChromeOsDevice.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (chromeosdevices != null) {
      _json["chromeosdevices"] =
          chromeosdevices.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// JSON request template for moving ChromeOs Device to given OU in Directory
/// Devices API.
class ChromeOsMoveDevicesToOu {
  /// ChromeOs Devices to be moved to OU
  core.List<core.String> deviceIds;

  ChromeOsMoveDevicesToOu();

  ChromeOsMoveDevicesToOu.fromJson(core.Map _json) {
    if (_json.containsKey("deviceIds")) {
      deviceIds = (_json["deviceIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceIds != null) {
      _json["deviceIds"] = deviceIds;
    }
    return _json;
  }
}

/// JSON template for Customer Resource object in Directory API.
class Customer {
  /// The customer's secondary contact email address. This email address cannot
  /// be on the same domain as the customerDomain
  core.String alternateEmail;

  /// The customer's creation time (Readonly)
  core.DateTime customerCreationTime;

  /// The customer's primary domain name string. Do not include the www prefix
  /// when creating a new customer.
  core.String customerDomain;

  /// ETag of the resource.
  core.String etag;

  /// The unique ID for the customer's G Suite account. (Readonly)
  core.String id;

  /// Identifies the resource as a customer. Value: admin#directory#customer
  core.String kind;

  /// The customer's ISO 639-2 language code. The default value is en-US
  core.String language;

  /// The customer's contact phone number in E.164 format.
  core.String phoneNumber;

  /// The customer's postal address information.
  CustomerPostalAddress postalAddress;

  Customer();

  Customer.fromJson(core.Map _json) {
    if (_json.containsKey("alternateEmail")) {
      alternateEmail = _json["alternateEmail"];
    }
    if (_json.containsKey("customerCreationTime")) {
      customerCreationTime = core.DateTime.parse(_json["customerCreationTime"]);
    }
    if (_json.containsKey("customerDomain")) {
      customerDomain = _json["customerDomain"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
    if (_json.containsKey("postalAddress")) {
      postalAddress =
          new CustomerPostalAddress.fromJson(_json["postalAddress"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternateEmail != null) {
      _json["alternateEmail"] = alternateEmail;
    }
    if (customerCreationTime != null) {
      _json["customerCreationTime"] = (customerCreationTime).toIso8601String();
    }
    if (customerDomain != null) {
      _json["customerDomain"] = customerDomain;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (language != null) {
      _json["language"] = language;
    }
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
    }
    if (postalAddress != null) {
      _json["postalAddress"] = (postalAddress).toJson();
    }
    return _json;
  }
}

/// JSON template for postal address of a customer.
class CustomerPostalAddress {
  /// A customer's physical address. The address can be composed of one to three
  /// lines.
  core.String addressLine1;

  /// Address line 2 of the address.
  core.String addressLine2;

  /// Address line 3 of the address.
  core.String addressLine3;

  /// The customer contact's name.
  core.String contactName;

  /// This is a required property. For countryCode information see the ISO 3166
  /// country code elements.
  core.String countryCode;

  /// Name of the locality. An example of a locality value is the city of San
  /// Francisco.
  core.String locality;

  /// The company or company division name.
  core.String organizationName;

  /// The postal code. A postalCode example is a postal zip code such as 10009.
  /// This is in accordance with -
  /// http://portablecontacts.net/draft-spec.html#address_element.
  core.String postalCode;

  /// Name of the region. An example of a region value is NY for the state of
  /// New York.
  core.String region;

  CustomerPostalAddress();

  CustomerPostalAddress.fromJson(core.Map _json) {
    if (_json.containsKey("addressLine1")) {
      addressLine1 = _json["addressLine1"];
    }
    if (_json.containsKey("addressLine2")) {
      addressLine2 = _json["addressLine2"];
    }
    if (_json.containsKey("addressLine3")) {
      addressLine3 = _json["addressLine3"];
    }
    if (_json.containsKey("contactName")) {
      contactName = _json["contactName"];
    }
    if (_json.containsKey("countryCode")) {
      countryCode = _json["countryCode"];
    }
    if (_json.containsKey("locality")) {
      locality = _json["locality"];
    }
    if (_json.containsKey("organizationName")) {
      organizationName = _json["organizationName"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addressLine1 != null) {
      _json["addressLine1"] = addressLine1;
    }
    if (addressLine2 != null) {
      _json["addressLine2"] = addressLine2;
    }
    if (addressLine3 != null) {
      _json["addressLine3"] = addressLine3;
    }
    if (contactName != null) {
      _json["contactName"] = contactName;
    }
    if (countryCode != null) {
      _json["countryCode"] = countryCode;
    }
    if (locality != null) {
      _json["locality"] = locality;
    }
    if (organizationName != null) {
      _json["organizationName"] = organizationName;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (region != null) {
      _json["region"] = region;
    }
    return _json;
  }
}

/// JSON template for Domain Alias object in Directory API.
class DomainAlias {
  /// The creation time of the domain alias. (Read-only).
  core.String creationTime;

  /// The domain alias name.
  core.String domainAliasName;

  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// The parent domain name that the domain alias is associated with. This can
  /// either be a primary or secondary domain name within a customer.
  core.String parentDomainName;

  /// Indicates the verification state of a domain alias. (Read-only)
  core.bool verified;

  DomainAlias();

  DomainAlias.fromJson(core.Map _json) {
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("domainAliasName")) {
      domainAliasName = _json["domainAliasName"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("parentDomainName")) {
      parentDomainName = _json["parentDomainName"];
    }
    if (_json.containsKey("verified")) {
      verified = _json["verified"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (domainAliasName != null) {
      _json["domainAliasName"] = domainAliasName;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (parentDomainName != null) {
      _json["parentDomainName"] = parentDomainName;
    }
    if (verified != null) {
      _json["verified"] = verified;
    }
    return _json;
  }
}

/// JSON response template to list domain aliases in Directory API.
class DomainAliases {
  /// List of domain alias objects.
  core.List<DomainAlias> domainAliases;

  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  DomainAliases();

  DomainAliases.fromJson(core.Map _json) {
    if (_json.containsKey("domainAliases")) {
      domainAliases = (_json["domainAliases"] as core.List)
          .map<DomainAlias>((value) => new DomainAlias.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domainAliases != null) {
      _json["domainAliases"] =
          domainAliases.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// JSON template for Domain object in Directory API.
class Domains {
  /// Creation time of the domain. (Read-only).
  core.String creationTime;

  /// List of domain alias objects. (Read-only)
  core.List<DomainAlias> domainAliases;

  /// The domain name of the customer.
  core.String domainName;

  /// ETag of the resource.
  core.String etag;

  /// Indicates if the domain is a primary domain (Read-only).
  core.bool isPrimary;

  /// Kind of resource this is.
  core.String kind;

  /// Indicates the verification state of a domain. (Read-only).
  core.bool verified;

  Domains();

  Domains.fromJson(core.Map _json) {
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("domainAliases")) {
      domainAliases = (_json["domainAliases"] as core.List)
          .map<DomainAlias>((value) => new DomainAlias.fromJson(value))
          .toList();
    }
    if (_json.containsKey("domainName")) {
      domainName = _json["domainName"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("isPrimary")) {
      isPrimary = _json["isPrimary"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("verified")) {
      verified = _json["verified"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (domainAliases != null) {
      _json["domainAliases"] =
          domainAliases.map((value) => (value).toJson()).toList();
    }
    if (domainName != null) {
      _json["domainName"] = domainName;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (isPrimary != null) {
      _json["isPrimary"] = isPrimary;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (verified != null) {
      _json["verified"] = verified;
    }
    return _json;
  }
}

/// JSON response template to list Domains in Directory API.
class Domains2 {
  /// List of domain objects.
  core.List<Domains> domains;

  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  Domains2();

  Domains2.fromJson(core.Map _json) {
    if (_json.containsKey("domains")) {
      domains = (_json["domains"] as core.List)
          .map<Domains>((value) => new Domains.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domains != null) {
      _json["domains"] = domains.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// JSON template for Feature object in Directory API.
class Feature {
  /// ETag of the resource.
  core.String etags;

  /// Kind of resource this is.
  core.String kind;

  /// The name of the feature.
  core.String name;

  Feature();

  Feature.fromJson(core.Map _json) {
    if (_json.containsKey("etags")) {
      etags = _json["etags"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etags != null) {
      _json["etags"] = etags;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// JSON template for a "feature instance".
class FeatureInstance {
  /// The feature that this is an instance of. A calendar resource may have
  /// multiple instances of a feature.
  Feature feature;

  FeatureInstance();

  FeatureInstance.fromJson(core.Map _json) {
    if (_json.containsKey("feature")) {
      feature = new Feature.fromJson(_json["feature"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (feature != null) {
      _json["feature"] = (feature).toJson();
    }
    return _json;
  }
}

/// JSON request template for renaming a feature.
class FeatureRename {
  /// New name of the feature.
  core.String newName;

  FeatureRename();

  FeatureRename.fromJson(core.Map _json) {
    if (_json.containsKey("newName")) {
      newName = _json["newName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (newName != null) {
      _json["newName"] = newName;
    }
    return _json;
  }
}

/// JSON template for Feature List Response object in Directory API.
class Features {
  /// ETag of the resource.
  core.String etag;

  /// The Features in this page of results.
  core.List<Feature> features;

  /// Kind of resource this is.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  Features();

  Features.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("features")) {
      features = (_json["features"] as core.List)
          .map<Feature>((value) => new Feature.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (features != null) {
      _json["features"] = features.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// JSON template for Group resource in Directory API.
class Group {
  /// Is the group created by admin (Read-only) *
  core.bool adminCreated;

  /// List of aliases (Read-only)
  core.List<core.String> aliases;

  /// Description of the group
  core.String description;

  /// Group direct members count
  core.String directMembersCount;

  /// Email of Group
  core.String email;

  /// ETag of the resource.
  core.String etag;

  /// Unique identifier of Group (Read-only)
  core.String id;

  /// Kind of resource this is.
  core.String kind;

  /// Group name
  core.String name;

  /// List of non editable aliases (Read-only)
  core.List<core.String> nonEditableAliases;

  Group();

  Group.fromJson(core.Map _json) {
    if (_json.containsKey("adminCreated")) {
      adminCreated = _json["adminCreated"];
    }
    if (_json.containsKey("aliases")) {
      aliases = (_json["aliases"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("directMembersCount")) {
      directMembersCount = _json["directMembersCount"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nonEditableAliases")) {
      nonEditableAliases =
          (_json["nonEditableAliases"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adminCreated != null) {
      _json["adminCreated"] = adminCreated;
    }
    if (aliases != null) {
      _json["aliases"] = aliases;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (directMembersCount != null) {
      _json["directMembersCount"] = directMembersCount;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nonEditableAliases != null) {
      _json["nonEditableAliases"] = nonEditableAliases;
    }
    return _json;
  }
}

/// JSON response template for List Groups operation in Directory API.
class Groups {
  /// ETag of the resource.
  core.String etag;

  /// List of group objects.
  core.List<Group> groups;

  /// Kind of resource this is.
  core.String kind;

  /// Token used to access next page of this result.
  core.String nextPageToken;

  Groups();

  Groups.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("groups")) {
      groups = (_json["groups"] as core.List)
          .map<Group>((value) => new Group.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (groups != null) {
      _json["groups"] = groups.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// JSON template for Member resource in Directory API.
class Member {
  /// Delivery settings of member
  core.String deliverySettings;

  /// Email of member (Read-only)
  core.String email;

  /// ETag of the resource.
  core.String etag;

  /// Unique identifier of customer member (Read-only) Unique identifier of
  /// group (Read-only) Unique identifier of member (Read-only)
  core.String id;

  /// Kind of resource this is.
  core.String kind;

  /// Role of member
  core.String role;

  /// Status of member (Immutable)
  core.String status;

  /// Type of member (Immutable)
  core.String type;

  Member();

  Member.fromJson(core.Map _json) {
    if (_json.containsKey("delivery_settings")) {
      deliverySettings = _json["delivery_settings"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deliverySettings != null) {
      _json["delivery_settings"] = deliverySettings;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// JSON response template for List Members operation in Directory API.
class Members {
  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// List of member objects.
  core.List<Member> members;

  /// Token used to access next page of this result.
  core.String nextPageToken;

  Members();

  Members.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List)
          .map<Member>((value) => new Member.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (members != null) {
      _json["members"] = members.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// JSON template for Has Member response in Directory API.
class MembersHasMember {
  /// Identifies whether the given user is a member of the group. Membership can
  /// be direct or nested.
  core.bool isMember;

  MembersHasMember();

  MembersHasMember.fromJson(core.Map _json) {
    if (_json.containsKey("isMember")) {
      isMember = _json["isMember"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isMember != null) {
      _json["isMember"] = isMember;
    }
    return _json;
  }
}

class MobileDeviceApplications {
  /// Display name of application
  core.String displayName;

  /// Package name of application
  core.String packageName;

  /// List of Permissions for application
  core.List<core.String> permission;

  /// Version code of application
  core.int versionCode;

  /// Version name of application
  core.String versionName;

  MobileDeviceApplications();

  MobileDeviceApplications.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("permission")) {
      permission = (_json["permission"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("versionCode")) {
      versionCode = _json["versionCode"];
    }
    if (_json.containsKey("versionName")) {
      versionName = _json["versionName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (permission != null) {
      _json["permission"] = permission;
    }
    if (versionCode != null) {
      _json["versionCode"] = versionCode;
    }
    if (versionName != null) {
      _json["versionName"] = versionName;
    }
    return _json;
  }
}

/// JSON template for Mobile Device resource in Directory API.
class MobileDevice {
  /// Adb (USB debugging) enabled or disabled on device (Read-only)
  core.bool adbStatus;

  /// List of applications installed on Mobile Device
  core.List<MobileDeviceApplications> applications;

  /// Mobile Device Baseband version (Read-only)
  core.String basebandVersion;

  /// Mobile Device Bootloader version (Read-only)
  core.String bootloaderVersion;

  /// Mobile Device Brand (Read-only)
  core.String brand;

  /// Mobile Device Build number (Read-only)
  core.String buildNumber;

  /// The default locale used on the Mobile Device (Read-only)
  core.String defaultLanguage;

  /// Developer options enabled or disabled on device (Read-only)
  core.bool developerOptionsStatus;

  /// Mobile Device compromised status (Read-only)
  core.String deviceCompromisedStatus;

  /// Mobile Device serial number (Read-only)
  core.String deviceId;

  /// DevicePasswordStatus (Read-only)
  core.String devicePasswordStatus;

  /// List of owner user's email addresses (Read-only)
  core.List<core.String> email;

  /// Mobile Device Encryption Status (Read-only)
  core.String encryptionStatus;

  /// ETag of the resource.
  core.String etag;

  /// Date and time the device was first synchronized with the policy settings
  /// in the G Suite administrator control panel (Read-only)
  core.DateTime firstSync;

  /// Mobile Device Hardware (Read-only)
  core.String hardware;

  /// Mobile Device Hardware Id (Read-only)
  core.String hardwareId;

  /// Mobile Device IMEI number (Read-only)
  core.String imei;

  /// Mobile Device Kernel version (Read-only)
  core.String kernelVersion;

  /// Kind of resource this is.
  core.String kind;

  /// Date and time the device was last synchronized with the policy settings in
  /// the G Suite administrator control panel (Read-only)
  core.DateTime lastSync;

  /// Boolean indicating if this account is on owner/primary profile or not
  /// (Read-only)
  core.bool managedAccountIsOnOwnerProfile;

  /// Mobile Device manufacturer (Read-only)
  core.String manufacturer;

  /// Mobile Device MEID number (Read-only)
  core.String meid;

  /// Name of the model of the device
  core.String model;

  /// List of owner user's names (Read-only)
  core.List<core.String> name;

  /// Mobile Device mobile or network operator (if available) (Read-only)
  core.String networkOperator;

  /// Name of the mobile operating system
  core.String os;

  /// List of accounts added on device (Read-only)
  core.List<core.String> otherAccountsInfo;

  /// DMAgentPermission (Read-only)
  core.String privilege;

  /// Mobile Device release version version (Read-only)
  core.String releaseVersion;

  /// Unique identifier of Mobile Device (Read-only)
  core.String resourceId;

  /// Mobile Device Security patch level (Read-only)
  core.String securityPatchLevel;

  /// Mobile Device SSN or Serial Number (Read-only)
  core.String serialNumber;

  /// Status of the device (Read-only)
  core.String status;

  /// Work profile supported on device (Read-only)
  core.bool supportsWorkProfile;

  /// The type of device (Read-only)
  core.String type;

  /// Unknown sources enabled or disabled on device (Read-only)
  core.bool unknownSourcesStatus;

  /// Mobile Device user agent
  core.String userAgent;

  /// Mobile Device WiFi MAC address (Read-only)
  core.String wifiMacAddress;

  MobileDevice();

  MobileDevice.fromJson(core.Map _json) {
    if (_json.containsKey("adbStatus")) {
      adbStatus = _json["adbStatus"];
    }
    if (_json.containsKey("applications")) {
      applications = (_json["applications"] as core.List)
          .map<MobileDeviceApplications>(
              (value) => new MobileDeviceApplications.fromJson(value))
          .toList();
    }
    if (_json.containsKey("basebandVersion")) {
      basebandVersion = _json["basebandVersion"];
    }
    if (_json.containsKey("bootloaderVersion")) {
      bootloaderVersion = _json["bootloaderVersion"];
    }
    if (_json.containsKey("brand")) {
      brand = _json["brand"];
    }
    if (_json.containsKey("buildNumber")) {
      buildNumber = _json["buildNumber"];
    }
    if (_json.containsKey("defaultLanguage")) {
      defaultLanguage = _json["defaultLanguage"];
    }
    if (_json.containsKey("developerOptionsStatus")) {
      developerOptionsStatus = _json["developerOptionsStatus"];
    }
    if (_json.containsKey("deviceCompromisedStatus")) {
      deviceCompromisedStatus = _json["deviceCompromisedStatus"];
    }
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("devicePasswordStatus")) {
      devicePasswordStatus = _json["devicePasswordStatus"];
    }
    if (_json.containsKey("email")) {
      email = (_json["email"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("encryptionStatus")) {
      encryptionStatus = _json["encryptionStatus"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("firstSync")) {
      firstSync = core.DateTime.parse(_json["firstSync"]);
    }
    if (_json.containsKey("hardware")) {
      hardware = _json["hardware"];
    }
    if (_json.containsKey("hardwareId")) {
      hardwareId = _json["hardwareId"];
    }
    if (_json.containsKey("imei")) {
      imei = _json["imei"];
    }
    if (_json.containsKey("kernelVersion")) {
      kernelVersion = _json["kernelVersion"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastSync")) {
      lastSync = core.DateTime.parse(_json["lastSync"]);
    }
    if (_json.containsKey("managedAccountIsOnOwnerProfile")) {
      managedAccountIsOnOwnerProfile = _json["managedAccountIsOnOwnerProfile"];
    }
    if (_json.containsKey("manufacturer")) {
      manufacturer = _json["manufacturer"];
    }
    if (_json.containsKey("meid")) {
      meid = _json["meid"];
    }
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
    if (_json.containsKey("name")) {
      name = (_json["name"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("networkOperator")) {
      networkOperator = _json["networkOperator"];
    }
    if (_json.containsKey("os")) {
      os = _json["os"];
    }
    if (_json.containsKey("otherAccountsInfo")) {
      otherAccountsInfo =
          (_json["otherAccountsInfo"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("privilege")) {
      privilege = _json["privilege"];
    }
    if (_json.containsKey("releaseVersion")) {
      releaseVersion = _json["releaseVersion"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("securityPatchLevel")) {
      securityPatchLevel = _json["securityPatchLevel"];
    }
    if (_json.containsKey("serialNumber")) {
      serialNumber = _json["serialNumber"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("supportsWorkProfile")) {
      supportsWorkProfile = _json["supportsWorkProfile"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("unknownSourcesStatus")) {
      unknownSourcesStatus = _json["unknownSourcesStatus"];
    }
    if (_json.containsKey("userAgent")) {
      userAgent = _json["userAgent"];
    }
    if (_json.containsKey("wifiMacAddress")) {
      wifiMacAddress = _json["wifiMacAddress"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adbStatus != null) {
      _json["adbStatus"] = adbStatus;
    }
    if (applications != null) {
      _json["applications"] =
          applications.map((value) => (value).toJson()).toList();
    }
    if (basebandVersion != null) {
      _json["basebandVersion"] = basebandVersion;
    }
    if (bootloaderVersion != null) {
      _json["bootloaderVersion"] = bootloaderVersion;
    }
    if (brand != null) {
      _json["brand"] = brand;
    }
    if (buildNumber != null) {
      _json["buildNumber"] = buildNumber;
    }
    if (defaultLanguage != null) {
      _json["defaultLanguage"] = defaultLanguage;
    }
    if (developerOptionsStatus != null) {
      _json["developerOptionsStatus"] = developerOptionsStatus;
    }
    if (deviceCompromisedStatus != null) {
      _json["deviceCompromisedStatus"] = deviceCompromisedStatus;
    }
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (devicePasswordStatus != null) {
      _json["devicePasswordStatus"] = devicePasswordStatus;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (encryptionStatus != null) {
      _json["encryptionStatus"] = encryptionStatus;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (firstSync != null) {
      _json["firstSync"] = (firstSync).toIso8601String();
    }
    if (hardware != null) {
      _json["hardware"] = hardware;
    }
    if (hardwareId != null) {
      _json["hardwareId"] = hardwareId;
    }
    if (imei != null) {
      _json["imei"] = imei;
    }
    if (kernelVersion != null) {
      _json["kernelVersion"] = kernelVersion;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastSync != null) {
      _json["lastSync"] = (lastSync).toIso8601String();
    }
    if (managedAccountIsOnOwnerProfile != null) {
      _json["managedAccountIsOnOwnerProfile"] = managedAccountIsOnOwnerProfile;
    }
    if (manufacturer != null) {
      _json["manufacturer"] = manufacturer;
    }
    if (meid != null) {
      _json["meid"] = meid;
    }
    if (model != null) {
      _json["model"] = model;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (networkOperator != null) {
      _json["networkOperator"] = networkOperator;
    }
    if (os != null) {
      _json["os"] = os;
    }
    if (otherAccountsInfo != null) {
      _json["otherAccountsInfo"] = otherAccountsInfo;
    }
    if (privilege != null) {
      _json["privilege"] = privilege;
    }
    if (releaseVersion != null) {
      _json["releaseVersion"] = releaseVersion;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (securityPatchLevel != null) {
      _json["securityPatchLevel"] = securityPatchLevel;
    }
    if (serialNumber != null) {
      _json["serialNumber"] = serialNumber;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (supportsWorkProfile != null) {
      _json["supportsWorkProfile"] = supportsWorkProfile;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (unknownSourcesStatus != null) {
      _json["unknownSourcesStatus"] = unknownSourcesStatus;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    if (wifiMacAddress != null) {
      _json["wifiMacAddress"] = wifiMacAddress;
    }
    return _json;
  }
}

/// JSON request template for firing commands on Mobile Device in Directory
/// Devices API.
class MobileDeviceAction {
  /// Action to be taken on the Mobile Device
  core.String action;

  MobileDeviceAction();

  MobileDeviceAction.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    return _json;
  }
}

/// JSON response template for List Mobile Devices operation in Directory API.
class MobileDevices {
  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// List of Mobile Device objects.
  core.List<MobileDevice> mobiledevices;

  /// Token used to access next page of this result.
  core.String nextPageToken;

  MobileDevices();

  MobileDevices.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("mobiledevices")) {
      mobiledevices = (_json["mobiledevices"] as core.List)
          .map<MobileDevice>((value) => new MobileDevice.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (mobiledevices != null) {
      _json["mobiledevices"] =
          mobiledevices.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Template for a notification resource.
class Notification {
  /// Body of the notification (Read-only)
  core.String body;

  /// ETag of the resource.
  core.String etag;

  /// Address from which the notification is received (Read-only)
  core.String fromAddress;

  /// Boolean indicating whether the notification is unread or not.
  core.bool isUnread;

  /// The type of the resource.
  core.String kind;
  core.String notificationId;

  /// Time at which notification was sent (Read-only)
  core.DateTime sendTime;

  /// Subject of the notification (Read-only)
  core.String subject;

  Notification();

  Notification.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("fromAddress")) {
      fromAddress = _json["fromAddress"];
    }
    if (_json.containsKey("isUnread")) {
      isUnread = _json["isUnread"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("notificationId")) {
      notificationId = _json["notificationId"];
    }
    if (_json.containsKey("sendTime")) {
      sendTime = core.DateTime.parse(_json["sendTime"]);
    }
    if (_json.containsKey("subject")) {
      subject = _json["subject"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = body;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (fromAddress != null) {
      _json["fromAddress"] = fromAddress;
    }
    if (isUnread != null) {
      _json["isUnread"] = isUnread;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (notificationId != null) {
      _json["notificationId"] = notificationId;
    }
    if (sendTime != null) {
      _json["sendTime"] = (sendTime).toIso8601String();
    }
    if (subject != null) {
      _json["subject"] = subject;
    }
    return _json;
  }
}

/// Template for notifications list response.
class Notifications {
  /// ETag of the resource.
  core.String etag;

  /// List of notifications in this page.
  core.List<Notification> items;

  /// The type of the resource.
  core.String kind;

  /// Token for fetching the next page of notifications.
  core.String nextPageToken;

  /// Number of unread notification for the domain.
  core.int unreadNotificationsCount;

  Notifications();

  Notifications.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Notification>((value) => new Notification.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("unreadNotificationsCount")) {
      unreadNotificationsCount = _json["unreadNotificationsCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (unreadNotificationsCount != null) {
      _json["unreadNotificationsCount"] = unreadNotificationsCount;
    }
    return _json;
  }
}

/// JSON template for Org Unit resource in Directory API.
class OrgUnit {
  /// Should block inheritance
  core.bool blockInheritance;

  /// Description of OrgUnit
  core.String description;

  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// Name of OrgUnit
  core.String name;

  /// Id of OrgUnit
  core.String orgUnitId;

  /// Path of OrgUnit
  core.String orgUnitPath;

  /// Id of parent OrgUnit
  core.String parentOrgUnitId;

  /// Path of parent OrgUnit
  core.String parentOrgUnitPath;

  OrgUnit();

  OrgUnit.fromJson(core.Map _json) {
    if (_json.containsKey("blockInheritance")) {
      blockInheritance = _json["blockInheritance"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("orgUnitId")) {
      orgUnitId = _json["orgUnitId"];
    }
    if (_json.containsKey("orgUnitPath")) {
      orgUnitPath = _json["orgUnitPath"];
    }
    if (_json.containsKey("parentOrgUnitId")) {
      parentOrgUnitId = _json["parentOrgUnitId"];
    }
    if (_json.containsKey("parentOrgUnitPath")) {
      parentOrgUnitPath = _json["parentOrgUnitPath"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockInheritance != null) {
      _json["blockInheritance"] = blockInheritance;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (orgUnitId != null) {
      _json["orgUnitId"] = orgUnitId;
    }
    if (orgUnitPath != null) {
      _json["orgUnitPath"] = orgUnitPath;
    }
    if (parentOrgUnitId != null) {
      _json["parentOrgUnitId"] = parentOrgUnitId;
    }
    if (parentOrgUnitPath != null) {
      _json["parentOrgUnitPath"] = parentOrgUnitPath;
    }
    return _json;
  }
}

/// JSON response template for List Organization Units operation in Directory
/// API.
class OrgUnits {
  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// List of user objects.
  core.List<OrgUnit> organizationUnits;

  OrgUnits();

  OrgUnits.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("organizationUnits")) {
      organizationUnits = (_json["organizationUnits"] as core.List)
          .map<OrgUnit>((value) => new OrgUnit.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (organizationUnits != null) {
      _json["organizationUnits"] =
          organizationUnits.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// JSON template for privilege resource in Directory API.
class Privilege {
  /// A list of child privileges. Privileges for a service form a tree. Each
  /// privilege can have a list of child privileges; this list is empty for a
  /// leaf privilege.
  core.List<Privilege> childPrivileges;

  /// ETag of the resource.
  core.String etag;

  /// If the privilege can be restricted to an organization unit.
  core.bool isOuScopable;

  /// The type of the API resource. This is always admin#directory#privilege.
  core.String kind;

  /// The name of the privilege.
  core.String privilegeName;

  /// The obfuscated ID of the service this privilege is for.
  core.String serviceId;

  /// The name of the service this privilege is for.
  core.String serviceName;

  Privilege();

  Privilege.fromJson(core.Map _json) {
    if (_json.containsKey("childPrivileges")) {
      childPrivileges = (_json["childPrivileges"] as core.List)
          .map<Privilege>((value) => new Privilege.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("isOuScopable")) {
      isOuScopable = _json["isOuScopable"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("privilegeName")) {
      privilegeName = _json["privilegeName"];
    }
    if (_json.containsKey("serviceId")) {
      serviceId = _json["serviceId"];
    }
    if (_json.containsKey("serviceName")) {
      serviceName = _json["serviceName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (childPrivileges != null) {
      _json["childPrivileges"] =
          childPrivileges.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (isOuScopable != null) {
      _json["isOuScopable"] = isOuScopable;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (privilegeName != null) {
      _json["privilegeName"] = privilegeName;
    }
    if (serviceId != null) {
      _json["serviceId"] = serviceId;
    }
    if (serviceName != null) {
      _json["serviceName"] = serviceName;
    }
    return _json;
  }
}

/// JSON response template for List privileges operation in Directory API.
class Privileges {
  /// ETag of the resource.
  core.String etag;

  /// A list of Privilege resources.
  core.List<Privilege> items;

  /// The type of the API resource. This is always admin#directory#privileges.
  core.String kind;

  Privileges();

  Privileges.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Privilege>((value) => new Privilege.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

class RoleRolePrivileges {
  /// The name of the privilege.
  core.String privilegeName;

  /// The obfuscated ID of the service this privilege is for.
  core.String serviceId;

  RoleRolePrivileges();

  RoleRolePrivileges.fromJson(core.Map _json) {
    if (_json.containsKey("privilegeName")) {
      privilegeName = _json["privilegeName"];
    }
    if (_json.containsKey("serviceId")) {
      serviceId = _json["serviceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (privilegeName != null) {
      _json["privilegeName"] = privilegeName;
    }
    if (serviceId != null) {
      _json["serviceId"] = serviceId;
    }
    return _json;
  }
}

/// JSON template for role resource in Directory API.
class Role {
  /// ETag of the resource.
  core.String etag;

  /// Returns true if the role is a super admin role.
  core.bool isSuperAdminRole;

  /// Returns true if this is a pre-defined system role.
  core.bool isSystemRole;

  /// The type of the API resource. This is always admin#directory#role.
  core.String kind;

  /// A short description of the role.
  core.String roleDescription;

  /// ID of the role.
  core.String roleId;

  /// Name of the role.
  core.String roleName;

  /// The set of privileges that are granted to this role.
  core.List<RoleRolePrivileges> rolePrivileges;

  Role();

  Role.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("isSuperAdminRole")) {
      isSuperAdminRole = _json["isSuperAdminRole"];
    }
    if (_json.containsKey("isSystemRole")) {
      isSystemRole = _json["isSystemRole"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("roleDescription")) {
      roleDescription = _json["roleDescription"];
    }
    if (_json.containsKey("roleId")) {
      roleId = _json["roleId"];
    }
    if (_json.containsKey("roleName")) {
      roleName = _json["roleName"];
    }
    if (_json.containsKey("rolePrivileges")) {
      rolePrivileges = (_json["rolePrivileges"] as core.List)
          .map<RoleRolePrivileges>(
              (value) => new RoleRolePrivileges.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (isSuperAdminRole != null) {
      _json["isSuperAdminRole"] = isSuperAdminRole;
    }
    if (isSystemRole != null) {
      _json["isSystemRole"] = isSystemRole;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (roleDescription != null) {
      _json["roleDescription"] = roleDescription;
    }
    if (roleId != null) {
      _json["roleId"] = roleId;
    }
    if (roleName != null) {
      _json["roleName"] = roleName;
    }
    if (rolePrivileges != null) {
      _json["rolePrivileges"] =
          rolePrivileges.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// JSON template for roleAssignment resource in Directory API.
class RoleAssignment {
  /// The unique ID of the user this role is assigned to.
  core.String assignedTo;

  /// ETag of the resource.
  core.String etag;

  /// The type of the API resource. This is always
  /// admin#directory#roleAssignment.
  core.String kind;

  /// If the role is restricted to an organization unit, this contains the ID
  /// for the organization unit the exercise of this role is restricted to.
  core.String orgUnitId;

  /// ID of this roleAssignment.
  core.String roleAssignmentId;

  /// The ID of the role that is assigned.
  core.String roleId;

  /// The scope in which this role is assigned. Possible values are:
  /// - CUSTOMER
  /// - ORG_UNIT
  core.String scopeType;

  RoleAssignment();

  RoleAssignment.fromJson(core.Map _json) {
    if (_json.containsKey("assignedTo")) {
      assignedTo = _json["assignedTo"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("orgUnitId")) {
      orgUnitId = _json["orgUnitId"];
    }
    if (_json.containsKey("roleAssignmentId")) {
      roleAssignmentId = _json["roleAssignmentId"];
    }
    if (_json.containsKey("roleId")) {
      roleId = _json["roleId"];
    }
    if (_json.containsKey("scopeType")) {
      scopeType = _json["scopeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assignedTo != null) {
      _json["assignedTo"] = assignedTo;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (orgUnitId != null) {
      _json["orgUnitId"] = orgUnitId;
    }
    if (roleAssignmentId != null) {
      _json["roleAssignmentId"] = roleAssignmentId;
    }
    if (roleId != null) {
      _json["roleId"] = roleId;
    }
    if (scopeType != null) {
      _json["scopeType"] = scopeType;
    }
    return _json;
  }
}

/// JSON response template for List roleAssignments operation in Directory API.
class RoleAssignments {
  /// ETag of the resource.
  core.String etag;

  /// A list of RoleAssignment resources.
  core.List<RoleAssignment> items;

  /// The type of the API resource. This is always
  /// admin#directory#roleAssignments.
  core.String kind;
  core.String nextPageToken;

  RoleAssignments();

  RoleAssignments.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<RoleAssignment>((value) => new RoleAssignment.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// JSON response template for List roles operation in Directory API.
class Roles {
  /// ETag of the resource.
  core.String etag;

  /// A list of Role resources.
  core.List<Role> items;

  /// The type of the API resource. This is always admin#directory#roles.
  core.String kind;
  core.String nextPageToken;

  Roles();

  Roles.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Role>((value) => new Role.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// JSON template for Schema resource in Directory API.
class Schema {
  /// Display name for the schema.
  core.String displayName;

  /// ETag of the resource.
  core.String etag;

  /// Fields of Schema
  core.List<SchemaFieldSpec> fields;

  /// Kind of resource this is.
  core.String kind;

  /// Unique identifier of Schema (Read-only)
  core.String schemaId;

  /// Schema name
  core.String schemaName;

  Schema();

  Schema.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<SchemaFieldSpec>((value) => new SchemaFieldSpec.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("schemaId")) {
      schemaId = _json["schemaId"];
    }
    if (_json.containsKey("schemaName")) {
      schemaName = _json["schemaName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (schemaId != null) {
      _json["schemaId"] = schemaId;
    }
    if (schemaName != null) {
      _json["schemaName"] = schemaName;
    }
    return _json;
  }
}

/// Indexing spec for a numeric field. By default, only exact match queries will
/// be supported for numeric fields. Setting the numericIndexingSpec allows
/// range queries to be supported.
class SchemaFieldSpecNumericIndexingSpec {
  /// Maximum value of this field. This is meant to be indicative rather than
  /// enforced. Values outside this range will still be indexed, but search may
  /// not be as performant.
  core.double maxValue;

  /// Minimum value of this field. This is meant to be indicative rather than
  /// enforced. Values outside this range will still be indexed, but search may
  /// not be as performant.
  core.double minValue;

  SchemaFieldSpecNumericIndexingSpec();

  SchemaFieldSpecNumericIndexingSpec.fromJson(core.Map _json) {
    if (_json.containsKey("maxValue")) {
      maxValue = _json["maxValue"].toDouble();
    }
    if (_json.containsKey("minValue")) {
      minValue = _json["minValue"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxValue != null) {
      _json["maxValue"] = maxValue;
    }
    if (minValue != null) {
      _json["minValue"] = minValue;
    }
    return _json;
  }
}

/// JSON template for FieldSpec resource for Schemas in Directory API.
class SchemaFieldSpec {
  /// Display Name of the field.
  core.String displayName;

  /// ETag of the resource.
  core.String etag;

  /// Unique identifier of Field (Read-only)
  core.String fieldId;

  /// Name of the field.
  core.String fieldName;

  /// Type of the field.
  core.String fieldType;

  /// Boolean specifying whether the field is indexed or not.
  core.bool indexed;

  /// Kind of resource this is.
  core.String kind;

  /// Boolean specifying whether this is a multi-valued field or not.
  core.bool multiValued;

  /// Indexing spec for a numeric field. By default, only exact match queries
  /// will be supported for numeric fields. Setting the numericIndexingSpec
  /// allows range queries to be supported.
  SchemaFieldSpecNumericIndexingSpec numericIndexingSpec;

  /// Read ACLs on the field specifying who can view values of this field. Valid
  /// values are "ALL_DOMAIN_USERS" and "ADMINS_AND_SELF".
  core.String readAccessType;

  SchemaFieldSpec();

  SchemaFieldSpec.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("fieldId")) {
      fieldId = _json["fieldId"];
    }
    if (_json.containsKey("fieldName")) {
      fieldName = _json["fieldName"];
    }
    if (_json.containsKey("fieldType")) {
      fieldType = _json["fieldType"];
    }
    if (_json.containsKey("indexed")) {
      indexed = _json["indexed"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("multiValued")) {
      multiValued = _json["multiValued"];
    }
    if (_json.containsKey("numericIndexingSpec")) {
      numericIndexingSpec = new SchemaFieldSpecNumericIndexingSpec.fromJson(
          _json["numericIndexingSpec"]);
    }
    if (_json.containsKey("readAccessType")) {
      readAccessType = _json["readAccessType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (fieldId != null) {
      _json["fieldId"] = fieldId;
    }
    if (fieldName != null) {
      _json["fieldName"] = fieldName;
    }
    if (fieldType != null) {
      _json["fieldType"] = fieldType;
    }
    if (indexed != null) {
      _json["indexed"] = indexed;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (multiValued != null) {
      _json["multiValued"] = multiValued;
    }
    if (numericIndexingSpec != null) {
      _json["numericIndexingSpec"] = (numericIndexingSpec).toJson();
    }
    if (readAccessType != null) {
      _json["readAccessType"] = readAccessType;
    }
    return _json;
  }
}

/// JSON response template for List Schema operation in Directory API.
class Schemas {
  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// List of UserSchema objects.
  core.List<Schema> schemas;

  Schemas();

  Schemas.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("schemas")) {
      schemas = (_json["schemas"] as core.List)
          .map<Schema>((value) => new Schema.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (schemas != null) {
      _json["schemas"] = schemas.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// JSON template for token resource in Directory API.
class Token {
  /// Whether the application is registered with Google. The value is true if
  /// the application has an anonymous Client ID.
  core.bool anonymous;

  /// The Client ID of the application the token is issued to.
  core.String clientId;

  /// The displayable name of the application the token is issued to.
  core.String displayText;

  /// ETag of the resource.
  core.String etag;

  /// The type of the API resource. This is always admin#directory#token.
  core.String kind;

  /// Whether the token is issued to an installed application. The value is true
  /// if the application is installed to a desktop or mobile device.
  core.bool nativeApp;

  /// A list of authorization scopes the application is granted.
  core.List<core.String> scopes;

  /// The unique ID of the user that issued the token.
  core.String userKey;

  Token();

  Token.fromJson(core.Map _json) {
    if (_json.containsKey("anonymous")) {
      anonymous = _json["anonymous"];
    }
    if (_json.containsKey("clientId")) {
      clientId = _json["clientId"];
    }
    if (_json.containsKey("displayText")) {
      displayText = _json["displayText"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nativeApp")) {
      nativeApp = _json["nativeApp"];
    }
    if (_json.containsKey("scopes")) {
      scopes = (_json["scopes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("userKey")) {
      userKey = _json["userKey"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (anonymous != null) {
      _json["anonymous"] = anonymous;
    }
    if (clientId != null) {
      _json["clientId"] = clientId;
    }
    if (displayText != null) {
      _json["displayText"] = displayText;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nativeApp != null) {
      _json["nativeApp"] = nativeApp;
    }
    if (scopes != null) {
      _json["scopes"] = scopes;
    }
    if (userKey != null) {
      _json["userKey"] = userKey;
    }
    return _json;
  }
}

/// JSON response template for List tokens operation in Directory API.
class Tokens {
  /// ETag of the resource.
  core.String etag;

  /// A list of Token resources.
  core.List<Token> items;

  /// The type of the API resource. This is always admin#directory#tokenList.
  core.String kind;

  Tokens();

  Tokens.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Token>((value) => new Token.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// JSON template for Trusted App Ids Resource object in Directory API.
class TrustedAppId {
  /// Android package name.
  core.String androidPackageName;

  /// SHA1 signature of the app certificate.
  core.String certificateHashSHA1;

  /// SHA256 signature of the app certificate.
  core.String certificateHashSHA256;
  core.String etag;

  /// Identifies the resource as a trusted AppId.
  core.String kind;

  TrustedAppId();

  TrustedAppId.fromJson(core.Map _json) {
    if (_json.containsKey("androidPackageName")) {
      androidPackageName = _json["androidPackageName"];
    }
    if (_json.containsKey("certificateHashSHA1")) {
      certificateHashSHA1 = _json["certificateHashSHA1"];
    }
    if (_json.containsKey("certificateHashSHA256")) {
      certificateHashSHA256 = _json["certificateHashSHA256"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidPackageName != null) {
      _json["androidPackageName"] = androidPackageName;
    }
    if (certificateHashSHA1 != null) {
      _json["certificateHashSHA1"] = certificateHashSHA1;
    }
    if (certificateHashSHA256 != null) {
      _json["certificateHashSHA256"] = certificateHashSHA256;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// JSON template for Trusted Apps response object of a user in Directory API.
class TrustedApps {
  /// ETag of the resource.
  core.String etag;

  /// Identifies the resource as trusted apps response.
  core.String kind;
  core.String nextPageToken;

  /// Trusted Apps list.
  core.List<TrustedAppId> trustedApps;

  TrustedApps();

  TrustedApps.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("trustedApps")) {
      trustedApps = (_json["trustedApps"] as core.List)
          .map<TrustedAppId>((value) => new TrustedAppId.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (trustedApps != null) {
      _json["trustedApps"] =
          trustedApps.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// JSON template for User object in Directory API.
class User {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object addresses;

  /// Indicates if user has agreed to terms (Read-only)
  core.bool agreedToTerms;

  /// List of aliases (Read-only)
  core.List<core.String> aliases;

  /// Indicates if user is archived.
  core.bool archived;

  /// Boolean indicating if the user should change password in next login
  core.bool changePasswordAtNextLogin;

  /// User's G Suite account creation time. (Read-only)
  core.DateTime creationTime;

  /// Custom fields of the user.
  core.Map<core.String, UserCustomProperties> customSchemas;

  /// CustomerId of User (Read-only)
  core.String customerId;
  core.DateTime deletionTime;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object emails;

  /// ETag of the resource.
  core.String etag;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object externalIds;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object gender;

  /// Hash function name for password. Supported are MD5, SHA-1 and crypt
  core.String hashFunction;

  /// Unique identifier of User (Read-only)
  core.String id;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object ims;

  /// Boolean indicating if user is included in Global Address List
  core.bool includeInGlobalAddressList;

  /// Boolean indicating if ip is whitelisted
  core.bool ipWhitelisted;

  /// Boolean indicating if the user is admin (Read-only)
  core.bool isAdmin;

  /// Boolean indicating if the user is delegated admin (Read-only)
  core.bool isDelegatedAdmin;

  /// Is 2-step verification enforced (Read-only)
  core.bool isEnforcedIn2Sv;

  /// Is enrolled in 2-step verification (Read-only)
  core.bool isEnrolledIn2Sv;

  /// Is mailbox setup (Read-only)
  core.bool isMailboxSetup;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object keywords;

  /// Kind of resource this is.
  core.String kind;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object languages;

  /// User's last login time. (Read-only)
  core.DateTime lastLoginTime;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object locations;

  /// User's name
  UserName name;

  /// List of non editable aliases (Read-only)
  core.List<core.String> nonEditableAliases;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object notes;

  /// OrgUnit of User
  core.String orgUnitPath;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object organizations;

  /// User's password
  core.String password;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object phones;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object posixAccounts;

  /// username of User
  core.String primaryEmail;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object relations;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object sshPublicKeys;

  /// Indicates if user is suspended.
  core.bool suspended;

  /// Suspension reason if user is suspended (Read-only)
  core.String suspensionReason;

  /// ETag of the user's photo (Read-only)
  core.String thumbnailPhotoEtag;

  /// Photo Url of the user (Read-only)
  core.String thumbnailPhotoUrl;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object websites;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("addresses")) {
      addresses = _json["addresses"];
    }
    if (_json.containsKey("agreedToTerms")) {
      agreedToTerms = _json["agreedToTerms"];
    }
    if (_json.containsKey("aliases")) {
      aliases = (_json["aliases"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("archived")) {
      archived = _json["archived"];
    }
    if (_json.containsKey("changePasswordAtNextLogin")) {
      changePasswordAtNextLogin = _json["changePasswordAtNextLogin"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("customSchemas")) {
      customSchemas = commons.mapMap<core.Map, UserCustomProperties>(
          _json["customSchemas"].cast<core.String, core.Map>(),
          (core.Map item) => new UserCustomProperties.fromJson(item));
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("deletionTime")) {
      deletionTime = core.DateTime.parse(_json["deletionTime"]);
    }
    if (_json.containsKey("emails")) {
      emails = _json["emails"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("externalIds")) {
      externalIds = _json["externalIds"];
    }
    if (_json.containsKey("gender")) {
      gender = _json["gender"];
    }
    if (_json.containsKey("hashFunction")) {
      hashFunction = _json["hashFunction"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("ims")) {
      ims = _json["ims"];
    }
    if (_json.containsKey("includeInGlobalAddressList")) {
      includeInGlobalAddressList = _json["includeInGlobalAddressList"];
    }
    if (_json.containsKey("ipWhitelisted")) {
      ipWhitelisted = _json["ipWhitelisted"];
    }
    if (_json.containsKey("isAdmin")) {
      isAdmin = _json["isAdmin"];
    }
    if (_json.containsKey("isDelegatedAdmin")) {
      isDelegatedAdmin = _json["isDelegatedAdmin"];
    }
    if (_json.containsKey("isEnforcedIn2Sv")) {
      isEnforcedIn2Sv = _json["isEnforcedIn2Sv"];
    }
    if (_json.containsKey("isEnrolledIn2Sv")) {
      isEnrolledIn2Sv = _json["isEnrolledIn2Sv"];
    }
    if (_json.containsKey("isMailboxSetup")) {
      isMailboxSetup = _json["isMailboxSetup"];
    }
    if (_json.containsKey("keywords")) {
      keywords = _json["keywords"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("languages")) {
      languages = _json["languages"];
    }
    if (_json.containsKey("lastLoginTime")) {
      lastLoginTime = core.DateTime.parse(_json["lastLoginTime"]);
    }
    if (_json.containsKey("locations")) {
      locations = _json["locations"];
    }
    if (_json.containsKey("name")) {
      name = new UserName.fromJson(_json["name"]);
    }
    if (_json.containsKey("nonEditableAliases")) {
      nonEditableAliases =
          (_json["nonEditableAliases"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("orgUnitPath")) {
      orgUnitPath = _json["orgUnitPath"];
    }
    if (_json.containsKey("organizations")) {
      organizations = _json["organizations"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("phones")) {
      phones = _json["phones"];
    }
    if (_json.containsKey("posixAccounts")) {
      posixAccounts = _json["posixAccounts"];
    }
    if (_json.containsKey("primaryEmail")) {
      primaryEmail = _json["primaryEmail"];
    }
    if (_json.containsKey("relations")) {
      relations = _json["relations"];
    }
    if (_json.containsKey("sshPublicKeys")) {
      sshPublicKeys = _json["sshPublicKeys"];
    }
    if (_json.containsKey("suspended")) {
      suspended = _json["suspended"];
    }
    if (_json.containsKey("suspensionReason")) {
      suspensionReason = _json["suspensionReason"];
    }
    if (_json.containsKey("thumbnailPhotoEtag")) {
      thumbnailPhotoEtag = _json["thumbnailPhotoEtag"];
    }
    if (_json.containsKey("thumbnailPhotoUrl")) {
      thumbnailPhotoUrl = _json["thumbnailPhotoUrl"];
    }
    if (_json.containsKey("websites")) {
      websites = _json["websites"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addresses != null) {
      _json["addresses"] = addresses;
    }
    if (agreedToTerms != null) {
      _json["agreedToTerms"] = agreedToTerms;
    }
    if (aliases != null) {
      _json["aliases"] = aliases;
    }
    if (archived != null) {
      _json["archived"] = archived;
    }
    if (changePasswordAtNextLogin != null) {
      _json["changePasswordAtNextLogin"] = changePasswordAtNextLogin;
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (customSchemas != null) {
      _json["customSchemas"] = customSchemas;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (deletionTime != null) {
      _json["deletionTime"] = (deletionTime).toIso8601String();
    }
    if (emails != null) {
      _json["emails"] = emails;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (externalIds != null) {
      _json["externalIds"] = externalIds;
    }
    if (gender != null) {
      _json["gender"] = gender;
    }
    if (hashFunction != null) {
      _json["hashFunction"] = hashFunction;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (ims != null) {
      _json["ims"] = ims;
    }
    if (includeInGlobalAddressList != null) {
      _json["includeInGlobalAddressList"] = includeInGlobalAddressList;
    }
    if (ipWhitelisted != null) {
      _json["ipWhitelisted"] = ipWhitelisted;
    }
    if (isAdmin != null) {
      _json["isAdmin"] = isAdmin;
    }
    if (isDelegatedAdmin != null) {
      _json["isDelegatedAdmin"] = isDelegatedAdmin;
    }
    if (isEnforcedIn2Sv != null) {
      _json["isEnforcedIn2Sv"] = isEnforcedIn2Sv;
    }
    if (isEnrolledIn2Sv != null) {
      _json["isEnrolledIn2Sv"] = isEnrolledIn2Sv;
    }
    if (isMailboxSetup != null) {
      _json["isMailboxSetup"] = isMailboxSetup;
    }
    if (keywords != null) {
      _json["keywords"] = keywords;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (languages != null) {
      _json["languages"] = languages;
    }
    if (lastLoginTime != null) {
      _json["lastLoginTime"] = (lastLoginTime).toIso8601String();
    }
    if (locations != null) {
      _json["locations"] = locations;
    }
    if (name != null) {
      _json["name"] = (name).toJson();
    }
    if (nonEditableAliases != null) {
      _json["nonEditableAliases"] = nonEditableAliases;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (orgUnitPath != null) {
      _json["orgUnitPath"] = orgUnitPath;
    }
    if (organizations != null) {
      _json["organizations"] = organizations;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (phones != null) {
      _json["phones"] = phones;
    }
    if (posixAccounts != null) {
      _json["posixAccounts"] = posixAccounts;
    }
    if (primaryEmail != null) {
      _json["primaryEmail"] = primaryEmail;
    }
    if (relations != null) {
      _json["relations"] = relations;
    }
    if (sshPublicKeys != null) {
      _json["sshPublicKeys"] = sshPublicKeys;
    }
    if (suspended != null) {
      _json["suspended"] = suspended;
    }
    if (suspensionReason != null) {
      _json["suspensionReason"] = suspensionReason;
    }
    if (thumbnailPhotoEtag != null) {
      _json["thumbnailPhotoEtag"] = thumbnailPhotoEtag;
    }
    if (thumbnailPhotoUrl != null) {
      _json["thumbnailPhotoUrl"] = thumbnailPhotoUrl;
    }
    if (websites != null) {
      _json["websites"] = websites;
    }
    return _json;
  }
}

/// JSON template for About (notes) of a user in Directory API.
class UserAbout {
  /// About entry can have a type which indicates the content type. It can
  /// either be plain or html. By default, notes contents are assumed to contain
  /// plain text.
  core.String contentType;

  /// Actual value of notes.
  core.String value;

  UserAbout();

  UserAbout.fromJson(core.Map _json) {
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// JSON template for address.
class UserAddress {
  /// Country.
  core.String country;

  /// Country code.
  core.String countryCode;

  /// Custom type.
  core.String customType;

  /// Extended Address.
  core.String extendedAddress;

  /// Formatted address.
  core.String formatted;

  /// Locality.
  core.String locality;

  /// Other parts of address.
  core.String poBox;

  /// Postal code.
  core.String postalCode;

  /// If this is user's primary address. Only one entry could be marked as
  /// primary.
  core.bool primary;

  /// Region.
  core.String region;

  /// User supplied address was structured. Structured addresses are NOT
  /// supported at this time. You might be able to write structured addresses,
  /// but any values will eventually be clobbered.
  core.bool sourceIsStructured;

  /// Street.
  core.String streetAddress;

  /// Each entry can have a type which indicates standard values of that entry.
  /// For example address could be of home, work etc. In addition to the
  /// standard type, an entry can have a custom type and can take any value.
  /// Such type should have the CUSTOM value as type and also have a customType
  /// value.
  core.String type;

  UserAddress();

  UserAddress.fromJson(core.Map _json) {
    if (_json.containsKey("country")) {
      country = _json["country"];
    }
    if (_json.containsKey("countryCode")) {
      countryCode = _json["countryCode"];
    }
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("extendedAddress")) {
      extendedAddress = _json["extendedAddress"];
    }
    if (_json.containsKey("formatted")) {
      formatted = _json["formatted"];
    }
    if (_json.containsKey("locality")) {
      locality = _json["locality"];
    }
    if (_json.containsKey("poBox")) {
      poBox = _json["poBox"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("sourceIsStructured")) {
      sourceIsStructured = _json["sourceIsStructured"];
    }
    if (_json.containsKey("streetAddress")) {
      streetAddress = _json["streetAddress"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (country != null) {
      _json["country"] = country;
    }
    if (countryCode != null) {
      _json["countryCode"] = countryCode;
    }
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (extendedAddress != null) {
      _json["extendedAddress"] = extendedAddress;
    }
    if (formatted != null) {
      _json["formatted"] = formatted;
    }
    if (locality != null) {
      _json["locality"] = locality;
    }
    if (poBox != null) {
      _json["poBox"] = poBox;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (sourceIsStructured != null) {
      _json["sourceIsStructured"] = sourceIsStructured;
    }
    if (streetAddress != null) {
      _json["streetAddress"] = streetAddress;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// JSON template for a set of custom properties (i.e. all fields in a
/// particular schema)
class UserCustomProperties
    extends collection.MapBase<core.String, core.Object> {
  final _innerMap = <core.String, core.Object>{};

  UserCustomProperties();

  UserCustomProperties.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = value;
    });
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    this.forEach((core.String key, value) {
      _json[key] = value;
    });
    return _json;
  }

  core.Object operator [](core.Object key) => _innerMap[key];

  operator []=(core.String key, core.Object value) {
    _innerMap[key] = value;
  }

  void clear() {
    _innerMap.clear();
  }

  core.Iterable<core.String> get keys => _innerMap.keys;

  core.Object remove(core.Object key) => _innerMap.remove(key);
}

/// JSON template for an email.
class UserEmail {
  /// Email id of the user.
  core.String address;

  /// Custom Type.
  core.String customType;

  /// If this is user's primary email. Only one entry could be marked as
  /// primary.
  core.bool primary;

  /// Each entry can have a type which indicates standard types of that entry.
  /// For example email could be of home, work etc. In addition to the standard
  /// type, an entry can have a custom type and can take any value Such types
  /// should have the CUSTOM value as type and also have a customType value.
  core.String type;

  UserEmail();

  UserEmail.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// JSON template for an externalId entry.
class UserExternalId {
  /// Custom type.
  core.String customType;

  /// The type of the Id.
  core.String type;

  /// The value of the id.
  core.String value;

  UserExternalId();

  UserExternalId.fromJson(core.Map _json) {
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class UserGender {
  /// AddressMeAs. A human-readable string containing the proper way to refer to
  /// the profile owner by humans, for example "he/him/his" or
  /// "they/them/their".
  core.String addressMeAs;

  /// Custom gender.
  core.String customGender;

  /// Gender.
  core.String type;

  UserGender();

  UserGender.fromJson(core.Map _json) {
    if (_json.containsKey("addressMeAs")) {
      addressMeAs = _json["addressMeAs"];
    }
    if (_json.containsKey("customGender")) {
      customGender = _json["customGender"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addressMeAs != null) {
      _json["addressMeAs"] = addressMeAs;
    }
    if (customGender != null) {
      _json["customGender"] = customGender;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// JSON template for instant messenger of an user.
class UserIm {
  /// Custom protocol.
  core.String customProtocol;

  /// Custom type.
  core.String customType;

  /// Instant messenger id.
  core.String im;

  /// If this is user's primary im. Only one entry could be marked as primary.
  core.bool primary;

  /// Protocol used in the instant messenger. It should be one of the values
  /// from ImProtocolTypes map. Similar to type, it can take a CUSTOM value and
  /// specify the custom name in customProtocol field.
  core.String protocol;

  /// Each entry can have a type which indicates standard types of that entry.
  /// For example instant messengers could be of home, work etc. In addition to
  /// the standard type, an entry can have a custom type and can take any value.
  /// Such types should have the CUSTOM value as type and also have a customType
  /// value.
  core.String type;

  UserIm();

  UserIm.fromJson(core.Map _json) {
    if (_json.containsKey("customProtocol")) {
      customProtocol = _json["customProtocol"];
    }
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("im")) {
      im = _json["im"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("protocol")) {
      protocol = _json["protocol"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customProtocol != null) {
      _json["customProtocol"] = customProtocol;
    }
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (im != null) {
      _json["im"] = im;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (protocol != null) {
      _json["protocol"] = protocol;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// JSON template for a keyword entry.
class UserKeyword {
  /// Custom Type.
  core.String customType;

  /// Each entry can have a type which indicates standard type of that entry.
  /// For example, keyword could be of type occupation or outlook. In addition
  /// to the standard type, an entry can have a custom type and can give it any
  /// name. Such types should have the CUSTOM value as type and also have a
  /// customType value.
  core.String type;

  /// Keyword.
  core.String value;

  UserKeyword();

  UserKeyword.fromJson(core.Map _json) {
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// JSON template for a language entry.
class UserLanguage {
  /// Other language. User can provide own language name if there is no
  /// corresponding Google III language code. If this is set LanguageCode can't
  /// be set
  core.String customLanguage;

  /// Language Code. Should be used for storing Google III LanguageCode string
  /// representation for language. Illegal values cause SchemaException.
  core.String languageCode;

  UserLanguage();

  UserLanguage.fromJson(core.Map _json) {
    if (_json.containsKey("customLanguage")) {
      customLanguage = _json["customLanguage"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customLanguage != null) {
      _json["customLanguage"] = customLanguage;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// JSON template for a location entry.
class UserLocation {
  /// Textual location. This is most useful for display purposes to concisely
  /// describe the location. For example, "Mountain View, CA", "Near Seattle",
  /// "US-NYC-9TH 9A209A".
  core.String area;

  /// Building Identifier.
  core.String buildingId;

  /// Custom Type.
  core.String customType;

  /// Most specific textual code of individual desk location.
  core.String deskCode;

  /// Floor name/number.
  core.String floorName;

  /// Floor section. More specific location within the floor. For example, if a
  /// floor is divided into sections "A", "B", and "C", this field would
  /// identify one of those values.
  core.String floorSection;

  /// Each entry can have a type which indicates standard types of that entry.
  /// For example location could be of types default and desk. In addition to
  /// standard type, an entry can have a custom type and can give it any name.
  /// Such types should have "custom" as type and also have a customType value.
  core.String type;

  UserLocation();

  UserLocation.fromJson(core.Map _json) {
    if (_json.containsKey("area")) {
      area = _json["area"];
    }
    if (_json.containsKey("buildingId")) {
      buildingId = _json["buildingId"];
    }
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("deskCode")) {
      deskCode = _json["deskCode"];
    }
    if (_json.containsKey("floorName")) {
      floorName = _json["floorName"];
    }
    if (_json.containsKey("floorSection")) {
      floorSection = _json["floorSection"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (area != null) {
      _json["area"] = area;
    }
    if (buildingId != null) {
      _json["buildingId"] = buildingId;
    }
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (deskCode != null) {
      _json["deskCode"] = deskCode;
    }
    if (floorName != null) {
      _json["floorName"] = floorName;
    }
    if (floorSection != null) {
      _json["floorSection"] = floorSection;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// JSON request template for setting/revoking admin status of a user in
/// Directory API.
class UserMakeAdmin {
  /// Boolean indicating new admin status of the user
  core.bool status;

  UserMakeAdmin();

  UserMakeAdmin.fromJson(core.Map _json) {
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// JSON template for name of a user in Directory API.
class UserName {
  /// Last Name
  core.String familyName;

  /// Full Name
  core.String fullName;

  /// First Name
  core.String givenName;

  UserName();

  UserName.fromJson(core.Map _json) {
    if (_json.containsKey("familyName")) {
      familyName = _json["familyName"];
    }
    if (_json.containsKey("fullName")) {
      fullName = _json["fullName"];
    }
    if (_json.containsKey("givenName")) {
      givenName = _json["givenName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (familyName != null) {
      _json["familyName"] = familyName;
    }
    if (fullName != null) {
      _json["fullName"] = fullName;
    }
    if (givenName != null) {
      _json["givenName"] = givenName;
    }
    return _json;
  }
}

/// JSON template for an organization entry.
class UserOrganization {
  /// The cost center of the users department.
  core.String costCenter;

  /// Custom type.
  core.String customType;

  /// Department within the organization.
  core.String department;

  /// Description of the organization.
  core.String description;

  /// The domain to which the organization belongs to.
  core.String domain;

  /// The full-time equivalent percent within the organization (100000 = 100%).
  core.int fullTimeEquivalent;

  /// Location of the organization. This need not be fully qualified address.
  core.String location;

  /// Name of the organization
  core.String name;

  /// If it user's primary organization.
  core.bool primary;

  /// Symbol of the organization.
  core.String symbol;

  /// Title (designation) of the user in the organization.
  core.String title;

  /// Each entry can have a type which indicates standard types of that entry.
  /// For example organization could be of school, work etc. In addition to the
  /// standard type, an entry can have a custom type and can give it any name.
  /// Such types should have the CUSTOM value as type and also have a CustomType
  /// value.
  core.String type;

  UserOrganization();

  UserOrganization.fromJson(core.Map _json) {
    if (_json.containsKey("costCenter")) {
      costCenter = _json["costCenter"];
    }
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("department")) {
      department = _json["department"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("fullTimeEquivalent")) {
      fullTimeEquivalent = _json["fullTimeEquivalent"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("symbol")) {
      symbol = _json["symbol"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (costCenter != null) {
      _json["costCenter"] = costCenter;
    }
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (department != null) {
      _json["department"] = department;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (fullTimeEquivalent != null) {
      _json["fullTimeEquivalent"] = fullTimeEquivalent;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (symbol != null) {
      _json["symbol"] = symbol;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// JSON template for a phone entry.
class UserPhone {
  /// Custom Type.
  core.String customType;

  /// If this is user's primary phone or not.
  core.bool primary;

  /// Each entry can have a type which indicates standard types of that entry.
  /// For example phone could be of home_fax, work, mobile etc. In addition to
  /// the standard type, an entry can have a custom type and can give it any
  /// name. Such types should have the CUSTOM value as type and also have a
  /// customType value.
  core.String type;

  /// Phone number.
  core.String value;

  UserPhone();

  UserPhone.fromJson(core.Map _json) {
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// JSON template for Photo object in Directory API.
class UserPhoto {
  /// ETag of the resource.
  core.String etag;

  /// Height in pixels of the photo
  core.int height;

  /// Unique identifier of User (Read-only)
  core.String id;

  /// Kind of resource this is.
  core.String kind;

  /// Mime Type of the photo
  core.String mimeType;

  /// Base64 encoded photo data
  core.String photoData;
  core.List<core.int> get photoDataAsBytes {
    return convert.base64.decode(photoData);
  }

  set photoDataAsBytes(core.List<core.int> _bytes) {
    photoData =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Primary email of User (Read-only)
  core.String primaryEmail;

  /// Width in pixels of the photo
  core.int width;

  UserPhoto();

  UserPhoto.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("photoData")) {
      photoData = _json["photoData"];
    }
    if (_json.containsKey("primaryEmail")) {
      primaryEmail = _json["primaryEmail"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (photoData != null) {
      _json["photoData"] = photoData;
    }
    if (primaryEmail != null) {
      _json["primaryEmail"] = primaryEmail;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// JSON template for a POSIX account entry. Description of the field family:
/// go/fbs-posix.
class UserPosixAccount {
  /// A POSIX account field identifier.
  core.String accountId;

  /// The GECOS (user information) for this account.
  core.String gecos;

  /// The default group ID.
  core.String gid;

  /// The path to the home directory for this account.
  core.String homeDirectory;

  /// The operating system type for this account.
  core.String operatingSystemType;

  /// If this is user's primary account within the SystemId.
  core.bool primary;

  /// The path to the login shell for this account.
  core.String shell;

  /// System identifier for which account Username or Uid apply to.
  core.String systemId;

  /// The POSIX compliant user ID.
  core.String uid;

  /// The username of the account.
  core.String username;

  UserPosixAccount();

  UserPosixAccount.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("gecos")) {
      gecos = _json["gecos"];
    }
    if (_json.containsKey("gid")) {
      gid = _json["gid"];
    }
    if (_json.containsKey("homeDirectory")) {
      homeDirectory = _json["homeDirectory"];
    }
    if (_json.containsKey("operatingSystemType")) {
      operatingSystemType = _json["operatingSystemType"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("shell")) {
      shell = _json["shell"];
    }
    if (_json.containsKey("systemId")) {
      systemId = _json["systemId"];
    }
    if (_json.containsKey("uid")) {
      uid = _json["uid"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (gecos != null) {
      _json["gecos"] = gecos;
    }
    if (gid != null) {
      _json["gid"] = gid;
    }
    if (homeDirectory != null) {
      _json["homeDirectory"] = homeDirectory;
    }
    if (operatingSystemType != null) {
      _json["operatingSystemType"] = operatingSystemType;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (shell != null) {
      _json["shell"] = shell;
    }
    if (systemId != null) {
      _json["systemId"] = systemId;
    }
    if (uid != null) {
      _json["uid"] = uid;
    }
    if (username != null) {
      _json["username"] = username;
    }
    return _json;
  }
}

/// JSON template for a relation entry.
class UserRelation {
  /// Custom Type.
  core.String customType;

  /// The relation of the user. Some of the possible values are mother, father,
  /// sister, brother, manager, assistant, partner.
  core.String type;

  /// The name of the relation.
  core.String value;

  UserRelation();

  UserRelation.fromJson(core.Map _json) {
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// JSON template for a POSIX account entry.
class UserSshPublicKey {
  /// An expiration time in microseconds since epoch.
  core.String expirationTimeUsec;

  /// A SHA-256 fingerprint of the SSH public key. (Read-only)
  core.String fingerprint;

  /// An SSH public key.
  core.String key;

  UserSshPublicKey();

  UserSshPublicKey.fromJson(core.Map _json) {
    if (_json.containsKey("expirationTimeUsec")) {
      expirationTimeUsec = _json["expirationTimeUsec"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expirationTimeUsec != null) {
      _json["expirationTimeUsec"] = expirationTimeUsec;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

/// JSON request template to undelete a user in Directory API.
class UserUndelete {
  /// OrgUnit of User
  core.String orgUnitPath;

  UserUndelete();

  UserUndelete.fromJson(core.Map _json) {
    if (_json.containsKey("orgUnitPath")) {
      orgUnitPath = _json["orgUnitPath"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (orgUnitPath != null) {
      _json["orgUnitPath"] = orgUnitPath;
    }
    return _json;
  }
}

/// JSON template for a website entry.
class UserWebsite {
  /// Custom Type.
  core.String customType;

  /// If this is user's primary website or not.
  core.bool primary;

  /// Each entry can have a type which indicates standard types of that entry.
  /// For example website could be of home, work, blog etc. In addition to the
  /// standard type, an entry can have a custom type and can give it any name.
  /// Such types should have the CUSTOM value as type and also have a customType
  /// value.
  core.String type;

  /// Website.
  core.String value;

  UserWebsite();

  UserWebsite.fromJson(core.Map _json) {
    if (_json.containsKey("customType")) {
      customType = _json["customType"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customType != null) {
      _json["customType"] = customType;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// JSON response template for List Users operation in Apps Directory API.
class Users {
  /// ETag of the resource.
  core.String etag;

  /// Kind of resource this is.
  core.String kind;

  /// Token used to access next page of this result.
  core.String nextPageToken;

  /// Event that triggered this response (only used in case of Push Response)
  core.String triggerEvent;

  /// List of user objects.
  core.List<User> users;

  Users();

  Users.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("trigger_event")) {
      triggerEvent = _json["trigger_event"];
    }
    if (_json.containsKey("users")) {
      users = (_json["users"] as core.List)
          .map<User>((value) => new User.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (triggerEvent != null) {
      _json["trigger_event"] = triggerEvent;
    }
    if (users != null) {
      _json["users"] = users.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// JSON template for verification codes in Directory API.
class VerificationCode {
  /// ETag of the resource.
  core.String etag;

  /// The type of the resource. This is always admin#directory#verificationCode.
  core.String kind;

  /// The obfuscated unique ID of the user.
  core.String userId;

  /// A current verification code for the user. Invalidated or used verification
  /// codes are not returned as part of the result.
  core.String verificationCode;

  VerificationCode();

  VerificationCode.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
    if (_json.containsKey("verificationCode")) {
      verificationCode = _json["verificationCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    if (verificationCode != null) {
      _json["verificationCode"] = verificationCode;
    }
    return _json;
  }
}

/// JSON response template for List verification codes operation in Directory
/// API.
class VerificationCodes {
  /// ETag of the resource.
  core.String etag;

  /// A list of verification code resources.
  core.List<VerificationCode> items;

  /// The type of the resource. This is always
  /// admin#directory#verificationCodesList.
  core.String kind;

  VerificationCodes();

  VerificationCodes.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<VerificationCode>(
              (value) => new VerificationCode.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}
