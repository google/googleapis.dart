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

/// Cloud Monitoring API - v3
///
/// Manages your Cloud Monitoring data and configurations.
///
/// For more information, see <https://cloud.google.com/monitoring/api/>
///
/// Create an instance of [MonitoringApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersTimeSeriesResource]
/// - [OrganizationsResource]
///   - [OrganizationsTimeSeriesResource]
/// - [ProjectsResource]
///   - [ProjectsAlertPoliciesResource]
///   - [ProjectsAlertsResource]
///   - [ProjectsCollectdTimeSeriesResource]
///   - [ProjectsGroupsResource]
///     - [ProjectsGroupsMembersResource]
///   - [ProjectsMetricDescriptorsResource]
///   - [ProjectsMonitoredResourceDescriptorsResource]
///   - [ProjectsNotificationChannelDescriptorsResource]
///   - [ProjectsNotificationChannelsResource]
///   - [ProjectsSnoozesResource]
///   - [ProjectsTimeSeriesResource]
///   - [ProjectsUptimeCheckConfigsResource]
/// - [ServicesResource]
///   - [ServicesServiceLevelObjectivesResource]
/// - [UptimeCheckIpsResource]
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

/// Manages your Cloud Monitoring data and configurations.
class MonitoringApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and write monitoring data for all of your Google and third-party
  /// Cloud and API projects
  static const monitoringScope = 'https://www.googleapis.com/auth/monitoring';

  /// View monitoring data for all of your Google Cloud and third-party projects
  static const monitoringReadScope =
      'https://www.googleapis.com/auth/monitoring.read';

  /// Publish metric data to your Google Cloud projects
  static const monitoringWriteScope =
      'https://www.googleapis.com/auth/monitoring.write';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  ServicesResource get services => ServicesResource(_requester);
  UptimeCheckIpsResource get uptimeCheckIps =>
      UptimeCheckIpsResource(_requester);

  MonitoringApi(
    http.Client client, {
    core.String rootUrl = 'https://monitoring.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersTimeSeriesResource get timeSeries =>
      FoldersTimeSeriesResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;
}

class FoldersTimeSeriesResource {
  final commons.ApiRequester _requester;

  FoldersTimeSeriesResource(commons.ApiRequester client) : _requester = client;

  /// Lists time series that match a filter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name), organization or
  /// folder on which to execute the request. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\] organizations/\[ORGANIZATION_ID\]
  /// folders/\[FOLDER_ID\]
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [aggregation_alignmentPeriod] - The alignment_period specifies a time
  /// interval, in seconds, that is used to divide the data in all the time
  /// series into consistent blocks of time. This will be done before the
  /// per-series aligner can be applied to the data.The value must be at least
  /// 60 seconds. If a per-series aligner other than ALIGN_NONE is specified,
  /// this field is required or an error is returned. If no per-series aligner
  /// is specified, or the aligner ALIGN_NONE is specified, then this field is
  /// ignored.The maximum value of the alignment_period is 104 weeks (2 years)
  /// for charts, and 90,000 seconds (25 hours) for alerting policies.
  ///
  /// [aggregation_crossSeriesReducer] - The reduction operation to be used to
  /// combine time series into a single time series, where the value of each
  /// data point in the resulting series is a function of all the already
  /// aligned values in the input time series.Not all reducer operations can be
  /// applied to all time series. The valid choices depend on the metric_kind
  /// and the value_type of the original time series. Reduction can yield a time
  /// series with a different metric_kind or value_type than the input time
  /// series.Time series data must first be aligned (see per_series_aligner) in
  /// order to perform cross-time series reduction. If cross_series_reducer is
  /// specified, then per_series_aligner must be specified, and must not be
  /// ALIGN_NONE. An alignment_period must also be specified; otherwise, an
  /// error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// Aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric or distribution values. The value_type of the output
  /// is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics with
  /// numeric and distribution values. The value_type of the output is the same
  /// as the value_type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics with numeric or distribution values. The value_type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the number of data points across
  /// time series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics of numeric, Boolean, distribution, and string value_type.
  /// The value_type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the number of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for DELTA and GAUGE metrics of Boolean value_type. The value_type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the number of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the ratio of the number of
  /// True-valued data points to the total number of data points for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics of
  /// Boolean value_type. The output value is in the range 0.0, 1.0 and has
  /// value_type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing the 99th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing the 95th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing the 50th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing the 5th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  ///
  /// [aggregation_groupByFields] - The set of fields to preserve when
  /// cross_series_reducer is specified. The group_by_fields determine how the
  /// time series are partitioned into subsets prior to applying the aggregation
  /// operation. Each subset contains time series that have the same value for
  /// each of the grouping fields. Each individual time series is a member of
  /// exactly one subset. The cross_series_reducer is applied to each subset of
  /// time series. It is not possible to reduce across different resource types,
  /// so this field implicitly contains resource.type. Fields not specified in
  /// group_by_fields are aggregated away. If group_by_fields is not specified
  /// and all the time series have the same resource type, then the time series
  /// are aggregated into a single output time series. If cross_series_reducer
  /// is not defined, this field is ignored.
  ///
  /// [aggregation_perSeriesAligner] - An Aligner describes how to bring the
  /// data points in a single time series into temporal alignment. Except for
  /// ALIGN_NONE, all alignments cause all the data points in an
  /// alignment_period to be mathematically grouped together, resulting in a
  /// single data point for each alignment_period with end timestamp at the end
  /// of the period.Not all alignment operations may be applied to all time
  /// series. The valid choices depend on the metric_kind and value_type of the
  /// original time series. Alignment can change the metric_kind or the
  /// value_type of the time series.Time series data must be aligned in order to
  /// perform cross-time series reduction. If cross_series_reducer is specified,
  /// then per_series_aligner must be specified and not equal to ALIGN_NONE and
  /// alignment_period must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-series reduction is requested. The value_type of the result is the
  /// same as the value_type of the input.
  /// - "ALIGN_DELTA" : Align and convert to DELTA. The output is delta = y1 -
  /// y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the
  /// selected alignment period results in periods with no data, then the
  /// aligned value for such a period is created by interpolation. The
  /// value_type of the aligned result is the same as the value_type of the
  /// input.
  /// - "ALIGN_RATE" : Align and convert to a rate. The result is computed as
  /// rate = (y1 - y0)/(t1 - t0), or "delta over time". Think of this aligner as
  /// providing the slope of the line that passes through the value at the start
  /// and at the end of the alignment_period.This aligner is valid for
  /// CUMULATIVE and DELTA metrics with numeric values. If the selected
  /// alignment period results in periods with no data, then the aligned value
  /// for such a period is created by interpolation. The output is a GAUGE
  /// metric with value_type DOUBLE.If, by "rate", you mean "percentage change",
  /// see the ALIGN_PERCENT_CHANGE aligner instead.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the alignment period boundary. This aligner is valid for GAUGE
  /// metrics with numeric values. The value_type of the aligned result is the
  /// same as the value_type of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by moving the most recent data point before
  /// the end of the alignment period to the boundary at the end of the
  /// alignment period. This aligner is valid for GAUGE metrics. The value_type
  /// of the aligned result is the same as the value_type of the input.
  /// - "ALIGN_MIN" : Align the time series by returning the minimum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MAX" : Align the time series by returning the maximum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MEAN" : Align the time series by returning the mean value in each
  /// alignment period. This aligner is valid for GAUGE and DELTA metrics with
  /// numeric values. The value_type of the aligned result is DOUBLE.
  /// - "ALIGN_COUNT" : Align the time series by returning the number of values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric or Boolean values. The value_type of the aligned
  /// result is INT64.
  /// - "ALIGN_SUM" : Align the time series by returning the sum of the values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric and distribution values. The value_type of the
  /// aligned result is the same as the value_type of the input.
  /// - "ALIGN_STDDEV" : Align the time series by returning the standard
  /// deviation of the values in each alignment period. This aligner is valid
  /// for GAUGE and DELTA metrics with numeric values. The value_type of the
  /// output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align the time series by returning the number of
  /// True values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align the time series by returning the number of
  /// False values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align the time series by returning the ratio of
  /// the number of True values to the total number of values in each alignment
  /// period. This aligner is valid for GAUGE metrics with Boolean values. The
  /// output value is in the range 0.0, 1.0 and has value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 99th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 95th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 50th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 5th percentile of all data points in
  /// the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// aligner is valid for GAUGE and DELTA metrics with numeric values. This
  /// alignment returns ((current - previous)/previous) * 100, where the value
  /// of previous is determined based on the alignment_period.If the values of
  /// current and previous are both 0, then the returned value is 0. If only
  /// previous is 0, the returned value is infinity.A 10-minute moving mean is
  /// computed at each point of the alignment period prior to the above
  /// calculation to smooth the metric and prevent false positives from very
  /// short-lived spikes. The moving mean is only applicable for data whose
  /// values are \>= 0. Any values \< 0 are treated as a missing datapoint, and
  /// are ignored. While DELTA metrics are accepted by this alignment, special
  /// care should be taken that the values for the metric will always be
  /// positive. The output is a GAUGE metric with value_type DOUBLE.
  ///
  /// [filter] - Required. A monitoring filter
  /// (https://cloud.google.com/monitoring/api/v3/filters) that specifies which
  /// time series should be returned. The filter must specify a single metric
  /// type, and can additionally specify metric labels and other information.
  /// For example: metric.type =
  /// "compute.googleapis.com/instance/cpu/usage_time" AND
  /// metric.labels.instance_name = "my-instance-name"
  ///
  /// [interval_endTime] - Required. The end of the time interval.
  ///
  /// [interval_startTime] - Optional. The beginning of the time interval. The
  /// default value for the start time is the end time. The start time must not
  /// be later than the end time.
  ///
  /// [orderBy] - Unsupported: must be left blank. The points in each time
  /// series are currently returned in reverse time order (most recent to
  /// oldest).
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return. If page_size is empty or more than 100,000 results, the effective
  /// page_size is 100,000 results. If view is set to FULL, this is the maximum
  /// number of Points returned. If view is set to HEADERS, this is the maximum
  /// number of TimeSeries returned.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [secondaryAggregation_alignmentPeriod] - The alignment_period specifies a
  /// time interval, in seconds, that is used to divide the data in all the time
  /// series into consistent blocks of time. This will be done before the
  /// per-series aligner can be applied to the data.The value must be at least
  /// 60 seconds. If a per-series aligner other than ALIGN_NONE is specified,
  /// this field is required or an error is returned. If no per-series aligner
  /// is specified, or the aligner ALIGN_NONE is specified, then this field is
  /// ignored.The maximum value of the alignment_period is 104 weeks (2 years)
  /// for charts, and 90,000 seconds (25 hours) for alerting policies.
  ///
  /// [secondaryAggregation_crossSeriesReducer] - The reduction operation to be
  /// used to combine time series into a single time series, where the value of
  /// each data point in the resulting series is a function of all the already
  /// aligned values in the input time series.Not all reducer operations can be
  /// applied to all time series. The valid choices depend on the metric_kind
  /// and the value_type of the original time series. Reduction can yield a time
  /// series with a different metric_kind or value_type than the input time
  /// series.Time series data must first be aligned (see per_series_aligner) in
  /// order to perform cross-time series reduction. If cross_series_reducer is
  /// specified, then per_series_aligner must be specified, and must not be
  /// ALIGN_NONE. An alignment_period must also be specified; otherwise, an
  /// error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// Aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric or distribution values. The value_type of the output
  /// is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics with
  /// numeric and distribution values. The value_type of the output is the same
  /// as the value_type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics with numeric or distribution values. The value_type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the number of data points across
  /// time series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics of numeric, Boolean, distribution, and string value_type.
  /// The value_type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the number of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for DELTA and GAUGE metrics of Boolean value_type. The value_type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the number of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the ratio of the number of
  /// True-valued data points to the total number of data points for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics of
  /// Boolean value_type. The output value is in the range 0.0, 1.0 and has
  /// value_type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing the 99th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing the 95th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing the 50th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing the 5th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  ///
  /// [secondaryAggregation_groupByFields] - The set of fields to preserve when
  /// cross_series_reducer is specified. The group_by_fields determine how the
  /// time series are partitioned into subsets prior to applying the aggregation
  /// operation. Each subset contains time series that have the same value for
  /// each of the grouping fields. Each individual time series is a member of
  /// exactly one subset. The cross_series_reducer is applied to each subset of
  /// time series. It is not possible to reduce across different resource types,
  /// so this field implicitly contains resource.type. Fields not specified in
  /// group_by_fields are aggregated away. If group_by_fields is not specified
  /// and all the time series have the same resource type, then the time series
  /// are aggregated into a single output time series. If cross_series_reducer
  /// is not defined, this field is ignored.
  ///
  /// [secondaryAggregation_perSeriesAligner] - An Aligner describes how to
  /// bring the data points in a single time series into temporal alignment.
  /// Except for ALIGN_NONE, all alignments cause all the data points in an
  /// alignment_period to be mathematically grouped together, resulting in a
  /// single data point for each alignment_period with end timestamp at the end
  /// of the period.Not all alignment operations may be applied to all time
  /// series. The valid choices depend on the metric_kind and value_type of the
  /// original time series. Alignment can change the metric_kind or the
  /// value_type of the time series.Time series data must be aligned in order to
  /// perform cross-time series reduction. If cross_series_reducer is specified,
  /// then per_series_aligner must be specified and not equal to ALIGN_NONE and
  /// alignment_period must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-series reduction is requested. The value_type of the result is the
  /// same as the value_type of the input.
  /// - "ALIGN_DELTA" : Align and convert to DELTA. The output is delta = y1 -
  /// y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the
  /// selected alignment period results in periods with no data, then the
  /// aligned value for such a period is created by interpolation. The
  /// value_type of the aligned result is the same as the value_type of the
  /// input.
  /// - "ALIGN_RATE" : Align and convert to a rate. The result is computed as
  /// rate = (y1 - y0)/(t1 - t0), or "delta over time". Think of this aligner as
  /// providing the slope of the line that passes through the value at the start
  /// and at the end of the alignment_period.This aligner is valid for
  /// CUMULATIVE and DELTA metrics with numeric values. If the selected
  /// alignment period results in periods with no data, then the aligned value
  /// for such a period is created by interpolation. The output is a GAUGE
  /// metric with value_type DOUBLE.If, by "rate", you mean "percentage change",
  /// see the ALIGN_PERCENT_CHANGE aligner instead.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the alignment period boundary. This aligner is valid for GAUGE
  /// metrics with numeric values. The value_type of the aligned result is the
  /// same as the value_type of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by moving the most recent data point before
  /// the end of the alignment period to the boundary at the end of the
  /// alignment period. This aligner is valid for GAUGE metrics. The value_type
  /// of the aligned result is the same as the value_type of the input.
  /// - "ALIGN_MIN" : Align the time series by returning the minimum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MAX" : Align the time series by returning the maximum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MEAN" : Align the time series by returning the mean value in each
  /// alignment period. This aligner is valid for GAUGE and DELTA metrics with
  /// numeric values. The value_type of the aligned result is DOUBLE.
  /// - "ALIGN_COUNT" : Align the time series by returning the number of values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric or Boolean values. The value_type of the aligned
  /// result is INT64.
  /// - "ALIGN_SUM" : Align the time series by returning the sum of the values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric and distribution values. The value_type of the
  /// aligned result is the same as the value_type of the input.
  /// - "ALIGN_STDDEV" : Align the time series by returning the standard
  /// deviation of the values in each alignment period. This aligner is valid
  /// for GAUGE and DELTA metrics with numeric values. The value_type of the
  /// output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align the time series by returning the number of
  /// True values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align the time series by returning the number of
  /// False values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align the time series by returning the ratio of
  /// the number of True values to the total number of values in each alignment
  /// period. This aligner is valid for GAUGE metrics with Boolean values. The
  /// output value is in the range 0.0, 1.0 and has value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 99th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 95th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 50th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 5th percentile of all data points in
  /// the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// aligner is valid for GAUGE and DELTA metrics with numeric values. This
  /// alignment returns ((current - previous)/previous) * 100, where the value
  /// of previous is determined based on the alignment_period.If the values of
  /// current and previous are both 0, then the returned value is 0. If only
  /// previous is 0, the returned value is infinity.A 10-minute moving mean is
  /// computed at each point of the alignment period prior to the above
  /// calculation to smooth the metric and prevent false positives from very
  /// short-lived spikes. The moving mean is only applicable for data whose
  /// values are \>= 0. Any values \< 0 are treated as a missing datapoint, and
  /// are ignored. While DELTA metrics are accepted by this alignment, special
  /// care should be taken that the values for the metric will always be
  /// positive. The output is a GAUGE metric with value_type DOUBLE.
  ///
  /// [view] - Required. Specifies which information is returned about the time
  /// series.
  /// Possible string values are:
  /// - "FULL" : Returns the identity of the metric(s), the time series, and the
  /// time series data.
  /// - "HEADERS" : Returns the identity of the metric and the time series
  /// resource, but not the time series data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTimeSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTimeSeriesResponse> list(
    core.String name, {
    core.String? aggregation_alignmentPeriod,
    core.String? aggregation_crossSeriesReducer,
    core.List<core.String>? aggregation_groupByFields,
    core.String? aggregation_perSeriesAligner,
    core.String? filter,
    core.String? interval_endTime,
    core.String? interval_startTime,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? secondaryAggregation_alignmentPeriod,
    core.String? secondaryAggregation_crossSeriesReducer,
    core.List<core.String>? secondaryAggregation_groupByFields,
    core.String? secondaryAggregation_perSeriesAligner,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'aggregation.alignmentPeriod': ?aggregation_alignmentPeriod == null
          ? null
          : [aggregation_alignmentPeriod],
      'aggregation.crossSeriesReducer': ?aggregation_crossSeriesReducer == null
          ? null
          : [aggregation_crossSeriesReducer],
      'aggregation.groupByFields': ?aggregation_groupByFields,
      'aggregation.perSeriesAligner': ?aggregation_perSeriesAligner == null
          ? null
          : [aggregation_perSeriesAligner],
      'filter': ?filter == null ? null : [filter],
      'interval.endTime': ?interval_endTime == null ? null : [interval_endTime],
      'interval.startTime': ?interval_startTime == null
          ? null
          : [interval_startTime],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'secondaryAggregation.alignmentPeriod':
          ?secondaryAggregation_alignmentPeriod == null
          ? null
          : [secondaryAggregation_alignmentPeriod],
      'secondaryAggregation.crossSeriesReducer':
          ?secondaryAggregation_crossSeriesReducer == null
          ? null
          : [secondaryAggregation_crossSeriesReducer],
      'secondaryAggregation.groupByFields': ?secondaryAggregation_groupByFields,
      'secondaryAggregation.perSeriesAligner':
          ?secondaryAggregation_perSeriesAligner == null
          ? null
          : [secondaryAggregation_perSeriesAligner],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/timeSeries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTimeSeriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsTimeSeriesResource get timeSeries =>
      OrganizationsTimeSeriesResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsTimeSeriesResource {
  final commons.ApiRequester _requester;

  OrganizationsTimeSeriesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists time series that match a filter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name), organization or
  /// folder on which to execute the request. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\] organizations/\[ORGANIZATION_ID\]
  /// folders/\[FOLDER_ID\]
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [aggregation_alignmentPeriod] - The alignment_period specifies a time
  /// interval, in seconds, that is used to divide the data in all the time
  /// series into consistent blocks of time. This will be done before the
  /// per-series aligner can be applied to the data.The value must be at least
  /// 60 seconds. If a per-series aligner other than ALIGN_NONE is specified,
  /// this field is required or an error is returned. If no per-series aligner
  /// is specified, or the aligner ALIGN_NONE is specified, then this field is
  /// ignored.The maximum value of the alignment_period is 104 weeks (2 years)
  /// for charts, and 90,000 seconds (25 hours) for alerting policies.
  ///
  /// [aggregation_crossSeriesReducer] - The reduction operation to be used to
  /// combine time series into a single time series, where the value of each
  /// data point in the resulting series is a function of all the already
  /// aligned values in the input time series.Not all reducer operations can be
  /// applied to all time series. The valid choices depend on the metric_kind
  /// and the value_type of the original time series. Reduction can yield a time
  /// series with a different metric_kind or value_type than the input time
  /// series.Time series data must first be aligned (see per_series_aligner) in
  /// order to perform cross-time series reduction. If cross_series_reducer is
  /// specified, then per_series_aligner must be specified, and must not be
  /// ALIGN_NONE. An alignment_period must also be specified; otherwise, an
  /// error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// Aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric or distribution values. The value_type of the output
  /// is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics with
  /// numeric and distribution values. The value_type of the output is the same
  /// as the value_type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics with numeric or distribution values. The value_type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the number of data points across
  /// time series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics of numeric, Boolean, distribution, and string value_type.
  /// The value_type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the number of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for DELTA and GAUGE metrics of Boolean value_type. The value_type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the number of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the ratio of the number of
  /// True-valued data points to the total number of data points for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics of
  /// Boolean value_type. The output value is in the range 0.0, 1.0 and has
  /// value_type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing the 99th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing the 95th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing the 50th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing the 5th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  ///
  /// [aggregation_groupByFields] - The set of fields to preserve when
  /// cross_series_reducer is specified. The group_by_fields determine how the
  /// time series are partitioned into subsets prior to applying the aggregation
  /// operation. Each subset contains time series that have the same value for
  /// each of the grouping fields. Each individual time series is a member of
  /// exactly one subset. The cross_series_reducer is applied to each subset of
  /// time series. It is not possible to reduce across different resource types,
  /// so this field implicitly contains resource.type. Fields not specified in
  /// group_by_fields are aggregated away. If group_by_fields is not specified
  /// and all the time series have the same resource type, then the time series
  /// are aggregated into a single output time series. If cross_series_reducer
  /// is not defined, this field is ignored.
  ///
  /// [aggregation_perSeriesAligner] - An Aligner describes how to bring the
  /// data points in a single time series into temporal alignment. Except for
  /// ALIGN_NONE, all alignments cause all the data points in an
  /// alignment_period to be mathematically grouped together, resulting in a
  /// single data point for each alignment_period with end timestamp at the end
  /// of the period.Not all alignment operations may be applied to all time
  /// series. The valid choices depend on the metric_kind and value_type of the
  /// original time series. Alignment can change the metric_kind or the
  /// value_type of the time series.Time series data must be aligned in order to
  /// perform cross-time series reduction. If cross_series_reducer is specified,
  /// then per_series_aligner must be specified and not equal to ALIGN_NONE and
  /// alignment_period must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-series reduction is requested. The value_type of the result is the
  /// same as the value_type of the input.
  /// - "ALIGN_DELTA" : Align and convert to DELTA. The output is delta = y1 -
  /// y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the
  /// selected alignment period results in periods with no data, then the
  /// aligned value for such a period is created by interpolation. The
  /// value_type of the aligned result is the same as the value_type of the
  /// input.
  /// - "ALIGN_RATE" : Align and convert to a rate. The result is computed as
  /// rate = (y1 - y0)/(t1 - t0), or "delta over time". Think of this aligner as
  /// providing the slope of the line that passes through the value at the start
  /// and at the end of the alignment_period.This aligner is valid for
  /// CUMULATIVE and DELTA metrics with numeric values. If the selected
  /// alignment period results in periods with no data, then the aligned value
  /// for such a period is created by interpolation. The output is a GAUGE
  /// metric with value_type DOUBLE.If, by "rate", you mean "percentage change",
  /// see the ALIGN_PERCENT_CHANGE aligner instead.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the alignment period boundary. This aligner is valid for GAUGE
  /// metrics with numeric values. The value_type of the aligned result is the
  /// same as the value_type of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by moving the most recent data point before
  /// the end of the alignment period to the boundary at the end of the
  /// alignment period. This aligner is valid for GAUGE metrics. The value_type
  /// of the aligned result is the same as the value_type of the input.
  /// - "ALIGN_MIN" : Align the time series by returning the minimum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MAX" : Align the time series by returning the maximum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MEAN" : Align the time series by returning the mean value in each
  /// alignment period. This aligner is valid for GAUGE and DELTA metrics with
  /// numeric values. The value_type of the aligned result is DOUBLE.
  /// - "ALIGN_COUNT" : Align the time series by returning the number of values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric or Boolean values. The value_type of the aligned
  /// result is INT64.
  /// - "ALIGN_SUM" : Align the time series by returning the sum of the values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric and distribution values. The value_type of the
  /// aligned result is the same as the value_type of the input.
  /// - "ALIGN_STDDEV" : Align the time series by returning the standard
  /// deviation of the values in each alignment period. This aligner is valid
  /// for GAUGE and DELTA metrics with numeric values. The value_type of the
  /// output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align the time series by returning the number of
  /// True values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align the time series by returning the number of
  /// False values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align the time series by returning the ratio of
  /// the number of True values to the total number of values in each alignment
  /// period. This aligner is valid for GAUGE metrics with Boolean values. The
  /// output value is in the range 0.0, 1.0 and has value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 99th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 95th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 50th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 5th percentile of all data points in
  /// the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// aligner is valid for GAUGE and DELTA metrics with numeric values. This
  /// alignment returns ((current - previous)/previous) * 100, where the value
  /// of previous is determined based on the alignment_period.If the values of
  /// current and previous are both 0, then the returned value is 0. If only
  /// previous is 0, the returned value is infinity.A 10-minute moving mean is
  /// computed at each point of the alignment period prior to the above
  /// calculation to smooth the metric and prevent false positives from very
  /// short-lived spikes. The moving mean is only applicable for data whose
  /// values are \>= 0. Any values \< 0 are treated as a missing datapoint, and
  /// are ignored. While DELTA metrics are accepted by this alignment, special
  /// care should be taken that the values for the metric will always be
  /// positive. The output is a GAUGE metric with value_type DOUBLE.
  ///
  /// [filter] - Required. A monitoring filter
  /// (https://cloud.google.com/monitoring/api/v3/filters) that specifies which
  /// time series should be returned. The filter must specify a single metric
  /// type, and can additionally specify metric labels and other information.
  /// For example: metric.type =
  /// "compute.googleapis.com/instance/cpu/usage_time" AND
  /// metric.labels.instance_name = "my-instance-name"
  ///
  /// [interval_endTime] - Required. The end of the time interval.
  ///
  /// [interval_startTime] - Optional. The beginning of the time interval. The
  /// default value for the start time is the end time. The start time must not
  /// be later than the end time.
  ///
  /// [orderBy] - Unsupported: must be left blank. The points in each time
  /// series are currently returned in reverse time order (most recent to
  /// oldest).
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return. If page_size is empty or more than 100,000 results, the effective
  /// page_size is 100,000 results. If view is set to FULL, this is the maximum
  /// number of Points returned. If view is set to HEADERS, this is the maximum
  /// number of TimeSeries returned.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [secondaryAggregation_alignmentPeriod] - The alignment_period specifies a
  /// time interval, in seconds, that is used to divide the data in all the time
  /// series into consistent blocks of time. This will be done before the
  /// per-series aligner can be applied to the data.The value must be at least
  /// 60 seconds. If a per-series aligner other than ALIGN_NONE is specified,
  /// this field is required or an error is returned. If no per-series aligner
  /// is specified, or the aligner ALIGN_NONE is specified, then this field is
  /// ignored.The maximum value of the alignment_period is 104 weeks (2 years)
  /// for charts, and 90,000 seconds (25 hours) for alerting policies.
  ///
  /// [secondaryAggregation_crossSeriesReducer] - The reduction operation to be
  /// used to combine time series into a single time series, where the value of
  /// each data point in the resulting series is a function of all the already
  /// aligned values in the input time series.Not all reducer operations can be
  /// applied to all time series. The valid choices depend on the metric_kind
  /// and the value_type of the original time series. Reduction can yield a time
  /// series with a different metric_kind or value_type than the input time
  /// series.Time series data must first be aligned (see per_series_aligner) in
  /// order to perform cross-time series reduction. If cross_series_reducer is
  /// specified, then per_series_aligner must be specified, and must not be
  /// ALIGN_NONE. An alignment_period must also be specified; otherwise, an
  /// error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// Aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric or distribution values. The value_type of the output
  /// is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics with
  /// numeric and distribution values. The value_type of the output is the same
  /// as the value_type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics with numeric or distribution values. The value_type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the number of data points across
  /// time series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics of numeric, Boolean, distribution, and string value_type.
  /// The value_type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the number of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for DELTA and GAUGE metrics of Boolean value_type. The value_type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the number of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the ratio of the number of
  /// True-valued data points to the total number of data points for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics of
  /// Boolean value_type. The output value is in the range 0.0, 1.0 and has
  /// value_type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing the 99th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing the 95th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing the 50th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing the 5th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  ///
  /// [secondaryAggregation_groupByFields] - The set of fields to preserve when
  /// cross_series_reducer is specified. The group_by_fields determine how the
  /// time series are partitioned into subsets prior to applying the aggregation
  /// operation. Each subset contains time series that have the same value for
  /// each of the grouping fields. Each individual time series is a member of
  /// exactly one subset. The cross_series_reducer is applied to each subset of
  /// time series. It is not possible to reduce across different resource types,
  /// so this field implicitly contains resource.type. Fields not specified in
  /// group_by_fields are aggregated away. If group_by_fields is not specified
  /// and all the time series have the same resource type, then the time series
  /// are aggregated into a single output time series. If cross_series_reducer
  /// is not defined, this field is ignored.
  ///
  /// [secondaryAggregation_perSeriesAligner] - An Aligner describes how to
  /// bring the data points in a single time series into temporal alignment.
  /// Except for ALIGN_NONE, all alignments cause all the data points in an
  /// alignment_period to be mathematically grouped together, resulting in a
  /// single data point for each alignment_period with end timestamp at the end
  /// of the period.Not all alignment operations may be applied to all time
  /// series. The valid choices depend on the metric_kind and value_type of the
  /// original time series. Alignment can change the metric_kind or the
  /// value_type of the time series.Time series data must be aligned in order to
  /// perform cross-time series reduction. If cross_series_reducer is specified,
  /// then per_series_aligner must be specified and not equal to ALIGN_NONE and
  /// alignment_period must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-series reduction is requested. The value_type of the result is the
  /// same as the value_type of the input.
  /// - "ALIGN_DELTA" : Align and convert to DELTA. The output is delta = y1 -
  /// y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the
  /// selected alignment period results in periods with no data, then the
  /// aligned value for such a period is created by interpolation. The
  /// value_type of the aligned result is the same as the value_type of the
  /// input.
  /// - "ALIGN_RATE" : Align and convert to a rate. The result is computed as
  /// rate = (y1 - y0)/(t1 - t0), or "delta over time". Think of this aligner as
  /// providing the slope of the line that passes through the value at the start
  /// and at the end of the alignment_period.This aligner is valid for
  /// CUMULATIVE and DELTA metrics with numeric values. If the selected
  /// alignment period results in periods with no data, then the aligned value
  /// for such a period is created by interpolation. The output is a GAUGE
  /// metric with value_type DOUBLE.If, by "rate", you mean "percentage change",
  /// see the ALIGN_PERCENT_CHANGE aligner instead.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the alignment period boundary. This aligner is valid for GAUGE
  /// metrics with numeric values. The value_type of the aligned result is the
  /// same as the value_type of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by moving the most recent data point before
  /// the end of the alignment period to the boundary at the end of the
  /// alignment period. This aligner is valid for GAUGE metrics. The value_type
  /// of the aligned result is the same as the value_type of the input.
  /// - "ALIGN_MIN" : Align the time series by returning the minimum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MAX" : Align the time series by returning the maximum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MEAN" : Align the time series by returning the mean value in each
  /// alignment period. This aligner is valid for GAUGE and DELTA metrics with
  /// numeric values. The value_type of the aligned result is DOUBLE.
  /// - "ALIGN_COUNT" : Align the time series by returning the number of values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric or Boolean values. The value_type of the aligned
  /// result is INT64.
  /// - "ALIGN_SUM" : Align the time series by returning the sum of the values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric and distribution values. The value_type of the
  /// aligned result is the same as the value_type of the input.
  /// - "ALIGN_STDDEV" : Align the time series by returning the standard
  /// deviation of the values in each alignment period. This aligner is valid
  /// for GAUGE and DELTA metrics with numeric values. The value_type of the
  /// output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align the time series by returning the number of
  /// True values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align the time series by returning the number of
  /// False values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align the time series by returning the ratio of
  /// the number of True values to the total number of values in each alignment
  /// period. This aligner is valid for GAUGE metrics with Boolean values. The
  /// output value is in the range 0.0, 1.0 and has value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 99th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 95th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 50th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 5th percentile of all data points in
  /// the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// aligner is valid for GAUGE and DELTA metrics with numeric values. This
  /// alignment returns ((current - previous)/previous) * 100, where the value
  /// of previous is determined based on the alignment_period.If the values of
  /// current and previous are both 0, then the returned value is 0. If only
  /// previous is 0, the returned value is infinity.A 10-minute moving mean is
  /// computed at each point of the alignment period prior to the above
  /// calculation to smooth the metric and prevent false positives from very
  /// short-lived spikes. The moving mean is only applicable for data whose
  /// values are \>= 0. Any values \< 0 are treated as a missing datapoint, and
  /// are ignored. While DELTA metrics are accepted by this alignment, special
  /// care should be taken that the values for the metric will always be
  /// positive. The output is a GAUGE metric with value_type DOUBLE.
  ///
  /// [view] - Required. Specifies which information is returned about the time
  /// series.
  /// Possible string values are:
  /// - "FULL" : Returns the identity of the metric(s), the time series, and the
  /// time series data.
  /// - "HEADERS" : Returns the identity of the metric and the time series
  /// resource, but not the time series data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTimeSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTimeSeriesResponse> list(
    core.String name, {
    core.String? aggregation_alignmentPeriod,
    core.String? aggregation_crossSeriesReducer,
    core.List<core.String>? aggregation_groupByFields,
    core.String? aggregation_perSeriesAligner,
    core.String? filter,
    core.String? interval_endTime,
    core.String? interval_startTime,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? secondaryAggregation_alignmentPeriod,
    core.String? secondaryAggregation_crossSeriesReducer,
    core.List<core.String>? secondaryAggregation_groupByFields,
    core.String? secondaryAggregation_perSeriesAligner,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'aggregation.alignmentPeriod': ?aggregation_alignmentPeriod == null
          ? null
          : [aggregation_alignmentPeriod],
      'aggregation.crossSeriesReducer': ?aggregation_crossSeriesReducer == null
          ? null
          : [aggregation_crossSeriesReducer],
      'aggregation.groupByFields': ?aggregation_groupByFields,
      'aggregation.perSeriesAligner': ?aggregation_perSeriesAligner == null
          ? null
          : [aggregation_perSeriesAligner],
      'filter': ?filter == null ? null : [filter],
      'interval.endTime': ?interval_endTime == null ? null : [interval_endTime],
      'interval.startTime': ?interval_startTime == null
          ? null
          : [interval_startTime],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'secondaryAggregation.alignmentPeriod':
          ?secondaryAggregation_alignmentPeriod == null
          ? null
          : [secondaryAggregation_alignmentPeriod],
      'secondaryAggregation.crossSeriesReducer':
          ?secondaryAggregation_crossSeriesReducer == null
          ? null
          : [secondaryAggregation_crossSeriesReducer],
      'secondaryAggregation.groupByFields': ?secondaryAggregation_groupByFields,
      'secondaryAggregation.perSeriesAligner':
          ?secondaryAggregation_perSeriesAligner == null
          ? null
          : [secondaryAggregation_perSeriesAligner],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/timeSeries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTimeSeriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAlertPoliciesResource get alertPolicies =>
      ProjectsAlertPoliciesResource(_requester);
  ProjectsAlertsResource get alerts => ProjectsAlertsResource(_requester);
  ProjectsCollectdTimeSeriesResource get collectdTimeSeries =>
      ProjectsCollectdTimeSeriesResource(_requester);
  ProjectsGroupsResource get groups => ProjectsGroupsResource(_requester);
  ProjectsMetricDescriptorsResource get metricDescriptors =>
      ProjectsMetricDescriptorsResource(_requester);
  ProjectsMonitoredResourceDescriptorsResource
  get monitoredResourceDescriptors =>
      ProjectsMonitoredResourceDescriptorsResource(_requester);
  ProjectsNotificationChannelDescriptorsResource
  get notificationChannelDescriptors =>
      ProjectsNotificationChannelDescriptorsResource(_requester);
  ProjectsNotificationChannelsResource get notificationChannels =>
      ProjectsNotificationChannelsResource(_requester);
  ProjectsSnoozesResource get snoozes => ProjectsSnoozesResource(_requester);
  ProjectsTimeSeriesResource get timeSeries =>
      ProjectsTimeSeriesResource(_requester);
  ProjectsUptimeCheckConfigsResource get uptimeCheckConfigs =>
      ProjectsUptimeCheckConfigsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAlertPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsAlertPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new alerting policy.Design your application to single-thread API
  /// calls that modify the state of alerting policies in a single project.
  ///
  /// This includes calls to CreateAlertPolicy, DeleteAlertPolicy and
  /// UpdateAlertPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) in which to
  /// create the alerting policy. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\] Note that this field names the parent
  /// container in which the alerting policy will be written, not the name of
  /// the created policy. |name| must be a host project of a Metrics Scope,
  /// otherwise INVALID_ARGUMENT error will return. The alerting policy that is
  /// returned will have a name that contains a normalized representation of
  /// this name as a prefix but adds a suffix of the form
  /// /alertPolicies/\[ALERT_POLICY_ID\], identifying the policy in the
  /// container.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertPolicy> create(
    AlertPolicy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/alertPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AlertPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an alerting policy.Design your application to single-thread API
  /// calls that modify the state of alerting policies in a single project.
  ///
  /// This includes calls to CreateAlertPolicy, DeleteAlertPolicy and
  /// UpdateAlertPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The alerting policy to delete. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alertPolicies/\[ALERT_POLICY_ID\] For
  /// more information, see AlertPolicy.
  /// Value must have pattern `^projects/\[^/\]+/alertPolicies/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single alerting policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The alerting policy to retrieve. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alertPolicies/\[ALERT_POLICY_ID\]
  /// Value must have pattern `^projects/\[^/\]+/alertPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertPolicy> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AlertPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the existing alerting policies for the workspace.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) whose alert
  /// policies are to be listed. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\] Note that this field names the parent
  /// container in which the alerting policies to be listed are stored. To
  /// retrieve a single alerting policy by name, use the GetAlertPolicy
  /// operation, instead.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. If provided, this field specifies the criteria that
  /// must be met by alert policies to be included in the response.For more
  /// details, see sorting and filtering
  /// (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).
  ///
  /// [orderBy] - Optional. A comma-separated list of fields by which to sort
  /// the result. Supports the same set of field references as the filter field.
  /// Entries can be prefixed with a minus sign to sort by the field in
  /// descending order.For more details, see sorting and filtering
  /// (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).
  ///
  /// [pageSize] - Optional. The maximum number of results to return in a single
  /// response.
  ///
  /// [pageToken] - Optional. If this field is not empty then it must contain
  /// the nextPageToken value returned by a previous call to this method. Using
  /// this field causes the method to return more results from the previous
  /// method call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAlertPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAlertPoliciesResponse> list(
    core.String name, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/alertPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAlertPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an alerting policy.
  ///
  /// You can either replace the entire policy with a new one or replace only
  /// certain fields in the current alerting policy by specifying the fields to
  /// be updated via updateMask. Returns the updated alerting policy.Design your
  /// application to single-thread API calls that modify the state of alerting
  /// policies in a single project. This includes calls to CreateAlertPolicy,
  /// DeleteAlertPolicy and UpdateAlertPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Required if the policy exists. The resource name for
  /// this policy. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alertPolicies/\[ALERT_POLICY_ID\]
  /// \[ALERT_POLICY_ID\] is assigned by Cloud Monitoring when the policy is
  /// created. When calling the alertPolicies.create method, do not include the
  /// name field in the alerting policy passed as part of the request.
  /// Value must have pattern `^projects/\[^/\]+/alertPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. A list of alerting policy field names. If this
  /// field is not empty, each listed field in the existing alerting policy is
  /// set to the value of the corresponding field in the supplied policy
  /// (alert_policy), or to the field's default value if the field is not in the
  /// supplied alerting policy. Fields not listed retain their previous
  /// value.Examples of valid field masks include display_name, documentation,
  /// documentation.content, documentation.mime_type, user_labels,
  /// user_label.nameofkey, enabled, conditions, combiner, etc.If this field is
  /// empty, then the supplied alerting policy replaces the existing policy. It
  /// is the same as deleting the existing policy and adding the supplied
  /// policy, except for the following: The new policy will have the same
  /// \[ALERT_POLICY_ID\] as the former policy. This gives you continuity with
  /// the former policy in your notifications and incidents. Conditions in the
  /// new policy will keep their former \[CONDITION_ID\] if the supplied
  /// condition includes the name field with that \[CONDITION_ID\]. If the
  /// supplied condition omits the name field, then a new \[CONDITION_ID\] is
  /// created.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertPolicy> patch(
    AlertPolicy request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AlertPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAlertsResource {
  final commons.ApiRequester _requester;

  ProjectsAlertsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a single alert.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the alert.The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alerts/\[ALERT_ID\] The \[ALERT_ID\] is
  /// a system-assigned unique identifier for the alert.
  /// Value must have pattern `^projects/\[^/\]+/alerts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alert].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alert> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Alert.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the existing alerts for the metrics scope of the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list alerts for.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. An alert is returned if there is a match on any
  /// fields belonging to the alert or its subfields.
  ///
  /// [orderBy] - Optional. A comma-separated list of fields in Alert to use for
  /// sorting. The default sort direction is ascending. To specify descending
  /// order for a field, add a desc modifier. The following fields are
  /// supported: open_time close_timeFor example, close_time desc, open_time
  /// will return the alerts closed most recently, with ties broken in the order
  /// of older alerts listed first.If the field is not set, the results are
  /// sorted by open_time desc.
  ///
  /// [pageSize] - Optional. The maximum number of results to return in a single
  /// response. If not set to a positive number, at most 50 alerts will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. If non-empty, page_token must contain a value
  /// returned as the next_page_token in a previous response to request the next
  /// set of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAlertsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAlertsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/alerts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAlertsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsCollectdTimeSeriesResource {
  final commons.ApiRequester _requester;

  ProjectsCollectdTimeSeriesResource(commons.ApiRequester client)
    : _requester = client;

  /// Cloud Monitoring Agent only: Creates a new time series.This method is only
  /// for use by the Cloud Monitoring Agent.
  ///
  /// Use projects.timeSeries.create instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) in which to
  /// create the time series. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateCollectdTimeSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateCollectdTimeSeriesResponse> create(
    CreateCollectdTimeSeriesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/collectdTimeSeries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreateCollectdTimeSeriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsGroupsMembersResource get members =>
      ProjectsGroupsMembersResource(_requester);

  ProjectsGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) in which to
  /// create the group. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [validateOnly] - If true, validate this request but do not create the
  /// group.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> create(
    Group request,
    core.String name, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/groups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The group to delete. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\]
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [recursive] - If this field is true, then the request means to delete a
  /// group with all its descendants. Otherwise, the request means to delete a
  /// group only when it has no descendants. The default value is false.
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
  async.Future<Empty> delete(
    core.String name, {
    core.bool? recursive,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'recursive': ?recursive == null ? null : ['${recursive}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The group to retrieve. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\]
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the existing groups.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) whose groups are
  /// to be listed. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [ancestorsOfGroup] - A group name. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\] Returns groups that
  /// are ancestors of the specified group. The groups are returned in order,
  /// starting with the immediate parent and ending with the most distant
  /// ancestor. If the specified group has no immediate parent, the results are
  /// empty.
  ///
  /// [childrenOfGroup] - A group name. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\] Returns groups whose
  /// parent_name field contains the group name. If no groups have this parent,
  /// the results are empty.
  ///
  /// [descendantsOfGroup] - A group name. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\] Returns the
  /// descendants of the specified group. This is a superset of the results
  /// returned by the children_of_group filter, and includes
  /// children-of-children, and so forth.
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// next_page_token value returned by a previous call to this method. Using
  /// this field causes the method to return additional results from the
  /// previous method call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupsResponse> list(
    core.String name, {
    core.String? ancestorsOfGroup,
    core.String? childrenOfGroup,
    core.String? descendantsOfGroup,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'ancestorsOfGroup': ?ancestorsOfGroup == null ? null : [ancestorsOfGroup],
      'childrenOfGroup': ?childrenOfGroup == null ? null : [childrenOfGroup],
      'descendantsOfGroup': ?descendantsOfGroup == null
          ? null
          : [descendantsOfGroup],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing group.
  ///
  /// You can change any group attributes except name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of this group. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\] When creating a
  /// group, this field is ignored and a new name is created consisting of the
  /// project specified in the call to CreateGroup and a unique \[GROUP_ID\]
  /// that is generated automatically.
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [validateOnly] - If true, validate this request but do not update the
  /// existing group.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> update(
    Group request,
    core.String name, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsGroupsMembersResource {
  final commons.ApiRequester _requester;

  ProjectsGroupsMembersResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the monitored resources that are members of a group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The group whose members are listed. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\]
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [filter] - An optional list filter
  /// (https://cloud.google.com/monitoring/api/learn_more#filtering) describing
  /// the members to be returned. The filter may reference the type, labels, and
  /// metadata of monitored resources that comprise the group. For example, to
  /// return only resources representing Compute Engine VM instances, use this
  /// filter: `resource.type = "gce_instance"`
  ///
  /// [interval_endTime] - Required. The end of the time interval.
  ///
  /// [interval_startTime] - Optional. The beginning of the time interval. The
  /// default value for the start time is the end time. The start time must not
  /// be later than the end time.
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// next_page_token value returned by a previous call to this method. Using
  /// this field causes the method to return additional results from the
  /// previous method call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupMembersResponse> list(
    core.String name, {
    core.String? filter,
    core.String? interval_endTime,
    core.String? interval_startTime,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'interval.endTime': ?interval_endTime == null ? null : [interval_endTime],
      'interval.startTime': ?interval_startTime == null
          ? null
          : [interval_startTime],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/members';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsMetricDescriptorsResource {
  final commons.ApiRequester _requester;

  ProjectsMetricDescriptorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new metric descriptor.
  ///
  /// The creation is executed asynchronously. User-created metric descriptors
  /// define custom metrics
  /// (https://cloud.google.com/monitoring/custom-metrics). The metric
  /// descriptor is updated if it already exists, except that metric labels are
  /// never removed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) on which to
  /// execute the request. The format is: 4 projects/PROJECT_ID_OR_NUMBER
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetricDescriptor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetricDescriptor> create(
    MetricDescriptor request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/metricDescriptors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MetricDescriptor.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a metric descriptor.
  ///
  /// Only user-created custom metrics
  /// (https://cloud.google.com/monitoring/custom-metrics) can be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The metric descriptor on which to execute the request.
  /// The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/metricDescriptors/\[METRIC_ID\] An
  /// example of \[METRIC_ID\] is: "custom.googleapis.com/my_test_metric".
  /// Value must have pattern `^projects/\[^/\]+/metricDescriptors/.*$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single metric descriptor.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The metric descriptor on which to execute the request.
  /// The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/metricDescriptors/\[METRIC_ID\] An
  /// example value of \[METRIC_ID\] is
  /// "compute.googleapis.com/instance/disk/read_bytes_count".
  /// Value must have pattern `^projects/\[^/\]+/metricDescriptors/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetricDescriptor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetricDescriptor> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MetricDescriptor.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists metric descriptors that match a filter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) on which to
  /// execute the request. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [activeOnly] - Optional. If true, only metrics and monitored resource
  /// types that have recent data (within roughly 25 hours) will be included in
  /// the response. - If a metric descriptor enumerates monitored resource
  /// types, only the monitored resource types for which the metric type has
  /// recent data will be included in the returned metric descriptor, and if
  /// none of them have recent data, the metric descriptor will not be returned.
  /// - If a metric descriptor does not enumerate the compatible monitored
  /// resource types, it will be returned only if the metric type has recent
  /// data for some monitored resource type. The returned descriptor will not
  /// enumerate any monitored resource types.
  ///
  /// [filter] - Optional. If this field is empty, all custom and system-defined
  /// metric descriptors are returned. Otherwise, the filter
  /// (https://cloud.google.com/monitoring/api/v3/filters) specifies which
  /// metric descriptors are to be returned. For example, the following filter
  /// matches all custom metrics
  /// (https://cloud.google.com/monitoring/custom-metrics): metric.type =
  /// starts_with("custom.googleapis.com/")
  ///
  /// [pageSize] - Optional. A positive number that is the maximum number of
  /// results to return. The default and maximum value is 10,000. If a page_size
  /// \<= 0 or \> 10,000 is submitted, will instead return a maximum of 10,000
  /// results.
  ///
  /// [pageToken] - Optional. If this field is not empty then it must contain
  /// the nextPageToken value returned by a previous call to this method. Using
  /// this field causes the method to return additional results from the
  /// previous method call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMetricDescriptorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMetricDescriptorsResponse> list(
    core.String name, {
    core.bool? activeOnly,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'activeOnly': ?activeOnly == null ? null : ['${activeOnly}'],
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/metricDescriptors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMetricDescriptorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsMonitoredResourceDescriptorsResource {
  final commons.ApiRequester _requester;

  ProjectsMonitoredResourceDescriptorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a single monitored resource descriptor.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The monitored resource descriptor to get. The format
  /// is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/monitoredResourceDescriptors/\[RESOURCE_TYPE\]
  /// The \[RESOURCE_TYPE\] is a predefined type, such as cloudsql_database.
  /// Value must have pattern
  /// `^projects/\[^/\]+/monitoredResourceDescriptors/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MonitoredResourceDescriptor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MonitoredResourceDescriptor> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MonitoredResourceDescriptor.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists monitored resource descriptors that match a filter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) on which to
  /// execute the request. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - An optional filter
  /// (https://cloud.google.com/monitoring/api/v3/filters) describing the
  /// descriptors to be returned. The filter can reference the descriptor's type
  /// and labels. For example, the following filter returns only Google Compute
  /// Engine descriptors that have an id label: resource.type =
  /// starts_with("gce_") AND resource.label:id
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMonitoredResourceDescriptorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMonitoredResourceDescriptorsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$name') + '/monitoredResourceDescriptors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMonitoredResourceDescriptorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsNotificationChannelDescriptorsResource {
  final commons.ApiRequester _requester;

  ProjectsNotificationChannelDescriptorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a single channel descriptor.
  ///
  /// The descriptor indicates which fields are expected / permitted for a
  /// notification channel of the given type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The channel type for which to execute the request. The
  /// format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/notificationChannelDescriptors/\[CHANNEL_TYPE\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/notificationChannelDescriptors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannelDescriptor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannelDescriptor> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationChannelDescriptor.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the descriptors for supported channel types.
  ///
  /// The use of descriptors makes it possible for new channel types to be
  /// dynamically added.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The REST resource name of the parent from which to
  /// retrieve the notification channel descriptors. The expected syntax is:
  /// projects/\[PROJECT_ID_OR_NUMBER\] Note that this names
  /// (https://cloud.google.com/monitoring/api/v3#project_name) the parent
  /// container in which to look for the descriptors; to retrieve a single
  /// descriptor by name, use the GetNotificationChannelDescriptor operation,
  /// instead.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// If not set to a positive number, a reasonable value will be chosen by the
  /// service.
  ///
  /// [pageToken] - If non-empty, page_token must contain a value returned as
  /// the next_page_token in a previous response to request the next set of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotificationChannelDescriptorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotificationChannelDescriptorsResponse> list(
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

    final url_ =
        'v3/' +
        core.Uri.encodeFull('$name') +
        '/notificationChannelDescriptors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationChannelDescriptorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsNotificationChannelsResource {
  final commons.ApiRequester _requester;

  ProjectsNotificationChannelsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new notification channel, representing a single notification
  /// endpoint such as an email address, SMS number, or PagerDuty service.Design
  /// your application to single-thread API calls that modify the state of
  /// notification channels in a single project.
  ///
  /// This includes calls to CreateNotificationChannel,
  /// DeleteNotificationChannel and UpdateNotificationChannel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) on which to
  /// execute the request. The format is: projects/\[PROJECT_ID_OR_NUMBER\] This
  /// names the container into which the channel will be written, this does not
  /// name the newly created channel. The resulting channel's name will have a
  /// normalized version of this field as a prefix, but will add
  /// /notificationChannels/\[CHANNEL_ID\] to identify the channel.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannel> create(
    NotificationChannel request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/notificationChannels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a notification channel.Design your application to single-thread
  /// API calls that modify the state of notification channels in a single
  /// project.
  ///
  /// This includes calls to CreateNotificationChannel,
  /// DeleteNotificationChannel and UpdateNotificationChannel.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The channel for which to execute the request. The
  /// format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/notificationChannels/\[CHANNEL_ID\]
  /// Value must have pattern `^projects/\[^/\]+/notificationChannels/\[^/\]+$`.
  ///
  /// [force] - If true, the notification channel will be deleted regardless of
  /// its use in alert policies (the policies will be updated to remove the
  /// channel). If false, this operation will fail if the notification channel
  /// is referenced by existing alerting policies.
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
  async.Future<Empty> delete(
    core.String name, {
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single notification channel.
  ///
  /// The channel includes the relevant configuration details with which the
  /// channel was created. However, the response may truncate or omit passwords,
  /// API keys, or other private key matter and thus the response may not be
  /// 100% identical to the information that was supplied in the call to the
  /// create method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The channel for which to execute the request. The
  /// format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/notificationChannels/\[CHANNEL_ID\]
  /// Value must have pattern `^projects/\[^/\]+/notificationChannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Requests a verification code for an already verified channel that can then
  /// be used in a call to VerifyNotificationChannel() on a different channel
  /// with an equivalent identity in the same or in a different project.
  ///
  /// This makes it possible to copy a channel between projects without
  /// requiring manual reverification of the channel. If the channel is not in
  /// the verified state, this method will fail (in other words, this may only
  /// be used if the SendNotificationChannelVerificationCode and
  /// VerifyNotificationChannel paths have already been used to put the given
  /// channel into the verified state).There is no guarantee that the
  /// verification codes returned by this method will be of a similar structure
  /// or form as the ones that are delivered to the channel via
  /// SendNotificationChannelVerificationCode; while VerifyNotificationChannel()
  /// will recognize both the codes delivered via
  /// SendNotificationChannelVerificationCode() and returned from
  /// GetNotificationChannelVerificationCode(), it is typically the case that
  /// the verification codes delivered via
  /// SendNotificationChannelVerificationCode() will be shorter and also have a
  /// shorter expiration (e.g. codes such as "G-123456") whereas
  /// GetVerificationCode() will typically return a much longer, websafe base 64
  /// encoded string that has a longer expiration time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The notification channel for which a verification code
  /// is to be generated and retrieved. This must name a channel that is already
  /// verified; if the specified channel is not verified, the request will fail.
  /// Value must have pattern `^projects/\[^/\]+/notificationChannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetNotificationChannelVerificationCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetNotificationChannelVerificationCodeResponse>
  getVerificationCode(
    GetNotificationChannelVerificationCodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':getVerificationCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetNotificationChannelVerificationCodeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the notification channels that have been created for the project.
  ///
  /// To list the types of notification channels that are supported, use the
  /// ListNotificationChannelDescriptors method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) on which to
  /// execute the request. The format is: projects/\[PROJECT_ID_OR_NUMBER\] This
  /// names the container in which to look for the notification channels; it
  /// does not name a specific channel. To query a specific channel by REST
  /// resource name, use the GetNotificationChannel operation.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. If provided, this field specifies the criteria that
  /// must be met by notification channels to be included in the response.For
  /// more details, see sorting and filtering
  /// (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).
  ///
  /// [orderBy] - Optional. A comma-separated list of fields by which to sort
  /// the result. Supports the same set of fields as in filter. Entries can be
  /// prefixed with a minus sign to sort in descending rather than ascending
  /// order.For more details, see sorting and filtering
  /// (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).
  ///
  /// [pageSize] - Optional. The maximum number of results to return in a single
  /// response. If not set to a positive number, a reasonable value will be
  /// chosen by the service.
  ///
  /// [pageToken] - Optional. If non-empty, page_token must contain a value
  /// returned as the next_page_token in a previous response to request the next
  /// set of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotificationChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotificationChannelsResponse> list(
    core.String name, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/notificationChannels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationChannelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a notification channel.
  ///
  /// Fields not specified in the field mask remain unchanged.Design your
  /// application to single-thread API calls that modify the state of
  /// notification channels in a single project. This includes calls to
  /// CreateNotificationChannel, DeleteNotificationChannel and
  /// UpdateNotificationChannel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The full REST resource name for this channel. The
  /// format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/notificationChannels/\[CHANNEL_ID\] The
  /// \[CHANNEL_ID\] is automatically assigned by the server on creation.
  /// Value must have pattern `^projects/\[^/\]+/notificationChannels/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannel> patch(
    NotificationChannel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Causes a verification code to be delivered to the channel.
  ///
  /// The code can then be supplied in VerifyNotificationChannel to verify the
  /// channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The notification channel to which to send a
  /// verification code.
  /// Value must have pattern `^projects/\[^/\]+/notificationChannels/\[^/\]+$`.
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
  async.Future<Empty> sendVerificationCode(
    SendNotificationChannelVerificationCodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':sendVerificationCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verifies a NotificationChannel by proving receipt of the code delivered to
  /// the channel as a result of calling
  /// SendNotificationChannelVerificationCode.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The notification channel to verify.
  /// Value must have pattern `^projects/\[^/\]+/notificationChannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannel> verify(
    VerifyNotificationChannelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':verify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSnoozesResource {
  final commons.ApiRequester _requester;

  ProjectsSnoozesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Snooze that will prevent alerts, which match the provided
  /// criteria, from being opened.
  ///
  /// The Snooze applies for a specific time interval.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) in which a
  /// Snooze should be created. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snooze].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snooze> create(
    Snooze request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/snoozes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Snooze.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a Snooze by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ID of the Snooze to retrieve. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/snoozes/\[SNOOZE_ID\]
  /// Value must have pattern `^projects/\[^/\]+/snoozes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snooze].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snooze> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Snooze.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Snoozes associated with a project.
  ///
  /// Can optionally pass in filter, which specifies predicates to match
  /// Snoozes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) whose Snoozes
  /// should be listed. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. Optional filter to restrict results to the given
  /// criteria. The following fields are supported. interval.start_time
  /// interval.end_timeFor example: interval.start_time \>
  /// "2022-03-11T00:00:00-08:00" AND interval.end_time \<
  /// "2022-03-12T00:00:00-08:00"
  ///
  /// [pageSize] - Optional. The maximum number of results to return for a
  /// single query. The server may further constrain the maximum number of
  /// results returned in a single page. The value should be in the range 1,
  /// 1000. If the value given is outside this range, the server will decide the
  /// number of results to be returned.
  ///
  /// [pageToken] - Optional. The next_page_token from a previous call to
  /// ListSnoozesRequest to get the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnoozesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnoozesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/snoozes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSnoozesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Snooze, identified by its name, with the parameters in the given
  /// Snooze object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. The name of the Snooze. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/snoozes/\[SNOOZE_ID\] The ID of the
  /// Snooze will be generated by the system.
  /// Value must have pattern `^projects/\[^/\]+/snoozes/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The fields to update.For each field listed in
  /// update_mask: If the Snooze object supplied in the UpdateSnoozeRequest has
  /// a value for that field, the value of the field in the existing Snooze will
  /// be set to the value of the field in the supplied Snooze. If the field does
  /// not have a value in the supplied Snooze, the field in the existing Snooze
  /// is set to its default value.Fields not listed retain their existing
  /// value.The following are the field names that are accepted in update_mask:
  /// display_name interval.start_time interval.end_timeThat said, the start
  /// time and end time of the Snooze determines which fields can legally be
  /// updated. Before attempting an update, users should consult the
  /// documentation for UpdateSnoozeRequest, which talks about which fields can
  /// be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snooze].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snooze> patch(
    Snooze request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Snooze.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTimeSeriesResource {
  final commons.ApiRequester _requester;

  ProjectsTimeSeriesResource(commons.ApiRequester client) : _requester = client;

  /// Creates or adds data to one or more time series.
  ///
  /// The response is empty if all time series in the request were written. If
  /// any time series could not be written, a corresponding failure message is
  /// included in the error response. This method does not support resource
  /// locations constraint of an organization policy
  /// (https://cloud.google.com/resource-manager/docs/organization-policy/defining-locations#setting_the_organization_policy).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) on which to
  /// execute the request. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Empty> create(
    CreateTimeSeriesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/timeSeries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates or adds data to one or more service time series.
  ///
  /// A service time series is a time series for a metric from a Google Cloud
  /// service. The response is empty if all time series in the request were
  /// written. If any time series could not be written, a corresponding failure
  /// message is included in the error response. This endpoint rejects writes to
  /// user-defined metrics. This method is only for use by Google Cloud
  /// services. Use projects.timeSeries.create instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) on which to
  /// execute the request. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Empty> createService(
    CreateTimeSeriesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$name') + '/timeSeries:createService';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists time series that match a filter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name), organization or
  /// folder on which to execute the request. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\] organizations/\[ORGANIZATION_ID\]
  /// folders/\[FOLDER_ID\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [aggregation_alignmentPeriod] - The alignment_period specifies a time
  /// interval, in seconds, that is used to divide the data in all the time
  /// series into consistent blocks of time. This will be done before the
  /// per-series aligner can be applied to the data.The value must be at least
  /// 60 seconds. If a per-series aligner other than ALIGN_NONE is specified,
  /// this field is required or an error is returned. If no per-series aligner
  /// is specified, or the aligner ALIGN_NONE is specified, then this field is
  /// ignored.The maximum value of the alignment_period is 104 weeks (2 years)
  /// for charts, and 90,000 seconds (25 hours) for alerting policies.
  ///
  /// [aggregation_crossSeriesReducer] - The reduction operation to be used to
  /// combine time series into a single time series, where the value of each
  /// data point in the resulting series is a function of all the already
  /// aligned values in the input time series.Not all reducer operations can be
  /// applied to all time series. The valid choices depend on the metric_kind
  /// and the value_type of the original time series. Reduction can yield a time
  /// series with a different metric_kind or value_type than the input time
  /// series.Time series data must first be aligned (see per_series_aligner) in
  /// order to perform cross-time series reduction. If cross_series_reducer is
  /// specified, then per_series_aligner must be specified, and must not be
  /// ALIGN_NONE. An alignment_period must also be specified; otherwise, an
  /// error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// Aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric or distribution values. The value_type of the output
  /// is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics with
  /// numeric and distribution values. The value_type of the output is the same
  /// as the value_type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics with numeric or distribution values. The value_type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the number of data points across
  /// time series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics of numeric, Boolean, distribution, and string value_type.
  /// The value_type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the number of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for DELTA and GAUGE metrics of Boolean value_type. The value_type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the number of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the ratio of the number of
  /// True-valued data points to the total number of data points for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics of
  /// Boolean value_type. The output value is in the range 0.0, 1.0 and has
  /// value_type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing the 99th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing the 95th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing the 50th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing the 5th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  ///
  /// [aggregation_groupByFields] - The set of fields to preserve when
  /// cross_series_reducer is specified. The group_by_fields determine how the
  /// time series are partitioned into subsets prior to applying the aggregation
  /// operation. Each subset contains time series that have the same value for
  /// each of the grouping fields. Each individual time series is a member of
  /// exactly one subset. The cross_series_reducer is applied to each subset of
  /// time series. It is not possible to reduce across different resource types,
  /// so this field implicitly contains resource.type. Fields not specified in
  /// group_by_fields are aggregated away. If group_by_fields is not specified
  /// and all the time series have the same resource type, then the time series
  /// are aggregated into a single output time series. If cross_series_reducer
  /// is not defined, this field is ignored.
  ///
  /// [aggregation_perSeriesAligner] - An Aligner describes how to bring the
  /// data points in a single time series into temporal alignment. Except for
  /// ALIGN_NONE, all alignments cause all the data points in an
  /// alignment_period to be mathematically grouped together, resulting in a
  /// single data point for each alignment_period with end timestamp at the end
  /// of the period.Not all alignment operations may be applied to all time
  /// series. The valid choices depend on the metric_kind and value_type of the
  /// original time series. Alignment can change the metric_kind or the
  /// value_type of the time series.Time series data must be aligned in order to
  /// perform cross-time series reduction. If cross_series_reducer is specified,
  /// then per_series_aligner must be specified and not equal to ALIGN_NONE and
  /// alignment_period must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-series reduction is requested. The value_type of the result is the
  /// same as the value_type of the input.
  /// - "ALIGN_DELTA" : Align and convert to DELTA. The output is delta = y1 -
  /// y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the
  /// selected alignment period results in periods with no data, then the
  /// aligned value for such a period is created by interpolation. The
  /// value_type of the aligned result is the same as the value_type of the
  /// input.
  /// - "ALIGN_RATE" : Align and convert to a rate. The result is computed as
  /// rate = (y1 - y0)/(t1 - t0), or "delta over time". Think of this aligner as
  /// providing the slope of the line that passes through the value at the start
  /// and at the end of the alignment_period.This aligner is valid for
  /// CUMULATIVE and DELTA metrics with numeric values. If the selected
  /// alignment period results in periods with no data, then the aligned value
  /// for such a period is created by interpolation. The output is a GAUGE
  /// metric with value_type DOUBLE.If, by "rate", you mean "percentage change",
  /// see the ALIGN_PERCENT_CHANGE aligner instead.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the alignment period boundary. This aligner is valid for GAUGE
  /// metrics with numeric values. The value_type of the aligned result is the
  /// same as the value_type of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by moving the most recent data point before
  /// the end of the alignment period to the boundary at the end of the
  /// alignment period. This aligner is valid for GAUGE metrics. The value_type
  /// of the aligned result is the same as the value_type of the input.
  /// - "ALIGN_MIN" : Align the time series by returning the minimum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MAX" : Align the time series by returning the maximum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MEAN" : Align the time series by returning the mean value in each
  /// alignment period. This aligner is valid for GAUGE and DELTA metrics with
  /// numeric values. The value_type of the aligned result is DOUBLE.
  /// - "ALIGN_COUNT" : Align the time series by returning the number of values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric or Boolean values. The value_type of the aligned
  /// result is INT64.
  /// - "ALIGN_SUM" : Align the time series by returning the sum of the values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric and distribution values. The value_type of the
  /// aligned result is the same as the value_type of the input.
  /// - "ALIGN_STDDEV" : Align the time series by returning the standard
  /// deviation of the values in each alignment period. This aligner is valid
  /// for GAUGE and DELTA metrics with numeric values. The value_type of the
  /// output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align the time series by returning the number of
  /// True values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align the time series by returning the number of
  /// False values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align the time series by returning the ratio of
  /// the number of True values to the total number of values in each alignment
  /// period. This aligner is valid for GAUGE metrics with Boolean values. The
  /// output value is in the range 0.0, 1.0 and has value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 99th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 95th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 50th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 5th percentile of all data points in
  /// the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// aligner is valid for GAUGE and DELTA metrics with numeric values. This
  /// alignment returns ((current - previous)/previous) * 100, where the value
  /// of previous is determined based on the alignment_period.If the values of
  /// current and previous are both 0, then the returned value is 0. If only
  /// previous is 0, the returned value is infinity.A 10-minute moving mean is
  /// computed at each point of the alignment period prior to the above
  /// calculation to smooth the metric and prevent false positives from very
  /// short-lived spikes. The moving mean is only applicable for data whose
  /// values are \>= 0. Any values \< 0 are treated as a missing datapoint, and
  /// are ignored. While DELTA metrics are accepted by this alignment, special
  /// care should be taken that the values for the metric will always be
  /// positive. The output is a GAUGE metric with value_type DOUBLE.
  ///
  /// [filter] - Required. A monitoring filter
  /// (https://cloud.google.com/monitoring/api/v3/filters) that specifies which
  /// time series should be returned. The filter must specify a single metric
  /// type, and can additionally specify metric labels and other information.
  /// For example: metric.type =
  /// "compute.googleapis.com/instance/cpu/usage_time" AND
  /// metric.labels.instance_name = "my-instance-name"
  ///
  /// [interval_endTime] - Required. The end of the time interval.
  ///
  /// [interval_startTime] - Optional. The beginning of the time interval. The
  /// default value for the start time is the end time. The start time must not
  /// be later than the end time.
  ///
  /// [orderBy] - Unsupported: must be left blank. The points in each time
  /// series are currently returned in reverse time order (most recent to
  /// oldest).
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return. If page_size is empty or more than 100,000 results, the effective
  /// page_size is 100,000 results. If view is set to FULL, this is the maximum
  /// number of Points returned. If view is set to HEADERS, this is the maximum
  /// number of TimeSeries returned.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [secondaryAggregation_alignmentPeriod] - The alignment_period specifies a
  /// time interval, in seconds, that is used to divide the data in all the time
  /// series into consistent blocks of time. This will be done before the
  /// per-series aligner can be applied to the data.The value must be at least
  /// 60 seconds. If a per-series aligner other than ALIGN_NONE is specified,
  /// this field is required or an error is returned. If no per-series aligner
  /// is specified, or the aligner ALIGN_NONE is specified, then this field is
  /// ignored.The maximum value of the alignment_period is 104 weeks (2 years)
  /// for charts, and 90,000 seconds (25 hours) for alerting policies.
  ///
  /// [secondaryAggregation_crossSeriesReducer] - The reduction operation to be
  /// used to combine time series into a single time series, where the value of
  /// each data point in the resulting series is a function of all the already
  /// aligned values in the input time series.Not all reducer operations can be
  /// applied to all time series. The valid choices depend on the metric_kind
  /// and the value_type of the original time series. Reduction can yield a time
  /// series with a different metric_kind or value_type than the input time
  /// series.Time series data must first be aligned (see per_series_aligner) in
  /// order to perform cross-time series reduction. If cross_series_reducer is
  /// specified, then per_series_aligner must be specified, and must not be
  /// ALIGN_NONE. An alignment_period must also be specified; otherwise, an
  /// error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// Aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric or distribution values. The value_type of the output
  /// is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics with
  /// numeric and distribution values. The value_type of the output is the same
  /// as the value_type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics with numeric or distribution values. The value_type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the number of data points across
  /// time series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics of numeric, Boolean, distribution, and string value_type.
  /// The value_type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the number of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for DELTA and GAUGE metrics of Boolean value_type. The value_type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the number of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the ratio of the number of
  /// True-valued data points to the total number of data points for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics of
  /// Boolean value_type. The output value is in the range 0.0, 1.0 and has
  /// value_type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing the 99th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing the 95th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing the 50th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing the 5th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  ///
  /// [secondaryAggregation_groupByFields] - The set of fields to preserve when
  /// cross_series_reducer is specified. The group_by_fields determine how the
  /// time series are partitioned into subsets prior to applying the aggregation
  /// operation. Each subset contains time series that have the same value for
  /// each of the grouping fields. Each individual time series is a member of
  /// exactly one subset. The cross_series_reducer is applied to each subset of
  /// time series. It is not possible to reduce across different resource types,
  /// so this field implicitly contains resource.type. Fields not specified in
  /// group_by_fields are aggregated away. If group_by_fields is not specified
  /// and all the time series have the same resource type, then the time series
  /// are aggregated into a single output time series. If cross_series_reducer
  /// is not defined, this field is ignored.
  ///
  /// [secondaryAggregation_perSeriesAligner] - An Aligner describes how to
  /// bring the data points in a single time series into temporal alignment.
  /// Except for ALIGN_NONE, all alignments cause all the data points in an
  /// alignment_period to be mathematically grouped together, resulting in a
  /// single data point for each alignment_period with end timestamp at the end
  /// of the period.Not all alignment operations may be applied to all time
  /// series. The valid choices depend on the metric_kind and value_type of the
  /// original time series. Alignment can change the metric_kind or the
  /// value_type of the time series.Time series data must be aligned in order to
  /// perform cross-time series reduction. If cross_series_reducer is specified,
  /// then per_series_aligner must be specified and not equal to ALIGN_NONE and
  /// alignment_period must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-series reduction is requested. The value_type of the result is the
  /// same as the value_type of the input.
  /// - "ALIGN_DELTA" : Align and convert to DELTA. The output is delta = y1 -
  /// y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the
  /// selected alignment period results in periods with no data, then the
  /// aligned value for such a period is created by interpolation. The
  /// value_type of the aligned result is the same as the value_type of the
  /// input.
  /// - "ALIGN_RATE" : Align and convert to a rate. The result is computed as
  /// rate = (y1 - y0)/(t1 - t0), or "delta over time". Think of this aligner as
  /// providing the slope of the line that passes through the value at the start
  /// and at the end of the alignment_period.This aligner is valid for
  /// CUMULATIVE and DELTA metrics with numeric values. If the selected
  /// alignment period results in periods with no data, then the aligned value
  /// for such a period is created by interpolation. The output is a GAUGE
  /// metric with value_type DOUBLE.If, by "rate", you mean "percentage change",
  /// see the ALIGN_PERCENT_CHANGE aligner instead.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the alignment period boundary. This aligner is valid for GAUGE
  /// metrics with numeric values. The value_type of the aligned result is the
  /// same as the value_type of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by moving the most recent data point before
  /// the end of the alignment period to the boundary at the end of the
  /// alignment period. This aligner is valid for GAUGE metrics. The value_type
  /// of the aligned result is the same as the value_type of the input.
  /// - "ALIGN_MIN" : Align the time series by returning the minimum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MAX" : Align the time series by returning the maximum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MEAN" : Align the time series by returning the mean value in each
  /// alignment period. This aligner is valid for GAUGE and DELTA metrics with
  /// numeric values. The value_type of the aligned result is DOUBLE.
  /// - "ALIGN_COUNT" : Align the time series by returning the number of values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric or Boolean values. The value_type of the aligned
  /// result is INT64.
  /// - "ALIGN_SUM" : Align the time series by returning the sum of the values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric and distribution values. The value_type of the
  /// aligned result is the same as the value_type of the input.
  /// - "ALIGN_STDDEV" : Align the time series by returning the standard
  /// deviation of the values in each alignment period. This aligner is valid
  /// for GAUGE and DELTA metrics with numeric values. The value_type of the
  /// output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align the time series by returning the number of
  /// True values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align the time series by returning the number of
  /// False values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align the time series by returning the ratio of
  /// the number of True values to the total number of values in each alignment
  /// period. This aligner is valid for GAUGE metrics with Boolean values. The
  /// output value is in the range 0.0, 1.0 and has value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 99th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 95th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 50th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 5th percentile of all data points in
  /// the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// aligner is valid for GAUGE and DELTA metrics with numeric values. This
  /// alignment returns ((current - previous)/previous) * 100, where the value
  /// of previous is determined based on the alignment_period.If the values of
  /// current and previous are both 0, then the returned value is 0. If only
  /// previous is 0, the returned value is infinity.A 10-minute moving mean is
  /// computed at each point of the alignment period prior to the above
  /// calculation to smooth the metric and prevent false positives from very
  /// short-lived spikes. The moving mean is only applicable for data whose
  /// values are \>= 0. Any values \< 0 are treated as a missing datapoint, and
  /// are ignored. While DELTA metrics are accepted by this alignment, special
  /// care should be taken that the values for the metric will always be
  /// positive. The output is a GAUGE metric with value_type DOUBLE.
  ///
  /// [view] - Required. Specifies which information is returned about the time
  /// series.
  /// Possible string values are:
  /// - "FULL" : Returns the identity of the metric(s), the time series, and the
  /// time series data.
  /// - "HEADERS" : Returns the identity of the metric and the time series
  /// resource, but not the time series data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTimeSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTimeSeriesResponse> list(
    core.String name, {
    core.String? aggregation_alignmentPeriod,
    core.String? aggregation_crossSeriesReducer,
    core.List<core.String>? aggregation_groupByFields,
    core.String? aggregation_perSeriesAligner,
    core.String? filter,
    core.String? interval_endTime,
    core.String? interval_startTime,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? secondaryAggregation_alignmentPeriod,
    core.String? secondaryAggregation_crossSeriesReducer,
    core.List<core.String>? secondaryAggregation_groupByFields,
    core.String? secondaryAggregation_perSeriesAligner,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'aggregation.alignmentPeriod': ?aggregation_alignmentPeriod == null
          ? null
          : [aggregation_alignmentPeriod],
      'aggregation.crossSeriesReducer': ?aggregation_crossSeriesReducer == null
          ? null
          : [aggregation_crossSeriesReducer],
      'aggregation.groupByFields': ?aggregation_groupByFields,
      'aggregation.perSeriesAligner': ?aggregation_perSeriesAligner == null
          ? null
          : [aggregation_perSeriesAligner],
      'filter': ?filter == null ? null : [filter],
      'interval.endTime': ?interval_endTime == null ? null : [interval_endTime],
      'interval.startTime': ?interval_startTime == null
          ? null
          : [interval_startTime],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'secondaryAggregation.alignmentPeriod':
          ?secondaryAggregation_alignmentPeriod == null
          ? null
          : [secondaryAggregation_alignmentPeriod],
      'secondaryAggregation.crossSeriesReducer':
          ?secondaryAggregation_crossSeriesReducer == null
          ? null
          : [secondaryAggregation_crossSeriesReducer],
      'secondaryAggregation.groupByFields': ?secondaryAggregation_groupByFields,
      'secondaryAggregation.perSeriesAligner':
          ?secondaryAggregation_perSeriesAligner == null
          ? null
          : [secondaryAggregation_perSeriesAligner],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/timeSeries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTimeSeriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries time series by using Monitoring Query Language (MQL).
  ///
  /// We recommend using PromQL instead of MQL. For more information about the
  /// status of MQL, see the MQL deprecation notice
  /// (https://cloud.google.com/stackdriver/docs/deprecations/mql).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) on which to
  /// execute the request. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryTimeSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<QueryTimeSeriesResponse> query(
    QueryTimeSeriesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/timeSeries:query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryTimeSeriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsUptimeCheckConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsUptimeCheckConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Uptime check configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) in which to
  /// create the Uptime check. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UptimeCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UptimeCheckConfig> create(
    UptimeCheckConfig request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/uptimeCheckConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UptimeCheckConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an Uptime check configuration.
  ///
  /// Note that this method will fail if the Uptime check configuration is
  /// referenced by an alert policy or other dependent configs that would be
  /// rendered invalid by the deletion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Uptime check configuration to delete. The format
  /// is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/uptimeCheckConfigs/\[UPTIME_CHECK_ID\]
  /// Value must have pattern `^projects/\[^/\]+/uptimeCheckConfigs/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single Uptime check configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Uptime check configuration to retrieve. The format
  /// is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/uptimeCheckConfigs/\[UPTIME_CHECK_ID\]
  /// Value must have pattern `^projects/\[^/\]+/uptimeCheckConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UptimeCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UptimeCheckConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UptimeCheckConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the existing valid Uptime check configurations for the project
  /// (leaving out any invalid configurations).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) whose Uptime
  /// check configurations are listed. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by uptime checks to be included in the response.For more details, see
  /// Filtering syntax
  /// (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering#filter_syntax).
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// The server may further constrain the maximum number of results returned in
  /// a single page. If the page_size is \<=0, the server will decide the number
  /// of results to be returned.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return more results from the previous method
  /// call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUptimeCheckConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUptimeCheckConfigsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/uptimeCheckConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUptimeCheckConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an Uptime check configuration.
  ///
  /// You can either replace the entire configuration with a new one or replace
  /// only certain fields in the current configuration by specifying the fields
  /// to be updated via updateMask. Returns the updated configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. A unique resource name for this Uptime check
  /// configuration. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/uptimeCheckConfigs/\[UPTIME_CHECK_ID\]
  /// \[PROJECT_ID_OR_NUMBER\] is the Workspace host project associated with the
  /// Uptime check.This field should be omitted when creating the Uptime check
  /// configuration; on create, the resource name is assigned by the server and
  /// included in the response.
  /// Value must have pattern `^projects/\[^/\]+/uptimeCheckConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. If present, only the listed fields in the current
  /// Uptime check configuration are updated with values from the new
  /// configuration. If this field is empty, then the current configuration is
  /// completely replaced with the new configuration.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UptimeCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UptimeCheckConfig> patch(
    UptimeCheckConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UptimeCheckConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ServicesResource {
  final commons.ApiRequester _requester;

  ServicesServiceLevelObjectivesResource get serviceLevelObjectives =>
      ServicesServiceLevelObjectivesResource(_requester);

  ServicesResource(commons.ApiRequester client) : _requester = client;

  /// Create a Service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name
  /// (https://cloud.google.com/monitoring/api/v3#project_name) of the parent
  /// Metrics Scope. The format is: projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [serviceId] - Optional. The Service id to use for this Service. If
  /// omitted, an id will be generated instead. Must match the pattern
  /// \[a-z0-9\-\]+
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> create(
    Service request,
    core.String parent, {
    core.String? serviceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'serviceId': ?serviceId == null ? null : [serviceId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Soft delete this Service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Service to delete. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]
  /// Value must have pattern `^\[^/\]+/\[^/\]+/services/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the named Service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Service. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]
  /// Value must have pattern `^\[^/\]+/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List Services for this Metrics Scope.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent containing the listed
  /// services, either a project
  /// (https://cloud.google.com/monitoring/api/v3#project_name) or a Monitoring
  /// Metrics Scope. The formats are: projects/\[PROJECT_ID_OR_NUMBER\]
  /// workspaces/\[HOST_PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [filter] - A filter specifying what Services to return. The filter
  /// supports filtering on a particular service-identifier type or one of its
  /// attributes.To filter on a particular service-identifier type, the
  /// identifier_case refers to which option in the identifier field is
  /// populated. For example, the filter identifier_case = "CUSTOM" would match
  /// all services with a value for the custom field. Valid options include
  /// "CUSTOM", "APP_ENGINE", "MESH_ISTIO", and the other options listed at
  /// https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services#ServiceTo
  /// filter on an attribute of a service-identifier type, apply the filter name
  /// by using the snake case of the service-identifier type and the attribute
  /// of that service-identifier type, and join the two with a period. For
  /// example, to filter by the meshUid field of the MeshIstio
  /// service-identifier type, you must filter on mesh_istio.mesh_uid = "123" to
  /// match all services with mesh UID "123". Service-identifier types and their
  /// attributes are described at
  /// https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services#Service
  ///
  /// [pageSize] - A non-negative number that is the maximum number of results
  /// to return. When 0, use default page size.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update this Service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name for this Service. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]
  /// Value must have pattern `^\[^/\]+/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field paths defining which fields to use for the
  /// update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> patch(
    Service request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ServicesServiceLevelObjectivesResource {
  final commons.ApiRequester _requester;

  ServicesServiceLevelObjectivesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a ServiceLevelObjective for the given Service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent Service. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]
  /// Value must have pattern `^\[^/\]+/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [serviceLevelObjectiveId] - Optional. The ServiceLevelObjective id to use
  /// for this ServiceLevelObjective. If omitted, an id will be generated
  /// instead. Must match the pattern ^\[a-zA-Z0-9-_:.\]+$
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceLevelObjective].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceLevelObjective> create(
    ServiceLevelObjective request,
    core.String parent, {
    core.String? serviceLevelObjectiveId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'serviceLevelObjectiveId': ?serviceLevelObjectiveId == null
          ? null
          : [serviceLevelObjectiveId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/serviceLevelObjectives';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ServiceLevelObjective.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete the given ServiceLevelObjective.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the ServiceLevelObjective to delete.
  /// The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]/serviceLevelObjectives/\[SLO_NAME\]
  /// Value must have pattern
  /// `^\[^/\]+/\[^/\]+/services/\[^/\]+/serviceLevelObjectives/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a ServiceLevelObjective by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the ServiceLevelObjective to get. The
  /// format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]/serviceLevelObjectives/\[SLO_NAME\]
  /// Value must have pattern
  /// `^\[^/\]+/\[^/\]+/services/\[^/\]+/serviceLevelObjectives/\[^/\]+$`.
  ///
  /// [view] - View of the ServiceLevelObjective to return. If DEFAULT, return
  /// the ServiceLevelObjective as originally defined. If EXPLICIT and the
  /// ServiceLevelObjective is defined in terms of a BasicSli, replace the
  /// BasicSli with a RequestBasedSli spelling out how the SLI is computed.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Same as FULL.
  /// - "FULL" : Return the embedded ServiceLevelIndicator in the form in which
  /// it was defined. If it was defined using a BasicSli, return that BasicSli.
  /// - "EXPLICIT" : For ServiceLevelIndicators using BasicSli articulation,
  /// instead return the ServiceLevelIndicator with its mode of computation
  /// fully spelled out as a RequestBasedSli. For ServiceLevelIndicators using
  /// RequestBasedSli or WindowsBasedSli, return the ServiceLevelIndicator as it
  /// was provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceLevelObjective].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceLevelObjective> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ServiceLevelObjective.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List the ServiceLevelObjectives for the given Service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent containing the listed
  /// SLOs, either a project or a Monitoring Metrics Scope. The formats are:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]
  /// workspaces/\[HOST_PROJECT_ID_OR_NUMBER\]/services/-
  /// Value must have pattern `^\[^/\]+/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - A filter specifying what ServiceLevelObjectives to return.
  ///
  /// [pageSize] - A non-negative number that is the maximum number of results
  /// to return. When 0, use default page size.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [view] - View of the ServiceLevelObjectives to return. If DEFAULT, return
  /// each ServiceLevelObjective as originally defined. If EXPLICIT and the
  /// ServiceLevelObjective is defined in terms of a BasicSli, replace the
  /// BasicSli with a RequestBasedSli spelling out how the SLI is computed.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Same as FULL.
  /// - "FULL" : Return the embedded ServiceLevelIndicator in the form in which
  /// it was defined. If it was defined using a BasicSli, return that BasicSli.
  /// - "EXPLICIT" : For ServiceLevelIndicators using BasicSli articulation,
  /// instead return the ServiceLevelIndicator with its mode of computation
  /// fully spelled out as a RequestBasedSli. For ServiceLevelIndicators using
  /// RequestBasedSli or WindowsBasedSli, return the ServiceLevelIndicator as it
  /// was provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceLevelObjectivesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceLevelObjectivesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/serviceLevelObjectives';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceLevelObjectivesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the given ServiceLevelObjective.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name for this ServiceLevelObjective. The
  /// format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]/serviceLevelObjectives/\[SLO_NAME\]
  /// Value must have pattern
  /// `^\[^/\]+/\[^/\]+/services/\[^/\]+/serviceLevelObjectives/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field paths defining which fields to use for the
  /// update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceLevelObjective].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceLevelObjective> patch(
    ServiceLevelObjective request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ServiceLevelObjective.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class UptimeCheckIpsResource {
  final commons.ApiRequester _requester;

  UptimeCheckIpsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the list of IP addresses that checkers run from.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// The server may further constrain the maximum number of results returned in
  /// a single page. If the page_size is \<=0, the server will decide the number
  /// of results to be returned. NOTE: this field is not yet implemented
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return more results from the previous method
  /// call. NOTE: this field is not yet implemented
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUptimeCheckIpsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUptimeCheckIpsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v3/uptimeCheckIps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUptimeCheckIpsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Describes how to combine multiple time series to provide a different view of
/// the data.
///
/// Aggregation of time series is done in two steps. First, each time series in
/// the set is aligned to the same time interval boundaries, then the set of
/// time series is optionally reduced in number.Alignment consists of applying
/// the per_series_aligner operation to each time series after its data has been
/// divided into regular alignment_period time intervals. This process takes all
/// of the data points in an alignment period, applies a mathematical
/// transformation such as averaging, minimum, maximum, delta, etc., and
/// converts them into a single data point per period.Reduction is when the
/// aligned and transformed time series can optionally be combined, reducing the
/// number of time series through similar mathematical transformations.
/// Reduction involves applying a cross_series_reducer to all the time series,
/// optionally sorting the time series into subsets with group_by_fields, and
/// applying the reducer to each subset.The raw time series data can contain a
/// huge amount of information from multiple sources. Alignment and reduction
/// transforms this mass of data into a more manageable and representative
/// collection of data, for example "the 95% latency across the average of all
/// tasks in a cluster". This representative data can be more easily graphed and
/// comprehended, and the individual time series data is still available for
/// later drilldown. For more details, see Filtering and aggregation
/// (https://cloud.google.com/monitoring/api/v3/aggregation).
class Aggregation {
  /// The alignment_period specifies a time interval, in seconds, that is used
  /// to divide the data in all the time series into consistent blocks of time.
  ///
  /// This will be done before the per-series aligner can be applied to the
  /// data.The value must be at least 60 seconds. If a per-series aligner other
  /// than ALIGN_NONE is specified, this field is required or an error is
  /// returned. If no per-series aligner is specified, or the aligner ALIGN_NONE
  /// is specified, then this field is ignored.The maximum value of the
  /// alignment_period is 104 weeks (2 years) for charts, and 90,000 seconds (25
  /// hours) for alerting policies.
  core.String? alignmentPeriod;

  /// The reduction operation to be used to combine time series into a single
  /// time series, where the value of each data point in the resulting series is
  /// a function of all the already aligned values in the input time series.Not
  /// all reducer operations can be applied to all time series.
  ///
  /// The valid choices depend on the metric_kind and the value_type of the
  /// original time series. Reduction can yield a time series with a different
  /// metric_kind or value_type than the input time series.Time series data must
  /// first be aligned (see per_series_aligner) in order to perform cross-time
  /// series reduction. If cross_series_reducer is specified, then
  /// per_series_aligner must be specified, and must not be ALIGN_NONE. An
  /// alignment_period must also be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// Aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric or distribution values. The value_type of the output
  /// is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics with
  /// numeric and distribution values. The value_type of the output is the same
  /// as the value_type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics with numeric or distribution values. The value_type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the number of data points across
  /// time series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics of numeric, Boolean, distribution, and string value_type.
  /// The value_type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the number of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for DELTA and GAUGE metrics of Boolean value_type. The value_type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the number of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the ratio of the number of
  /// True-valued data points to the total number of data points for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics of
  /// Boolean value_type. The output value is in the range 0.0, 1.0 and has
  /// value_type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing the 99th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing the 95th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing the 50th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing the 5th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  core.String? crossSeriesReducer;

  /// The set of fields to preserve when cross_series_reducer is specified.
  ///
  /// The group_by_fields determine how the time series are partitioned into
  /// subsets prior to applying the aggregation operation. Each subset contains
  /// time series that have the same value for each of the grouping fields. Each
  /// individual time series is a member of exactly one subset. The
  /// cross_series_reducer is applied to each subset of time series. It is not
  /// possible to reduce across different resource types, so this field
  /// implicitly contains resource.type. Fields not specified in group_by_fields
  /// are aggregated away. If group_by_fields is not specified and all the time
  /// series have the same resource type, then the time series are aggregated
  /// into a single output time series. If cross_series_reducer is not defined,
  /// this field is ignored.
  core.List<core.String>? groupByFields;

  /// An Aligner describes how to bring the data points in a single time series
  /// into temporal alignment.
  ///
  /// Except for ALIGN_NONE, all alignments cause all the data points in an
  /// alignment_period to be mathematically grouped together, resulting in a
  /// single data point for each alignment_period with end timestamp at the end
  /// of the period.Not all alignment operations may be applied to all time
  /// series. The valid choices depend on the metric_kind and value_type of the
  /// original time series. Alignment can change the metric_kind or the
  /// value_type of the time series.Time series data must be aligned in order to
  /// perform cross-time series reduction. If cross_series_reducer is specified,
  /// then per_series_aligner must be specified and not equal to ALIGN_NONE and
  /// alignment_period must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-series reduction is requested. The value_type of the result is the
  /// same as the value_type of the input.
  /// - "ALIGN_DELTA" : Align and convert to DELTA. The output is delta = y1 -
  /// y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the
  /// selected alignment period results in periods with no data, then the
  /// aligned value for such a period is created by interpolation. The
  /// value_type of the aligned result is the same as the value_type of the
  /// input.
  /// - "ALIGN_RATE" : Align and convert to a rate. The result is computed as
  /// rate = (y1 - y0)/(t1 - t0), or "delta over time". Think of this aligner as
  /// providing the slope of the line that passes through the value at the start
  /// and at the end of the alignment_period.This aligner is valid for
  /// CUMULATIVE and DELTA metrics with numeric values. If the selected
  /// alignment period results in periods with no data, then the aligned value
  /// for such a period is created by interpolation. The output is a GAUGE
  /// metric with value_type DOUBLE.If, by "rate", you mean "percentage change",
  /// see the ALIGN_PERCENT_CHANGE aligner instead.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the alignment period boundary. This aligner is valid for GAUGE
  /// metrics with numeric values. The value_type of the aligned result is the
  /// same as the value_type of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by moving the most recent data point before
  /// the end of the alignment period to the boundary at the end of the
  /// alignment period. This aligner is valid for GAUGE metrics. The value_type
  /// of the aligned result is the same as the value_type of the input.
  /// - "ALIGN_MIN" : Align the time series by returning the minimum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MAX" : Align the time series by returning the maximum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MEAN" : Align the time series by returning the mean value in each
  /// alignment period. This aligner is valid for GAUGE and DELTA metrics with
  /// numeric values. The value_type of the aligned result is DOUBLE.
  /// - "ALIGN_COUNT" : Align the time series by returning the number of values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric or Boolean values. The value_type of the aligned
  /// result is INT64.
  /// - "ALIGN_SUM" : Align the time series by returning the sum of the values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric and distribution values. The value_type of the
  /// aligned result is the same as the value_type of the input.
  /// - "ALIGN_STDDEV" : Align the time series by returning the standard
  /// deviation of the values in each alignment period. This aligner is valid
  /// for GAUGE and DELTA metrics with numeric values. The value_type of the
  /// output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align the time series by returning the number of
  /// True values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align the time series by returning the number of
  /// False values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align the time series by returning the ratio of
  /// the number of True values to the total number of values in each alignment
  /// period. This aligner is valid for GAUGE metrics with Boolean values. The
  /// output value is in the range 0.0, 1.0 and has value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 99th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 95th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 50th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 5th percentile of all data points in
  /// the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// aligner is valid for GAUGE and DELTA metrics with numeric values. This
  /// alignment returns ((current - previous)/previous) * 100, where the value
  /// of previous is determined based on the alignment_period.If the values of
  /// current and previous are both 0, then the returned value is 0. If only
  /// previous is 0, the returned value is infinity.A 10-minute moving mean is
  /// computed at each point of the alignment period prior to the above
  /// calculation to smooth the metric and prevent false positives from very
  /// short-lived spikes. The moving mean is only applicable for data whose
  /// values are \>= 0. Any values \< 0 are treated as a missing datapoint, and
  /// are ignored. While DELTA metrics are accepted by this alignment, special
  /// care should be taken that the values for the metric will always be
  /// positive. The output is a GAUGE metric with value_type DOUBLE.
  core.String? perSeriesAligner;

  Aggregation({
    this.alignmentPeriod,
    this.crossSeriesReducer,
    this.groupByFields,
    this.perSeriesAligner,
  });

  Aggregation.fromJson(core.Map json_)
    : this(
        alignmentPeriod: json_['alignmentPeriod'] as core.String?,
        crossSeriesReducer: json_['crossSeriesReducer'] as core.String?,
        groupByFields: (json_['groupByFields'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        perSeriesAligner: json_['perSeriesAligner'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alignmentPeriod = this.alignmentPeriod;
    final crossSeriesReducer = this.crossSeriesReducer;
    final groupByFields = this.groupByFields;
    final perSeriesAligner = this.perSeriesAligner;
    return {
      'alignmentPeriod': ?alignmentPeriod,
      'crossSeriesReducer': ?crossSeriesReducer,
      'groupByFields': ?groupByFields,
      'perSeriesAligner': ?perSeriesAligner,
    };
  }
}

/// An alert is the representation of a violation of an alert policy.
///
/// It is a read-only resource that cannot be modified by the accompanied API.
class Alert {
  /// The time when the alert was closed.
  core.String? closeTime;

  /// The log information associated with the alert.
  ///
  /// This field is only populated for log-based alerts.
  LogMetadata? log;

  /// The metadata of the monitored resource.
  MonitoredResourceMetadata? metadata;

  /// The metric type and any metric labels preserved from the incident's
  /// generating condition.
  Metric? metric;

  /// Identifier.
  ///
  /// The name of the alert.The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alerts/\[ALERT_ID\] The \[ALERT_ID\] is
  /// a system-assigned unique identifier for the alert.
  core.String? name;

  /// The time when the alert was opened.
  core.String? openTime;

  /// The snapshot of the alert policy that generated this alert.
  PolicySnapshot? policy;

  /// The monitored resource type and any monitored resource labels preserved
  /// from the incident's generating condition.
  MonitoredResource? resource;

  /// The current state of the alert.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The alert state is unspecified.
  /// - "OPEN" : The alert is open.
  /// - "CLOSED" : The alert is closed.
  core.String? state;

  Alert({
    this.closeTime,
    this.log,
    this.metadata,
    this.metric,
    this.name,
    this.openTime,
    this.policy,
    this.resource,
    this.state,
  });

  Alert.fromJson(core.Map json_)
    : this(
        closeTime: json_['closeTime'] as core.String?,
        log: json_.containsKey('log')
            ? LogMetadata.fromJson(
                json_['log'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? MonitoredResourceMetadata.fromJson(
                json_['metadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metric: json_.containsKey('metric')
            ? Metric.fromJson(
                json_['metric'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        openTime: json_['openTime'] as core.String?,
        policy: json_.containsKey('policy')
            ? PolicySnapshot.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        resource: json_.containsKey('resource')
            ? MonitoredResource.fromJson(
                json_['resource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final closeTime = this.closeTime;
    final log = this.log;
    final metadata = this.metadata;
    final metric = this.metric;
    final name = this.name;
    final openTime = this.openTime;
    final policy = this.policy;
    final resource = this.resource;
    final state = this.state;
    return {
      'closeTime': ?closeTime,
      'log': ?log,
      'metadata': ?metadata,
      'metric': ?metric,
      'name': ?name,
      'openTime': ?openTime,
      'policy': ?policy,
      'resource': ?resource,
      'state': ?state,
    };
  }
}

/// A description of the conditions under which some aspect of your system is
/// considered to be "unhealthy" and the ways to notify people or services about
/// this state.
///
/// For an overview of alerting policies, see Introduction to Alerting
/// (https://cloud.google.com/monitoring/alerts/).
class AlertPolicy {
  /// Control over how this alerting policy's notification channels are
  /// notified.
  AlertStrategy? alertStrategy;

  /// How to combine the results of multiple conditions to determine if an
  /// incident should be opened.
  ///
  /// If condition_time_series_query_language is present, this must be
  /// COMBINE_UNSPECIFIED.
  /// Possible string values are:
  /// - "COMBINE_UNSPECIFIED" : An unspecified combiner.
  /// - "AND" : Combine conditions using the logical AND operator. An incident
  /// is created only if all the conditions are met simultaneously. This
  /// combiner is satisfied if all conditions are met, even if they are met on
  /// completely different resources.
  /// - "OR" : Combine conditions using the logical OR operator. An incident is
  /// created if any of the listed conditions is met.
  /// - "AND_WITH_MATCHING_RESOURCE" : Combine conditions using logical AND
  /// operator, but unlike the regular AND option, an incident is created only
  /// if all conditions are met simultaneously on at least one resource.
  core.String? combiner;

  /// A list of conditions for the policy.
  ///
  /// The conditions are combined by AND or OR according to the combiner field.
  /// If the combined conditions evaluate to true, then an incident is created.
  /// A policy can have from one to six conditions. If
  /// condition_time_series_query_language is present, it must be the only
  /// condition. If condition_monitoring_query_language is present, it must be
  /// the only condition.
  core.List<Condition>? conditions;

  /// A read-only record of the creation of the alerting policy.
  ///
  /// If provided in a call to create or update, this field will be ignored.
  MutationRecord? creationRecord;

  /// A short name or phrase used to identify the policy in dashboards,
  /// notifications, and incidents.
  ///
  /// To avoid confusion, don't use the same display name for multiple policies
  /// in the same project. The name is limited to 512 Unicode characters.The
  /// convention for the display_name of a PrometheusQueryLanguageCondition is
  /// "{rule group name}/{alert name}", where the {rule group name} and {alert
  /// name} should be taken from the corresponding Prometheus configuration
  /// file. This convention is not enforced. In any case the display_name is not
  /// a unique key of the AlertPolicy.
  core.String? displayName;

  /// Documentation that is included with notifications and incidents related to
  /// this policy.
  ///
  /// Best practice is for the documentation to include information to help
  /// responders understand, mitigate, escalate, and correct the underlying
  /// problems detected by the alerting policy. Notification channels that have
  /// limited capacity might not show this documentation.
  Documentation? documentation;

  /// Whether or not the policy is enabled.
  ///
  /// On write, the default interpretation if unset is that the policy is
  /// enabled. On read, clients should not make any assumption about the state
  /// if it has not been populated. The field should always be populated on List
  /// and Get operations, unless a field projection has been specified that
  /// strips it out.
  core.bool? enabled;

  /// A read-only record of the most recent change to the alerting policy.
  ///
  /// If provided in a call to create or update, this field will be ignored.
  MutationRecord? mutationRecord;

  /// Identifier.
  ///
  /// Required if the policy exists. The resource name for this policy. The
  /// format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alertPolicies/\[ALERT_POLICY_ID\]
  /// \[ALERT_POLICY_ID\] is assigned by Cloud Monitoring when the policy is
  /// created. When calling the alertPolicies.create method, do not include the
  /// name field in the alerting policy passed as part of the request.
  core.String? name;

  /// Identifies the notification channels to which notifications should be sent
  /// when incidents are opened or closed or when new violations occur on an
  /// already opened incident.
  ///
  /// Each element of this array corresponds to the name field in each of the
  /// NotificationChannel objects that are returned from the
  /// ListNotificationChannels method. The format of the entries in this field
  /// is: projects/\[PROJECT_ID_OR_NUMBER\]/notificationChannels/\[CHANNEL_ID\]
  core.List<core.String>? notificationChannels;

  /// The severity of an alerting policy indicates how important incidents
  /// generated by that policy are.
  ///
  /// The severity level will be displayed on the Incident detail page and in
  /// notifications.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : No severity is specified. This is the default
  /// value.
  /// - "CRITICAL" : This is the highest severity level. Use this if the problem
  /// could cause significant damage or downtime.
  /// - "ERROR" : This is the medium severity level. Use this if the problem
  /// could cause minor damage or downtime.
  /// - "WARNING" : This is the lowest severity level. Use this if the problem
  /// is not causing any damage or downtime, but could potentially lead to a
  /// problem in the future.
  core.String? severity;

  /// User-supplied key/value data to be used for organizing and identifying the
  /// AlertPolicy objects.The field can contain up to 64 entries.
  ///
  /// Each key and value is limited to 63 Unicode characters or 128 bytes,
  /// whichever is smaller. Labels and values can contain only lowercase
  /// letters, numerals, underscores, and dashes. Keys must begin with a
  /// letter.Note that Prometheus {alert name} is a valid Prometheus label names
  /// (https://prometheus.io/docs/concepts/data_model/#metric-names-and-labels),
  /// whereas Prometheus {rule group} is an unrestricted UTF-8 string. This
  /// means that they cannot be stored as-is in user labels, because they may
  /// contain characters that are not allowed in user-label values.
  core.Map<core.String, core.String>? userLabels;

  /// Read-only description of how the alerting policy is invalid.
  ///
  /// This field is only set when the alerting policy is invalid. An invalid
  /// alerting policy will not generate incidents.
  Status? validity;

  AlertPolicy({
    this.alertStrategy,
    this.combiner,
    this.conditions,
    this.creationRecord,
    this.displayName,
    this.documentation,
    this.enabled,
    this.mutationRecord,
    this.name,
    this.notificationChannels,
    this.severity,
    this.userLabels,
    this.validity,
  });

  AlertPolicy.fromJson(core.Map json_)
    : this(
        alertStrategy: json_.containsKey('alertStrategy')
            ? AlertStrategy.fromJson(
                json_['alertStrategy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        combiner: json_['combiner'] as core.String?,
        conditions: (json_['conditions'] as core.List?)
            ?.map(
              (value) => Condition.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        creationRecord: json_.containsKey('creationRecord')
            ? MutationRecord.fromJson(
                json_['creationRecord'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        documentation: json_.containsKey('documentation')
            ? Documentation.fromJson(
                json_['documentation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        enabled: json_['enabled'] as core.bool?,
        mutationRecord: json_.containsKey('mutationRecord')
            ? MutationRecord.fromJson(
                json_['mutationRecord'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        notificationChannels: (json_['notificationChannels'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        severity: json_['severity'] as core.String?,
        userLabels:
            (json_['userLabels'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        validity: json_.containsKey('validity')
            ? Status.fromJson(
                json_['validity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alertStrategy = this.alertStrategy;
    final combiner = this.combiner;
    final conditions = this.conditions;
    final creationRecord = this.creationRecord;
    final displayName = this.displayName;
    final documentation = this.documentation;
    final enabled = this.enabled;
    final mutationRecord = this.mutationRecord;
    final name = this.name;
    final notificationChannels = this.notificationChannels;
    final severity = this.severity;
    final userLabels = this.userLabels;
    final validity = this.validity;
    return {
      'alertStrategy': ?alertStrategy,
      'combiner': ?combiner,
      'conditions': ?conditions,
      'creationRecord': ?creationRecord,
      'displayName': ?displayName,
      'documentation': ?documentation,
      'enabled': ?enabled,
      'mutationRecord': ?mutationRecord,
      'name': ?name,
      'notificationChannels': ?notificationChannels,
      'severity': ?severity,
      'userLabels': ?userLabels,
      'validity': ?validity,
    };
  }
}

/// Control over how the notification channels in notification_channels are
/// notified when this alert fires.
class AlertStrategy {
  /// If an alerting policy that was active has no data for this long, any open
  /// incidents will close
  core.String? autoClose;

  /// Control how notifications will be sent out, on a per-channel basis.
  core.List<NotificationChannelStrategy>? notificationChannelStrategy;

  /// For log-based alert policies, the notification prompts is always OPENED.
  ///
  /// For non log-based alert policies, the notification prompts can be OPENED
  /// or OPENED, CLOSED.
  core.List<core.String>? notificationPrompts;

  /// Required for log-based alerting policies, i.e. policies with a LogMatch
  /// condition.This limit is not implemented for alerting policies that do not
  /// have a LogMatch condition.
  NotificationRateLimit? notificationRateLimit;

  AlertStrategy({
    this.autoClose,
    this.notificationChannelStrategy,
    this.notificationPrompts,
    this.notificationRateLimit,
  });

  AlertStrategy.fromJson(core.Map json_)
    : this(
        autoClose: json_['autoClose'] as core.String?,
        notificationChannelStrategy:
            (json_['notificationChannelStrategy'] as core.List?)
                ?.map(
                  (value) => NotificationChannelStrategy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        notificationPrompts: (json_['notificationPrompts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        notificationRateLimit: json_.containsKey('notificationRateLimit')
            ? NotificationRateLimit.fromJson(
                json_['notificationRateLimit']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoClose = this.autoClose;
    final notificationChannelStrategy = this.notificationChannelStrategy;
    final notificationPrompts = this.notificationPrompts;
    final notificationRateLimit = this.notificationRateLimit;
    return {
      'autoClose': ?autoClose,
      'notificationChannelStrategy': ?notificationChannelStrategy,
      'notificationPrompts': ?notificationPrompts,
      'notificationRateLimit': ?notificationRateLimit,
    };
  }
}

/// App Engine service.
///
/// Learn more at https://cloud.google.com/appengine.
class AppEngine {
  /// The ID of the App Engine module underlying this service.
  ///
  /// Corresponds to the module_id resource label in the gae_app monitored
  /// resource (https://cloud.google.com/monitoring/api/resources#tag_gae_app).
  core.String? moduleId;

  AppEngine({this.moduleId});

  AppEngine.fromJson(core.Map json_)
    : this(moduleId: json_['moduleId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final moduleId = this.moduleId;
    return {'moduleId': ?moduleId};
  }
}

/// Future parameters for the availability SLI.
typedef AvailabilityCriteria = $Empty;

/// The authentication parameters to provide to the specified resource or URL
/// that requires a username and password.
///
/// Currently, only Basic HTTP authentication
/// (https://tools.ietf.org/html/rfc7617) is supported in Uptime checks.
class BasicAuthentication {
  /// The password to use when authenticating with the HTTP server.
  core.String? password;

  /// The username to use when authenticating with the HTTP server.
  core.String? username;

  BasicAuthentication({this.password, this.username});

  BasicAuthentication.fromJson(core.Map json_)
    : this(
        password: json_['password'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final password = this.password;
    final username = this.username;
    return {'password': ?password, 'username': ?username};
  }
}

/// A well-known service type, defined by its service type and service labels.
///
/// Documentation and examples here
/// (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
class BasicService {
  /// Labels that specify the resource that emits the monitoring data which is
  /// used for SLO reporting of this Service.
  ///
  /// Documentation and valid values for given service types here
  /// (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  core.Map<core.String, core.String>? serviceLabels;

  /// The type of service that this basic service defines, e.g. APP_ENGINE
  /// service type.
  ///
  /// Documentation and valid values here
  /// (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  core.String? serviceType;

  BasicService({this.serviceLabels, this.serviceType});

  BasicService.fromJson(core.Map json_)
    : this(
        serviceLabels:
            (json_['serviceLabels'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        serviceType: json_['serviceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final serviceLabels = this.serviceLabels;
    final serviceType = this.serviceType;
    return {'serviceLabels': ?serviceLabels, 'serviceType': ?serviceType};
  }
}

/// An SLI measuring performance on a well-known service type.
///
/// Performance will be computed on the basis of pre-defined metrics. The type
/// of the service_resource determines the metrics to use and the
/// service_resource.labels and metric_labels are used to construct a monitoring
/// filter to filter that metric down to just the data relevant to this service.
class BasicSli {
  /// Good service is defined to be the count of requests made to this service
  /// that return successfully.
  AvailabilityCriteria? availability;

  /// Good service is defined to be the count of requests made to this service
  /// that are fast enough with respect to latency.threshold.
  LatencyCriteria? latency;

  /// OPTIONAL: The set of locations to which this SLI is relevant.
  ///
  /// Telemetry from other locations will not be used to calculate performance
  /// for this SLI. If omitted, this SLI applies to all locations in which the
  /// Service has activity. For service types that don't support breaking down
  /// by location, setting this field will result in an error.
  core.List<core.String>? location;

  /// OPTIONAL: The set of RPCs to which this SLI is relevant.
  ///
  /// Telemetry from other methods will not be used to calculate performance for
  /// this SLI. If omitted, this SLI applies to all the Service's methods. For
  /// service types that don't support breaking down by method, setting this
  /// field will result in an error.
  core.List<core.String>? method;

  /// OPTIONAL: The set of API versions to which this SLI is relevant.
  ///
  /// Telemetry from other API versions will not be used to calculate
  /// performance for this SLI. If omitted, this SLI applies to all API
  /// versions. For service types that don't support breaking down by version,
  /// setting this field will result in an error.
  core.List<core.String>? version;

  BasicSli({
    this.availability,
    this.latency,
    this.location,
    this.method,
    this.version,
  });

  BasicSli.fromJson(core.Map json_)
    : this(
        availability: json_.containsKey('availability')
            ? AvailabilityCriteria.fromJson(
                json_['availability'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        latency: json_.containsKey('latency')
            ? LatencyCriteria.fromJson(
                json_['latency'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: (json_['location'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        method: (json_['method'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        version: (json_['version'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availability = this.availability;
    final latency = this.latency;
    final location = this.location;
    final method = this.method;
    final version = this.version;
    return {
      'availability': ?availability,
      'latency': ?latency,
      'location': ?location,
      'method': ?method,
      'version': ?version,
    };
  }
}

/// A test that uses an alerting result in a boolean column produced by the SQL
/// query.
class BooleanTest {
  /// The name of the column containing the boolean value.
  ///
  /// If the value in a row is NULL, that row is ignored.
  ///
  /// Required.
  core.String? column;

  BooleanTest({this.column});

  BooleanTest.fromJson(core.Map json_)
    : this(column: json_['column'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final column = this.column;
    return {'column': ?column};
  }
}

/// BucketOptions describes the bucket boundaries used to create a histogram for
/// the distribution.
///
/// The buckets can be in a linear sequence, an exponential sequence, or each
/// bucket can be specified explicitly. BucketOptions does not include the
/// number of values in each bucket.A bucket has an inclusive lower bound and
/// exclusive upper bound for the values that are counted for that bucket. The
/// upper bound of a bucket must be strictly greater than the lower bound. The
/// sequence of N buckets for a distribution consists of an underflow bucket
/// (number 0), zero or more finite buckets (number 1 through N - 2) and an
/// overflow bucket (number N - 1). The buckets are contiguous: the lower bound
/// of bucket i (i \> 0) is the same as the upper bound of bucket i - 1. The
/// buckets span the whole range of finite values: lower bound of the underflow
/// bucket is -infinity and the upper bound of the overflow bucket is +infinity.
/// The finite buckets are so-called because both bounds are finite.
class BucketOptions {
  /// The explicit buckets.
  Explicit? explicitBuckets;

  /// The exponential buckets.
  Exponential? exponentialBuckets;

  /// The linear bucket.
  Linear? linearBuckets;

  BucketOptions({
    this.explicitBuckets,
    this.exponentialBuckets,
    this.linearBuckets,
  });

  BucketOptions.fromJson(core.Map json_)
    : this(
        explicitBuckets: json_.containsKey('explicitBuckets')
            ? Explicit.fromJson(
                json_['explicitBuckets'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        exponentialBuckets: json_.containsKey('exponentialBuckets')
            ? Exponential.fromJson(
                json_['exponentialBuckets']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        linearBuckets: json_.containsKey('linearBuckets')
            ? Linear.fromJson(
                json_['linearBuckets'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final explicitBuckets = this.explicitBuckets;
    final exponentialBuckets = this.exponentialBuckets;
    final linearBuckets = this.linearBuckets;
    return {
      'explicitBuckets': ?explicitBuckets,
      'exponentialBuckets': ?exponentialBuckets,
      'linearBuckets': ?linearBuckets,
    };
  }
}

/// Cloud Endpoints service.
///
/// Learn more at https://cloud.google.com/endpoints.
class CloudEndpoints {
  /// The name of the Cloud Endpoints service underlying this service.
  ///
  /// Corresponds to the service resource label in the api monitored resource
  /// (https://cloud.google.com/monitoring/api/resources#tag_api).
  core.String? service;

  CloudEndpoints({this.service});

  CloudEndpoints.fromJson(core.Map json_)
    : this(service: json_['service'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final service = this.service;
    return {'service': ?service};
  }
}

/// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
class CloudFunctionV2Target {
  /// The cloud_run_revision Monitored Resource associated with the GCFv2.
  ///
  /// The Synthetic Monitor execution results (metrics, logs, and spans) are
  /// reported against this Monitored Resource. This field is output only.
  ///
  /// Output only.
  MonitoredResource? cloudRunRevision;

  /// Fully qualified GCFv2 resource name i.e.
  /// projects/{project}/locations/{location}/functions/{function} Required.
  ///
  /// Required.
  core.String? name;

  CloudFunctionV2Target({this.cloudRunRevision, this.name});

  CloudFunctionV2Target.fromJson(core.Map json_)
    : this(
        cloudRunRevision: json_.containsKey('cloudRunRevision')
            ? MonitoredResource.fromJson(
                json_['cloudRunRevision']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudRunRevision = this.cloudRunRevision;
    final name = this.name;
    return {'cloudRunRevision': ?cloudRunRevision, 'name': ?name};
  }
}

/// Cloud Run service.
///
/// Learn more at https://cloud.google.com/run.
class CloudRun {
  /// The location the service is run.
  ///
  /// Corresponds to the location resource label in the cloud_run_revision
  /// monitored resource
  /// (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  core.String? location;

  /// The name of the Cloud Run service.
  ///
  /// Corresponds to the service_name resource label in the cloud_run_revision
  /// monitored resource
  /// (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  core.String? serviceName;

  CloudRun({this.location, this.serviceName});

  CloudRun.fromJson(core.Map json_)
    : this(
        location: json_['location'] as core.String?,
        serviceName: json_['serviceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final location = this.location;
    final serviceName = this.serviceName;
    return {'location': ?location, 'serviceName': ?serviceName};
  }
}

/// Istio service scoped to a single Kubernetes cluster.
///
/// Learn more at https://istio.io. Clusters running OSS Istio will have their
/// services ingested as this type.
class ClusterIstio {
  /// The name of the Kubernetes cluster in which this Istio service is defined.
  ///
  /// Corresponds to the cluster_name resource label in k8s_cluster resources.
  core.String? clusterName;

  /// The location of the Kubernetes cluster in which this Istio service is
  /// defined.
  ///
  /// Corresponds to the location resource label in k8s_cluster resources.
  core.String? location;

  /// The name of the Istio service underlying this service.
  ///
  /// Corresponds to the destination_service_name metric label in Istio metrics.
  core.String? serviceName;

  /// The namespace of the Istio service underlying this service.
  ///
  /// Corresponds to the destination_service_namespace metric label in Istio
  /// metrics.
  core.String? serviceNamespace;

  ClusterIstio({
    this.clusterName,
    this.location,
    this.serviceName,
    this.serviceNamespace,
  });

  ClusterIstio.fromJson(core.Map json_)
    : this(
        clusterName: json_['clusterName'] as core.String?,
        location: json_['location'] as core.String?,
        serviceName: json_['serviceName'] as core.String?,
        serviceNamespace: json_['serviceNamespace'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clusterName = this.clusterName;
    final location = this.location;
    final serviceName = this.serviceName;
    final serviceNamespace = this.serviceNamespace;
    return {
      'clusterName': ?clusterName,
      'location': ?location,
      'serviceName': ?serviceName,
      'serviceNamespace': ?serviceNamespace,
    };
  }
}

/// A collection of data points sent from a collectd-based plugin.
///
/// See the collectd documentation for more information.
class CollectdPayload {
  /// The end time of the interval.
  core.String? endTime;

  /// The measurement metadata.
  ///
  /// Example: "process_id" -\> 12345
  core.Map<core.String, TypedValue>? metadata;

  /// The name of the plugin.
  ///
  /// Example: "disk".
  core.String? plugin;

  /// The instance name of the plugin Example: "hdcl".
  core.String? pluginInstance;

  /// The start time of the interval.
  core.String? startTime;

  /// The measurement type.
  ///
  /// Example: "memory".
  core.String? type;

  /// The measurement type instance.
  ///
  /// Example: "used".
  core.String? typeInstance;

  /// The measured values during this time interval.
  ///
  /// Each value must have a different data_source_name.
  core.List<CollectdValue>? values;

  CollectdPayload({
    this.endTime,
    this.metadata,
    this.plugin,
    this.pluginInstance,
    this.startTime,
    this.type,
    this.typeInstance,
    this.values,
  });

  CollectdPayload.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                TypedValue.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        plugin: json_['plugin'] as core.String?,
        pluginInstance: json_['pluginInstance'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        type: json_['type'] as core.String?,
        typeInstance: json_['typeInstance'] as core.String?,
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => CollectdValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final metadata = this.metadata;
    final plugin = this.plugin;
    final pluginInstance = this.pluginInstance;
    final startTime = this.startTime;
    final type = this.type;
    final typeInstance = this.typeInstance;
    final values = this.values;
    return {
      'endTime': ?endTime,
      'metadata': ?metadata,
      'plugin': ?plugin,
      'pluginInstance': ?pluginInstance,
      'startTime': ?startTime,
      'type': ?type,
      'typeInstance': ?typeInstance,
      'values': ?values,
    };
  }
}

/// Describes the error status for payloads that were not written.
class CollectdPayloadError {
  /// Records the error status for the payload.
  ///
  /// If this field is present, the partial errors for nested values won't be
  /// populated.
  Status? error;

  /// The zero-based index in CreateCollectdTimeSeriesRequest.collectd_payloads.
  core.int? index;

  /// Records the error status for values that were not written due to an
  /// error.Failed payloads for which nothing is written will not include
  /// partial value errors.
  core.List<CollectdValueError>? valueErrors;

  CollectdPayloadError({this.error, this.index, this.valueErrors});

  CollectdPayloadError.fromJson(core.Map json_)
    : this(
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        index: json_['index'] as core.int?,
        valueErrors: (json_['valueErrors'] as core.List?)
            ?.map(
              (value) => CollectdValueError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final error = this.error;
    final index = this.index;
    final valueErrors = this.valueErrors;
    return {'error': ?error, 'index': ?index, 'valueErrors': ?valueErrors};
  }
}

/// A single data point from a collectd-based plugin.
class CollectdValue {
  /// The data source for the collectd value.
  ///
  /// For example, there are two data sources for network measurements: "rx" and
  /// "tx".
  core.String? dataSourceName;

  /// The type of measurement.
  /// Possible string values are:
  /// - "UNSPECIFIED_DATA_SOURCE_TYPE" : An unspecified data source type. This
  /// corresponds to
  /// google.api.MetricDescriptor.MetricKind.METRIC_KIND_UNSPECIFIED.
  /// - "GAUGE" : An instantaneous measurement of a varying quantity. This
  /// corresponds to google.api.MetricDescriptor.MetricKind.GAUGE.
  /// - "COUNTER" : A cumulative value over time. This corresponds to
  /// google.api.MetricDescriptor.MetricKind.CUMULATIVE.
  /// - "DERIVE" : A rate of change of the measurement.
  /// - "ABSOLUTE" : An amount of change since the last measurement interval.
  /// This corresponds to google.api.MetricDescriptor.MetricKind.DELTA.
  core.String? dataSourceType;

  /// The measurement value.
  TypedValue? value;

  CollectdValue({this.dataSourceName, this.dataSourceType, this.value});

  CollectdValue.fromJson(core.Map json_)
    : this(
        dataSourceName: json_['dataSourceName'] as core.String?,
        dataSourceType: json_['dataSourceType'] as core.String?,
        value: json_.containsKey('value')
            ? TypedValue.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceName = this.dataSourceName;
    final dataSourceType = this.dataSourceType;
    final value = this.value;
    return {
      'dataSourceName': ?dataSourceName,
      'dataSourceType': ?dataSourceType,
      'value': ?value,
    };
  }
}

/// Describes the error status for values that were not written.
class CollectdValueError {
  /// Records the error status for the value.
  Status? error;

  /// The zero-based index in CollectdPayload.values within the parent
  /// CreateCollectdTimeSeriesRequest.collectd_payloads.
  core.int? index;

  CollectdValueError({this.error, this.index});

  CollectdValueError.fromJson(core.Map json_)
    : this(
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        index: json_['index'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final error = this.error;
    final index = this.index;
    return {'error': ?error, 'index': ?index};
  }
}

/// A condition is a true/false test that determines when an alerting policy
/// should open an incident.
///
/// If a condition evaluates to true, it signifies that something is wrong.
class Condition {
  /// A condition that checks that a time series continues to receive new data
  /// points.
  MetricAbsence? conditionAbsent;

  /// A condition that checks for log messages matching given constraints.
  ///
  /// If set, no other conditions can be present.
  LogMatch? conditionMatchedLog;

  /// A condition that uses the Monitoring Query Language to define alerts.
  MonitoringQueryLanguageCondition? conditionMonitoringQueryLanguage;

  /// A condition that uses the Prometheus query language to define alerts.
  PrometheusQueryLanguageCondition? conditionPrometheusQueryLanguage;

  /// A condition that periodically evaluates a SQL query result.
  SqlCondition? conditionSql;

  /// A condition that compares a time series against a threshold.
  MetricThreshold? conditionThreshold;

  /// A short name or phrase used to identify the condition in dashboards,
  /// notifications, and incidents.
  ///
  /// To avoid confusion, don't use the same display name for multiple
  /// conditions in the same policy.
  core.String? displayName;

  /// Required if the condition exists.
  ///
  /// The unique resource name for this condition. Its format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alertPolicies/\[POLICY_ID\]/conditions/\[CONDITION_ID\]
  /// \[CONDITION_ID\] is assigned by Cloud Monitoring when the condition is
  /// created as part of a new or updated alerting policy.When calling the
  /// alertPolicies.create method, do not include the name field in the
  /// conditions of the requested alerting policy. Cloud Monitoring creates the
  /// condition identifiers and includes them in the new policy.When calling the
  /// alertPolicies.update method to update a policy, including a condition name
  /// causes the existing condition to be updated. Conditions without names are
  /// added to the updated policy. Existing conditions are deleted if they are
  /// not updated.Best practice is to preserve \[CONDITION_ID\] if you make only
  /// small changes, such as those to condition thresholds, durations, or
  /// trigger values. Otherwise, treat the change as a new condition and let the
  /// existing condition be deleted.
  core.String? name;

  Condition({
    this.conditionAbsent,
    this.conditionMatchedLog,
    this.conditionMonitoringQueryLanguage,
    this.conditionPrometheusQueryLanguage,
    this.conditionSql,
    this.conditionThreshold,
    this.displayName,
    this.name,
  });

  Condition.fromJson(core.Map json_)
    : this(
        conditionAbsent: json_.containsKey('conditionAbsent')
            ? MetricAbsence.fromJson(
                json_['conditionAbsent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        conditionMatchedLog: json_.containsKey('conditionMatchedLog')
            ? LogMatch.fromJson(
                json_['conditionMatchedLog']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        conditionMonitoringQueryLanguage:
            json_.containsKey('conditionMonitoringQueryLanguage')
            ? MonitoringQueryLanguageCondition.fromJson(
                json_['conditionMonitoringQueryLanguage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        conditionPrometheusQueryLanguage:
            json_.containsKey('conditionPrometheusQueryLanguage')
            ? PrometheusQueryLanguageCondition.fromJson(
                json_['conditionPrometheusQueryLanguage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        conditionSql: json_.containsKey('conditionSql')
            ? SqlCondition.fromJson(
                json_['conditionSql'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        conditionThreshold: json_.containsKey('conditionThreshold')
            ? MetricThreshold.fromJson(
                json_['conditionThreshold']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conditionAbsent = this.conditionAbsent;
    final conditionMatchedLog = this.conditionMatchedLog;
    final conditionMonitoringQueryLanguage =
        this.conditionMonitoringQueryLanguage;
    final conditionPrometheusQueryLanguage =
        this.conditionPrometheusQueryLanguage;
    final conditionSql = this.conditionSql;
    final conditionThreshold = this.conditionThreshold;
    final displayName = this.displayName;
    final name = this.name;
    return {
      'conditionAbsent': ?conditionAbsent,
      'conditionMatchedLog': ?conditionMatchedLog,
      'conditionMonitoringQueryLanguage': ?conditionMonitoringQueryLanguage,
      'conditionPrometheusQueryLanguage': ?conditionPrometheusQueryLanguage,
      'conditionSql': ?conditionSql,
      'conditionThreshold': ?conditionThreshold,
      'displayName': ?displayName,
      'name': ?name,
    };
  }
}

/// Used to perform content matching.
///
/// This allows matching based on substrings and regular expressions, together
/// with their negations. Only the first 4 MB of an HTTP or HTTPS check's
/// response (and the first 1 MB of a TCP check's response) are examined for
/// purposes of content matching.
///
/// Optional.
class ContentMatcher {
  /// String, regex or JSON content to match.
  ///
  /// Maximum 1024 bytes. An empty content string indicates no content matching
  /// is to be performed.
  core.String? content;

  /// Matcher information for MATCHES_JSON_PATH and NOT_MATCHES_JSON_PATH
  JsonPathMatcher? jsonPathMatcher;

  /// The type of content matcher that will be applied to the server output,
  /// compared to the content string when the check is run.
  /// Possible string values are:
  /// - "CONTENT_MATCHER_OPTION_UNSPECIFIED" : No content matcher type specified
  /// (maintained for backward compatibility, but deprecated for future use).
  /// Treated as CONTAINS_STRING.
  /// - "CONTAINS_STRING" : Selects substring matching. The match succeeds if
  /// the output contains the content string. This is the default value for
  /// checks without a matcher option, or where the value of matcher is
  /// CONTENT_MATCHER_OPTION_UNSPECIFIED.
  /// - "NOT_CONTAINS_STRING" : Selects negation of substring matching. The
  /// match succeeds if the output does NOT contain the content string.
  /// - "MATCHES_REGEX" : Selects regular-expression matching. The match
  /// succeeds if the output matches the regular expression specified in the
  /// content string. Regex matching is only supported for HTTP/HTTPS checks.
  /// - "NOT_MATCHES_REGEX" : Selects negation of regular-expression matching.
  /// The match succeeds if the output does NOT match the regular expression
  /// specified in the content string. Regex matching is only supported for
  /// HTTP/HTTPS checks.
  /// - "MATCHES_JSON_PATH" : Selects JSONPath matching. See JsonPathMatcher for
  /// details on when the match succeeds. JSONPath matching is only supported
  /// for HTTP/HTTPS checks.
  /// - "NOT_MATCHES_JSON_PATH" : Selects JSONPath matching. See JsonPathMatcher
  /// for details on when the match succeeds. Succeeds when output does NOT
  /// match as specified. JSONPath is only supported for HTTP/HTTPS checks.
  core.String? matcher;

  ContentMatcher({this.content, this.jsonPathMatcher, this.matcher});

  ContentMatcher.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        jsonPathMatcher: json_.containsKey('jsonPathMatcher')
            ? JsonPathMatcher.fromJson(
                json_['jsonPathMatcher'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        matcher: json_['matcher'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final jsonPathMatcher = this.jsonPathMatcher;
    final matcher = this.matcher;
    return {
      'content': ?content,
      'jsonPathMatcher': ?jsonPathMatcher,
      'matcher': ?matcher,
    };
  }
}

/// The CreateCollectdTimeSeries request.
class CreateCollectdTimeSeriesRequest {
  /// The collectd payloads representing the time series data.
  ///
  /// You must not include more than a single point for each time series, so no
  /// two payloads can have the same values for all of the fields plugin,
  /// plugin_instance, type, and type_instance.
  core.List<CollectdPayload>? collectdPayloads;

  /// The version of collectd that collected the data.
  ///
  /// Example: "5.3.0-192.el6".
  core.String? collectdVersion;

  /// The monitored resource associated with the time series.
  MonitoredResource? resource;

  CreateCollectdTimeSeriesRequest({
    this.collectdPayloads,
    this.collectdVersion,
    this.resource,
  });

  CreateCollectdTimeSeriesRequest.fromJson(core.Map json_)
    : this(
        collectdPayloads: (json_['collectdPayloads'] as core.List?)
            ?.map(
              (value) => CollectdPayload.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        collectdVersion: json_['collectdVersion'] as core.String?,
        resource: json_.containsKey('resource')
            ? MonitoredResource.fromJson(
                json_['resource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final collectdPayloads = this.collectdPayloads;
    final collectdVersion = this.collectdVersion;
    final resource = this.resource;
    return {
      'collectdPayloads': ?collectdPayloads,
      'collectdVersion': ?collectdVersion,
      'resource': ?resource,
    };
  }
}

/// The CreateCollectdTimeSeries response.
class CreateCollectdTimeSeriesResponse {
  /// Records the error status for points that were not written due to an error
  /// in the request.Failed requests for which nothing is written will return an
  /// error response instead.
  ///
  /// Requests where data points were rejected by the backend will set summary
  /// instead.
  core.List<CollectdPayloadError>? payloadErrors;

  /// Aggregate statistics from writing the payloads.
  ///
  /// This field is omitted if all points were successfully written, so that the
  /// response is empty. This is for backwards compatibility with clients that
  /// log errors on any non-empty response.
  CreateTimeSeriesSummary? summary;

  CreateCollectdTimeSeriesResponse({this.payloadErrors, this.summary});

  CreateCollectdTimeSeriesResponse.fromJson(core.Map json_)
    : this(
        payloadErrors: (json_['payloadErrors'] as core.List?)
            ?.map(
              (value) => CollectdPayloadError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        summary: json_.containsKey('summary')
            ? CreateTimeSeriesSummary.fromJson(
                json_['summary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final payloadErrors = this.payloadErrors;
    final summary = this.summary;
    return {'payloadErrors': ?payloadErrors, 'summary': ?summary};
  }
}

/// The CreateTimeSeries request.
class CreateTimeSeriesRequest {
  /// The new data to be added to a list of time series.
  ///
  /// Adds at most one data point to each of several time series. The new data
  /// point must be more recent than any other point in its time series. Each
  /// TimeSeries value must fully specify a unique time series by supplying all
  /// label values for the metric and the monitored resource.The maximum number
  /// of TimeSeries objects per Create request is 200.
  ///
  /// Required.
  core.List<TimeSeries>? timeSeries;

  CreateTimeSeriesRequest({this.timeSeries});

  CreateTimeSeriesRequest.fromJson(core.Map json_)
    : this(
        timeSeries: (json_['timeSeries'] as core.List?)
            ?.map(
              (value) => TimeSeries.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final timeSeries = this.timeSeries;
    return {'timeSeries': ?timeSeries};
  }
}

/// Summary of the result of a failed request to write data to a time series.
class CreateTimeSeriesSummary {
  /// The number of points that failed to be written.
  ///
  /// Order is not guaranteed.
  core.List<Error>? errors;

  /// The number of points that were successfully written.
  core.int? successPointCount;

  /// The number of points in the request.
  core.int? totalPointCount;

  CreateTimeSeriesSummary({
    this.errors,
    this.successPointCount,
    this.totalPointCount,
  });

  CreateTimeSeriesSummary.fromJson(core.Map json_)
    : this(
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) =>
                  Error.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        successPointCount: json_['successPointCount'] as core.int?,
        totalPointCount: json_['totalPointCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errors = this.errors;
    final successPointCount = this.successPointCount;
    final totalPointCount = this.totalPointCount;
    return {
      'errors': ?errors,
      'successPointCount': ?successPointCount,
      'totalPointCount': ?totalPointCount,
    };
  }
}

/// Criteria specific to the AlertPolicys that this Snooze applies to.
///
/// The Snooze will suppress alerts that come from one of the AlertPolicys whose
/// names are supplied.
class Criteria {
  /// When you define a snooze, you can also define a filter for that snooze.
  ///
  /// The filter is a string containing one or more key-value pairs. The string
  /// uses the standard https://google.aip.dev/160 filter syntax. If you define
  /// a filter for a snooze, then the snooze can only apply to one alert policy.
  /// When the snooze is active, incidents won't be created when the incident
  /// would have key-value pairs (labels) that match those specified by the
  /// filter in the snooze.Snooze filters support resource, metric, and metadata
  /// labels. If multiple labels are used, then they must be connected with an
  /// AND operator. For example, the following filter applies the snooze to
  /// incidents that have a resource label with an instance ID of 1234567890, a
  /// metric label with an instance name of test_group, a metadata user label
  /// with a key of foo and a value of bar, and a metadata system label with a
  /// key of region and a value of us-central1: "filter":
  /// "resource.labels.instance_id=\"1234567890\" AND
  /// metric.labels.instance_name=\"test_group\" AND
  /// metadata.user_labels.foo=\"bar\" AND
  /// metadata.system_labels.region=\"us-central1\""
  ///
  /// Optional.
  core.String? filter;

  /// The specific AlertPolicy names for the alert that should be snoozed.
  ///
  /// The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alertPolicies/\[POLICY_ID\] There is a
  /// limit of 16 policies per snooze. This limit is checked during snooze
  /// creation. Exactly 1 alert policy is required if filter is specified at the
  /// same time.
  core.List<core.String>? policies;

  Criteria({this.filter, this.policies});

  Criteria.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        policies: (json_['policies'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    final policies = this.policies;
    return {'filter': ?filter, 'policies': ?policies};
  }
}

/// Use a custom service to designate a service that you want to monitor when
/// none of the other service types (like App Engine, Cloud Run, or a GKE type)
/// matches your intended service.
typedef Custom = $Empty;

/// Used to schedule the query to run every so many days.
class Daily {
  /// The time of day (in UTC) at which the query should run.
  ///
  /// If left unspecified, the server picks an arbitrary time of day and runs
  /// the query at the same time each day.
  ///
  /// Optional.
  TimeOfDay? executionTime;

  /// The number of days between runs.
  ///
  /// Must be greater than or equal to 1 day and less than or equal to 31 days.
  ///
  /// Required.
  core.int? periodicity;

  Daily({this.executionTime, this.periodicity});

  Daily.fromJson(core.Map json_)
    : this(
        executionTime: json_.containsKey('executionTime')
            ? TimeOfDay.fromJson(
                json_['executionTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        periodicity: json_['periodicity'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionTime = this.executionTime;
    final periodicity = this.periodicity;
    return {'executionTime': ?executionTime, 'periodicity': ?periodicity};
  }
}

/// Distribution contains summary statistics for a population of values.
///
/// It optionally contains a histogram representing the distribution of those
/// values across a set of buckets.The summary statistics are the count, mean,
/// sum of the squared deviation from the mean, the minimum, and the maximum of
/// the set of population of values. The histogram is based on a sequence of
/// buckets and gives a count of values that fall into each bucket. The
/// boundaries of the buckets are given either explicitly or by formulas for
/// buckets of fixed or exponentially increasing widths.Although it is not
/// forbidden, it is generally a bad idea to include non-finite values
/// (infinities or NaNs) in the population of values, as this will render the
/// mean and sum_of_squared_deviation fields meaningless.
class Distribution {
  /// Required in the Cloud Monitoring API v3.
  ///
  /// The values for each bucket specified in bucket_options. The sum of the
  /// values in bucketCounts must equal the value in the count field of the
  /// Distribution object. The order of the bucket counts follows the numbering
  /// schemes described for the three bucket types. The underflow bucket has
  /// number 0; the finite buckets, if any, have numbers 1 through N-2; and the
  /// overflow bucket has number N-1. The size of bucket_counts must not be
  /// greater than N. If the size is less than N, then the remaining buckets are
  /// assigned values of zero.
  core.List<core.String>? bucketCounts;

  /// Required in the Cloud Monitoring API v3.
  ///
  /// Defines the histogram bucket boundaries.
  BucketOptions? bucketOptions;

  /// The number of values in the population.
  ///
  /// Must be non-negative. This value must equal the sum of the values in
  /// bucket_counts if a histogram is provided.
  core.String? count;

  /// Must be in increasing order of value field.
  core.List<Exemplar>? exemplars;

  /// The arithmetic mean of the values in the population.
  ///
  /// If count is zero then this field must be zero.
  core.double? mean;

  /// If specified, contains the range of the population values.
  ///
  /// The field must not be present if the count is zero. This field is
  /// presently ignored by the Cloud Monitoring API v3.
  Range? range;

  /// The sum of squared deviations from the mean of the values in the
  /// population.
  ///
  /// For values x_i this is: Sum\[i=1..n\]((x_i - mean)^2) Knuth, "The Art of
  /// Computer Programming", Vol. 2, page 232, 3rd edition describes Welford's
  /// method for accumulating this sum in one pass.If count is zero then this
  /// field must be zero.
  core.double? sumOfSquaredDeviation;

  Distribution({
    this.bucketCounts,
    this.bucketOptions,
    this.count,
    this.exemplars,
    this.mean,
    this.range,
    this.sumOfSquaredDeviation,
  });

  Distribution.fromJson(core.Map json_)
    : this(
        bucketCounts: (json_['bucketCounts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        bucketOptions: json_.containsKey('bucketOptions')
            ? BucketOptions.fromJson(
                json_['bucketOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        count: json_['count'] as core.String?,
        exemplars: (json_['exemplars'] as core.List?)
            ?.map(
              (value) => Exemplar.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        mean: (json_['mean'] as core.num?)?.toDouble(),
        range: json_.containsKey('range')
            ? Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sumOfSquaredDeviation: (json_['sumOfSquaredDeviation'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucketCounts = this.bucketCounts;
    final bucketOptions = this.bucketOptions;
    final count = this.count;
    final exemplars = this.exemplars;
    final mean = this.mean;
    final range = this.range;
    final sumOfSquaredDeviation = this.sumOfSquaredDeviation;
    return {
      'bucketCounts': ?bucketCounts,
      'bucketOptions': ?bucketOptions,
      'count': ?count,
      'exemplars': ?exemplars,
      'mean': ?mean,
      'range': ?range,
      'sumOfSquaredDeviation': ?sumOfSquaredDeviation,
    };
  }
}

/// A DistributionCut defines a TimeSeries and thresholds used for measuring
/// good service and total service.
///
/// The TimeSeries must have ValueType = DISTRIBUTION and MetricKind = DELTA or
/// MetricKind = CUMULATIVE. The computed good_service will be the estimated
/// count of values in the Distribution that fall within the specified min and
/// max.
class DistributionCut {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying a TimeSeries aggregating values.
  ///
  /// Must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind =
  /// CUMULATIVE.
  core.String? distributionFilter;

  /// Range of values considered "good." For a one-sided range, set one bound to
  /// an infinite value.
  GoogleMonitoringV3Range? range;

  DistributionCut({this.distributionFilter, this.range});

  DistributionCut.fromJson(core.Map json_)
    : this(
        distributionFilter: json_['distributionFilter'] as core.String?,
        range: json_.containsKey('range')
            ? GoogleMonitoringV3Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final distributionFilter = this.distributionFilter;
    final range = this.range;
    return {'distributionFilter': ?distributionFilter, 'range': ?range};
  }
}

/// Documentation that is included in the notifications and incidents pertaining
/// to this policy.
class Documentation {
  /// The body of the documentation, interpreted according to mime_type.
  ///
  /// The content may not exceed 8,192 Unicode characters and may not exceed
  /// more than 10,240 bytes when encoded in UTF-8 format, whichever is smaller.
  /// This text can be templatized by using variables
  /// (https://cloud.google.com/monitoring/alerts/doc-variables#doc-vars).
  core.String? content;

  /// Links to content such as playbooks, repositories, and other resources.
  ///
  /// This field can contain up to 3 entries.
  ///
  /// Optional.
  core.List<Link>? links;

  /// The format of the content field.
  ///
  /// Presently, only the value "text/markdown" is supported. See Markdown
  /// (https://en.wikipedia.org/wiki/Markdown) for more information.
  core.String? mimeType;

  /// The subject line of the notification.
  ///
  /// The subject line may not exceed 10,240 bytes. In notifications generated
  /// by this policy, the contents of the subject line after variable expansion
  /// will be truncated to 255 bytes or shorter at the latest UTF-8 character
  /// boundary. The 255-byte limit is recommended by this thread
  /// (https://stackoverflow.com/questions/1592291/what-is-the-email-subject-length-limit).
  /// It is both the limit imposed by some third-party ticketing products and it
  /// is common to define textual fields in databases as VARCHAR(255).The
  /// contents of the subject line can be templatized by using variables
  /// (https://cloud.google.com/monitoring/alerts/doc-variables#doc-vars). If
  /// this field is missing or empty, a default subject line will be generated.
  ///
  /// Optional.
  core.String? subject;

  Documentation({this.content, this.links, this.mimeType, this.subject});

  Documentation.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        links: (json_['links'] as core.List?)
            ?.map(
              (value) =>
                  Link.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        mimeType: json_['mimeType'] as core.String?,
        subject: json_['subject'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final links = this.links;
    final mimeType = this.mimeType;
    final subject = this.subject;
    return {
      'content': ?content,
      'links': ?links,
      'mimeType': ?mimeType,
      'subject': ?subject,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Detailed information about an error category.
class Error {
  /// The number of points that couldn't be written because of status.
  core.int? pointCount;

  /// The status of the requested write operation.
  Status? status;

  Error({this.pointCount, this.status});

  Error.fromJson(core.Map json_)
    : this(
        pointCount: json_['pointCount'] as core.int?,
        status: json_.containsKey('status')
            ? Status.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pointCount = this.pointCount;
    final status = this.status;
    return {'pointCount': ?pointCount, 'status': ?status};
  }
}

/// Exemplars are example points that may be used to annotate aggregated
/// distribution values.
///
/// They are metadata that gives information about a particular value added to a
/// Distribution bucket, such as a trace ID that was active when a value was
/// added. They may contain further information, such as a example values and
/// timestamps, origin, etc.
class Exemplar {
  /// Contextual information about the example value.
  ///
  /// Examples are:Trace:
  /// type.googleapis.com/google.monitoring.v3.SpanContextLiteral string:
  /// type.googleapis.com/google.protobuf.StringValueLabels dropped during
  /// aggregation: type.googleapis.com/google.monitoring.v3.DroppedLabelsThere
  /// may be only a single attachment of any given message type in a single
  /// exemplar, and this is enforced by the system.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? attachments;

  /// The observation (sampling) time of the above value.
  core.String? timestamp;

  /// Value of the exemplar point.
  ///
  /// This value determines to which bucket the exemplar belongs.
  core.double? value;

  Exemplar({this.attachments, this.timestamp, this.value});

  Exemplar.fromJson(core.Map json_)
    : this(
        attachments: (json_['attachments'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        timestamp: json_['timestamp'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attachments = this.attachments;
    final timestamp = this.timestamp;
    final value = this.value;
    return {
      'attachments': ?attachments,
      'timestamp': ?timestamp,
      'value': ?value,
    };
  }
}

/// Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1
/// (= N) buckets.
///
/// Bucket i has the following boundaries:Upper bound (0 \<= i \< N-1): boundsi
/// Lower bound (1 \<= i \< N); boundsi - 1The bounds field must contain at
/// least one element. If bounds has only one element, then there are no finite
/// buckets, and that single element is the common boundary of the overflow and
/// underflow buckets.
typedef Explicit = $Explicit;

/// Specifies an exponential sequence of buckets that have a width that is
/// proportional to the value of the lower bound.
///
/// Each bucket represents a constant relative uncertainty on a specific value
/// in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has
/// the following boundaries:Upper bound (0 \<= i \< N-1): scale *
/// (growth_factor ^ i).Lower bound (1 \<= i \< N): scale * (growth_factor ^ (i
/// - 1)).
typedef Exponential = $Exponential;

/// Options used when forecasting the time series and testing the predicted
/// value against the threshold.
class ForecastOptions {
  /// The length of time into the future to forecast whether a time series will
  /// violate the threshold.
  ///
  /// If the predicted value is found to violate the threshold, and the
  /// violation is observed in all forecasts made for the configured duration,
  /// then the time series is considered to be failing. The forecast horizon can
  /// range from 1 hour to 60 hours.
  ///
  /// Required.
  core.String? forecastHorizon;

  ForecastOptions({this.forecastHorizon});

  ForecastOptions.fromJson(core.Map json_)
    : this(forecastHorizon: json_['forecastHorizon'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final forecastHorizon = this.forecastHorizon;
    return {'forecastHorizon': ?forecastHorizon};
  }
}

/// The GetNotificationChannelVerificationCode request.
class GetNotificationChannelVerificationCodeRequest {
  /// The desired expiration time.
  ///
  /// If specified, the API will guarantee that the returned code will not be
  /// valid after the specified timestamp; however, the API cannot guarantee
  /// that the returned code will be valid for at least as long as the requested
  /// time (the API puts an upper bound on the amount of time for which a code
  /// may be valid). If omitted, a default expiration will be used, which may be
  /// less than the max permissible expiration (so specifying an expiration may
  /// extend the code's lifetime over omitting an expiration, even though the
  /// API does impose an upper limit on the maximum expiration that is
  /// permitted).
  core.String? expireTime;

  GetNotificationChannelVerificationCodeRequest({this.expireTime});

  GetNotificationChannelVerificationCodeRequest.fromJson(core.Map json_)
    : this(expireTime: json_['expireTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final expireTime = this.expireTime;
    return {'expireTime': ?expireTime};
  }
}

/// The GetNotificationChannelVerificationCode request.
class GetNotificationChannelVerificationCodeResponse {
  /// The verification code, which may be used to verify other channels that
  /// have an equivalent identity (i.e. other channels of the same type with the
  /// same fingerprint such as other email channels with the same email address
  /// or other sms channels with the same number).
  core.String? code;

  /// The expiration time associated with the code that was returned.
  ///
  /// If an expiration was provided in the request, this is the minimum of the
  /// requested expiration in the request and the max permitted expiration.
  core.String? expireTime;

  GetNotificationChannelVerificationCodeResponse({this.code, this.expireTime});

  GetNotificationChannelVerificationCodeResponse.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final expireTime = this.expireTime;
    return {'code': ?code, 'expireTime': ?expireTime};
  }
}

/// GKE Namespace.
///
/// The field names correspond to the resource metadata labels on monitored
/// resources that fall under a namespace (for example, k8s_container or
/// k8s_pod).
class GkeNamespace {
  /// The name of the parent cluster.
  core.String? clusterName;

  /// The location of the parent cluster.
  ///
  /// This may be a zone or region.
  core.String? location;

  /// The name of this namespace.
  core.String? namespaceName;

  /// The project this resource lives in.
  ///
  /// For legacy services migrated from the Custom type, this may be a distinct
  /// project from the one parenting the service itself.
  ///
  /// Output only.
  core.String? projectId;

  GkeNamespace({
    this.clusterName,
    this.location,
    this.namespaceName,
    this.projectId,
  });

  GkeNamespace.fromJson(core.Map json_)
    : this(
        clusterName: json_['clusterName'] as core.String?,
        location: json_['location'] as core.String?,
        namespaceName: json_['namespaceName'] as core.String?,
        projectId: json_['projectId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clusterName = this.clusterName;
    final location = this.location;
    final namespaceName = this.namespaceName;
    final projectId = this.projectId;
    return {
      'clusterName': ?clusterName,
      'location': ?location,
      'namespaceName': ?namespaceName,
      'projectId': ?projectId,
    };
  }
}

/// GKE Service.
///
/// The "service" here represents a Kubernetes service object
/// (https://kubernetes.io/docs/concepts/services-networking/service). The field
/// names correspond to the resource labels on k8s_service monitored resources
/// (https://cloud.google.com/monitoring/api/resources#tag_k8s_service).
class GkeService {
  /// The name of the parent cluster.
  core.String? clusterName;

  /// The location of the parent cluster.
  ///
  /// This may be a zone or region.
  core.String? location;

  /// The name of the parent namespace.
  core.String? namespaceName;

  /// The project this resource lives in.
  ///
  /// For legacy services migrated from the Custom type, this may be a distinct
  /// project from the one parenting the service itself.
  ///
  /// Output only.
  core.String? projectId;

  /// The name of this service.
  core.String? serviceName;

  GkeService({
    this.clusterName,
    this.location,
    this.namespaceName,
    this.projectId,
    this.serviceName,
  });

  GkeService.fromJson(core.Map json_)
    : this(
        clusterName: json_['clusterName'] as core.String?,
        location: json_['location'] as core.String?,
        namespaceName: json_['namespaceName'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        serviceName: json_['serviceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clusterName = this.clusterName;
    final location = this.location;
    final namespaceName = this.namespaceName;
    final projectId = this.projectId;
    final serviceName = this.serviceName;
    return {
      'clusterName': ?clusterName,
      'location': ?location,
      'namespaceName': ?namespaceName,
      'projectId': ?projectId,
      'serviceName': ?serviceName,
    };
  }
}

/// A GKE Workload (Deployment, StatefulSet, etc).
///
/// The field names correspond to the metadata labels on monitored resources
/// that fall under a workload (for example, k8s_container or k8s_pod).
class GkeWorkload {
  /// The name of the parent cluster.
  core.String? clusterName;

  /// The location of the parent cluster.
  ///
  /// This may be a zone or region.
  core.String? location;

  /// The name of the parent namespace.
  core.String? namespaceName;

  /// The project this resource lives in.
  ///
  /// For legacy services migrated from the Custom type, this may be a distinct
  /// project from the one parenting the service itself.
  ///
  /// Output only.
  core.String? projectId;

  /// The name of this workload.
  core.String? topLevelControllerName;

  /// The type of this workload (for example, "Deployment" or "DaemonSet")
  core.String? topLevelControllerType;

  GkeWorkload({
    this.clusterName,
    this.location,
    this.namespaceName,
    this.projectId,
    this.topLevelControllerName,
    this.topLevelControllerType,
  });

  GkeWorkload.fromJson(core.Map json_)
    : this(
        clusterName: json_['clusterName'] as core.String?,
        location: json_['location'] as core.String?,
        namespaceName: json_['namespaceName'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        topLevelControllerName: json_['topLevelControllerName'] as core.String?,
        topLevelControllerType: json_['topLevelControllerType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clusterName = this.clusterName;
    final location = this.location;
    final namespaceName = this.namespaceName;
    final projectId = this.projectId;
    final topLevelControllerName = this.topLevelControllerName;
    final topLevelControllerType = this.topLevelControllerType;
    return {
      'clusterName': ?clusterName,
      'location': ?location,
      'namespaceName': ?namespaceName,
      'projectId': ?projectId,
      'topLevelControllerName': ?topLevelControllerName,
      'topLevelControllerType': ?topLevelControllerType,
    };
  }
}

/// Range of numerical values within min and max.
class GoogleMonitoringV3Range {
  /// Range maximum.
  core.double? max;

  /// Range minimum.
  core.double? min;

  GoogleMonitoringV3Range({this.max, this.min});

  GoogleMonitoringV3Range.fromJson(core.Map json_)
    : this(
        max: (json_['max'] as core.num?)?.toDouble(),
        min: (json_['min'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final max = this.max;
    final min = this.min;
    return {'max': ?max, 'min': ?min};
  }
}

/// The description of a dynamic collection of monitored resources.
///
/// Each group has a filter that is matched against monitored resources and
/// their associated metadata. If a group's filter matches an available
/// monitored resource, then that resource is a member of that group. Groups can
/// contain any number of monitored resources, and each monitored resource can
/// be a member of any number of groups.Groups can be nested in parent-child
/// hierarchies. The parentName field identifies an optional parent for each
/// group. If a group has a parent, then the only monitored resources available
/// to be matched by the group's filter are the resources contained in the
/// parent group. In other words, a group contains the monitored resources that
/// match its filter and the filters of all the group's ancestors. A group
/// without a parent can contain any monitored resource.For example, consider an
/// infrastructure running a set of instances with two user-defined tags:
/// "environment" and "role". A parent group has a filter,
/// environment="production". A child of that parent group has a filter,
/// role="transcoder". The parent group contains all instances in the production
/// environment, regardless of their roles. The child group contains instances
/// that have the transcoder role and are in the production environment.The
/// monitored resources contained in a group can change at any moment, depending
/// on what resources exist and what filters are associated with the group and
/// its ancestors.
class Group {
  /// A user-assigned name for this group, used only for display purposes.
  core.String? displayName;

  /// The filter used to determine which monitored resources belong to this
  /// group.
  core.String? filter;

  /// If true, the members of this group are considered to be a cluster.
  ///
  /// The system can perform additional analysis on groups that are clusters.
  core.bool? isCluster;

  /// The name of this group.
  ///
  /// The format is: projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\] When
  /// creating a group, this field is ignored and a new name is created
  /// consisting of the project specified in the call to CreateGroup and a
  /// unique \[GROUP_ID\] that is generated automatically.
  ///
  /// Output only.
  core.String? name;

  /// The name of the group's parent, if it has one.
  ///
  /// The format is: projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\] For
  /// groups with no parent, parent_name is the empty string, "".
  core.String? parentName;

  Group({
    this.displayName,
    this.filter,
    this.isCluster,
    this.name,
    this.parentName,
  });

  Group.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        filter: json_['filter'] as core.String?,
        isCluster: json_['isCluster'] as core.bool?,
        name: json_['name'] as core.String?,
        parentName: json_['parentName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final filter = this.filter;
    final isCluster = this.isCluster;
    final name = this.name;
    final parentName = this.parentName;
    return {
      'displayName': ?displayName,
      'filter': ?filter,
      'isCluster': ?isCluster,
      'name': ?name,
      'parentName': ?parentName,
    };
  }
}

/// Used to schedule the query to run every so many hours.
class Hourly {
  /// The number of minutes after the hour (in UTC) to run the query.
  ///
  /// Must be greater than or equal to 0 minutes and less than or equal to 59
  /// minutes. If left unspecified, then an arbitrary offset is used.
  ///
  /// Optional.
  core.int? minuteOffset;

  /// The number of hours between runs.
  ///
  /// Must be greater than or equal to 1 hour and less than or equal to 48
  /// hours.
  ///
  /// Required.
  core.int? periodicity;

  Hourly({this.minuteOffset, this.periodicity});

  Hourly.fromJson(core.Map json_)
    : this(
        minuteOffset: json_['minuteOffset'] as core.int?,
        periodicity: json_['periodicity'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final minuteOffset = this.minuteOffset;
    final periodicity = this.periodicity;
    return {'minuteOffset': ?minuteOffset, 'periodicity': ?periodicity};
  }
}

/// Information involved in an HTTP/HTTPS Uptime check request.
class HttpCheck {
  /// If present, the check will only pass if the HTTP response status code is
  /// in this set of status codes.
  ///
  /// If empty, the HTTP status code will only pass if the HTTP status code is
  /// 200-299.
  core.List<ResponseStatusCode>? acceptedResponseStatusCodes;

  /// The authentication information.
  ///
  /// Optional when creating an HTTP check; defaults to empty. Do not set both
  /// auth_method and auth_info.
  BasicAuthentication? authInfo;

  /// The request body associated with the HTTP POST request.
  ///
  /// If content_type is URL_ENCODED, the body passed in must be URL-encoded.
  /// Users can provide a Content-Length header via the headers field or the API
  /// will do so. If the request_method is GET and body is not empty, the API
  /// will return an error. The maximum byte size is 1 megabyte.Note: If client
  /// libraries aren't used (which performs the conversion automatically) base64
  /// encode your body data since the field is of bytes type.
  core.String? body;
  core.List<core.int> get bodyAsBytes => convert.base64.decode(body!);

  set bodyAsBytes(core.List<core.int> bytes_) {
    body = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The content type header to use for the check.
  ///
  /// The following configurations result in errors: 1. Content type is
  /// specified in both the headers field and the content_type field. 2. Request
  /// method is GET and content_type is not TYPE_UNSPECIFIED 3. Request method
  /// is POST and content_type is TYPE_UNSPECIFIED. 4. Request method is POST
  /// and a "Content-Type" header is provided via headers field. The
  /// content_type field should be used instead.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : No content type specified.
  /// - "URL_ENCODED" : body is in URL-encoded form. Equivalent to setting the
  /// Content-Type to application/x-www-form-urlencoded in the HTTP request.
  /// - "USER_PROVIDED" : body is in custom_content_type form. Equivalent to
  /// setting the Content-Type to the contents of custom_content_type in the
  /// HTTP request.
  core.String? contentType;

  /// A user provided content type header to use for the check.
  ///
  /// The invalid configurations outlined in the content_type field apply to
  /// custom_content_type, as well as the following: 1. content_type is
  /// URL_ENCODED and custom_content_type is set. 2. content_type is
  /// USER_PROVIDED and custom_content_type is not set.
  core.String? customContentType;

  /// The list of headers to send as part of the Uptime check request.
  ///
  /// If two headers have the same key and different values, they should be
  /// entered as a single header, with the value being a comma-separated list of
  /// all the desired values as described at
  /// https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two
  /// separate headers with the same key in a Create call will cause the first
  /// to be overwritten by the second. The maximum number of headers allowed is
  /// 100.
  core.Map<core.String, core.String>? headers;

  /// Boolean specifying whether to encrypt the header information.
  ///
  /// Encryption should be specified for any headers related to authentication
  /// that you do not wish to be seen when retrieving the configuration. The
  /// server will be responsible for encrypting the headers. On Get/List calls,
  /// if mask_headers is set to true then the headers will be obscured with
  /// ******.
  core.bool? maskHeaders;

  /// Optional (defaults to "/").
  ///
  /// The path to the page against which to run the check. Will be combined with
  /// the host (specified within the monitored_resource) and port to construct
  /// the full URL. If the provided path does not begin with "/", a "/" will be
  /// prepended automatically.
  core.String? path;

  /// Contains information needed to add pings to an HTTP check.
  PingConfig? pingConfig;

  /// Optional (defaults to 80 when use_ssl is false, and 443 when use_ssl is
  /// true).
  ///
  /// The TCP port on the HTTP server against which to run the check. Will be
  /// combined with host (specified within the monitored_resource) and path to
  /// construct the full URL.
  core.int? port;

  /// The HTTP request method to use for the check.
  ///
  /// If set to METHOD_UNSPECIFIED then request_method defaults to GET.
  /// Possible string values are:
  /// - "METHOD_UNSPECIFIED" : No request method specified.
  /// - "GET" : GET request.
  /// - "POST" : POST request.
  core.String? requestMethod;

  /// If specified, Uptime will generate and attach an OIDC JWT token for the
  /// Monitoring service agent service account as an Authorization header in the
  /// HTTP request when probing.
  ServiceAgentAuthentication? serviceAgentAuthentication;

  /// If true, use HTTPS instead of HTTP to run the check.
  core.bool? useSsl;

  /// Boolean specifying whether to include SSL certificate validation as a part
  /// of the Uptime check.
  ///
  /// Only applies to checks where monitored_resource is set to uptime_url. If
  /// use_ssl is false, setting validate_ssl to true has no effect.
  core.bool? validateSsl;

  HttpCheck({
    this.acceptedResponseStatusCodes,
    this.authInfo,
    this.body,
    this.contentType,
    this.customContentType,
    this.headers,
    this.maskHeaders,
    this.path,
    this.pingConfig,
    this.port,
    this.requestMethod,
    this.serviceAgentAuthentication,
    this.useSsl,
    this.validateSsl,
  });

  HttpCheck.fromJson(core.Map json_)
    : this(
        acceptedResponseStatusCodes:
            (json_['acceptedResponseStatusCodes'] as core.List?)
                ?.map(
                  (value) => ResponseStatusCode.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authInfo: json_.containsKey('authInfo')
            ? BasicAuthentication.fromJson(
                json_['authInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        body: json_['body'] as core.String?,
        contentType: json_['contentType'] as core.String?,
        customContentType: json_['customContentType'] as core.String?,
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        maskHeaders: json_['maskHeaders'] as core.bool?,
        path: json_['path'] as core.String?,
        pingConfig: json_.containsKey('pingConfig')
            ? PingConfig.fromJson(
                json_['pingConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        port: json_['port'] as core.int?,
        requestMethod: json_['requestMethod'] as core.String?,
        serviceAgentAuthentication:
            json_.containsKey('serviceAgentAuthentication')
            ? ServiceAgentAuthentication.fromJson(
                json_['serviceAgentAuthentication']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        useSsl: json_['useSsl'] as core.bool?,
        validateSsl: json_['validateSsl'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acceptedResponseStatusCodes = this.acceptedResponseStatusCodes;
    final authInfo = this.authInfo;
    final body = this.body;
    final contentType = this.contentType;
    final customContentType = this.customContentType;
    final headers = this.headers;
    final maskHeaders = this.maskHeaders;
    final path = this.path;
    final pingConfig = this.pingConfig;
    final port = this.port;
    final requestMethod = this.requestMethod;
    final serviceAgentAuthentication = this.serviceAgentAuthentication;
    final useSsl = this.useSsl;
    final validateSsl = this.validateSsl;
    return {
      'acceptedResponseStatusCodes': ?acceptedResponseStatusCodes,
      'authInfo': ?authInfo,
      'body': ?body,
      'contentType': ?contentType,
      'customContentType': ?customContentType,
      'headers': ?headers,
      'maskHeaders': ?maskHeaders,
      'path': ?path,
      'pingConfig': ?pingConfig,
      'port': ?port,
      'requestMethod': ?requestMethod,
      'serviceAgentAuthentication': ?serviceAgentAuthentication,
      'useSsl': ?useSsl,
      'validateSsl': ?validateSsl,
    };
  }
}

/// An internal checker allows Uptime checks to run on private/internal GCP
/// resources.
class InternalChecker {
  /// The checker's human-readable name.
  ///
  /// The display name should be unique within a Cloud Monitoring Metrics Scope
  /// in order to make it easier to identify; however, uniqueness is not
  /// enforced.
  core.String? displayName;

  /// The GCP zone the Uptime check should egress from.
  ///
  /// Only respected for internal Uptime checks, where internal_network is
  /// specified.
  core.String? gcpZone;

  /// A unique resource name for this InternalChecker.
  ///
  /// The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/internalCheckers/\[INTERNAL_CHECKER_ID\]
  /// \[PROJECT_ID_OR_NUMBER\] is the Cloud Monitoring Metrics Scope project for
  /// the Uptime check config associated with the internal checker.
  core.String? name;

  /// The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the
  /// internal resource lives (ex: "default").
  core.String? network;

  /// The GCP project ID where the internal checker lives.
  ///
  /// Not necessary the same as the Metrics Scope project.
  core.String? peerProjectId;

  /// The current operational state of the internal checker.
  /// Possible string values are:
  /// - "UNSPECIFIED" : An internal checker should never be in the unspecified
  /// state.
  /// - "CREATING" : The checker is being created, provisioned, and configured.
  /// A checker in this state can be returned by ListInternalCheckers or
  /// GetInternalChecker, as well as by examining the long running Operation
  /// (https://cloud.google.com/apis/design/design_patterns#long_running_operations)
  /// that created it.
  /// - "RUNNING" : The checker is running and available for use. A checker in
  /// this state can be returned by ListInternalCheckers or GetInternalChecker
  /// as well as by examining the long running Operation
  /// (https://cloud.google.com/apis/design/design_patterns#long_running_operations)
  /// that created it. If a checker is being torn down, it is neither visible
  /// nor usable, so there is no "deleting" or "down" state.
  core.String? state;

  InternalChecker({
    this.displayName,
    this.gcpZone,
    this.name,
    this.network,
    this.peerProjectId,
    this.state,
  });

  InternalChecker.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        gcpZone: json_['gcpZone'] as core.String?,
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        peerProjectId: json_['peerProjectId'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final gcpZone = this.gcpZone;
    final name = this.name;
    final network = this.network;
    final peerProjectId = this.peerProjectId;
    final state = this.state;
    return {
      'displayName': ?displayName,
      'gcpZone': ?gcpZone,
      'name': ?name,
      'network': ?network,
      'peerProjectId': ?peerProjectId,
      'state': ?state,
    };
  }
}

/// Canonical service scoped to an Istio mesh.
///
/// Anthos clusters running ASM \>= 1.6.8 will have their services ingested as
/// this type.
class IstioCanonicalService {
  /// The name of the canonical service underlying this service.
  ///
  /// Corresponds to the destination_canonical_service_name metric label in
  /// label in Istio metrics
  /// (https://cloud.google.com/monitoring/api/metrics_istio).
  core.String? canonicalService;

  /// The namespace of the canonical service underlying this service.
  ///
  /// Corresponds to the destination_canonical_service_namespace metric label in
  /// Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  core.String? canonicalServiceNamespace;

  /// Identifier for the Istio mesh in which this canonical service is defined.
  ///
  /// Corresponds to the mesh_uid metric label in Istio metrics
  /// (https://cloud.google.com/monitoring/api/metrics_istio).
  core.String? meshUid;

  IstioCanonicalService({
    this.canonicalService,
    this.canonicalServiceNamespace,
    this.meshUid,
  });

  IstioCanonicalService.fromJson(core.Map json_)
    : this(
        canonicalService: json_['canonicalService'] as core.String?,
        canonicalServiceNamespace:
            json_['canonicalServiceNamespace'] as core.String?,
        meshUid: json_['meshUid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final canonicalService = this.canonicalService;
    final canonicalServiceNamespace = this.canonicalServiceNamespace;
    final meshUid = this.meshUid;
    return {
      'canonicalService': ?canonicalService,
      'canonicalServiceNamespace': ?canonicalServiceNamespace,
      'meshUid': ?meshUid,
    };
  }
}

/// Information needed to perform a JSONPath content match.
///
/// Used for ContentMatcherOption::MATCHES_JSON_PATH and
/// ContentMatcherOption::NOT_MATCHES_JSON_PATH.
class JsonPathMatcher {
  /// The type of JSONPath match that will be applied to the JSON output
  /// (ContentMatcher.content)
  /// Possible string values are:
  /// - "JSON_PATH_MATCHER_OPTION_UNSPECIFIED" : No JSONPath matcher type
  /// specified (not valid).
  /// - "EXACT_MATCH" : Selects 'exact string' matching. The match succeeds if
  /// the content at the json_path within the output is exactly the same as the
  /// content string.
  /// - "REGEX_MATCH" : Selects regular-expression matching. The match succeeds
  /// if the content at the json_path within the output matches the regular
  /// expression specified in the content string.
  core.String? jsonMatcher;

  /// JSONPath within the response output pointing to the expected
  /// ContentMatcher::content to match against.
  core.String? jsonPath;

  JsonPathMatcher({this.jsonMatcher, this.jsonPath});

  JsonPathMatcher.fromJson(core.Map json_)
    : this(
        jsonMatcher: json_['jsonMatcher'] as core.String?,
        jsonPath: json_['jsonPath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final jsonMatcher = this.jsonMatcher;
    final jsonPath = this.jsonPath;
    return {'jsonMatcher': ?jsonMatcher, 'jsonPath': ?jsonPath};
  }
}

/// A description of a label.
class LabelDescriptor {
  /// A human-readable description for the label.
  core.String? description;

  /// The key for this label.
  ///
  /// The key must meet the following criteria: Does not exceed 100 characters.
  /// Matches the following regular expression: \[a-zA-Z\]\[a-zA-Z0-9_\]* The
  /// first character must be an upper- or lower-case letter. The remaining
  /// characters must be letters, digits, or underscores.
  core.String? key;

  /// The type of data that can be assigned to the label.
  /// Possible string values are:
  /// - "STRING" : A variable-length string, not to exceed 1,024 characters.
  /// This is the default value type.
  /// - "BOOL" : Boolean; true or false.
  /// - "INT64" : A 64-bit signed integer.
  core.String? valueType;

  LabelDescriptor({this.description, this.key, this.valueType});

  LabelDescriptor.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        key: json_['key'] as core.String?,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final key = this.key;
    final valueType = this.valueType;
    return {'description': ?description, 'key': ?key, 'valueType': ?valueType};
  }
}

/// A label value.
class LabelValue {
  /// A bool label value.
  core.bool? boolValue;

  /// An int64 label value.
  core.String? int64Value;

  /// A string label value.
  core.String? stringValue;

  LabelValue({this.boolValue, this.int64Value, this.stringValue});

  LabelValue.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        int64Value: json_['int64Value'] as core.String?,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final int64Value = this.int64Value;
    final stringValue = this.stringValue;
    return {
      'boolValue': ?boolValue,
      'int64Value': ?int64Value,
      'stringValue': ?stringValue,
    };
  }
}

/// Parameters for a latency threshold SLI.
class LatencyCriteria {
  /// Good service is defined to be the count of requests made to this service
  /// that return in no more than threshold.
  core.String? threshold;

  LatencyCriteria({this.threshold});

  LatencyCriteria.fromJson(core.Map json_)
    : this(threshold: json_['threshold'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final threshold = this.threshold;
    return {'threshold': ?threshold};
  }
}

/// Specifies a linear sequence of buckets that all have the same width (except
/// overflow and underflow).
///
/// Each bucket represents a constant absolute uncertainty on the specific value
/// in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has
/// the following boundaries:Upper bound (0 \<= i \< N-1): offset + (width *
/// i).Lower bound (1 \<= i \< N): offset + (width * (i - 1)).
typedef Linear = $Linear;

/// Links to content such as playbooks, repositories, and other resources.
class Link {
  /// A short display name for the link.
  ///
  /// The display name must not be empty or exceed 63 characters. Example:
  /// "playbook".
  core.String? displayName;

  /// The url of a webpage.
  ///
  /// A url can be templatized by using variables in the path or the query
  /// parameters. The total length of a URL should not exceed 2083 characters
  /// before and after variable expansion. Example:
  /// "https://my_domain.com/playbook?name=${resource.name}"
  core.String? url;

  Link({this.displayName, this.url});

  Link.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final url = this.url;
    return {'displayName': ?displayName, 'url': ?url};
  }
}

/// The protocol for the ListAlertPolicies response.
class ListAlertPoliciesResponse {
  /// The returned alert policies.
  core.List<AlertPolicy>? alertPolicies;

  /// If there might be more results than were returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  /// The total number of alert policies in all pages.
  ///
  /// This number is only an estimate, and may change in subsequent pages.
  /// https://aip.dev/158
  core.int? totalSize;

  ListAlertPoliciesResponse({
    this.alertPolicies,
    this.nextPageToken,
    this.totalSize,
  });

  ListAlertPoliciesResponse.fromJson(core.Map json_)
    : this(
        alertPolicies: (json_['alertPolicies'] as core.List?)
            ?.map(
              (value) => AlertPolicy.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alertPolicies = this.alertPolicies;
    final nextPageToken = this.nextPageToken;
    final totalSize = this.totalSize;
    return {
      'alertPolicies': ?alertPolicies,
      'nextPageToken': ?nextPageToken,
      'totalSize': ?totalSize,
    };
  }
}

/// The ListAlerts response.
class ListAlertsResponse {
  /// The list of alerts.
  core.List<Alert>? alerts;

  /// If not empty, indicates that there may be more results that match the
  /// request.
  ///
  /// Use the value in the page_token field in a subsequent request to fetch the
  /// next set of results. The token is encrypted and only guaranteed to return
  /// correct results for 72 hours after it is created. If empty, all results
  /// have been returned.
  core.String? nextPageToken;

  /// The estimated total number of matching results for this query.
  core.int? totalSize;

  ListAlertsResponse({this.alerts, this.nextPageToken, this.totalSize});

  ListAlertsResponse.fromJson(core.Map json_)
    : this(
        alerts: (json_['alerts'] as core.List?)
            ?.map(
              (value) =>
                  Alert.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alerts = this.alerts;
    final nextPageToken = this.nextPageToken;
    final totalSize = this.totalSize;
    return {
      'alerts': ?alerts,
      'nextPageToken': ?nextPageToken,
      'totalSize': ?totalSize,
    };
  }
}

/// The ListGroupMembers response.
class ListGroupMembersResponse {
  /// A set of monitored resources in the group.
  core.List<MonitoredResource>? members;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  /// The total number of elements matching this request.
  core.int? totalSize;

  ListGroupMembersResponse({this.members, this.nextPageToken, this.totalSize});

  ListGroupMembersResponse.fromJson(core.Map json_)
    : this(
        members: (json_['members'] as core.List?)
            ?.map(
              (value) => MonitoredResource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final members = this.members;
    final nextPageToken = this.nextPageToken;
    final totalSize = this.totalSize;
    return {
      'members': ?members,
      'nextPageToken': ?nextPageToken,
      'totalSize': ?totalSize,
    };
  }
}

/// The ListGroups response.
class ListGroupsResponse {
  /// The groups that match the specified filters.
  core.List<Group>? group;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  ListGroupsResponse({this.group, this.nextPageToken});

  ListGroupsResponse.fromJson(core.Map json_)
    : this(
        group: (json_['group'] as core.List?)
            ?.map(
              (value) =>
                  Group.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final group = this.group;
    final nextPageToken = this.nextPageToken;
    return {'group': ?group, 'nextPageToken': ?nextPageToken};
  }
}

/// The ListMetricDescriptors response.
class ListMetricDescriptorsResponse {
  /// The metric descriptors that are available to the project and that match
  /// the value of filter, if present.
  core.List<MetricDescriptor>? metricDescriptors;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  ListMetricDescriptorsResponse({this.metricDescriptors, this.nextPageToken});

  ListMetricDescriptorsResponse.fromJson(core.Map json_)
    : this(
        metricDescriptors: (json_['metricDescriptors'] as core.List?)
            ?.map(
              (value) => MetricDescriptor.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metricDescriptors = this.metricDescriptors;
    final nextPageToken = this.nextPageToken;
    return {
      'metricDescriptors': ?metricDescriptors,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// The ListMonitoredResourceDescriptors response.
class ListMonitoredResourceDescriptorsResponse {
  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  /// The monitored resource descriptors that are available to this project and
  /// that match filter, if present.
  core.List<MonitoredResourceDescriptor>? resourceDescriptors;

  ListMonitoredResourceDescriptorsResponse({
    this.nextPageToken,
    this.resourceDescriptors,
  });

  ListMonitoredResourceDescriptorsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        resourceDescriptors: (json_['resourceDescriptors'] as core.List?)
            ?.map(
              (value) => MonitoredResourceDescriptor.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final resourceDescriptors = this.resourceDescriptors;
    return {
      'nextPageToken': ?nextPageToken,
      'resourceDescriptors': ?resourceDescriptors,
    };
  }
}

/// The ListNotificationChannelDescriptors response.
class ListNotificationChannelDescriptorsResponse {
  /// The monitored resource descriptors supported for the specified project,
  /// optionally filtered.
  core.List<NotificationChannelDescriptor>? channelDescriptors;

  /// If not empty, indicates that there may be more results that match the
  /// request.
  ///
  /// Use the value in the page_token field in a subsequent request to fetch the
  /// next set of results. If empty, all results have been returned.
  core.String? nextPageToken;

  ListNotificationChannelDescriptorsResponse({
    this.channelDescriptors,
    this.nextPageToken,
  });

  ListNotificationChannelDescriptorsResponse.fromJson(core.Map json_)
    : this(
        channelDescriptors: (json_['channelDescriptors'] as core.List?)
            ?.map(
              (value) => NotificationChannelDescriptor.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final channelDescriptors = this.channelDescriptors;
    final nextPageToken = this.nextPageToken;
    return {
      'channelDescriptors': ?channelDescriptors,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// The ListNotificationChannels response.
class ListNotificationChannelsResponse {
  /// If not empty, indicates that there may be more results that match the
  /// request.
  ///
  /// Use the value in the page_token field in a subsequent request to fetch the
  /// next set of results. If empty, all results have been returned.
  core.String? nextPageToken;

  /// The notification channels defined for the specified project.
  core.List<NotificationChannel>? notificationChannels;

  /// The total number of notification channels in all pages.
  ///
  /// This number is only an estimate, and may change in subsequent pages.
  /// https://aip.dev/158
  core.int? totalSize;

  ListNotificationChannelsResponse({
    this.nextPageToken,
    this.notificationChannels,
    this.totalSize,
  });

  ListNotificationChannelsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        notificationChannels: (json_['notificationChannels'] as core.List?)
            ?.map(
              (value) => NotificationChannel.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final notificationChannels = this.notificationChannels;
    final totalSize = this.totalSize;
    return {
      'nextPageToken': ?nextPageToken,
      'notificationChannels': ?notificationChannels,
      'totalSize': ?totalSize,
    };
  }
}

/// The ListServiceLevelObjectives response.
class ListServiceLevelObjectivesResponse {
  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  /// The ServiceLevelObjectives matching the specified filter.
  core.List<ServiceLevelObjective>? serviceLevelObjectives;

  ListServiceLevelObjectivesResponse({
    this.nextPageToken,
    this.serviceLevelObjectives,
  });

  ListServiceLevelObjectivesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        serviceLevelObjectives: (json_['serviceLevelObjectives'] as core.List?)
            ?.map(
              (value) => ServiceLevelObjective.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final serviceLevelObjectives = this.serviceLevelObjectives;
    return {
      'nextPageToken': ?nextPageToken,
      'serviceLevelObjectives': ?serviceLevelObjectives,
    };
  }
}

/// The ListServices response.
class ListServicesResponse {
  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  /// The Services matching the specified filter.
  core.List<Service>? services;

  ListServicesResponse({this.nextPageToken, this.services});

  ListServicesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        services: (json_['services'] as core.List?)
            ?.map(
              (value) => Service.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final services = this.services;
    return {'nextPageToken': ?nextPageToken, 'services': ?services};
  }
}

/// The results of a successful ListSnoozes call, containing the matching
/// Snoozes.
class ListSnoozesResponse {
  /// Page token for repeated calls to ListSnoozes, to fetch additional pages of
  /// results.
  ///
  /// If this is empty or missing, there are no more pages.
  core.String? nextPageToken;

  /// Snoozes matching this list call.
  core.List<Snooze>? snoozes;

  ListSnoozesResponse({this.nextPageToken, this.snoozes});

  ListSnoozesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        snoozes: (json_['snoozes'] as core.List?)
            ?.map(
              (value) =>
                  Snooze.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final snoozes = this.snoozes;
    return {'nextPageToken': ?nextPageToken, 'snoozes': ?snoozes};
  }
}

/// The ListTimeSeries response.
class ListTimeSeriesResponse {
  /// Query execution errors that may have caused the time series data returned
  /// to be incomplete.
  core.List<Status>? executionErrors;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  /// One or more time series that match the filter included in the request.
  core.List<TimeSeries>? timeSeries;

  /// The unit in which all time_series point values are reported.
  ///
  /// unit follows the UCUM format for units as seen in
  /// https://unitsofmeasure.org/ucum.html. If different time_series have
  /// different units (for example, because they come from different metric
  /// types, or a unit is absent), then unit will be "{not_a_unit}".
  core.String? unit;

  /// Cloud regions that were unreachable which may have caused incomplete data
  /// to be returned.
  core.List<core.String>? unreachable;

  ListTimeSeriesResponse({
    this.executionErrors,
    this.nextPageToken,
    this.timeSeries,
    this.unit,
    this.unreachable,
  });

  ListTimeSeriesResponse.fromJson(core.Map json_)
    : this(
        executionErrors: (json_['executionErrors'] as core.List?)
            ?.map(
              (value) =>
                  Status.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        timeSeries: (json_['timeSeries'] as core.List?)
            ?.map(
              (value) => TimeSeries.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unit: json_['unit'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionErrors = this.executionErrors;
    final nextPageToken = this.nextPageToken;
    final timeSeries = this.timeSeries;
    final unit = this.unit;
    final unreachable = this.unreachable;
    return {
      'executionErrors': ?executionErrors,
      'nextPageToken': ?nextPageToken,
      'timeSeries': ?timeSeries,
      'unit': ?unit,
      'unreachable': ?unreachable,
    };
  }
}

/// The protocol for the ListUptimeCheckConfigs response.
class ListUptimeCheckConfigsResponse {
  /// This field represents the pagination token to retrieve the next page of
  /// results.
  ///
  /// If the value is empty, it means no further results for the request. To
  /// retrieve the next page of results, the value of the next_page_token is
  /// passed to the subsequent List method call (in the request message's
  /// page_token field).
  core.String? nextPageToken;

  /// The total number of Uptime check configurations for the project,
  /// irrespective of any pagination.
  core.int? totalSize;

  /// The returned Uptime check configurations.
  core.List<UptimeCheckConfig>? uptimeCheckConfigs;

  ListUptimeCheckConfigsResponse({
    this.nextPageToken,
    this.totalSize,
    this.uptimeCheckConfigs,
  });

  ListUptimeCheckConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
        uptimeCheckConfigs: (json_['uptimeCheckConfigs'] as core.List?)
            ?.map(
              (value) => UptimeCheckConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final totalSize = this.totalSize;
    final uptimeCheckConfigs = this.uptimeCheckConfigs;
    return {
      'nextPageToken': ?nextPageToken,
      'totalSize': ?totalSize,
      'uptimeCheckConfigs': ?uptimeCheckConfigs,
    };
  }
}

/// The protocol for the ListUptimeCheckIps response.
class ListUptimeCheckIpsResponse {
  /// This field represents the pagination token to retrieve the next page of
  /// results.
  ///
  /// If the value is empty, it means no further results for the request. To
  /// retrieve the next page of results, the value of the next_page_token is
  /// passed to the subsequent List method call (in the request message's
  /// page_token field). NOTE: this field is not yet implemented
  core.String? nextPageToken;

  /// The returned list of IP addresses (including region and location) that the
  /// checkers run from.
  core.List<UptimeCheckIp>? uptimeCheckIps;

  ListUptimeCheckIpsResponse({this.nextPageToken, this.uptimeCheckIps});

  ListUptimeCheckIpsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        uptimeCheckIps: (json_['uptimeCheckIps'] as core.List?)
            ?.map(
              (value) => UptimeCheckIp.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final uptimeCheckIps = this.uptimeCheckIps;
    return {'nextPageToken': ?nextPageToken, 'uptimeCheckIps': ?uptimeCheckIps};
  }
}

/// A condition type that checks whether a log message in the scoping project
/// (https://cloud.google.com/monitoring/api/v3#project_name) satisfies the
/// given filter.
///
/// Logs from other projects in the metrics scope are not evaluated.
class LogMatch {
  /// A logs-based filter.
  ///
  /// See Advanced Logs Queries
  /// (https://cloud.google.com/logging/docs/view/advanced-queries) for how this
  /// filter should be constructed.
  ///
  /// Required.
  core.String? filter;

  /// A map from a label key to an extractor expression, which is used to
  /// extract the value for this label key.
  ///
  /// Each entry in this map is a specification for how data should be extracted
  /// from log entries that match filter. Each combination of extracted values
  /// is treated as a separate rule for the purposes of triggering
  /// notifications. Label keys and corresponding values can be used in
  /// notifications generated by this condition.Please see the documentation on
  /// logs-based metric valueExtractors
  /// (https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.metrics#LogMetric.FIELDS.value_extractor)
  /// for syntax and examples.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labelExtractors;

  LogMatch({this.filter, this.labelExtractors});

  LogMatch.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        labelExtractors:
            (json_['labelExtractors'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    final labelExtractors = this.labelExtractors;
    return {'filter': ?filter, 'labelExtractors': ?labelExtractors};
  }
}

/// Information about the log for log-based alerts.
class LogMetadata {
  /// The labels extracted from the log.
  core.Map<core.String, core.String>? extractedLabels;

  LogMetadata({this.extractedLabels});

  LogMetadata.fromJson(core.Map json_)
    : this(
        extractedLabels:
            (json_['extractedLabels'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final extractedLabels = this.extractedLabels;
    return {'extractedLabels': ?extractedLabels};
  }
}

/// Istio service scoped to an Istio mesh.
///
/// Anthos clusters running ASM \< 1.6.8 will have their services ingested as
/// this type.
class MeshIstio {
  /// Identifier for the mesh in which this Istio service is defined.
  ///
  /// Corresponds to the mesh_uid metric label in Istio metrics.
  core.String? meshUid;

  /// The name of the Istio service underlying this service.
  ///
  /// Corresponds to the destination_service_name metric label in Istio metrics.
  core.String? serviceName;

  /// The namespace of the Istio service underlying this service.
  ///
  /// Corresponds to the destination_service_namespace metric label in Istio
  /// metrics.
  core.String? serviceNamespace;

  MeshIstio({this.meshUid, this.serviceName, this.serviceNamespace});

  MeshIstio.fromJson(core.Map json_)
    : this(
        meshUid: json_['meshUid'] as core.String?,
        serviceName: json_['serviceName'] as core.String?,
        serviceNamespace: json_['serviceNamespace'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final meshUid = this.meshUid;
    final serviceName = this.serviceName;
    final serviceNamespace = this.serviceNamespace;
    return {
      'meshUid': ?meshUid,
      'serviceName': ?serviceName,
      'serviceNamespace': ?serviceNamespace,
    };
  }
}

/// A specific metric, identified by specifying values for all of the labels of
/// a MetricDescriptor.
class Metric {
  /// The set of label values that uniquely identify this metric.
  ///
  /// All labels listed in the MetricDescriptor must be assigned values.
  core.Map<core.String, core.String>? labels;

  /// An existing metric type, see google.api.MetricDescriptor.
  ///
  /// For example, custom.googleapis.com/invoice/paid/amount.
  core.String? type;

  Metric({this.labels, this.type});

  Metric.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labels = this.labels;
    final type = this.type;
    return {'labels': ?labels, 'type': ?type};
  }
}

/// A condition type that checks that monitored resources are reporting data.
///
/// The configuration defines a metric and a set of monitored resources. The
/// predicate is considered in violation when a time series for the specified
/// metric of a monitored resource does not include any data in the specified
/// duration.
class MetricAbsence {
  /// Specifies the alignment of data points in individual time series as well
  /// as how to combine the retrieved time series together (such as when
  /// aggregating multiple streams on each resource to a single stream for each
  /// resource or when aggregating streams across all members of a group of
  /// resources).
  ///
  /// Multiple aggregations are applied in the order specified.This field is
  /// similar to the one in the ListTimeSeries request
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list).
  /// It is advisable to use the ListTimeSeries method when debugging this
  /// field.
  core.List<Aggregation>? aggregations;

  /// The amount of time that a time series must fail to report new data to be
  /// considered failing.
  ///
  /// The minimum value of this field is 120 seconds. Larger values that are a
  /// multiple of a minute--for example, 240 or 300 seconds--are supported. If
  /// an invalid value is given, an error will be returned.
  ///
  /// Required.
  core.String? duration;

  /// A filter (https://cloud.google.com/monitoring/api/v3/filters) that
  /// identifies which time series should be compared with the threshold.The
  /// filter is similar to the one that is specified in the ListTimeSeries
  /// request
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list)
  /// (that call is useful to verify the time series that will be retrieved /
  /// processed).
  ///
  /// The filter must specify the metric type and the resource type. Optionally,
  /// it can specify resource labels and metric labels. This field must not
  /// exceed 2048 Unicode characters in length.
  ///
  /// Required.
  core.String? filter;

  /// The number/percent of time series for which the comparison must hold in
  /// order for the condition to trigger.
  ///
  /// If unspecified, then the condition will trigger if the comparison is true
  /// for any of the time series that have been identified by filter and
  /// aggregations.
  Trigger? trigger;

  MetricAbsence({this.aggregations, this.duration, this.filter, this.trigger});

  MetricAbsence.fromJson(core.Map json_)
    : this(
        aggregations: (json_['aggregations'] as core.List?)
            ?.map(
              (value) => Aggregation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        duration: json_['duration'] as core.String?,
        filter: json_['filter'] as core.String?,
        trigger: json_.containsKey('trigger')
            ? Trigger.fromJson(
                json_['trigger'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregations = this.aggregations;
    final duration = this.duration;
    final filter = this.filter;
    final trigger = this.trigger;
    return {
      'aggregations': ?aggregations,
      'duration': ?duration,
      'filter': ?filter,
      'trigger': ?trigger,
    };
  }
}

/// Defines a metric type and its schema.
///
/// Once a metric descriptor is created, deleting or altering it stops data
/// collection and makes the metric type's existing data unusable.
class MetricDescriptor {
  /// A detailed description of the metric, which can be used in documentation.
  core.String? description;

  /// A concise name for the metric, which can be displayed in user interfaces.
  ///
  /// Use sentence case without an ending period, for example "Request count".
  /// This field is optional but it is recommended to be set for any metrics
  /// associated with user-visible concepts, such as Quota.
  core.String? displayName;

  /// The set of labels that can be used to describe a specific instance of this
  /// metric type.
  ///
  /// For example, the appengine.googleapis.com/http/server/response_latencies
  /// metric type has a label for the HTTP response code, response_code, so you
  /// can look at latencies for successful responses or just for responses that
  /// failed.
  core.List<LabelDescriptor>? labels;

  /// The launch stage of the metric definition.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String? launchStage;

  /// Metadata which can be used to guide usage of the metric.
  ///
  /// Optional.
  MetricDescriptorMetadata? metadata;

  /// Whether the metric records instantaneous values, changes to a value, etc.
  ///
  /// Some combinations of metric_kind and value_type might not be supported.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval. Cumulative
  /// measurements in a time series should have the same start time and
  /// increasing end times, until an event resets the cumulative value to zero
  /// and sets a new start time for the following points.
  core.String? metricKind;

  /// Read-only.
  ///
  /// If present, then a time series, which is identified partially by a metric
  /// type and a MonitoredResourceDescriptor, that is associated with this
  /// metric type can only be associated with one of the monitored resource
  /// types listed here.
  core.List<core.String>? monitoredResourceTypes;

  /// The resource name of the metric descriptor.
  core.String? name;

  /// The metric type, including its DNS name prefix.
  ///
  /// The type is not URL-encoded. All user-defined metric types have the DNS
  /// name custom.googleapis.com or external.googleapis.com. Metric types should
  /// use a natural hierarchical grouping. For example:
  /// "custom.googleapis.com/invoice/paid/amount"
  /// "external.googleapis.com/prometheus/up"
  /// "appengine.googleapis.com/http/server/response_latencies"
  core.String? type;

  /// The units in which the metric value is reported.
  ///
  /// It is only applicable if the value_type is INT64, DOUBLE, or DISTRIBUTION.
  /// The unit defines the representation of the stored metric values.Different
  /// systems might scale the values to be more easily displayed (so a value of
  /// 0.02kBy might be displayed as 20By, and a value of 3523kBy might be
  /// displayed as 3.5MBy). However, if the unit is kBy, then the value of the
  /// metric is always in thousands of bytes, no matter how it might be
  /// displayed.If you want a custom metric to record the exact number of
  /// CPU-seconds used by a job, you can create an INT64 CUMULATIVE metric whose
  /// unit is s{CPU} (or equivalently 1s{CPU} or just s). If the job uses 12,005
  /// CPU-seconds, then the value is written as 12005.Alternatively, if you want
  /// a custom metric to record data in a more granular way, you can create a
  /// DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
  /// 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is
  /// 12005/1024).The supported units are a subset of The Unified Code for Units
  /// of Measure (https://unitsofmeasure.org/ucum.html) standard:Basic units
  /// (UNIT) bit bit By byte s second min minute h hour d day 1
  /// dimensionlessPrefixes (PREFIX) k kilo (10^3) M mega (10^6) G giga (10^9) T
  /// tera (10^12) P peta (10^15) E exa (10^18) Z zetta (10^21) Y yotta (10^24)
  /// m milli (10^-3) u micro (10^-6) n nano (10^-9) p pico (10^-12) f femto
  /// (10^-15) a atto (10^-18) z zepto (10^-21) y yocto (10^-24) Ki kibi (2^10)
  /// Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi pebi (2^50)GrammarThe
  /// grammar also includes these connectors: / division or ratio (as an infix
  /// operator). For examples, kBy/{email} or MiBy/10ms (although you should
  /// almost never have /s in a metric unit; rates should always be computed at
  /// query time from the underlying cumulative or delta value). .
  /// multiplication or composition (as an infix operator). For examples, GBy.d
  /// or k{watt}.h.The grammar for a unit is as follows: Expression = Component
  /// { "." Component } { "/" Component } ; Component = ( \[ PREFIX \] UNIT |
  /// "%" ) \[ Annotation \] | Annotation | "1" ; Annotation = "{" NAME "}" ;
  /// Notes: Annotation is just a comment if it follows a UNIT. If the
  /// annotation is used alone, then the unit is equivalent to 1. For examples,
  /// {request}/s == 1/s, By{transmitted}/s == By/s. NAME is a sequence of
  /// non-blank printable ASCII characters not containing { or }. 1 represents a
  /// unitary dimensionless unit
  /// (https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as in
  /// 1/s. It is typically used when none of the basic units are appropriate.
  /// For example, "new users per day" can be represented as 1/d or
  /// {new-users}/d (and a metric value 5 would mean "5 new users).
  /// Alternatively, "thousands of page views per day" would be represented as
  /// 1000/d or k1/d or k{page_views}/d (and a metric value of 5.3 would mean
  /// "5300 page views per day"). % represents dimensionless value of 1/100, and
  /// annotates values giving a percentage (so the metric values are typically
  /// in the range of 0..100, and a metric value 3 means "3 percent"). 10^2.%
  /// indicates a metric contains a ratio, typically in the range 0..1, that
  /// will be multiplied by 100 and displayed as a percentage (so a metric value
  /// 0.03 means "3 percent").
  core.String? unit;

  /// Whether the measurement is an integer, a floating-point number, etc.
  ///
  /// Some combinations of metric_kind and value_type might not be supported.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean. This value type can be used only if the
  /// metric kind is GAUGE.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string. This value type can be used only
  /// if the metric kind is GAUGE.
  /// - "DISTRIBUTION" : The value is a Distribution.
  /// - "MONEY" : The value is money.
  core.String? valueType;

  MetricDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.metadata,
    this.metricKind,
    this.monitoredResourceTypes,
    this.name,
    this.type,
    this.unit,
    this.valueType,
  });

  MetricDescriptor.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.List?)
            ?.map(
              (value) => LabelDescriptor.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        launchStage: json_['launchStage'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? MetricDescriptorMetadata.fromJson(
                json_['metadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metricKind: json_['metricKind'] as core.String?,
        monitoredResourceTypes: (json_['monitoredResourceTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        unit: json_['unit'] as core.String?,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final labels = this.labels;
    final launchStage = this.launchStage;
    final metadata = this.metadata;
    final metricKind = this.metricKind;
    final monitoredResourceTypes = this.monitoredResourceTypes;
    final name = this.name;
    final type = this.type;
    final unit = this.unit;
    final valueType = this.valueType;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'launchStage': ?launchStage,
      'metadata': ?metadata,
      'metricKind': ?metricKind,
      'monitoredResourceTypes': ?monitoredResourceTypes,
      'name': ?name,
      'type': ?type,
      'unit': ?unit,
      'valueType': ?valueType,
    };
  }
}

/// Additional annotations that can be used to guide the usage of a metric.
typedef MetricDescriptorMetadata = $MetricDescriptorMetadata;

/// A MetricRange is used when each window is good when the value x of a single
/// TimeSeries satisfies range.min \<= x \<= range.max.
///
/// The provided TimeSeries must have ValueType = INT64 or ValueType = DOUBLE
/// and MetricKind = GAUGE.
class MetricRange {
  /// Range of values considered "good." For a one-sided range, set one bound to
  /// an infinite value.
  GoogleMonitoringV3Range? range;

  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying the TimeSeries to use for evaluating window quality.
  core.String? timeSeries;

  MetricRange({this.range, this.timeSeries});

  MetricRange.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? GoogleMonitoringV3Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeSeries: json_['timeSeries'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    final timeSeries = this.timeSeries;
    return {'range': ?range, 'timeSeries': ?timeSeries};
  }
}

/// A condition type that compares a collection of time series against a
/// threshold.
class MetricThreshold {
  /// Specifies the alignment of data points in individual time series as well
  /// as how to combine the retrieved time series together (such as when
  /// aggregating multiple streams on each resource to a single stream for each
  /// resource or when aggregating streams across all members of a group of
  /// resources).
  ///
  /// Multiple aggregations are applied in the order specified.This field is
  /// similar to the one in the ListTimeSeries request
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list).
  /// It is advisable to use the ListTimeSeries method when debugging this
  /// field.
  core.List<Aggregation>? aggregations;

  /// The comparison to apply between the time series (indicated by filter and
  /// aggregation) and the threshold (indicated by threshold_value).
  ///
  /// The comparison is applied on each time series, with the time series on the
  /// left-hand side and the threshold on the right-hand side.Only COMPARISON_LT
  /// and COMPARISON_GT are supported currently.
  /// Possible string values are:
  /// - "COMPARISON_UNSPECIFIED" : No ordering relationship is specified.
  /// - "COMPARISON_GT" : True if the left argument is greater than the right
  /// argument.
  /// - "COMPARISON_GE" : True if the left argument is greater than or equal to
  /// the right argument.
  /// - "COMPARISON_LT" : True if the left argument is less than the right
  /// argument.
  /// - "COMPARISON_LE" : True if the left argument is less than or equal to the
  /// right argument.
  /// - "COMPARISON_EQ" : True if the left argument is equal to the right
  /// argument.
  /// - "COMPARISON_NE" : True if the left argument is not equal to the right
  /// argument.
  core.String? comparison;

  /// Specifies the alignment of data points in individual time series selected
  /// by denominatorFilter as well as how to combine the retrieved time series
  /// together (such as when aggregating multiple streams on each resource to a
  /// single stream for each resource or when aggregating streams across all
  /// members of a group of resources).When computing ratios, the aggregations
  /// and denominator_aggregations fields must use the same alignment period and
  /// produce time series that have the same periodicity and labels.
  core.List<Aggregation>? denominatorAggregations;

  /// A filter (https://cloud.google.com/monitoring/api/v3/filters) that
  /// identifies a time series that should be used as the denominator of a ratio
  /// that will be compared with the threshold.
  ///
  /// If a denominator_filter is specified, the time series specified by the
  /// filter field will be used as the numerator.The filter must specify the
  /// metric type and optionally may contain restrictions on resource type,
  /// resource labels, and metric labels. This field may not exceed 2048 Unicode
  /// characters in length.
  core.String? denominatorFilter;

  /// The amount of time that a time series must violate the threshold to be
  /// considered failing.
  ///
  /// Currently, only values that are a multiple of a minute--e.g., 0, 60, 120,
  /// or 300 seconds--are supported. If an invalid value is given, an error will
  /// be returned. When choosing a duration, it is useful to keep in mind the
  /// frequency of the underlying time series data (which may also be affected
  /// by any alignments specified in the aggregations field); a good duration is
  /// long enough so that a single outlier does not generate spurious alerts,
  /// but short enough that unhealthy states are detected and alerted on
  /// quickly.
  ///
  /// Required.
  core.String? duration;

  /// A condition control that determines how metric-threshold conditions are
  /// evaluated when data stops arriving.
  ///
  /// To use this control, the value of the duration field must be greater than
  /// or equal to 60 seconds.
  /// Possible string values are:
  /// - "EVALUATION_MISSING_DATA_UNSPECIFIED" : An unspecified evaluation
  /// missing data option. Equivalent to EVALUATION_MISSING_DATA_NO_OP.
  /// - "EVALUATION_MISSING_DATA_INACTIVE" : If there is no data to evaluate the
  /// condition, then evaluate the condition as false.
  /// - "EVALUATION_MISSING_DATA_ACTIVE" : If there is no data to evaluate the
  /// condition, then evaluate the condition as true.
  /// - "EVALUATION_MISSING_DATA_NO_OP" : Do not evaluate the condition to any
  /// value if there is no data.
  core.String? evaluationMissingData;

  /// A filter (https://cloud.google.com/monitoring/api/v3/filters) that
  /// identifies which time series should be compared with the threshold.The
  /// filter is similar to the one that is specified in the ListTimeSeries
  /// request
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list)
  /// (that call is useful to verify the time series that will be retrieved /
  /// processed).
  ///
  /// The filter must specify the metric type and the resource type. Optionally,
  /// it can specify resource labels and metric labels. This field must not
  /// exceed 2048 Unicode characters in length.
  ///
  /// Required.
  core.String? filter;

  /// When this field is present, the MetricThreshold condition forecasts
  /// whether the time series is predicted to violate the threshold within the
  /// forecast_horizon.
  ///
  /// When this field is not set, the MetricThreshold tests the current value of
  /// the timeseries against the threshold.
  ForecastOptions? forecastOptions;

  /// A value against which to compare the time series.
  core.double? thresholdValue;

  /// The number/percent of time series for which the comparison must hold in
  /// order for the condition to trigger.
  ///
  /// If unspecified, then the condition will trigger if the comparison is true
  /// for any of the time series that have been identified by filter and
  /// aggregations, or by the ratio, if denominator_filter and
  /// denominator_aggregations are specified.
  Trigger? trigger;

  MetricThreshold({
    this.aggregations,
    this.comparison,
    this.denominatorAggregations,
    this.denominatorFilter,
    this.duration,
    this.evaluationMissingData,
    this.filter,
    this.forecastOptions,
    this.thresholdValue,
    this.trigger,
  });

  MetricThreshold.fromJson(core.Map json_)
    : this(
        aggregations: (json_['aggregations'] as core.List?)
            ?.map(
              (value) => Aggregation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        comparison: json_['comparison'] as core.String?,
        denominatorAggregations:
            (json_['denominatorAggregations'] as core.List?)
                ?.map(
                  (value) => Aggregation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        denominatorFilter: json_['denominatorFilter'] as core.String?,
        duration: json_['duration'] as core.String?,
        evaluationMissingData: json_['evaluationMissingData'] as core.String?,
        filter: json_['filter'] as core.String?,
        forecastOptions: json_.containsKey('forecastOptions')
            ? ForecastOptions.fromJson(
                json_['forecastOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        thresholdValue: (json_['thresholdValue'] as core.num?)?.toDouble(),
        trigger: json_.containsKey('trigger')
            ? Trigger.fromJson(
                json_['trigger'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregations = this.aggregations;
    final comparison = this.comparison;
    final denominatorAggregations = this.denominatorAggregations;
    final denominatorFilter = this.denominatorFilter;
    final duration = this.duration;
    final evaluationMissingData = this.evaluationMissingData;
    final filter = this.filter;
    final forecastOptions = this.forecastOptions;
    final thresholdValue = this.thresholdValue;
    final trigger = this.trigger;
    return {
      'aggregations': ?aggregations,
      'comparison': ?comparison,
      'denominatorAggregations': ?denominatorAggregations,
      'denominatorFilter': ?denominatorFilter,
      'duration': ?duration,
      'evaluationMissingData': ?evaluationMissingData,
      'filter': ?filter,
      'forecastOptions': ?forecastOptions,
      'thresholdValue': ?thresholdValue,
      'trigger': ?trigger,
    };
  }
}

/// Used to schedule the query to run every so many minutes.
class Minutes {
  /// Number of minutes between runs.
  ///
  /// The interval must be greater than or equal to 5 minutes and less than or
  /// equal to 1440 minutes.
  ///
  /// Required.
  core.int? periodicity;

  Minutes({this.periodicity});

  Minutes.fromJson(core.Map json_)
    : this(periodicity: json_['periodicity'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final periodicity = this.periodicity;
    return {'periodicity': ?periodicity};
  }
}

/// An object representing a resource that can be used for monitoring, logging,
/// billing, or other purposes.
///
/// Examples include virtual machine instances, databases, and storage devices
/// such as disks. The type field identifies a MonitoredResourceDescriptor
/// object that describes the resource's schema. Information in the labels field
/// identifies the actual resource and its attributes according to the schema.
/// For example, a particular Compute Engine VM instance could be represented by
/// the following object, because the MonitoredResourceDescriptor for
/// "gce_instance" has labels "project_id", "instance_id" and "zone": { "type":
/// "gce_instance", "labels": { "project_id": "my-project", "instance_id":
/// "12345678901234", "zone": "us-central1-a" }}
class MonitoredResource {
  /// Values for all of the labels listed in the associated monitored resource
  /// descriptor.
  ///
  /// For example, Compute Engine VM instances use the labels "project_id",
  /// "instance_id", and "zone".
  ///
  /// Required.
  core.Map<core.String, core.String>? labels;

  /// The monitored resource type.
  ///
  /// This field must match the type field of a MonitoredResourceDescriptor
  /// object. For example, the type of a Compute Engine VM instance is
  /// gce_instance. For a list of types, see Monitoring resource types
  /// (https://cloud.google.com/monitoring/api/resources) and Logging resource
  /// types (https://cloud.google.com/logging/docs/api/v2/resource-list).
  ///
  /// Required.
  core.String? type;

  MonitoredResource({this.labels, this.type});

  MonitoredResource.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labels = this.labels;
    final type = this.type;
    return {'labels': ?labels, 'type': ?type};
  }
}

/// An object that describes the schema of a MonitoredResource object using a
/// type name and a set of labels.
///
/// For example, the monitored resource descriptor for Google Compute Engine VM
/// instances has a type of "gce_instance" and specifies the use of the labels
/// "instance_id" and "zone" to identify particular VM instances.Different APIs
/// can support different monitored resource types. APIs generally provide a
/// list method that returns the monitored resource descriptors used by the API.
class MonitoredResourceDescriptor {
  /// A detailed description of the monitored resource type that might be used
  /// in documentation.
  ///
  /// Optional.
  core.String? description;

  /// A concise name for the monitored resource type that might be displayed in
  /// user interfaces.
  ///
  /// It should be a Title Cased Noun Phrase, without any article or other
  /// determiners. For example, "Google Cloud SQL Database".
  ///
  /// Optional.
  core.String? displayName;

  /// A set of labels used to describe instances of this monitored resource
  /// type.
  ///
  /// For example, an individual Google Cloud SQL database is identified by
  /// values for the labels "database_id" and "zone".
  ///
  /// Required.
  core.List<LabelDescriptor>? labels;

  /// The launch stage of the monitored resource definition.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String? launchStage;

  /// The resource name of the monitored resource descriptor:
  /// "projects/{project_id}/monitoredResourceDescriptors/{type}" where {type}
  /// is the value of the type field in this object and {project_id} is a
  /// project ID that provides API-specific context for accessing the type.
  ///
  /// APIs that do not use project information can use the resource name format
  /// "monitoredResourceDescriptors/{type}".
  ///
  /// Optional.
  core.String? name;

  /// The monitored resource type.
  ///
  /// For example, the type "cloudsql_database" represents databases in Google
  /// Cloud SQL. For a list of types, see Monitored resource types
  /// (https://cloud.google.com/monitoring/api/resources) and Logging resource
  /// types (https://cloud.google.com/logging/docs/api/v2/resource-list).
  ///
  /// Required.
  core.String? type;

  MonitoredResourceDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.name,
    this.type,
  });

  MonitoredResourceDescriptor.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.List?)
            ?.map(
              (value) => LabelDescriptor.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        launchStage: json_['launchStage'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final labels = this.labels;
    final launchStage = this.launchStage;
    final name = this.name;
    final type = this.type;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'launchStage': ?launchStage,
      'name': ?name,
      'type': ?type,
    };
  }
}

/// Auxiliary metadata for a MonitoredResource object.
///
/// MonitoredResource objects contain the minimum set of information to uniquely
/// identify a monitored resource instance. There is some other useful auxiliary
/// metadata. Monitoring and Logging use an ingestion pipeline to extract
/// metadata for cloud resources of all types, and store the metadata in this
/// message.
typedef MonitoredResourceMetadata = $MonitoredResourceMetadata;

/// A condition type that allows alerting policies to be defined using
/// Monitoring Query Language (https://cloud.google.com/monitoring/mql).
class MonitoringQueryLanguageCondition {
  /// The amount of time that a time series must violate the threshold to be
  /// considered failing.
  ///
  /// Currently, only values that are a multiple of a minute--e.g., 0, 60, 120,
  /// or 300 seconds--are supported. If an invalid value is given, an error will
  /// be returned. When choosing a duration, it is useful to keep in mind the
  /// frequency of the underlying time series data (which may also be affected
  /// by any alignments specified in the aggregations field); a good duration is
  /// long enough so that a single outlier does not generate spurious alerts,
  /// but short enough that unhealthy states are detected and alerted on
  /// quickly. The default value is zero.
  ///
  /// Optional.
  core.String? duration;

  /// A condition control that determines how metric-threshold conditions are
  /// evaluated when data stops arriving.
  /// Possible string values are:
  /// - "EVALUATION_MISSING_DATA_UNSPECIFIED" : An unspecified evaluation
  /// missing data option. Equivalent to EVALUATION_MISSING_DATA_NO_OP.
  /// - "EVALUATION_MISSING_DATA_INACTIVE" : If there is no data to evaluate the
  /// condition, then evaluate the condition as false.
  /// - "EVALUATION_MISSING_DATA_ACTIVE" : If there is no data to evaluate the
  /// condition, then evaluate the condition as true.
  /// - "EVALUATION_MISSING_DATA_NO_OP" : Do not evaluate the condition to any
  /// value if there is no data.
  core.String? evaluationMissingData;

  /// Monitoring Query Language (https://cloud.google.com/monitoring/mql) query
  /// that outputs a boolean stream.
  core.String? query;

  /// The number/percent of time series for which the comparison must hold in
  /// order for the condition to trigger.
  ///
  /// If unspecified, then the condition will trigger if the comparison is true
  /// for any of the time series that have been identified by filter and
  /// aggregations, or by the ratio, if denominator_filter and
  /// denominator_aggregations are specified.
  Trigger? trigger;

  MonitoringQueryLanguageCondition({
    this.duration,
    this.evaluationMissingData,
    this.query,
    this.trigger,
  });

  MonitoringQueryLanguageCondition.fromJson(core.Map json_)
    : this(
        duration: json_['duration'] as core.String?,
        evaluationMissingData: json_['evaluationMissingData'] as core.String?,
        query: json_['query'] as core.String?,
        trigger: json_.containsKey('trigger')
            ? Trigger.fromJson(
                json_['trigger'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final duration = this.duration;
    final evaluationMissingData = this.evaluationMissingData;
    final query = this.query;
    final trigger = this.trigger;
    return {
      'duration': ?duration,
      'evaluationMissingData': ?evaluationMissingData,
      'query': ?query,
      'trigger': ?trigger,
    };
  }
}

/// Describes a change made to a configuration.
class MutationRecord {
  /// When the change occurred.
  core.String? mutateTime;

  /// The email address of the user making the change.
  core.String? mutatedBy;

  MutationRecord({this.mutateTime, this.mutatedBy});

  MutationRecord.fromJson(core.Map json_)
    : this(
        mutateTime: json_['mutateTime'] as core.String?,
        mutatedBy: json_['mutatedBy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mutateTime = this.mutateTime;
    final mutatedBy = this.mutatedBy;
    return {'mutateTime': ?mutateTime, 'mutatedBy': ?mutatedBy};
  }
}

/// A NotificationChannel is a medium through which an alert is delivered when a
/// policy violation is detected.
///
/// Examples of channels include email, SMS, and third-party messaging
/// applications. Fields containing sensitive information like authentication
/// tokens or contact info are only partially populated on retrieval.
class NotificationChannel {
  /// Record of the creation of this channel.
  MutationRecord? creationRecord;

  /// An optional human-readable description of this notification channel.
  ///
  /// This description may provide additional details, beyond the display name,
  /// for the channel. This may not exceed 1024 Unicode characters.
  core.String? description;

  /// An optional human-readable name for this notification channel.
  ///
  /// It is recommended that you specify a non-empty and unique name in order to
  /// make it easier to identify the channels in your project, though this is
  /// not enforced. The display name is limited to 512 Unicode characters.
  core.String? displayName;

  /// Whether notifications are forwarded to the described channel.
  ///
  /// This makes it possible to disable delivery of notifications to a
  /// particular channel without removing the channel from all alerting policies
  /// that reference the channel. This is a more convenient approach when the
  /// change is temporary and you want to receive notifications from the same
  /// set of alerting policies on the channel at some point in the future.
  core.bool? enabled;

  /// Configuration fields that define the channel and its behavior.
  ///
  /// The permissible and required labels are specified in the
  /// NotificationChannelDescriptor.labels of the NotificationChannelDescriptor
  /// corresponding to the type field.
  core.Map<core.String, core.String>? labels;

  /// Records of the modification of this channel.
  core.List<MutationRecord>? mutationRecords;

  /// Identifier.
  ///
  /// The full REST resource name for this channel. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/notificationChannels/\[CHANNEL_ID\] The
  /// \[CHANNEL_ID\] is automatically assigned by the server on creation.
  core.String? name;

  /// The type of the notification channel.
  ///
  /// This field matches the value of the NotificationChannelDescriptor.type
  /// field.
  core.String? type;

  /// User-supplied key/value data that does not need to conform to the
  /// corresponding NotificationChannelDescriptor's schema, unlike the labels
  /// field.
  ///
  /// This field is intended to be used for organizing and identifying the
  /// NotificationChannel objects.The field can contain up to 64 entries. Each
  /// key and value is limited to 63 Unicode characters or 128 bytes, whichever
  /// is smaller. Labels and values can contain only lowercase letters,
  /// numerals, underscores, and dashes. Keys must begin with a letter.
  core.Map<core.String, core.String>? userLabels;

  /// Indicates whether this channel has been verified or not.
  ///
  /// On a ListNotificationChannels or GetNotificationChannel operation, this
  /// field is expected to be populated.If the value is UNVERIFIED, then it
  /// indicates that the channel is non-functioning (it both requires
  /// verification and lacks verification); otherwise, it is assumed that the
  /// channel works.If the channel is neither VERIFIED nor UNVERIFIED, it
  /// implies that the channel is of a type that does not require verification
  /// or that this specific channel has been exempted from verification because
  /// it was created prior to verification being required for channels of this
  /// type.This field cannot be modified using a standard
  /// UpdateNotificationChannel operation. To change the value of this field,
  /// you must call VerifyNotificationChannel.
  /// Possible string values are:
  /// - "VERIFICATION_STATUS_UNSPECIFIED" : Sentinel value used to indicate that
  /// the state is unknown, omitted, or is not applicable (as in the case of
  /// channels that neither support nor require verification in order to
  /// function).
  /// - "UNVERIFIED" : The channel has yet to be verified and requires
  /// verification to function. Note that this state also applies to the case
  /// where the verification process has been initiated by sending a
  /// verification code but where the verification code has not been submitted
  /// to complete the process.
  /// - "VERIFIED" : It has been proven that notifications can be received on
  /// this notification channel and that someone on the project has access to
  /// messages that are delivered to that channel.
  core.String? verificationStatus;

  NotificationChannel({
    this.creationRecord,
    this.description,
    this.displayName,
    this.enabled,
    this.labels,
    this.mutationRecords,
    this.name,
    this.type,
    this.userLabels,
    this.verificationStatus,
  });

  NotificationChannel.fromJson(core.Map json_)
    : this(
        creationRecord: json_.containsKey('creationRecord')
            ? MutationRecord.fromJson(
                json_['creationRecord'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        mutationRecords: (json_['mutationRecords'] as core.List?)
            ?.map(
              (value) => MutationRecord.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        userLabels:
            (json_['userLabels'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        verificationStatus: json_['verificationStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final creationRecord = this.creationRecord;
    final description = this.description;
    final displayName = this.displayName;
    final enabled = this.enabled;
    final labels = this.labels;
    final mutationRecords = this.mutationRecords;
    final name = this.name;
    final type = this.type;
    final userLabels = this.userLabels;
    final verificationStatus = this.verificationStatus;
    return {
      'creationRecord': ?creationRecord,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'labels': ?labels,
      'mutationRecords': ?mutationRecords,
      'name': ?name,
      'type': ?type,
      'userLabels': ?userLabels,
      'verificationStatus': ?verificationStatus,
    };
  }
}

/// A description of a notification channel.
///
/// The descriptor includes the properties of the channel and the set of labels
/// or fields that must be specified to configure channels of a given type.
class NotificationChannelDescriptor {
  /// A human-readable description of the notification channel type.
  ///
  /// The description may include a description of the properties of the channel
  /// and pointers to external documentation.
  core.String? description;

  /// A human-readable name for the notification channel type.
  ///
  /// This form of the name is suitable for a user interface.
  core.String? displayName;

  /// The set of labels that must be defined to identify a particular channel of
  /// the corresponding type.
  ///
  /// Each label includes a description for how that field should be populated.
  core.List<LabelDescriptor>? labels;

  /// The product launch stage for channels of this type.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String? launchStage;

  /// The full REST resource name for this descriptor.
  ///
  /// The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/notificationChannelDescriptors/\[TYPE\]
  /// In the above, \[TYPE\] is the value of the type field.
  core.String? name;

  /// The tiers that support this notification channel; the project service tier
  /// must be one of the supported_tiers.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? supportedTiers;

  /// The type of notification channel, such as "email" and "sms".
  ///
  /// To view the full list of channels, see Channel descriptors
  /// (https://cloud.google.com/monitoring/alerts/using-channels-api#ncd).
  /// Notification channel types are globally unique.
  core.String? type;

  NotificationChannelDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.name,
    this.supportedTiers,
    this.type,
  });

  NotificationChannelDescriptor.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.List?)
            ?.map(
              (value) => LabelDescriptor.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        launchStage: json_['launchStage'] as core.String?,
        name: json_['name'] as core.String?,
        supportedTiers: (json_['supportedTiers'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final labels = this.labels;
    final launchStage = this.launchStage;
    final name = this.name;
    final supportedTiers = this.supportedTiers;
    final type = this.type;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'launchStage': ?launchStage,
      'name': ?name,
      'supportedTiers': ?supportedTiers,
      'type': ?type,
    };
  }
}

/// Control over how the notification channels in notification_channels are
/// notified when this alert fires, on a per-channel basis.
class NotificationChannelStrategy {
  /// The full REST resource name for the notification channels that these
  /// settings apply to.
  ///
  /// Each of these correspond to the name field in one of the
  /// NotificationChannel objects referenced in the notification_channels field
  /// of this AlertPolicy. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/notificationChannels/\[CHANNEL_ID\]
  core.List<core.String>? notificationChannelNames;

  /// The frequency at which to send reminder notifications for open incidents.
  core.String? renotifyInterval;

  NotificationChannelStrategy({
    this.notificationChannelNames,
    this.renotifyInterval,
  });

  NotificationChannelStrategy.fromJson(core.Map json_)
    : this(
        notificationChannelNames:
            (json_['notificationChannelNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        renotifyInterval: json_['renotifyInterval'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final notificationChannelNames = this.notificationChannelNames;
    final renotifyInterval = this.renotifyInterval;
    return {
      'notificationChannelNames': ?notificationChannelNames,
      'renotifyInterval': ?renotifyInterval,
    };
  }
}

/// Control over the rate of notifications sent to this alerting policy's
/// notification channels.
class NotificationRateLimit {
  /// Not more than one notification per period.
  core.String? period;

  NotificationRateLimit({this.period});

  NotificationRateLimit.fromJson(core.Map json_)
    : this(period: json_['period'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final period = this.period;
    return {'period': ?period};
  }
}

/// A PerformanceThreshold is used when each window is good when that window has
/// a sufficiently high performance.
class PerformanceThreshold {
  /// BasicSli to evaluate to judge window quality.
  BasicSli? basicSliPerformance;

  /// RequestBasedSli to evaluate to judge window quality.
  RequestBasedSli? performance;

  /// If window performance \>= threshold, the window is counted as good.
  core.double? threshold;

  PerformanceThreshold({
    this.basicSliPerformance,
    this.performance,
    this.threshold,
  });

  PerformanceThreshold.fromJson(core.Map json_)
    : this(
        basicSliPerformance: json_.containsKey('basicSliPerformance')
            ? BasicSli.fromJson(
                json_['basicSliPerformance']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        performance: json_.containsKey('performance')
            ? RequestBasedSli.fromJson(
                json_['performance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        threshold: (json_['threshold'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basicSliPerformance = this.basicSliPerformance;
    final performance = this.performance;
    final threshold = this.threshold;
    return {
      'basicSliPerformance': ?basicSliPerformance,
      'performance': ?performance,
      'threshold': ?threshold,
    };
  }
}

/// Information involved in sending ICMP pings alongside public HTTP/TCP checks.
///
/// For HTTP, the pings are performed for each part of the redirect chain.
class PingConfig {
  /// Number of ICMP pings.
  ///
  /// A maximum of 3 ICMP pings is currently supported.
  core.int? pingsCount;

  PingConfig({this.pingsCount});

  PingConfig.fromJson(core.Map json_)
    : this(pingsCount: json_['pingsCount'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final pingsCount = this.pingsCount;
    return {'pingsCount': ?pingsCount};
  }
}

/// A single data point in a time series.
class Point {
  /// The time interval to which the data point applies.
  ///
  /// For GAUGE metrics, the start time is optional, but if it is supplied, it
  /// must equal the end time. For DELTA metrics, the start and end time should
  /// specify a non-zero interval, with subsequent points specifying contiguous
  /// and non-overlapping intervals. For CUMULATIVE metrics, the start and end
  /// time should specify a non-zero interval, with subsequent points specifying
  /// the same start time and increasing end times, until an event resets the
  /// cumulative value to zero and sets a new start time for the following
  /// points.
  TimeInterval? interval;

  /// The value of the data point.
  TypedValue? value;

  Point({this.interval, this.value});

  Point.fromJson(core.Map json_)
    : this(
        interval: json_.containsKey('interval')
            ? TimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        value: json_.containsKey('value')
            ? TypedValue.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final interval = this.interval;
    final value = this.value;
    return {'interval': ?interval, 'value': ?value};
  }
}

/// A point's value columns and time interval.
///
/// Each point has one or more point values corresponding to the entries in
/// point_descriptors field in the TimeSeriesDescriptor associated with this
/// object.
class PointData {
  /// The time interval associated with the point.
  TimeInterval? timeInterval;

  /// The values that make up the point.
  core.List<TypedValue>? values;

  PointData({this.timeInterval, this.values});

  PointData.fromJson(core.Map json_)
    : this(
        timeInterval: json_.containsKey('timeInterval')
            ? TimeInterval.fromJson(
                json_['timeInterval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => TypedValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final timeInterval = this.timeInterval;
    final values = this.values;
    return {'timeInterval': ?timeInterval, 'values': ?values};
  }
}

/// The state of the policy at the time the alert was generated.
class PolicySnapshot {
  /// The display name of the alert policy.
  core.String? displayName;

  /// The name of the alert policy resource.
  ///
  /// In the form of
  /// "projects/PROJECT_ID_OR_NUMBER/alertPolicies/ALERT_POLICY_ID".
  core.String? name;

  /// The severity of the alert policy.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : No severity is specified. This is the default
  /// value.
  /// - "CRITICAL" : This is the highest severity level. Use this if the problem
  /// could cause significant damage or downtime.
  /// - "ERROR" : This is the medium severity level. Use this if the problem
  /// could cause minor damage or downtime.
  /// - "WARNING" : This is the lowest severity level. Use this if the problem
  /// is not causing any damage or downtime, but could potentially lead to a
  /// problem in the future.
  core.String? severity;

  /// The user labels for the alert policy.
  core.Map<core.String, core.String>? userLabels;

  PolicySnapshot({this.displayName, this.name, this.severity, this.userLabels});

  PolicySnapshot.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        severity: json_['severity'] as core.String?,
        userLabels:
            (json_['userLabels'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    final severity = this.severity;
    final userLabels = this.userLabels;
    return {
      'displayName': ?displayName,
      'name': ?name,
      'severity': ?severity,
      'userLabels': ?userLabels,
    };
  }
}

/// A condition type that allows alerting policies to be defined using
/// Prometheus Query Language (PromQL)
/// (https://prometheus.io/docs/prometheus/latest/querying/basics/).The
/// PrometheusQueryLanguageCondition message contains information from a
/// Prometheus alerting rule and its associated rule group.A Prometheus alerting
/// rule is described here
/// (https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/).
///
/// The semantics of a Prometheus alerting rule is described here
/// (https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/#rule).A
/// Prometheus rule group is described here
/// (https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/).
/// The semantics of a Prometheus rule group is described here
/// (https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/#rule_group).Because
/// Cloud Alerting has no representation of a Prometheus rule group resource, we
/// must embed the information of the parent rule group inside each of the
/// conditions that refer to it. We must also update the contents of all
/// Prometheus alerts in case the information of their rule group changes.The
/// PrometheusQueryLanguageCondition protocol buffer combines the information of
/// the corresponding rule group and alerting rule. The structure of the
/// PrometheusQueryLanguageCondition protocol buffer does NOT mimic the
/// structure of the Prometheus rule group and alerting rule YAML declarations.
/// The PrometheusQueryLanguageCondition protocol buffer may change in the
/// future to support future rule group and/or alerting rule features. There are
/// no new such features at the present time (2023-06-26).
class PrometheusQueryLanguageCondition {
  /// The alerting rule name of this alert in the corresponding Prometheus
  /// configuration file.Some external tools may require this field to be
  /// populated correctly in order to refer to the original Prometheus
  /// configuration file.
  ///
  /// The rule group name and the alert name are necessary to update the
  /// relevant AlertPolicies in case the definition of the rule group changes in
  /// the future.This field is optional. If this field is not empty, then it
  /// must be a valid Prometheus label name
  /// (https://prometheus.io/docs/concepts/data_model/#metric-names-and-labels).
  /// This field may not exceed 2048 Unicode characters in length.
  ///
  /// Optional.
  core.String? alertRule;

  /// Whether to disable metric existence validation for this condition.This
  /// allows alerting policies to be defined on metrics that do not yet exist,
  /// improving advanced customer workflows such as configuring alerting
  /// policies using Terraform.Users with the monitoring.alertPolicyViewer role
  /// are able to see the name of the non-existent metric in the alerting policy
  /// condition.
  ///
  /// Optional.
  core.bool? disableMetricValidation;

  /// Alerts are considered firing once their PromQL expression was evaluated to
  /// be "true" for this long.
  ///
  /// Alerts whose PromQL expression was not evaluated to be "true" for long
  /// enough are considered pending. Must be a non-negative duration or missing.
  /// This field is optional. Its default value is zero.
  ///
  /// Optional.
  core.String? duration;

  /// How often this rule should be evaluated.
  ///
  /// Must be a positive multiple of 30 seconds or missing. This field is
  /// optional. Its default value is 30 seconds. If this
  /// PrometheusQueryLanguageCondition was generated from a Prometheus alerting
  /// rule, then this value should be taken from the enclosing rule group.
  ///
  /// Optional.
  core.String? evaluationInterval;

  /// Labels to add to or overwrite in the PromQL query result.
  ///
  /// Label names must be valid
  /// (https://prometheus.io/docs/concepts/data_model/#metric-names-and-labels).
  /// Label values can be templatized by using variables
  /// (https://cloud.google.com/monitoring/alerts/doc-variables#doc-vars). The
  /// only available variable names are the names of the labels in the PromQL
  /// result, including "__name__" and "value". "labels" may be empty.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The PromQL expression to evaluate.
  ///
  /// Every evaluation cycle this expression is evaluated at the current time,
  /// and all resultant time series become pending/firing alerts. This field
  /// must not be empty.
  ///
  /// Required.
  core.String? query;

  /// The rule group name of this alert in the corresponding Prometheus
  /// configuration file.Some external tools may require this field to be
  /// populated correctly in order to refer to the original Prometheus
  /// configuration file.
  ///
  /// The rule group name and the alert name are necessary to update the
  /// relevant AlertPolicies in case the definition of the rule group changes in
  /// the future.This field is optional. If this field is not empty, then it
  /// must contain a valid UTF-8 string. This field may not exceed 2048 Unicode
  /// characters in length.
  ///
  /// Optional.
  core.String? ruleGroup;

  PrometheusQueryLanguageCondition({
    this.alertRule,
    this.disableMetricValidation,
    this.duration,
    this.evaluationInterval,
    this.labels,
    this.query,
    this.ruleGroup,
  });

  PrometheusQueryLanguageCondition.fromJson(core.Map json_)
    : this(
        alertRule: json_['alertRule'] as core.String?,
        disableMetricValidation: json_['disableMetricValidation'] as core.bool?,
        duration: json_['duration'] as core.String?,
        evaluationInterval: json_['evaluationInterval'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        query: json_['query'] as core.String?,
        ruleGroup: json_['ruleGroup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alertRule = this.alertRule;
    final disableMetricValidation = this.disableMetricValidation;
    final duration = this.duration;
    final evaluationInterval = this.evaluationInterval;
    final labels = this.labels;
    final query = this.query;
    final ruleGroup = this.ruleGroup;
    return {
      'alertRule': ?alertRule,
      'disableMetricValidation': ?disableMetricValidation,
      'duration': ?duration,
      'evaluationInterval': ?evaluationInterval,
      'labels': ?labels,
      'query': ?query,
      'ruleGroup': ?ruleGroup,
    };
  }
}

/// The QueryTimeSeries request.
///
/// For information about the status of Monitoring Query Language (MQL), see the
/// MQL deprecation notice
/// (https://cloud.google.com/stackdriver/docs/deprecations/mql).
class QueryTimeSeriesRequest {
  /// A positive number that is the maximum number of time_series_data to
  /// return.
  core.int? pageSize;

  /// If this field is not empty then it must contain the nextPageToken value
  /// returned by a previous call to this method.
  ///
  /// Using this field causes the method to return additional results from the
  /// previous method call.
  core.String? pageToken;

  /// The query in the Monitoring Query Language
  /// (https://cloud.google.com/monitoring/mql/reference) format.
  ///
  /// The default time zone is in UTC.
  ///
  /// Required.
  core.String? query;

  QueryTimeSeriesRequest({this.pageSize, this.pageToken, this.query});

  QueryTimeSeriesRequest.fromJson(core.Map json_)
    : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        query: json_['query'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final query = this.query;
    return {'pageSize': ?pageSize, 'pageToken': ?pageToken, 'query': ?query};
  }
}

/// The QueryTimeSeries response.
///
/// For information about the status of Monitoring Query Language (MQL), see the
/// MQL deprecation notice
/// (https://cloud.google.com/stackdriver/docs/deprecations/mql).
class QueryTimeSeriesResponse {
  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  /// Query execution errors that may have caused the time series data returned
  /// to be incomplete.
  ///
  /// The available data will be available in the response.
  core.List<Status>? partialErrors;

  /// The time series data.
  core.List<TimeSeriesData>? timeSeriesData;

  /// The descriptor for the time series data.
  TimeSeriesDescriptor? timeSeriesDescriptor;

  QueryTimeSeriesResponse({
    this.nextPageToken,
    this.partialErrors,
    this.timeSeriesData,
    this.timeSeriesDescriptor,
  });

  QueryTimeSeriesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        partialErrors: (json_['partialErrors'] as core.List?)
            ?.map(
              (value) =>
                  Status.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        timeSeriesData: (json_['timeSeriesData'] as core.List?)
            ?.map(
              (value) => TimeSeriesData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        timeSeriesDescriptor: json_.containsKey('timeSeriesDescriptor')
            ? TimeSeriesDescriptor.fromJson(
                json_['timeSeriesDescriptor']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final partialErrors = this.partialErrors;
    final timeSeriesData = this.timeSeriesData;
    final timeSeriesDescriptor = this.timeSeriesDescriptor;
    return {
      'nextPageToken': ?nextPageToken,
      'partialErrors': ?partialErrors,
      'timeSeriesData': ?timeSeriesData,
      'timeSeriesDescriptor': ?timeSeriesDescriptor,
    };
  }
}

/// The range of the population values.
class Range {
  /// The maximum of the population values.
  core.double? max;

  /// The minimum of the population values.
  core.double? min;

  Range({this.max, this.min});

  Range.fromJson(core.Map json_)
    : this(
        max: (json_['max'] as core.num?)?.toDouble(),
        min: (json_['min'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final max = this.max;
    final min = this.min;
    return {'max': ?max, 'min': ?min};
  }
}

/// Service Level Indicators for which atomic units of service are counted
/// directly.
class RequestBasedSli {
  /// distribution_cut is used when good_service is a count of values aggregated
  /// in a Distribution that fall into a good range.
  ///
  /// The total_service is the total count of all values aggregated in the
  /// Distribution.
  DistributionCut? distributionCut;

  /// good_total_ratio is used when the ratio of good_service to total_service
  /// is computed from two TimeSeries.
  TimeSeriesRatio? goodTotalRatio;

  RequestBasedSli({this.distributionCut, this.goodTotalRatio});

  RequestBasedSli.fromJson(core.Map json_)
    : this(
        distributionCut: json_.containsKey('distributionCut')
            ? DistributionCut.fromJson(
                json_['distributionCut'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        goodTotalRatio: json_.containsKey('goodTotalRatio')
            ? TimeSeriesRatio.fromJson(
                json_['goodTotalRatio'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final distributionCut = this.distributionCut;
    final goodTotalRatio = this.goodTotalRatio;
    return {
      'distributionCut': ?distributionCut,
      'goodTotalRatio': ?goodTotalRatio,
    };
  }
}

/// The resource submessage for group checks.
///
/// It can be used instead of a monitored resource, when multiple resources are
/// being monitored.
class ResourceGroup {
  /// The group of resources being monitored.
  ///
  /// Should be only the \[GROUP_ID\], and not the full-path
  /// projects/\[PROJECT_ID_OR_NUMBER\]/groups/\[GROUP_ID\].
  core.String? groupId;

  /// The resource type of the group members.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Default value (not valid).
  /// - "INSTANCE" : A group of instances from Google Cloud Platform (GCP) or
  /// Amazon Web Services (AWS).
  /// - "AWS_ELB_LOAD_BALANCER" : A group of Amazon ELB load balancers.
  core.String? resourceType;

  ResourceGroup({this.groupId, this.resourceType});

  ResourceGroup.fromJson(core.Map json_)
    : this(
        groupId: json_['groupId'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groupId = this.groupId;
    final resourceType = this.resourceType;
    return {'groupId': ?groupId, 'resourceType': ?resourceType};
  }
}

/// A status to accept.
///
/// Either a status code class like "2xx", or an integer status code like "200".
class ResponseStatusCode {
  /// A class of status codes to accept.
  /// Possible string values are:
  /// - "STATUS_CLASS_UNSPECIFIED" : Default value that matches no status codes.
  /// - "STATUS_CLASS_1XX" : The class of status codes between 100 and 199.
  /// - "STATUS_CLASS_2XX" : The class of status codes between 200 and 299.
  /// - "STATUS_CLASS_3XX" : The class of status codes between 300 and 399.
  /// - "STATUS_CLASS_4XX" : The class of status codes between 400 and 499.
  /// - "STATUS_CLASS_5XX" : The class of status codes between 500 and 599.
  /// - "STATUS_CLASS_ANY" : The class of all status codes.
  core.String? statusClass;

  /// A status code to accept.
  core.int? statusValue;

  ResponseStatusCode({this.statusClass, this.statusValue});

  ResponseStatusCode.fromJson(core.Map json_)
    : this(
        statusClass: json_['statusClass'] as core.String?,
        statusValue: json_['statusValue'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final statusClass = this.statusClass;
    final statusValue = this.statusValue;
    return {'statusClass': ?statusClass, 'statusValue': ?statusValue};
  }
}

/// A test that checks if the number of rows in the result set violates some
/// threshold.
class RowCountTest {
  /// The comparison to apply between the number of rows returned by the query
  /// and the threshold.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COMPARISON_UNSPECIFIED" : No ordering relationship is specified.
  /// - "COMPARISON_GT" : True if the left argument is greater than the right
  /// argument.
  /// - "COMPARISON_GE" : True if the left argument is greater than or equal to
  /// the right argument.
  /// - "COMPARISON_LT" : True if the left argument is less than the right
  /// argument.
  /// - "COMPARISON_LE" : True if the left argument is less than or equal to the
  /// right argument.
  /// - "COMPARISON_EQ" : True if the left argument is equal to the right
  /// argument.
  /// - "COMPARISON_NE" : True if the left argument is not equal to the right
  /// argument.
  core.String? comparison;

  /// The value against which to compare the row count.
  ///
  /// Required.
  core.String? threshold;

  RowCountTest({this.comparison, this.threshold});

  RowCountTest.fromJson(core.Map json_)
    : this(
        comparison: json_['comparison'] as core.String?,
        threshold: json_['threshold'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final comparison = this.comparison;
    final threshold = this.threshold;
    return {'comparison': ?comparison, 'threshold': ?threshold};
  }
}

/// The SendNotificationChannelVerificationCode request.
typedef SendNotificationChannelVerificationCodeRequest = $Empty;

/// A Service is a discrete, autonomous, and network-accessible unit, designed
/// to solve an individual concern (Wikipedia
/// (https://en.wikipedia.org/wiki/Service-orientation)).
///
/// In Cloud Monitoring, a Service acts as the root resource under which
/// operational aspects of the service are accessible.
class Service {
  /// Type used for App Engine services.
  AppEngine? appEngine;

  /// Message that contains the service type and service labels of this service
  /// if it is a basic service.
  ///
  /// Documentation and examples here
  /// (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  BasicService? basicService;

  /// Type used for Cloud Endpoints services.
  CloudEndpoints? cloudEndpoints;

  /// Type used for Cloud Run services.
  CloudRun? cloudRun;

  /// Type used for Istio services that live in a Kubernetes cluster.
  ClusterIstio? clusterIstio;

  /// Custom service type.
  Custom? custom;

  /// Name used for UI elements listing this Service.
  core.String? displayName;

  /// Type used for GKE Namespaces.
  GkeNamespace? gkeNamespace;

  /// Type used for GKE Services (the Kubernetes concept of a service).
  GkeService? gkeService;

  /// Type used for GKE Workloads.
  GkeWorkload? gkeWorkload;

  /// Type used for canonical services scoped to an Istio mesh.
  ///
  /// Metrics for Istio are documented here
  /// (https://istio.io/latest/docs/reference/config/metrics/)
  IstioCanonicalService? istioCanonicalService;

  /// Type used for Istio services scoped to an Istio mesh.
  MeshIstio? meshIstio;

  /// Identifier.
  ///
  /// Resource name for this Service. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]
  core.String? name;

  /// Configuration for how to query telemetry on a Service.
  Telemetry? telemetry;

  /// Labels which have been used to annotate the service.
  ///
  /// Label keys must start with a letter. Label keys and values may contain
  /// lowercase letters, numbers, underscores, and dashes. Label keys and values
  /// have a maximum length of 63 characters, and must be less than 128 bytes in
  /// size. Up to 64 label entries may be stored. For labels which do not have a
  /// semantic value, the empty string may be supplied for the label value.
  core.Map<core.String, core.String>? userLabels;

  Service({
    this.appEngine,
    this.basicService,
    this.cloudEndpoints,
    this.cloudRun,
    this.clusterIstio,
    this.custom,
    this.displayName,
    this.gkeNamespace,
    this.gkeService,
    this.gkeWorkload,
    this.istioCanonicalService,
    this.meshIstio,
    this.name,
    this.telemetry,
    this.userLabels,
  });

  Service.fromJson(core.Map json_)
    : this(
        appEngine: json_.containsKey('appEngine')
            ? AppEngine.fromJson(
                json_['appEngine'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        basicService: json_.containsKey('basicService')
            ? BasicService.fromJson(
                json_['basicService'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudEndpoints: json_.containsKey('cloudEndpoints')
            ? CloudEndpoints.fromJson(
                json_['cloudEndpoints'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudRun: json_.containsKey('cloudRun')
            ? CloudRun.fromJson(
                json_['cloudRun'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        clusterIstio: json_.containsKey('clusterIstio')
            ? ClusterIstio.fromJson(
                json_['clusterIstio'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        custom: json_.containsKey('custom')
            ? Custom.fromJson(
                json_['custom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        gkeNamespace: json_.containsKey('gkeNamespace')
            ? GkeNamespace.fromJson(
                json_['gkeNamespace'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        gkeService: json_.containsKey('gkeService')
            ? GkeService.fromJson(
                json_['gkeService'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        gkeWorkload: json_.containsKey('gkeWorkload')
            ? GkeWorkload.fromJson(
                json_['gkeWorkload'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        istioCanonicalService: json_.containsKey('istioCanonicalService')
            ? IstioCanonicalService.fromJson(
                json_['istioCanonicalService']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        meshIstio: json_.containsKey('meshIstio')
            ? MeshIstio.fromJson(
                json_['meshIstio'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        telemetry: json_.containsKey('telemetry')
            ? Telemetry.fromJson(
                json_['telemetry'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userLabels:
            (json_['userLabels'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appEngine = this.appEngine;
    final basicService = this.basicService;
    final cloudEndpoints = this.cloudEndpoints;
    final cloudRun = this.cloudRun;
    final clusterIstio = this.clusterIstio;
    final custom = this.custom;
    final displayName = this.displayName;
    final gkeNamespace = this.gkeNamespace;
    final gkeService = this.gkeService;
    final gkeWorkload = this.gkeWorkload;
    final istioCanonicalService = this.istioCanonicalService;
    final meshIstio = this.meshIstio;
    final name = this.name;
    final telemetry = this.telemetry;
    final userLabels = this.userLabels;
    return {
      'appEngine': ?appEngine,
      'basicService': ?basicService,
      'cloudEndpoints': ?cloudEndpoints,
      'cloudRun': ?cloudRun,
      'clusterIstio': ?clusterIstio,
      'custom': ?custom,
      'displayName': ?displayName,
      'gkeNamespace': ?gkeNamespace,
      'gkeService': ?gkeService,
      'gkeWorkload': ?gkeWorkload,
      'istioCanonicalService': ?istioCanonicalService,
      'meshIstio': ?meshIstio,
      'name': ?name,
      'telemetry': ?telemetry,
      'userLabels': ?userLabels,
    };
  }
}

/// Contains information needed for generating either an OpenID Connect token
/// (https://developers.google.com/identity/protocols/OpenIDConnect) or OAuth
/// token (https://developers.google.com/identity/protocols/oauth2).
///
/// The token will be generated for the Monitoring service agent service
/// account.
class ServiceAgentAuthentication {
  /// Type of authentication.
  /// Possible string values are:
  /// - "SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED" : Default value, will
  /// result in OIDC Authentication.
  /// - "OIDC_TOKEN" : OIDC Authentication
  core.String? type;

  ServiceAgentAuthentication({this.type});

  ServiceAgentAuthentication.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

/// A Service-Level Indicator (SLI) describes the "performance" of a service.
///
/// For some services, the SLI is well-defined. In such cases, the SLI can be
/// described easily by referencing the well-known SLI and providing the needed
/// parameters. Alternatively, a "custom" SLI can be defined with a query to the
/// underlying metric store. An SLI is defined to be good_service /
/// total_service over any queried time interval. The value of performance
/// always falls into the range 0 \<= performance \<= 1. A custom SLI describes
/// how to compute this ratio, whether this is by dividing values from a pair of
/// time series, cutting a Distribution into good and bad counts, or counting
/// time windows in which the service complies with a criterion. For separation
/// of concerns, a single Service-Level Indicator measures performance for only
/// one aspect of service quality, such as fraction of successful queries or
/// fast-enough queries.
class ServiceLevelIndicator {
  /// Basic SLI on a well-known service type.
  BasicSli? basicSli;

  /// Request-based SLIs
  RequestBasedSli? requestBased;

  /// Windows-based SLIs
  WindowsBasedSli? windowsBased;

  ServiceLevelIndicator({this.basicSli, this.requestBased, this.windowsBased});

  ServiceLevelIndicator.fromJson(core.Map json_)
    : this(
        basicSli: json_.containsKey('basicSli')
            ? BasicSli.fromJson(
                json_['basicSli'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestBased: json_.containsKey('requestBased')
            ? RequestBasedSli.fromJson(
                json_['requestBased'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        windowsBased: json_.containsKey('windowsBased')
            ? WindowsBasedSli.fromJson(
                json_['windowsBased'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basicSli = this.basicSli;
    final requestBased = this.requestBased;
    final windowsBased = this.windowsBased;
    return {
      'basicSli': ?basicSli,
      'requestBased': ?requestBased,
      'windowsBased': ?windowsBased,
    };
  }
}

/// A Service-Level Objective (SLO) describes a level of desired good service.
///
/// It consists of a service-level indicator (SLI), a performance goal, and a
/// period over which the objective is to be evaluated against that goal. The
/// SLO can use SLIs defined in a number of different manners. Typical SLOs
/// might include "99% of requests in each rolling week have latency below 200
/// milliseconds" or "99.5% of requests in each calendar month return
/// successfully."
class ServiceLevelObjective {
  /// A calendar period, semantically "since the start of the current ".
  ///
  /// At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  /// Possible string values are:
  /// - "CALENDAR_PERIOD_UNSPECIFIED" : Undefined period, raises an error.
  /// - "DAY" : A day.
  /// - "WEEK" : A week. Weeks begin on Monday, following ISO 8601
  /// (https://en.wikipedia.org/wiki/ISO_week_date).
  /// - "FORTNIGHT" : A fortnight. The first calendar fortnight of the year
  /// begins at the start of week 1 according to ISO 8601
  /// (https://en.wikipedia.org/wiki/ISO_week_date).
  /// - "MONTH" : A month.
  /// - "QUARTER" : A quarter. Quarters start on dates 1-Jan, 1-Apr, 1-Jul, and
  /// 1-Oct of each year.
  /// - "HALF" : A half-year. Half-years start on dates 1-Jan and 1-Jul.
  /// - "YEAR" : A year.
  core.String? calendarPeriod;

  /// Name used for UI elements listing this SLO.
  core.String? displayName;

  /// The fraction of service that must be good in order for this objective to
  /// be met.
  ///
  /// 0 \< goal \<= 0.9999.
  core.double? goal;

  /// Identifier.
  ///
  /// Resource name for this ServiceLevelObjective. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/services/\[SERVICE_ID\]/serviceLevelObjectives/\[SLO_NAME\]
  core.String? name;

  /// A rolling time period, semantically "in the past ".
  ///
  /// Must be an integer multiple of 1 day no larger than 30 days.
  core.String? rollingPeriod;

  /// The definition of good service, used to measure and calculate the quality
  /// of the Service's performance with respect to a single aspect of service
  /// quality.
  ServiceLevelIndicator? serviceLevelIndicator;

  /// Labels which have been used to annotate the service-level objective.
  ///
  /// Label keys must start with a letter. Label keys and values may contain
  /// lowercase letters, numbers, underscores, and dashes. Label keys and values
  /// have a maximum length of 63 characters, and must be less than 128 bytes in
  /// size. Up to 64 label entries may be stored. For labels which do not have a
  /// semantic value, the empty string may be supplied for the label value.
  core.Map<core.String, core.String>? userLabels;

  ServiceLevelObjective({
    this.calendarPeriod,
    this.displayName,
    this.goal,
    this.name,
    this.rollingPeriod,
    this.serviceLevelIndicator,
    this.userLabels,
  });

  ServiceLevelObjective.fromJson(core.Map json_)
    : this(
        calendarPeriod: json_['calendarPeriod'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        goal: (json_['goal'] as core.num?)?.toDouble(),
        name: json_['name'] as core.String?,
        rollingPeriod: json_['rollingPeriod'] as core.String?,
        serviceLevelIndicator: json_.containsKey('serviceLevelIndicator')
            ? ServiceLevelIndicator.fromJson(
                json_['serviceLevelIndicator']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userLabels:
            (json_['userLabels'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final calendarPeriod = this.calendarPeriod;
    final displayName = this.displayName;
    final goal = this.goal;
    final name = this.name;
    final rollingPeriod = this.rollingPeriod;
    final serviceLevelIndicator = this.serviceLevelIndicator;
    final userLabels = this.userLabels;
    return {
      'calendarPeriod': ?calendarPeriod,
      'displayName': ?displayName,
      'goal': ?goal,
      'name': ?name,
      'rollingPeriod': ?rollingPeriod,
      'serviceLevelIndicator': ?serviceLevelIndicator,
      'userLabels': ?userLabels,
    };
  }
}

/// A Snooze will prevent any alerts from being opened, and close any that are
/// already open.
///
/// The Snooze will work on alerts that match the criteria defined in the
/// Snooze. The Snooze will be active from interval.start_time through
/// interval.end_time.
class Snooze {
  /// This defines the criteria for applying the Snooze.
  ///
  /// See Criteria for more information.
  ///
  /// Required.
  Criteria? criteria;

  /// A display name for the Snooze.
  ///
  /// This can be, at most, 512 unicode characters.
  ///
  /// Required.
  core.String? displayName;

  /// The Snooze will be active from interval.start_time through
  /// interval.end_time.
  ///
  /// interval.start_time cannot be in the past. There is a 15 second clock skew
  /// to account for the time it takes for a request to reach the API from the
  /// UI.
  ///
  /// Required.
  TimeInterval? interval;

  /// Identifier.
  ///
  /// The name of the Snooze. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/snoozes/\[SNOOZE_ID\] The ID of the
  /// Snooze will be generated by the system.
  ///
  /// Required.
  core.String? name;

  Snooze({this.criteria, this.displayName, this.interval, this.name});

  Snooze.fromJson(core.Map json_)
    : this(
        criteria: json_.containsKey('criteria')
            ? Criteria.fromJson(
                json_['criteria'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        interval: json_.containsKey('interval')
            ? TimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final criteria = this.criteria;
    final displayName = this.displayName;
    final interval = this.interval;
    final name = this.name;
    return {
      'criteria': ?criteria,
      'displayName': ?displayName,
      'interval': ?interval,
      'name': ?name,
    };
  }
}

/// A condition that allows alerting policies to be defined using GoogleSQL.
///
/// SQL conditions examine a sliding window of logs using GoogleSQL. Alert
/// policies with SQL conditions may incur additional billing.
class SqlCondition {
  /// Test the boolean value in the indicated column.
  BooleanTest? booleanTest;

  /// Schedule the query to execute every so many days.
  Daily? daily;

  /// Schedule the query to execute every so many hours.
  Hourly? hourly;

  /// Schedule the query to execute every so many minutes.
  Minutes? minutes;

  /// The Log Analytics SQL query to run, as a string.
  ///
  /// The query must conform to the required shape. Specifically, the query must
  /// not try to filter the input by time. A filter will automatically be
  /// applied to filter the input so that the query receives all rows received
  /// since the last time the query was run.For example, the following query
  /// extracts all log entries containing an HTTP request: SELECT timestamp,
  /// log_name, severity, http_request, resource, labels FROM
  /// my-project.global._Default._AllLogs WHERE http_request IS NOT NULL
  ///
  /// Required.
  core.String? query;

  /// Test the row count against a threshold.
  RowCountTest? rowCountTest;

  SqlCondition({
    this.booleanTest,
    this.daily,
    this.hourly,
    this.minutes,
    this.query,
    this.rowCountTest,
  });

  SqlCondition.fromJson(core.Map json_)
    : this(
        booleanTest: json_.containsKey('booleanTest')
            ? BooleanTest.fromJson(
                json_['booleanTest'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        daily: json_.containsKey('daily')
            ? Daily.fromJson(
                json_['daily'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        hourly: json_.containsKey('hourly')
            ? Hourly.fromJson(
                json_['hourly'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        minutes: json_.containsKey('minutes')
            ? Minutes.fromJson(
                json_['minutes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        query: json_['query'] as core.String?,
        rowCountTest: json_.containsKey('rowCountTest')
            ? RowCountTest.fromJson(
                json_['rowCountTest'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final booleanTest = this.booleanTest;
    final daily = this.daily;
    final hourly = this.hourly;
    final minutes = this.minutes;
    final query = this.query;
    final rowCountTest = this.rowCountTest;
    return {
      'booleanTest': ?booleanTest,
      'daily': ?daily,
      'hourly': ?hourly,
      'minutes': ?minutes,
      'query': ?query,
      'rowCountTest': ?rowCountTest,
    };
  }
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Describes a Synthetic Monitor to be invoked by Uptime.
class SyntheticMonitorTarget {
  /// Target a Synthetic Monitor GCFv2 instance.
  CloudFunctionV2Target? cloudFunctionV2;

  SyntheticMonitorTarget({this.cloudFunctionV2});

  SyntheticMonitorTarget.fromJson(core.Map json_)
    : this(
        cloudFunctionV2: json_.containsKey('cloudFunctionV2')
            ? CloudFunctionV2Target.fromJson(
                json_['cloudFunctionV2'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudFunctionV2 = this.cloudFunctionV2;
    return {'cloudFunctionV2': ?cloudFunctionV2};
  }
}

/// Information required for a TCP Uptime check request.
class TcpCheck {
  /// Contains information needed to add pings to a TCP check.
  PingConfig? pingConfig;

  /// The TCP port on the server against which to run the check.
  ///
  /// Will be combined with host (specified within the monitored_resource) to
  /// construct the full URL. Required.
  core.int? port;

  TcpCheck({this.pingConfig, this.port});

  TcpCheck.fromJson(core.Map json_)
    : this(
        pingConfig: json_.containsKey('pingConfig')
            ? PingConfig.fromJson(
                json_['pingConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        port: json_['port'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pingConfig = this.pingConfig;
    final port = this.port;
    return {'pingConfig': ?pingConfig, 'port': ?port};
  }
}

/// Configuration for how to query telemetry on a Service.
class Telemetry {
  /// The full name of the resource that defines this service.
  ///
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  core.String? resourceName;

  Telemetry({this.resourceName});

  Telemetry.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Describes a time interval: Reads: A half-open time interval.
///
/// It includes the end time but excludes the start time: (startTime, endTime\].
/// The start time must be specified, must be earlier than the end time, and
/// should be no older than the data retention period for the metric. Writes: A
/// closed time interval. It extends from the start time to the end time, and
/// includes both: \[startTime, endTime\]. Valid time intervals depend on the
/// MetricKind
/// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricKind)
/// of the metric value. The end time must not be earlier than the start time,
/// and the end time must not be more than 25 hours in the past or more than
/// five minutes in the future. For GAUGE metrics, the startTime value is
/// technically optional; if no value is specified, the start time defaults to
/// the value of the end time, and the interval represents a single point in
/// time. If both start and end times are specified, they must be identical.
/// Such an interval is valid only for GAUGE metrics, which are point-in-time
/// measurements. The end time of a new interval must be at least a millisecond
/// after the end time of the previous interval. For DELTA metrics, the start
/// time and end time must specify a non-zero interval, with subsequent points
/// specifying contiguous and non-overlapping intervals. For DELTA metrics, the
/// start time of the next interval must be at least a millisecond after the end
/// time of the previous interval. For CUMULATIVE metrics, the start time and
/// end time must specify a non-zero interval, with subsequent points specifying
/// the same start time and increasing end times, until an event resets the
/// cumulative value to zero and sets a new start time for the following points.
/// The new start time must be at least a millisecond after the end time of the
/// previous interval. The start time of a new interval must be at least a
/// millisecond after the end time of the previous interval because intervals
/// are closed. If the start time of a new interval is the same as the end time
/// of the previous interval, then data written at the new start time could
/// overwrite data written at the previous end time.
class TimeInterval {
  /// The end of the time interval.
  ///
  /// Required.
  core.String? endTime;

  /// The beginning of the time interval.
  ///
  /// The default value for the start time is the end time. The start time must
  /// not be later than the end time.
  ///
  /// Optional.
  core.String? startTime;

  TimeInterval({this.endTime, this.startTime});

  TimeInterval.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final startTime = this.startTime;
    return {'endTime': ?endTime, 'startTime': ?startTime};
  }
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and google.protobuf.Timestamp.
typedef TimeOfDay = $TimeOfDay;

/// A collection of data points that describes the time-varying values of a
/// metric.
///
/// A time series is identified by a combination of a fully-specified monitored
/// resource and a fully-specified metric. This type is used for both listing
/// and creating time series.
class TimeSeries {
  /// Input only.
  ///
  /// A detailed description of the time series that will be associated with the
  /// google.api.MetricDescriptor for the metric. Once set, this field cannot be
  /// changed through CreateTimeSeries.
  core.String? description;

  /// The associated monitored resource metadata.
  ///
  /// When reading a time series, this field will include metadata labels that
  /// are explicitly named in the reduction. When creating a time series, this
  /// field is ignored.
  ///
  /// Output only.
  MonitoredResourceMetadata? metadata;

  /// The associated metric.
  ///
  /// A fully-specified metric used to identify the time series.
  Metric? metric;

  /// The metric kind of the time series.
  ///
  /// When listing time series, this metric kind might be different from the
  /// metric kind of the associated metric if this time series is an alignment
  /// or reduction of other time series.When creating a time series, this field
  /// is optional. If present, it must be the same as the metric kind of the
  /// associated metric. If the associated metric's descriptor must be
  /// auto-created, then this field specifies the metric kind of the new
  /// descriptor and must be either GAUGE (the default) or CUMULATIVE.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval. Cumulative
  /// measurements in a time series should have the same start time and
  /// increasing end times, until an event resets the cumulative value to zero
  /// and sets a new start time for the following points.
  core.String? metricKind;

  /// The data points of this time series.
  ///
  /// When listing time series, points are returned in reverse time order.When
  /// creating a time series, this field must contain exactly one point and the
  /// point's type must be the same as the value type of the associated metric.
  /// If the associated metric's descriptor must be auto-created, then the value
  /// type of the descriptor is determined by the point's type, which must be
  /// BOOL, INT64, DOUBLE, or DISTRIBUTION.
  core.List<Point>? points;

  /// The associated monitored resource.
  ///
  /// Custom metrics can use only certain monitored resource types in their time
  /// series data. For more information, see Monitored resources for custom
  /// metrics
  /// (https://cloud.google.com/monitoring/custom-metrics/creating-metrics#custom-metric-resources).
  MonitoredResource? resource;

  /// The units in which the metric value is reported.
  ///
  /// It is only applicable if the value_type is INT64, DOUBLE, or DISTRIBUTION.
  /// The unit defines the representation of the stored metric values. This
  /// field can only be changed through CreateTimeSeries when it is empty.
  core.String? unit;

  /// The value type of the time series.
  ///
  /// When listing time series, this value type might be different from the
  /// value type of the associated metric if this time series is an alignment or
  /// reduction of other time series.When creating a time series, this field is
  /// optional. If present, it must be the same as the type of the data in the
  /// points field.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean. This value type can be used only if the
  /// metric kind is GAUGE.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string. This value type can be used only
  /// if the metric kind is GAUGE.
  /// - "DISTRIBUTION" : The value is a Distribution.
  /// - "MONEY" : The value is money.
  core.String? valueType;

  TimeSeries({
    this.description,
    this.metadata,
    this.metric,
    this.metricKind,
    this.points,
    this.resource,
    this.unit,
    this.valueType,
  });

  TimeSeries.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? MonitoredResourceMetadata.fromJson(
                json_['metadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metric: json_.containsKey('metric')
            ? Metric.fromJson(
                json_['metric'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metricKind: json_['metricKind'] as core.String?,
        points: (json_['points'] as core.List?)
            ?.map(
              (value) =>
                  Point.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        resource: json_.containsKey('resource')
            ? MonitoredResource.fromJson(
                json_['resource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        unit: json_['unit'] as core.String?,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final metadata = this.metadata;
    final metric = this.metric;
    final metricKind = this.metricKind;
    final points = this.points;
    final resource = this.resource;
    final unit = this.unit;
    final valueType = this.valueType;
    return {
      'description': ?description,
      'metadata': ?metadata,
      'metric': ?metric,
      'metricKind': ?metricKind,
      'points': ?points,
      'resource': ?resource,
      'unit': ?unit,
      'valueType': ?valueType,
    };
  }
}

/// Represents the values of a time series associated with a
/// TimeSeriesDescriptor.
class TimeSeriesData {
  /// The values of the labels in the time series identifier, given in the same
  /// order as the label_descriptors field of the TimeSeriesDescriptor
  /// associated with this object.
  ///
  /// Each value must have a value of the type given in the corresponding entry
  /// of label_descriptors.
  core.List<LabelValue>? labelValues;

  /// The points in the time series.
  core.List<PointData>? pointData;

  TimeSeriesData({this.labelValues, this.pointData});

  TimeSeriesData.fromJson(core.Map json_)
    : this(
        labelValues: (json_['labelValues'] as core.List?)
            ?.map(
              (value) => LabelValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        pointData: (json_['pointData'] as core.List?)
            ?.map(
              (value) => PointData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labelValues = this.labelValues;
    final pointData = this.pointData;
    return {'labelValues': ?labelValues, 'pointData': ?pointData};
  }
}

/// A descriptor for the labels and points in a time series.
class TimeSeriesDescriptor {
  /// Descriptors for the labels.
  core.List<LabelDescriptor>? labelDescriptors;

  /// Descriptors for the point data value columns.
  core.List<ValueDescriptor>? pointDescriptors;

  TimeSeriesDescriptor({this.labelDescriptors, this.pointDescriptors});

  TimeSeriesDescriptor.fromJson(core.Map json_)
    : this(
        labelDescriptors: (json_['labelDescriptors'] as core.List?)
            ?.map(
              (value) => LabelDescriptor.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        pointDescriptors: (json_['pointDescriptors'] as core.List?)
            ?.map(
              (value) => ValueDescriptor.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labelDescriptors = this.labelDescriptors;
    final pointDescriptors = this.pointDescriptors;
    return {
      'labelDescriptors': ?labelDescriptors,
      'pointDescriptors': ?pointDescriptors,
    };
  }
}

/// A TimeSeriesRatio specifies two TimeSeries to use for computing the
/// good_service / total_service ratio.
///
/// The specified TimeSeries must have ValueType = DOUBLE or ValueType = INT64
/// and must have MetricKind = DELTA or MetricKind = CUMULATIVE. The
/// TimeSeriesRatio must specify exactly two of good, bad, and total, and the
/// relationship good_service + bad_service = total_service will be assumed.
class TimeSeriesRatio {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying a TimeSeries quantifying bad service, either demanded service
  /// that was not provided or demanded service that was of inadequate quality.
  ///
  /// Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind
  /// = DELTA or MetricKind = CUMULATIVE.
  core.String? badServiceFilter;

  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying a TimeSeries quantifying good service provided.
  ///
  /// Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind
  /// = DELTA or MetricKind = CUMULATIVE.
  core.String? goodServiceFilter;

  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying a TimeSeries quantifying total demanded service.
  ///
  /// Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind
  /// = DELTA or MetricKind = CUMULATIVE.
  core.String? totalServiceFilter;

  TimeSeriesRatio({
    this.badServiceFilter,
    this.goodServiceFilter,
    this.totalServiceFilter,
  });

  TimeSeriesRatio.fromJson(core.Map json_)
    : this(
        badServiceFilter: json_['badServiceFilter'] as core.String?,
        goodServiceFilter: json_['goodServiceFilter'] as core.String?,
        totalServiceFilter: json_['totalServiceFilter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final badServiceFilter = this.badServiceFilter;
    final goodServiceFilter = this.goodServiceFilter;
    final totalServiceFilter = this.totalServiceFilter;
    return {
      'badServiceFilter': ?badServiceFilter,
      'goodServiceFilter': ?goodServiceFilter,
      'totalServiceFilter': ?totalServiceFilter,
    };
  }
}

/// Specifies how many time series must fail a predicate to trigger a condition.
///
/// If not specified, then a {count: 1} trigger is used.
class Trigger {
  /// The absolute number of time series that must fail the predicate for the
  /// condition to be triggered.
  core.int? count;

  /// The percentage of time series that must fail the predicate for the
  /// condition to be triggered.
  core.double? percent;

  Trigger({this.count, this.percent});

  Trigger.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.int?,
        percent: (json_['percent'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final percent = this.percent;
    return {'count': ?count, 'percent': ?percent};
  }
}

/// A single strongly-typed value.
class TypedValue {
  /// A Boolean value: true or false.
  core.bool? boolValue;

  /// A distribution value.
  Distribution? distributionValue;

  /// A 64-bit double-precision floating-point number.
  ///
  /// Its magnitude is approximately ±10±300 and it has 16 significant digits of
  /// precision.
  core.double? doubleValue;

  /// A 64-bit integer.
  ///
  /// Its range is approximately ±9.2x1018.
  core.String? int64Value;

  /// A variable-length string value.
  core.String? stringValue;

  TypedValue({
    this.boolValue,
    this.distributionValue,
    this.doubleValue,
    this.int64Value,
    this.stringValue,
  });

  TypedValue.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        distributionValue: json_.containsKey('distributionValue')
            ? Distribution.fromJson(
                json_['distributionValue']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        int64Value: json_['int64Value'] as core.String?,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final distributionValue = this.distributionValue;
    final doubleValue = this.doubleValue;
    final int64Value = this.int64Value;
    final stringValue = this.stringValue;
    return {
      'boolValue': ?boolValue,
      'distributionValue': ?distributionValue,
      'doubleValue': ?doubleValue,
      'int64Value': ?int64Value,
      'stringValue': ?stringValue,
    };
  }
}

/// This message configures which resources and services to monitor for
/// availability.
class UptimeCheckConfig {
  /// The type of checkers to use to execute the Uptime check.
  /// Possible string values are:
  /// - "CHECKER_TYPE_UNSPECIFIED" : The default checker type. Currently
  /// converted to STATIC_IP_CHECKERS on creation, the default conversion
  /// behavior may change in the future.
  /// - "STATIC_IP_CHECKERS" : STATIC_IP_CHECKERS are used for uptime checks
  /// that perform egress across the public internet. STATIC_IP_CHECKERS use the
  /// static IP addresses returned by ListUptimeCheckIps.
  /// - "VPC_CHECKERS" : VPC_CHECKERS are used for uptime checks that perform
  /// egress using Service Directory and private network access. When using
  /// VPC_CHECKERS, the monitored resource type must be
  /// servicedirectory_service.
  core.String? checkerType;

  /// The content that is expected to appear in the data returned by the target
  /// server against which the check is run.
  ///
  /// Currently, only the first entry in the content_matchers list is supported,
  /// and additional entries will be ignored. This field is optional and should
  /// only be specified if a content match is required as part of the/ Uptime
  /// check.
  core.List<ContentMatcher>? contentMatchers;

  /// Whether the check is disabled or not.
  core.bool? disabled;

  /// A human-friendly name for the Uptime check configuration.
  ///
  /// The display name should be unique within a Cloud Monitoring Workspace in
  /// order to make it easier to identify; however, uniqueness is not enforced.
  /// Required.
  core.String? displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  HttpCheck? httpCheck;

  /// The internal checkers that this check will egress from.
  ///
  /// If is_internal is true and this list is empty, the check will egress from
  /// all the InternalCheckers configured for the project that owns this
  /// UptimeCheckConfig.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<InternalChecker>? internalCheckers;

  /// If this is true, then checks are made only from the 'internal_checkers'.
  ///
  /// If it is false, then checks are made only from the 'selected_regions'. It
  /// is an error to provide 'selected_regions' when is_internal is true, or to
  /// provide 'internal_checkers' when is_internal is false.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? isInternal;

  /// To specify whether to log the results of failed probes to Cloud Logging.
  core.bool? logCheckFailures;

  /// The monitored resource (https://cloud.google.com/monitoring/api/resources)
  /// associated with the configuration.
  ///
  /// The following monitored resource types are valid for this field:
  /// uptime_url, gce_instance, gae_app, aws_ec2_instance, aws_elb_load_balancer
  /// k8s_service servicedirectory_service cloud_run_revision
  MonitoredResource? monitoredResource;

  /// Identifier.
  ///
  /// A unique resource name for this Uptime check configuration. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/uptimeCheckConfigs/\[UPTIME_CHECK_ID\]
  /// \[PROJECT_ID_OR_NUMBER\] is the Workspace host project associated with the
  /// Uptime check.This field should be omitted when creating the Uptime check
  /// configuration; on create, the resource name is assigned by the server and
  /// included in the response.
  core.String? name;

  /// How often, in seconds, the Uptime check is performed.
  ///
  /// Currently, the only supported values are 60s (1 minute), 300s (5 minutes),
  /// 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.
  core.String? period;

  /// The group resource associated with the configuration.
  ResourceGroup? resourceGroup;

  /// The list of regions from which the check will be run.
  ///
  /// Some regions contain one location, and others contain more than one. If
  /// this field is specified, enough regions must be provided to include a
  /// minimum of 3 locations. Not specifying this field will result in Uptime
  /// checks running from all available regions.
  core.List<core.String>? selectedRegions;

  /// Specifies a Synthetic Monitor to invoke.
  SyntheticMonitorTarget? syntheticMonitor;

  /// Contains information needed to make a TCP check.
  TcpCheck? tcpCheck;

  /// The maximum amount of time to wait for the request to complete (must be
  /// between 1 and 60 seconds).
  ///
  /// Required.
  core.String? timeout;

  /// User-supplied key/value data to be used for organizing and identifying the
  /// UptimeCheckConfig objects.The field can contain up to 64 entries.
  ///
  /// Each key and value is limited to 63 Unicode characters or 128 bytes,
  /// whichever is smaller. Labels and values can contain only lowercase
  /// letters, numerals, underscores, and dashes. Keys must begin with a letter.
  core.Map<core.String, core.String>? userLabels;

  UptimeCheckConfig({
    this.checkerType,
    this.contentMatchers,
    this.disabled,
    this.displayName,
    this.httpCheck,
    this.internalCheckers,
    this.isInternal,
    this.logCheckFailures,
    this.monitoredResource,
    this.name,
    this.period,
    this.resourceGroup,
    this.selectedRegions,
    this.syntheticMonitor,
    this.tcpCheck,
    this.timeout,
    this.userLabels,
  });

  UptimeCheckConfig.fromJson(core.Map json_)
    : this(
        checkerType: json_['checkerType'] as core.String?,
        contentMatchers: (json_['contentMatchers'] as core.List?)
            ?.map(
              (value) => ContentMatcher.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        disabled: json_['disabled'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        httpCheck: json_.containsKey('httpCheck')
            ? HttpCheck.fromJson(
                json_['httpCheck'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        internalCheckers: (json_['internalCheckers'] as core.List?)
            ?.map(
              (value) => InternalChecker.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        isInternal: json_['isInternal'] as core.bool?,
        logCheckFailures: json_['logCheckFailures'] as core.bool?,
        monitoredResource: json_.containsKey('monitoredResource')
            ? MonitoredResource.fromJson(
                json_['monitoredResource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        period: json_['period'] as core.String?,
        resourceGroup: json_.containsKey('resourceGroup')
            ? ResourceGroup.fromJson(
                json_['resourceGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        selectedRegions: (json_['selectedRegions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        syntheticMonitor: json_.containsKey('syntheticMonitor')
            ? SyntheticMonitorTarget.fromJson(
                json_['syntheticMonitor']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tcpCheck: json_.containsKey('tcpCheck')
            ? TcpCheck.fromJson(
                json_['tcpCheck'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeout: json_['timeout'] as core.String?,
        userLabels:
            (json_['userLabels'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final checkerType = this.checkerType;
    final contentMatchers = this.contentMatchers;
    final disabled = this.disabled;
    final displayName = this.displayName;
    final httpCheck = this.httpCheck;
    final internalCheckers = this.internalCheckers;
    final isInternal = this.isInternal;
    final logCheckFailures = this.logCheckFailures;
    final monitoredResource = this.monitoredResource;
    final name = this.name;
    final period = this.period;
    final resourceGroup = this.resourceGroup;
    final selectedRegions = this.selectedRegions;
    final syntheticMonitor = this.syntheticMonitor;
    final tcpCheck = this.tcpCheck;
    final timeout = this.timeout;
    final userLabels = this.userLabels;
    return {
      'checkerType': ?checkerType,
      'contentMatchers': ?contentMatchers,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'httpCheck': ?httpCheck,
      'internalCheckers': ?internalCheckers,
      'isInternal': ?isInternal,
      'logCheckFailures': ?logCheckFailures,
      'monitoredResource': ?monitoredResource,
      'name': ?name,
      'period': ?period,
      'resourceGroup': ?resourceGroup,
      'selectedRegions': ?selectedRegions,
      'syntheticMonitor': ?syntheticMonitor,
      'tcpCheck': ?tcpCheck,
      'timeout': ?timeout,
      'userLabels': ?userLabels,
    };
  }
}

/// Contains the region, location, and list of IP addresses where checkers in
/// the location run from.
class UptimeCheckIp {
  /// The IP address from which the Uptime check originates.
  ///
  /// This is a fully specified IP address (not an IP address range). Most IP
  /// addresses, as of this publication, are in IPv4 format; however, one should
  /// not rely on the IP addresses being in IPv4 format indefinitely, and should
  /// support interpreting this field in either IPv4 or IPv6 format.
  core.String? ipAddress;

  /// A more specific location within the region that typically encodes a
  /// particular city/town/metro (and its containing state/province or country)
  /// within the broader umbrella region category.
  core.String? location;

  /// A broad region category in which the IP address is located.
  /// Possible string values are:
  /// - "REGION_UNSPECIFIED" : Default value if no region is specified. Will
  /// result in Uptime checks running from all regions.
  /// - "USA" : Allows checks to run from locations within the United States of
  /// America.
  /// - "EUROPE" : Allows checks to run from locations within the continent of
  /// Europe.
  /// - "SOUTH_AMERICA" : Allows checks to run from locations within the
  /// continent of South America.
  /// - "ASIA_PACIFIC" : Allows checks to run from locations within the Asia
  /// Pacific area (ex: Singapore).
  /// - "USA_OREGON" : Allows checks to run from locations within the western
  /// United States of America
  /// - "USA_IOWA" : Allows checks to run from locations within the central
  /// United States of America
  /// - "USA_VIRGINIA" : Allows checks to run from locations within the eastern
  /// United States of America
  core.String? region;

  UptimeCheckIp({this.ipAddress, this.location, this.region});

  UptimeCheckIp.fromJson(core.Map json_)
    : this(
        ipAddress: json_['ipAddress'] as core.String?,
        location: json_['location'] as core.String?,
        region: json_['region'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ipAddress = this.ipAddress;
    final location = this.location;
    final region = this.region;
    return {'ipAddress': ?ipAddress, 'location': ?location, 'region': ?region};
  }
}

/// A descriptor for the value columns in a data point.
class ValueDescriptor {
  /// The value key.
  core.String? key;

  /// The value stream kind.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval. Cumulative
  /// measurements in a time series should have the same start time and
  /// increasing end times, until an event resets the cumulative value to zero
  /// and sets a new start time for the following points.
  core.String? metricKind;

  /// The unit in which time_series point values are reported.
  ///
  /// unit follows the UCUM format for units as seen in
  /// https://unitsofmeasure.org/ucum.html. unit is only valid if value_type is
  /// INTEGER, DOUBLE, DISTRIBUTION.
  core.String? unit;

  /// The value type.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean. This value type can be used only if the
  /// metric kind is GAUGE.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string. This value type can be used only
  /// if the metric kind is GAUGE.
  /// - "DISTRIBUTION" : The value is a Distribution.
  /// - "MONEY" : The value is money.
  core.String? valueType;

  ValueDescriptor({this.key, this.metricKind, this.unit, this.valueType});

  ValueDescriptor.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        metricKind: json_['metricKind'] as core.String?,
        unit: json_['unit'] as core.String?,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    final metricKind = this.metricKind;
    final unit = this.unit;
    final valueType = this.valueType;
    return {
      'key': ?key,
      'metricKind': ?metricKind,
      'unit': ?unit,
      'valueType': ?valueType,
    };
  }
}

/// The VerifyNotificationChannel request.
class VerifyNotificationChannelRequest {
  /// The verification code that was delivered to the channel as a result of
  /// invoking the SendNotificationChannelVerificationCode API method or that
  /// was retrieved from a verified channel via
  /// GetNotificationChannelVerificationCode.
  ///
  /// For example, one might have "G-123456" or "TKNZGhhd2EyN3I1MnRnMjRv" (in
  /// general, one is only guaranteed that the code is valid UTF-8; one should
  /// not make any assumptions regarding the structure or format of the code).
  ///
  /// Required.
  core.String? code;

  VerifyNotificationChannelRequest({this.code});

  VerifyNotificationChannelRequest.fromJson(core.Map json_)
    : this(code: json_['code'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    return {'code': ?code};
  }
}

/// A WindowsBasedSli defines good_service as the count of time windows for
/// which the provided service was of good quality.
///
/// Criteria for determining if service was good are embedded in the
/// window_criterion.
class WindowsBasedSli {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying a TimeSeries with ValueType = BOOL.
  ///
  /// The window is good if any true values appear in the window.
  core.String? goodBadMetricFilter;

  /// A window is good if its performance is high enough.
  PerformanceThreshold? goodTotalRatioThreshold;

  /// A window is good if the metric's value is in a good range, averaged across
  /// returned streams.
  MetricRange? metricMeanInRange;

  /// A window is good if the metric's value is in a good range, summed across
  /// returned streams.
  MetricRange? metricSumInRange;

  /// Duration over which window quality is evaluated.
  ///
  /// Must be an integer fraction of a day and at least 60s.
  core.String? windowPeriod;

  WindowsBasedSli({
    this.goodBadMetricFilter,
    this.goodTotalRatioThreshold,
    this.metricMeanInRange,
    this.metricSumInRange,
    this.windowPeriod,
  });

  WindowsBasedSli.fromJson(core.Map json_)
    : this(
        goodBadMetricFilter: json_['goodBadMetricFilter'] as core.String?,
        goodTotalRatioThreshold: json_.containsKey('goodTotalRatioThreshold')
            ? PerformanceThreshold.fromJson(
                json_['goodTotalRatioThreshold']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        metricMeanInRange: json_.containsKey('metricMeanInRange')
            ? MetricRange.fromJson(
                json_['metricMeanInRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        metricSumInRange: json_.containsKey('metricSumInRange')
            ? MetricRange.fromJson(
                json_['metricSumInRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        windowPeriod: json_['windowPeriod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goodBadMetricFilter = this.goodBadMetricFilter;
    final goodTotalRatioThreshold = this.goodTotalRatioThreshold;
    final metricMeanInRange = this.metricMeanInRange;
    final metricSumInRange = this.metricSumInRange;
    final windowPeriod = this.windowPeriod;
    return {
      'goodBadMetricFilter': ?goodBadMetricFilter,
      'goodTotalRatioThreshold': ?goodTotalRatioThreshold,
      'metricMeanInRange': ?metricMeanInRange,
      'metricSumInRange': ?metricSumInRange,
      'windowPeriod': ?windowPeriod,
    };
  }
}
