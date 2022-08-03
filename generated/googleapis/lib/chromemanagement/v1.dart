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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/apps:countChromeAppRequests';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeAppRequestsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1AppDetails.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1AppDetails.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1AppDetails.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomersReportsResource {
  final commons.ApiRequester _requester;

  CustomersReportsResource(commons.ApiRequester client) : _requester = client;

  /// Generate report of the number of devices expiring in each month of the
  /// selected time frame.
  ///
  /// Devices are grouped by auto update expiration date and model. Further
  /// information can be found
  /// [here](https://support.google.com/chrome/a/answer/10564947).
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer ID or "my_customer" prefixed with
  /// "customers/".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [maxAueDate] - Optional. Maximum expiration date in format yyyy-mm-dd in
  /// UTC timezone. If included returns all devices that have already expired
  /// and devices with auto expiration date equal to or earlier than the maximum
  /// date.
  ///
  /// [minAueDate] - Optional. Maximum expiration date in format yyyy-mm-dd in
  /// UTC timezone. If included returns all devices that have already expired
  /// and devices with auto expiration date equal to or later than the minimum
  /// date.
  ///
  /// [orgUnitId] - Optional. The organizational unit ID, if omitted, will
  /// return data for all organizational units.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse>
      countChromeDevicesReachingAutoExpirationDate(
    core.String customer, {
    core.String? maxAueDate,
    core.String? minAueDate,
    core.String? orgUnitId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxAueDate != null) 'maxAueDate': [maxAueDate],
      if (minAueDate != null) 'minAueDate': [minAueDate],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeDevicesReachingAutoExpirationDate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Counts of ChromeOS devices that have not synced policies or have lacked
  /// user activity in the past 28 days, are out of date, or are not complaint.
  ///
  /// Further information can be found here
  /// https://support.google.com/chrome/a/answer/10564947
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer ID or "my_customer" prefixed with
  /// "customers/".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [orgUnitId] - Optional. The ID of the organizational unit. If omitted, all
  /// data will be returned.
  ///
  /// [readMask] - Required. Mask of the fields that should be populated in the
  /// returned report.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse>
      countChromeDevicesThatNeedAttention(
    core.String customer, {
    core.String? orgUnitId,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeDevicesThatNeedAttention';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countInstalledApps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountInstalledAppsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (appId != null) 'appId': [appId],
      if (appType != null) 'appType': [appType],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:findInstalledAppDevices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1FindInstalledAppDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  /// Get telemetry device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `TelemetryDevice` to return.
  /// Value must have pattern `^customers/\[^/\]+/telemetry/devices/\[^/\]+$`.
  ///
  /// [readMask] - Required. Read mask to specify which fields to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1TelemetryDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1TelemetryDevice> get(
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
    return GoogleChromeManagementV1TelemetryDevice.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all telemetry devices.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter.
  /// Supported filter fields: - org_unit_id - serial_number - device_id
  ///
  /// [pageSize] - Maximum number of results to return. Default value is 100.
  /// Maximum value is 1000.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/telemetry/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1ListTelemetryDevicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  GoogleChromeManagementV1AndroidAppInfo.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
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

  GoogleChromeManagementV1AndroidAppPermission.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  GoogleChromeManagementV1AppDetails.fromJson(core.Map json_)
      : this(
          androidAppInfo: json_.containsKey('androidAppInfo')
              ? GoogleChromeManagementV1AndroidAppInfo.fromJson(
                  json_['androidAppInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          chromeAppInfo: json_.containsKey('chromeAppInfo')
              ? GoogleChromeManagementV1ChromeAppInfo.fromJson(
                  json_['chromeAppInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          detailUri: json_.containsKey('detailUri')
              ? json_['detailUri'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          firstPublishTime: json_.containsKey('firstPublishTime')
              ? json_['firstPublishTime'] as core.String
              : null,
          homepageUri: json_.containsKey('homepageUri')
              ? json_['homepageUri'] as core.String
              : null,
          iconUri: json_.containsKey('iconUri')
              ? json_['iconUri'] as core.String
              : null,
          isPaidApp: json_.containsKey('isPaidApp')
              ? json_['isPaidApp'] as core.bool
              : null,
          latestPublishTime: json_.containsKey('latestPublishTime')
              ? json_['latestPublishTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          privacyPolicyUri: json_.containsKey('privacyPolicyUri')
              ? json_['privacyPolicyUri'] as core.String
              : null,
          publisher: json_.containsKey('publisher')
              ? json_['publisher'] as core.String
              : null,
          reviewNumber: json_.containsKey('reviewNumber')
              ? json_['reviewNumber'] as core.String
              : null,
          reviewRating: json_.containsKey('reviewRating')
              ? (json_['reviewRating'] as core.num).toDouble()
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          serviceError: json_.containsKey('serviceError')
              ? GoogleRpcStatus.fromJson(
                  json_['serviceError'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

/// Audio report.
class GoogleChromeManagementV1AudioStatusReport {
  /// Active input device's name.
  ///
  /// Output only.
  core.String? inputDevice;

  /// Active input device's gain in \[0, 100\].
  ///
  /// Output only.
  core.int? inputGain;

  /// Is active input device mute or not.
  ///
  /// Output only.
  core.bool? inputMute;

  /// Active output device's name.
  ///
  /// Output only.
  core.String? outputDevice;

  /// Is active output device mute or not.
  ///
  /// Output only.
  core.bool? outputMute;

  /// Active output device's volume in \[0, 100\].
  ///
  /// Output only.
  core.int? outputVolume;

  /// Timestamp of when the sample was collected on device.
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1AudioStatusReport({
    this.inputDevice,
    this.inputGain,
    this.inputMute,
    this.outputDevice,
    this.outputMute,
    this.outputVolume,
    this.reportTime,
  });

  GoogleChromeManagementV1AudioStatusReport.fromJson(core.Map json_)
      : this(
          inputDevice: json_.containsKey('inputDevice')
              ? json_['inputDevice'] as core.String
              : null,
          inputGain: json_.containsKey('inputGain')
              ? json_['inputGain'] as core.int
              : null,
          inputMute: json_.containsKey('inputMute')
              ? json_['inputMute'] as core.bool
              : null,
          outputDevice: json_.containsKey('outputDevice')
              ? json_['outputDevice'] as core.String
              : null,
          outputMute: json_.containsKey('outputMute')
              ? json_['outputMute'] as core.bool
              : null,
          outputVolume: json_.containsKey('outputVolume')
              ? json_['outputVolume'] as core.int
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputDevice != null) 'inputDevice': inputDevice!,
        if (inputGain != null) 'inputGain': inputGain!,
        if (inputMute != null) 'inputMute': inputMute!,
        if (outputDevice != null) 'outputDevice': outputDevice!,
        if (outputMute != null) 'outputMute': outputMute!,
        if (outputVolume != null) 'outputVolume': outputVolume!,
        if (reportTime != null) 'reportTime': reportTime!,
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

  GoogleChromeManagementV1BatteryInfo.fromJson(core.Map json_)
      : this(
          designCapacity: json_.containsKey('designCapacity')
              ? json_['designCapacity'] as core.String
              : null,
          designMinVoltage: json_.containsKey('designMinVoltage')
              ? json_['designMinVoltage'] as core.int
              : null,
          manufactureDate: json_.containsKey('manufactureDate')
              ? GoogleTypeDate.fromJson(json_['manufactureDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          technology: json_.containsKey('technology')
              ? json_['technology'] as core.String
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

  GoogleChromeManagementV1BatterySampleReport.fromJson(core.Map json_)
      : this(
          chargeRate: json_.containsKey('chargeRate')
              ? json_['chargeRate'] as core.int
              : null,
          current: json_.containsKey('current')
              ? json_['current'] as core.String
              : null,
          dischargeRate: json_.containsKey('dischargeRate')
              ? json_['dischargeRate'] as core.int
              : null,
          remainingCapacity: json_.containsKey('remainingCapacity')
              ? json_['remainingCapacity'] as core.String
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          temperature: json_.containsKey('temperature')
              ? json_['temperature'] as core.int
              : null,
          voltage: json_.containsKey('voltage')
              ? json_['voltage'] as core.String
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

  /// Sampling data for the battery sorted in a decreasing order of report_time.
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

  GoogleChromeManagementV1BatteryStatusReport.fromJson(core.Map json_)
      : this(
          batteryHealth: json_.containsKey('batteryHealth')
              ? json_['batteryHealth'] as core.String
              : null,
          cycleCount: json_.containsKey('cycleCount')
              ? json_['cycleCount'] as core.int
              : null,
          fullChargeCapacity: json_.containsKey('fullChargeCapacity')
              ? json_['fullChargeCapacity'] as core.String
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          sample: json_.containsKey('sample')
              ? (json_['sample'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1BatterySampleReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
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
  /// - "SYSTEM_CROS" : ChromeOS operating system.
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

  GoogleChromeManagementV1BrowserVersion.fromJson(core.Map json_)
      : this(
          channel: json_.containsKey('channel')
              ? json_['channel'] as core.String
              : null,
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          deviceOsVersion: json_.containsKey('deviceOsVersion')
              ? json_['deviceOsVersion'] as core.String
              : null,
          system: json_.containsKey('system')
              ? json_['system'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
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

  /// Whether the app is only for Kiosk mode on ChromeOS devices
  ///
  /// Output only.
  core.bool? isKioskOnly;

  /// Whether the app or extension is a theme.
  ///
  /// Output only.
  core.bool? isTheme;

  /// Whether this app is enabled for Kiosk mode on ChromeOS devices
  ///
  /// Output only.
  core.bool? kioskEnabled;

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
    this.isKioskOnly,
    this.isTheme,
    this.kioskEnabled,
    this.minUserCount,
    this.permissions,
    this.siteAccess,
    this.supportEnabled,
  });

  GoogleChromeManagementV1ChromeAppInfo.fromJson(core.Map json_)
      : this(
          googleOwned: json_.containsKey('googleOwned')
              ? json_['googleOwned'] as core.bool
              : null,
          isCwsHosted: json_.containsKey('isCwsHosted')
              ? json_['isCwsHosted'] as core.bool
              : null,
          isKioskOnly: json_.containsKey('isKioskOnly')
              ? json_['isKioskOnly'] as core.bool
              : null,
          isTheme: json_.containsKey('isTheme')
              ? json_['isTheme'] as core.bool
              : null,
          kioskEnabled: json_.containsKey('kioskEnabled')
              ? json_['kioskEnabled'] as core.bool
              : null,
          minUserCount: json_.containsKey('minUserCount')
              ? json_['minUserCount'] as core.int
              : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1ChromeAppPermission.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          siteAccess: json_.containsKey('siteAccess')
              ? (json_['siteAccess'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1ChromeAppSiteAccess.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          supportEnabled: json_.containsKey('supportEnabled')
              ? json_['supportEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleOwned != null) 'googleOwned': googleOwned!,
        if (isCwsHosted != null) 'isCwsHosted': isCwsHosted!,
        if (isKioskOnly != null) 'isKioskOnly': isKioskOnly!,
        if (isTheme != null) 'isTheme': isTheme!,
        if (kioskEnabled != null) 'kioskEnabled': kioskEnabled!,
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

  GoogleChromeManagementV1ChromeAppPermission.fromJson(core.Map json_)
      : this(
          accessUserData: json_.containsKey('accessUserData')
              ? json_['accessUserData'] as core.bool
              : null,
          documentationUri: json_.containsKey('documentationUri')
              ? json_['documentationUri'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  GoogleChromeManagementV1ChromeAppRequest.fromJson(core.Map json_)
      : this(
          appDetails: json_.containsKey('appDetails')
              ? json_['appDetails'] as core.String
              : null,
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          detailUri: json_.containsKey('detailUri')
              ? json_['detailUri'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          iconUri: json_.containsKey('iconUri')
              ? json_['iconUri'] as core.String
              : null,
          latestRequestTime: json_.containsKey('latestRequestTime')
              ? json_['latestRequestTime'] as core.String
              : null,
          requestCount: json_.containsKey('requestCount')
              ? json_['requestCount'] as core.String
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

  GoogleChromeManagementV1ChromeAppSiteAccess.fromJson(core.Map json_)
      : this(
          hostMatch: json_.containsKey('hostMatch')
              ? json_['hostMatch'] as core.String
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
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          requestedApps: json_.containsKey('requestedApps')
              ? (json_['requestedApps'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1ChromeAppRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (requestedApps != null) 'requestedApps': requestedApps!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response containing a list of devices expiring in each month of a selected
/// time frame.
///
/// Counts are grouped by model and Auto Update Expiration date.
class GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse {
  /// The list of reports sorted by auto update expiration date in ascending
  /// order.
  core.List<GoogleChromeManagementV1DeviceAueCountReport>?
      deviceAueCountReports;

  GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse({
    this.deviceAueCountReports,
  });

  GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse.fromJson(
      core.Map json_)
      : this(
          deviceAueCountReports: json_.containsKey('deviceAueCountReports')
              ? (json_['deviceAueCountReports'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1DeviceAueCountReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceAueCountReports != null)
          'deviceAueCountReports': deviceAueCountReports!,
      };
}

/// Response containing counts for devices that need attention.
class GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse {
  /// Number of ChromeOS devices have not synced policies in the past 28 days.
  core.String? noRecentPolicySyncCount;

  /// Number of ChromeOS devices that have not seen any user activity in the
  /// past 28 days.
  core.String? noRecentUserActivityCount;

  /// Number of devices whose OS version is not compliant.
  core.String? osVersionNotCompliantCount;

  /// Number of devices that are pending an OS update.
  core.String? pendingUpdate;

  /// Number of devices that are unable to apply a policy due to an OS version
  /// mismatch.
  core.String? unsupportedPolicyCount;

  GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse({
    this.noRecentPolicySyncCount,
    this.noRecentUserActivityCount,
    this.osVersionNotCompliantCount,
    this.pendingUpdate,
    this.unsupportedPolicyCount,
  });

  GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse.fromJson(
      core.Map json_)
      : this(
          noRecentPolicySyncCount: json_.containsKey('noRecentPolicySyncCount')
              ? json_['noRecentPolicySyncCount'] as core.String
              : null,
          noRecentUserActivityCount:
              json_.containsKey('noRecentUserActivityCount')
                  ? json_['noRecentUserActivityCount'] as core.String
                  : null,
          osVersionNotCompliantCount:
              json_.containsKey('osVersionNotCompliantCount')
                  ? json_['osVersionNotCompliantCount'] as core.String
                  : null,
          pendingUpdate: json_.containsKey('pendingUpdate')
              ? json_['pendingUpdate'] as core.String
              : null,
          unsupportedPolicyCount: json_.containsKey('unsupportedPolicyCount')
              ? json_['unsupportedPolicyCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (noRecentPolicySyncCount != null)
          'noRecentPolicySyncCount': noRecentPolicySyncCount!,
        if (noRecentUserActivityCount != null)
          'noRecentUserActivityCount': noRecentUserActivityCount!,
        if (osVersionNotCompliantCount != null)
          'osVersionNotCompliantCount': osVersionNotCompliantCount!,
        if (pendingUpdate != null) 'pendingUpdate': pendingUpdate!,
        if (unsupportedPolicyCount != null)
          'unsupportedPolicyCount': unsupportedPolicyCount!,
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

  GoogleChromeManagementV1CountChromeVersionsResponse.fromJson(core.Map json_)
      : this(
          browserVersions: json_.containsKey('browserVersions')
              ? (json_['browserVersions'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1BrowserVersion.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
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

  GoogleChromeManagementV1CountInstalledAppsResponse.fromJson(core.Map json_)
      : this(
          installedApps: json_.containsKey('installedApps')
              ? (json_['installedApps'] as core.List)
                  .map((value) => GoogleChromeManagementV1InstalledApp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
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

  /// Whether keylocker is configured.`TRUE` = Enabled; `FALSE` = disabled.
  ///
  /// Only reported if keylockerSupported = `TRUE`.
  ///
  /// Output only.
  core.bool? keylockerConfigured;

  /// Whether keylocker is supported.
  ///
  /// Output only.
  core.bool? keylockerSupported;

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
    this.keylockerConfigured,
    this.keylockerSupported,
    this.maxClockSpeed,
    this.model,
  });

  GoogleChromeManagementV1CpuInfo.fromJson(core.Map json_)
      : this(
          architecture: json_.containsKey('architecture')
              ? json_['architecture'] as core.String
              : null,
          keylockerConfigured: json_.containsKey('keylockerConfigured')
              ? json_['keylockerConfigured'] as core.bool
              : null,
          keylockerSupported: json_.containsKey('keylockerSupported')
              ? json_['keylockerSupported'] as core.bool
              : null,
          maxClockSpeed: json_.containsKey('maxClockSpeed')
              ? json_['maxClockSpeed'] as core.int
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (keylockerConfigured != null)
          'keylockerConfigured': keylockerConfigured!,
        if (keylockerSupported != null)
          'keylockerSupported': keylockerSupported!,
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

  GoogleChromeManagementV1CpuStatusReport.fromJson(core.Map json_)
      : this(
          cpuTemperatureInfo: json_.containsKey('cpuTemperatureInfo')
              ? (json_['cpuTemperatureInfo'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1CpuTemperatureInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cpuUtilizationPct: json_.containsKey('cpuUtilizationPct')
              ? json_['cpuUtilizationPct'] as core.int
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          sampleFrequency: json_.containsKey('sampleFrequency')
              ? json_['sampleFrequency'] as core.String
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

  GoogleChromeManagementV1CpuTemperatureInfo.fromJson(core.Map json_)
      : this(
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          temperatureCelsius: json_.containsKey('temperatureCelsius')
              ? json_['temperatureCelsius'] as core.int
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

  GoogleChromeManagementV1Device.fromJson(core.Map json_)
      : this(
          deviceId: json_.containsKey('deviceId')
              ? json_['deviceId'] as core.String
              : null,
          machine: json_.containsKey('machine')
              ? json_['machine'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceId != null) 'deviceId': deviceId!,
        if (machine != null) 'machine': machine!,
      };
}

/// Report for CountChromeDevicesPerAueDateResponse, contains the count of
/// devices of a specific model and auto update expiration range.
class GoogleChromeManagementV1DeviceAueCountReport {
  /// Enum value of month corresponding to the auto update expiration date in
  /// UTC time zone.
  ///
  /// If the device is already expired, this field is empty.
  /// Possible string values are:
  /// - "MONTH_UNSPECIFIED" : The unspecified month.
  /// - "JANUARY" : The month of January.
  /// - "FEBRUARY" : The month of February.
  /// - "MARCH" : The month of March.
  /// - "APRIL" : The month of April.
  /// - "MAY" : The month of May.
  /// - "JUNE" : The month of June.
  /// - "JULY" : The month of July.
  /// - "AUGUST" : The month of August.
  /// - "SEPTEMBER" : The month of September.
  /// - "OCTOBER" : The month of October.
  /// - "NOVEMBER" : The month of November.
  /// - "DECEMBER" : The month of December.
  core.String? aueMonth;

  /// Int value of year corresponding to the Auto Update Expiration date in UTC
  /// time zone.
  ///
  /// If the device is already expired, this field is empty.
  core.String? aueYear;

  /// Count of devices of this model.
  core.String? count;

  /// Boolean value for whether or not the device has already expired.
  core.bool? expired;

  /// Public model name of the devices.
  core.String? model;

  GoogleChromeManagementV1DeviceAueCountReport({
    this.aueMonth,
    this.aueYear,
    this.count,
    this.expired,
    this.model,
  });

  GoogleChromeManagementV1DeviceAueCountReport.fromJson(core.Map json_)
      : this(
          aueMonth: json_.containsKey('aueMonth')
              ? json_['aueMonth'] as core.String
              : null,
          aueYear: json_.containsKey('aueYear')
              ? json_['aueYear'] as core.String
              : null,
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          expired: json_.containsKey('expired')
              ? json_['expired'] as core.bool
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aueMonth != null) 'aueMonth': aueMonth!,
        if (aueYear != null) 'aueYear': aueYear!,
        if (count != null) 'count': count!,
        if (expired != null) 'expired': expired!,
        if (model != null) 'model': model!,
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

  GoogleChromeManagementV1DiskInfo.fromJson(core.Map json_)
      : this(
          bytesReadThisSession: json_.containsKey('bytesReadThisSession')
              ? json_['bytesReadThisSession'] as core.String
              : null,
          bytesWrittenThisSession: json_.containsKey('bytesWrittenThisSession')
              ? json_['bytesWrittenThisSession'] as core.String
              : null,
          discardTimeThisSession: json_.containsKey('discardTimeThisSession')
              ? json_['discardTimeThisSession'] as core.String
              : null,
          health: json_.containsKey('health')
              ? json_['health'] as core.String
              : null,
          ioTimeThisSession: json_.containsKey('ioTimeThisSession')
              ? json_['ioTimeThisSession'] as core.String
              : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          readTimeThisSession: json_.containsKey('readTimeThisSession')
              ? json_['readTimeThisSession'] as core.String
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          volumeIds: json_.containsKey('volumeIds')
              ? (json_['volumeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          writeTimeThisSession: json_.containsKey('writeTimeThisSession')
              ? json_['writeTimeThisSession'] as core.String
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

  GoogleChromeManagementV1DisplayInfo.fromJson(core.Map json_)
      : this(
          deviceId: json_.containsKey('deviceId')
              ? json_['deviceId'] as core.String
              : null,
          isInternal: json_.containsKey('isInternal')
              ? json_['isInternal'] as core.bool
              : null,
          refreshRate: json_.containsKey('refreshRate')
              ? json_['refreshRate'] as core.int
              : null,
          resolutionHeight: json_.containsKey('resolutionHeight')
              ? json_['resolutionHeight'] as core.int
              : null,
          resolutionWidth: json_.containsKey('resolutionWidth')
              ? json_['resolutionWidth'] as core.int
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
      core.Map json_)
      : this(
          devices: json_.containsKey('devices')
              ? (json_['devices'] as core.List)
                  .map((value) => GoogleChromeManagementV1Device.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
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

  GoogleChromeManagementV1GraphicsAdapterInfo.fromJson(core.Map json_)
      : this(
          adapter: json_.containsKey('adapter')
              ? json_['adapter'] as core.String
              : null,
          deviceId: json_.containsKey('deviceId')
              ? json_['deviceId'] as core.String
              : null,
          driverVersion: json_.containsKey('driverVersion')
              ? json_['driverVersion'] as core.String
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

  GoogleChromeManagementV1GraphicsInfo.fromJson(core.Map json_)
      : this(
          adapterInfo: json_.containsKey('adapterInfo')
              ? GoogleChromeManagementV1GraphicsAdapterInfo.fromJson(
                  json_['adapterInfo'] as core.Map<core.String, core.dynamic>)
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

  GoogleChromeManagementV1GraphicsStatusReport.fromJson(core.Map json_)
      : this(
          displays: json_.containsKey('displays')
              ? (json_['displays'] as core.List)
                  .map((value) => GoogleChromeManagementV1DisplayInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displays != null) 'displays': displays!,
        if (reportTime != null) 'reportTime': reportTime!,
      };
}

/// Data that describes the result of the HTTPS latency diagnostics routine,
/// with the HTTPS requests issued to Google websites.
class GoogleChromeManagementV1HttpsLatencyRoutineData {
  /// HTTPS latency if routine succeeded or failed because of HIGH_LATENCY or
  /// VERY_HIGH_LATENCY.
  ///
  /// Output only.
  core.String? latency;

  /// HTTPS latency routine problem if a problem occurred.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HTTPS_LATENCY_PROBLEM_UNSPECIFIED" : HTTPS latency problem not
  /// specified.
  /// - "FAILED_DNS_RESOLUTIONS" : One or more DNS resolutions resulted in a
  /// failure.
  /// - "FAILED_HTTPS_REQUESTS" : One or more HTTPS requests resulted in a
  /// failure.
  /// - "HIGH_LATENCY" : Average HTTPS request latency time between 500ms and
  /// 1000ms is high.
  /// - "VERY_HIGH_LATENCY" : Average HTTPS request latency time greater than
  /// 1000ms is very high.
  core.String? problem;

  GoogleChromeManagementV1HttpsLatencyRoutineData({
    this.latency,
    this.problem,
  });

  GoogleChromeManagementV1HttpsLatencyRoutineData.fromJson(core.Map json_)
      : this(
          latency: json_.containsKey('latency')
              ? json_['latency'] as core.String
              : null,
          problem: json_.containsKey('problem')
              ? json_['problem'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latency != null) 'latency': latency!,
        if (problem != null) 'problem': problem!,
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

  GoogleChromeManagementV1InstalledApp.fromJson(core.Map json_)
      : this(
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          appInstallType: json_.containsKey('appInstallType')
              ? json_['appInstallType'] as core.String
              : null,
          appSource: json_.containsKey('appSource')
              ? json_['appSource'] as core.String
              : null,
          appType: json_.containsKey('appType')
              ? json_['appType'] as core.String
              : null,
          browserDeviceCount: json_.containsKey('browserDeviceCount')
              ? json_['browserDeviceCount'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          homepageUri: json_.containsKey('homepageUri')
              ? json_['homepageUri'] as core.String
              : null,
          osUserCount: json_.containsKey('osUserCount')
              ? json_['osUserCount'] as core.String
              : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
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

  GoogleChromeManagementV1ListTelemetryDevicesResponse.fromJson(core.Map json_)
      : this(
          devices: json_.containsKey('devices')
              ? (json_['devices'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1TelemetryDevice.fromJson(
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

/// Memory information of a device.
class GoogleChromeManagementV1MemoryInfo {
  /// Amount of available RAM in bytes.
  ///
  /// Output only.
  core.String? availableRamBytes;

  /// Total memory encryption info for the device.
  ///
  /// Output only.
  GoogleChromeManagementV1TotalMemoryEncryptionInfo? totalMemoryEncryption;

  /// Total RAM in bytes.
  ///
  /// Output only.
  core.String? totalRamBytes;

  GoogleChromeManagementV1MemoryInfo({
    this.availableRamBytes,
    this.totalMemoryEncryption,
    this.totalRamBytes,
  });

  GoogleChromeManagementV1MemoryInfo.fromJson(core.Map json_)
      : this(
          availableRamBytes: json_.containsKey('availableRamBytes')
              ? json_['availableRamBytes'] as core.String
              : null,
          totalMemoryEncryption: json_.containsKey('totalMemoryEncryption')
              ? GoogleChromeManagementV1TotalMemoryEncryptionInfo.fromJson(
                  json_['totalMemoryEncryption']
                      as core.Map<core.String, core.dynamic>)
              : null,
          totalRamBytes: json_.containsKey('totalRamBytes')
              ? json_['totalRamBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableRamBytes != null) 'availableRamBytes': availableRamBytes!,
        if (totalMemoryEncryption != null)
          'totalMemoryEncryption': totalMemoryEncryption!,
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

  GoogleChromeManagementV1MemoryStatusReport.fromJson(core.Map json_)
      : this(
          pageFaults: json_.containsKey('pageFaults')
              ? json_['pageFaults'] as core.int
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          sampleFrequency: json_.containsKey('sampleFrequency')
              ? json_['sampleFrequency'] as core.String
              : null,
          systemRamFreeBytes: json_.containsKey('systemRamFreeBytes')
              ? json_['systemRamFreeBytes'] as core.String
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

/// Network device.
class GoogleChromeManagementV1NetworkDevice {
  /// The integrated circuit card ID associated with the device's sim card.
  ///
  /// Output only.
  core.String? iccid;

  /// IMEI (if applicable) of the corresponding network device.
  ///
  /// Output only.
  core.String? imei;

  /// MAC address (if applicable) of the corresponding network device.
  ///
  /// Output only.
  core.String? macAddress;

  /// The mobile directory number associated with the device's sim card.
  ///
  /// Output only.
  core.String? mdn;

  /// MEID (if applicable) of the corresponding network device.
  ///
  /// Output only.
  core.String? meid;

  /// Network device type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NETWORK_DEVICE_TYPE_UNSPECIFIED" : Network device type not specified.
  /// - "CELLULAR_DEVICE" : Cellular device.
  /// - "ETHERNET_DEVICE" : Ethernet device.
  /// - "WIFI_DEVICE" : Wifi device.
  core.String? type;

  GoogleChromeManagementV1NetworkDevice({
    this.iccid,
    this.imei,
    this.macAddress,
    this.mdn,
    this.meid,
    this.type,
  });

  GoogleChromeManagementV1NetworkDevice.fromJson(core.Map json_)
      : this(
          iccid:
              json_.containsKey('iccid') ? json_['iccid'] as core.String : null,
          imei: json_.containsKey('imei') ? json_['imei'] as core.String : null,
          macAddress: json_.containsKey('macAddress')
              ? json_['macAddress'] as core.String
              : null,
          mdn: json_.containsKey('mdn') ? json_['mdn'] as core.String : null,
          meid: json_.containsKey('meid') ? json_['meid'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iccid != null) 'iccid': iccid!,
        if (imei != null) 'imei': imei!,
        if (macAddress != null) 'macAddress': macAddress!,
        if (mdn != null) 'mdn': mdn!,
        if (meid != null) 'meid': meid!,
        if (type != null) 'type': type!,
      };
}

/// Network testing results to determine the health of the device's network
/// connection, for example whether the HTTPS latency is high or normal.
class GoogleChromeManagementV1NetworkDiagnosticsReport {
  /// HTTPS latency test data.
  ///
  /// Output only.
  GoogleChromeManagementV1HttpsLatencyRoutineData? httpsLatencyData;

  /// Timestamp of when the diagnostics were collected.
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1NetworkDiagnosticsReport({
    this.httpsLatencyData,
    this.reportTime,
  });

  GoogleChromeManagementV1NetworkDiagnosticsReport.fromJson(core.Map json_)
      : this(
          httpsLatencyData: json_.containsKey('httpsLatencyData')
              ? GoogleChromeManagementV1HttpsLatencyRoutineData.fromJson(
                  json_['httpsLatencyData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpsLatencyData != null) 'httpsLatencyData': httpsLatencyData!,
        if (reportTime != null) 'reportTime': reportTime!,
      };
}

/// Network devices info.
class GoogleChromeManagementV1NetworkInfo {
  /// List of network devices.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1NetworkDevice>? networkDevices;

  GoogleChromeManagementV1NetworkInfo({
    this.networkDevices,
  });

  GoogleChromeManagementV1NetworkInfo.fromJson(core.Map json_)
      : this(
          networkDevices: json_.containsKey('networkDevices')
              ? (json_['networkDevices'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1NetworkDevice.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkDevices != null) 'networkDevices': networkDevices!,
      };
}

/// State of visible/configured networks.
class GoogleChromeManagementV1NetworkStatusReport {
  /// Current connection state of the network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NETWORK_CONNECTION_STATE_UNSPECIFIED" : Network connection state
  /// unspecified.
  /// - "ONLINE" : The network is connected and internet connectivity is
  /// available.
  /// - "CONNECTED" : The network is connected and not in a detected portal
  /// state, but internet connectivity may not be available.
  /// - "PORTAL" : The network is connected but a portal state was detected.
  /// Internet connectivity may be limited.
  /// - "CONNECTING" : The network is in the process of connecting.
  /// - "NOT_CONNECTED" : The network is not connected.
  core.String? connectionState;

  /// Network connection type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NETWORK_TYPE_UNSPECIFIED" : Network connection type unspecified
  /// - "CELLULAR" : Cellular network connection.
  /// - "ETHERNET" : Ethernet network connection.
  /// - "TETHER" : Tether network connection.
  /// - "VPN" : VPN network connection.
  /// - "WIFI" : Wifi network connection.
  core.String? connectionType;

  /// Whether the wifi encryption key is turned off.
  ///
  /// Output only.
  core.bool? encryptionOn;

  /// Gateway IP address.
  ///
  /// Output only.
  core.String? gatewayIpAddress;

  /// Network connection guid.
  ///
  /// Output only.
  core.String? guid;

  /// LAN IP address.
  ///
  /// Output only.
  core.String? lanIpAddress;

  /// Receiving bit rate measured in Megabits per second.
  ///
  /// Output only.
  core.String? receivingBitRateMbps;

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

  /// Transmission bit rate measured in Megabits per second.
  ///
  /// Output only.
  core.String? transmissionBitRateMbps;

  /// Transmission power measured in decibels.
  ///
  /// Output only.
  core.int? transmissionPowerDbm;

  /// Wifi link quality.
  ///
  /// Value ranges from \[0, 70\]. 0 indicates no signal and 70 indicates a
  /// strong signal.
  ///
  /// Output only.
  core.String? wifiLinkQuality;

  /// Wifi power management enabled
  ///
  /// Output only.
  core.bool? wifiPowerManagementEnabled;

  GoogleChromeManagementV1NetworkStatusReport({
    this.connectionState,
    this.connectionType,
    this.encryptionOn,
    this.gatewayIpAddress,
    this.guid,
    this.lanIpAddress,
    this.receivingBitRateMbps,
    this.reportTime,
    this.sampleFrequency,
    this.signalStrengthDbm,
    this.transmissionBitRateMbps,
    this.transmissionPowerDbm,
    this.wifiLinkQuality,
    this.wifiPowerManagementEnabled,
  });

  GoogleChromeManagementV1NetworkStatusReport.fromJson(core.Map json_)
      : this(
          connectionState: json_.containsKey('connectionState')
              ? json_['connectionState'] as core.String
              : null,
          connectionType: json_.containsKey('connectionType')
              ? json_['connectionType'] as core.String
              : null,
          encryptionOn: json_.containsKey('encryptionOn')
              ? json_['encryptionOn'] as core.bool
              : null,
          gatewayIpAddress: json_.containsKey('gatewayIpAddress')
              ? json_['gatewayIpAddress'] as core.String
              : null,
          guid: json_.containsKey('guid') ? json_['guid'] as core.String : null,
          lanIpAddress: json_.containsKey('lanIpAddress')
              ? json_['lanIpAddress'] as core.String
              : null,
          receivingBitRateMbps: json_.containsKey('receivingBitRateMbps')
              ? json_['receivingBitRateMbps'] as core.String
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          sampleFrequency: json_.containsKey('sampleFrequency')
              ? json_['sampleFrequency'] as core.String
              : null,
          signalStrengthDbm: json_.containsKey('signalStrengthDbm')
              ? json_['signalStrengthDbm'] as core.int
              : null,
          transmissionBitRateMbps: json_.containsKey('transmissionBitRateMbps')
              ? json_['transmissionBitRateMbps'] as core.String
              : null,
          transmissionPowerDbm: json_.containsKey('transmissionPowerDbm')
              ? json_['transmissionPowerDbm'] as core.int
              : null,
          wifiLinkQuality: json_.containsKey('wifiLinkQuality')
              ? json_['wifiLinkQuality'] as core.String
              : null,
          wifiPowerManagementEnabled:
              json_.containsKey('wifiPowerManagementEnabled')
                  ? json_['wifiPowerManagementEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionState != null) 'connectionState': connectionState!,
        if (connectionType != null) 'connectionType': connectionType!,
        if (encryptionOn != null) 'encryptionOn': encryptionOn!,
        if (gatewayIpAddress != null) 'gatewayIpAddress': gatewayIpAddress!,
        if (guid != null) 'guid': guid!,
        if (lanIpAddress != null) 'lanIpAddress': lanIpAddress!,
        if (receivingBitRateMbps != null)
          'receivingBitRateMbps': receivingBitRateMbps!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (sampleFrequency != null) 'sampleFrequency': sampleFrequency!,
        if (signalStrengthDbm != null) 'signalStrengthDbm': signalStrengthDbm!,
        if (transmissionBitRateMbps != null)
          'transmissionBitRateMbps': transmissionBitRateMbps!,
        if (transmissionPowerDbm != null)
          'transmissionPowerDbm': transmissionPowerDbm!,
        if (wifiLinkQuality != null) 'wifiLinkQuality': wifiLinkQuality!,
        if (wifiPowerManagementEnabled != null)
          'wifiPowerManagementEnabled': wifiPowerManagementEnabled!,
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

  GoogleChromeManagementV1OsUpdateStatus.fromJson(core.Map json_)
      : this(
          lastRebootTime: json_.containsKey('lastRebootTime')
              ? json_['lastRebootTime'] as core.String
              : null,
          lastUpdateCheckTime: json_.containsKey('lastUpdateCheckTime')
              ? json_['lastUpdateCheckTime'] as core.String
              : null,
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          newPlatformVersion: json_.containsKey('newPlatformVersion')
              ? json_['newPlatformVersion'] as core.String
              : null,
          newRequestedPlatformVersion:
              json_.containsKey('newRequestedPlatformVersion')
                  ? json_['newRequestedPlatformVersion'] as core.String
                  : null,
          updateState: json_.containsKey('updateState')
              ? json_['updateState'] as core.String
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

  GoogleChromeManagementV1StorageInfo.fromJson(core.Map json_)
      : this(
          availableDiskBytes: json_.containsKey('availableDiskBytes')
              ? json_['availableDiskBytes'] as core.String
              : null,
          totalDiskBytes: json_.containsKey('totalDiskBytes')
              ? json_['totalDiskBytes'] as core.String
              : null,
          volume: json_.containsKey('volume')
              ? (json_['volume'] as core.List)
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

  GoogleChromeManagementV1StorageInfoDiskVolume.fromJson(core.Map json_)
      : this(
          storageFreeBytes: json_.containsKey('storageFreeBytes')
              ? json_['storageFreeBytes'] as core.String
              : null,
          storageTotalBytes: json_.containsKey('storageTotalBytes')
              ? json_['storageTotalBytes'] as core.String
              : null,
          volumeId: json_.containsKey('volumeId')
              ? json_['volumeId'] as core.String
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
  /// Reports on disk.
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

  GoogleChromeManagementV1StorageStatusReport.fromJson(core.Map json_)
      : this(
          disk: json_.containsKey('disk')
              ? (json_['disk'] as core.List)
                  .map((value) => GoogleChromeManagementV1DiskInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disk != null) 'disk': disk!,
        if (reportTime != null) 'reportTime': reportTime!,
      };
}

/// Telemetry data collected from a managed device.
class GoogleChromeManagementV1TelemetryDevice {
  /// Audio reports collected periodically sorted in a decreasing order of
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1AudioStatusReport>? audioStatusReport;

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

  /// CPU status reports collected periodically sorted in a decreasing order of
  /// report_time.
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
  /// ChromeOS Devices tab
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

  /// Memory status reports collected periodically sorted decreasing by
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1MemoryStatusReport>? memoryStatusReport;

  /// Resource name of the device.
  ///
  /// Output only.
  core.String? name;

  /// Network diagnostics collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1NetworkDiagnosticsReport>?
      networkDiagnosticsReport;

  /// Network devices information.
  ///
  /// Output only.
  GoogleChromeManagementV1NetworkInfo? networkInfo;

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
  /// This value is the same as the Admin Console's Serial Number in the
  /// ChromeOS Devices tab.
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

  /// Information on Thunderbolt bus.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1ThunderboltInfo>? thunderboltInfo;

  GoogleChromeManagementV1TelemetryDevice({
    this.audioStatusReport,
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
    this.networkDiagnosticsReport,
    this.networkInfo,
    this.networkStatusReport,
    this.orgUnitId,
    this.osUpdateStatus,
    this.serialNumber,
    this.storageInfo,
    this.storageStatusReport,
    this.thunderboltInfo,
  });

  GoogleChromeManagementV1TelemetryDevice.fromJson(core.Map json_)
      : this(
          audioStatusReport: json_.containsKey('audioStatusReport')
              ? (json_['audioStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1AudioStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          batteryInfo: json_.containsKey('batteryInfo')
              ? (json_['batteryInfo'] as core.List)
                  .map((value) => GoogleChromeManagementV1BatteryInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          batteryStatusReport: json_.containsKey('batteryStatusReport')
              ? (json_['batteryStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1BatteryStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cpuInfo: json_.containsKey('cpuInfo')
              ? (json_['cpuInfo'] as core.List)
                  .map((value) => GoogleChromeManagementV1CpuInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cpuStatusReport: json_.containsKey('cpuStatusReport')
              ? (json_['cpuStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1CpuStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customer: json_.containsKey('customer')
              ? json_['customer'] as core.String
              : null,
          deviceId: json_.containsKey('deviceId')
              ? json_['deviceId'] as core.String
              : null,
          graphicsInfo: json_.containsKey('graphicsInfo')
              ? GoogleChromeManagementV1GraphicsInfo.fromJson(
                  json_['graphicsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          graphicsStatusReport: json_.containsKey('graphicsStatusReport')
              ? (json_['graphicsStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1GraphicsStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          memoryInfo: json_.containsKey('memoryInfo')
              ? GoogleChromeManagementV1MemoryInfo.fromJson(
                  json_['memoryInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          memoryStatusReport: json_.containsKey('memoryStatusReport')
              ? (json_['memoryStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1MemoryStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkDiagnosticsReport: json_
                  .containsKey('networkDiagnosticsReport')
              ? (json_['networkDiagnosticsReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1NetworkDiagnosticsReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          networkInfo: json_.containsKey('networkInfo')
              ? GoogleChromeManagementV1NetworkInfo.fromJson(
                  json_['networkInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          networkStatusReport: json_.containsKey('networkStatusReport')
              ? (json_['networkStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1NetworkStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          orgUnitId: json_.containsKey('orgUnitId')
              ? json_['orgUnitId'] as core.String
              : null,
          osUpdateStatus: json_.containsKey('osUpdateStatus')
              ? (json_['osUpdateStatus'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1OsUpdateStatus.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          storageInfo: json_.containsKey('storageInfo')
              ? GoogleChromeManagementV1StorageInfo.fromJson(
                  json_['storageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          storageStatusReport: json_.containsKey('storageStatusReport')
              ? (json_['storageStatusReport'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1StorageStatusReport.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          thunderboltInfo: json_.containsKey('thunderboltInfo')
              ? (json_['thunderboltInfo'] as core.List)
                  .map((value) =>
                      GoogleChromeManagementV1ThunderboltInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioStatusReport != null) 'audioStatusReport': audioStatusReport!,
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
        if (networkDiagnosticsReport != null)
          'networkDiagnosticsReport': networkDiagnosticsReport!,
        if (networkInfo != null) 'networkInfo': networkInfo!,
        if (networkStatusReport != null)
          'networkStatusReport': networkStatusReport!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
        if (osUpdateStatus != null) 'osUpdateStatus': osUpdateStatus!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (storageInfo != null) 'storageInfo': storageInfo!,
        if (storageStatusReport != null)
          'storageStatusReport': storageStatusReport!,
        if (thunderboltInfo != null) 'thunderboltInfo': thunderboltInfo!,
      };
}

/// Thunderbolt bus info.
class GoogleChromeManagementV1ThunderboltInfo {
  /// Security level of the Thunderbolt bus.
  /// Possible string values are:
  /// - "THUNDERBOLT_SECURITY_LEVEL_UNSPECIFIED" : Thunderbolt security level is
  /// not set.
  /// - "THUNDERBOLT_SECURITY_NONE_LEVEL" : All devices are automatically
  /// connected by the firmware. No user approval is needed.
  /// - "THUNDERBOLT_SECURITY_USER_LEVEL" : User is asked whether the device is
  /// allowed to be connected.
  /// - "THUNDERBOLT_SECURITY_SECURE_LEVEL" : User is asked whether the device
  /// is allowed to be connected. In addition the device is sent a challenge
  /// that should match the expected one based on a random key written to the
  /// key sysfs attribute
  /// - "THUNDERBOLT_SECURITY_DP_ONLY_LEVEL" : The firmware automatically
  /// creates tunnels for Thunderbolt.
  /// - "THUNDERBOLT_SECURITY_USB_ONLY_LEVEL" : The firmware automatically
  /// creates tunnels for the USB controller and Display Port in a dock. All
  /// PCIe links downstream of the dock are removed.
  /// - "THUNDERBOLT_SECURITY_NO_PCIE_LEVEL" : PCIE tunneling is disabled.
  core.String? securityLevel;

  GoogleChromeManagementV1ThunderboltInfo({
    this.securityLevel,
  });

  GoogleChromeManagementV1ThunderboltInfo.fromJson(core.Map json_)
      : this(
          securityLevel: json_.containsKey('securityLevel')
              ? json_['securityLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (securityLevel != null) 'securityLevel': securityLevel!,
      };
}

/// Memory encryption information of a device.
class GoogleChromeManagementV1TotalMemoryEncryptionInfo {
  /// Memory encryption algorithm.
  /// Possible string values are:
  /// - "MEMORY_ENCRYPTION_ALGORITHM_UNSPECIFIED" : Memory encryption algorithm
  /// is not set.
  /// - "MEMORY_ENCRYPTION_ALGORITHM_UNKNOWN" : The memory encryption algorithm
  /// being used is unknown.
  /// - "MEMORY_ENCRYPTION_ALGORITHM_AES_XTS_128" : The memory encryption
  /// algorithm is using the AES_XTS encryption algorithm with a 128 bit block
  /// cypher.
  /// - "MEMORY_ENCRYPTION_ALGORITHM_AES_XTS_256" : The memory encryption
  /// algorithm is using the AES_XTS encryption algorithm with a 256 bit block
  /// cypher.
  core.String? encryptionAlgorithm;

  /// The state of memory encryption on the device.
  /// Possible string values are:
  /// - "MEMORY_ENCRYPTION_STATE_UNSPECIFIED" : Memory encryption state is not
  /// set.
  /// - "MEMORY_ENCRYPTION_STATE_UNKNOWN" : The memory encryption state is
  /// unknown.
  /// - "MEMORY_ENCRYPTION_STATE_DISABLED" : Memory encrpytion on the device is
  /// disabled.
  /// - "MEMORY_ENCRYPTION_STATE_TME" : Memory encryption on the device uses
  /// total memory encryption.
  /// - "MEMORY_ENCRYPTION_STATE_MKTME" : Memory encryption on the device uses
  /// multi-key total memory encryption.
  core.String? encryptionState;

  /// The length of the encryption keys.
  core.String? keyLength;

  /// The maximum number of keys that can be used for encryption.
  core.String? maxKeys;

  GoogleChromeManagementV1TotalMemoryEncryptionInfo({
    this.encryptionAlgorithm,
    this.encryptionState,
    this.keyLength,
    this.maxKeys,
  });

  GoogleChromeManagementV1TotalMemoryEncryptionInfo.fromJson(core.Map json_)
      : this(
          encryptionAlgorithm: json_.containsKey('encryptionAlgorithm')
              ? json_['encryptionAlgorithm'] as core.String
              : null,
          encryptionState: json_.containsKey('encryptionState')
              ? json_['encryptionState'] as core.String
              : null,
          keyLength: json_.containsKey('keyLength')
              ? json_['keyLength'] as core.String
              : null,
          maxKeys: json_.containsKey('maxKeys')
              ? json_['maxKeys'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionAlgorithm != null)
          'encryptionAlgorithm': encryptionAlgorithm!,
        if (encryptionState != null) 'encryptionState': encryptionState!,
        if (keyLength != null) 'keyLength': keyLength!,
        if (maxKeys != null) 'maxKeys': maxKeys!,
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
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef GoogleTypeDate = $Date;
