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
/// For more information, see <http://developers.google.com/chrome/management/>
///
/// Create an instance of [ChromeManagementApi] to access these resources:
///
/// - [CustomersResource]
///   - [CustomersAppsResource]
///     - [CustomersAppsAndroidResource]
///     - [CustomersAppsChromeResource]
///     - [CustomersAppsWebResource]
///   - [CustomersReportsResource]
library chromemanagement.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  GoogleRpcStatus({
    this.code,
    this.details,
    this.message,
  });

  GoogleRpcStatus.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
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
