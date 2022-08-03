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

/// AdMob API - v1
///
/// The AdMob API allows publishers to programmatically get information about
/// their AdMob account.
///
/// For more information, see <https://developers.google.com/admob/api/>
///
/// Create an instance of [AdMobApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsAdUnitsResource]
///   - [AccountsAppsResource]
///   - [AccountsMediationReportResource]
///   - [AccountsNetworkReportResource]
library admob.v1;

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

/// The AdMob API allows publishers to programmatically get information about
/// their AdMob account.
class AdMobApi {
  /// See your AdMob data
  static const admobReadonlyScope =
      'https://www.googleapis.com/auth/admob.readonly';

  /// See your AdMob data
  static const admobReportScope =
      'https://www.googleapis.com/auth/admob.report';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  AdMobApi(http.Client client,
      {core.String rootUrl = 'https://admob.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsAdUnitsResource get adUnits => AccountsAdUnitsResource(_requester);
  AccountsAppsResource get apps => AccountsAppsResource(_requester);
  AccountsMediationReportResource get mediationReport =>
      AccountsMediationReportResource(_requester);
  AccountsNetworkReportResource get networkReport =>
      AccountsNetworkReportResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about the specified AdMob publisher account.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the publisher account to retrieve. Example:
  /// accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublisherAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublisherAccount> get(
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
    return PublisherAccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the AdMob publisher account that was most recently signed in to from
  /// the AdMob UI.
  ///
  /// For more information, see
  /// https://support.google.com/admob/answer/10243672.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Maximum number of accounts to return.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListPublisherAccountsResponse`; indicates that this is a continuation of
  /// a prior `ListPublisherAccounts` call, and that the system should return
  /// the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPublisherAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPublisherAccountsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPublisherAccountsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdUnitsResource {
  final commons.ApiRequester _requester;

  AccountsAdUnitsResource(commons.ApiRequester client) : _requester = client;

  /// List the ad units under the specified AdMob account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the account to list ad units for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of ad units to return. If unspecified or
  /// 0, at most 10,000 ad units will be returned. The maximum value is 20,000;
  /// values above 20,000 will be coerced to 20,000.
  ///
  /// [pageToken] - The value returned by the last `ListAdUnitsResponse`;
  /// indicates that this is a continuation of a prior `ListAdUnits` call, and
  /// that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAdUnitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAdUnitsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/adUnits';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdUnitsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAppsResource {
  final commons.ApiRequester _requester;

  AccountsAppsResource(commons.ApiRequester client) : _requester = client;

  /// List the apps under the specified AdMob account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the account to list apps for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of apps to return. If unspecified or 0, at
  /// most 10,000 apps will be returned. The maximum value is 20,000; values
  /// above 20,000 will be coerced to 20,000.
  ///
  /// [pageToken] - The value returned by the last `ListAppsResponse`; indicates
  /// that this is a continuation of a prior `ListApps` call, and that the
  /// system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAppsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/apps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAppsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsMediationReportResource {
  final commons.ApiRequester _requester;

  AccountsMediationReportResource(commons.ApiRequester client)
      : _requester = client;

  /// Generates an AdMob Mediation report based on the provided report
  /// specification.
  ///
  /// Returns result of a server-side streaming RPC. The result is returned in a
  /// sequence of responses.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the account to generate the report for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateMediationReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateMediationReportResponse> generate(
    GenerateMediationReportRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/mediationReport:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateMediationReportResponse.fromJson(response_ as core.List);
  }
}

class AccountsNetworkReportResource {
  final commons.ApiRequester _requester;

  AccountsNetworkReportResource(commons.ApiRequester client)
      : _requester = client;

  /// Generates an AdMob Network report based on the provided report
  /// specification.
  ///
  /// Returns result of a server-side streaming RPC. The result is returned in a
  /// sequence of responses.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the account to generate the report for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateNetworkReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateNetworkReportResponse> generate(
    GenerateNetworkReportRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/networkReport:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateNetworkReportResponse.fromJson(response_ as core.List);
  }
}

/// Describes an AdMob ad unit.
class AdUnit {
  /// AdFormat of the ad unit.
  ///
  /// Possible values are as follows: "BANNER" - Banner ad format.
  /// "BANNER_INTERSTITIAL" - Legacy format that can be used as either banner or
  /// interstitial. This format can no longer be created but can be targeted by
  /// mediation groups. "INTERSTITIAL" - A full screen ad. Supported ad types
  /// are "RICH_MEDIA" and "VIDEO". "NATIVE" - Native ad format. "REWARDED" - An
  /// ad that, once viewed, gets a callback verifying the view so that a reward
  /// can be given to the user. Supported ad types are "RICH_MEDIA"
  /// (interactive) and video where video can not be excluded.
  core.String? adFormat;

  /// Ad media type supported by this ad unit.
  ///
  /// Possible values as follows: "RICH_MEDIA" - Text, image, and other
  /// non-video media. "VIDEO" - Video media.
  core.List<core.String>? adTypes;

  /// The externally visible ID of the ad unit which can be used to integrate
  /// with the AdMob SDK.
  ///
  /// This is a read only property. Example:
  /// ca-app-pub-9876543210987654/0123456789
  core.String? adUnitId;

  /// The externally visible ID of the app this ad unit is associated with.
  ///
  /// Example: ca-app-pub-9876543210987654~0123456789
  core.String? appId;

  /// The display name of the ad unit as shown in the AdMob UI, which is
  /// provided by the user.
  ///
  /// The maximum length allowed is 80 characters.
  core.String? displayName;

  /// Resource name for this ad unit.
  ///
  /// Format is accounts/{publisher_id}/adUnits/{ad_unit_id_fragment} Example:
  /// accounts/pub-9876543210987654/adUnits/0123456789
  core.String? name;

  AdUnit({
    this.adFormat,
    this.adTypes,
    this.adUnitId,
    this.appId,
    this.displayName,
    this.name,
  });

  AdUnit.fromJson(core.Map json_)
      : this(
          adFormat: json_.containsKey('adFormat')
              ? json_['adFormat'] as core.String
              : null,
          adTypes: json_.containsKey('adTypes')
              ? (json_['adTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          adUnitId: json_.containsKey('adUnitId')
              ? json_['adUnitId'] as core.String
              : null,
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adFormat != null) 'adFormat': adFormat!,
        if (adTypes != null) 'adTypes': adTypes!,
        if (adUnitId != null) 'adUnitId': adUnitId!,
        if (appId != null) 'appId': appId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// Describes an AdMob app for a specific platform (For example: Android or
/// iOS).
class App {
  /// The externally visible ID of the app which can be used to integrate with
  /// the AdMob SDK.
  ///
  /// This is a read only property. Example:
  /// ca-app-pub-9876543210987654~0123456789
  core.String? appId;

  /// The information for an app that is linked to an app store.
  ///
  /// This field is present if and only if the app is linked to an app store.
  ///
  /// Immutable.
  AppLinkedAppInfo? linkedAppInfo;

  /// The information for an app that is not linked to any app store.
  ///
  /// After an app is linked, this information is still retrivable. If no name
  /// is provided for the app upon creation, a placeholder name will be used.
  AppManualAppInfo? manualAppInfo;

  /// Resource name for this app.
  ///
  /// Format is accounts/{publisher_id}/apps/{app_id_fragment} Example:
  /// accounts/pub-9876543210987654/apps/0123456789
  core.String? name;

  /// Describes the platform of the app.
  ///
  /// Limited to "IOS" and "ANDROID".
  core.String? platform;

  App({
    this.appId,
    this.linkedAppInfo,
    this.manualAppInfo,
    this.name,
    this.platform,
  });

  App.fromJson(core.Map json_)
      : this(
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          linkedAppInfo: json_.containsKey('linkedAppInfo')
              ? AppLinkedAppInfo.fromJson(
                  json_['linkedAppInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          manualAppInfo: json_.containsKey('manualAppInfo')
              ? AppManualAppInfo.fromJson(
                  json_['manualAppInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          platform: json_.containsKey('platform')
              ? json_['platform'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (linkedAppInfo != null) 'linkedAppInfo': linkedAppInfo!,
        if (manualAppInfo != null) 'manualAppInfo': manualAppInfo!,
        if (name != null) 'name': name!,
        if (platform != null) 'platform': platform!,
      };
}

/// Information from the app store if the app is linked to an app store.
class AppLinkedAppInfo {
  /// The app store ID of the app; present if and only if the app is linked to
  /// an app store.
  ///
  /// If the app is added to the Google Play store, it will be the application
  /// ID of the app. For example: "com.example.myapp". See
  /// https://developer.android.com/studio/build/application-id. If the app is
  /// added to the Apple App Store, it will be app store ID. For example
  /// "105169111". Note that setting the app store id is considered an
  /// irreversible action. Once an app is linked, it cannot be unlinked.
  core.String? appStoreId;

  /// Display name of the app as it appears in the app store.
  ///
  /// This is an output-only field, and may be empty if the app cannot be found
  /// in the store.
  ///
  /// Output only.
  core.String? displayName;

  AppLinkedAppInfo({
    this.appStoreId,
    this.displayName,
  });

  AppLinkedAppInfo.fromJson(core.Map json_)
      : this(
          appStoreId: json_.containsKey('appStoreId')
              ? json_['appStoreId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appStoreId != null) 'appStoreId': appStoreId!,
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Information provided for manual apps which are not linked to an application
/// store (Example: Google Play, App Store).
class AppManualAppInfo {
  /// The display name of the app as shown in the AdMob UI, which is provided by
  /// the user.
  ///
  /// The maximum length allowed is 80 characters.
  core.String? displayName;

  AppManualAppInfo({
    this.displayName,
  });

  AppManualAppInfo.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

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
typedef Date = $Date;

/// Specification of a single date range.
///
/// Both dates are inclusive.
class DateRange {
  /// End date of the date range, inclusive.
  ///
  /// Must be greater than or equal to the start date.
  Date? endDate;

  /// Start date of the date range, inclusive.
  ///
  /// Must be less than or equal to the end date.
  Date? startDate;

  DateRange({
    this.endDate,
    this.startDate,
  });

  DateRange.fromJson(core.Map json_)
      : this(
          endDate: json_.containsKey('endDate')
              ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          startDate: json_.containsKey('startDate')
              ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// Request to generate an AdMob Mediation report.
class GenerateMediationReportRequest {
  /// Network report specification.
  MediationReportSpec? reportSpec;

  GenerateMediationReportRequest({
    this.reportSpec,
  });

  GenerateMediationReportRequest.fromJson(core.Map json_)
      : this(
          reportSpec: json_.containsKey('reportSpec')
              ? MediationReportSpec.fromJson(
                  json_['reportSpec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reportSpec != null) 'reportSpec': reportSpec!,
      };
}

class GenerateMediationReportResponseElement {
  /// Additional information about the generated report, such as warnings about
  /// the data.
  ReportFooter? footer;

  /// Report generation settings that describes the report contents, such as the
  /// report date range and localization settings.
  ReportHeader? header;

  /// Actual report data.
  ReportRow? row;

  GenerateMediationReportResponseElement({
    this.footer,
    this.header,
    this.row,
  });

  GenerateMediationReportResponseElement.fromJson(core.Map json_)
      : this(
          footer: json_.containsKey('footer')
              ? ReportFooter.fromJson(
                  json_['footer'] as core.Map<core.String, core.dynamic>)
              : null,
          header: json_.containsKey('header')
              ? ReportHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          row: json_.containsKey('row')
              ? ReportRow.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (footer != null) 'footer': footer!,
        if (header != null) 'header': header!,
        if (row != null) 'row': row!,
      };
}

/// The streaming response for the AdMob Mediation report where the first
/// response contains the report header, then a stream of row responses, and
/// finally a footer as the last response message.
///
/// For example: \[{ "header": { "date_range": { "start_date": {"year": 2018,
/// "month": 9, "day": 1}, "end_date": {"year": 2018, "month": 9, "day": 1} },
/// "localization_settings": { "currency_code": "USD", "language_code": "en-US"
/// } } }, { "row": { "dimension_values": { "DATE": {"value": "20180918"},
/// "APP": { "value": "ca-app-pub-8123415297019784~1001342552", "display_label":
/// "My app name!" } }, "metric_values": { "ESTIMATED_EARNINGS":
/// {"decimal_value": "1324746"} } } }, { "footer": {"matching_row_count": 1}
/// }\]
class GenerateMediationReportResponse
    extends collection.ListBase<GenerateMediationReportResponseElement> {
  final core.List<GenerateMediationReportResponseElement> _inner;

  GenerateMediationReportResponse() : _inner = [];

  GenerateMediationReportResponse.fromJson(core.List json)
      : _inner = json
            .map((value) => GenerateMediationReportResponseElement.fromJson(
                value as core.Map<core.String, core.dynamic>))
            .toList();

  @core.override
  GenerateMediationReportResponseElement operator [](core.int key) =>
      _inner[key];

  @core.override
  void operator []=(
      core.int key, GenerateMediationReportResponseElement value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(GenerateMediationReportResponseElement element) {
    _inner.add(element);
  }
}

/// Request to generate an AdMob Network report.
class GenerateNetworkReportRequest {
  /// Network report specification.
  NetworkReportSpec? reportSpec;

  GenerateNetworkReportRequest({
    this.reportSpec,
  });

  GenerateNetworkReportRequest.fromJson(core.Map json_)
      : this(
          reportSpec: json_.containsKey('reportSpec')
              ? NetworkReportSpec.fromJson(
                  json_['reportSpec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reportSpec != null) 'reportSpec': reportSpec!,
      };
}

class GenerateNetworkReportResponseElement {
  /// Additional information about the generated report, such as warnings about
  /// the data.
  ReportFooter? footer;

  /// Report generation settings that describes the report contents, such as the
  /// report date range and localization settings.
  ReportHeader? header;

  /// Actual report data.
  ReportRow? row;

  GenerateNetworkReportResponseElement({
    this.footer,
    this.header,
    this.row,
  });

  GenerateNetworkReportResponseElement.fromJson(core.Map json_)
      : this(
          footer: json_.containsKey('footer')
              ? ReportFooter.fromJson(
                  json_['footer'] as core.Map<core.String, core.dynamic>)
              : null,
          header: json_.containsKey('header')
              ? ReportHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          row: json_.containsKey('row')
              ? ReportRow.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (footer != null) 'footer': footer!,
        if (header != null) 'header': header!,
        if (row != null) 'row': row!,
      };
}

/// The streaming response for the AdMob Network report where the first response
/// contains the report header, then a stream of row responses, and finally a
/// footer as the last response message.
///
/// For example: \[{ "header": { "dateRange": { "startDate": {"year": 2018,
/// "month": 9, "day": 1}, "endDate": {"year": 2018, "month": 9, "day": 1} },
/// "localizationSettings": { "currencyCode": "USD", "languageCode": "en-US" } }
/// }, { "row": { "dimensionValues": { "DATE": {"value": "20180918"}, "APP": {
/// "value": "ca-app-pub-8123415297019784~1001342552", displayLabel: "My app
/// name!" } }, "metricValues": { "ESTIMATED_EARNINGS": {"microsValue": 6500000}
/// } } }, { "footer": {"matchingRowCount": 1} }\]
class GenerateNetworkReportResponse
    extends collection.ListBase<GenerateNetworkReportResponseElement> {
  final core.List<GenerateNetworkReportResponseElement> _inner;

  GenerateNetworkReportResponse() : _inner = [];

  GenerateNetworkReportResponse.fromJson(core.List json)
      : _inner = json
            .map((value) => GenerateNetworkReportResponseElement.fromJson(
                value as core.Map<core.String, core.dynamic>))
            .toList();

  @core.override
  GenerateNetworkReportResponseElement operator [](core.int key) => _inner[key];

  @core.override
  void operator []=(core.int key, GenerateNetworkReportResponseElement value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(GenerateNetworkReportResponseElement element) {
    _inner.add(element);
  }
}

/// Response for the ad units list request.
class ListAdUnitsResponse {
  /// The resulting ad units for the requested account.
  core.List<AdUnit>? adUnits;

  /// If not empty, indicates that there may be more ad units for the request;
  /// this value should be passed in a new `ListAdUnitsRequest`.
  core.String? nextPageToken;

  ListAdUnitsResponse({
    this.adUnits,
    this.nextPageToken,
  });

  ListAdUnitsResponse.fromJson(core.Map json_)
      : this(
          adUnits: json_.containsKey('adUnits')
              ? (json_['adUnits'] as core.List)
                  .map((value) => AdUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adUnits != null) 'adUnits': adUnits!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for the apps list request.
class ListAppsResponse {
  /// The resulting apps for the requested account.
  core.List<App>? apps;

  /// If not empty, indicates that there may be more apps for the request; this
  /// value should be passed in a new `ListAppsRequest`.
  core.String? nextPageToken;

  ListAppsResponse({
    this.apps,
    this.nextPageToken,
  });

  ListAppsResponse.fromJson(core.Map json_)
      : this(
          apps: json_.containsKey('apps')
              ? (json_['apps'] as core.List)
                  .map((value) => App.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apps != null) 'apps': apps!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for the publisher account list request.
class ListPublisherAccountsResponse {
  /// Publisher that the client credentials can access.
  core.List<PublisherAccount>? account;

  /// If not empty, indicates that there might be more accounts for the request;
  /// you must pass this value in a new `ListPublisherAccountsRequest`.
  core.String? nextPageToken;

  ListPublisherAccountsResponse({
    this.account,
    this.nextPageToken,
  });

  ListPublisherAccountsResponse.fromJson(core.Map json_)
      : this(
          account: json_.containsKey('account')
              ? (json_['account'] as core.List)
                  .map((value) => PublisherAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Localization settings for reports, such as currency and language.
///
/// It affects how metrics are calculated.
class LocalizationSettings {
  /// Currency code of the earning related metrics, which is the 3-letter code
  /// defined in ISO 4217.
  ///
  /// The daily average rate is used for the currency conversion. Defaults to
  /// the account currency code if unspecified.
  core.String? currencyCode;

  /// Language used for any localized text, such as some dimension value display
  /// labels.
  ///
  /// The language tag defined in the IETF BCP47. Defaults to 'en-US' if
  /// unspecified.
  core.String? languageCode;

  LocalizationSettings({
    this.currencyCode,
    this.languageCode,
  });

  LocalizationSettings.fromJson(core.Map json_)
      : this(
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// The specification for generating an AdMob Mediation report.
///
/// For example, the specification to get observed ECPM sliced by ad source and
/// app for the 'US' and 'CN' countries can look like the following example: {
/// "date_range": { "start_date": {"year": 2021, "month": 9, "day": 1},
/// "end_date": {"year": 2021, "month": 9, "day": 30} }, "dimensions":
/// \["AD_SOURCE", "APP", "COUNTRY"\], "metrics": \["OBSERVED_ECPM"\],
/// "dimension_filters": \[ { "dimension": "COUNTRY", "matches_any": {"values":
/// \[{"value": "US", "value": "CN"}\]} } \], "sort_conditions": \[
/// {"dimension":"APP", order: "ASCENDING"} \], "localization_settings": {
/// "currency_code": "USD", "language_code": "en-US" } } For a better
/// understanding, you can treat the preceding specification like the following
/// pseudo SQL: SELECT AD_SOURCE, APP, COUNTRY, OBSERVED_ECPM FROM
/// MEDIATION_REPORT WHERE DATE \>= '2021-09-01' AND DATE \<= '2021-09-30' AND
/// COUNTRY IN ('US', 'CN') GROUP BY AD_SOURCE, APP, COUNTRY ORDER BY APP ASC;
class MediationReportSpec {
  /// The date range for which the report is generated.
  DateRange? dateRange;

  /// Describes which report rows to match based on their dimension values.
  core.List<MediationReportSpecDimensionFilter>? dimensionFilters;

  /// List of dimensions of the report.
  ///
  /// The value combination of these dimensions determines the row of the
  /// report. If no dimensions are specified, the report returns a single row of
  /// requested metrics for the entire account.
  core.List<core.String>? dimensions;

  /// Localization settings of the report.
  LocalizationSettings? localizationSettings;

  /// Maximum number of report data rows to return.
  ///
  /// If the value is not set, the API returns as many rows as possible, up to
  /// 100000. Acceptable values are 1-100000, inclusive. Values larger than
  /// 100000 return an error.
  core.int? maxReportRows;

  /// List of metrics of the report.
  ///
  /// A report must specify at least one metric.
  core.List<core.String>? metrics;

  /// Describes the sorting of report rows.
  ///
  /// The order of the condition in the list defines its precedence; the earlier
  /// the condition, the higher its precedence. If no sort conditions are
  /// specified, the row ordering is undefined.
  core.List<MediationReportSpecSortCondition>? sortConditions;

  /// A report time zone.
  ///
  /// Accepts an IANA TZ name values, such as "America/Los_Angeles." If no time
  /// zone is defined, the account default takes effect. Check default value by
  /// the get account action. **Warning:** The "America/Los_Angeles" is the only
  /// supported value at the moment.
  core.String? timeZone;

  MediationReportSpec({
    this.dateRange,
    this.dimensionFilters,
    this.dimensions,
    this.localizationSettings,
    this.maxReportRows,
    this.metrics,
    this.sortConditions,
    this.timeZone,
  });

  MediationReportSpec.fromJson(core.Map json_)
      : this(
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => MediationReportSpecDimensionFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          localizationSettings: json_.containsKey('localizationSettings')
              ? LocalizationSettings.fromJson(json_['localizationSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maxReportRows: json_.containsKey('maxReportRows')
              ? json_['maxReportRows'] as core.int
              : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sortConditions: json_.containsKey('sortConditions')
              ? (json_['sortConditions'] as core.List)
                  .map((value) => MediationReportSpecSortCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (localizationSettings != null)
          'localizationSettings': localizationSettings!,
        if (maxReportRows != null) 'maxReportRows': maxReportRows!,
        if (metrics != null) 'metrics': metrics!,
        if (sortConditions != null) 'sortConditions': sortConditions!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Describes which report rows to match based on their dimension values.
class MediationReportSpecDimensionFilter {
  /// Applies the filter criterion to the specified dimension.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "DATE" : A date in the YYYYMMDD format (for example, "20210701").
  /// Requests can specify at most one time dimension.
  /// - "MONTH" : A month in the YYYYMM format (for example, "202107"). Requests
  /// can specify at most one time dimension.
  /// - "WEEK" : The date of the first day of a week in the YYYYMMDD format (for
  /// example, "20210701"). Requests can specify at most one time dimension.
  /// - "AD_SOURCE" : The \[unique ID of the ad
  /// source\](/admob/api/v1/ad_sources) (for example, "5450213213286189855" and
  /// "AdMob Network" as label value).
  /// - "AD_SOURCE_INSTANCE" : The unique ID of the ad source instance (for
  /// example, "ca-app-pub-1234:asi:5678" and "AdMob (default)" as label value).
  /// - "AD_UNIT" : The unique ID of the ad unit (for example,
  /// "ca-app-pub-1234/8790"). If AD_UNIT dimension is specified, then APP is
  /// included automatically.
  /// - "APP" : The unique ID of the mobile application (for example,
  /// "ca-app-pub-1234~1234").
  /// - "MEDIATION_GROUP" : The unique ID of the mediation group (for example,
  /// "ca-app-pub-1234:mg:1234" and "AdMob (default)" as label value).
  /// - "COUNTRY" : CLDR country code of the place where the ad views/clicks
  /// occur (for example, "US" or "FR"). This is a geography dimension.
  /// - "FORMAT" : Format of the ad unit (for example, "banner", "native"), an
  /// ad delivery dimension.
  /// - "PLATFORM" : Mobile OS platform of the app (for example, "Android" or
  /// "iOS").
  /// - "MOBILE_OS_VERSION" : Mobile operating system version, e.g. "iOS
  /// 13.5.1". **Warning:** The dimension is incompatible with
  /// \[ESTIMATED_EARNINGS\](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS),
  /// \[OBSERVED_ECPM\](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.
  /// - "GMA_SDK_VERSION" : GMA SDK version, e.g. "iOS 7.62.0". **Warning:** The
  /// dimension is incompatible with
  /// \[ESTIMATED_EARNINGS\](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS),
  /// \[OBSERVED_ECPM\](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.
  /// - "APP_VERSION_NAME" : For Android, the app version name can be found in
  /// versionName in PackageInfo. For iOS, the app version name can be found in
  /// CFBundleShortVersionString. **Warning:** The dimension is incompatible
  /// with \[ESTIMATED_EARNINGS\](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS),
  /// \[OBSERVED_ECPM\](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.
  /// - "SERVING_RESTRICTION" : Restriction mode for ads serving (e.g.
  /// "Non-personalized ads"). **Warning:** The dimension is incompatible with
  /// \[ESTIMATED_EARNINGS\](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS) metric.
  core.String? dimension;

  /// Matches a row if its value for the specified dimension is in one of the
  /// values specified in this condition.
  StringList? matchesAny;

  MediationReportSpecDimensionFilter({
    this.dimension,
    this.matchesAny,
  });

  MediationReportSpecDimensionFilter.fromJson(core.Map json_)
      : this(
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          matchesAny: json_.containsKey('matchesAny')
              ? StringList.fromJson(
                  json_['matchesAny'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (matchesAny != null) 'matchesAny': matchesAny!,
      };
}

/// Sorting direction to be applied on a dimension or a metric.
class MediationReportSpecSortCondition {
  /// Sort by the specified dimension.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "DATE" : A date in the YYYYMMDD format (for example, "20210701").
  /// Requests can specify at most one time dimension.
  /// - "MONTH" : A month in the YYYYMM format (for example, "202107"). Requests
  /// can specify at most one time dimension.
  /// - "WEEK" : The date of the first day of a week in the YYYYMMDD format (for
  /// example, "20210701"). Requests can specify at most one time dimension.
  /// - "AD_SOURCE" : The \[unique ID of the ad
  /// source\](/admob/api/v1/ad_sources) (for example, "5450213213286189855" and
  /// "AdMob Network" as label value).
  /// - "AD_SOURCE_INSTANCE" : The unique ID of the ad source instance (for
  /// example, "ca-app-pub-1234:asi:5678" and "AdMob (default)" as label value).
  /// - "AD_UNIT" : The unique ID of the ad unit (for example,
  /// "ca-app-pub-1234/8790"). If AD_UNIT dimension is specified, then APP is
  /// included automatically.
  /// - "APP" : The unique ID of the mobile application (for example,
  /// "ca-app-pub-1234~1234").
  /// - "MEDIATION_GROUP" : The unique ID of the mediation group (for example,
  /// "ca-app-pub-1234:mg:1234" and "AdMob (default)" as label value).
  /// - "COUNTRY" : CLDR country code of the place where the ad views/clicks
  /// occur (for example, "US" or "FR"). This is a geography dimension.
  /// - "FORMAT" : Format of the ad unit (for example, "banner", "native"), an
  /// ad delivery dimension.
  /// - "PLATFORM" : Mobile OS platform of the app (for example, "Android" or
  /// "iOS").
  /// - "MOBILE_OS_VERSION" : Mobile operating system version, e.g. "iOS
  /// 13.5.1". **Warning:** The dimension is incompatible with
  /// \[ESTIMATED_EARNINGS\](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS),
  /// \[OBSERVED_ECPM\](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.
  /// - "GMA_SDK_VERSION" : GMA SDK version, e.g. "iOS 7.62.0". **Warning:** The
  /// dimension is incompatible with
  /// \[ESTIMATED_EARNINGS\](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS),
  /// \[OBSERVED_ECPM\](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.
  /// - "APP_VERSION_NAME" : For Android, the app version name can be found in
  /// versionName in PackageInfo. For iOS, the app version name can be found in
  /// CFBundleShortVersionString. **Warning:** The dimension is incompatible
  /// with \[ESTIMATED_EARNINGS\](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS),
  /// \[OBSERVED_ECPM\](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.
  /// - "SERVING_RESTRICTION" : Restriction mode for ads serving (e.g.
  /// "Non-personalized ads"). **Warning:** The dimension is incompatible with
  /// \[ESTIMATED_EARNINGS\](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS) metric.
  core.String? dimension;

  /// Sort by the specified metric.
  /// Possible string values are:
  /// - "METRIC_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "AD_REQUESTS" : The number of requests. The value is an integer.
  /// - "CLICKS" : The number of times a user clicks an ad. The value is an
  /// integer.
  /// - "ESTIMATED_EARNINGS" : The estimated earnings of the AdMob publisher.
  /// The currency unit (USD, EUR, or other) of the earning metrics are
  /// determined by the localization setting for currency. The amount is in
  /// micros. For example, $6.50 would be represented as 6500000. Estimated
  /// earnings per mediation group and per ad source instance level is supported
  /// dating back to October 20, 2019. Third-party estimated earnings will show
  /// 0 for dates prior to October 20, 2019.
  /// - "IMPRESSIONS" : The total number of ads shown to users. The value is an
  /// integer.
  /// - "IMPRESSION_CTR" : The ratio of clicks over impressions. The value is a
  /// double precision (approximate) decimal value.
  /// - "MATCHED_REQUESTS" : The number of times ads are returned in response to
  /// a request. The value is an integer.
  /// - "MATCH_RATE" : The ratio of matched ad requests over the total ad
  /// requests. The value is a double precision (approximate) decimal value.
  /// - "OBSERVED_ECPM" : The third-party ad network's estimated average eCPM.
  /// The currency unit (USD, EUR, or other) of the earning metrics are
  /// determined by the localization setting for currency. The amount is in
  /// micros. For example, $2.30 would be represented as 2300000. The estimated
  /// average eCPM per mediation group and per ad source instance level is
  /// supported dating back to October 20, 2019. Third-party estimated average
  /// eCPM will show 0 for dates prior to October 20, 2019.
  core.String? metric;

  /// Sorting order of the dimension or metric.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "ASCENDING" : Sort dimension value or metric value in ascending order.
  /// - "DESCENDING" : Sort dimension value or metric value in descending order.
  core.String? order;

  MediationReportSpecSortCondition({
    this.dimension,
    this.metric,
    this.order,
  });

  MediationReportSpecSortCondition.fromJson(core.Map json_)
      : this(
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          metric: json_.containsKey('metric')
              ? json_['metric'] as core.String
              : null,
          order:
              json_.containsKey('order') ? json_['order'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (metric != null) 'metric': metric!,
        if (order != null) 'order': order!,
      };
}

/// The specification for generating an AdMob Network report.
///
/// For example, the specification to get clicks and estimated earnings for only
/// the 'US' and 'CN' countries can look like the following example: {
/// 'date_range': { 'start_date': {'year': 2021, 'month': 9, 'day': 1},
/// 'end_date': {'year': 2021, 'month': 9, 'day': 30} }, 'dimensions': \['DATE',
/// 'APP', 'COUNTRY'\], 'metrics': \['CLICKS', 'ESTIMATED_EARNINGS'\],
/// 'dimension_filters': \[ { 'dimension': 'COUNTRY', 'matches_any': {'values':
/// \[{'value': 'US', 'value': 'CN'}\]} } \], 'sort_conditions': \[
/// {'dimension':'APP', order: 'ASCENDING'}, {'metric':'CLICKS', order:
/// 'DESCENDING'} \], 'localization_settings': { 'currency_code': 'USD',
/// 'language_code': 'en-US' } } For a better understanding, you can treat the
/// preceding specification like the following pseudo SQL: SELECT DATE, APP,
/// COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE \>=
/// '2021-09-01' AND DATE \<= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY
/// DATE, APP, COUNTRY ORDER BY APP ASC, CLICKS DESC;
class NetworkReportSpec {
  /// The date range for which the report is generated.
  DateRange? dateRange;

  /// Describes which report rows to match based on their dimension values.
  core.List<NetworkReportSpecDimensionFilter>? dimensionFilters;

  /// List of dimensions of the report.
  ///
  /// The value combination of these dimensions determines the row of the
  /// report. If no dimensions are specified, the report returns a single row of
  /// requested metrics for the entire account.
  core.List<core.String>? dimensions;

  /// Localization settings of the report.
  LocalizationSettings? localizationSettings;

  /// Maximum number of report data rows to return.
  ///
  /// If the value is not set, the API returns as many rows as possible, up to
  /// 100000. Acceptable values are 1-100000, inclusive. Values larger than
  /// 100000 return an error.
  core.int? maxReportRows;

  /// List of metrics of the report.
  ///
  /// A report must specify at least one metric.
  core.List<core.String>? metrics;

  /// Describes the sorting of report rows.
  ///
  /// The order of the condition in the list defines its precedence; the earlier
  /// the condition, the higher its precedence. If no sort conditions are
  /// specified, the row ordering is undefined.
  core.List<NetworkReportSpecSortCondition>? sortConditions;

  /// A report time zone.
  ///
  /// Accepts an IANA TZ name values, such as "America/Los_Angeles." If no time
  /// zone is defined, the account default takes effect. Check default value by
  /// the get account action. **Warning:** The "America/Los_Angeles" is the only
  /// supported value at the moment.
  core.String? timeZone;

  NetworkReportSpec({
    this.dateRange,
    this.dimensionFilters,
    this.dimensions,
    this.localizationSettings,
    this.maxReportRows,
    this.metrics,
    this.sortConditions,
    this.timeZone,
  });

  NetworkReportSpec.fromJson(core.Map json_)
      : this(
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => NetworkReportSpecDimensionFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          localizationSettings: json_.containsKey('localizationSettings')
              ? LocalizationSettings.fromJson(json_['localizationSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maxReportRows: json_.containsKey('maxReportRows')
              ? json_['maxReportRows'] as core.int
              : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sortConditions: json_.containsKey('sortConditions')
              ? (json_['sortConditions'] as core.List)
                  .map((value) => NetworkReportSpecSortCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (localizationSettings != null)
          'localizationSettings': localizationSettings!,
        if (maxReportRows != null) 'maxReportRows': maxReportRows!,
        if (metrics != null) 'metrics': metrics!,
        if (sortConditions != null) 'sortConditions': sortConditions!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Describes which report rows to match based on their dimension values.
class NetworkReportSpecDimensionFilter {
  /// Applies the filter criterion to the specified dimension.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "DATE" : A date in the YYYYMMDD format (for example, "20210701").
  /// Requests can specify at most one time dimension.
  /// - "MONTH" : A month in the YYYYMM format (for example, "202107"). Requests
  /// can specify at most one time dimension.
  /// - "WEEK" : The date of the first day of a week in the YYYYMMDD format (for
  /// example, "20210701"). Requests can specify at most one time dimension.
  /// - "AD_UNIT" : The unique ID of the ad unit (for example,
  /// "ca-app-pub-1234/1234"). If AD_UNIT dimension is specified, then APP is
  /// included automatically.
  /// - "APP" : The unique ID of the mobile application (for example,
  /// "ca-app-pub-1234~1234").
  /// - "AD_TYPE" : Type of the ad (for example, "text" or "image"), an ad
  /// delivery dimension. **Warning:** The dimension is incompatible with
  /// \[AD_REQUESTS\](#Metric.ENUM_VALUES.AD_REQUESTS),
  /// \[MATCH_RATE\](#Metric.ENUM_VALUES.MATCH_RATE) and
  /// \[IMPRESSION_RPM\](#Metric.ENUM_VALUES.IMPRESSION_RPM) metrics.
  /// - "COUNTRY" : CLDR country code of the place where the ad views/clicks
  /// occur (for example, "US" or "FR"). This is a geography dimension.
  /// - "FORMAT" : Format of the ad unit (for example, "banner", "native"), an
  /// ad delivery dimension.
  /// - "PLATFORM" : Mobile OS platform of the app (for example, "Android" or
  /// "iOS").
  /// - "MOBILE_OS_VERSION" : Mobile operating system version, e.g. "iOS
  /// 13.5.1".
  /// - "GMA_SDK_VERSION" : GMA SDK version, e.g. "iOS 7.62.0".
  /// - "APP_VERSION_NAME" : For Android, the app version name can be found in
  /// versionName in PackageInfo. For iOS, the app version name can be found in
  /// CFBundleShortVersionString.
  /// - "SERVING_RESTRICTION" : Restriction mode for ads serving (e.g.
  /// "Non-personalized ads").
  core.String? dimension;

  /// Matches a row if its value for the specified dimension is in one of the
  /// values specified in this condition.
  StringList? matchesAny;

  NetworkReportSpecDimensionFilter({
    this.dimension,
    this.matchesAny,
  });

  NetworkReportSpecDimensionFilter.fromJson(core.Map json_)
      : this(
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          matchesAny: json_.containsKey('matchesAny')
              ? StringList.fromJson(
                  json_['matchesAny'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (matchesAny != null) 'matchesAny': matchesAny!,
      };
}

/// Sorting direction to be applied on a dimension or a metric.
class NetworkReportSpecSortCondition {
  /// Sort by the specified dimension.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "DATE" : A date in the YYYYMMDD format (for example, "20210701").
  /// Requests can specify at most one time dimension.
  /// - "MONTH" : A month in the YYYYMM format (for example, "202107"). Requests
  /// can specify at most one time dimension.
  /// - "WEEK" : The date of the first day of a week in the YYYYMMDD format (for
  /// example, "20210701"). Requests can specify at most one time dimension.
  /// - "AD_UNIT" : The unique ID of the ad unit (for example,
  /// "ca-app-pub-1234/1234"). If AD_UNIT dimension is specified, then APP is
  /// included automatically.
  /// - "APP" : The unique ID of the mobile application (for example,
  /// "ca-app-pub-1234~1234").
  /// - "AD_TYPE" : Type of the ad (for example, "text" or "image"), an ad
  /// delivery dimension. **Warning:** The dimension is incompatible with
  /// \[AD_REQUESTS\](#Metric.ENUM_VALUES.AD_REQUESTS),
  /// \[MATCH_RATE\](#Metric.ENUM_VALUES.MATCH_RATE) and
  /// \[IMPRESSION_RPM\](#Metric.ENUM_VALUES.IMPRESSION_RPM) metrics.
  /// - "COUNTRY" : CLDR country code of the place where the ad views/clicks
  /// occur (for example, "US" or "FR"). This is a geography dimension.
  /// - "FORMAT" : Format of the ad unit (for example, "banner", "native"), an
  /// ad delivery dimension.
  /// - "PLATFORM" : Mobile OS platform of the app (for example, "Android" or
  /// "iOS").
  /// - "MOBILE_OS_VERSION" : Mobile operating system version, e.g. "iOS
  /// 13.5.1".
  /// - "GMA_SDK_VERSION" : GMA SDK version, e.g. "iOS 7.62.0".
  /// - "APP_VERSION_NAME" : For Android, the app version name can be found in
  /// versionName in PackageInfo. For iOS, the app version name can be found in
  /// CFBundleShortVersionString.
  /// - "SERVING_RESTRICTION" : Restriction mode for ads serving (e.g.
  /// "Non-personalized ads").
  core.String? dimension;

  /// Sort by the specified metric.
  /// Possible string values are:
  /// - "METRIC_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "AD_REQUESTS" : The number of ad requests. The value is an integer.
  /// **Warning:** The metric is incompatible with
  /// \[AD_TYPE\](#Dimension.ENUM_VALUES.AD_TYPE) dimension.
  /// - "CLICKS" : The number of times a user clicks an ad. The value is an
  /// integer.
  /// - "ESTIMATED_EARNINGS" : The estimated earnings of the AdMob publisher.
  /// The currency unit (USD, EUR, or other) of the earning metrics are
  /// determined by the localization setting for currency. The amount is in
  /// micros. For example, $6.50 would be represented as 6500000.
  /// - "IMPRESSIONS" : The total number of ads shown to users. The value is an
  /// integer.
  /// - "IMPRESSION_CTR" : The ratio of clicks over impressions. The value is a
  /// double precision (approximate) decimal value.
  /// - "IMPRESSION_RPM" : The estimated earnings per thousand ad impressions.
  /// The value is in micros. For example, $1.03 would be represented as
  /// 1030000. Equivalent to eCPM in the AdMob UI. **Warning:** The metric is
  /// incompatible with \[AD_TYPE\](#Dimension.ENUM_VALUES.AD_TYPE) dimension.
  /// - "MATCHED_REQUESTS" : The number of times ads are returned in response to
  /// a request. The value is an integer.
  /// - "MATCH_RATE" : The ratio of matched ad requests over the total ad
  /// requests. The value is a double precision (approximate) decimal value.
  /// **Warning:** The metric is incompatible with
  /// \[AD_TYPE\](#Dimension.ENUM_VALUES.AD_TYPE) dimension.
  /// - "SHOW_RATE" : The ratio of ads that are displayed over ads that are
  /// returned, defined as impressions / matched requests. The value is a double
  /// precision (approximate) decimal value.
  core.String? metric;

  /// Sorting order of the dimension or metric.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "ASCENDING" : Sort dimension value or metric value in ascending order.
  /// - "DESCENDING" : Sort dimension value or metric value in descending order.
  core.String? order;

  NetworkReportSpecSortCondition({
    this.dimension,
    this.metric,
    this.order,
  });

  NetworkReportSpecSortCondition.fromJson(core.Map json_)
      : this(
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          metric: json_.containsKey('metric')
              ? json_['metric'] as core.String
              : null,
          order:
              json_.containsKey('order') ? json_['order'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (metric != null) 'metric': metric!,
        if (order != null) 'order': order!,
      };
}

/// A publisher account contains information relevant to the use of this API,
/// such as the time zone used for the reports.
class PublisherAccount {
  /// Currency code of the earning-related metrics, which is the 3-letter code
  /// defined in ISO 4217.
  ///
  /// The daily average rate is used for the currency conversion.
  core.String? currencyCode;

  /// Resource name of this account.
  ///
  /// Format is accounts/{publisher_id}.
  core.String? name;

  /// The unique ID by which this publisher account can be identified in the API
  /// requests (for example, pub-1234567890).
  core.String? publisherId;

  /// The time zone that is used in reports that are generated for this account.
  ///
  /// The value is a time-zone ID as specified by the CLDR project, for example,
  /// "America/Los_Angeles".
  core.String? reportingTimeZone;

  PublisherAccount({
    this.currencyCode,
    this.name,
    this.publisherId,
    this.reportingTimeZone,
  });

  PublisherAccount.fromJson(core.Map json_)
      : this(
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          publisherId: json_.containsKey('publisherId')
              ? json_['publisherId'] as core.String
              : null,
          reportingTimeZone: json_.containsKey('reportingTimeZone')
              ? json_['reportingTimeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (name != null) 'name': name!,
        if (publisherId != null) 'publisherId': publisherId!,
        if (reportingTimeZone != null) 'reportingTimeZone': reportingTimeZone!,
      };
}

/// Groups data available after report generation, for example, warnings and row
/// counts.
///
/// Always sent as the last message in the stream response.
class ReportFooter {
  /// Total number of rows that matched the request.
  ///
  /// Warning: This count does NOT always match the number of rows in the
  /// response. Do not make that assumption when processing the response.
  core.String? matchingRowCount;

  /// Warnings associated with generation of the report.
  core.List<ReportWarning>? warnings;

  ReportFooter({
    this.matchingRowCount,
    this.warnings,
  });

  ReportFooter.fromJson(core.Map json_)
      : this(
          matchingRowCount: json_.containsKey('matchingRowCount')
              ? json_['matchingRowCount'] as core.String
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => ReportWarning.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchingRowCount != null) 'matchingRowCount': matchingRowCount!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// Groups data helps to treat the generated report.
///
/// Always sent as a first message in the stream response.
class ReportHeader {
  /// The date range for which the report is generated.
  ///
  /// This is identical to the range specified in the report request.
  DateRange? dateRange;

  /// Localization settings of the report.
  ///
  /// This is identical to the settings in the report request.
  LocalizationSettings? localizationSettings;

  /// The report time zone.
  ///
  /// The value is a time-zone ID as specified by the CLDR project, for example,
  /// "America/Los_Angeles".
  core.String? reportingTimeZone;

  ReportHeader({
    this.dateRange,
    this.localizationSettings,
    this.reportingTimeZone,
  });

  ReportHeader.fromJson(core.Map json_)
      : this(
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          localizationSettings: json_.containsKey('localizationSettings')
              ? LocalizationSettings.fromJson(json_['localizationSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reportingTimeZone: json_.containsKey('reportingTimeZone')
              ? json_['reportingTimeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!,
        if (localizationSettings != null)
          'localizationSettings': localizationSettings!,
        if (reportingTimeZone != null) 'reportingTimeZone': reportingTimeZone!,
      };
}

/// A row of the returning report.
class ReportRow {
  /// Map of dimension values in a row, with keys as enum name of the
  /// dimensions.
  core.Map<core.String, ReportRowDimensionValue>? dimensionValues;

  /// Map of metric values in a row, with keys as enum name of the metrics.
  ///
  /// If a metric being requested has no value returned, the map will not
  /// include it.
  core.Map<core.String, ReportRowMetricValue>? metricValues;

  ReportRow({
    this.dimensionValues,
    this.metricValues,
  });

  ReportRow.fromJson(core.Map json_)
      : this(
          dimensionValues: json_.containsKey('dimensionValues')
              ? (json_['dimensionValues']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    ReportRowDimensionValue.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          metricValues: json_.containsKey('metricValues')
              ? (json_['metricValues'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    ReportRowMetricValue.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionValues != null) 'dimensionValues': dimensionValues!,
        if (metricValues != null) 'metricValues': metricValues!,
      };
}

/// Representation of a dimension value.
class ReportRowDimensionValue {
  /// The localized string representation of the value.
  ///
  /// If unspecified, the display label should be derived from the value.
  core.String? displayLabel;

  /// Dimension value in the format specified in the report's spec Dimension
  /// enum.
  core.String? value;

  ReportRowDimensionValue({
    this.displayLabel,
    this.value,
  });

  ReportRowDimensionValue.fromJson(core.Map json_)
      : this(
          displayLabel: json_.containsKey('displayLabel')
              ? json_['displayLabel'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayLabel != null) 'displayLabel': displayLabel!,
        if (value != null) 'value': value!,
      };
}

/// Representation of a metric value.
class ReportRowMetricValue {
  /// Double precision (approximate) decimal values.
  ///
  /// Rates are from 0 to 1.
  core.double? doubleValue;

  /// Metric integer value.
  core.String? integerValue;

  /// Amount in micros.
  ///
  /// One million is equivalent to one unit. Currency value is in the unit (USD,
  /// EUR or other) specified by the request. For example, $6.50 whould be
  /// represented as 6500000 micros.
  core.String? microsValue;

  ReportRowMetricValue({
    this.doubleValue,
    this.integerValue,
    this.microsValue,
  });

  ReportRowMetricValue.fromJson(core.Map json_)
      : this(
          doubleValue: json_.containsKey('doubleValue')
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          integerValue: json_.containsKey('integerValue')
              ? json_['integerValue'] as core.String
              : null,
          microsValue: json_.containsKey('microsValue')
              ? json_['microsValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (microsValue != null) 'microsValue': microsValue!,
      };
}

/// Warnings associated with generation of the report.
class ReportWarning {
  /// Describes the details of the warning message, in English.
  core.String? description;

  /// Type of the warning.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "DATA_BEFORE_ACCOUNT_TIMEZONE_CHANGE" : Some data in this report is
  /// aggregated based on a time zone different from the requested time zone.
  /// This could happen if a local time-zone report has the start time before
  /// the last time this time zone changed. The description field will contain
  /// the date of the last time zone change.
  /// - "DATA_DELAYED" : There is an unusual delay in processing the source data
  /// for the requested date range. The report results might be less up to date
  /// than usual. AdMob is aware of the issue and is actively working to resolve
  /// it.
  /// - "OTHER" : Warnings that are exposed without a specific type. Useful when
  /// new warning types are added but the API is not changed yet.
  /// - "REPORT_CURRENCY_NOT_ACCOUNT_CURRENCY" : The currency being requested is
  /// not the account currency. The earning metrics will be based on the
  /// requested currency, and thus not a good estimation of the final payment
  /// anymore, due to the currency rate fluctuation.
  core.String? type;

  ReportWarning({
    this.description,
    this.type,
  });

  ReportWarning.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (type != null) 'type': type!,
      };
}

/// List of string values.
class StringList {
  /// The string values.
  core.List<core.String>? values;

  StringList({
    this.values,
  });

  StringList.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}
