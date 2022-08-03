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
library doubleclickbidmanager.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
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

  /// Creates a query.
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

  /// Deletes a query as well as the associated reports.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Required. ID of query to delete.
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
  /// [queryId] - Required. ID of query to retrieve.
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
  /// [orderBy] - Name of a field used to order results. The default sorting
  /// order is ascending. To specify descending order for a field, append a "
  /// desc" suffix. For example "metadata.title desc". Sorting is only supported
  /// for the following fields: * `queryId` * `metadata.title`
  ///
  /// [pageSize] - Maximum number of results per page. Must be between `1` and
  /// `100`. Defaults to `100` if unspecified.
  ///
  /// [pageToken] - A page token, received from a previous list call. Provide
  /// this to retrieve the subsequent page of queries.
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

  /// Runs a stored query to generate a report.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Required. ID of query to run.
  ///
  /// [synchronous] - Whether the query should be run synchronously. When true,
  /// this method will not return until the query has finished running. When
  /// false or not specified, this method will return immediately.
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
  /// [queryId] - Required. ID of the query the report is associated with.
  ///
  /// [reportId] - Required. ID of the report to retrieve.
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

  /// Lists reports associated with a query.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Required. ID of the query with which the reports are
  /// associated.
  ///
  /// [orderBy] - Name of a field used to order results. The default sorting
  /// order is ascending. To specify descending order for a field, append a "
  /// desc" suffix. For example "key.reportId desc". Sorting is only supported
  /// for the following fields: * `key.reportId`
  ///
  /// [pageSize] - Maximum number of results per page. Must be between `1` and
  /// `100`. Defaults to `100` if unspecified.
  ///
  /// [pageToken] - A page token, received from a previous list call. Provide
  /// this to retrieve the subsequent page of reports.
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

/// A channel grouping defines a set of rules that can be used to categorize
/// events in a path report.
class ChannelGrouping {
  /// The name to apply to an event that does not match any of the rules in the
  /// channel grouping.
  core.String? fallbackName;

  /// Channel Grouping name.
  core.String? name;

  /// Rules within Channel Grouping.
  ///
  /// There is a limit of 100 rules that can be set per channel grouping.
  core.List<Rule>? rules;

  ChannelGrouping({
    this.fallbackName,
    this.name,
    this.rules,
  });

  ChannelGrouping.fromJson(core.Map json_)
      : this(
          fallbackName: json_.containsKey('fallbackName')
              ? json_['fallbackName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => Rule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fallbackName != null) 'fallbackName': fallbackName!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
      };
}

/// Report data range.
class DataRange {
  /// The ending date for the data that is shown in the report.
  ///
  /// Note, `customEndDate` is required if `range` is `CUSTOM_DATES` and ignored
  /// otherwise.
  Date? customEndDate;

  /// The starting data for the data that is shown in the report.
  ///
  /// Note, `customStartDate` is required if `range` is `CUSTOM_DATES` and
  /// ignored otherwise.
  Date? customStartDate;

  /// Report data range used to generate the report.
  /// Possible string values are:
  /// - "RANGE_UNSPECIFIED" : Default value when range is not specified or is
  /// unknown in this version.
  /// - "CUSTOM_DATES" : Custom range specified by custom_start_date and
  /// custom_end_date fields.
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
          range:
              json_.containsKey('range') ? json_['range'] as core.String : null,
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

/// DisjunctiveMatchStatement that OR's all contained filters.
class DisjunctiveMatchStatement {
  /// Filters.
  ///
  /// There is a limit of 100 filters that can be set per disjunctive match
  /// statement.
  core.List<EventFilter>? eventFilters;

  DisjunctiveMatchStatement({
    this.eventFilters,
  });

  DisjunctiveMatchStatement.fromJson(core.Map json_)
      : this(
          eventFilters: json_.containsKey('eventFilters')
              ? (json_['eventFilters'] as core.List)
                  .map((value) => EventFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventFilters != null) 'eventFilters': eventFilters!,
      };
}

/// Defines the type of filter to be applied to the path, a DV360 event
/// dimension filter.
class EventFilter {
  /// Filter on a dimension.
  PathQueryOptionsFilter? dimensionFilter;

  EventFilter({
    this.dimensionFilter,
  });

  EventFilter.fromJson(core.Map json_)
      : this(
          dimensionFilter: json_.containsKey('dimensionFilter')
              ? PathQueryOptionsFilter.fromJson(json_['dimensionFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
      };
}

/// Filter used to match traffic data in your report.
class FilterPair {
  /// Filter type.
  core.String? type;

  /// Filter value.
  core.String? value;

  FilterPair({
    this.type,
    this.value,
  });

  FilterPair.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

class ListQueriesResponse {
  /// A token, which can be sent as page_token to retrieve the next page of
  /// queries.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of queries.
  core.List<Query>? queries;

  ListQueriesResponse({
    this.nextPageToken,
    this.queries,
  });

  ListQueriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          queries: json_.containsKey('queries')
              ? (json_['queries'] as core.List)
                  .map((value) => Query.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (queries != null) 'queries': queries!,
      };
}

class ListReportsResponse {
  /// A token, which can be sent as page_token to retrieve the next page of
  /// reports.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Retrieved reports.
  core.List<Report>? reports;

  ListReportsResponse({
    this.nextPageToken,
    this.reports,
  });

  ListReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reports: json_.containsKey('reports')
              ? (json_['reports'] as core.List)
                  .map((value) => Report.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reports != null) 'reports': reports!,
      };
}

/// Additional query options.
class Options {
  /// Set to true and filter your report by `FILTER_INSERTION_ORDER` or
  /// `FILTER_LINE_ITEM` to include data for audience lists specifically
  /// targeted by those items.
  core.bool? includeOnlyTargetedUserLists;

  /// Options that contain Path Filters and Custom Channel Groupings.
  PathQueryOptions? pathQueryOptions;

  Options({
    this.includeOnlyTargetedUserLists,
    this.pathQueryOptions,
  });

  Options.fromJson(core.Map json_)
      : this(
          includeOnlyTargetedUserLists:
              json_.containsKey('includeOnlyTargetedUserLists')
                  ? json_['includeOnlyTargetedUserLists'] as core.bool
                  : null,
          pathQueryOptions: json_.containsKey('pathQueryOptions')
              ? PathQueryOptions.fromJson(json_['pathQueryOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeOnlyTargetedUserLists != null)
          'includeOnlyTargetedUserLists': includeOnlyTargetedUserLists!,
        if (pathQueryOptions != null) 'pathQueryOptions': pathQueryOptions!,
      };
}

/// Parameters of a query or report.
class Parameters {
  /// Filters used to match traffic data in your report.
  core.List<FilterPair>? filters;

  /// Data is grouped by the filters listed in this field.
  core.List<core.String>? groupBys;

  /// Metrics to include as columns in your report.
  core.List<core.String>? metrics;

  /// Additional query options.
  Options? options;

  /// The type of the report.
  ///
  /// The type of the report will dictate what dimesions, filters, and metrics
  /// can be used.
  /// Possible string values are:
  /// - "REPORT_TYPE_UNSPECIFIED" : Default value when report type is not
  /// specified or is unknown in this version.
  /// - "STANDARD" : Standard report.
  /// - "INVENTORY_AVAILABILITY" : Inventory Availability report.
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
          filters: json_.containsKey('filters')
              ? (json_['filters'] as core.List)
                  .map((value) => FilterPair.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          groupBys: json_.containsKey('groupBys')
              ? (json_['groupBys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          options: json_.containsKey('options')
              ? Options.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filters != null) 'filters': filters!,
        if (groupBys != null) 'groupBys': groupBys!,
        if (metrics != null) 'metrics': metrics!,
        if (options != null) 'options': options!,
        if (type != null) 'type': type!,
      };
}

/// Path filters specify which paths to include in a report.
///
/// A path is the result of combining DV360 events based on User ID to create a
/// workflow of users' actions. When a path filter is set, the resulting report
/// will only include paths that match the specified event at the specified
/// position. All other paths will be excluded.
class PathFilter {
  /// Filter on an event to be applied to some part of the path.
  core.List<EventFilter>? eventFilters;

  /// The position of the path the filter should match to (first, last, or any
  /// event in path).
  /// Possible string values are:
  /// - "PATH_MATCH_POSITION_UNSPECIFIED" : Default value when path match
  /// position is not specified or is unknown in this version.
  /// - "ANY" : Any position in the path.
  /// - "FIRST" : The first position in the path.
  /// - "LAST" : The last position in the path.
  core.String? pathMatchPosition;

  PathFilter({
    this.eventFilters,
    this.pathMatchPosition,
  });

  PathFilter.fromJson(core.Map json_)
      : this(
          eventFilters: json_.containsKey('eventFilters')
              ? (json_['eventFilters'] as core.List)
                  .map((value) => EventFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pathMatchPosition: json_.containsKey('pathMatchPosition')
              ? json_['pathMatchPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventFilters != null) 'eventFilters': eventFilters!,
        if (pathMatchPosition != null) 'pathMatchPosition': pathMatchPosition!,
      };
}

/// Path Query Options for Report Options.
class PathQueryOptions {
  /// Custom Channel Groupings.
  ChannelGrouping? channelGrouping;

  /// Path Filters.
  ///
  /// There is a limit of 100 path filters that can be set per report.
  core.List<PathFilter>? pathFilters;

  PathQueryOptions({
    this.channelGrouping,
    this.pathFilters,
  });

  PathQueryOptions.fromJson(core.Map json_)
      : this(
          channelGrouping: json_.containsKey('channelGrouping')
              ? ChannelGrouping.fromJson(json_['channelGrouping']
                  as core.Map<core.String, core.dynamic>)
              : null,
          pathFilters: json_.containsKey('pathFilters')
              ? (json_['pathFilters'] as core.List)
                  .map((value) => PathFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelGrouping != null) 'channelGrouping': channelGrouping!,
        if (pathFilters != null) 'pathFilters': pathFilters!,
      };
}

/// Dimension filter on path events.
class PathQueryOptionsFilter {
  /// Dimension the filter is applied to.
  core.String? filter;

  /// Match logic of the filter.
  /// Possible string values are:
  /// - "UNKNOWN" : Default value when match is not specified or is unknown in
  /// this version.
  /// - "EXACT" : Matches a value exactly.
  /// - "PARTIAL" : Matches a value partially.
  /// - "BEGINS_WITH" : Begins with a value.
  /// - "WILDCARD_EXPRESSION" : Matches a value, utilizing wildcard character
  /// logic in the value.
  core.String? match;

  /// Values to filter on.
  core.List<core.String>? values;

  PathQueryOptionsFilter({
    this.filter,
    this.match,
    this.values,
  });

  PathQueryOptionsFilter.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          match:
              json_.containsKey('match') ? json_['match'] as core.String : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (match != null) 'match': match!,
        if (values != null) 'values': values!,
      };
}

/// Represents a query.
class Query {
  /// Query metadata.
  QueryMetadata? metadata;

  /// Query parameters.
  Parameters? params;

  /// Query ID.
  ///
  /// Output only.
  core.String? queryId;

  /// Information on how often and when to run a query.
  ///
  /// If `ONE_TIME` is set to the frequency field, the query will only be run at
  /// the time of creation.
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
          queryId: json_.containsKey('queryId')
              ? json_['queryId'] as core.String
              : null,
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

/// Query metadata.
class QueryMetadata {
  /// Range of report data.
  ///
  /// All reports will be based on the same time zone as used by the advertiser.
  DataRange? dataRange;

  /// Format of the generated report.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Default value when format is not specified or is
  /// unknown in this version.
  /// - "CSV" : CSV.
  /// - "XLSX" : Excel.
  core.String? format;

  /// Whether to send an email notification when a report is ready.
  ///
  /// Defaults to false.
  core.bool? sendNotification;

  /// List of email addresses which are sent email notifications when the report
  /// is finished.
  ///
  /// Separate from send_notification.
  core.List<core.String>? shareEmailAddress;

  /// Query title.
  ///
  /// It is used to name the reports generated from this query.
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
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          sendNotification: json_.containsKey('sendNotification')
              ? json_['sendNotification'] as core.bool
              : null,
          shareEmailAddress: json_.containsKey('shareEmailAddress')
              ? (json_['shareEmailAddress'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataRange != null) 'dataRange': dataRange!,
        if (format != null) 'format': format!,
        if (sendNotification != null) 'sendNotification': sendNotification!,
        if (shareEmailAddress != null) 'shareEmailAddress': shareEmailAddress!,
        if (title != null) 'title': title!,
      };
}

/// Information on when and how frequently to run a query.
class QuerySchedule {
  /// Date to periodically run the query until.
  ///
  /// Not applicable to `ONE_TIME` frequency.
  Date? endDate;

  /// How often the query is run.
  /// Possible string values are:
  /// - "FREQUENCY_UNSPECIFIED" : Default value when frequency is not specified
  /// or is unknown in this version.
  /// - "ONE_TIME" : Only once.
  /// - "DAILY" : Once a day.
  /// - "WEEKLY" : Once a week.
  /// - "SEMI_MONTHLY" : Twice a month.
  /// - "MONTHLY" : Once a month.
  /// - "QUARTERLY" : Once a quarter
  /// - "YEARLY" : Once a year.
  core.String? frequency;

  /// Canonical timezone code for report generation time.
  ///
  /// Defaults to `America/New_York`.
  core.String? nextRunTimezoneCode;

  /// When to start running the query.
  ///
  /// Not applicable to `ONE_TIME` frequency.
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
          frequency: json_.containsKey('frequency')
              ? json_['frequency'] as core.String
              : null,
          nextRunTimezoneCode: json_.containsKey('nextRunTimezoneCode')
              ? json_['nextRunTimezoneCode'] as core.String
              : null,
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

/// Represents a report.
class Report {
  /// Key used to identify a report.
  ReportKey? key;

  /// Report metadata.
  ReportMetadata? metadata;

  /// Report parameters.
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

/// Key used to identify a report.
class ReportKey {
  /// Query ID.
  ///
  /// Output only.
  core.String? queryId;

  /// Report ID.
  ///
  /// Output only.
  core.String? reportId;

  ReportKey({
    this.queryId,
    this.reportId,
  });

  ReportKey.fromJson(core.Map json_)
      : this(
          queryId: json_.containsKey('queryId')
              ? json_['queryId'] as core.String
              : null,
          reportId: json_.containsKey('reportId')
              ? json_['reportId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryId != null) 'queryId': queryId!,
        if (reportId != null) 'reportId': reportId!,
      };
}

/// Report metadata.
class ReportMetadata {
  /// The path to the location in Google Cloud Storage where the report is
  /// stored.
  ///
  /// Output only.
  core.String? googleCloudStoragePath;

  /// The ending time for the data that is shown in the report.
  Date? reportDataEndDate;

  /// The starting time for the data that is shown in the report.
  Date? reportDataStartDate;

  /// Report status.
  ReportStatus? status;

  ReportMetadata({
    this.googleCloudStoragePath,
    this.reportDataEndDate,
    this.reportDataStartDate,
    this.status,
  });

  ReportMetadata.fromJson(core.Map json_)
      : this(
          googleCloudStoragePath: json_.containsKey('googleCloudStoragePath')
              ? json_['googleCloudStoragePath'] as core.String
              : null,
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

/// Report status.
class ReportStatus {
  /// The time when this report either completed successfully or failed.
  ///
  /// Output only.
  core.String? finishTime;

  /// The file type of the report.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Default value when format is not specified or is
  /// unknown in this version.
  /// - "CSV" : CSV.
  /// - "XLSX" : Excel.
  core.String? format;

  /// The state of the report.
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
          finishTime: json_.containsKey('finishTime')
              ? json_['finishTime'] as core.String
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (finishTime != null) 'finishTime': finishTime!,
        if (format != null) 'format': format!,
        if (state != null) 'state': state!,
      };
}

/// A Rule defines a name, and a boolean expression in
/// [conjunctive normal form](http://mathworld.wolfram.com/ConjunctiveNormalForm.html){.external}
/// that can be applied to a path event to determine if that name should be
/// applied.
class Rule {
  /// DisjunctiveMatchStatements within a Rule.
  ///
  /// DisjunctiveMatchStatement OR's all contained filters.
  core.List<DisjunctiveMatchStatement>? disjunctiveMatchStatements;

  /// Rule name.
  core.String? name;

  Rule({
    this.disjunctiveMatchStatements,
    this.name,
  });

  Rule.fromJson(core.Map json_)
      : this(
          disjunctiveMatchStatements:
              json_.containsKey('disjunctiveMatchStatements')
                  ? (json_['disjunctiveMatchStatements'] as core.List)
                      .map((value) => DisjunctiveMatchStatement.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disjunctiveMatchStatements != null)
          'disjunctiveMatchStatements': disjunctiveMatchStatements!,
        if (name != null) 'name': name!,
      };
}

/// Request to run a stored query to generate a report.
class RunQueryRequest {
  /// Report data range used to generate the report.
  ///
  /// If unspecified, the original parent query's data range is used.
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
