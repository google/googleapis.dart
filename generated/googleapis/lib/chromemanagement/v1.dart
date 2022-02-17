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

/// Chrome Management API - v1
///
/// The Chrome Management API is a suite of services that allows Chrome
/// administrators to view, manage and gain insights on their Chrome OS and
/// Chrome Browser devices.
///
/// For more information, see <https://developers.google.com/chrome/management/>
///
/// Create an instance of [ChromeManagementApi] to access these resources:
///
/// - [CustomersResource]
///   - [CustomersAppsResource]
///     - [CustomersAppsAndroidResource]
///     - [CustomersAppsChromeResource]
///     - [CustomersAppsWebResource]
///   - [CustomersReportsResource]
///   - [CustomersTelemetryResource]
///     - [CustomersTelemetryDevicesResource]
library chromemanagement.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Chrome Management API is a suite of services that allows Chrome
/// administrators to view, manage and gain insights on their Chrome OS and
/// Chrome Browser devices.
class ChromeManagementApi {
  /// See detailed information about apps installed on Chrome browsers and
  /// devices managed by your organization
  static const chromeManagementAppdetailsReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.appdetails.readonly';

  /// See reports about devices and Chrome browsers managed within your
  /// organization
  static const chromeManagementReportsReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.reports.readonly';

  /// See basic device and telemetry information collected from Chrome OS
  /// devices or users managed within your organization
  static const chromeManagementTelemetryReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.telemetry.readonly';

  final commons.ApiRequester _requester;

  CustomersResource get customers => CustomersResource(_requester);

  ChromeManagementApi(http.Client client,
      {core.String rootUrl = 'https://chromemanagement.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersAppsResource get apps => CustomersAppsResource(_requester);
  CustomersReportsResource get reports => CustomersReportsResource(_requester);
  CustomersTelemetryResource get telemetry =>
      CustomersTelemetryResource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;
}

class CustomersAppsResource {
  final commons.ApiRequester _requester;

  CustomersAppsAndroidResource get android =>
      CustomersAppsAndroidResource(_requester);
  CustomersAppsChromeResource get chrome =>
      CustomersAppsChromeResource(_requester);
  CustomersAppsWebResource get web => CustomersAppsWebResource(_requester);

  CustomersAppsResource(commons.ApiRequester client) : _requester = client;

  /// Generate summary of app installation requests.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [orderBy] - Field used to order results. Supported fields: * request_count
  /// * latest_request_time
  ///
  /// [orgUnitId] - The ID of the organizational unit.
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 50, anything above will be coerced to 50.
  ///
  /// [pageToken] - Token to specify the page of the request to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountChromeAppRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountChromeAppRequestsResponse>
      countChromeAppRequests(
    core.String customer, {
    core.String? orderBy,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/apps:countChromeAppRequests';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleChromeManagementV1CountChromeAppRequestsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersAppsAndroidResource {
  final commons.ApiRequester _requester;

  CustomersAppsAndroidResource(commons.ApiRequester client)
      : _requester = client;

  /// Get a specific app for a customer by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The app for which details are being queried. Examples:
  /// "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2"
  /// for the Save to Google Drive Chrome extension version 2.1.2,
  /// "customers/my_customer/apps/android/com.google.android.apps.docs" for the
  /// Google Drive Android app's latest version.
  /// Value must have pattern `^customers/\[^/\]+/apps/android/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1AppDetails> get(
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
    return GoogleChromeManagementV1AppDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersAppsChromeResource {
  final commons.ApiRequester _requester;

  CustomersAppsChromeResource(commons.ApiRequester client)
      : _requester = client;

  /// Get a specific app for a customer by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The app for which details are being queried. Examples:
  /// "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2"
  /// for the Save to Google Drive Chrome extension version 2.1.2,
  /// "customers/my_customer/apps/android/com.google.android.apps.docs" for the
  /// Google Drive Android app's latest version.
  /// Value must have pattern `^customers/\[^/\]+/apps/chrome/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1AppDetails> get(
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
    return GoogleChromeManagementV1AppDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersAppsWebResource {
  final commons.ApiRequester _requester;

  CustomersAppsWebResource(commons.ApiRequester client) : _requester = client;

  /// Get a specific app for a customer by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The app for which details are being queried. Examples:
  /// "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2"
  /// for the Save to Google Drive Chrome extension version 2.1.2,
  /// "customers/my_customer/apps/android/com.google.android.apps.docs" for the
  /// Google Drive Android app's latest version.
  /// Value must have pattern `^customers/\[^/\]+/apps/web/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1AppDetails> get(
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
    return GoogleChromeManagementV1AppDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersReportsResource {
  final commons.ApiRequester _requester;

  CustomersReportsResource(commons.ApiRequester client) : _requester = client;

  /// Generate report of installed Chrome versions.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Supported
  /// filter fields: * last_active_date
  ///
  /// [orgUnitId] - The ID of the organizational unit.
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 100.
  ///
  /// [pageToken] - Token to specify the page of the request to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountChromeVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountChromeVersionsResponse>
      countChromeVersions(
    core.String customer, {
    core.String? filter,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeVersions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleChromeManagementV1CountChromeVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Generate report of app installations.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Supported
  /// filter fields: * app_name * app_type * install_type *
  /// number_of_permissions * total_install_count * latest_profile_active_date *
  /// permission_name
  ///
  /// [orderBy] - Field used to order results. Supported order by fields: *
  /// app_name * app_type * install_type * number_of_permissions *
  /// total_install_count
  ///
  /// [orgUnitId] - The ID of the organizational unit.
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 100.
  ///
  /// [pageToken] - Token to specify the page of the request to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountInstalledAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountInstalledAppsResponse>
      countInstalledApps(
    core.String customer, {
    core.String? filter,
    core.String? orderBy,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countInstalledApps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleChromeManagementV1CountInstalledAppsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Generate report of devices that have a specified app installed.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [appId] - Unique identifier of the app. For Chrome apps and extensions,
  /// the 32-character id (e.g. ehoadneljpdggcbbknedodolkkjodefl). For Android
  /// apps, the package name (e.g. com.evernote).
  ///
  /// [appType] - Type of the app.
  /// Possible string values are:
  /// - "APP_TYPE_UNSPECIFIED" : App type not specified.
  /// - "EXTENSION" : Chrome extension.
  /// - "APP" : Chrome app.
  /// - "THEME" : Chrome theme.
  /// - "HOSTED_APP" : Chrome hosted app.
  /// - "ANDROID_APP" : ARC++ app.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Supported
  /// filter fields: * last_active_date
  ///
  /// [orderBy] - Field used to order results. Supported order by fields: *
  /// machine * device_id
  ///
  /// [orgUnitId] - The ID of the organizational unit.
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 100.
  ///
  /// [pageToken] - Token to specify the page of the request to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1FindInstalledAppDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1FindInstalledAppDevicesResponse>
      findInstalledAppDevices(
    core.String customer, {
    core.String? appId,
    core.String? appType,
    core.String? filter,
    core.String? orderBy,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (appId != null) 'appId': [appId],
      if (appType != null) 'appType': [appType],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:findInstalledAppDevices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleChromeManagementV1FindInstalledAppDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersTelemetryResource {
  final commons.ApiRequester _requester;

  CustomersTelemetryDevicesResource get devices =>
      CustomersTelemetryDevicesResource(_requester);

  CustomersTelemetryResource(commons.ApiRequester client) : _requester = client;
}

class CustomersTelemetryDevicesResource {
  final commons.ApiRequester _requester;

  CustomersTelemetryDevicesResource(commons.ApiRequester client)
      : _requester = client;

  /// List all telemetry devices.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter.
  /// Supported filter fields: - org_unit_id - serial_number
  ///
  /// [pageSize] - Maximum number of results to return. Default value is 100.
  /// Maximum value is 200.
  ///
  /// [pageToken] - Token to specify next page in the list.
  ///
  /// [readMask] - Required. Read mask to specify which fields to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1ListTelemetryDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1ListTelemetryDevicesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/telemetry/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleChromeManagementV1ListTelemetryDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Android app information.
class GoogleChromeManagementV1AndroidAppInfo {
  /// Permissions requested by an Android app.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1AndroidAppPermission>? permissions;

  GoogleChromeManagementV1AndroidAppInfo({
    this.permissions,
  });

  GoogleChromeManagementV1AndroidAppInfo.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1AndroidAppPermission.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Permission requested by an Android app.
class GoogleChromeManagementV1AndroidAppPermission {
  /// The type of the permission.
  ///
  /// Output only.
  core.String? type;

  GoogleChromeManagementV1AndroidAppPermission({
    this.type,
  });

  GoogleChromeManagementV1AndroidAppPermission.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Resource representing app details.
class GoogleChromeManagementV1AppDetails {
  /// Android app information.
  ///
  /// Output only.
  GoogleChromeManagementV1AndroidAppInfo? androidAppInfo;

  /// Unique store identifier for the item.
  ///
  /// Examples: "gmbmikajjgmnabiglmofipeabaddhgne" for the Save to Google Drive
  /// Chrome extension, "com.google.android.apps.docs" for the Google Drive
  /// Android app.
  ///
  /// Output only.
  core.String? appId;

  /// Chrome Web Store app information.
  ///
  /// Output only.
  GoogleChromeManagementV1ChromeAppInfo? chromeAppInfo;

  /// App's description.
  ///
  /// Output only.
  core.String? description;

  /// The uri for the detail page of the item.
  ///
  /// Output only.
  core.String? detailUri;

  /// App's display name.
  ///
  /// Output only.
  core.String? displayName;

  /// First published time.
  ///
  /// Output only.
  core.String? firstPublishTime;

  /// Home page or Website uri.
  ///
  /// Output only.
  core.String? homepageUri;

  /// A link to an image that can be used as an icon for the product.
  ///
  /// Output only.
  core.String? iconUri;

  /// Indicates if the app has to be paid for OR has paid content.
  ///
  /// Output only.
  core.bool? isPaidApp;

  /// Latest published time.
  ///
  /// Output only.
  core.String? latestPublishTime;

  /// Format:
  /// name=customers/{customer_id}/apps/{chrome|android|web}/{app_id}@{version}
  ///
  /// Output only.
  core.String? name;

  /// The URI pointing to the privacy policy of the app, if it was provided by
  /// the developer.
  ///
  /// Version-specific field that will only be set when the requested app
  /// version is found.
  ///
  /// Output only.
  core.String? privacyPolicyUri;

  /// The publisher of the item.
  ///
  /// Output only.
  core.String? publisher;

  /// Number of reviews received.
  ///
  /// Chrome Web Store review information will always be for the latest version
  /// of an app.
  ///
  /// Output only.
  core.String? reviewNumber;

  /// The rating of the app (on 5 stars).
  ///
  /// Chrome Web Store review information will always be for the latest version
  /// of an app.
  ///
  /// Output only.
  core.double? reviewRating;

  /// App version.
  ///
  /// A new revision is committed whenever a new version of the app is
  /// published.
  ///
  /// Output only.
  core.String? revisionId;

  /// Information about a partial service error if applicable.
  ///
  /// Output only.
  GoogleRpcStatus? serviceError;

  /// App type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_ITEM_TYPE_UNSPECIFIED" : App type unspecified.
  /// - "CHROME" : Chrome app.
  /// - "ANDROID" : ARC++ app.
  /// - "WEB" : Web app.
  core.String? type;

  GoogleChromeManagementV1AppDetails({
    this.androidAppInfo,
    this.appId,
    this.chromeAppInfo,
    this.description,
    this.detailUri,
    this.displayName,
    this.firstPublishTime,
    this.homepageUri,
    this.iconUri,
    this.isPaidApp,
    this.latestPublishTime,
    this.name,
    this.privacyPolicyUri,
    this.publisher,
    this.reviewNumber,
    this.reviewRating,
    this.revisionId,
    this.serviceError,
    this.type,
  });

  GoogleChromeManagementV1AppDetails.fromJson(core.Map _json)
      : this(
          androidAppInfo: _json.containsKey('androidAppInfo')
              ? GoogleChromeManagementV1AndroidAppInfo.fromJson(
                  _json['androidAppInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          chromeAppInfo: _json.containsKey('chromeAppInfo')
              ? GoogleChromeManagementV1ChromeAppInfo.fromJson(
                  _json['chromeAppInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          detailUri: _json.containsKey('detailUri')
              ? _json['detailUri'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          firstPublishTime: _json.containsKey('firstPublishTime')
              ? _json['firstPublishTime'] as core.String
              : null,
          homepageUri: _json.containsKey('homepageUri')
              ? _json['homepageUri'] as core.String
              : null,
          iconUri: _json.containsKey('iconUri')
              ? _json['iconUri'] as core.String
              : null,
          isPaidApp: _json.containsKey('isPaidApp')
              ? _json['isPaidApp'] as core.bool
              : null,
          latestPublishTime: _json.containsKey('latestPublishTime')
              ? _json['latestPublishTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          privacyPolicyUri: _json.containsKey('privacyPolicyUri')
              ? _json['privacyPolicyUri'] as core.String
              : null,
          publisher: _json.containsKey('publisher')
              ? _json['publisher'] as core.String
              : null,
          reviewNumber: _json.containsKey('reviewNumber')
              ? _json['reviewNumber'] as core.String
              : null,
          reviewRating: _json.containsKey('reviewRating')
              ? (_json['reviewRating'] as core.num).toDouble()
              : null,
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
          serviceError: _json.containsKey('serviceError')
              ? GoogleRpcStatus.fromJson(
                  _json['serviceError'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidAppInfo != null) 'androidAppInfo': androidAppInfo!,
        if (appId != null) 'appId': appId!,
        if (chromeAppInfo != null) 'chromeAppInfo': chromeAppInfo!,
        if (description != null) 'description': description!,
        if (detailUri != null) 'detailUri': detailUri!,
        if (displayName != null) 'displayName': displayName!,
        if (firstPublishTime != null) 'firstPublishTime': firstPublishTime!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (iconUri != null) 'iconUri': iconUri!,
        if (isPaidApp != null) 'isPaidApp': isPaidApp!,
        if (latestPublishTime != null) 'latestPublishTime': latestPublishTime!,
        if (name != null) 'name': name!,
        if (privacyPolicyUri != null) 'privacyPolicyUri': privacyPolicyUri!,
        if (publisher != null) 'publisher': publisher!,
        if (reviewNumber != null) 'reviewNumber': reviewNumber!,
        if (reviewRating != null) 'reviewRating': reviewRating!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (serviceError != null) 'serviceError': serviceError!,
        if (type != null) 'type': type!,
      };
}

/// Battery info
class GoogleChromeManagementV1BatteryInfo {
  /// Design capacity (mAmpere-hours).
  ///
  /// Output only.
  core.String? designCapacity;

  /// Designed minimum output voltage (mV)
  ///
  /// Output only.
  core.int? designMinVoltage;

  /// The date the battery was manufactured.
  ///
  /// Output only.
  GoogleTypeDate? manufactureDate;

  /// Battery manufacturer.
  ///
  /// Output only.
  core.String? manufacturer;

  /// Battery serial number.
  ///
  /// Output only.
  core.String? serialNumber;

  /// Technology of the battery.
  ///
  /// Example: Li-ion
  ///
  /// Output only.
  core.String? technology;

  GoogleChromeManagementV1BatteryInfo({
    this.designCapacity,
    this.designMinVoltage,
    this.manufactureDate,
    this.manufacturer,
    this.serialNumber,
    this.technology,
  });

  GoogleChromeManagementV1BatteryInfo.fromJson(core.Map _json)
      : this(
          designCapacity: _json.containsKey('designCapacity')
              ? _json['designCapacity'] as core.String
              : null,
          designMinVoltage: _json.containsKey('designMinVoltage')
              ? _json['designMinVoltage'] as core.int
              : null,
          manufactureDate: _json.containsKey('manufactureDate')
              ? GoogleTypeDate.fromJson(_json['manufactureDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          manufacturer: _json.containsKey('manufacturer')
              ? _json['manufacturer'] as core.String
              : null,
          serialNumber: _json.containsKey('serialNumber')
              ? _json['serialNumber'] as core.String
              : null,
          technology: _json.containsKey('technology')
              ? _json['technology'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (designCapacity != null) 'designCapacity': designCapacity!,
        if (designMinVoltage != null) 'designMinVoltage': designMinVoltage!,
        if (manufactureDate != null) 'manufactureDate': manufactureDate!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (technology != null) 'technology': technology!,
      };
}

/// Sampling data for battery.
class GoogleChromeManagementV1BatterySampleReport {
  /// Battery charge percentage.
  ///
  /// Output only.
  core.int? chargeRate;

  /// Battery current (mA).
  ///
  /// Output only.
  core.String? current;

  /// The battery discharge rate measured in mW.
  ///
  /// Positive if the battery is being discharged, negative if it's being
  /// charged.
  ///
  /// Output only.
  core.int? dischargeRate;

  /// Battery remaining capacity (mAmpere-hours).
  ///
  /// Output only.
  core.String? remainingCapacity;

  /// Timestamp of when the sample was collected on device
  ///
  /// Output only.
  core.String? reportTime;

  /// Battery status read from sysfs.
  ///
  /// Example: Discharging
  ///
  /// Output only.
  core.String? status;

  /// Temperature in Celsius degrees.
  ///
  /// Output only.
  core.int? temperature;

  /// Battery voltage (millivolt).
  ///
  /// Output only.
  core.String? voltage;

  GoogleChromeManagementV1BatterySampleReport({
    this.chargeRate,
    this.current,
    this.dischargeRate,
    this.remainingCapacity,
    this.reportTime,
    this.status,
    this.temperature,
    this.voltage,
  });

  GoogleChromeManagementV1BatterySampleReport.fromJson(core.Map _json)
      : this(
          chargeRate: _json.containsKey('chargeRate')
              ? _json['chargeRate'] as core.int
              : null,
          current: _json.containsKey('current')
              ? _json['current'] as core.String
              : null,
          dischargeRate: _json.containsKey('dischargeRate')
              ? _json['dischargeRate'] as core.int
              : null,
          remainingCapacity: _json.containsKey('remainingCapacity')
              ? _json['remainingCapacity'] as core.String
              : null,
          reportTime: _json.containsKey('reportTime')
              ? _json['reportTime'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          temperature: _json.containsKey('temperature')
              ? _json['temperature'] as core.int
              : null,
          voltage: _json.containsKey('voltage')
              ? _json['voltage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chargeRate != null) 'chargeRate': chargeRate!,
        if (current != null) 'current': current!,
        if (dischargeRate != null) 'dischargeRate': dischargeRate!,
        if (remainingCapacity != null) 'remainingCapacity': remainingCapacity!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (status != null) 'status': status!,
        if (temperature != null) 'temperature': temperature!,
        if (voltage != null) 'voltage': voltage!,
      };
}

/// Status data for battery.
class GoogleChromeManagementV1BatteryStatusReport {
  /// Battery health.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BATTERY_HEALTH_UNSPECIFIED" : Health unknown.
  /// - "BATTERY_HEALTH_NORMAL" : Battery is healthy.
  /// - "BATTERY_REPLACE_SOON" : Battery is moderately unhealthy and should be
  /// replaced soon.
  /// - "BATTERY_REPLACE_NOW" : Battery is unhealthy and should be replaced.
  core.String? batteryHealth;

  /// Cycle count.
  ///
  /// Output only.
  core.int? cycleCount;

  /// Full charge capacity (mAmpere-hours).
  ///
  /// Output only.
  core.String? fullChargeCapacity;

  /// Timestamp of when the sample was collected on device
  ///
  /// Output only.
  core.String? reportTime;

  /// Sampling data for the battery.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1BatterySampleReport>? sample;

  /// Battery serial number.
  ///
  /// Output only.
  core.String? serialNumber;

  GoogleChromeManagementV1BatteryStatusReport({
    this.batteryHealth,
    this.cycleCount,
    this.fullChargeCapacity,
    this.reportTime,
    this.sample,
    this.serialNumber,
  });

  GoogleChromeManagementV1BatteryStatusReport.fromJson(core.Map _json)
      : this(
          batteryHealth: _json.containsKey('batteryHealth')
              ? _json['batteryHealth'] as core.String
              : null,
          cycleCount: _json.containsKey('cycleCount')
              ? _json['cycleCount'] as core.int
              : null,
          fullChargeCapacity: _json.containsKey('fullChargeCapacity')
              ? _json['fullChargeCapacity'] as core.String
              : null,
          reportTime: _json.containsKey('reportTime')
              ? _json['reportTime'] as core.String
              : null,
          sample: _json.containsKey('sample')
              ? (_json['sample'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1BatterySampleReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serialNumber: _json.containsKey('serialNumber')
              ? _json['serialNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batteryHealth != null) 'batteryHealth': batteryHealth!,
        if (cycleCount != null) 'cycleCount': cycleCount!,
        if (fullChargeCapacity != null)
          'fullChargeCapacity': fullChargeCapacity!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (sample != null) 'sample': sample!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
      };
}

/// Describes a browser version and its install count.
class GoogleChromeManagementV1BrowserVersion {
  /// The release channel of the installed browser.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RELEASE_CHANNEL_UNSPECIFIED" : No release channel specified.
  /// - "CANARY" : Canary release channel.
  /// - "DEV" : Dev release channel.
  /// - "BETA" : Beta release channel.
  /// - "STABLE" : Stable release channel.
  core.String? channel;

  /// Count grouped by device_system and major version
  ///
  /// Output only.
  core.String? count;

  /// Version of the system-specified operating system.
  ///
  /// Output only.
  core.String? deviceOsVersion;

  /// The device operating system.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEVICE_SYSTEM_UNSPECIFIED" : No operating system specified.
  /// - "SYSTEM_OTHER" : Other operating system.
  /// - "SYSTEM_ANDROID" : Android operating system.
  /// - "SYSTEM_IOS" : Apple iOS operating system.
  /// - "SYSTEM_CROS" : Chrome OS operating system.
  /// - "SYSTEM_WINDOWS" : Microsoft Windows operating system.
  /// - "SYSTEM_MAC" : Apple macOS operating system.
  /// - "SYSTEM_LINUX" : Linux operating system.
  core.String? system;

  /// The full version of the installed browser.
  ///
  /// Output only.
  core.String? version;

  GoogleChromeManagementV1BrowserVersion({
    this.channel,
    this.count,
    this.deviceOsVersion,
    this.system,
    this.version,
  });

  GoogleChromeManagementV1BrowserVersion.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          deviceOsVersion: _json.containsKey('deviceOsVersion')
              ? _json['deviceOsVersion'] as core.String
              : null,
          system: _json.containsKey('system')
              ? _json['system'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (count != null) 'count': count!,
        if (deviceOsVersion != null) 'deviceOsVersion': deviceOsVersion!,
        if (system != null) 'system': system!,
        if (version != null) 'version': version!,
      };
}

/// Chrome Web Store app information.
class GoogleChromeManagementV1ChromeAppInfo {
  /// Whether the app or extension is built and maintained by Google.
  ///
  /// Version-specific field that will only be set when the requested app
  /// version is found.
  ///
  /// Output only.
  core.bool? googleOwned;

  /// Whether the app or extension is in a published state in the Chrome Web
  /// Store.
  ///
  /// Output only.
  core.bool? isCwsHosted;

  /// Whether the app or extension is a theme.
  ///
  /// Output only.
  core.bool? isTheme;

  /// The minimum number of users using this app.
  ///
  /// Output only.
  core.int? minUserCount;

  /// Every custom permission requested by the app.
  ///
  /// Version-specific field that will only be set when the requested app
  /// version is found.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1ChromeAppPermission>? permissions;

  /// Every permission giving access to domains or broad host patterns.
  ///
  /// ( e.g. www.google.com). This includes the matches from content scripts as
  /// well as hosts in the permissions node of the manifest. Version-specific
  /// field that will only be set when the requested app version is found.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1ChromeAppSiteAccess>? siteAccess;

  /// The app developer has enabled support for their app.
  ///
  /// Version-specific field that will only be set when the requested app
  /// version is found.
  ///
  /// Output only.
  core.bool? supportEnabled;

  GoogleChromeManagementV1ChromeAppInfo({
    this.googleOwned,
    this.isCwsHosted,
    this.isTheme,
    this.minUserCount,
    this.permissions,
    this.siteAccess,
    this.supportEnabled,
  });

  GoogleChromeManagementV1ChromeAppInfo.fromJson(core.Map _json)
      : this(
          googleOwned: _json.containsKey('googleOwned')
              ? _json['googleOwned'] as core.bool
              : null,
          isCwsHosted: _json.containsKey('isCwsHosted')
              ? _json['isCwsHosted'] as core.bool
              : null,
          isTheme: _json.containsKey('isTheme')
              ? _json['isTheme'] as core.bool
              : null,
          minUserCount: _json.containsKey('minUserCount')
              ? _json['minUserCount'] as core.int
              : null,
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1ChromeAppPermission.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          siteAccess: _json.containsKey('siteAccess')
              ? (_json['siteAccess'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1ChromeAppSiteAccess.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          supportEnabled: _json.containsKey('supportEnabled')
              ? _json['supportEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleOwned != null) 'googleOwned': googleOwned!,
        if (isCwsHosted != null) 'isCwsHosted': isCwsHosted!,
        if (isTheme != null) 'isTheme': isTheme!,
        if (minUserCount != null) 'minUserCount': minUserCount!,
        if (permissions != null) 'permissions': permissions!,
        if (siteAccess != null) 'siteAccess': siteAccess!,
        if (supportEnabled != null) 'supportEnabled': supportEnabled!,
      };
}

/// Permission requested by a Chrome app or extension.
class GoogleChromeManagementV1ChromeAppPermission {
  /// If available, whether this permissions grants the app/extension access to
  /// user data.
  ///
  /// Output only.
  core.bool? accessUserData;

  /// If available, a URI to a page that has documentation for the current
  /// permission.
  ///
  /// Output only.
  core.String? documentationUri;

  /// The type of the permission.
  ///
  /// Output only.
  core.String? type;

  GoogleChromeManagementV1ChromeAppPermission({
    this.accessUserData,
    this.documentationUri,
    this.type,
  });

  GoogleChromeManagementV1ChromeAppPermission.fromJson(core.Map _json)
      : this(
          accessUserData: _json.containsKey('accessUserData')
              ? _json['accessUserData'] as core.bool
              : null,
          documentationUri: _json.containsKey('documentationUri')
              ? _json['documentationUri'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessUserData != null) 'accessUserData': accessUserData!,
        if (documentationUri != null) 'documentationUri': documentationUri!,
        if (type != null) 'type': type!,
      };
}

/// Details of an app installation request.
class GoogleChromeManagementV1ChromeAppRequest {
  /// Format: app_details=customers/{customer_id}/apps/chrome/{app_id}
  ///
  /// Output only.
  core.String? appDetails;

  /// Unique store identifier for the app.
  ///
  /// Example: "gmbmikajjgmnabiglmofipeabaddhgne" for the Save to Google Drive
  /// Chrome extension.
  ///
  /// Output only.
  core.String? appId;

  /// The uri for the detail page of the item.
  ///
  /// Output only.
  core.String? detailUri;

  /// App's display name.
  ///
  /// Output only.
  core.String? displayName;

  /// A link to an image that can be used as an icon for the product.
  ///
  /// Output only.
  core.String? iconUri;

  /// The timestamp of the most recently made request for this app.
  ///
  /// Output only.
  core.String? latestRequestTime;

  /// Total count of requests for this app.
  ///
  /// Output only.
  core.String? requestCount;

  GoogleChromeManagementV1ChromeAppRequest({
    this.appDetails,
    this.appId,
    this.detailUri,
    this.displayName,
    this.iconUri,
    this.latestRequestTime,
    this.requestCount,
  });

  GoogleChromeManagementV1ChromeAppRequest.fromJson(core.Map _json)
      : this(
          appDetails: _json.containsKey('appDetails')
              ? _json['appDetails'] as core.String
              : null,
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          detailUri: _json.containsKey('detailUri')
              ? _json['detailUri'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          iconUri: _json.containsKey('iconUri')
              ? _json['iconUri'] as core.String
              : null,
          latestRequestTime: _json.containsKey('latestRequestTime')
              ? _json['latestRequestTime'] as core.String
              : null,
          requestCount: _json.containsKey('requestCount')
              ? _json['requestCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appDetails != null) 'appDetails': appDetails!,
        if (appId != null) 'appId': appId!,
        if (detailUri != null) 'detailUri': detailUri!,
        if (displayName != null) 'displayName': displayName!,
        if (iconUri != null) 'iconUri': iconUri!,
        if (latestRequestTime != null) 'latestRequestTime': latestRequestTime!,
        if (requestCount != null) 'requestCount': requestCount!,
      };
}

/// Represent one host permission.
class GoogleChromeManagementV1ChromeAppSiteAccess {
  /// This can contain very specific hosts, or patterns like "*.com" for
  /// instance.
  ///
  /// Output only.
  core.String? hostMatch;

  GoogleChromeManagementV1ChromeAppSiteAccess({
    this.hostMatch,
  });

  GoogleChromeManagementV1ChromeAppSiteAccess.fromJson(core.Map _json)
      : this(
          hostMatch: _json.containsKey('hostMatch')
              ? _json['hostMatch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostMatch != null) 'hostMatch': hostMatch!,
      };
}

/// Response containing summary of requested app installations.
class GoogleChromeManagementV1CountChromeAppRequestsResponse {
  /// Token to specify the next page in the list.
  core.String? nextPageToken;

  /// Count of requested apps matching request.
  core.List<GoogleChromeManagementV1ChromeAppRequest>? requestedApps;

  /// Total number of matching app requests.
  core.int? totalSize;

  GoogleChromeManagementV1CountChromeAppRequestsResponse({
    this.nextPageToken,
    this.requestedApps,
    this.totalSize,
  });

  GoogleChromeManagementV1CountChromeAppRequestsResponse.fromJson(
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          requestedApps: _json.containsKey('requestedApps')
              ? (_json['requestedApps'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1ChromeAppRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (requestedApps != null) 'requestedApps': requestedApps!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response containing requested browser versions details and counts.
class GoogleChromeManagementV1CountChromeVersionsResponse {
  /// List of all browser versions and their install counts.
  core.List<GoogleChromeManagementV1BrowserVersion>? browserVersions;

  /// Token to specify the next page of the request.
  core.String? nextPageToken;

  /// Total number browser versions matching request.
  core.int? totalSize;

  GoogleChromeManagementV1CountChromeVersionsResponse({
    this.browserVersions,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementV1CountChromeVersionsResponse.fromJson(core.Map _json)
      : this(
          browserVersions: _json.containsKey('browserVersions')
              ? (_json['browserVersions'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1BrowserVersion.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (browserVersions != null) 'browserVersions': browserVersions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response containing details of queried installed apps.
class GoogleChromeManagementV1CountInstalledAppsResponse {
  /// List of installed apps matching request.
  core.List<GoogleChromeManagementV1InstalledApp>? installedApps;

  /// Token to specify the next page of the request.
  core.String? nextPageToken;

  /// Total number of installed apps matching request.
  core.int? totalSize;

  GoogleChromeManagementV1CountInstalledAppsResponse({
    this.installedApps,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementV1CountInstalledAppsResponse.fromJson(core.Map _json)
      : this(
          installedApps: _json.containsKey('installedApps')
              ? (_json['installedApps'] as core.List)
                  .map((value) => GoogleChromeManagementV1InstalledApp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (installedApps != null) 'installedApps': installedApps!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// CPU specs for a CPU.
class GoogleChromeManagementV1CpuInfo {
  /// The CPU architecture.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Architecture unknown.
  /// - "X64" : x64 architecture
  core.String? architecture;

  /// The max CPU clock speed in kHz.
  ///
  /// Output only.
  core.int? maxClockSpeed;

  /// The CPU model name.
  ///
  /// Example: Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz
  ///
  /// Output only.
  core.String? model;

  GoogleChromeManagementV1CpuInfo({
    this.architecture,
    this.maxClockSpeed,
    this.model,
  });

  GoogleChromeManagementV1CpuInfo.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          maxClockSpeed: _json.containsKey('maxClockSpeed')
              ? _json['maxClockSpeed'] as core.int
              : null,
          model:
              _json.containsKey('model') ? _json['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (maxClockSpeed != null) 'maxClockSpeed': maxClockSpeed!,
        if (model != null) 'model': model!,
      };
}

/// Contains samples of the cpu status reports.
class GoogleChromeManagementV1CpuStatusReport {
  /// CPU temperature sample info per CPU core in Celsius
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1CpuTemperatureInfo>? cpuTemperatureInfo;

  /// Sample of CPU utilization (0-100 percent).
  ///
  /// Output only.
  core.int? cpuUtilizationPct;

  /// The timestamp in milliseconds representing time at which this report was
  /// sampled.
  ///
  /// Output only.
  core.String? reportTime;

  /// Frequency the report is sampled.
  ///
  /// Output only.
  core.String? sampleFrequency;

  GoogleChromeManagementV1CpuStatusReport({
    this.cpuTemperatureInfo,
    this.cpuUtilizationPct,
    this.reportTime,
    this.sampleFrequency,
  });

  GoogleChromeManagementV1CpuStatusReport.fromJson(core.Map _json)
      : this(
          cpuTemperatureInfo: _json.containsKey('cpuTemperatureInfo')
              ? (_json['cpuTemperatureInfo'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1CpuTemperatureInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cpuUtilizationPct: _json.containsKey('cpuUtilizationPct')
              ? _json['cpuUtilizationPct'] as core.int
              : null,
          reportTime: _json.containsKey('reportTime')
              ? _json['reportTime'] as core.String
              : null,
          sampleFrequency: _json.containsKey('sampleFrequency')
              ? _json['sampleFrequency'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuTemperatureInfo != null)
          'cpuTemperatureInfo': cpuTemperatureInfo!,
        if (cpuUtilizationPct != null) 'cpuUtilizationPct': cpuUtilizationPct!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (sampleFrequency != null) 'sampleFrequency': sampleFrequency!,
      };
}

/// CPU temperature of a device.
///
/// Sampled per CPU core in Celsius
class GoogleChromeManagementV1CpuTemperatureInfo {
  /// CPU label.
  ///
  /// Example: Core 0
  ///
  /// Output only.
  core.String? label;

  /// CPU temperature in Celsius.
  ///
  /// Output only.
  core.int? temperatureCelsius;

  GoogleChromeManagementV1CpuTemperatureInfo({
    this.label,
    this.temperatureCelsius,
  });

  GoogleChromeManagementV1CpuTemperatureInfo.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          temperatureCelsius: _json.containsKey('temperatureCelsius')
              ? _json['temperatureCelsius'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (temperatureCelsius != null)
          'temperatureCelsius': temperatureCelsius!,
      };
}

/// Describes a device reporting Chrome browser information.
class GoogleChromeManagementV1Device {
  /// The ID of the device that reported this Chrome browser information.
  ///
  /// Output only.
  core.String? deviceId;

  /// The name of the machine within its local network.
  ///
  /// Output only.
  core.String? machine;

  GoogleChromeManagementV1Device({
    this.deviceId,
    this.machine,
  });

  GoogleChromeManagementV1Device.fromJson(core.Map _json)
      : this(
          deviceId: _json.containsKey('deviceId')
              ? _json['deviceId'] as core.String
              : null,
          machine: _json.containsKey('machine')
              ? _json['machine'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceId != null) 'deviceId': deviceId!,
        if (machine != null) 'machine': machine!,
      };
}

/// Status of the single storage device.
class GoogleChromeManagementV1DiskInfo {
  /// Number of bytes read since last boot.
  ///
  /// Output only.
  core.String? bytesReadThisSession;

  /// Number of bytes written since last boot.
  ///
  /// Output only.
  core.String? bytesWrittenThisSession;

  /// Time spent discarding since last boot.
  ///
  /// Discarding is writing to clear blocks which are no longer in use.
  /// Supported on kernels 4.18+.
  ///
  /// Output only.
  core.String? discardTimeThisSession;

  /// Disk health.
  ///
  /// Output only.
  core.String? health;

  /// Counts the time the disk and queue were busy, so unlike the fields above,
  /// parallel requests are not counted multiple times.
  ///
  /// Output only.
  core.String? ioTimeThisSession;

  /// Disk manufacturer.
  ///
  /// Output only.
  core.String? manufacturer;

  /// Disk model.
  ///
  /// Output only.
  core.String? model;

  /// Time spent reading from disk since last boot.
  ///
  /// Output only.
  core.String? readTimeThisSession;

  /// Disk serial number.
  ///
  /// Output only.
  core.String? serialNumber;

  /// Disk size.
  ///
  /// Output only.
  core.String? sizeBytes;

  /// Disk type: eMMC / NVMe / ATA / SCSI.
  ///
  /// Output only.
  core.String? type;

  /// Disk volumes.
  ///
  /// Output only.
  core.List<core.String>? volumeIds;

  /// Time spent writing to disk since last boot.
  ///
  /// Output only.
  core.String? writeTimeThisSession;

  GoogleChromeManagementV1DiskInfo({
    this.bytesReadThisSession,
    this.bytesWrittenThisSession,
    this.discardTimeThisSession,
    this.health,
    this.ioTimeThisSession,
    this.manufacturer,
    this.model,
    this.readTimeThisSession,
    this.serialNumber,
    this.sizeBytes,
    this.type,
    this.volumeIds,
    this.writeTimeThisSession,
  });

  GoogleChromeManagementV1DiskInfo.fromJson(core.Map _json)
      : this(
          bytesReadThisSession: _json.containsKey('bytesReadThisSession')
              ? _json['bytesReadThisSession'] as core.String
              : null,
          bytesWrittenThisSession: _json.containsKey('bytesWrittenThisSession')
              ? _json['bytesWrittenThisSession'] as core.String
              : null,
          discardTimeThisSession: _json.containsKey('discardTimeThisSession')
              ? _json['discardTimeThisSession'] as core.String
              : null,
          health: _json.containsKey('health')
              ? _json['health'] as core.String
              : null,
          ioTimeThisSession: _json.containsKey('ioTimeThisSession')
              ? _json['ioTimeThisSession'] as core.String
              : null,
          manufacturer: _json.containsKey('manufacturer')
              ? _json['manufacturer'] as core.String
              : null,
          model:
              _json.containsKey('model') ? _json['model'] as core.String : null,
          readTimeThisSession: _json.containsKey('readTimeThisSession')
              ? _json['readTimeThisSession'] as core.String
              : null,
          serialNumber: _json.containsKey('serialNumber')
              ? _json['serialNumber'] as core.String
              : null,
          sizeBytes: _json.containsKey('sizeBytes')
              ? _json['sizeBytes'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          volumeIds: _json.containsKey('volumeIds')
              ? (_json['volumeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          writeTimeThisSession: _json.containsKey('writeTimeThisSession')
              ? _json['writeTimeThisSession'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bytesReadThisSession != null)
          'bytesReadThisSession': bytesReadThisSession!,
        if (bytesWrittenThisSession != null)
          'bytesWrittenThisSession': bytesWrittenThisSession!,
        if (discardTimeThisSession != null)
          'discardTimeThisSession': discardTimeThisSession!,
        if (health != null) 'health': health!,
        if (ioTimeThisSession != null) 'ioTimeThisSession': ioTimeThisSession!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (model != null) 'model': model!,
        if (readTimeThisSession != null)
          'readTimeThisSession': readTimeThisSession!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (type != null) 'type': type!,
        if (volumeIds != null) 'volumeIds': volumeIds!,
        if (writeTimeThisSession != null)
          'writeTimeThisSession': writeTimeThisSession!,
      };
}

/// Information for a display.
class GoogleChromeManagementV1DisplayInfo {
  /// Represents the graphics card device id.
  ///
  /// Output only.
  core.String? deviceId;

  /// Indicates if display is internal or not.
  ///
  /// Output only.
  core.bool? isInternal;

  /// Refresh rate in Hz.
  ///
  /// Output only.
  core.int? refreshRate;

  /// Resolution height in pixels.
  ///
  /// Output only.
  core.int? resolutionHeight;

  /// Resolution width in pixels.
  ///
  /// Output only.
  core.int? resolutionWidth;

  GoogleChromeManagementV1DisplayInfo({
    this.deviceId,
    this.isInternal,
    this.refreshRate,
    this.resolutionHeight,
    this.resolutionWidth,
  });

  GoogleChromeManagementV1DisplayInfo.fromJson(core.Map _json)
      : this(
          deviceId: _json.containsKey('deviceId')
              ? _json['deviceId'] as core.String
              : null,
          isInternal: _json.containsKey('isInternal')
              ? _json['isInternal'] as core.bool
              : null,
          refreshRate: _json.containsKey('refreshRate')
              ? _json['refreshRate'] as core.int
              : null,
          resolutionHeight: _json.containsKey('resolutionHeight')
              ? _json['resolutionHeight'] as core.int
              : null,
          resolutionWidth: _json.containsKey('resolutionWidth')
              ? _json['resolutionWidth'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceId != null) 'deviceId': deviceId!,
        if (isInternal != null) 'isInternal': isInternal!,
        if (refreshRate != null) 'refreshRate': refreshRate!,
        if (resolutionHeight != null) 'resolutionHeight': resolutionHeight!,
        if (resolutionWidth != null) 'resolutionWidth': resolutionWidth!,
      };
}

/// Response containing a list of devices with queried app installed.
class GoogleChromeManagementV1FindInstalledAppDevicesResponse {
  /// A list of devices which have the app installed.
  ///
  /// Sorted in ascending alphabetical order on the Device.machine field.
  core.List<GoogleChromeManagementV1Device>? devices;

  /// Token to specify the next page of the request.
  core.String? nextPageToken;

  /// Total number of devices matching request.
  core.int? totalSize;

  GoogleChromeManagementV1FindInstalledAppDevicesResponse({
    this.devices,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementV1FindInstalledAppDevicesResponse.fromJson(
      core.Map _json)
      : this(
          devices: _json.containsKey('devices')
              ? (_json['devices'] as core.List)
                  .map((value) => GoogleChromeManagementV1Device.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devices != null) 'devices': devices!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Information of a graphics adapter (GPU).
class GoogleChromeManagementV1GraphicsAdapterInfo {
  /// Adapter name.
  ///
  /// Example: Mesa DRI Intel(R) UHD Graphics 620 (Kabylake GT2).
  ///
  /// Output only.
  core.String? adapter;

  /// Represents the graphics card device id.
  ///
  /// Output only.
  core.String? deviceId;

  /// Version of the GPU driver.
  ///
  /// Output only.
  core.String? driverVersion;

  GoogleChromeManagementV1GraphicsAdapterInfo({
    this.adapter,
    this.deviceId,
    this.driverVersion,
  });

  GoogleChromeManagementV1GraphicsAdapterInfo.fromJson(core.Map _json)
      : this(
          adapter: _json.containsKey('adapter')
              ? _json['adapter'] as core.String
              : null,
          deviceId: _json.containsKey('deviceId')
              ? _json['deviceId'] as core.String
              : null,
          driverVersion: _json.containsKey('driverVersion')
              ? _json['driverVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adapter != null) 'adapter': adapter!,
        if (deviceId != null) 'deviceId': deviceId!,
        if (driverVersion != null) 'driverVersion': driverVersion!,
      };
}

/// Information of the graphics subsystem.
class GoogleChromeManagementV1GraphicsInfo {
  /// Information about the graphics adapter (GPU).
  ///
  /// Output only.
  GoogleChromeManagementV1GraphicsAdapterInfo? adapterInfo;

  GoogleChromeManagementV1GraphicsInfo({
    this.adapterInfo,
  });

  GoogleChromeManagementV1GraphicsInfo.fromJson(core.Map _json)
      : this(
          adapterInfo: _json.containsKey('adapterInfo')
              ? GoogleChromeManagementV1GraphicsAdapterInfo.fromJson(
                  _json['adapterInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adapterInfo != null) 'adapterInfo': adapterInfo!,
      };
}

/// Information of the graphics subsystem.
class GoogleChromeManagementV1GraphicsStatusReport {
  /// Information about the displays for the device.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1DisplayInfo>? displays;

  /// Time at which the graphics data was reported.
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1GraphicsStatusReport({
    this.displays,
    this.reportTime,
  });

  GoogleChromeManagementV1GraphicsStatusReport.fromJson(core.Map _json)
      : this(
          displays: _json.containsKey('displays')
              ? (_json['displays'] as core.List)
                  .map((value) => GoogleChromeManagementV1DisplayInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reportTime: _json.containsKey('reportTime')
              ? _json['reportTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displays != null) 'displays': displays!,
        if (reportTime != null) 'reportTime': reportTime!,
      };
}

/// Describes an installed app.
class GoogleChromeManagementV1InstalledApp {
  /// Unique identifier of the app.
  ///
  /// For Chrome apps and extensions, the 32-character id (e.g.
  /// ehoadneljpdggcbbknedodolkkjodefl). For Android apps, the package name
  /// (e.g. com.evernote).
  ///
  /// Output only.
  core.String? appId;

  /// How the app was installed.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_INSTALL_TYPE_UNSPECIFIED" : Application install type not specified.
  /// - "MULTIPLE" : Multiple app install types.
  /// - "NORMAL" : Normal app install type.
  /// - "ADMIN" : Administrator app install type.
  /// - "DEVELOPMENT" : Development app install type.
  /// - "SIDELOAD" : Sideloaded app install type.
  /// - "OTHER" : Other app install type.
  core.String? appInstallType;

  /// Source of the installed app.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_SOURCE_UNSPECIFIED" : Application source not specified.
  /// - "CHROME_WEBSTORE" : Generally for extensions and Chrome apps.
  /// - "PLAY_STORE" : Play Store app.
  core.String? appSource;

  /// Type of the app.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_TYPE_UNSPECIFIED" : App type not specified.
  /// - "EXTENSION" : Chrome extension.
  /// - "APP" : Chrome app.
  /// - "THEME" : Chrome theme.
  /// - "HOSTED_APP" : Chrome hosted app.
  /// - "ANDROID_APP" : ARC++ app.
  core.String? appType;

  /// Count of browser devices with this app installed.
  ///
  /// Output only.
  core.String? browserDeviceCount;

  /// Description of the installed app.
  ///
  /// Output only.
  core.String? description;

  /// Whether the app is disabled.
  ///
  /// Output only.
  core.bool? disabled;

  /// Name of the installed app.
  ///
  /// Output only.
  core.String? displayName;

  /// Homepage uri of the installed app.
  ///
  /// Output only.
  core.String? homepageUri;

  /// Count of ChromeOS users with this app installed.
  ///
  /// Output only.
  core.String? osUserCount;

  /// Permissions of the installed app.
  ///
  /// Output only.
  core.List<core.String>? permissions;

  GoogleChromeManagementV1InstalledApp({
    this.appId,
    this.appInstallType,
    this.appSource,
    this.appType,
    this.browserDeviceCount,
    this.description,
    this.disabled,
    this.displayName,
    this.homepageUri,
    this.osUserCount,
    this.permissions,
  });

  GoogleChromeManagementV1InstalledApp.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          appInstallType: _json.containsKey('appInstallType')
              ? _json['appInstallType'] as core.String
              : null,
          appSource: _json.containsKey('appSource')
              ? _json['appSource'] as core.String
              : null,
          appType: _json.containsKey('appType')
              ? _json['appType'] as core.String
              : null,
          browserDeviceCount: _json.containsKey('browserDeviceCount')
              ? _json['browserDeviceCount'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          homepageUri: _json.containsKey('homepageUri')
              ? _json['homepageUri'] as core.String
              : null,
          osUserCount: _json.containsKey('osUserCount')
              ? _json['osUserCount'] as core.String
              : null,
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (appInstallType != null) 'appInstallType': appInstallType!,
        if (appSource != null) 'appSource': appSource!,
        if (appType != null) 'appType': appType!,
        if (browserDeviceCount != null)
          'browserDeviceCount': browserDeviceCount!,
        if (description != null) 'description': description!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (osUserCount != null) 'osUserCount': osUserCount!,
        if (permissions != null) 'permissions': permissions!,
      };
}

class GoogleChromeManagementV1ListTelemetryDevicesResponse {
  /// Telemetry devices returned in the response.
  core.List<GoogleChromeManagementV1TelemetryDevice>? devices;

  /// Token to specify next page in the list.
  core.String? nextPageToken;

  GoogleChromeManagementV1ListTelemetryDevicesResponse({
    this.devices,
    this.nextPageToken,
  });

  GoogleChromeManagementV1ListTelemetryDevicesResponse.fromJson(core.Map _json)
      : this(
          devices: _json.containsKey('devices')
              ? (_json['devices'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1TelemetryDevice.fromJson(
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

/// Memory information of a device.
class GoogleChromeManagementV1MemoryInfo {
  /// Amount of available RAM in bytes.
  ///
  /// Output only.
  core.String? availableRamBytes;

  /// Total RAM in bytes.
  ///
  /// Output only.
  core.String? totalRamBytes;

  GoogleChromeManagementV1MemoryInfo({
    this.availableRamBytes,
    this.totalRamBytes,
  });

  GoogleChromeManagementV1MemoryInfo.fromJson(core.Map _json)
      : this(
          availableRamBytes: _json.containsKey('availableRamBytes')
              ? _json['availableRamBytes'] as core.String
              : null,
          totalRamBytes: _json.containsKey('totalRamBytes')
              ? _json['totalRamBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableRamBytes != null) 'availableRamBytes': availableRamBytes!,
        if (totalRamBytes != null) 'totalRamBytes': totalRamBytes!,
      };
}

/// Contains samples of memory status reports.
class GoogleChromeManagementV1MemoryStatusReport {
  /// Number of page faults during this collection
  ///
  /// Output only.
  core.int? pageFaults;

  /// The timestamp in milliseconds representing time at which this report was
  /// sampled.
  ///
  /// Output only.
  core.String? reportTime;

  /// Frequency the report is sampled.
  ///
  /// Output only.
  core.String? sampleFrequency;

  /// Amount of free RAM in bytes (unreliable due to Garbage Collection).
  ///
  /// Output only.
  core.String? systemRamFreeBytes;

  GoogleChromeManagementV1MemoryStatusReport({
    this.pageFaults,
    this.reportTime,
    this.sampleFrequency,
    this.systemRamFreeBytes,
  });

  GoogleChromeManagementV1MemoryStatusReport.fromJson(core.Map _json)
      : this(
          pageFaults: _json.containsKey('pageFaults')
              ? _json['pageFaults'] as core.int
              : null,
          reportTime: _json.containsKey('reportTime')
              ? _json['reportTime'] as core.String
              : null,
          sampleFrequency: _json.containsKey('sampleFrequency')
              ? _json['sampleFrequency'] as core.String
              : null,
          systemRamFreeBytes: _json.containsKey('systemRamFreeBytes')
              ? _json['systemRamFreeBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageFaults != null) 'pageFaults': pageFaults!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (sampleFrequency != null) 'sampleFrequency': sampleFrequency!,
        if (systemRamFreeBytes != null)
          'systemRamFreeBytes': systemRamFreeBytes!,
      };
}

/// State of visible/configured networks.
class GoogleChromeManagementV1NetworkStatusReport {
  /// Gateway IP address.
  ///
  /// Output only.
  core.String? gatewayIpAddress;

  /// LAN IP address.
  ///
  /// Output only.
  core.String? lanIpAddress;

  /// Time at which the network state was reported.
  ///
  /// Output only.
  core.String? reportTime;

  /// Frequency the report is sampled.
  ///
  /// Output only.
  core.String? sampleFrequency;

  /// Signal strength for wireless networks measured in decibels.
  ///
  /// Output only.
  core.int? signalStrengthDbm;

  GoogleChromeManagementV1NetworkStatusReport({
    this.gatewayIpAddress,
    this.lanIpAddress,
    this.reportTime,
    this.sampleFrequency,
    this.signalStrengthDbm,
  });

  GoogleChromeManagementV1NetworkStatusReport.fromJson(core.Map _json)
      : this(
          gatewayIpAddress: _json.containsKey('gatewayIpAddress')
              ? _json['gatewayIpAddress'] as core.String
              : null,
          lanIpAddress: _json.containsKey('lanIpAddress')
              ? _json['lanIpAddress'] as core.String
              : null,
          reportTime: _json.containsKey('reportTime')
              ? _json['reportTime'] as core.String
              : null,
          sampleFrequency: _json.containsKey('sampleFrequency')
              ? _json['sampleFrequency'] as core.String
              : null,
          signalStrengthDbm: _json.containsKey('signalStrengthDbm')
              ? _json['signalStrengthDbm'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gatewayIpAddress != null) 'gatewayIpAddress': gatewayIpAddress!,
        if (lanIpAddress != null) 'lanIpAddress': lanIpAddress!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (sampleFrequency != null) 'sampleFrequency': sampleFrequency!,
        if (signalStrengthDbm != null) 'signalStrengthDbm': signalStrengthDbm!,
      };
}

/// Contains information regarding the current OS update status.
class GoogleChromeManagementV1OsUpdateStatus {
  /// Timestamp of the last reboot.
  ///
  /// Output only.
  core.String? lastRebootTime;

  /// Timestamp of the last update check.
  ///
  /// Output only.
  core.String? lastUpdateCheckTime;

  /// Timestamp of the last successful update.
  ///
  /// Output only.
  core.String? lastUpdateTime;

  /// New platform version of the os image being downloaded and applied.
  ///
  /// It is only set when update status is OS_IMAGE_DOWNLOAD_IN_PROGRESS or
  /// OS_UPDATE_NEED_REBOOT. Note this could be a dummy "0.0.0.0" for
  /// OS_UPDATE_NEED_REBOOT status for some edge cases, e.g. update engine is
  /// restarted without a reboot.
  ///
  /// Output only.
  core.String? newPlatformVersion;

  /// New requested platform version from the pending updated kiosk app.
  ///
  /// Output only.
  core.String? newRequestedPlatformVersion;

  /// Current state of the os update.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UPDATE_STATE_UNSPECIFIED" : State unspecified.
  /// - "OS_IMAGE_DOWNLOAD_NOT_STARTED" : OS has not started downloading.
  /// - "OS_IMAGE_DOWNLOAD_IN_PROGRESS" : OS has started download on device.
  /// - "OS_UPDATE_NEED_REBOOT" : Device needs reboot to finish upload.
  core.String? updateState;

  GoogleChromeManagementV1OsUpdateStatus({
    this.lastRebootTime,
    this.lastUpdateCheckTime,
    this.lastUpdateTime,
    this.newPlatformVersion,
    this.newRequestedPlatformVersion,
    this.updateState,
  });

  GoogleChromeManagementV1OsUpdateStatus.fromJson(core.Map _json)
      : this(
          lastRebootTime: _json.containsKey('lastRebootTime')
              ? _json['lastRebootTime'] as core.String
              : null,
          lastUpdateCheckTime: _json.containsKey('lastUpdateCheckTime')
              ? _json['lastUpdateCheckTime'] as core.String
              : null,
          lastUpdateTime: _json.containsKey('lastUpdateTime')
              ? _json['lastUpdateTime'] as core.String
              : null,
          newPlatformVersion: _json.containsKey('newPlatformVersion')
              ? _json['newPlatformVersion'] as core.String
              : null,
          newRequestedPlatformVersion:
              _json.containsKey('newRequestedPlatformVersion')
                  ? _json['newRequestedPlatformVersion'] as core.String
                  : null,
          updateState: _json.containsKey('updateState')
              ? _json['updateState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastRebootTime != null) 'lastRebootTime': lastRebootTime!,
        if (lastUpdateCheckTime != null)
          'lastUpdateCheckTime': lastUpdateCheckTime!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (newPlatformVersion != null)
          'newPlatformVersion': newPlatformVersion!,
        if (newRequestedPlatformVersion != null)
          'newRequestedPlatformVersion': newRequestedPlatformVersion!,
        if (updateState != null) 'updateState': updateState!,
      };
}

/// Status data for storage.
class GoogleChromeManagementV1StorageInfo {
  /// The available space for user data storage in the device in bytes.
  core.String? availableDiskBytes;

  /// The total space for user data storage in the device in bytes.
  core.String? totalDiskBytes;

  /// Information for disk volumes
  core.List<GoogleChromeManagementV1StorageInfoDiskVolume>? volume;

  GoogleChromeManagementV1StorageInfo({
    this.availableDiskBytes,
    this.totalDiskBytes,
    this.volume,
  });

  GoogleChromeManagementV1StorageInfo.fromJson(core.Map _json)
      : this(
          availableDiskBytes: _json.containsKey('availableDiskBytes')
              ? _json['availableDiskBytes'] as core.String
              : null,
          totalDiskBytes: _json.containsKey('totalDiskBytes')
              ? _json['totalDiskBytes'] as core.String
              : null,
          volume: _json.containsKey('volume')
              ? (_json['volume'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1StorageInfoDiskVolume.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableDiskBytes != null)
          'availableDiskBytes': availableDiskBytes!,
        if (totalDiskBytes != null) 'totalDiskBytes': totalDiskBytes!,
        if (volume != null) 'volume': volume!,
      };
}

/// Information for disk volumes
class GoogleChromeManagementV1StorageInfoDiskVolume {
  /// Free storage space in bytes.
  core.String? storageFreeBytes;

  /// Total storage space in bytes.
  core.String? storageTotalBytes;

  /// Disk volume id.
  core.String? volumeId;

  GoogleChromeManagementV1StorageInfoDiskVolume({
    this.storageFreeBytes,
    this.storageTotalBytes,
    this.volumeId,
  });

  GoogleChromeManagementV1StorageInfoDiskVolume.fromJson(core.Map _json)
      : this(
          storageFreeBytes: _json.containsKey('storageFreeBytes')
              ? _json['storageFreeBytes'] as core.String
              : null,
          storageTotalBytes: _json.containsKey('storageTotalBytes')
              ? _json['storageTotalBytes'] as core.String
              : null,
          volumeId: _json.containsKey('volumeId')
              ? _json['volumeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (storageFreeBytes != null) 'storageFreeBytes': storageFreeBytes!,
        if (storageTotalBytes != null) 'storageTotalBytes': storageTotalBytes!,
        if (volumeId != null) 'volumeId': volumeId!,
      };
}

/// Status data for storage.
class GoogleChromeManagementV1StorageStatusReport {
  /// Reports on disk
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1DiskInfo>? disk;

  /// Timestamp of when the sample was collected on device
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1StorageStatusReport({
    this.disk,
    this.reportTime,
  });

  GoogleChromeManagementV1StorageStatusReport.fromJson(core.Map _json)
      : this(
          disk: _json.containsKey('disk')
              ? (_json['disk'] as core.List)
                  .map((value) => GoogleChromeManagementV1DiskInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reportTime: _json.containsKey('reportTime')
              ? _json['reportTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disk != null) 'disk': disk!,
        if (reportTime != null) 'reportTime': reportTime!,
      };
}

/// Telemetry data collected from a managed device.
class GoogleChromeManagementV1TelemetryDevice {
  /// Information on battery specs for the device.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1BatteryInfo>? batteryInfo;

  /// Battery reports collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1BatteryStatusReport>? batteryStatusReport;

  /// Information regarding CPU specs for the device.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1CpuInfo>? cpuInfo;

  /// CPU status reports collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1CpuStatusReport>? cpuStatusReport;

  /// Google Workspace Customer whose enterprise enrolled the device.
  ///
  /// Output only.
  core.String? customer;

  /// The unique Directory API ID of the device.
  ///
  /// This value is the same as the Admin Console's Directory API ID in the
  /// Chrome OS Devices tab
  ///
  /// Output only.
  core.String? deviceId;

  /// Contains information regarding Graphic peripherals for the device.
  ///
  /// Output only.
  GoogleChromeManagementV1GraphicsInfo? graphicsInfo;

  /// Graphics reports collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1GraphicsStatusReport>? graphicsStatusReport;

  /// Information regarding memory specs for the device.
  ///
  /// Output only.
  GoogleChromeManagementV1MemoryInfo? memoryInfo;

  /// Memory status reports collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1MemoryStatusReport>? memoryStatusReport;

  /// Resource name of the device.
  ///
  /// Output only.
  core.String? name;

  /// Network specs collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1NetworkStatusReport>? networkStatusReport;

  /// Organization unit ID of the device.
  ///
  /// Output only.
  core.String? orgUnitId;

  /// Contains relevant information regarding ChromeOS update status.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1OsUpdateStatus>? osUpdateStatus;

  /// Device serial number.
  ///
  /// This value is the same as the Admin Console's Serial Number in the Chrome
  /// OS Devices tab.
  ///
  /// Output only.
  core.String? serialNumber;

  /// Information of storage specs for the device.
  ///
  /// Output only.
  GoogleChromeManagementV1StorageInfo? storageInfo;

  /// Storage reports collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1StorageStatusReport>? storageStatusReport;

  GoogleChromeManagementV1TelemetryDevice({
    this.batteryInfo,
    this.batteryStatusReport,
    this.cpuInfo,
    this.cpuStatusReport,
    this.customer,
    this.deviceId,
    this.graphicsInfo,
    this.graphicsStatusReport,
    this.memoryInfo,
    this.memoryStatusReport,
    this.name,
    this.networkStatusReport,
    this.orgUnitId,
    this.osUpdateStatus,
    this.serialNumber,
    this.storageInfo,
    this.storageStatusReport,
  });

  GoogleChromeManagementV1TelemetryDevice.fromJson(core.Map _json)
      : this(
          batteryInfo: _json.containsKey('batteryInfo')
              ? (_json['batteryInfo'] as core.List)
                  .map((value) => GoogleChromeManagementV1BatteryInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          batteryStatusReport: _json.containsKey('batteryStatusReport')
              ? (_json['batteryStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1BatteryStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cpuInfo: _json.containsKey('cpuInfo')
              ? (_json['cpuInfo'] as core.List)
                  .map((value) => GoogleChromeManagementV1CpuInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cpuStatusReport: _json.containsKey('cpuStatusReport')
              ? (_json['cpuStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1CpuStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customer: _json.containsKey('customer')
              ? _json['customer'] as core.String
              : null,
          deviceId: _json.containsKey('deviceId')
              ? _json['deviceId'] as core.String
              : null,
          graphicsInfo: _json.containsKey('graphicsInfo')
              ? GoogleChromeManagementV1GraphicsInfo.fromJson(
                  _json['graphicsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          graphicsStatusReport: _json.containsKey('graphicsStatusReport')
              ? (_json['graphicsStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1GraphicsStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          memoryInfo: _json.containsKey('memoryInfo')
              ? GoogleChromeManagementV1MemoryInfo.fromJson(
                  _json['memoryInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          memoryStatusReport: _json.containsKey('memoryStatusReport')
              ? (_json['memoryStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1MemoryStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          networkStatusReport: _json.containsKey('networkStatusReport')
              ? (_json['networkStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1NetworkStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          orgUnitId: _json.containsKey('orgUnitId')
              ? _json['orgUnitId'] as core.String
              : null,
          osUpdateStatus: _json.containsKey('osUpdateStatus')
              ? (_json['osUpdateStatus'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1OsUpdateStatus.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serialNumber: _json.containsKey('serialNumber')
              ? _json['serialNumber'] as core.String
              : null,
          storageInfo: _json.containsKey('storageInfo')
              ? GoogleChromeManagementV1StorageInfo.fromJson(
                  _json['storageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          storageStatusReport: _json.containsKey('storageStatusReport')
              ? (_json['storageStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1StorageStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batteryInfo != null) 'batteryInfo': batteryInfo!,
        if (batteryStatusReport != null)
          'batteryStatusReport': batteryStatusReport!,
        if (cpuInfo != null) 'cpuInfo': cpuInfo!,
        if (cpuStatusReport != null) 'cpuStatusReport': cpuStatusReport!,
        if (customer != null) 'customer': customer!,
        if (deviceId != null) 'deviceId': deviceId!,
        if (graphicsInfo != null) 'graphicsInfo': graphicsInfo!,
        if (graphicsStatusReport != null)
          'graphicsStatusReport': graphicsStatusReport!,
        if (memoryInfo != null) 'memoryInfo': memoryInfo!,
        if (memoryStatusReport != null)
          'memoryStatusReport': memoryStatusReport!,
        if (name != null) 'name': name!,
        if (networkStatusReport != null)
          'networkStatusReport': networkStatusReport!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
        if (osUpdateStatus != null) 'osUpdateStatus': osUpdateStatus!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (storageInfo != null) 'storageInfo': storageInfo!,
        if (storageStatusReport != null)
          'storageStatusReport': storageStatusReport!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day, with a zero year (e.g., an anniversary) *
/// A year on its own, with a zero month and a zero day * A year and month, with
/// a zero day (e.g., a credit card expiration date) Related types: *
/// google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
typedef GoogleTypeDate = $Date;
