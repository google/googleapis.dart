// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
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

  AdMobApi(
    http.Client client, {
    core.String rootUrl = 'https://admob.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    return GenerateMediationReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    return GenerateNetworkReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Describes an AdMob ad unit.
class AdUnit {
  /// AdFormat of the ad unit.
  ///
  /// Possible values are as follows: "APP_OPEN" - App Open ad format. "BANNER"
  /// - Banner ad format. "BANNER_INTERSTITIAL" - Legacy format that can be used
  /// as either banner or interstitial. This format can no longer be created but
  /// can be targeted by mediation groups. "INTERSTITIAL" - A full screen ad.
  /// Supported ad types are "RICH_MEDIA" and "VIDEO". "NATIVE" - Native ad
  /// format. "REWARDED" - An ad that, once viewed, gets a callback verifying
  /// the view so that a reward can be given to the user. Supported ad types are
  /// "RICH_MEDIA" (interactive) and video where video can not be excluded.
  /// "REWARDED_INTERSTITIAL" - Rewarded Interstitial ad format. Only supports
  /// video ad type. See https://support.google.com/admob/answer/9884467.
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
        adFormat: json_['adFormat'] as core.String?,
        adTypes:
            (json_['adTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        adUnitId: json_['adUnitId'] as core.String?,
        appId: json_['appId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
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
  /// The approval state for the app.
  ///
  /// The field is read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_APPROVAL_STATE_UNSPECIFIED" : Default value for an unset field. Do
  /// not use.
  /// - "ACTION_REQUIRED" : The app requires additional user action to be
  /// approved. Please refer to https://support.google.com/admob/answer/10564477
  /// for details and next steps.
  /// - "IN_REVIEW" : The app is pending review.
  /// - "APPROVED" : The app is approved and can serve ads.
  core.String? appApprovalState;

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
    this.appApprovalState,
    this.appId,
    this.linkedAppInfo,
    this.manualAppInfo,
    this.name,
    this.platform,
  });

  App.fromJson(core.Map json_)
    : this(
        appApprovalState: json_['appApprovalState'] as core.String?,
        appId: json_['appId'] as core.String?,
        linkedAppInfo:
            json_.containsKey('linkedAppInfo')
                ? AppLinkedAppInfo.fromJson(
                  json_['linkedAppInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        manualAppInfo:
            json_.containsKey('manualAppInfo')
                ? AppManualAppInfo.fromJson(
                  json_['manualAppInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        platform: json_['platform'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appApprovalState != null) 'appApprovalState': appApprovalState!,
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

  AppLinkedAppInfo({this.appStoreId, this.displayName});

  AppLinkedAppInfo.fromJson(core.Map json_)
    : this(
        appStoreId: json_['appStoreId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appStoreId != null) 'appStoreId': appStoreId!,
    if (displayName != null) 'displayName': displayName!,
  };
}

/// Information provided for manual apps which are not linked to an application
/// store (Example: Google Play, App Store).
typedef AppManualAppInfo = $AppManualAppInfo;

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

  DateRange({this.endDate, this.startDate});

  DateRange.fromJson(core.Map json_)
    : this(
        endDate:
            json_.containsKey('endDate')
                ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startDate:
            json_.containsKey('startDate')
                ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>,
                )
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

  GenerateMediationReportRequest({this.reportSpec});

  GenerateMediationReportRequest.fromJson(core.Map json_)
    : this(
        reportSpec:
            json_.containsKey('reportSpec')
                ? MediationReportSpec.fromJson(
                  json_['reportSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reportSpec != null) 'reportSpec': reportSpec!,
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
class GenerateMediationReportResponse {
  /// Additional information about the generated report, such as warnings about
  /// the data.
  ReportFooter? footer;

  /// Report generation settings that describes the report contents, such as the
  /// report date range and localization settings.
  ReportHeader? header;

  /// Actual report data.
  ReportRow? row;

  GenerateMediationReportResponse({this.footer, this.header, this.row});

  GenerateMediationReportResponse.fromJson(core.Map json_)
    : this(
        footer:
            json_.containsKey('footer')
                ? ReportFooter.fromJson(
                  json_['footer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        header:
            json_.containsKey('header')
                ? ReportHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        row:
            json_.containsKey('row')
                ? ReportRow.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (footer != null) 'footer': footer!,
    if (header != null) 'header': header!,
    if (row != null) 'row': row!,
  };
}

/// Request to generate an AdMob Network report.
class GenerateNetworkReportRequest {
  /// Network report specification.
  NetworkReportSpec? reportSpec;

  GenerateNetworkReportRequest({this.reportSpec});

  GenerateNetworkReportRequest.fromJson(core.Map json_)
    : this(
        reportSpec:
            json_.containsKey('reportSpec')
                ? NetworkReportSpec.fromJson(
                  json_['reportSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reportSpec != null) 'reportSpec': reportSpec!,
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
class GenerateNetworkReportResponse {
  /// Additional information about the generated report, such as warnings about
  /// the data.
  ReportFooter? footer;

  /// Report generation settings that describes the report contents, such as the
  /// report date range and localization settings.
  ReportHeader? header;

  /// Actual report data.
  ReportRow? row;

  GenerateNetworkReportResponse({this.footer, this.header, this.row});

  GenerateNetworkReportResponse.fromJson(core.Map json_)
    : this(
        footer:
            json_.containsKey('footer')
                ? ReportFooter.fromJson(
                  json_['footer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        header:
            json_.containsKey('header')
                ? ReportHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        row:
            json_.containsKey('row')
                ? ReportRow.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (footer != null) 'footer': footer!,
    if (header != null) 'header': header!,
    if (row != null) 'row': row!,
  };
}

/// Response for the ad units list request.
class ListAdUnitsResponse {
  /// The resulting ad units for the requested account.
  core.List<AdUnit>? adUnits;

  /// If not empty, indicates that there may be more ad units for the request;
  /// this value should be passed in a new `ListAdUnitsRequest`.
  core.String? nextPageToken;

  ListAdUnitsResponse({this.adUnits, this.nextPageToken});

  ListAdUnitsResponse.fromJson(core.Map json_)
    : this(
        adUnits:
            (json_['adUnits'] as core.List?)
                ?.map(
                  (value) => AdUnit.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  ListAppsResponse({this.apps, this.nextPageToken});

  ListAppsResponse.fromJson(core.Map json_)
    : this(
        apps:
            (json_['apps'] as core.List?)
                ?.map(
                  (value) => App.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  ListPublisherAccountsResponse({this.account, this.nextPageToken});

  ListPublisherAccountsResponse.fromJson(core.Map json_)
    : this(
        account:
            (json_['account'] as core.List?)
                ?.map(
                  (value) => PublisherAccount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (account != null) 'account': account!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Localization settings for reports, such as currency and language.
///
/// It affects how metrics are calculated.
typedef LocalizationSettings = $LocalizationSettings;

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
        dateRange:
            json_.containsKey('dateRange')
                ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensionFilters:
            (json_['dimensionFilters'] as core.List?)
                ?.map(
                  (value) => MediationReportSpecDimensionFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        localizationSettings:
            json_.containsKey('localizationSettings')
                ? LocalizationSettings.fromJson(
                  json_['localizationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxReportRows: json_['maxReportRows'] as core.int?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sortConditions:
            (json_['sortConditions'] as core.List?)
                ?.map(
                  (value) => MediationReportSpecSortCondition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        timeZone: json_['timeZone'] as core.String?,
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

  MediationReportSpecDimensionFilter({this.dimension, this.matchesAny});

  MediationReportSpecDimensionFilter.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        matchesAny:
            json_.containsKey('matchesAny')
                ? StringList.fromJson(
                  json_['matchesAny'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimension != null) 'dimension': dimension!,
    if (matchesAny != null) 'matchesAny': matchesAny!,
  };
}

/// Sorting direction to be applied on a dimension or a metric.
typedef MediationReportSpecSortCondition = $MediationReportSpecSortCondition;

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
        dateRange:
            json_.containsKey('dateRange')
                ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensionFilters:
            (json_['dimensionFilters'] as core.List?)
                ?.map(
                  (value) => NetworkReportSpecDimensionFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        localizationSettings:
            json_.containsKey('localizationSettings')
                ? LocalizationSettings.fromJson(
                  json_['localizationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxReportRows: json_['maxReportRows'] as core.int?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sortConditions:
            (json_['sortConditions'] as core.List?)
                ?.map(
                  (value) => NetworkReportSpecSortCondition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        timeZone: json_['timeZone'] as core.String?,
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

  NetworkReportSpecDimensionFilter({this.dimension, this.matchesAny});

  NetworkReportSpecDimensionFilter.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        matchesAny:
            json_.containsKey('matchesAny')
                ? StringList.fromJson(
                  json_['matchesAny'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimension != null) 'dimension': dimension!,
    if (matchesAny != null) 'matchesAny': matchesAny!,
  };
}

/// Sorting direction to be applied on a dimension or a metric.
typedef NetworkReportSpecSortCondition = $NetworkReportSpecSortCondition;

/// A publisher account contains information relevant to the use of this API,
/// such as the time zone used for the reports.
typedef PublisherAccount = $PublisherAccount;

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

  ReportFooter({this.matchingRowCount, this.warnings});

  ReportFooter.fromJson(core.Map json_)
    : this(
        matchingRowCount: json_['matchingRowCount'] as core.String?,
        warnings:
            (json_['warnings'] as core.List?)
                ?.map(
                  (value) => ReportWarning.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
        dateRange:
            json_.containsKey('dateRange')
                ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        localizationSettings:
            json_.containsKey('localizationSettings')
                ? LocalizationSettings.fromJson(
                  json_['localizationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportingTimeZone: json_['reportingTimeZone'] as core.String?,
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

  ReportRow({this.dimensionValues, this.metricValues});

  ReportRow.fromJson(core.Map json_)
    : this(
        dimensionValues: (json_['dimensionValues']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ReportRowDimensionValue.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        metricValues: (json_['metricValues']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ReportRowMetricValue.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensionValues != null) 'dimensionValues': dimensionValues!,
    if (metricValues != null) 'metricValues': metricValues!,
  };
}

/// Representation of a dimension value.
typedef ReportRowDimensionValue = $ReportRowDimensionValue;

/// Representation of a metric value.
typedef ReportRowMetricValue = $ReportRowMetricValue;

/// Warnings associated with generation of the report.
typedef ReportWarning = $ReportWarning;

/// List of string values.
typedef StringList = $StringList01;
