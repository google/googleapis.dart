// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Agencies and Brands API - v1
///
/// Agencies and brands API is an externally available HTTP API for ad agencies
/// and brands to programmatically manage their deals and spending with Google
/// Ad Manager publishers.
///
/// For more information, see
/// <https://developers.google.com/authorized-buyers/agencies-and-brands/get-started/start>
///
/// Create an instance of [AgenciesAndBrandsApi] to access these resources:
///
/// - [AgenciesResource]
///   - [AgenciesReportsResource]
///     - [AgenciesReportsOperationsResource]
///     - [AgenciesReportsResultsResource]
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

/// Agencies and brands API is an externally available HTTP API for ad agencies
/// and brands to programmatically manage their deals and spending with Google
/// Ad Manager publishers.
class AgenciesAndBrandsApi {
  /// View, create, edit, and delete data entities in your Agency account.
  static const agenciesAndBrandsScope =
      'https://www.googleapis.com/auth/agencies-and-brands';

  final commons.ApiRequester _requester;

  AgenciesResource get agencies => AgenciesResource(_requester);

  AgenciesAndBrandsApi(
    http.Client client, {
    core.String rootUrl = 'https://agenciesandbrands.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AgenciesResource {
  final commons.ApiRequester _requester;

  AgenciesReportsResource get reports => AgenciesReportsResource(_requester);

  AgenciesResource(commons.ApiRequester client) : _requester = client;
}

class AgenciesReportsResource {
  final commons.ApiRequester _requester;

  AgenciesReportsOperationsResource get operations =>
      AgenciesReportsOperationsResource(_requester);
  AgenciesReportsResultsResource get results =>
      AgenciesReportsResultsResource(_requester);

  AgenciesReportsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a `Report` object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this `Report` will be
  /// created. Format: `agencies/{account_id}`
  /// Value must have pattern `^agencies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> create(
    Report request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `Report` object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the report to delete. Format:
  /// `agencies/{account_id}/reports/{report_id}`
  /// Value must have pattern `^agencies/\[^/\]+/reports/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a `Report` object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the report. Format:
  /// `agencies/{account_id}/reports/{report_id}`
  /// Value must have pattern `^agencies/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `Report` objects.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of reports.
  /// Format: `agencies/{account_id}`
  /// Value must have pattern `^agencies/\[^/\]+$`.
  ///
  /// [filter] - Optional. Expression to filter the response. See syntax details
  /// at https://developers.google.com/ad-manager/api/beta/filters
  ///
  /// [orderBy] - Optional. Expression to specify sorting order. See syntax
  /// details at https://developers.google.com/ad-manager/api/beta/filters#order
  ///
  /// [pageSize] - Optional. The maximum number of `Reports` to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// `Reports` will be returned. The maximum value is 1000; values greater than
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListReports` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListReports` must match the
  /// call that provided the page token.
  ///
  /// [skip] - Optional. Number of individual resources to skip while
  /// paginating.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReportsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.int? skip,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'skip': ?skip == null ? null : ['${skip}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a `Report` object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the report. Report resource name
  /// have the form: `agencies/{account_id}/reports/{report_id}`
  /// Value must have pattern `^agencies/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> patch(
    Report request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Initiates the execution of an existing report asynchronously.
  ///
  /// Users can get the report by polling this operation using
  /// `OperationsService.GetOperation`. Poll every 5 seconds initially, with an
  /// exponential backoff. Once a report is complete, the operation will contain
  /// a `RunReportResponse` in its response field containing a report_result
  /// that can be passed to the `FetchReportResultRows` method to retrieve the
  /// report data.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The report to run. Format:
  /// `agencies/{account_id}/reports/{report_id}`
  /// Value must have pattern `^agencies/\[^/\]+/reports/\[^/\]+$`.
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
  async.Future<Operation> run(
    RunReportRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AgenciesReportsOperationsResource {
  final commons.ApiRequester _requester;

  AgenciesReportsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^agencies/\[^/\]+/reports/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AgenciesReportsResultsResource {
  final commons.ApiRequester _requester;

  AgenciesReportsResultsResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns the result rows from a completed report.
  ///
  /// The caller must have previously called `RunReport` and waited for that
  /// operation to complete. The rows will be returned according to the order
  /// specified by the `sorts` member of the report definition.
  ///
  /// Request parameters:
  ///
  /// [name] - The report result being fetched. Format:
  /// `agencies/{account_id}/reports/{report_id}/results/{report_result_id}`
  /// Value must have pattern
  /// `^agencies/\[^/\]+/reports/\[^/\]+/results/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of rows to return. The service
  /// may return fewer than this value. If unspecified, at most 1,000 rows will
  /// be returned. The maximum value is 10,000; values greater than 10,000 will
  /// be reduced to 10,000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `FetchReportResultRows` call. Provide this to retrieve the second and
  /// subsequent batches of rows.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchReportResultRowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchReportResultRowsResponse> fetchRows(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchRows';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchReportResultRowsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
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

/// A date range for a report.
class DateRange {
  /// A fixed date range.
  FixedDateRange? fixed;

  /// A relative date range.
  /// Possible string values are:
  /// - "RELATIVE_DATE_RANGE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TODAY" : The date the report is run.
  /// - "YESTERDAY" : The date a day before the date that the report is run.
  /// - "THIS_WEEK_TO_DATE" : From the beginning of the calendar week in which
  /// the up to and including the day the report is run.
  /// - "THIS_WEEK_TO_YESTERDAY" : From the beginning of the calendar week in
  /// which the report is run, up to and including the day before the report is
  /// run.
  /// - "THIS_MONTH_TO_DATE" : From the beginning of the calendar month in which
  /// the report is run, to up to and including the day the report is run.
  /// - "THIS_MONTH_TO_YESTERDAY" : From the beginning of the calendar month in
  /// which the report is run, up to and including the day before the report is
  /// run.
  /// - "THIS_QUARTER_TO_DATE" : From the beginning of the calendar quarter in
  /// which the report is run, up to and including the day the report is run.
  /// - "THIS_QUARTER_TO_YESTERDAY" : From the beginning of the calendar quarter
  /// in which the report is run, up to and including the day before the report
  /// is run.
  /// - "THIS_YEAR_TO_DATE" : From the beginning of the calendar year in which
  /// the report is run, to up to and including the day the report is run.
  /// - "THIS_YEAR_TO_YESTERDAY" : From the beginning of the calendar year in
  /// which the report is run, to up to and including the day before the report
  /// is run.
  /// - "LAST_WEEK" : The entire previous calendar week, Monday to Sunday
  /// (inclusive), preceding the calendar week the report is run.
  /// - "LAST_WEEK_STARTING_SUNDAY" : The entire previous calendar week, Sunday
  /// to Saturday (inclusive), preceding the calendar week the report is run.
  /// - "LAST_MONTH" : The entire previous calendar month preceding the calendar
  /// month the report is run.
  /// - "LAST_QUARTER" : The entire previous calendar quarter preceding the
  /// calendar quarter the report is run.
  /// - "LAST_YEAR" : The entire previous calendar year preceding the calendar
  /// year the report is run.
  /// - "LAST_7_DAYS" : The 7 days preceding the day the report is run.
  /// - "LAST_30_DAYS" : The 30 days preceding the day the report is run.
  /// - "LAST_60_DAYS" : The 60 days preceding the day the report is run.
  /// - "LAST_90_DAYS" : The 90 days preceding the day the report is run.
  /// - "LAST_93_DAYS" : The 93 days preceding the day the report is run.
  /// - "LAST_180_DAYS" : The 180 days preceding the day the report is run.
  /// - "LAST_360_DAYS" : The 360 days preceding the day the report is run.
  /// - "LAST_365_DAYS" : The 365 days preceding the day the report is run.
  /// - "LAST_3_MONTHS" : The entire previous 3 calendar months preceding the
  /// calendar month the report is run.
  /// - "LAST_6_MONTHS" : The entire previous 6 calendar months preceding the
  /// calendar month the report is run.
  /// - "LAST_12_MONTHS" : The entire previous 12 calendar months preceding the
  /// calendar month the report is run.
  /// - "ALL_AVAILABLE" : From 3 years before the report is run, to the day
  /// before the report is run, inclusive.
  core.String? relative;

  DateRange({this.fixed, this.relative});

  DateRange.fromJson(core.Map json_)
    : this(
        fixed: json_.containsKey('fixed')
            ? FixedDateRange.fromJson(
                json_['fixed'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        relative: json_['relative'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fixed = this.fixed;
    final relative = this.relative;
    return {'fixed': ?fixed, 'relative': ?relative};
  }
}

/// A list of double values.
typedef DoubleList = $DoubleList;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The response message for the fetch report result rows endpoint.
class FetchReportResultRowsResponse {
  /// The computed fixed date ranges this report includes.
  ///
  /// Only returned with the first page of results (when page_token is not
  /// included in the request).
  core.List<FixedDateRange>? dateRanges;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Up to `page_size` rows of report data.
  core.List<Row>? rows;

  /// The time at which the report was scheduled to run.
  ///
  /// For non-scheduled reports, this is the time at which the report was
  /// requested to be run.
  core.String? runTime;

  /// The total number of rows available from this report.
  ///
  /// Useful for pagination. Only returned with the first page of results (when
  /// page_token is not included in the request).
  core.int? totalRowCount;

  FetchReportResultRowsResponse({
    this.dateRanges,
    this.nextPageToken,
    this.rows,
    this.runTime,
    this.totalRowCount,
  });

  FetchReportResultRowsResponse.fromJson(core.Map json_)
    : this(
        dateRanges: (json_['dateRanges'] as core.List?)
            ?.map(
              (value) => FixedDateRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) =>
                  Row.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        runTime: json_['runTime'] as core.String?,
        totalRowCount: json_['totalRowCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateRanges = this.dateRanges;
    final nextPageToken = this.nextPageToken;
    final rows = this.rows;
    final runTime = this.runTime;
    final totalRowCount = this.totalRowCount;
    return {
      'dateRanges': ?dateRanges,
      'nextPageToken': ?nextPageToken,
      'rows': ?rows,
      'runTime': ?runTime,
      'totalRowCount': ?totalRowCount,
    };
  }
}

/// A dimension or a metric in a report.
class Field {
  /// The dimension this field represents.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : Default value. This value is unused.
  /// - "ADVERTISER_DOMAIN" : The domain of the advertiser.
  /// - "AGENCY_ACCOUNT_ID" : Agency account ID.
  /// - "AGENCY_ACCOUNT_NAME" : Agency account name.
  /// - "BID_FILTERING_REASON" : Reason that a Real-time Bidding bid was
  /// filtered from the auction.
  /// - "BID_FILTERING_REASON_NAME" : The short description of the reason that a
  /// Real-time Bidding bid was filtered from the auction.
  /// - "BUYER_SDK" : A boolean indicating whether the impression was rendered
  /// by a buyer SDK. If set to true, the impression was rendered by a buyer
  /// SDK.
  /// - "CAMPAIGN_ID" : The ID of the agency campaign.
  /// - "CAMPAIGN_NAME" : The display name of the agency campaign.
  /// - "COUNTRY" : Display name of a country.
  /// - "CREATIVE_FORMAT" : Creative format, "Display" vs. "Video".
  /// - "CREATIVE_ID" : Creative ID.
  /// - "CREATIVE_POLICIES" : Applied creative policies.
  /// - "CREATIVE_POLICIES_NAME" : The localized display name of applied
  /// creative policies.
  /// - "CREATIVE_SIZE" : Creative size.
  /// - "CURATION_DATA_SEGMENT_ID" : The ID of the data segment created by a
  /// curator.
  /// - "CURATION_PARTNER_NAME" : The display name of the curation partner.
  /// - "CURATOR_FEE_TYPE" : The type of curation service (e.g. packaging or
  /// data segment).
  /// - "DATE" : Date.
  /// - "DEAL_ID" : Deal ID.
  /// - "DEAL_NAME" : Deal name.
  /// - "DETECTED_ADVERTISER_NAME" : Display name of the detected advertiser.
  /// - "DSP_NAME" : Display name of the DSP.
  /// - "DSP_SEAT_ID" : DSP Seat ID.
  /// - "ENVIRONMENT" : The user device and container environment where the
  /// impression originates. Supported values are "app" and "web".
  /// - "ENVIRONMENT_NAME" : The localized display name of the user device and
  /// container environment where the impression originates. Supported values
  /// are "app" and "web".
  /// - "GMA_SDK" : A boolean indicating whether the impression was rendered by
  /// the Google Mobile Ads SDK. If set to true, the impression was rendered by
  /// the Google Mobile Ads SDK.
  /// - "HOUR" : Hour.
  /// - "MOBILE_APP_ID" : Mobile App ID.
  /// - "MOBILE_APP_NAME" : Mobile App Name.
  /// - "MOBILE_OS" : Mobile operating system.
  /// - "MONTH" : Month.
  /// - "PACKAGE_FEE_VISIBILITY" : The visibility of the package fee (e.g.
  /// disclosed or non-disclosed).
  /// - "PLACEMENT_ID" : Placement ID.
  /// - "PLATFORM" : Platform, e.g. "desktop" vs. "mobile".
  /// - "PUBLISHER_DOMAIN" : Publisher domain.
  /// - "PUBLISHER_ID" : Publisher identifier.
  /// - "PUBLISHER_NAME" : Publisher name.
  /// - "PUBLISHER_PROTECTIONS" : Whether publisher protections are applied.
  /// - "PUBLISHER_PROTECTIONS_NAME" : The localized display name indicating
  /// whether publisher protections are applied.
  /// - "SELLER_AUTHORIZATION" : Seller authorization.
  /// - "SELLER_AUTHORIZATION_NAME" : The localized display name of seller
  /// authorization.
  /// - "SUPPLY_PATH_TYPE" : The supply path type of the deal for Agency Direct.
  /// - "SUPPLY_PATH_TYPE_NAME" : The localized display name of the supply path
  /// type of the deal for Agency Direct.
  /// - "TRANSACTION_TYPE" : The transaction type of the deal.
  /// - "VAST_ERROR_CODE" : VAST error code.
  /// - "WEEK" : Week.
  core.String? dimension;

  /// The metric this field represents.
  /// Possible string values are:
  /// - "METRIC_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE_VIEW_MEASURABILITY_RATE" : Active View measurability rate.
  /// - "ACTIVE_VIEW_MEASURABLE" : Active View measurable.
  /// - "ACTIVE_VIEW_VIEWABILITY_RATE" : Active view viewability rate.
  /// - "ACTIVE_VIEW_VIEWABLE" : Active View viewable imps.
  /// - "AUCTIONS_WON" : Auctions won.
  /// - "BIDS" : Bids.
  /// - "BIDS_IN_AUCTION" : Bids in auction.
  /// - "CLICKS" : Clicks.
  /// - "CPC" : CPC.
  /// - "CPM" : CPM.
  /// - "CURATION_PARTNER_FEE" : Curator fee. This will be redacted to 0.00 if
  /// the package's visibility is set to non-disclosed. Use the
  /// PACKAGE_FEE_VISIBILITY dimension to check if the package's fee is
  /// disclosed.
  /// - "DISCOUNT_AMOUNT" : Discount amount in media planner currency.
  /// - "EFFECTIVE_DISCOUNT_RATE" : Discount rate in media planner currency.
  /// - "ENGAGED_VIEWS" : Engaged views.
  /// - "IMPRESSIONS" : Impressions.
  /// - "PRE_DISCOUNT_SPEND" : Discount spend in media planner currency.
  /// - "PRE_DISCOUNT_SPEND_WITHOUT_CURATION_PARTNER_FEE" : Gross media cost in
  /// media planner currency.
  /// - "REACHED_QUERIES" : Queries that are reached in the mediation chain.
  /// - "SPEND" : Spend in reporting currency specified in the request. Defaults
  /// to USD.
  /// - "SPEND_WITHOUT_CURATION_PARTNER_FEE" : Net media cost in media planner
  /// currency.
  /// - "VAST_ERROR_COUNT" : Number of video impressions failed to render due to
  /// VAST errors.
  /// - "VIDEO_COMPLETE" : Number of video impressions played to completion.
  /// - "VIDEO_FIRST_QUARTILE" : Number of video impressions played to the first
  /// quartile.
  /// - "VIDEO_MIDPOINT" : Number of video impressions played to the midpoint.
  /// - "VIDEO_START" : Number of video impressions played.
  /// - "VIDEO_THIRD_QUARTILE" : Number of video impressions played to the third
  /// quartile.
  /// - "VIDEO_VTR" : The rate in which video impressions were watched to
  /// completion.
  core.String? metric;

  Field({this.dimension, this.metric});

  Field.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        metric: json_['metric'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimension = this.dimension;
    final metric = this.metric;
    return {'dimension': ?dimension, 'metric': ?metric};
  }
}

/// A filter on a specific field.
class FieldFilter {
  /// The field to filter on.
  ///
  /// Required.
  Field? field;

  /// The operation of this filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "IN" : For scalar operands, checks if the operand is in the set of
  /// provided filter values. For list operands, checks if any element in the
  /// operand is in the set of provided filter values. Default value.
  /// - "NOT_IN" : For scalar operands, checks that the operand is not in the
  /// set of provided filter values. For list operands, checks that none of the
  /// elements in the operand is in the set of provided filter values.
  /// - "CONTAINS" : For scalar string operands, checks if the operand contains
  /// any of the provided filter substrings. For string list operands, checks if
  /// any string in the operand contains any of the provided filter substrings.
  /// - "NOT_CONTAINS" : For scalar string operands, checks that the operand
  /// contains none of the provided filter substrings. For string list operands,
  /// checks that none of the strings in the operand contain none of the
  /// provided filter substrings.
  /// - "LESS_THAN" : Operand is less than the provided filter value.
  /// - "LESS_THAN_EQUALS" : Operand is less than or equal to provided filter
  /// value.
  /// - "GREATER_THAN" : Operand is greater than provided filter value.
  /// - "GREATER_THAN_EQUALS" : Operand is greater than or equal to provided
  /// filter value.
  /// - "BETWEEN" : Operand is between provided filter values.
  /// - "MATCHES" : Operand matches against a regular expression or set of
  /// regular expressions (one must match).
  /// - "NOT_MATCHES" : Operand negative matches against a regular expression or
  /// set of regular expressions (none must match).
  core.String? operation;

  /// Values to filter to.
  ///
  /// Required.
  core.List<ReportValue>? values;

  FieldFilter({this.field, this.operation, this.values});

  FieldFilter.fromJson(core.Map json_)
    : this(
        field: json_.containsKey('field')
            ? Field.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operation: json_['operation'] as core.String?,
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => ReportValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final field = this.field;
    final operation = this.operation;
    final values = this.values;
    return {'field': ?field, 'operation': ?operation, 'values': ?values};
  }
}

/// A filter over one or more fields.
class Filter {
  /// A list of filters whose results are AND-ed.
  FilterList? andFilter;

  /// A filter on a single field.
  FieldFilter? fieldFilter;

  /// A filter whose result is negated.
  Filter? notFilter;

  /// A list of filters whose results are OR-ed.
  FilterList? orFilter;

  Filter({this.andFilter, this.fieldFilter, this.notFilter, this.orFilter});

  Filter.fromJson(core.Map json_)
    : this(
        andFilter: json_.containsKey('andFilter')
            ? FilterList.fromJson(
                json_['andFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fieldFilter: json_.containsKey('fieldFilter')
            ? FieldFilter.fromJson(
                json_['fieldFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        notFilter: json_.containsKey('notFilter')
            ? Filter.fromJson(
                json_['notFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orFilter: json_.containsKey('orFilter')
            ? FilterList.fromJson(
                json_['orFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final andFilter = this.andFilter;
    final fieldFilter = this.fieldFilter;
    final notFilter = this.notFilter;
    final orFilter = this.orFilter;
    return {
      'andFilter': ?andFilter,
      'fieldFilter': ?fieldFilter,
      'notFilter': ?notFilter,
      'orFilter': ?orFilter,
    };
  }
}

/// A list of filters.
class FilterList {
  /// A list of filters.
  ///
  /// Required.
  core.List<Filter>? filters;

  FilterList({this.filters});

  FilterList.fromJson(core.Map json_)
    : this(
        filters: (json_['filters'] as core.List?)
            ?.map(
              (value) =>
                  Filter.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filters = this.filters;
    return {'filters': ?filters};
  }
}

/// A date range between two fixed dates (inclusive of end date).
class FixedDateRange {
  /// The end date (inclusive) of this date range.
  ///
  /// Required.
  Date? endDate;

  /// The start date of this date range.
  ///
  /// Required.
  Date? startDate;

  FixedDateRange({this.endDate, this.startDate});

  FixedDateRange.fromJson(core.Map json_)
    : this(
        endDate: json_.containsKey('endDate')
            ? Date.fromJson(
                json_['endDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startDate: json_.containsKey('startDate')
            ? Date.fromJson(
                json_['startDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endDate = this.endDate;
    final startDate = this.startDate;
    return {'endDate': ?endDate, 'startDate': ?startDate};
  }
}

/// A list of integer values.
typedef IntList = $IntList;

/// Response object for `ListReportsResponse` containing matching `Report`
/// objects.
class ListReportsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The `Report` objects from the specified network.
  core.List<Report>? reports;

  /// Total number of `Report` objects.
  ///
  /// If a filter was included in the request, this reflects the total number
  /// after the filtering is applied. `total_size` won't be calculated in the
  /// response unless it has been included in a response field mask. The
  /// response field mask can be provided to the method by using the URL
  /// parameter `$fields` or `fields`, or by using the HTTP/gRPC header
  /// `X-Goog-FieldMask`. For more information, see
  /// https://developers.google.com/ad-manager/api/beta/field-masks
  core.int? totalSize;

  ListReportsResponse({this.nextPageToken, this.reports, this.totalSize});

  ListReportsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reports: (json_['reports'] as core.List?)
            ?.map(
              (value) =>
                  Report.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final reports = this.reports;
    final totalSize = this.totalSize;
    return {
      'nextPageToken': ?nextPageToken,
      'reports': ?reports,
      'totalSize': ?totalSize,
    };
  }
}

/// Contains all metric values requested for a single date range and set of
/// column dimension values (returned in the columns field of the response).
///
/// The order of the metrics in each field corresponds to the order of the
/// metrics specified in the request.
class MetricValueGroup {
  /// Data for the PRIMARY MetricValueType.
  core.List<ReportValue>? primaryValues;

  MetricValueGroup({this.primaryValues});

  MetricValueGroup.fromJson(core.Map json_)
    : this(
        primaryValues: (json_['primaryValues'] as core.List?)
            ?.map(
              (value) => ReportValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final primaryValues = this.primaryValues;
    return {'primaryValues': ?primaryValues};
  }
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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// The `Report` resource.
class Report {
  /// The instant this report was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name for the report.
  ///
  /// Optional.
  core.String? displayName;

  /// The locale of this report.
  ///
  /// Locale is set from the user's locale at the time of the request. Locale
  /// can't be modified.
  ///
  /// Output only.
  core.String? locale;

  /// Identifier.
  ///
  /// The resource name of the report. Report resource name have the form:
  /// `agencies/{account_id}/reports/{report_id}`
  core.String? name;

  /// The report definition of the report.
  ///
  /// Required.
  ReportDefinition? reportDefinition;

  /// Report ID.
  ///
  /// Output only.
  core.String? reportId;

  /// The instant this report was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  Report({
    this.createTime,
    this.displayName,
    this.locale,
    this.name,
    this.reportDefinition,
    this.reportId,
    this.updateTime,
  });

  Report.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        locale: json_['locale'] as core.String?,
        name: json_['name'] as core.String?,
        reportDefinition: json_.containsKey('reportDefinition')
            ? ReportDefinition.fromJson(
                json_['reportDefinition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        reportId: json_['reportId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final locale = this.locale;
    final name = this.name;
    final reportDefinition = this.reportDefinition;
    final reportId = this.reportId;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'locale': ?locale,
      'name': ?name,
      'reportDefinition': ?reportDefinition,
      'reportId': ?reportId,
      'updateTime': ?updateTime,
    };
  }
}

/// The definition of how a report should be run.
class ReportDefinition {
  /// The ISO 4217 currency code for this report.
  ///
  /// Defaults to account currency code if not specified.
  ///
  /// Optional.
  core.String? currencyCode;

  /// The primary date range of this report.
  ///
  /// Required.
  DateRange? dateRange;

  /// The list of dimensions to report on.
  ///
  /// If empty, the report will have no dimensions, and any metrics will be
  /// totals.
  ///
  /// Required.
  core.List<core.String>? dimensions;

  /// The filters for this report.
  ///
  /// Optional.
  core.List<Filter>? filters;

  /// The list of metrics to report on.
  ///
  /// If empty, the report will have no metrics.
  ///
  /// Required.
  core.List<core.String>? metrics;

  /// Default sorts to apply to this report.
  ///
  /// Optional.
  core.List<Sort>? sorts;

  /// If time_zone_source is PROVIDED, this is the time zone to use for this
  /// report.
  ///
  /// Leave empty for any other time zone source. Time zone in IANA format. For
  /// example, "America/New_York".
  ///
  /// Optional.
  core.String? timeZone;

  /// Where to get the time zone for this report.
  ///
  /// Defaults to using the Pacific time zone (PT). If source is PROVIDED, the
  /// time_zone field in the report definition must also set a time zone.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TIME_ZONE_SOURCE_UNSPECIFIED" : Unspecified default value.
  /// - "AD_EXCHANGE" : Use the Pacific time zone(PT).
  /// - "UTC" : Use UTC time zone.
  /// - "PROVIDED" : Use the time zone provided in the
  /// ReportDefinition.time_zone field. Reports may take longer to run since the
  /// dates are dynamically calculated at request time.
  /// - "AGENCY" : Use the time zone from the agency's account settings.
  core.String? timeZoneSource;

  ReportDefinition({
    this.currencyCode,
    this.dateRange,
    this.dimensions,
    this.filters,
    this.metrics,
    this.sorts,
    this.timeZone,
    this.timeZoneSource,
  });

  ReportDefinition.fromJson(core.Map json_)
    : this(
        currencyCode: json_['currencyCode'] as core.String?,
        dateRange: json_.containsKey('dateRange')
            ? DateRange.fromJson(
                json_['dateRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dimensions: (json_['dimensions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        filters: (json_['filters'] as core.List?)
            ?.map(
              (value) =>
                  Filter.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        metrics: (json_['metrics'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sorts: (json_['sorts'] as core.List?)
            ?.map(
              (value) =>
                  Sort.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        timeZone: json_['timeZone'] as core.String?,
        timeZoneSource: json_['timeZoneSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currencyCode = this.currencyCode;
    final dateRange = this.dateRange;
    final dimensions = this.dimensions;
    final filters = this.filters;
    final metrics = this.metrics;
    final sorts = this.sorts;
    final timeZone = this.timeZone;
    final timeZoneSource = this.timeZoneSource;
    return {
      'currencyCode': ?currencyCode,
      'dateRange': ?dateRange,
      'dimensions': ?dimensions,
      'filters': ?filters,
      'metrics': ?metrics,
      'sorts': ?sorts,
      'timeZone': ?timeZone,
      'timeZoneSource': ?timeZoneSource,
    };
  }
}

/// Represents a single value in a report.
class ReportValue {
  /// For boolean values.
  core.bool? boolValue;

  /// For bytes values.
  core.String? bytesValue;
  core.List<core.int> get bytesValueAsBytes =>
      convert.base64.decode(bytesValue!);

  set bytesValueAsBytes(core.List<core.int> bytes_) {
    bytesValue = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// For lists of double values.
  DoubleList? doubleListValue;

  /// For double values.
  core.double? doubleValue;

  /// For lists of integer values.
  IntList? intListValue;

  /// For integer values.
  core.String? intValue;

  /// For lists of string values.
  StringList? stringListValue;

  /// For string values.
  core.String? stringValue;

  ReportValue({
    this.boolValue,
    this.bytesValue,
    this.doubleListValue,
    this.doubleValue,
    this.intListValue,
    this.intValue,
    this.stringListValue,
    this.stringValue,
  });

  ReportValue.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        bytesValue: json_['bytesValue'] as core.String?,
        doubleListValue: json_.containsKey('doubleListValue')
            ? DoubleList.fromJson(
                json_['doubleListValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        intListValue: json_.containsKey('intListValue')
            ? IntList.fromJson(
                json_['intListValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        intValue: json_['intValue'] as core.String?,
        stringListValue: json_.containsKey('stringListValue')
            ? StringList.fromJson(
                json_['stringListValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final bytesValue = this.bytesValue;
    final doubleListValue = this.doubleListValue;
    final doubleValue = this.doubleValue;
    final intListValue = this.intListValue;
    final intValue = this.intValue;
    final stringListValue = this.stringListValue;
    final stringValue = this.stringValue;
    return {
      'boolValue': ?boolValue,
      'bytesValue': ?bytesValue,
      'doubleListValue': ?doubleListValue,
      'doubleValue': ?doubleValue,
      'intListValue': ?intListValue,
      'intValue': ?intValue,
      'stringListValue': ?stringListValue,
      'stringValue': ?stringValue,
    };
  }
}

/// A row of report data.
class Row {
  /// The order of the dimension values is the same as the order of the
  /// dimensions specified in the request.
  core.List<ReportValue>? dimensionValues;

  /// The length of the metric_value_groups field will be equal to the length of
  /// the date_ranges field in the fetch response.
  ///
  /// The metric_value_groups field is ordered such that each index corresponds
  /// to the date_range at the same index. For example, given date_ranges \[x,
  /// y\], metric_value_groups will have a length of two. The first entry in
  /// metric_value_groups represents the metrics for date x and the second entry
  /// in metric_value_groups represents the metrics for date y.
  core.List<MetricValueGroup>? metricValueGroups;

  Row({this.dimensionValues, this.metricValueGroups});

  Row.fromJson(core.Map json_)
    : this(
        dimensionValues: (json_['dimensionValues'] as core.List?)
            ?.map(
              (value) => ReportValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        metricValueGroups: (json_['metricValueGroups'] as core.List?)
            ?.map(
              (value) => MetricValueGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionValues = this.dimensionValues;
    final metricValueGroups = this.metricValueGroups;
    return {
      'dimensionValues': ?dimensionValues,
      'metricValueGroups': ?metricValueGroups,
    };
  }
}

/// Request message for a running a report.
typedef RunReportRequest = $Empty;

/// Represents a sorting in a report.
class Sort {
  /// The sort order.
  ///
  /// If true the sort will be descending.
  ///
  /// Optional.
  core.bool? descending;

  /// A field (dimension or metric) to sort by.
  ///
  /// Required.
  Field? field;

  Sort({this.descending, this.field});

  Sort.fromJson(core.Map json_)
    : this(
        descending: json_['descending'] as core.bool?,
        field: json_.containsKey('field')
            ? Field.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final descending = this.descending;
    final field = this.field;
    return {'descending': ?descending, 'field': ?field};
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// A list of string values.
typedef StringList = $StringList01;
