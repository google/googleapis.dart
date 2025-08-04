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

/// DoubleClick Bid Manager API - v2
///
/// DoubleClick Bid Manager API allows users to manage and create campaigns and
/// reports.
///
/// For more information, see <https://developers.google.com/bid-manager/>
///
/// Create an instance of [DoubleClickBidManagerApi] to access these resources:
///
/// - [QueriesResource]
///   - [QueriesReportsResource]
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

/// DoubleClick Bid Manager API allows users to manage and create campaigns and
/// reports.
class DoubleClickBidManagerApi {
  /// View and manage your reports in DoubleClick Bid Manager
  static const doubleclickbidmanagerScope =
      'https://www.googleapis.com/auth/doubleclickbidmanager';

  final commons.ApiRequester _requester;

  QueriesResource get queries => QueriesResource(_requester);

  DoubleClickBidManagerApi(http.Client client,
      {core.String rootUrl = 'https://doubleclickbidmanager.googleapis.com/',
      core.String servicePath = 'v2/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class QueriesResource {
  final commons.ApiRequester _requester;

  QueriesReportsResource get reports => QueriesReportsResource(_requester);

  QueriesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Query].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Query> create(
    Query request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'queries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Query.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing query as well as its generated reports.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Required. The ID of the query to delete.
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
    core.String queryId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'queries/' + commons.escapeVariable('$queryId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a query.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Required. The ID of the query to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Query].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Query> get(
    core.String queryId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'queries/' + commons.escapeVariable('$queryId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Query.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists queries created by the current user.
  ///
  /// Request parameters:
  ///
  /// [orderBy] - Field to sort the list by. Accepts the following values: *
  /// `queryId` (default) * `metadata.title` The default sorting order is
  /// ascending. To specify descending order for a field, add the suffix `desc`
  /// to the field name. For example, `queryId desc`.
  ///
  /// [pageSize] - Maximum number of results per page. Must be between `1` and
  /// `100`. Defaults to `100` if unspecified.
  ///
  /// [pageToken] - A token identifying which page of results the server should
  /// return. Typically, this is the value of nextPageToken, returned from the
  /// previous call to the `queries.list` method. If unspecified, the first page
  /// of results is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListQueriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListQueriesResponse> list({
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'queries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListQueriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs an existing query to generate a report.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Required. The ID of the query to run.
  ///
  /// [synchronous] - Whether the query should be run synchronously. When
  /// `true`, the request won't return until the resulting report has finished
  /// running. This parameter is `false` by default. Setting this parameter to
  /// `true` is **not recommended**.
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
  async.Future<Report> run(
    RunQueryRequest request,
    core.String queryId, {
    core.bool? synchronous,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (synchronous != null) 'synchronous': ['${synchronous}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'queries/' + commons.escapeVariable('$queryId') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class QueriesReportsResource {
  final commons.ApiRequester _requester;

  QueriesReportsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a report.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Required. The ID of the query that generated the report.
  ///
  /// [reportId] - Required. The ID of the query to retrieve.
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
  async.Future<Report> get(
    core.String queryId,
    core.String reportId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'queries/' +
        commons.escapeVariable('$queryId') +
        '/reports/' +
        commons.escapeVariable('$reportId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists reports generated by the provided query.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Required. The ID of the query that generated the reports.
  ///
  /// [orderBy] - Field to sort the list by. Accepts the following values: *
  /// `key.reportId` (default) The default sorting order is ascending. To
  /// specify descending order for a field, add the suffix `desc` to the field
  /// name. For example, `key.reportId desc`.
  ///
  /// [pageSize] - Maximum number of results per page. Must be between `1` and
  /// `100`. Defaults to `100` if unspecified.
  ///
  /// [pageToken] - A token identifying which page of results the server should
  /// return. Typically, this is the value of nextPageToken returned from the
  /// previous call to the `queries.reports.list` method. If unspecified, the
  /// first page of results is returned.
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
    core.String queryId, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'queries/' + commons.escapeVariable('$queryId') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The date range to be reported on.
class DataRange {
  /// If `CUSTOM_DATES` is assigned to range, this field specifies the end date
  /// for the date range that is reported on.
  ///
  /// This field is required if using `CUSTOM_DATES` range and will be ignored
  /// otherwise.
  Date? customEndDate;

  /// If `CUSTOM_DATES` is assigned to range, this field specifies the starting
  /// date for the date range that is reported on.
  ///
  /// This field is required if using `CUSTOM_DATES` range and will be ignored
  /// otherwise.
  Date? customStartDate;

  /// The preset date range to be reported on.
  ///
  /// If `CUSTOM_DATES` is assigned to this field, fields custom_start_date and
  /// custom_end_date must be set to specify the custom date range.
  /// Possible string values are:
  /// - "RANGE_UNSPECIFIED" : Default value when range is not specified or is
  /// unknown in this version.
  /// - "CUSTOM_DATES" : Custom date range.
  /// - "CURRENT_DAY" : Current day.
  /// - "PREVIOUS_DAY" : Previous day.
  /// - "WEEK_TO_DATE" : All days, including the current day, since the most
  /// recent Sunday.
  /// - "MONTH_TO_DATE" : All days, including the current day, since the start
  /// of the current month.
  /// - "QUARTER_TO_DATE" : All days, including the current day, since the start
  /// of the current quarter.
  /// - "YEAR_TO_DATE" : All days, including the current day, since the start of
  /// the current calendar year.
  /// - "PREVIOUS_WEEK" : The previous completed week, beginning from Sunday.
  /// - "PREVIOUS_MONTH" : The previous completed calendar month.
  /// - "PREVIOUS_QUARTER" : The previous completed quarter.
  /// - "PREVIOUS_YEAR" : The previous completed calendar year.
  /// - "LAST_7_DAYS" : The previous 7 days, excluding the current day.
  /// - "LAST_30_DAYS" : The previous 30 days, excluding the current day.
  /// - "LAST_90_DAYS" : The previous 90 days, excluding the current day.
  /// - "LAST_365_DAYS" : The previous 365 days, excluding the current day.
  /// - "ALL_TIME" : All time for which data is available, excluding the current
  /// day.
  /// - "LAST_14_DAYS" : The previous 14 days, excluding the current day.
  /// - "LAST_60_DAYS" : The previous 60 days, excluding the current day.
  core.String? range;

  DataRange({
    this.customEndDate,
    this.customStartDate,
    this.range,
  });

  DataRange.fromJson(core.Map json_)
      : this(
          customEndDate: json_.containsKey('customEndDate')
              ? Date.fromJson(
                  json_['customEndDate'] as core.Map<core.String, core.dynamic>)
              : null,
          customStartDate: json_.containsKey('customStartDate')
              ? Date.fromJson(json_['customStartDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          range: json_['range'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customEndDate != null) 'customEndDate': customEndDate!,
        if (customStartDate != null) 'customStartDate': customStartDate!,
        if (range != null) 'range': range!,
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

/// Represents a single filter rule.
class FilterPair {
  /// The type of value to filter by.
  ///
  /// Defined by a
  /// \[Filter\](/bid-manager/reference/rest/v2/filters-metrics#filters) value.
  core.String? type;

  /// The identifying value to filter by, such as a relevant resource ID.
  core.String? value;

  FilterPair({
    this.type,
    this.value,
  });

  FilterPair.fromJson(core.Map json_)
      : this(
          type: json_['type'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

class ListQueriesResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `queries.list` method to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of queries.
  ///
  /// This field will be absent if empty.
  core.List<Query>? queries;

  ListQueriesResponse({
    this.nextPageToken,
    this.queries,
  });

  ListQueriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          queries: (json_['queries'] as core.List?)
              ?.map((value) =>
                  Query.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (queries != null) 'queries': queries!,
      };
}

class ListReportsResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `queries.reports.list` method to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of reports.
  ///
  /// This field will be absent if empty.
  core.List<Report>? reports;

  ListReportsResponse({
    this.nextPageToken,
    this.reports,
  });

  ListReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          reports: (json_['reports'] as core.List?)
              ?.map((value) =>
                  Report.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reports != null) 'reports': reports!,
      };
}

/// Report parameter options.
class Options {
  /// Whether to include data for audience lists specifically targeted by
  /// filtered line items or insertion orders.
  ///
  /// Requires the use of `FILTER_INSERTION_ORDER` or `FILTER_LINE_ITEM`
  /// filters.
  core.bool? includeOnlyTargetedUserLists;

  Options({
    this.includeOnlyTargetedUserLists,
  });

  Options.fromJson(core.Map json_)
      : this(
          includeOnlyTargetedUserLists:
              json_['includeOnlyTargetedUserLists'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeOnlyTargetedUserLists != null)
          'includeOnlyTargetedUserLists': includeOnlyTargetedUserLists!,
      };
}

/// Parameters of a generated report.
class Parameters {
  /// Filters to limit the scope of reported data.
  core.List<FilterPair>? filters;

  /// Dimensions by which to segment and group the data.
  ///
  /// Defined by
  /// \[Filter\](/bid-manager/reference/rest/v2/filters-metrics#filters) values.
  core.List<core.String>? groupBys;

  /// Metrics to define the data populating the report.
  ///
  /// Defined by
  /// \[Metric\](/bid-manager/reference/rest/v2/filters-metrics#metrics) values.
  core.List<core.String>? metrics;

  /// Additional report parameter options.
  Options? options;

  /// The type of the report.
  ///
  /// The type of the report determines the dimesions, filters, and metrics that
  /// can be used.
  /// Possible string values are:
  /// - "REPORT_TYPE_UNSPECIFIED" : Default value when report type is not
  /// specified or is unknown in this version.
  /// - "STANDARD" : Standard report.
  /// - "INVENTORY_AVAILABILITY" : Inventory Availability report. See the
  /// \[Display & Video 360 Help Center
  /// announcement\](https://support.google.com/displayvideo/answer/15874746)
  /// for more information on this deprecation.
  /// - "AUDIENCE_COMPOSITION" : Audience Composition report.
  /// - "FLOODLIGHT" : Floodlight report.
  /// - "YOUTUBE" : YouTube report.
  /// - "GRP" : GRP report.
  /// - "YOUTUBE_PROGRAMMATIC_GUARANTEED" : YouTube Programmatic Guaranteed
  /// report.
  /// - "REACH" : Reach report.
  /// - "UNIQUE_REACH_AUDIENCE" : Unique Reach Audience report.
  /// - "FULL_PATH" : Full Path report.
  /// - "PATH_ATTRIBUTION" : Path Attribution report.
  core.String? type;

  Parameters({
    this.filters,
    this.groupBys,
    this.metrics,
    this.options,
    this.type,
  });

  Parameters.fromJson(core.Map json_)
      : this(
          filters: (json_['filters'] as core.List?)
              ?.map((value) => FilterPair.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          groupBys: (json_['groupBys'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          metrics: (json_['metrics'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          options: json_.containsKey('options')
              ? Options.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filters != null) 'filters': filters!,
        if (groupBys != null) 'groupBys': groupBys!,
        if (metrics != null) 'metrics': metrics!,
        if (options != null) 'options': options!,
        if (type != null) 'type': type!,
      };
}

/// A single query used to generate a report.
class Query {
  /// The metadata of the query.
  QueryMetadata? metadata;

  /// The parameters of the report generated by the query.
  Parameters? params;

  /// The unique ID of the query.
  ///
  /// Output only.
  core.String? queryId;

  /// When and how often the query is scheduled to run.
  ///
  /// If the frequency field is set to `ONE_TIME`, the query will only run when
  /// queries.run is called.
  QuerySchedule? schedule;

  Query({
    this.metadata,
    this.params,
    this.queryId,
    this.schedule,
  });

  Query.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? QueryMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          params: json_.containsKey('params')
              ? Parameters.fromJson(
                  json_['params'] as core.Map<core.String, core.dynamic>)
              : null,
          queryId: json_['queryId'] as core.String?,
          schedule: json_.containsKey('schedule')
              ? QuerySchedule.fromJson(
                  json_['schedule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (params != null) 'params': params!,
        if (queryId != null) 'queryId': queryId!,
        if (schedule != null) 'schedule': schedule!,
      };
}

/// The metadata of the query.
class QueryMetadata {
  /// The date range the report generated by the query will report on.
  ///
  /// This date range will be defined by the time zone as used by the
  /// advertiser.
  DataRange? dataRange;

  /// The format of the report generated by the query.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Default value when format is not specified or is
  /// unknown in this version.
  /// - "CSV" : CSV.
  /// - "XLSX" : Excel.
  core.String? format;

  /// Whether an email notification is sent to the query creator when a report
  /// generated by the query is ready.
  ///
  /// This value is `false` by default.
  core.bool? sendNotification;

  /// List of additional email addresses with which to share the query.
  ///
  /// If send_notification is `true`, these email addresses will receive a
  /// notification when a report generated by the query is ready. If these email
  /// addresses are connected to Display & Video 360 users, the query will be
  /// available to them in the Display & Video 360 interface.
  core.List<core.String>? shareEmailAddress;

  /// The display name of the query.
  ///
  /// This value will be used in the file name of reports generated by the
  /// query.
  core.String? title;

  QueryMetadata({
    this.dataRange,
    this.format,
    this.sendNotification,
    this.shareEmailAddress,
    this.title,
  });

  QueryMetadata.fromJson(core.Map json_)
      : this(
          dataRange: json_.containsKey('dataRange')
              ? DataRange.fromJson(
                  json_['dataRange'] as core.Map<core.String, core.dynamic>)
              : null,
          format: json_['format'] as core.String?,
          sendNotification: json_['sendNotification'] as core.bool?,
          shareEmailAddress: (json_['shareEmailAddress'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          title: json_['title'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataRange != null) 'dataRange': dataRange!,
        if (format != null) 'format': format!,
        if (sendNotification != null) 'sendNotification': sendNotification!,
        if (shareEmailAddress != null) 'shareEmailAddress': shareEmailAddress!,
        if (title != null) 'title': title!,
      };
}

/// Settings on when and how frequently to run a query.
class QuerySchedule {
  /// The date on which to end the scheduled runs.
  ///
  /// This field is required if frequency is not set to `ONE_TIME`. Otherwise,
  /// it will be ignored.
  Date? endDate;

  /// How frequently to run the query.
  ///
  /// If set to `ONE_TIME`, the query will only be run when queries.run is
  /// called.
  /// Possible string values are:
  /// - "FREQUENCY_UNSPECIFIED" : Default value when frequency is not specified
  /// or is unknown in this version.
  /// - "ONE_TIME" : Only when the query is run manually.
  /// - "DAILY" : Once a day.
  /// - "WEEKLY" : Once a week.
  /// - "SEMI_MONTHLY" : Twice a month.
  /// - "MONTHLY" : Once a month.
  /// - "QUARTERLY" : Once a quarter.
  /// - "YEARLY" : Once a year.
  core.String? frequency;

  /// The canonical code for the timezone the query schedule is based on.
  ///
  /// Scheduled runs are usually conducted in the morning of a given day.
  /// Defaults to `America/New_York`.
  core.String? nextRunTimezoneCode;

  /// The date on which to begin the scheduled runs.
  ///
  /// This field is required if frequency is not set to `ONE_TIME`. Otherwise,
  /// it will be ignored.
  Date? startDate;

  QuerySchedule({
    this.endDate,
    this.frequency,
    this.nextRunTimezoneCode,
    this.startDate,
  });

  QuerySchedule.fromJson(core.Map json_)
      : this(
          endDate: json_.containsKey('endDate')
              ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          frequency: json_['frequency'] as core.String?,
          nextRunTimezoneCode: json_['nextRunTimezoneCode'] as core.String?,
          startDate: json_.containsKey('startDate')
              ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (frequency != null) 'frequency': frequency!,
        if (nextRunTimezoneCode != null)
          'nextRunTimezoneCode': nextRunTimezoneCode!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// A single report generated by its parent report.
class Report {
  /// The key information identifying the report.
  ReportKey? key;

  /// The metadata of the report.
  ReportMetadata? metadata;

  /// The parameters of the report.
  Parameters? params;

  Report({
    this.key,
    this.metadata,
    this.params,
  });

  Report.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key')
              ? ReportKey.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? ReportMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          params: json_.containsKey('params')
              ? Parameters.fromJson(
                  json_['params'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (metadata != null) 'metadata': metadata!,
        if (params != null) 'params': params!,
      };
}

/// Identifying information of a report.
class ReportKey {
  /// The unique ID of the query that generated the report.
  ///
  /// Output only.
  core.String? queryId;

  /// The unique ID of the report.
  ///
  /// Output only.
  core.String? reportId;

  ReportKey({
    this.queryId,
    this.reportId,
  });

  ReportKey.fromJson(core.Map json_)
      : this(
          queryId: json_['queryId'] as core.String?,
          reportId: json_['reportId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryId != null) 'queryId': queryId!,
        if (reportId != null) 'reportId': reportId!,
      };
}

/// The metadata of a report.
class ReportMetadata {
  /// The location of the generated report file in Google Cloud Storage.
  ///
  /// This field will be absent if status.state is not `DONE`.
  ///
  /// Output only.
  core.String? googleCloudStoragePath;

  /// The end date of the report data date range.
  Date? reportDataEndDate;

  /// The start date of the report data date range.
  Date? reportDataStartDate;

  /// The status of the report.
  ReportStatus? status;

  ReportMetadata({
    this.googleCloudStoragePath,
    this.reportDataEndDate,
    this.reportDataStartDate,
    this.status,
  });

  ReportMetadata.fromJson(core.Map json_)
      : this(
          googleCloudStoragePath:
              json_['googleCloudStoragePath'] as core.String?,
          reportDataEndDate: json_.containsKey('reportDataEndDate')
              ? Date.fromJson(json_['reportDataEndDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reportDataStartDate: json_.containsKey('reportDataStartDate')
              ? Date.fromJson(json_['reportDataStartDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? ReportStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleCloudStoragePath != null)
          'googleCloudStoragePath': googleCloudStoragePath!,
        if (reportDataEndDate != null) 'reportDataEndDate': reportDataEndDate!,
        if (reportDataStartDate != null)
          'reportDataStartDate': reportDataStartDate!,
        if (status != null) 'status': status!,
      };
}

/// The status of a report.
class ReportStatus {
  /// The timestamp of when report generation finished successfully or in
  /// failure.
  ///
  /// This field will not be set unless state is `DONE` or `FAILED`.
  ///
  /// Output only.
  core.String? finishTime;

  /// The format of the generated report file.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Default value when format is not specified or is
  /// unknown in this version.
  /// - "CSV" : CSV.
  /// - "XLSX" : Excel.
  core.String? format;

  /// The state of the report generation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value when state is not specified or is
  /// unknown in this version.
  /// - "QUEUED" : The report is queued to run.
  /// - "RUNNING" : The report is currently running.
  /// - "DONE" : The report has finished running successfully.
  /// - "FAILED" : The report has finished running in failure.
  core.String? state;

  ReportStatus({
    this.finishTime,
    this.format,
    this.state,
  });

  ReportStatus.fromJson(core.Map json_)
      : this(
          finishTime: json_['finishTime'] as core.String?,
          format: json_['format'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (finishTime != null) 'finishTime': finishTime!,
        if (format != null) 'format': format!,
        if (state != null) 'state': state!,
      };
}

/// Details specifying how to run a query.
class RunQueryRequest {
  /// The date range used by the query to generate the report.
  ///
  /// If unspecified, the query's original data_range is used.
  DataRange? dataRange;

  RunQueryRequest({
    this.dataRange,
  });

  RunQueryRequest.fromJson(core.Map json_)
      : this(
          dataRange: json_.containsKey('dataRange')
              ? DataRange.fromJson(
                  json_['dataRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataRange != null) 'dataRange': dataRange!,
      };
}
