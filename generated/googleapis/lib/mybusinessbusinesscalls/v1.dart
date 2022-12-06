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

/// My Business Business Calls API - v1
///
/// The My Business Business Calls API manages business calls information of a
/// location on Google and collect insights like the number of missed calls to
/// their location. Additional information about Business calls can be found at
/// https://support.google.com/business/answer/9688285?p=call_history. If the
/// Google Business Profile links to a Google Ads account and call history is
/// turned on, calls that last longer than a specific time, and that can be
/// attributed to an ad interaction, will show in the linked Google Ads account
/// under the "Calls from Ads" conversion. If smart bidding and call conversions
/// are used in the optimization strategy, there could be a change in ad spend.
/// Learn more about smart bidding. To view and perform actions on a location's
/// calls, you need to be a `OWNER`, `CO_OWNER` or `MANAGER` of the location.
/// Note - If you have a quota of 0 after enabling the API, please request for
/// GBP API access.
///
/// For more information, see <https://developers.google.com/my-business/>
///
/// Create an instance of [MyBusinessBusinessCallsApi] to access these
/// resources:
///
/// - [LocationsResource]
///   - [LocationsBusinesscallsinsightsResource]
library mybusinessbusinesscalls.v1;

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

/// The My Business Business Calls API manages business calls information of a
/// location on Google and collect insights like the number of missed calls to
/// their location.
///
/// Additional information about Business calls can be found at
/// https://support.google.com/business/answer/9688285?p=call_history. If the
/// Google Business Profile links to a Google Ads account and call history is
/// turned on, calls that last longer than a specific time, and that can be
/// attributed to an ad interaction, will show in the linked Google Ads account
/// under the "Calls from Ads" conversion. If smart bidding and call conversions
/// are used in the optimization strategy, there could be a change in ad spend.
/// Learn more about smart bidding. To view and perform actions on a location's
/// calls, you need to be a `OWNER`, `CO_OWNER` or `MANAGER` of the location.
/// Note - If you have a quota of 0 after enabling the API, please request for
/// GBP API access.
class MyBusinessBusinessCallsApi {
  final commons.ApiRequester _requester;

  LocationsResource get locations => LocationsResource(_requester);

  MyBusinessBusinessCallsApi(http.Client client,
      {core.String rootUrl = 'https://mybusinessbusinesscalls.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsBusinesscallsinsightsResource get businesscallsinsights =>
      LocationsBusinesscallsinsightsResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the Business calls settings resource for the given location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The BusinessCallsSettings to get. The `name` field is
  /// used to identify the business call settings to get. Format:
  /// locations/{location_id}/businesscallssettings.
  /// Value must have pattern `^locations/\[^/\]+/businesscallssettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BusinessCallsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BusinessCallsSettings> getBusinesscallssettings(
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
    return BusinessCallsSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Business call settings for the specified location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the calls settings. Format:
  /// locations/{location}/businesscallssettings
  /// Value must have pattern `^locations/\[^/\]+/businesscallssettings$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BusinessCallsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BusinessCallsSettings> updateBusinesscallssettings(
    BusinessCallsSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return BusinessCallsSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsBusinesscallsinsightsResource {
  final commons.ApiRequester _requester;

  LocationsBusinesscallsinsightsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns insights for Business calls for a location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location to fetch calls insights for.
  /// Format: locations/{location_id}
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter constraining the calls insights to return.
  /// The response includes only entries that match the filter. If the
  /// MetricType is not provided, AGGREGATE_COUNT is returned. If no end_date is
  /// provided, the last date for which data is available is used. If no
  /// start_date is provided, we will default to the first date for which data
  /// is available, which is currently 6 months. If start_date is before the
  /// date when data is available, data is returned starting from the date when
  /// it is available. At this time we support following filters. 1.
  /// start_date="DATE" where date is in YYYY-MM-DD format. 2. end_date="DATE"
  /// where date is in YYYY-MM-DD format. 3. metric_type=XYZ where XYZ is a
  /// valid MetricType. 4. Conjunctions(AND) of all of the above. e.g.,
  /// "start_date=2021-08-01 AND end_date=2021-08-10 AND
  /// metric_type=AGGREGATE_COUNT" The AGGREGATE_COUNT metric_type ignores the
  /// DD part of the date.
  ///
  /// [pageSize] - Optional. The maximum number of BusinessCallsInsights to
  /// return. If unspecified, at most 20 will be returned. Some of the
  /// metric_types(e.g, AGGREGATE_COUNT) returns a single page. For these
  /// metrics, the page_size is ignored.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListBusinessCallsInsights` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListBusinessCallsInsights` must match the call that provided the page
  /// token. Some of the metric_types (e.g, AGGREGATE_COUNT) returns a single
  /// page. For these metrics, the pake_token is ignored.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBusinessCallsInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBusinessCallsInsightsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/businesscallsinsights';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBusinessCallsInsightsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Metrics aggregated over the input time range.
class AggregateMetrics {
  /// Total count of answered calls.
  core.int? answeredCallsCount;

  /// End date for this metric.
  Date? endDate;

  /// A list of metrics by hour of day.
  core.List<HourlyMetrics>? hourlyMetrics;

  /// Total count of missed calls.
  core.int? missedCallsCount;

  /// Date for this metric.
  ///
  /// If metric is monthly, only year and month are used.
  Date? startDate;

  /// A list of metrics by day of week.
  core.List<WeekDayMetrics>? weekdayMetrics;

  AggregateMetrics({
    this.answeredCallsCount,
    this.endDate,
    this.hourlyMetrics,
    this.missedCallsCount,
    this.startDate,
    this.weekdayMetrics,
  });

  AggregateMetrics.fromJson(core.Map json_)
      : this(
          answeredCallsCount: json_.containsKey('answeredCallsCount')
              ? json_['answeredCallsCount'] as core.int
              : null,
          endDate: json_.containsKey('endDate')
              ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          hourlyMetrics: json_.containsKey('hourlyMetrics')
              ? (json_['hourlyMetrics'] as core.List)
                  .map((value) => HourlyMetrics.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          missedCallsCount: json_.containsKey('missedCallsCount')
              ? json_['missedCallsCount'] as core.int
              : null,
          startDate: json_.containsKey('startDate')
              ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
          weekdayMetrics: json_.containsKey('weekdayMetrics')
              ? (json_['weekdayMetrics'] as core.List)
                  .map((value) => WeekDayMetrics.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answeredCallsCount != null)
          'answeredCallsCount': answeredCallsCount!,
        if (endDate != null) 'endDate': endDate!,
        if (hourlyMetrics != null) 'hourlyMetrics': hourlyMetrics!,
        if (missedCallsCount != null) 'missedCallsCount': missedCallsCount!,
        if (startDate != null) 'startDate': startDate!,
        if (weekdayMetrics != null) 'weekdayMetrics': weekdayMetrics!,
      };
}

/// Insights for calls made to a location.
class BusinessCallsInsights {
  /// Metric for the time range based on start_date and end_date.
  AggregateMetrics? aggregateMetrics;

  /// The metric for which the value applies.
  /// Possible string values are:
  /// - "METRIC_TYPE_UNSPECIFIED" : Type of metric is unspecified.
  /// - "AGGREGATE_COUNT" : The metrics provided are counts aggregated over the
  /// input time_range.
  core.String? metricType;

  /// The resource name of the calls insights.
  ///
  /// Format: locations/{location}/businesscallsinsights
  ///
  /// Required.
  core.String? name;

  BusinessCallsInsights({
    this.aggregateMetrics,
    this.metricType,
    this.name,
  });

  BusinessCallsInsights.fromJson(core.Map json_)
      : this(
          aggregateMetrics: json_.containsKey('aggregateMetrics')
              ? AggregateMetrics.fromJson(json_['aggregateMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metricType: json_.containsKey('metricType')
              ? json_['metricType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateMetrics != null) 'aggregateMetrics': aggregateMetrics!,
        if (metricType != null) 'metricType': metricType!,
        if (name != null) 'name': name!,
      };
}

/// Business calls settings for a location.
class BusinessCallsSettings {
  /// The state of this location's enrollment in Business calls.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CALLS_STATE_UNSPECIFIED" : Unspecified.
  /// - "ENABLED" : Business calls is enabled for the location.
  /// - "DISABLED" : Business calls is disabled for the location.
  core.String? callsState;

  /// Input only.
  ///
  /// Time when the end user provided consent to the API user to enable business
  /// calls.
  core.String? consentTime;

  /// The resource name of the calls settings.
  ///
  /// Format: locations/{location}/businesscallssettings
  ///
  /// Required.
  core.String? name;

  BusinessCallsSettings({
    this.callsState,
    this.consentTime,
    this.name,
  });

  BusinessCallsSettings.fromJson(core.Map json_)
      : this(
          callsState: json_.containsKey('callsState')
              ? json_['callsState'] as core.String
              : null,
          consentTime: json_.containsKey('consentTime')
              ? json_['consentTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callsState != null) 'callsState': callsState!,
        if (consentTime != null) 'consentTime': consentTime!,
        if (name != null) 'name': name!,
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

/// Metrics for an hour.
class HourlyMetrics {
  /// Hour of the day.
  ///
  /// Allowed values are 0-23.
  core.int? hour;

  /// Total count of missed calls for this hour.
  core.int? missedCallsCount;

  HourlyMetrics({
    this.hour,
    this.missedCallsCount,
  });

  HourlyMetrics.fromJson(core.Map json_)
      : this(
          hour: json_.containsKey('hour') ? json_['hour'] as core.int : null,
          missedCallsCount: json_.containsKey('missedCallsCount')
              ? json_['missedCallsCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hour != null) 'hour': hour!,
        if (missedCallsCount != null) 'missedCallsCount': missedCallsCount!,
      };
}

/// Response message for ListBusinessCallsInsights.
class ListBusinessCallsInsightsResponse {
  /// A collection of business calls insights for the location.
  core.List<BusinessCallsInsights>? businessCallsInsights;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. Some of the
  /// metric_types (e.g, AGGREGATE_COUNT) returns a single page. For these
  /// metrics, the next_page_token will be empty.
  core.String? nextPageToken;

  ListBusinessCallsInsightsResponse({
    this.businessCallsInsights,
    this.nextPageToken,
  });

  ListBusinessCallsInsightsResponse.fromJson(core.Map json_)
      : this(
          businessCallsInsights: json_.containsKey('businessCallsInsights')
              ? (json_['businessCallsInsights'] as core.List)
                  .map((value) => BusinessCallsInsights.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessCallsInsights != null)
          'businessCallsInsights': businessCallsInsights!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Metrics for a week day.
class WeekDayMetrics {
  /// Day of the week.
  ///
  /// Allowed values are Sunday - Saturday.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? day;

  /// Total count of missed calls for this hour.
  core.int? missedCallsCount;

  WeekDayMetrics({
    this.day,
    this.missedCallsCount,
  });

  WeekDayMetrics.fromJson(core.Map json_)
      : this(
          day: json_.containsKey('day') ? json_['day'] as core.String : null,
          missedCallsCount: json_.containsKey('missedCallsCount')
              ? json_['missedCallsCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (missedCallsCount != null) 'missedCallsCount': missedCallsCount!,
      };
}
