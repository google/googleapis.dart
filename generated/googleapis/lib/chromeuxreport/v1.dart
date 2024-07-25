// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Chrome UX Report API - v1
///
/// The Chrome UX Report API lets you view real user experience data for
/// millions of websites.
///
/// For more information, see
/// <https://developers.google.com/web/tools/chrome-user-experience-report/api/reference>
///
/// Create an instance of [ChromeUXReportApi] to access these resources:
///
/// - [RecordsResource]
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

/// The Chrome UX Report API lets you view real user experience data for
/// millions of websites.
class ChromeUXReportApi {
  final commons.ApiRequester _requester;

  RecordsResource get records => RecordsResource(_requester);

  ChromeUXReportApi(http.Client client,
      {core.String rootUrl = 'https://chromeuxreport.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class RecordsResource {
  final commons.ApiRequester _requester;

  RecordsResource(commons.ApiRequester client) : _requester = client;

  /// Queries the Chrome User Experience Report for a timeseries `history
  /// record` for a given site.
  ///
  /// Returns a `history record` that contains one or more `metric timeseries`
  /// corresponding to performance data about the requested site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryHistoryResponse> queryHistoryRecord(
    QueryHistoryRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/records:queryHistoryRecord';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryHistoryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Queries the Chrome User Experience for a single `record` for a given site.
  ///
  /// Returns a `record` that contains one or more `metrics` corresponding to
  /// performance data about the requested site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryResponse> queryRecord(
    QueryRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/records:queryRecord';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A bin is a discrete portion of data spanning from start to end, or if no end
/// is given, then from start to +inf.
///
/// A bin's start and end values are given in the value type of the metric it
/// represents. For example, "first contentful paint" is measured in
/// milliseconds and exposed as ints, therefore its metric bins will use int32s
/// for its start and end types. However, "cumulative layout shift" is measured
/// in unitless decimals and is exposed as a decimal encoded as a string,
/// therefore its metric bins will use strings for its value type.
class Bin {
  /// The proportion of users that experienced this bin's value for the given
  /// metric.
  core.double? density;

  /// End is the end of the data bin.
  ///
  /// If end is not populated, then the bin has no end and is valid from start
  /// to +inf.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? end;

  /// Start is the beginning of the data bin.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? start;

  Bin({
    this.density,
    this.end,
    this.start,
  });

  Bin.fromJson(core.Map json_)
      : this(
          density: (json_['density'] as core.num?)?.toDouble(),
          end: json_['end'],
          start: json_['start'],
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (density != null) 'density': density!,
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// The collection period is a date range which includes the `first` and `last`
/// day.
class CollectionPeriod {
  /// The first day in the collection period, inclusive.
  Date? firstDate;

  /// The last day in the collection period, inclusive.
  Date? lastDate;

  CollectionPeriod({
    this.firstDate,
    this.lastDate,
  });

  CollectionPeriod.fromJson(core.Map json_)
      : this(
          firstDate: json_.containsKey('firstDate')
              ? Date.fromJson(
                  json_['firstDate'] as core.Map<core.String, core.dynamic>)
              : null,
          lastDate: json_.containsKey('lastDate')
              ? Date.fromJson(
                  json_['lastDate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstDate != null) 'firstDate': firstDate!,
        if (lastDate != null) 'lastDate': lastDate!,
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

/// For enum metrics, provides fraction timeseries which add up to approximately
/// 1.0 per entry (k-th element into the repeated fractions field for any k \<=
/// len) across fraction_timeseries.
class FractionTimeseries {
  /// Values between 0.0 and 1.0 (inclusive) and NaN.
  core.List<core.double>? fractions;

  FractionTimeseries({
    this.fractions,
  });

  FractionTimeseries.fromJson(core.Map json_)
      : this(
          fractions: (json_['fractions'] as core.List?)
              ?.map((value) => (value as core.num).toDouble())
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fractions != null) 'fractions': fractions!,
      };
}

/// Key defines all the dimensions that identify this record as unique.
class HistoryKey {
  /// The form factor is the device class that all users used to access the site
  /// for this record.
  ///
  /// If the form factor is unspecified, then aggregated data over all form
  /// factors will be returned.
  /// Possible string values are:
  /// - "ALL_FORM_FACTORS" : The default value, representing all device classes.
  /// - "PHONE" : The device class representing a "mobile"/"phone" sized client.
  /// - "DESKTOP" : The device class representing a "desktop"/"laptop" type full
  /// size client.
  /// - "TABLET" : The device class representing a "tablet" type client.
  core.String? formFactor;

  /// Origin specifies the origin that this record is for.
  ///
  /// Note: When specifying an origin, data for loads under this origin over all
  /// pages are aggregated into origin level user experience data.
  core.String? origin;

  /// Url specifies a specific url that this record is for.
  ///
  /// This url should be normalized, following the normalization actions taken
  /// in the request to increase the chances of successful lookup. Note: When
  /// specifying a "url" only data for that specific url will be aggregated.
  core.String? url;

  HistoryKey({
    this.formFactor,
    this.origin,
    this.url,
  });

  HistoryKey.fromJson(core.Map json_)
      : this(
          formFactor: json_['formFactor'] as core.String?,
          origin: json_['origin'] as core.String?,
          url: json_['url'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formFactor != null) 'formFactor': formFactor!,
        if (origin != null) 'origin': origin!,
        if (url != null) 'url': url!,
      };
}

/// HistoryRecord is a timeseries of Chrome UX Report data.
///
/// It contains user experience statistics for a single url pattern and a set of
/// dimensions.
class HistoryRecord {
  /// The collection periods indicate when each of the data points reflected in
  /// the time series data in metrics was collected.
  ///
  /// Note that all the time series share the same collection periods, and it is
  /// enforced in the CrUX pipeline that every time series has the same number
  /// of data points.
  core.List<CollectionPeriod>? collectionPeriods;

  /// Key defines all of the unique querying parameters needed to look up a user
  /// experience history record.
  HistoryKey? key;

  /// Metrics is the map of user experience time series data available for the
  /// record defined in the key field.
  ///
  /// Metrics are keyed on the metric name. Allowed key values:
  /// \["first_contentful_paint", "first_input_delay",
  /// "largest_contentful_paint", "cumulative_layout_shift",
  /// "experimental_time_to_first_byte",
  /// "experimental_interaction_to_next_paint"\]
  core.Map<core.String, MetricTimeseries>? metrics;

  HistoryRecord({
    this.collectionPeriods,
    this.key,
    this.metrics,
  });

  HistoryRecord.fromJson(core.Map json_)
      : this(
          collectionPeriods: (json_['collectionPeriods'] as core.List?)
              ?.map((value) => CollectionPeriod.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          key: json_.containsKey('key')
              ? HistoryKey.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>)
              : null,
          metrics:
              (json_['metrics'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              MetricTimeseries.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionPeriods != null) 'collectionPeriods': collectionPeriods!,
        if (key != null) 'key': key!,
        if (metrics != null) 'metrics': metrics!,
      };
}

/// Key defines all the dimensions that identify this record as unique.
class Key {
  /// The effective connection type is the general connection class that all
  /// users experienced for this record.
  ///
  /// This field uses the values \["offline", "slow-2G", "2G", "3G", "4G"\] as
  /// specified in: https://wicg.github.io/netinfo/#effective-connection-types
  /// If the effective connection type is unspecified, then aggregated data over
  /// all effective connection types will be returned.
  core.String? effectiveConnectionType;

  /// The form factor is the device class that all users used to access the site
  /// for this record.
  ///
  /// If the form factor is unspecified, then aggregated data over all form
  /// factors will be returned.
  /// Possible string values are:
  /// - "ALL_FORM_FACTORS" : The default value, representing all device classes.
  /// - "PHONE" : The device class representing a "mobile"/"phone" sized client.
  /// - "DESKTOP" : The device class representing a "desktop"/"laptop" type full
  /// size client.
  /// - "TABLET" : The device class representing a "tablet" type client.
  core.String? formFactor;

  /// Origin specifies the origin that this record is for.
  ///
  /// Note: When specifying an origin, data for loads under this origin over all
  /// pages are aggregated into origin level user experience data.
  core.String? origin;

  /// Url specifies a specific url that this record is for.
  ///
  /// Note: When specifying a "url" only data for that specific url will be
  /// aggregated.
  core.String? url;

  Key({
    this.effectiveConnectionType,
    this.formFactor,
    this.origin,
    this.url,
  });

  Key.fromJson(core.Map json_)
      : this(
          effectiveConnectionType:
              json_['effectiveConnectionType'] as core.String?,
          formFactor: json_['formFactor'] as core.String?,
          origin: json_['origin'] as core.String?,
          url: json_['url'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectiveConnectionType != null)
          'effectiveConnectionType': effectiveConnectionType!,
        if (formFactor != null) 'formFactor': formFactor!,
        if (origin != null) 'origin': origin!,
        if (url != null) 'url': url!,
      };
}

/// A `metric` is a set of user experience data for a single web performance
/// metric, like "first contentful paint".
///
/// It contains a summary histogram of real world Chrome usage as a series of
/// `bins`.
class Metric {
  /// For enum metrics, provides fractions which add up to approximately 1.0.
  core.Map<core.String, core.double>? fractions;

  /// The histogram of user experiences for a metric.
  ///
  /// The histogram will have at least one bin and the densities of all bins
  /// will add up to ~1.
  core.List<Bin>? histogram;

  /// Commonly useful percentiles of the Metric.
  ///
  /// The value type for the percentiles will be the same as the value types
  /// given for the Histogram bins.
  Percentiles? percentiles;

  Metric({
    this.fractions,
    this.histogram,
    this.percentiles,
  });

  Metric.fromJson(core.Map json_)
      : this(
          fractions:
              (json_['fractions'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              (value as core.num).toDouble(),
            ),
          ),
          histogram: (json_['histogram'] as core.List?)
              ?.map((value) =>
                  Bin.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          percentiles: json_.containsKey('percentiles')
              ? Percentiles.fromJson(
                  json_['percentiles'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fractions != null) 'fractions': fractions!,
        if (histogram != null) 'histogram': histogram!,
        if (percentiles != null) 'percentiles': percentiles!,
      };
}

/// A `metric timeseries` is a set of user experience data for a single web
/// performance metric, like "first contentful paint".
///
/// It contains a summary histogram of real world Chrome usage as a series of
/// `bins`, where each bin has density values for a particular time period.
class MetricTimeseries {
  /// Mapping from labels to timeseries of fractions attributed to this label.
  core.Map<core.String, FractionTimeseries>? fractionTimeseries;

  /// The histogram of user experiences for a metric.
  ///
  /// The histogram will have at least one bin and the densities of all bins
  /// will add up to ~1, for each timeseries entry.
  core.List<TimeseriesBin>? histogramTimeseries;

  /// Commonly useful percentiles of the Metric.
  ///
  /// The value type for the percentiles will be the same as the value types
  /// given for the Histogram bins.
  TimeseriesPercentiles? percentilesTimeseries;

  MetricTimeseries({
    this.fractionTimeseries,
    this.histogramTimeseries,
    this.percentilesTimeseries,
  });

  MetricTimeseries.fromJson(core.Map json_)
      : this(
          fractionTimeseries: (json_['fractionTimeseries']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              FractionTimeseries.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          histogramTimeseries: (json_['histogramTimeseries'] as core.List?)
              ?.map((value) => TimeseriesBin.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          percentilesTimeseries: json_.containsKey('percentilesTimeseries')
              ? TimeseriesPercentiles.fromJson(json_['percentilesTimeseries']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fractionTimeseries != null)
          'fractionTimeseries': fractionTimeseries!,
        if (histogramTimeseries != null)
          'histogramTimeseries': histogramTimeseries!,
        if (percentilesTimeseries != null)
          'percentilesTimeseries': percentilesTimeseries!,
      };
}

/// Percentiles contains synthetic values of a metric at a given statistical
/// percentile.
///
/// These are used for estimating a metric's value as experienced by a
/// percentage of users out of the total number of users.
class Percentiles {
  /// 75% of users experienced the given metric at or below this value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? p75;

  Percentiles({
    this.p75,
  });

  Percentiles.fromJson(core.Map json_)
      : this(
          p75: json_['p75'],
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (p75 != null) 'p75': p75!,
      };
}

/// Request payload sent by a physical web client.
///
/// This request includes all necessary context to load a particular user
/// experience history record.
class QueryHistoryRequest {
  /// The form factor is a query dimension that specifies the device class that
  /// the record's data should belong to.
  ///
  /// Note: If no form factor is specified, then a special record with
  /// aggregated data over all form factors will be returned.
  /// Possible string values are:
  /// - "ALL_FORM_FACTORS" : The default value, representing all device classes.
  /// - "PHONE" : The device class representing a "mobile"/"phone" sized client.
  /// - "DESKTOP" : The device class representing a "desktop"/"laptop" type full
  /// size client.
  /// - "TABLET" : The device class representing a "tablet" type client.
  core.String? formFactor;

  /// The metrics that should be included in the response.
  ///
  /// If none are specified then any metrics found will be returned. Allowed
  /// values: \["first_contentful_paint", "first_input_delay",
  /// "largest_contentful_paint", "cumulative_layout_shift",
  /// "experimental_time_to_first_byte",
  /// "experimental_interaction_to_next_paint"\]
  core.List<core.String>? metrics;

  /// The url pattern "origin" refers to a url pattern that is the origin of a
  /// website.
  ///
  /// Examples: "https://example.com", "https://cloud.google.com"
  core.String? origin;

  /// The url pattern "url" refers to a url pattern that is any arbitrary url.
  ///
  /// Examples: "https://example.com/",
  /// "https://cloud.google.com/why-google-cloud/"
  core.String? url;

  QueryHistoryRequest({
    this.formFactor,
    this.metrics,
    this.origin,
    this.url,
  });

  QueryHistoryRequest.fromJson(core.Map json_)
      : this(
          formFactor: json_['formFactor'] as core.String?,
          metrics: (json_['metrics'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          origin: json_['origin'] as core.String?,
          url: json_['url'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formFactor != null) 'formFactor': formFactor!,
        if (metrics != null) 'metrics': metrics!,
        if (origin != null) 'origin': origin!,
        if (url != null) 'url': url!,
      };
}

/// Response payload sent back to a physical web client.
///
/// This response contains the record found based on the identiers present in a
/// `QueryHistoryRequest`. The returned response will have a history record, and
/// sometimes details on normalization actions taken on the request that were
/// necessary to make the request successful.
class QueryHistoryResponse {
  /// The record that was found.
  HistoryRecord? record;

  /// These are details about automated normalization actions that were taken in
  /// order to make the requested `url_pattern` valid.
  UrlNormalization? urlNormalizationDetails;

  QueryHistoryResponse({
    this.record,
    this.urlNormalizationDetails,
  });

  QueryHistoryResponse.fromJson(core.Map json_)
      : this(
          record: json_.containsKey('record')
              ? HistoryRecord.fromJson(
                  json_['record'] as core.Map<core.String, core.dynamic>)
              : null,
          urlNormalizationDetails: json_.containsKey('urlNormalizationDetails')
              ? UrlNormalization.fromJson(json_['urlNormalizationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (record != null) 'record': record!,
        if (urlNormalizationDetails != null)
          'urlNormalizationDetails': urlNormalizationDetails!,
      };
}

/// Request payload sent by a physical web client.
///
/// This request includes all necessary context to load a particular user
/// experience record.
class QueryRequest {
  /// The effective connection type is a query dimension that specifies the
  /// effective network class that the record's data should belong to.
  ///
  /// This field uses the values \["offline", "slow-2G", "2G", "3G", "4G"\] as
  /// specified in: https://wicg.github.io/netinfo/#effective-connection-types
  /// Note: If no effective connection type is specified, then a special record
  /// with aggregated data over all effective connection types will be returned.
  core.String? effectiveConnectionType;

  /// The form factor is a query dimension that specifies the device class that
  /// the record's data should belong to.
  ///
  /// Note: If no form factor is specified, then a special record with
  /// aggregated data over all form factors will be returned.
  /// Possible string values are:
  /// - "ALL_FORM_FACTORS" : The default value, representing all device classes.
  /// - "PHONE" : The device class representing a "mobile"/"phone" sized client.
  /// - "DESKTOP" : The device class representing a "desktop"/"laptop" type full
  /// size client.
  /// - "TABLET" : The device class representing a "tablet" type client.
  core.String? formFactor;

  /// The metrics that should be included in the response.
  ///
  /// If none are specified then any metrics found will be returned. Allowed
  /// values: \["first_contentful_paint", "first_input_delay",
  /// "largest_contentful_paint", "cumulative_layout_shift",
  /// "experimental_time_to_first_byte",
  /// "experimental_interaction_to_next_paint"\]
  core.List<core.String>? metrics;

  /// The url pattern "origin" refers to a url pattern that is the origin of a
  /// website.
  ///
  /// Examples: "https://example.com", "https://cloud.google.com"
  core.String? origin;

  /// The url pattern "url" refers to a url pattern that is any arbitrary url.
  ///
  /// Examples: "https://example.com/",
  /// "https://cloud.google.com/why-google-cloud/"
  core.String? url;

  QueryRequest({
    this.effectiveConnectionType,
    this.formFactor,
    this.metrics,
    this.origin,
    this.url,
  });

  QueryRequest.fromJson(core.Map json_)
      : this(
          effectiveConnectionType:
              json_['effectiveConnectionType'] as core.String?,
          formFactor: json_['formFactor'] as core.String?,
          metrics: (json_['metrics'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          origin: json_['origin'] as core.String?,
          url: json_['url'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectiveConnectionType != null)
          'effectiveConnectionType': effectiveConnectionType!,
        if (formFactor != null) 'formFactor': formFactor!,
        if (metrics != null) 'metrics': metrics!,
        if (origin != null) 'origin': origin!,
        if (url != null) 'url': url!,
      };
}

/// Response payload sent back to a physical web client.
///
/// This response contains the record found based on the identiers present in a
/// `QueryRequest`. The returned response will have a record, and sometimes
/// details on normalization actions taken on the request that were necessary to
/// make the request successful.
class QueryResponse {
  /// The record that was found.
  Record? record;

  /// These are details about automated normalization actions that were taken in
  /// order to make the requested `url_pattern` valid.
  UrlNormalization? urlNormalizationDetails;

  QueryResponse({
    this.record,
    this.urlNormalizationDetails,
  });

  QueryResponse.fromJson(core.Map json_)
      : this(
          record: json_.containsKey('record')
              ? Record.fromJson(
                  json_['record'] as core.Map<core.String, core.dynamic>)
              : null,
          urlNormalizationDetails: json_.containsKey('urlNormalizationDetails')
              ? UrlNormalization.fromJson(json_['urlNormalizationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (record != null) 'record': record!,
        if (urlNormalizationDetails != null)
          'urlNormalizationDetails': urlNormalizationDetails!,
      };
}

/// Record is a single Chrome UX report data record.
///
/// It contains use experience statistics for a single url pattern and set of
/// dimensions.
class Record {
  /// The collection period indicates when the data reflected in this record was
  /// collected.
  CollectionPeriod? collectionPeriod;

  /// Key defines all of the unique querying parameters needed to look up a user
  /// experience record.
  Key? key;

  /// Metrics is the map of user experience data available for the record
  /// defined in the key field.
  ///
  /// Metrics are keyed on the metric name. Allowed key values:
  /// \["first_contentful_paint", "first_input_delay",
  /// "largest_contentful_paint", "cumulative_layout_shift",
  /// "experimental_time_to_first_byte",
  /// "experimental_interaction_to_next_paint"\]
  core.Map<core.String, Metric>? metrics;

  Record({
    this.collectionPeriod,
    this.key,
    this.metrics,
  });

  Record.fromJson(core.Map json_)
      : this(
          collectionPeriod: json_.containsKey('collectionPeriod')
              ? CollectionPeriod.fromJson(json_['collectionPeriod']
                  as core.Map<core.String, core.dynamic>)
              : null,
          key: json_.containsKey('key')
              ? Key.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>)
              : null,
          metrics:
              (json_['metrics'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              Metric.fromJson(value as core.Map<core.String, core.dynamic>),
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionPeriod != null) 'collectionPeriod': collectionPeriod!,
        if (key != null) 'key': key!,
        if (metrics != null) 'metrics': metrics!,
      };
}

/// A bin is a discrete portion of data spanning from start to end, or if no end
/// is given, then from start to +inf.
///
/// A bin's start and end values are given in the value type of the metric it
/// represents. For example, "first contentful paint" is measured in
/// milliseconds and exposed as ints, therefore its metric bins will use int32s
/// for its start and end types. However, "cumulative layout shift" is measured
/// in unitless decimals and is exposed as a decimal encoded as a string,
/// therefore its metric bins will use strings for its value type.
class TimeseriesBin {
  /// The proportion of users that experienced this bin's value for the given
  /// metric in a given collection period; the index for each of these entries
  /// corresponds to an entry in the CollectionPeriods field in the
  /// HistoryRecord message, which describes when the density was observed in
  /// the field.
  ///
  /// Thus, the length of this list of densities is equal to the length of the
  /// CollectionPeriods field in the HistoryRecord message.
  core.List<core.double>? densities;

  /// End is the end of the data bin.
  ///
  /// If end is not populated, then the bin has no end and is valid from start
  /// to +inf.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? end;

  /// Start is the beginning of the data bin.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? start;

  TimeseriesBin({
    this.densities,
    this.end,
    this.start,
  });

  TimeseriesBin.fromJson(core.Map json_)
      : this(
          densities: (json_['densities'] as core.List?)
              ?.map((value) => (value as core.num).toDouble())
              .toList(),
          end: json_['end'],
          start: json_['start'],
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (densities != null) 'densities': densities!,
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Percentiles contains synthetic values of a metric at a given statistical
/// percentile.
///
/// These are used for estimating a metric's value as experienced by a
/// percentage of users out of the total number of users.
class TimeseriesPercentiles {
  /// 75% of users experienced the given metric at or below this value.
  ///
  /// The length of this list of densities is equal to the length of the
  /// CollectionPeriods field in the HistoryRecord message, which describes when
  /// the density was observed in the field.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? p75s;

  TimeseriesPercentiles({
    this.p75s,
  });

  TimeseriesPercentiles.fromJson(core.Map json_)
      : this(
          p75s: json_.containsKey('p75s') ? json_['p75s'] as core.List : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (p75s != null) 'p75s': p75s!,
      };
}

/// Object representing the normalization actions taken to normalize a url to
/// achieve a higher chance of successful lookup.
///
/// These are simple automated changes that are taken when looking up the
/// provided `url_patten` would be known to fail. Complex actions like following
/// redirects are not handled.
class UrlNormalization {
  /// The URL after any normalization actions.
  ///
  /// This is a valid user experience URL that could reasonably be looked up.
  core.String? normalizedUrl;

  /// The original requested URL prior to any normalization actions.
  core.String? originalUrl;

  UrlNormalization({
    this.normalizedUrl,
    this.originalUrl,
  });

  UrlNormalization.fromJson(core.Map json_)
      : this(
          normalizedUrl: json_['normalizedUrl'] as core.String?,
          originalUrl: json_['originalUrl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedUrl != null) 'normalizedUrl': normalizedUrl!,
        if (originalUrl != null) 'originalUrl': originalUrl!,
      };
}
