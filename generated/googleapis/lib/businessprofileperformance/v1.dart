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

/// Business Profile Performance API - v1
///
/// The Business Profile Performance API allows merchants to fetch performance
/// reports about their business profile on Google.
///
/// For more information, see <https://developers.google.com/my-business/>
///
/// Create an instance of [BusinessProfilePerformanceApi] to access these
/// resources:
///
/// - [LocationsResource]
///   - [LocationsSearchkeywordsResource]
///     - [LocationsSearchkeywordsImpressionsResource]
///       - [LocationsSearchkeywordsImpressionsMonthlyResource]
library businessprofileperformance.v1;

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

/// The Business Profile Performance API allows merchants to fetch performance
/// reports about their business profile on Google.
class BusinessProfilePerformanceApi {
  final commons.ApiRequester _requester;

  LocationsResource get locations => LocationsResource(_requester);

  BusinessProfilePerformanceApi(http.Client client,
      {core.String rootUrl =
          'https://businessprofileperformance.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsSearchkeywordsResource get searchkeywords =>
      LocationsSearchkeywordsResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the values for each date from a given time range that are
  /// associated with the specific daily metric.
  ///
  /// Example request: `GET
  /// https://businessprofileperformance.googleapis.com/v1/locations/12345:getDailyMetricsTimeSeries?dailyMetric=WEBSITE_CLICKS&daily_range.start_date.year=2022&daily_range.start_date.month=1&daily_range.start_date.day=1&daily_range.end_date.year=2022&daily_range.end_date.month=3&daily_range.end_date.day=31`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The location for which the time series should be
  /// fetched. Format: locations/{location_id} where location_id is an
  /// unobfuscated listing id.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [dailyMetric] - Required. The metric to retrieve time series.
  /// Possible string values are:
  /// - "DAILY_METRIC_UNKNOWN" : Represents the default unknown value.
  /// - "BUSINESS_IMPRESSIONS_DESKTOP_MAPS" : Business impressions on Google
  /// Maps on Desktop devices. Multiple impressions by a unique user within a
  /// single day are counted as a single impression.
  /// - "BUSINESS_IMPRESSIONS_DESKTOP_SEARCH" : Business impressions on Google
  /// Search on Desktop devices. Multiple impressions by a unique user within a
  /// single day are counted as a single impression.
  /// - "BUSINESS_IMPRESSIONS_MOBILE_MAPS" : Business impressions on Google Maps
  /// on Mobile devices. Multiple impressions by a unique user within a single
  /// day are counted as a single impression.
  /// - "BUSINESS_IMPRESSIONS_MOBILE_SEARCH" : Business impressions on Google
  /// Search on Mobile devices. Multiple impressions by a unique user within a
  /// single day are counted as a single impression.
  /// - "BUSINESS_CONVERSATIONS" : The number of message conversations received
  /// on the business profile.
  /// - "BUSINESS_DIRECTION_REQUESTS" : The number of times a direction request
  /// was requested to the business location.
  /// - "CALL_CLICKS" : The number of times the business profile call button was
  /// clicked.
  /// - "WEBSITE_CLICKS" : The number of times the business profile website was
  /// clicked.
  /// - "BUSINESS_BOOKINGS" : The number of bookings received from the business
  /// profile.
  /// - "BUSINESS_FOOD_ORDERS" : The number of food orders received from the
  /// business profile.
  ///
  /// [dailyRange_endDate_day] - Day of a month. Must be from 1 to 31 and valid
  /// for the year and month, or 0 to specify a year by itself or a year and
  /// month where the day isn't significant.
  ///
  /// [dailyRange_endDate_month] - Month of a year. Must be from 1 to 12, or 0
  /// to specify a year without a month and day.
  ///
  /// [dailyRange_endDate_year] - Year of the date. Must be from 1 to 9999, or 0
  /// to specify a date without a year.
  ///
  /// [dailyRange_startDate_day] - Day of a month. Must be from 1 to 31 and
  /// valid for the year and month, or 0 to specify a year by itself or a year
  /// and month where the day isn't significant.
  ///
  /// [dailyRange_startDate_month] - Month of a year. Must be from 1 to 12, or 0
  /// to specify a year without a month and day.
  ///
  /// [dailyRange_startDate_year] - Year of the date. Must be from 1 to 9999, or
  /// 0 to specify a date without a year.
  ///
  /// [dailySubEntityType_dayOfWeek] - Represents the day of the week. Eg:
  /// MONDAY.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  ///
  /// [dailySubEntityType_timeOfDay_hours] - Hours of day in 24 hour format.
  /// Should be from 0 to 23. An API may choose to allow the value "24:00:00"
  /// for scenarios like business closing time.
  ///
  /// [dailySubEntityType_timeOfDay_minutes] - Minutes of hour of day. Must be
  /// from 0 to 59.
  ///
  /// [dailySubEntityType_timeOfDay_nanos] - Fractions of seconds in
  /// nanoseconds. Must be from 0 to 999,999,999.
  ///
  /// [dailySubEntityType_timeOfDay_seconds] - Seconds of minutes of the time.
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetDailyMetricsTimeSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetDailyMetricsTimeSeriesResponse> getDailyMetricsTimeSeries(
    core.String name, {
    core.String? dailyMetric,
    core.int? dailyRange_endDate_day,
    core.int? dailyRange_endDate_month,
    core.int? dailyRange_endDate_year,
    core.int? dailyRange_startDate_day,
    core.int? dailyRange_startDate_month,
    core.int? dailyRange_startDate_year,
    core.String? dailySubEntityType_dayOfWeek,
    core.int? dailySubEntityType_timeOfDay_hours,
    core.int? dailySubEntityType_timeOfDay_minutes,
    core.int? dailySubEntityType_timeOfDay_nanos,
    core.int? dailySubEntityType_timeOfDay_seconds,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (dailyMetric != null) 'dailyMetric': [dailyMetric],
      if (dailyRange_endDate_day != null)
        'dailyRange.endDate.day': ['${dailyRange_endDate_day}'],
      if (dailyRange_endDate_month != null)
        'dailyRange.endDate.month': ['${dailyRange_endDate_month}'],
      if (dailyRange_endDate_year != null)
        'dailyRange.endDate.year': ['${dailyRange_endDate_year}'],
      if (dailyRange_startDate_day != null)
        'dailyRange.startDate.day': ['${dailyRange_startDate_day}'],
      if (dailyRange_startDate_month != null)
        'dailyRange.startDate.month': ['${dailyRange_startDate_month}'],
      if (dailyRange_startDate_year != null)
        'dailyRange.startDate.year': ['${dailyRange_startDate_year}'],
      if (dailySubEntityType_dayOfWeek != null)
        'dailySubEntityType.dayOfWeek': [dailySubEntityType_dayOfWeek],
      if (dailySubEntityType_timeOfDay_hours != null)
        'dailySubEntityType.timeOfDay.hours': [
          '${dailySubEntityType_timeOfDay_hours}'
        ],
      if (dailySubEntityType_timeOfDay_minutes != null)
        'dailySubEntityType.timeOfDay.minutes': [
          '${dailySubEntityType_timeOfDay_minutes}'
        ],
      if (dailySubEntityType_timeOfDay_nanos != null)
        'dailySubEntityType.timeOfDay.nanos': [
          '${dailySubEntityType_timeOfDay_nanos}'
        ],
      if (dailySubEntityType_timeOfDay_seconds != null)
        'dailySubEntityType.timeOfDay.seconds': [
          '${dailySubEntityType_timeOfDay_seconds}'
        ],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$name') + ':getDailyMetricsTimeSeries';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetDailyMetricsTimeSeriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LocationsSearchkeywordsResource {
  final commons.ApiRequester _requester;

  LocationsSearchkeywordsImpressionsResource get impressions =>
      LocationsSearchkeywordsImpressionsResource(_requester);

  LocationsSearchkeywordsResource(commons.ApiRequester client)
      : _requester = client;
}

class LocationsSearchkeywordsImpressionsResource {
  final commons.ApiRequester _requester;

  LocationsSearchkeywordsImpressionsMonthlyResource get monthly =>
      LocationsSearchkeywordsImpressionsMonthlyResource(_requester);

  LocationsSearchkeywordsImpressionsResource(commons.ApiRequester client)
      : _requester = client;
}

class LocationsSearchkeywordsImpressionsMonthlyResource {
  final commons.ApiRequester _requester;

  LocationsSearchkeywordsImpressionsMonthlyResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the search keywords used to find a business in search or maps.
  ///
  /// Each search keyword is accompanied by impressions which are aggregated on
  /// a monthly basis. Example request: `GET
  /// https://businessprofileperformance.googleapis.com/v1/locations/12345/searchkeywords/impressions/monthly?monthly_range.start_month.year=2022&monthly_range.start_month.month=1&monthly_range.end_month.year=2022&monthly_range.end_month.month=3`
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location for which the time series should be
  /// fetched. Format: locations/{location_id} where location_id is an
  /// unobfuscated listing id.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [monthlyRange_endMonth_day] - Day of a month. Must be from 1 to 31 and
  /// valid for the year and month, or 0 to specify a year by itself or a year
  /// and month where the day isn't significant.
  ///
  /// [monthlyRange_endMonth_month] - Month of a year. Must be from 1 to 12, or
  /// 0 to specify a year without a month and day.
  ///
  /// [monthlyRange_endMonth_year] - Year of the date. Must be from 1 to 9999,
  /// or 0 to specify a date without a year.
  ///
  /// [monthlyRange_startMonth_day] - Day of a month. Must be from 1 to 31 and
  /// valid for the year and month, or 0 to specify a year by itself or a year
  /// and month where the day isn't significant.
  ///
  /// [monthlyRange_startMonth_month] - Month of a year. Must be from 1 to 12,
  /// or 0 to specify a year without a month and day.
  ///
  /// [monthlyRange_startMonth_year] - Year of the date. Must be from 1 to 9999,
  /// or 0 to specify a date without a year.
  ///
  /// [pageSize] - Optional. The number of results requested. The default page
  /// size is 100. Page size can be set to a maximum of 100.
  ///
  /// [pageToken] - Optional. A token indicating the next paginated result to be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSearchKeywordImpressionsMonthlyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSearchKeywordImpressionsMonthlyResponse> list(
    core.String parent, {
    core.int? monthlyRange_endMonth_day,
    core.int? monthlyRange_endMonth_month,
    core.int? monthlyRange_endMonth_year,
    core.int? monthlyRange_startMonth_day,
    core.int? monthlyRange_startMonth_month,
    core.int? monthlyRange_startMonth_year,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (monthlyRange_endMonth_day != null)
        'monthlyRange.endMonth.day': ['${monthlyRange_endMonth_day}'],
      if (monthlyRange_endMonth_month != null)
        'monthlyRange.endMonth.month': ['${monthlyRange_endMonth_month}'],
      if (monthlyRange_endMonth_year != null)
        'monthlyRange.endMonth.year': ['${monthlyRange_endMonth_year}'],
      if (monthlyRange_startMonth_day != null)
        'monthlyRange.startMonth.day': ['${monthlyRange_startMonth_day}'],
      if (monthlyRange_startMonth_month != null)
        'monthlyRange.startMonth.month': ['${monthlyRange_startMonth_month}'],
      if (monthlyRange_startMonth_year != null)
        'monthlyRange.startMonth.year': ['${monthlyRange_startMonth_year}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/searchkeywords/impressions/monthly';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSearchKeywordImpressionsMonthlyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

/// Represents a single datapoint in the timeseries, where each datapoint is a
/// date-value pair.
class DatedValue {
  /// The date that the datapoint corresponds to.
  ///
  /// This represents a month value if the day field is not set.
  Date? date;

  /// The value of the datapoint.
  core.String? value;

  DatedValue({
    this.date,
    this.value,
  });

  DatedValue.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (value != null) 'value': value!,
      };
}

/// Represents the response for GetDailyMetricsTimeSeries.
class GetDailyMetricsTimeSeriesResponse {
  /// The daily time series.
  TimeSeries? timeSeries;

  GetDailyMetricsTimeSeriesResponse({
    this.timeSeries,
  });

  GetDailyMetricsTimeSeriesResponse.fromJson(core.Map _json)
      : this(
          timeSeries: _json.containsKey('timeSeries')
              ? TimeSeries.fromJson(
                  _json['timeSeries'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (timeSeries != null) 'timeSeries': timeSeries!,
      };
}

/// Represents an insights value.
class InsightsValue {
  /// Represents the threshold below which the actual value falls.
  core.String? threshold;

  /// Represents the actual value.
  core.String? value;

  InsightsValue({
    this.threshold,
    this.value,
  });

  InsightsValue.fromJson(core.Map _json)
      : this(
          threshold: _json.containsKey('threshold')
              ? _json['threshold'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (threshold != null) 'threshold': threshold!,
        if (value != null) 'value': value!,
      };
}

/// Represents the response for ListSearchKeywordImpressionsMonthly.
class ListSearchKeywordImpressionsMonthlyResponse {
  /// A token indicating the last paginated result returned.
  ///
  /// This can be used by succeeding requests to get the next "page" of
  /// keywords. It will only be present when there are more results to be
  /// returned.
  core.String? nextPageToken;
  core.List<core.int> get nextPageTokenAsBytes =>
      convert.base64.decode(nextPageToken!);

  set nextPageTokenAsBytes(core.List<core.int> _bytes) {
    nextPageToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Search terms which have been used to find a business.
  core.List<SearchKeywordCount>? searchKeywordsCounts;

  ListSearchKeywordImpressionsMonthlyResponse({
    this.nextPageToken,
    this.searchKeywordsCounts,
  });

  ListSearchKeywordImpressionsMonthlyResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          searchKeywordsCounts: _json.containsKey('searchKeywordsCounts')
              ? (_json['searchKeywordsCounts'] as core.List)
                  .map((value) => SearchKeywordCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (searchKeywordsCounts != null)
          'searchKeywordsCounts': searchKeywordsCounts!,
      };
}

/// Represents a single search keyword and its value.
class SearchKeywordCount {
  /// One of either: 1) The sum of the number of unique users that used the
  /// keyword in a month, aggregated for each month requested.
  ///
  /// 2) A threshold that indicates that the actual value is below this
  /// threshold.
  InsightsValue? insightsValue;

  /// The lower-cased string that the user entered.
  core.String? searchKeyword;

  SearchKeywordCount({
    this.insightsValue,
    this.searchKeyword,
  });

  SearchKeywordCount.fromJson(core.Map _json)
      : this(
          insightsValue: _json.containsKey('insightsValue')
              ? InsightsValue.fromJson(
                  _json['insightsValue'] as core.Map<core.String, core.dynamic>)
              : null,
          searchKeyword: _json.containsKey('searchKeyword')
              ? _json['searchKeyword'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insightsValue != null) 'insightsValue': insightsValue!,
        if (searchKeyword != null) 'searchKeyword': searchKeyword!,
      };
}

/// Represents a timeseries.
class TimeSeries {
  /// List of datapoints in the timeseries, where each datapoint is a date-value
  /// pair.
  core.List<DatedValue>? datedValues;

  TimeSeries({
    this.datedValues,
  });

  TimeSeries.fromJson(core.Map _json)
      : this(
          datedValues: _json.containsKey('datedValues')
              ? (_json['datedValues'] as core.List)
                  .map((value) => DatedValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datedValues != null) 'datedValues': datedValues!,
      };
}
