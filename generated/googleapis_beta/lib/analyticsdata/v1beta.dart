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

/// Google Analytics Data API - v1beta
///
/// Accesses report data in Google Analytics.
///
/// For more information, see
/// <https://developers.google.com/analytics/devguides/reporting/data/v1/>
///
/// Create an instance of [AnalyticsDataApi] to access these resources:
///
/// - [PropertiesResource]
library analyticsdata.v1beta;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Accesses report data in Google Analytics.
class AnalyticsDataApi {
  /// View and manage your Google Analytics data
  static const analyticsScope = 'https://www.googleapis.com/auth/analytics';

  /// See and download your Google Analytics data
  static const analyticsReadonlyScope =
      'https://www.googleapis.com/auth/analytics.readonly';

  final commons.ApiRequester _requester;

  PropertiesResource get properties => PropertiesResource(_requester);

  AnalyticsDataApi(http.Client client,
      {core.String rootUrl = 'https://analyticsdata.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PropertiesResource {
  final commons.ApiRequester _requester;

  PropertiesResource(commons.ApiRequester client) : _requester = client;

  /// Returns multiple pivot reports in a batch.
  ///
  /// All reports must be for the same GA4 Property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics GA4 property identifier whose events are
  /// tracked. Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// This property must be specified for the batch. The property within
  /// RunPivotReportRequest may either be unspecified or consistent with this
  /// property. Example: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchRunPivotReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchRunPivotReportsResponse> batchRunPivotReports(
    BatchRunPivotReportsRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$property') + ':batchRunPivotReports';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchRunPivotReportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns multiple reports in a batch.
  ///
  /// All reports must be for the same GA4 Property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics GA4 property identifier whose events are
  /// tracked. Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// This property must be specified for the batch. The property within
  /// RunReportRequest may either be unspecified or consistent with this
  /// property. Example: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchRunReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchRunReportsResponse> batchRunReports(
    BatchRunReportsRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$property') + ':batchRunReports';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchRunReportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// This compatibility method lists dimensions and metrics that can be added
  /// to a report request and maintain compatibility.
  ///
  /// This method fails if the request's dimensions and metrics are
  /// incompatible. In Google Analytics, reports fail if they request
  /// incompatible dimensions and/or metrics; in that case, you will need to
  /// remove dimensions and/or metrics from the incompatible report until the
  /// report is compatible. The Realtime and Core reports have different
  /// compatibility rules. This method checks compatibility for Core reports.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics GA4 property identifier whose events are
  /// tracked. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// `property` should be the same value as in your `runReport` request.
  /// Example: properties/1234 Set the Property ID to 0 for compatibility
  /// checking on dimensions and metrics common to all properties. In this
  /// special mode, this method will not return custom dimensions and metrics.
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckCompatibilityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckCompatibilityResponse> checkCompatibility(
    CheckCompatibilityRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$property') + ':checkCompatibility';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CheckCompatibilityResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns metadata for dimensions and metrics available in reporting
  /// methods.
  ///
  /// Used to explore the dimensions and metrics. In this method, a Google
  /// Analytics GA4 Property Identifier is specified in the request, and the
  /// metadata response includes Custom dimensions and metrics as well as
  /// Universal metadata. For example if a custom metric with parameter name
  /// `levels_unlocked` is registered to a property, the Metadata response will
  /// contain `customEvent:levels_unlocked`. Universal metadata are dimensions
  /// and metrics applicable to any property such as `country` and `totalUsers`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the metadata to retrieve. This
  /// name field is specified in the URL path and not URL parameters. Property
  /// is a numeric Google Analytics GA4 Property identifier. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// Example: properties/1234/metadata Set the Property ID to 0 for dimensions
  /// and metrics common to all properties. In this special mode, this method
  /// will not return custom dimensions and metrics.
  /// Value must have pattern `^properties/\[^/\]+/metadata$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Metadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Metadata> getMetadata(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Metadata.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a customized pivot report of your Google Analytics event data.
  ///
  /// Pivot reports are more advanced and expressive formats than regular
  /// reports. In a pivot report, dimensions are only visible if they are
  /// included in a pivot. Multiple pivots can be specified to further dissect
  /// your data.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics GA4 property identifier whose events are
  /// tracked. Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// Within a batch request, this property should either be unspecified or
  /// consistent with the batch-level property. Example: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunPivotReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunPivotReportResponse> runPivotReport(
    RunPivotReportRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$property') + ':runPivotReport';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RunPivotReportResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// The Google Analytics Realtime API returns a customized report of realtime
  /// event data for your property.
  ///
  /// These reports show events and usage from the last 30 minutes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics GA4 property identifier whose events are
  /// tracked. Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// Example: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunRealtimeReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunRealtimeReportResponse> runRealtimeReport(
    RunRealtimeReportRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$property') + ':runRealtimeReport';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RunRealtimeReportResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a customized report of your Google Analytics event data.
  ///
  /// Reports contain statistics derived from data collected by the Google
  /// Analytics tracking code. The data returned from the API is as a table with
  /// columns for the requested dimensions and metrics. Metrics are individual
  /// measurements of user activity on your property, such as active users or
  /// event count. Dimensions break down metrics across some common criteria,
  /// such as country or event name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics GA4 property identifier whose events are
  /// tracked. Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// Within a batch request, this property should either be unspecified or
  /// consistent with the batch-level property. Example: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunReportResponse> runReport(
    RunReportRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$property') + ':runReport';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RunReportResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A metric actively restricted in creating the report.
class ActiveMetricRestriction {
  /// The name of the restricted metric.
  core.String? metricName;

  /// The reason for this metric's restriction.
  core.List<core.String>? restrictedMetricTypes;

  ActiveMetricRestriction({
    this.metricName,
    this.restrictedMetricTypes,
  });

  ActiveMetricRestriction.fromJson(core.Map _json)
      : this(
          metricName: _json.containsKey('metricName')
              ? _json['metricName'] as core.String
              : null,
          restrictedMetricTypes: _json.containsKey('restrictedMetricTypes')
              ? (_json['restrictedMetricTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
        if (restrictedMetricTypes != null)
          'restrictedMetricTypes': restrictedMetricTypes!,
      };
}

/// The batch request containing multiple pivot report requests.
class BatchRunPivotReportsRequest {
  /// Individual requests.
  ///
  /// Each request has a separate pivot report response. Each batch request is
  /// allowed up to 5 requests.
  core.List<RunPivotReportRequest>? requests;

  BatchRunPivotReportsRequest({
    this.requests,
  });

  BatchRunPivotReportsRequest.fromJson(core.Map _json)
      : this(
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) => RunPivotReportRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// The batch response containing multiple pivot reports.
class BatchRunPivotReportsResponse {
  /// Identifies what kind of resource this message is.
  ///
  /// This `kind` is always the fixed string
  /// "analyticsData#batchRunPivotReports". Useful to distinguish between
  /// response types in JSON.
  core.String? kind;

  /// Individual responses.
  ///
  /// Each response has a separate pivot report request.
  core.List<RunPivotReportResponse>? pivotReports;

  BatchRunPivotReportsResponse({
    this.kind,
    this.pivotReports,
  });

  BatchRunPivotReportsResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          pivotReports: _json.containsKey('pivotReports')
              ? (_json['pivotReports'] as core.List)
                  .map((value) => RunPivotReportResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (pivotReports != null) 'pivotReports': pivotReports!,
      };
}

/// The batch request containing multiple report requests.
class BatchRunReportsRequest {
  /// Individual requests.
  ///
  /// Each request has a separate report response. Each batch request is allowed
  /// up to 5 requests.
  core.List<RunReportRequest>? requests;

  BatchRunReportsRequest({
    this.requests,
  });

  BatchRunReportsRequest.fromJson(core.Map _json)
      : this(
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) => RunReportRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// The batch response containing multiple reports.
class BatchRunReportsResponse {
  /// Identifies what kind of resource this message is.
  ///
  /// This `kind` is always the fixed string "analyticsData#batchRunReports".
  /// Useful to distinguish between response types in JSON.
  core.String? kind;

  /// Individual responses.
  ///
  /// Each response has a separate report request.
  core.List<RunReportResponse>? reports;

  BatchRunReportsResponse({
    this.kind,
    this.reports,
  });

  BatchRunReportsResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          reports: _json.containsKey('reports')
              ? (_json['reports'] as core.List)
                  .map((value) => RunReportResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (reports != null) 'reports': reports!,
      };
}

/// To express that the result needs to be between two numbers (inclusive).
class BetweenFilter {
  /// Begins with this number.
  NumericValue? fromValue;

  /// Ends with this number.
  NumericValue? toValue;

  BetweenFilter({
    this.fromValue,
    this.toValue,
  });

  BetweenFilter.fromJson(core.Map _json)
      : this(
          fromValue: _json.containsKey('fromValue')
              ? NumericValue.fromJson(
                  _json['fromValue'] as core.Map<core.String, core.dynamic>)
              : null,
          toValue: _json.containsKey('toValue')
              ? NumericValue.fromJson(
                  _json['toValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fromValue != null) 'fromValue': fromValue!,
        if (toValue != null) 'toValue': toValue!,
      };
}

/// Used to convert a dimension value to a single case.
class CaseExpression {
  /// Name of a dimension.
  ///
  /// The name must refer back to a name in dimensions field of the request.
  core.String? dimensionName;

  CaseExpression({
    this.dimensionName,
  });

  CaseExpression.fromJson(core.Map _json)
      : this(
          dimensionName: _json.containsKey('dimensionName')
              ? _json['dimensionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
      };
}

/// The request for compatibility information for a report's dimensions and
/// metrics.
///
/// Check compatibility provides a preview of the compatibility of a report;
/// fields shared with the `runReport` request should be the same values as in
/// your `runReport` request.
class CheckCompatibilityRequest {
  /// Filters the dimensions and metrics in the response to just this
  /// compatibility.
  ///
  /// Commonly used as `”compatibilityFilter”: “COMPATIBLE”` to only return
  /// compatible dimensions & metrics.
  /// Possible string values are:
  /// - "COMPATIBILITY_UNSPECIFIED" : Unspecified compatibility.
  /// - "COMPATIBLE" : The dimension or metric is compatible. This dimension or
  /// metric can be successfully added to a report.
  /// - "INCOMPATIBLE" : The dimension or metric is incompatible. This dimension
  /// or metric cannot be successfully added to a report.
  core.String? compatibilityFilter;

  /// The filter clause of dimensions.
  ///
  /// `dimensionFilter` should be the same value as in your `runReport` request.
  FilterExpression? dimensionFilter;

  /// The dimensions in this report.
  ///
  /// `dimensions` should be the same value as in your `runReport` request.
  core.List<Dimension>? dimensions;

  /// The filter clause of metrics.
  ///
  /// `metricFilter` should be the same value as in your `runReport` request
  FilterExpression? metricFilter;

  /// The metrics in this report.
  ///
  /// `metrics` should be the same value as in your `runReport` request.
  core.List<Metric>? metrics;

  CheckCompatibilityRequest({
    this.compatibilityFilter,
    this.dimensionFilter,
    this.dimensions,
    this.metricFilter,
    this.metrics,
  });

  CheckCompatibilityRequest.fromJson(core.Map _json)
      : this(
          compatibilityFilter: _json.containsKey('compatibilityFilter')
              ? _json['compatibilityFilter'] as core.String
              : null,
          dimensionFilter: _json.containsKey('dimensionFilter')
              ? FilterExpression.fromJson(_json['dimensionFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dimensions: _json.containsKey('dimensions')
              ? (_json['dimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metricFilter: _json.containsKey('metricFilter')
              ? FilterExpression.fromJson(
                  _json['metricFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compatibilityFilter != null)
          'compatibilityFilter': compatibilityFilter!,
        if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (metricFilter != null) 'metricFilter': metricFilter!,
        if (metrics != null) 'metrics': metrics!,
      };
}

/// The compatibility response with the compatibility of each dimension &
/// metric.
class CheckCompatibilityResponse {
  /// The compatibility of each dimension.
  core.List<DimensionCompatibility>? dimensionCompatibilities;

  /// The compatibility of each metric.
  core.List<MetricCompatibility>? metricCompatibilities;

  CheckCompatibilityResponse({
    this.dimensionCompatibilities,
    this.metricCompatibilities,
  });

  CheckCompatibilityResponse.fromJson(core.Map _json)
      : this(
          dimensionCompatibilities:
              _json.containsKey('dimensionCompatibilities')
                  ? (_json['dimensionCompatibilities'] as core.List)
                      .map((value) => DimensionCompatibility.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          metricCompatibilities: _json.containsKey('metricCompatibilities')
              ? (_json['metricCompatibilities'] as core.List)
                  .map((value) => MetricCompatibility.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionCompatibilities != null)
          'dimensionCompatibilities': dimensionCompatibilities!,
        if (metricCompatibilities != null)
          'metricCompatibilities': metricCompatibilities!,
      };
}

/// Defines a cohort selection criteria.
///
/// A cohort is a group of users who share a common characteristic. For example,
/// users with the same `firstSessionDate` belong to the same cohort.
class Cohort {
  /// The cohort selects users whose first touch date is between start date and
  /// end date defined in the `dateRange`.
  ///
  /// This `dateRange` does not specify the full date range of event data that
  /// is present in a cohort report. In a cohort report, this `dateRange` is
  /// extended by the granularity and offset present in the `cohortsRange`;
  /// event data for the extended reporting date range is present in a cohort
  /// report. In a cohort request, this `dateRange` is required and the
  /// `dateRanges` in the `RunReportRequest` or `RunPivotReportRequest` must be
  /// unspecified. This `dateRange` should generally be aligned with the
  /// cohort's granularity. If `CohortsRange` uses daily granularity, this
  /// `dateRange` can be a single day. If `CohortsRange` uses weekly
  /// granularity, this `dateRange` can be aligned to a week boundary, starting
  /// at Sunday and ending Saturday. If `CohortsRange` uses monthly granularity,
  /// this `dateRange` can be aligned to a month, starting at the first and
  /// ending on the last day of the month.
  DateRange? dateRange;

  /// Dimension used by the cohort.
  ///
  /// Required and only supports `firstSessionDate`.
  core.String? dimension;

  /// Assigns a name to this cohort.
  ///
  /// The dimension `cohort` is valued to this name in a report response. If
  /// set, cannot begin with `cohort_` or `RESERVED_`. If not set, cohorts are
  /// named by their zero based index `cohort_0`, `cohort_1`, etc.
  core.String? name;

  Cohort({
    this.dateRange,
    this.dimension,
    this.name,
  });

  Cohort.fromJson(core.Map _json)
      : this(
          dateRange: _json.containsKey('dateRange')
              ? DateRange.fromJson(
                  _json['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimension: _json.containsKey('dimension')
              ? _json['dimension'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimension != null) 'dimension': dimension!,
        if (name != null) 'name': name!,
      };
}

/// Optional settings of a cohort report.
class CohortReportSettings {
  /// If true, accumulates the result from first touch day to the end day.
  ///
  /// Not supported in `RunReportRequest`.
  core.bool? accumulate;

  CohortReportSettings({
    this.accumulate,
  });

  CohortReportSettings.fromJson(core.Map _json)
      : this(
          accumulate: _json.containsKey('accumulate')
              ? _json['accumulate'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accumulate != null) 'accumulate': accumulate!,
      };
}

/// The specification of cohorts for a cohort report.
///
/// Cohort reports create a time series of user retention for the cohort. For
/// example, you could select the cohort of users that were acquired in the
/// first week of September and follow that cohort for the next six weeks.
/// Selecting the users acquired in the first week of September cohort is
/// specified in the `cohort` object. Following that cohort for the next six
/// weeks is specified in the `cohortsRange` object. For examples, see
/// [Cohort Report Examples](https://developers.google.com/analytics/devguides/reporting/data/v1/advanced#cohort_report_examples).
/// The report response could show a weekly time series where say your app has
/// retained 60% of this cohort after three weeks and 25% of this cohort after
/// six weeks. These two percentages can be calculated by the metric
/// `cohortActiveUsers/cohortTotalUsers` and will be separate rows in the
/// report.
class CohortSpec {
  /// Optional settings for a cohort report.
  CohortReportSettings? cohortReportSettings;

  /// Defines the selection criteria to group users into cohorts.
  ///
  /// Most cohort reports define only a single cohort. If multiple cohorts are
  /// specified, each cohort can be recognized in the report by their name.
  core.List<Cohort>? cohorts;

  /// Cohort reports follow cohorts over an extended reporting date range.
  ///
  /// This range specifies an offset duration to follow the cohorts over.
  CohortsRange? cohortsRange;

  CohortSpec({
    this.cohortReportSettings,
    this.cohorts,
    this.cohortsRange,
  });

  CohortSpec.fromJson(core.Map _json)
      : this(
          cohortReportSettings: _json.containsKey('cohortReportSettings')
              ? CohortReportSettings.fromJson(_json['cohortReportSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cohorts: _json.containsKey('cohorts')
              ? (_json['cohorts'] as core.List)
                  .map((value) => Cohort.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cohortsRange: _json.containsKey('cohortsRange')
              ? CohortsRange.fromJson(
                  _json['cohortsRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cohortReportSettings != null)
          'cohortReportSettings': cohortReportSettings!,
        if (cohorts != null) 'cohorts': cohorts!,
        if (cohortsRange != null) 'cohortsRange': cohortsRange!,
      };
}

/// Configures the extended reporting date range for a cohort report.
///
/// Specifies an offset duration to follow the cohorts over.
class CohortsRange {
  /// `endOffset` specifies the end date of the extended reporting date range
  /// for a cohort report.
  ///
  /// `endOffset` can be any positive integer but is commonly set to 5 to 10 so
  /// that reports contain data on the cohort for the next several granularity
  /// time periods. If `granularity` is `DAILY`, the `endDate` of the extended
  /// reporting date range is `endDate` of the cohort plus `endOffset` days. If
  /// `granularity` is `WEEKLY`, the `endDate` of the extended reporting date
  /// range is `endDate` of the cohort plus `endOffset * 7` days. If
  /// `granularity` is `MONTHLY`, the `endDate` of the extended reporting date
  /// range is `endDate` of the cohort plus `endOffset * 30` days.
  ///
  /// Required.
  core.int? endOffset;

  /// The granularity used to interpret the `startOffset` and `endOffset` for
  /// the extended reporting date range for a cohort report.
  ///
  /// Required.
  /// Possible string values are:
  /// - "GRANULARITY_UNSPECIFIED" : Should never be specified.
  /// - "DAILY" : Daily granularity. Commonly used if the cohort's `dateRange`
  /// is a single day and the request contains `cohortNthDay`.
  /// - "WEEKLY" : Weekly granularity. Commonly used if the cohort's `dateRange`
  /// is a week in duration (starting on Sunday and ending on Saturday) and the
  /// request contains `cohortNthWeek`.
  /// - "MONTHLY" : Monthly granularity. Commonly used if the cohort's
  /// `dateRange` is a month in duration and the request contains
  /// `cohortNthMonth`.
  core.String? granularity;

  /// `startOffset` specifies the start date of the extended reporting date
  /// range for a cohort report.
  ///
  /// `startOffset` is commonly set to 0 so that reports contain data from the
  /// acquisition of the cohort forward. If `granularity` is `DAILY`, the
  /// `startDate` of the extended reporting date range is `startDate` of the
  /// cohort plus `startOffset` days. If `granularity` is `WEEKLY`, the
  /// `startDate` of the extended reporting date range is `startDate` of the
  /// cohort plus `startOffset * 7` days. If `granularity` is `MONTHLY`, the
  /// `startDate` of the extended reporting date range is `startDate` of the
  /// cohort plus `startOffset * 30` days.
  core.int? startOffset;

  CohortsRange({
    this.endOffset,
    this.granularity,
    this.startOffset,
  });

  CohortsRange.fromJson(core.Map _json)
      : this(
          endOffset: _json.containsKey('endOffset')
              ? _json['endOffset'] as core.int
              : null,
          granularity: _json.containsKey('granularity')
              ? _json['granularity'] as core.String
              : null,
          startOffset: _json.containsKey('startOffset')
              ? _json['startOffset'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endOffset != null) 'endOffset': endOffset!,
        if (granularity != null) 'granularity': granularity!,
        if (startOffset != null) 'startOffset': startOffset!,
      };
}

/// Used to combine dimension values to a single dimension.
class ConcatenateExpression {
  /// The delimiter placed between dimension names.
  ///
  /// Delimiters are often single characters such as "|" or "," but can be
  /// longer strings. If a dimension value contains the delimiter, both will be
  /// present in response with no distinction. For example if dimension 1 value
  /// = "US,FR", dimension 2 value = "JP", and delimiter = ",", then the
  /// response will contain "US,FR,JP".
  core.String? delimiter;

  /// Names of dimensions.
  ///
  /// The names must refer back to names in the dimensions field of the request.
  core.List<core.String>? dimensionNames;

  ConcatenateExpression({
    this.delimiter,
    this.dimensionNames,
  });

  ConcatenateExpression.fromJson(core.Map _json)
      : this(
          delimiter: _json.containsKey('delimiter')
              ? _json['delimiter'] as core.String
              : null,
          dimensionNames: _json.containsKey('dimensionNames')
              ? (_json['dimensionNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delimiter != null) 'delimiter': delimiter!,
        if (dimensionNames != null) 'dimensionNames': dimensionNames!,
      };
}

/// A contiguous set of days: startDate, startDate + 1, ..., endDate.
///
/// Requests are allowed up to 4 date ranges.
class DateRange {
  /// The inclusive end date for the query in the format `YYYY-MM-DD`.
  ///
  /// Cannot be before `start_date`. The format `NdaysAgo`, `yesterday`, or
  /// `today` is also accepted, and in that case, the date is inferred based on
  /// the property's reporting time zone.
  core.String? endDate;

  /// Assigns a name to this date range.
  ///
  /// The dimension `dateRange` is valued to this name in a report response. If
  /// set, cannot begin with `date_range_` or `RESERVED_`. If not set, date
  /// ranges are named by their zero based index in the request: `date_range_0`,
  /// `date_range_1`, etc.
  core.String? name;

  /// The inclusive start date for the query in the format `YYYY-MM-DD`.
  ///
  /// Cannot be after `end_date`. The format `NdaysAgo`, `yesterday`, or `today`
  /// is also accepted, and in that case, the date is inferred based on the
  /// property's reporting time zone.
  core.String? startDate;

  DateRange({
    this.endDate,
    this.name,
    this.startDate,
  });

  DateRange.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? _json['endDate'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          startDate: _json.containsKey('startDate')
              ? _json['startDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (name != null) 'name': name!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// Dimensions are attributes of your data.
///
/// For example, the dimension city indicates the city from which an event
/// originates. Dimension values in report responses are strings; for example,
/// city could be "Paris" or "New York". Requests are allowed up to 9
/// dimensions.
class Dimension {
  /// One dimension can be the result of an expression of multiple dimensions.
  ///
  /// For example, dimension "country, city": concatenate(country, ", ", city).
  DimensionExpression? dimensionExpression;

  /// The name of the dimension.
  ///
  /// See the
  /// [API Dimensions](https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#dimensions)
  /// for the list of dimension names. If `dimensionExpression` is specified,
  /// `name` can be any string that you would like within the allowed character
  /// set. For example if a `dimensionExpression` concatenates `country` and
  /// `city`, you could call that dimension `countryAndCity`. Dimension names
  /// that you choose must match the regular expression `^[a-zA-Z0-9_]$`.
  /// Dimensions are referenced by `name` in `dimensionFilter`, `orderBys`,
  /// `dimensionExpression`, and `pivots`.
  core.String? name;

  Dimension({
    this.dimensionExpression,
    this.name,
  });

  Dimension.fromJson(core.Map _json)
      : this(
          dimensionExpression: _json.containsKey('dimensionExpression')
              ? DimensionExpression.fromJson(_json['dimensionExpression']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionExpression != null)
          'dimensionExpression': dimensionExpression!,
        if (name != null) 'name': name!,
      };
}

/// The compatibility for a single dimension.
class DimensionCompatibility {
  /// The compatibility of this dimension.
  ///
  /// If the compatibility is COMPATIBLE, this dimension can be successfully
  /// added to the report.
  /// Possible string values are:
  /// - "COMPATIBILITY_UNSPECIFIED" : Unspecified compatibility.
  /// - "COMPATIBLE" : The dimension or metric is compatible. This dimension or
  /// metric can be successfully added to a report.
  /// - "INCOMPATIBLE" : The dimension or metric is incompatible. This dimension
  /// or metric cannot be successfully added to a report.
  core.String? compatibility;

  /// The dimension metadata contains the API name for this compatibility
  /// information.
  ///
  /// The dimension metadata also contains other helpful information like the UI
  /// name and description.
  DimensionMetadata? dimensionMetadata;

  DimensionCompatibility({
    this.compatibility,
    this.dimensionMetadata,
  });

  DimensionCompatibility.fromJson(core.Map _json)
      : this(
          compatibility: _json.containsKey('compatibility')
              ? _json['compatibility'] as core.String
              : null,
          dimensionMetadata: _json.containsKey('dimensionMetadata')
              ? DimensionMetadata.fromJson(_json['dimensionMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compatibility != null) 'compatibility': compatibility!,
        if (dimensionMetadata != null) 'dimensionMetadata': dimensionMetadata!,
      };
}

/// Used to express a dimension which is the result of a formula of multiple
/// dimensions.
///
/// Example usages: 1) lower_case(dimension) 2) concatenate(dimension1, symbol,
/// dimension2).
class DimensionExpression {
  /// Used to combine dimension values to a single dimension.
  ///
  /// For example, dimension "country, city": concatenate(country, ", ", city).
  ConcatenateExpression? concatenate;

  /// Used to convert a dimension value to lower case.
  CaseExpression? lowerCase;

  /// Used to convert a dimension value to upper case.
  CaseExpression? upperCase;

  DimensionExpression({
    this.concatenate,
    this.lowerCase,
    this.upperCase,
  });

  DimensionExpression.fromJson(core.Map _json)
      : this(
          concatenate: _json.containsKey('concatenate')
              ? ConcatenateExpression.fromJson(
                  _json['concatenate'] as core.Map<core.String, core.dynamic>)
              : null,
          lowerCase: _json.containsKey('lowerCase')
              ? CaseExpression.fromJson(
                  _json['lowerCase'] as core.Map<core.String, core.dynamic>)
              : null,
          upperCase: _json.containsKey('upperCase')
              ? CaseExpression.fromJson(
                  _json['upperCase'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (concatenate != null) 'concatenate': concatenate!,
        if (lowerCase != null) 'lowerCase': lowerCase!,
        if (upperCase != null) 'upperCase': upperCase!,
      };
}

/// Describes a dimension column in the report.
///
/// Dimensions requested in a report produce column entries within rows and
/// DimensionHeaders. However, dimensions used exclusively within filters or
/// expressions do not produce columns in a report; correspondingly, those
/// dimensions do not produce headers.
class DimensionHeader {
  /// The dimension's name.
  core.String? name;

  DimensionHeader({
    this.name,
  });

  DimensionHeader.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Explains a dimension.
class DimensionMetadata {
  /// This dimension's name.
  ///
  /// Useable in \[Dimension\](#Dimension)'s `name`. For example, `eventName`.
  core.String? apiName;

  /// The display name of the category that this dimension belongs to.
  ///
  /// Similar dimensions and metrics are categorized together.
  core.String? category;

  /// True if the dimension is a custom dimension for this property.
  core.bool? customDefinition;

  /// Still usable but deprecated names for this dimension.
  ///
  /// If populated, this dimension is available by either `apiName` or one of
  /// `deprecatedApiNames` for a period of time. After the deprecation period,
  /// the dimension will be available only by `apiName`.
  core.List<core.String>? deprecatedApiNames;

  /// Description of how this dimension is used and calculated.
  core.String? description;

  /// This dimension's name within the Google Analytics user interface.
  ///
  /// For example, `Event name`.
  core.String? uiName;

  DimensionMetadata({
    this.apiName,
    this.category,
    this.customDefinition,
    this.deprecatedApiNames,
    this.description,
    this.uiName,
  });

  DimensionMetadata.fromJson(core.Map _json)
      : this(
          apiName: _json.containsKey('apiName')
              ? _json['apiName'] as core.String
              : null,
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          customDefinition: _json.containsKey('customDefinition')
              ? _json['customDefinition'] as core.bool
              : null,
          deprecatedApiNames: _json.containsKey('deprecatedApiNames')
              ? (_json['deprecatedApiNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          uiName: _json.containsKey('uiName')
              ? _json['uiName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiName != null) 'apiName': apiName!,
        if (category != null) 'category': category!,
        if (customDefinition != null) 'customDefinition': customDefinition!,
        if (deprecatedApiNames != null)
          'deprecatedApiNames': deprecatedApiNames!,
        if (description != null) 'description': description!,
        if (uiName != null) 'uiName': uiName!,
      };
}

/// Sorts by dimension values.
class DimensionOrderBy {
  /// A dimension name in the request to order by.
  core.String? dimensionName;

  /// Controls the rule for dimension value ordering.
  /// Possible string values are:
  /// - "ORDER_TYPE_UNSPECIFIED" : Unspecified.
  /// - "ALPHANUMERIC" : Alphanumeric sort by Unicode code point. For example,
  /// "2" \< "A" \< "X" \< "b" \< "z".
  /// - "CASE_INSENSITIVE_ALPHANUMERIC" : Case insensitive alphanumeric sort by
  /// lower case Unicode code point. For example, "2" \< "A" \< "b" \< "X" \<
  /// "z".
  /// - "NUMERIC" : Dimension values are converted to numbers before sorting.
  /// For example in NUMERIC sort, "25" \< "100", and in `ALPHANUMERIC` sort,
  /// "100" \< "25". Non-numeric dimension values all have equal ordering value
  /// below all numeric values.
  core.String? orderType;

  DimensionOrderBy({
    this.dimensionName,
    this.orderType,
  });

  DimensionOrderBy.fromJson(core.Map _json)
      : this(
          dimensionName: _json.containsKey('dimensionName')
              ? _json['dimensionName'] as core.String
              : null,
          orderType: _json.containsKey('orderType')
              ? _json['orderType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (orderType != null) 'orderType': orderType!,
      };
}

/// The value of a dimension.
class DimensionValue {
  /// Value as a string if the dimension type is a string.
  core.String? value;

  DimensionValue({
    this.value,
  });

  DimensionValue.fromJson(core.Map _json)
      : this(
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// An expression to filter dimension or metric values.
class Filter {
  /// A filter for two values.
  BetweenFilter? betweenFilter;

  /// The dimension name or metric name.
  ///
  /// Must be a name defined in dimensions or metrics.
  core.String? fieldName;

  /// A filter for in list values.
  InListFilter? inListFilter;

  /// A filter for numeric or date values.
  NumericFilter? numericFilter;

  /// Strings related filter.
  StringFilter? stringFilter;

  Filter({
    this.betweenFilter,
    this.fieldName,
    this.inListFilter,
    this.numericFilter,
    this.stringFilter,
  });

  Filter.fromJson(core.Map _json)
      : this(
          betweenFilter: _json.containsKey('betweenFilter')
              ? BetweenFilter.fromJson(
                  _json['betweenFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldName: _json.containsKey('fieldName')
              ? _json['fieldName'] as core.String
              : null,
          inListFilter: _json.containsKey('inListFilter')
              ? InListFilter.fromJson(
                  _json['inListFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          numericFilter: _json.containsKey('numericFilter')
              ? NumericFilter.fromJson(
                  _json['numericFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          stringFilter: _json.containsKey('stringFilter')
              ? StringFilter.fromJson(
                  _json['stringFilter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (betweenFilter != null) 'betweenFilter': betweenFilter!,
        if (fieldName != null) 'fieldName': fieldName!,
        if (inListFilter != null) 'inListFilter': inListFilter!,
        if (numericFilter != null) 'numericFilter': numericFilter!,
        if (stringFilter != null) 'stringFilter': stringFilter!,
      };
}

/// To express dimension or metric filters.
///
/// The fields in the same FilterExpression need to be either all dimensions or
/// all metrics.
class FilterExpression {
  /// The FilterExpressions in and_group have an AND relationship.
  FilterExpressionList? andGroup;

  /// A primitive filter.
  ///
  /// All fields in filter in same FilterExpression needs to be either all
  /// dimensions or metrics.
  Filter? filter;

  /// The FilterExpression is NOT of not_expression.
  FilterExpression? notExpression;

  /// The FilterExpressions in or_group have an OR relationship.
  FilterExpressionList? orGroup;

  FilterExpression({
    this.andGroup,
    this.filter,
    this.notExpression,
    this.orGroup,
  });

  FilterExpression.fromJson(core.Map _json)
      : this(
          andGroup: _json.containsKey('andGroup')
              ? FilterExpressionList.fromJson(
                  _json['andGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          filter: _json.containsKey('filter')
              ? Filter.fromJson(
                  _json['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          notExpression: _json.containsKey('notExpression')
              ? FilterExpression.fromJson(
                  _json['notExpression'] as core.Map<core.String, core.dynamic>)
              : null,
          orGroup: _json.containsKey('orGroup')
              ? FilterExpressionList.fromJson(
                  _json['orGroup'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (andGroup != null) 'andGroup': andGroup!,
        if (filter != null) 'filter': filter!,
        if (notExpression != null) 'notExpression': notExpression!,
        if (orGroup != null) 'orGroup': orGroup!,
      };
}

/// A list of filter expressions.
class FilterExpressionList {
  /// A list of filter expressions.
  core.List<FilterExpression>? expressions;

  FilterExpressionList({
    this.expressions,
  });

  FilterExpressionList.fromJson(core.Map _json)
      : this(
          expressions: _json.containsKey('expressions')
              ? (_json['expressions'] as core.List)
                  .map((value) => FilterExpression.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expressions != null) 'expressions': expressions!,
      };
}

/// The result needs to be in a list of string values.
class InListFilter {
  /// If true, the string value is case sensitive.
  core.bool? caseSensitive;

  /// The list of string values.
  ///
  /// Must be non-empty.
  core.List<core.String>? values;

  InListFilter({
    this.caseSensitive,
    this.values,
  });

  InListFilter.fromJson(core.Map _json)
      : this(
          caseSensitive: _json.containsKey('caseSensitive')
              ? _json['caseSensitive'] as core.bool
              : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (values != null) 'values': values!,
      };
}

/// The dimensions and metrics currently accepted in reporting methods.
class Metadata {
  /// The dimension descriptions.
  core.List<DimensionMetadata>? dimensions;

  /// The metric descriptions.
  core.List<MetricMetadata>? metrics;

  /// Resource name of this metadata.
  core.String? name;

  Metadata({
    this.dimensions,
    this.metrics,
    this.name,
  });

  Metadata.fromJson(core.Map _json)
      : this(
          dimensions: _json.containsKey('dimensions')
              ? (_json['dimensions'] as core.List)
                  .map((value) => DimensionMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => MetricMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensions != null) 'dimensions': dimensions!,
        if (metrics != null) 'metrics': metrics!,
        if (name != null) 'name': name!,
      };
}

/// The quantitative measurements of a report.
///
/// For example, the metric `eventCount` is the total number of events. Requests
/// are allowed up to 10 metrics.
class Metric {
  /// A mathematical expression for derived metrics.
  ///
  /// For example, the metric Event count per user is `eventCount/totalUsers`.
  core.String? expression;

  /// Indicates if a metric is invisible in the report response.
  ///
  /// If a metric is invisible, the metric will not produce a column in the
  /// response, but can be used in `metricFilter`, `orderBys`, or a metric
  /// `expression`.
  core.bool? invisible;

  /// The name of the metric.
  ///
  /// See the
  /// [API Metrics](https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#metrics)
  /// for the list of metric names. If `expression` is specified, `name` can be
  /// any string that you would like within the allowed character set. For
  /// example if `expression` is `screenPageViews/sessions`, you could call that
  /// metric's name = `viewsPerSession`. Metric names that you choose must match
  /// the regular expression `^[a-zA-Z0-9_]$`. Metrics are referenced by `name`
  /// in `metricFilter`, `orderBys`, and metric `expression`.
  core.String? name;

  Metric({
    this.expression,
    this.invisible,
    this.name,
  });

  Metric.fromJson(core.Map _json)
      : this(
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          invisible: _json.containsKey('invisible')
              ? _json['invisible'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expression != null) 'expression': expression!,
        if (invisible != null) 'invisible': invisible!,
        if (name != null) 'name': name!,
      };
}

/// The compatibility for a single metric.
class MetricCompatibility {
  /// The compatibility of this metric.
  ///
  /// If the compatibility is COMPATIBLE, this metric can be successfully added
  /// to the report.
  /// Possible string values are:
  /// - "COMPATIBILITY_UNSPECIFIED" : Unspecified compatibility.
  /// - "COMPATIBLE" : The dimension or metric is compatible. This dimension or
  /// metric can be successfully added to a report.
  /// - "INCOMPATIBLE" : The dimension or metric is incompatible. This dimension
  /// or metric cannot be successfully added to a report.
  core.String? compatibility;

  /// The metric metadata contains the API name for this compatibility
  /// information.
  ///
  /// The metric metadata also contains other helpful information like the UI
  /// name and description.
  MetricMetadata? metricMetadata;

  MetricCompatibility({
    this.compatibility,
    this.metricMetadata,
  });

  MetricCompatibility.fromJson(core.Map _json)
      : this(
          compatibility: _json.containsKey('compatibility')
              ? _json['compatibility'] as core.String
              : null,
          metricMetadata: _json.containsKey('metricMetadata')
              ? MetricMetadata.fromJson(_json['metricMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compatibility != null) 'compatibility': compatibility!,
        if (metricMetadata != null) 'metricMetadata': metricMetadata!,
      };
}

/// Describes a metric column in the report.
///
/// Visible metrics requested in a report produce column entries within rows and
/// MetricHeaders. However, metrics used exclusively within filters or
/// expressions do not produce columns in a report; correspondingly, those
/// metrics do not produce headers.
class MetricHeader {
  /// The metric's name.
  core.String? name;

  /// The metric's data type.
  /// Possible string values are:
  /// - "METRIC_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "TYPE_INTEGER" : Integer type.
  /// - "TYPE_FLOAT" : Floating point type.
  /// - "TYPE_SECONDS" : A duration of seconds; a special floating point type.
  /// - "TYPE_MILLISECONDS" : A duration in milliseconds; a special floating
  /// point type.
  /// - "TYPE_MINUTES" : A duration in minutes; a special floating point type.
  /// - "TYPE_HOURS" : A duration in hours; a special floating point type.
  /// - "TYPE_STANDARD" : A custom metric of standard type; a special floating
  /// point type.
  /// - "TYPE_CURRENCY" : An amount of money; a special floating point type.
  /// - "TYPE_FEET" : A length in feet; a special floating point type.
  /// - "TYPE_MILES" : A length in miles; a special floating point type.
  /// - "TYPE_METERS" : A length in meters; a special floating point type.
  /// - "TYPE_KILOMETERS" : A length in kilometers; a special floating point
  /// type.
  core.String? type;

  MetricHeader({
    this.name,
    this.type,
  });

  MetricHeader.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Explains a metric.
class MetricMetadata {
  /// A metric name.
  ///
  /// Useable in \[Metric\](#Metric)'s `name`. For example, `eventCount`.
  core.String? apiName;

  /// If reasons are specified, your access is blocked to this metric for this
  /// property.
  ///
  /// API requests from you to this property for this metric will succeed;
  /// however, the report will contain only zeros for this metric. API requests
  /// with metric filters on blocked metrics will fail. If reasons are empty,
  /// you have access to this metric. To learn more, see \[Access and
  /// data-restriction
  /// management\](https://support.google.com/analytics/answer/10851388).
  core.List<core.String>? blockedReasons;

  /// The display name of the category that this metrics belongs to.
  ///
  /// Similar dimensions and metrics are categorized together.
  core.String? category;

  /// True if the metric is a custom metric for this property.
  core.bool? customDefinition;

  /// Still usable but deprecated names for this metric.
  ///
  /// If populated, this metric is available by either `apiName` or one of
  /// `deprecatedApiNames` for a period of time. After the deprecation period,
  /// the metric will be available only by `apiName`.
  core.List<core.String>? deprecatedApiNames;

  /// Description of how this metric is used and calculated.
  core.String? description;

  /// The mathematical expression for this derived metric.
  ///
  /// Can be used in \[Metric\](#Metric)'s `expression` field for equivalent
  /// reports. Most metrics are not expressions, and for non-expressions, this
  /// field is empty.
  core.String? expression;

  /// The type of this metric.
  /// Possible string values are:
  /// - "METRIC_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "TYPE_INTEGER" : Integer type.
  /// - "TYPE_FLOAT" : Floating point type.
  /// - "TYPE_SECONDS" : A duration of seconds; a special floating point type.
  /// - "TYPE_MILLISECONDS" : A duration in milliseconds; a special floating
  /// point type.
  /// - "TYPE_MINUTES" : A duration in minutes; a special floating point type.
  /// - "TYPE_HOURS" : A duration in hours; a special floating point type.
  /// - "TYPE_STANDARD" : A custom metric of standard type; a special floating
  /// point type.
  /// - "TYPE_CURRENCY" : An amount of money; a special floating point type.
  /// - "TYPE_FEET" : A length in feet; a special floating point type.
  /// - "TYPE_MILES" : A length in miles; a special floating point type.
  /// - "TYPE_METERS" : A length in meters; a special floating point type.
  /// - "TYPE_KILOMETERS" : A length in kilometers; a special floating point
  /// type.
  core.String? type;

  /// This metric's name within the Google Analytics user interface.
  ///
  /// For example, `Event count`.
  core.String? uiName;

  MetricMetadata({
    this.apiName,
    this.blockedReasons,
    this.category,
    this.customDefinition,
    this.deprecatedApiNames,
    this.description,
    this.expression,
    this.type,
    this.uiName,
  });

  MetricMetadata.fromJson(core.Map _json)
      : this(
          apiName: _json.containsKey('apiName')
              ? _json['apiName'] as core.String
              : null,
          blockedReasons: _json.containsKey('blockedReasons')
              ? (_json['blockedReasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          customDefinition: _json.containsKey('customDefinition')
              ? _json['customDefinition'] as core.bool
              : null,
          deprecatedApiNames: _json.containsKey('deprecatedApiNames')
              ? (_json['deprecatedApiNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          uiName: _json.containsKey('uiName')
              ? _json['uiName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiName != null) 'apiName': apiName!,
        if (blockedReasons != null) 'blockedReasons': blockedReasons!,
        if (category != null) 'category': category!,
        if (customDefinition != null) 'customDefinition': customDefinition!,
        if (deprecatedApiNames != null)
          'deprecatedApiNames': deprecatedApiNames!,
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (type != null) 'type': type!,
        if (uiName != null) 'uiName': uiName!,
      };
}

/// Sorts by metric values.
class MetricOrderBy {
  /// A metric name in the request to order by.
  core.String? metricName;

  MetricOrderBy({
    this.metricName,
  });

  MetricOrderBy.fromJson(core.Map _json)
      : this(
          metricName: _json.containsKey('metricName')
              ? _json['metricName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
      };
}

/// The value of a metric.
class MetricValue {
  /// Measurement value.
  ///
  /// See MetricHeader for type.
  core.String? value;

  MetricValue({
    this.value,
  });

  MetricValue.fromJson(core.Map _json)
      : this(
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// A contiguous set of minutes: startMinutesAgo, startMinutesAgo + 1, ...,
/// endMinutesAgo.
///
/// Requests are allowed up to 2 minute ranges.
class MinuteRange {
  /// The inclusive end minute for the query as a number of minutes before now.
  ///
  /// Cannot be before `startMinutesAgo`. For example, `"endMinutesAgo": 15`
  /// specifies the report should include event data from prior to 15 minutes
  /// ago. If unspecified, `endMinutesAgo` is defaulted to 0. Standard Analytics
  /// properties can request any minute in the last 30 minutes of event data
  /// (`endMinutesAgo <= 29`), and 360 Analytics properties can request any
  /// minute in the last 60 minutes of event data (`endMinutesAgo <= 59`).
  core.int? endMinutesAgo;

  /// Assigns a name to this minute range.
  ///
  /// The dimension `dateRange` is valued to this name in a report response. If
  /// set, cannot begin with `date_range_` or `RESERVED_`. If not set, minute
  /// ranges are named by their zero based index in the request: `date_range_0`,
  /// `date_range_1`, etc.
  core.String? name;

  /// The inclusive start minute for the query as a number of minutes before
  /// now.
  ///
  /// For example, `"startMinutesAgo": 29` specifies the report should include
  /// event data from 29 minutes ago and after. Cannot be after `endMinutesAgo`.
  /// If unspecified, `startMinutesAgo` is defaulted to 29. Standard Analytics
  /// properties can request up to the last 30 minutes of event data
  /// (`startMinutesAgo <= 29`), and 360 Analytics properties can request up to
  /// the last 60 minutes of event data (`startMinutesAgo <= 59`).
  core.int? startMinutesAgo;

  MinuteRange({
    this.endMinutesAgo,
    this.name,
    this.startMinutesAgo,
  });

  MinuteRange.fromJson(core.Map _json)
      : this(
          endMinutesAgo: _json.containsKey('endMinutesAgo')
              ? _json['endMinutesAgo'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          startMinutesAgo: _json.containsKey('startMinutesAgo')
              ? _json['startMinutesAgo'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endMinutesAgo != null) 'endMinutesAgo': endMinutesAgo!,
        if (name != null) 'name': name!,
        if (startMinutesAgo != null) 'startMinutesAgo': startMinutesAgo!,
      };
}

/// Filters for numeric or date values.
class NumericFilter {
  /// The operation type for this filter.
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED" : Unspecified.
  /// - "EQUAL" : Equal
  /// - "LESS_THAN" : Less than
  /// - "LESS_THAN_OR_EQUAL" : Less than or equal
  /// - "GREATER_THAN" : Greater than
  /// - "GREATER_THAN_OR_EQUAL" : Greater than or equal
  core.String? operation;

  /// A numeric value or a date value.
  NumericValue? value;

  NumericFilter({
    this.operation,
    this.value,
  });

  NumericFilter.fromJson(core.Map _json)
      : this(
          operation: _json.containsKey('operation')
              ? _json['operation'] as core.String
              : null,
          value: _json.containsKey('value')
              ? NumericValue.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
        if (value != null) 'value': value!,
      };
}

/// To represent a number.
class NumericValue {
  /// Double value
  core.double? doubleValue;

  /// Integer value
  core.String? int64Value;

  NumericValue({
    this.doubleValue,
    this.int64Value,
  });

  NumericValue.fromJson(core.Map _json)
      : this(
          doubleValue: _json.containsKey('doubleValue')
              ? (_json['doubleValue'] as core.num).toDouble()
              : null,
          int64Value: _json.containsKey('int64Value')
              ? _json['int64Value'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (int64Value != null) 'int64Value': int64Value!,
      };
}

/// The sort options.
class OrderBy {
  /// If true, sorts by descending order.
  core.bool? desc;

  /// Sorts results by a dimension's values.
  DimensionOrderBy? dimension;

  /// Sorts results by a metric's values.
  MetricOrderBy? metric;

  /// Sorts results by a metric's values within a pivot column group.
  PivotOrderBy? pivot;

  OrderBy({
    this.desc,
    this.dimension,
    this.metric,
    this.pivot,
  });

  OrderBy.fromJson(core.Map _json)
      : this(
          desc: _json.containsKey('desc') ? _json['desc'] as core.bool : null,
          dimension: _json.containsKey('dimension')
              ? DimensionOrderBy.fromJson(
                  _json['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          metric: _json.containsKey('metric')
              ? MetricOrderBy.fromJson(
                  _json['metric'] as core.Map<core.String, core.dynamic>)
              : null,
          pivot: _json.containsKey('pivot')
              ? PivotOrderBy.fromJson(
                  _json['pivot'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (desc != null) 'desc': desc!,
        if (dimension != null) 'dimension': dimension!,
        if (metric != null) 'metric': metric!,
        if (pivot != null) 'pivot': pivot!,
      };
}

/// Describes the visible dimension columns and rows in the report response.
class Pivot {
  /// Dimension names for visible columns in the report response.
  ///
  /// Including "dateRange" produces a date range column; for each row in the
  /// response, dimension values in the date range column will indicate the
  /// corresponding date range from the request.
  core.List<core.String>? fieldNames;

  /// The number of unique combinations of dimension values to return in this
  /// pivot.
  ///
  /// The `limit` parameter is required. A `limit` of 10,000 is common for
  /// single pivot requests. The product of the `limit` for each `pivot` in a
  /// `RunPivotReportRequest` must not exceed 100,000. For example, a two pivot
  /// request with `limit: 1000` in each pivot will fail because the product is
  /// `1,000,000`.
  core.String? limit;

  /// Aggregate the metrics by dimensions in this pivot using the specified
  /// metric_aggregations.
  core.List<core.String>? metricAggregations;

  /// The row count of the start row.
  ///
  /// The first row is counted as row 0.
  core.String? offset;

  /// Specifies how dimensions are ordered in the pivot.
  ///
  /// In the first Pivot, the OrderBys determine Row and PivotDimensionHeader
  /// ordering; in subsequent Pivots, the OrderBys determine only
  /// PivotDimensionHeader ordering. Dimensions specified in these OrderBys must
  /// be a subset of Pivot.field_names.
  core.List<OrderBy>? orderBys;

  Pivot({
    this.fieldNames,
    this.limit,
    this.metricAggregations,
    this.offset,
    this.orderBys,
  });

  Pivot.fromJson(core.Map _json)
      : this(
          fieldNames: _json.containsKey('fieldNames')
              ? (_json['fieldNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          limit:
              _json.containsKey('limit') ? _json['limit'] as core.String : null,
          metricAggregations: _json.containsKey('metricAggregations')
              ? (_json['metricAggregations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          offset: _json.containsKey('offset')
              ? _json['offset'] as core.String
              : null,
          orderBys: _json.containsKey('orderBys')
              ? (_json['orderBys'] as core.List)
                  .map((value) => OrderBy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldNames != null) 'fieldNames': fieldNames!,
        if (limit != null) 'limit': limit!,
        if (metricAggregations != null)
          'metricAggregations': metricAggregations!,
        if (offset != null) 'offset': offset!,
        if (orderBys != null) 'orderBys': orderBys!,
      };
}

/// Summarizes dimension values from a row for this pivot.
class PivotDimensionHeader {
  /// Values of multiple dimensions in a pivot.
  core.List<DimensionValue>? dimensionValues;

  PivotDimensionHeader({
    this.dimensionValues,
  });

  PivotDimensionHeader.fromJson(core.Map _json)
      : this(
          dimensionValues: _json.containsKey('dimensionValues')
              ? (_json['dimensionValues'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionValues != null) 'dimensionValues': dimensionValues!,
      };
}

/// Dimensions' values in a single pivot.
class PivotHeader {
  /// The size is the same as the cardinality of the corresponding dimension
  /// combinations.
  core.List<PivotDimensionHeader>? pivotDimensionHeaders;

  /// The cardinality of the pivot.
  ///
  /// The total number of rows for this pivot's fields regardless of how the
  /// parameters `offset` and `limit` are specified in the request.
  core.int? rowCount;

  PivotHeader({
    this.pivotDimensionHeaders,
    this.rowCount,
  });

  PivotHeader.fromJson(core.Map _json)
      : this(
          pivotDimensionHeaders: _json.containsKey('pivotDimensionHeaders')
              ? (_json['pivotDimensionHeaders'] as core.List)
                  .map((value) => PivotDimensionHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rowCount: _json.containsKey('rowCount')
              ? _json['rowCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pivotDimensionHeaders != null)
          'pivotDimensionHeaders': pivotDimensionHeaders!,
        if (rowCount != null) 'rowCount': rowCount!,
      };
}

/// Sorts by a pivot column group.
class PivotOrderBy {
  /// In the response to order by, order rows by this column.
  ///
  /// Must be a metric name from the request.
  core.String? metricName;

  /// Used to select a dimension name and value pivot.
  ///
  /// If multiple pivot selections are given, the sort occurs on rows where all
  /// pivot selection dimension name and value pairs match the row's dimension
  /// name and value pair.
  core.List<PivotSelection>? pivotSelections;

  PivotOrderBy({
    this.metricName,
    this.pivotSelections,
  });

  PivotOrderBy.fromJson(core.Map _json)
      : this(
          metricName: _json.containsKey('metricName')
              ? _json['metricName'] as core.String
              : null,
          pivotSelections: _json.containsKey('pivotSelections')
              ? (_json['pivotSelections'] as core.List)
                  .map((value) => PivotSelection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
        if (pivotSelections != null) 'pivotSelections': pivotSelections!,
      };
}

/// A pair of dimension names and values.
///
/// Rows with this dimension pivot pair are ordered by the metric's value. For
/// example if pivots = {{"browser", "Chrome"}} and metric_name = "Sessions",
/// then the rows will be sorted based on Sessions in Chrome.
/// ---------|----------|----------------|----------|---------------- | Chrome |
/// Chrome | Safari | Safari
/// ---------|----------|----------------|----------|---------------- Country |
/// Sessions | Pages/Sessions | Sessions | Pages/Sessions
/// ---------|----------|----------------|----------|---------------- US | 2 | 2
/// | 3 | 1 ---------|----------|----------------|----------|----------------
/// Canada | 3 | 1 | 4 | 1
/// ---------|----------|----------------|----------|----------------
class PivotSelection {
  /// Must be a dimension name from the request.
  core.String? dimensionName;

  /// Order by only when the named dimension is this value.
  core.String? dimensionValue;

  PivotSelection({
    this.dimensionName,
    this.dimensionValue,
  });

  PivotSelection.fromJson(core.Map _json)
      : this(
          dimensionName: _json.containsKey('dimensionName')
              ? _json['dimensionName'] as core.String
              : null,
          dimensionValue: _json.containsKey('dimensionValue')
              ? _json['dimensionValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (dimensionValue != null) 'dimensionValue': dimensionValue!,
      };
}

/// Current state of all quotas for this Analytics Property.
///
/// If any quota for a property is exhausted, all requests to that property will
/// return Resource Exhausted errors.
class PropertyQuota {
  /// Standard Analytics Properties can send up to 10 concurrent requests;
  /// Analytics 360 Properties can use up to 50 concurrent requests.
  QuotaStatus? concurrentRequests;

  /// Analytics Properties can send up to 120 requests with potentially
  /// thresholded dimensions per hour.
  ///
  /// In a batch request, each report request is individually counted for this
  /// quota if the request contains potentially thresholded dimensions.
  QuotaStatus? potentiallyThresholdedRequestsPerHour;

  /// Standard Analytics Properties and cloud project pairs can have up to 10
  /// server errors per hour; Analytics 360 Properties and cloud project pairs
  /// can have up to 50 server errors per hour.
  QuotaStatus? serverErrorsPerProjectPerHour;

  /// Standard Analytics Properties can use up to 25,000 tokens per day;
  /// Analytics 360 Properties can use 250,000 tokens per day.
  ///
  /// Most requests consume fewer than 10 tokens.
  QuotaStatus? tokensPerDay;

  /// Standard Analytics Properties can use up to 5,000 tokens per hour;
  /// Analytics 360 Properties can use 50,000 tokens per hour.
  ///
  /// An API request consumes a single number of tokens, and that number is
  /// deducted from both the hourly and daily quotas.
  QuotaStatus? tokensPerHour;

  PropertyQuota({
    this.concurrentRequests,
    this.potentiallyThresholdedRequestsPerHour,
    this.serverErrorsPerProjectPerHour,
    this.tokensPerDay,
    this.tokensPerHour,
  });

  PropertyQuota.fromJson(core.Map _json)
      : this(
          concurrentRequests: _json.containsKey('concurrentRequests')
              ? QuotaStatus.fromJson(_json['concurrentRequests']
                  as core.Map<core.String, core.dynamic>)
              : null,
          potentiallyThresholdedRequestsPerHour:
              _json.containsKey('potentiallyThresholdedRequestsPerHour')
                  ? QuotaStatus.fromJson(
                      _json['potentiallyThresholdedRequestsPerHour']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          serverErrorsPerProjectPerHour:
              _json.containsKey('serverErrorsPerProjectPerHour')
                  ? QuotaStatus.fromJson(_json['serverErrorsPerProjectPerHour']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          tokensPerDay: _json.containsKey('tokensPerDay')
              ? QuotaStatus.fromJson(
                  _json['tokensPerDay'] as core.Map<core.String, core.dynamic>)
              : null,
          tokensPerHour: _json.containsKey('tokensPerHour')
              ? QuotaStatus.fromJson(
                  _json['tokensPerHour'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (concurrentRequests != null)
          'concurrentRequests': concurrentRequests!,
        if (potentiallyThresholdedRequestsPerHour != null)
          'potentiallyThresholdedRequestsPerHour':
              potentiallyThresholdedRequestsPerHour!,
        if (serverErrorsPerProjectPerHour != null)
          'serverErrorsPerProjectPerHour': serverErrorsPerProjectPerHour!,
        if (tokensPerDay != null) 'tokensPerDay': tokensPerDay!,
        if (tokensPerHour != null) 'tokensPerHour': tokensPerHour!,
      };
}

/// Current state for a particular quota group.
class QuotaStatus {
  /// Quota consumed by this request.
  core.int? consumed;

  /// Quota remaining after this request.
  core.int? remaining;

  QuotaStatus({
    this.consumed,
    this.remaining,
  });

  QuotaStatus.fromJson(core.Map _json)
      : this(
          consumed: _json.containsKey('consumed')
              ? _json['consumed'] as core.int
              : null,
          remaining: _json.containsKey('remaining')
              ? _json['remaining'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumed != null) 'consumed': consumed!,
        if (remaining != null) 'remaining': remaining!,
      };
}

/// Response's metadata carrying additional information about the report
/// content.
class ResponseMetaData {
  /// The currency code used in this report.
  ///
  /// Intended to be used in formatting currency metrics like `purchaseRevenue`
  /// for visualization. If currency_code was specified in the request, this
  /// response parameter will echo the request parameter; otherwise, this
  /// response parameter is the property's current currency_code. Currency codes
  /// are string encodings of currency types from the ISO 4217 standard
  /// (https://en.wikipedia.org/wiki/ISO_4217); for example "USD", "EUR", "JPY".
  /// To learn more, see https://support.google.com/analytics/answer/9796179.
  core.String? currencyCode;

  /// If true, indicates some buckets of dimension combinations are rolled into
  /// "(other)" row.
  ///
  /// This can happen for high cardinality reports.
  core.bool? dataLossFromOtherRow;

  /// If empty reason is specified, the report is empty for this reason.
  core.String? emptyReason;

  /// Describes the schema restrictions actively enforced in creating this
  /// report.
  ///
  /// To learn more, see \[Access and data-restriction
  /// management\](https://support.google.com/analytics/answer/10851388).
  SchemaRestrictionResponse? schemaRestrictionResponse;

  /// If `thresholdingApplied` is true, this report has thresholding applied and
  /// only returns data that meets the minimum aggregation thresholds.
  ///
  /// This boolean only indicates if thresholding was applied. It is possible
  /// for thresholding to be applied and no data is absent from the report, and
  /// this happens when all data is above the thresholds. To learn more, see
  /// [Data thresholds](https://support.google.com/analytics/answer/9383630) and
  /// [About Demographics and Interests](https://support.google.com/analytics/answer/2799357).
  core.bool? thresholdingApplied;

  /// The property's current timezone.
  ///
  /// Intended to be used to interpret time-based dimensions like `hour` and
  /// `minute`. Formatted as strings from the IANA Time Zone database
  /// (https://www.iana.org/time-zones); for example "America/New_York" or
  /// "Asia/Tokyo".
  core.String? timeZone;

  ResponseMetaData({
    this.currencyCode,
    this.dataLossFromOtherRow,
    this.emptyReason,
    this.schemaRestrictionResponse,
    this.thresholdingApplied,
    this.timeZone,
  });

  ResponseMetaData.fromJson(core.Map _json)
      : this(
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          dataLossFromOtherRow: _json.containsKey('dataLossFromOtherRow')
              ? _json['dataLossFromOtherRow'] as core.bool
              : null,
          emptyReason: _json.containsKey('emptyReason')
              ? _json['emptyReason'] as core.String
              : null,
          schemaRestrictionResponse:
              _json.containsKey('schemaRestrictionResponse')
                  ? SchemaRestrictionResponse.fromJson(
                      _json['schemaRestrictionResponse']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          thresholdingApplied: _json.containsKey('thresholdingApplied')
              ? _json['thresholdingApplied'] as core.bool
              : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (dataLossFromOtherRow != null)
          'dataLossFromOtherRow': dataLossFromOtherRow!,
        if (emptyReason != null) 'emptyReason': emptyReason!,
        if (schemaRestrictionResponse != null)
          'schemaRestrictionResponse': schemaRestrictionResponse!,
        if (thresholdingApplied != null)
          'thresholdingApplied': thresholdingApplied!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Report data for each row.
///
/// For example if RunReportRequest contains: ```none "dimensions": [ { "name":
/// "eventName" }, { "name": "countryId" } ], "metrics": [ { "name":
/// "eventCount" } ] ``` One row with 'in_app_purchase' as the eventName, 'JP'
/// as the countryId, and 15 as the eventCount, would be: ```none
/// "dimensionValues": [ { "value": "in_app_purchase" }, { "value": "JP" } ],
/// "metricValues": [ { "value": "15" } ] ```
class Row {
  /// List of requested dimension values.
  ///
  /// In a PivotReport, dimension_values are only listed for dimensions included
  /// in a pivot.
  core.List<DimensionValue>? dimensionValues;

  /// List of requested visible metric values.
  core.List<MetricValue>? metricValues;

  Row({
    this.dimensionValues,
    this.metricValues,
  });

  Row.fromJson(core.Map _json)
      : this(
          dimensionValues: _json.containsKey('dimensionValues')
              ? (_json['dimensionValues'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metricValues: _json.containsKey('metricValues')
              ? (_json['metricValues'] as core.List)
                  .map((value) => MetricValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionValues != null) 'dimensionValues': dimensionValues!,
        if (metricValues != null) 'metricValues': metricValues!,
      };
}

/// The request to generate a pivot report.
class RunPivotReportRequest {
  /// Cohort group associated with this request.
  ///
  /// If there is a cohort group in the request the 'cohort' dimension must be
  /// present.
  CohortSpec? cohortSpec;

  /// A currency code in ISO4217 format, such as "AED", "USD", "JPY".
  ///
  /// If the field is empty, the report uses the property's default currency.
  core.String? currencyCode;

  /// The date range to retrieve event data for the report.
  ///
  /// If multiple date ranges are specified, event data from each date range is
  /// used in the report. A special dimension with field name "dateRange" can be
  /// included in a Pivot's field names; if included, the report compares
  /// between date ranges. In a cohort request, this `dateRanges` must be
  /// unspecified.
  core.List<DateRange>? dateRanges;

  /// The filter clause of dimensions.
  ///
  /// Dimensions must be requested to be used in this filter. Metrics cannot be
  /// used in this filter.
  FilterExpression? dimensionFilter;

  /// The dimensions requested.
  ///
  /// All defined dimensions must be used by one of the following:
  /// dimension_expression, dimension_filter, pivots, order_bys.
  core.List<Dimension>? dimensions;

  /// If false or unspecified, each row with all metrics equal to 0 will not be
  /// returned.
  ///
  /// If true, these rows will be returned if they are not separately removed by
  /// a filter.
  core.bool? keepEmptyRows;

  /// The filter clause of metrics.
  ///
  /// Applied at post aggregation phase, similar to SQL having-clause. Metrics
  /// must be requested to be used in this filter. Dimensions cannot be used in
  /// this filter.
  FilterExpression? metricFilter;

  /// The metrics requested, at least one metric needs to be specified.
  ///
  /// All defined metrics must be used by one of the following:
  /// metric_expression, metric_filter, order_bys.
  core.List<Metric>? metrics;

  /// Describes the visual format of the report's dimensions in columns or rows.
  ///
  /// The union of the fieldNames (dimension names) in all pivots must be a
  /// subset of dimension names defined in Dimensions. No two pivots can share a
  /// dimension. A dimension is only visible if it appears in a pivot.
  core.List<Pivot>? pivots;

  /// A Google Analytics GA4 property identifier whose events are tracked.
  ///
  /// Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// Within a batch request, this property should either be unspecified or
  /// consistent with the batch-level property. Example: properties/1234
  core.String? property;

  /// Toggles whether to return the current state of this Analytics Property's
  /// quota.
  ///
  /// Quota is returned in \[PropertyQuota\](#PropertyQuota).
  core.bool? returnPropertyQuota;

  RunPivotReportRequest({
    this.cohortSpec,
    this.currencyCode,
    this.dateRanges,
    this.dimensionFilter,
    this.dimensions,
    this.keepEmptyRows,
    this.metricFilter,
    this.metrics,
    this.pivots,
    this.property,
    this.returnPropertyQuota,
  });

  RunPivotReportRequest.fromJson(core.Map _json)
      : this(
          cohortSpec: _json.containsKey('cohortSpec')
              ? CohortSpec.fromJson(
                  _json['cohortSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          dateRanges: _json.containsKey('dateRanges')
              ? (_json['dateRanges'] as core.List)
                  .map((value) => DateRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensionFilter: _json.containsKey('dimensionFilter')
              ? FilterExpression.fromJson(_json['dimensionFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dimensions: _json.containsKey('dimensions')
              ? (_json['dimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          keepEmptyRows: _json.containsKey('keepEmptyRows')
              ? _json['keepEmptyRows'] as core.bool
              : null,
          metricFilter: _json.containsKey('metricFilter')
              ? FilterExpression.fromJson(
                  _json['metricFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pivots: _json.containsKey('pivots')
              ? (_json['pivots'] as core.List)
                  .map((value) => Pivot.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          property: _json.containsKey('property')
              ? _json['property'] as core.String
              : null,
          returnPropertyQuota: _json.containsKey('returnPropertyQuota')
              ? _json['returnPropertyQuota'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cohortSpec != null) 'cohortSpec': cohortSpec!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (dateRanges != null) 'dateRanges': dateRanges!,
        if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (keepEmptyRows != null) 'keepEmptyRows': keepEmptyRows!,
        if (metricFilter != null) 'metricFilter': metricFilter!,
        if (metrics != null) 'metrics': metrics!,
        if (pivots != null) 'pivots': pivots!,
        if (property != null) 'property': property!,
        if (returnPropertyQuota != null)
          'returnPropertyQuota': returnPropertyQuota!,
      };
}

/// The response pivot report table corresponding to a pivot request.
class RunPivotReportResponse {
  /// Aggregation of metric values.
  ///
  /// Can be totals, minimums, or maximums. The returned aggregations are
  /// controlled by the metric_aggregations in the pivot. The type of
  /// aggregation returned in each row is shown by the dimension_values which
  /// are set to "RESERVED_".
  core.List<Row>? aggregates;

  /// Describes dimension columns.
  ///
  /// The number of DimensionHeaders and ordering of DimensionHeaders matches
  /// the dimensions present in rows.
  core.List<DimensionHeader>? dimensionHeaders;

  /// Identifies what kind of resource this message is.
  ///
  /// This `kind` is always the fixed string "analyticsData#runPivotReport".
  /// Useful to distinguish between response types in JSON.
  core.String? kind;

  /// Metadata for the report.
  ResponseMetaData? metadata;

  /// Describes metric columns.
  ///
  /// The number of MetricHeaders and ordering of MetricHeaders matches the
  /// metrics present in rows.
  core.List<MetricHeader>? metricHeaders;

  /// Summarizes the columns and rows created by a pivot.
  ///
  /// Each pivot in the request produces one header in the response. If we have
  /// a request like this: "pivots": \[{ "fieldNames": \["country", "city"\] },
  /// { "fieldNames": "eventName" }\] We will have the following `pivotHeaders`
  /// in the response: "pivotHeaders" : \[{ "dimensionHeaders": \[{
  /// "dimensionValues": \[ { "value": "United Kingdom" }, { "value": "London" }
  /// \] }, { "dimensionValues": \[ { "value": "Japan" }, { "value": "Osaka" }
  /// \] }\] }, { "dimensionHeaders": \[{ "dimensionValues": \[{ "value":
  /// "session_start" }\] }, { "dimensionValues": \[{ "value": "scroll" }\] }\]
  /// }\]
  core.List<PivotHeader>? pivotHeaders;

  /// This Analytics Property's quota state including this request.
  PropertyQuota? propertyQuota;

  /// Rows of dimension value combinations and metric values in the report.
  core.List<Row>? rows;

  RunPivotReportResponse({
    this.aggregates,
    this.dimensionHeaders,
    this.kind,
    this.metadata,
    this.metricHeaders,
    this.pivotHeaders,
    this.propertyQuota,
    this.rows,
  });

  RunPivotReportResponse.fromJson(core.Map _json)
      : this(
          aggregates: _json.containsKey('aggregates')
              ? (_json['aggregates'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensionHeaders: _json.containsKey('dimensionHeaders')
              ? (_json['dimensionHeaders'] as core.List)
                  .map((value) => DimensionHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ResponseMetaData.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          metricHeaders: _json.containsKey('metricHeaders')
              ? (_json['metricHeaders'] as core.List)
                  .map((value) => MetricHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pivotHeaders: _json.containsKey('pivotHeaders')
              ? (_json['pivotHeaders'] as core.List)
                  .map((value) => PivotHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          propertyQuota: _json.containsKey('propertyQuota')
              ? PropertyQuota.fromJson(
                  _json['propertyQuota'] as core.Map<core.String, core.dynamic>)
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregates != null) 'aggregates': aggregates!,
        if (dimensionHeaders != null) 'dimensionHeaders': dimensionHeaders!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (metricHeaders != null) 'metricHeaders': metricHeaders!,
        if (pivotHeaders != null) 'pivotHeaders': pivotHeaders!,
        if (propertyQuota != null) 'propertyQuota': propertyQuota!,
        if (rows != null) 'rows': rows!,
      };
}

/// The request to generate a realtime report.
class RunRealtimeReportRequest {
  /// The filter clause of dimensions.
  ///
  /// Dimensions must be requested to be used in this filter. Metrics cannot be
  /// used in this filter.
  FilterExpression? dimensionFilter;

  /// The dimensions requested and displayed.
  core.List<Dimension>? dimensions;

  /// The number of rows to return.
  ///
  /// If unspecified, 10,000 rows are returned. The API returns a maximum of
  /// 100,000 rows per request, no matter how many you ask for. `limit` must be
  /// positive. The API can also return fewer rows than the requested `limit`,
  /// if there aren't as many dimension values as the `limit`. For instance,
  /// there are fewer than 300 possible values for the dimension `country`, so
  /// when reporting on only `country`, you can't get more than 300 rows, even
  /// if you set `limit` to a higher value.
  core.String? limit;

  /// Aggregation of metrics.
  ///
  /// Aggregated metric values will be shown in rows where the dimension_values
  /// are set to "RESERVED_(MetricAggregation)".
  core.List<core.String>? metricAggregations;

  /// The filter clause of metrics.
  ///
  /// Applied at post aggregation phase, similar to SQL having-clause. Metrics
  /// must be requested to be used in this filter. Dimensions cannot be used in
  /// this filter.
  FilterExpression? metricFilter;

  /// The metrics requested and displayed.
  core.List<Metric>? metrics;

  /// The minute ranges of event data to read.
  ///
  /// If unspecified, one minute range for the last 30 minutes will be used. If
  /// multiple minute ranges are requested, each response row will contain a
  /// zero based minute range index. If two minute ranges overlap, the event
  /// data for the overlapping minutes is included in the response rows for both
  /// minute ranges.
  core.List<MinuteRange>? minuteRanges;

  /// Specifies how rows are ordered in the response.
  core.List<OrderBy>? orderBys;

  /// Toggles whether to return the current state of this Analytics Property's
  /// Realtime quota.
  ///
  /// Quota is returned in \[PropertyQuota\](#PropertyQuota).
  core.bool? returnPropertyQuota;

  RunRealtimeReportRequest({
    this.dimensionFilter,
    this.dimensions,
    this.limit,
    this.metricAggregations,
    this.metricFilter,
    this.metrics,
    this.minuteRanges,
    this.orderBys,
    this.returnPropertyQuota,
  });

  RunRealtimeReportRequest.fromJson(core.Map _json)
      : this(
          dimensionFilter: _json.containsKey('dimensionFilter')
              ? FilterExpression.fromJson(_json['dimensionFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dimensions: _json.containsKey('dimensions')
              ? (_json['dimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          limit:
              _json.containsKey('limit') ? _json['limit'] as core.String : null,
          metricAggregations: _json.containsKey('metricAggregations')
              ? (_json['metricAggregations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metricFilter: _json.containsKey('metricFilter')
              ? FilterExpression.fromJson(
                  _json['metricFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          minuteRanges: _json.containsKey('minuteRanges')
              ? (_json['minuteRanges'] as core.List)
                  .map((value) => MinuteRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          orderBys: _json.containsKey('orderBys')
              ? (_json['orderBys'] as core.List)
                  .map((value) => OrderBy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          returnPropertyQuota: _json.containsKey('returnPropertyQuota')
              ? _json['returnPropertyQuota'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (limit != null) 'limit': limit!,
        if (metricAggregations != null)
          'metricAggregations': metricAggregations!,
        if (metricFilter != null) 'metricFilter': metricFilter!,
        if (metrics != null) 'metrics': metrics!,
        if (minuteRanges != null) 'minuteRanges': minuteRanges!,
        if (orderBys != null) 'orderBys': orderBys!,
        if (returnPropertyQuota != null)
          'returnPropertyQuota': returnPropertyQuota!,
      };
}

/// The response realtime report table corresponding to a request.
class RunRealtimeReportResponse {
  /// Describes dimension columns.
  ///
  /// The number of DimensionHeaders and ordering of DimensionHeaders matches
  /// the dimensions present in rows.
  core.List<DimensionHeader>? dimensionHeaders;

  /// Identifies what kind of resource this message is.
  ///
  /// This `kind` is always the fixed string "analyticsData#runRealtimeReport".
  /// Useful to distinguish between response types in JSON.
  core.String? kind;

  /// If requested, the maximum values of metrics.
  core.List<Row>? maximums;

  /// Describes metric columns.
  ///
  /// The number of MetricHeaders and ordering of MetricHeaders matches the
  /// metrics present in rows.
  core.List<MetricHeader>? metricHeaders;

  /// If requested, the minimum values of metrics.
  core.List<Row>? minimums;

  /// This Analytics Property's Realtime quota state including this request.
  PropertyQuota? propertyQuota;

  /// The total number of rows in the query result.
  ///
  /// `rowCount` is independent of the number of rows returned in the response
  /// and the `limit` request parameter. For example if a query returns 175 rows
  /// and includes `limit` of 50 in the API request, the response will contain
  /// `rowCount` of 175 but only 50 rows.
  core.int? rowCount;

  /// Rows of dimension value combinations and metric values in the report.
  core.List<Row>? rows;

  /// If requested, the totaled values of metrics.
  core.List<Row>? totals;

  RunRealtimeReportResponse({
    this.dimensionHeaders,
    this.kind,
    this.maximums,
    this.metricHeaders,
    this.minimums,
    this.propertyQuota,
    this.rowCount,
    this.rows,
    this.totals,
  });

  RunRealtimeReportResponse.fromJson(core.Map _json)
      : this(
          dimensionHeaders: _json.containsKey('dimensionHeaders')
              ? (_json['dimensionHeaders'] as core.List)
                  .map((value) => DimensionHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          maximums: _json.containsKey('maximums')
              ? (_json['maximums'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metricHeaders: _json.containsKey('metricHeaders')
              ? (_json['metricHeaders'] as core.List)
                  .map((value) => MetricHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          minimums: _json.containsKey('minimums')
              ? (_json['minimums'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          propertyQuota: _json.containsKey('propertyQuota')
              ? PropertyQuota.fromJson(
                  _json['propertyQuota'] as core.Map<core.String, core.dynamic>)
              : null,
          rowCount: _json.containsKey('rowCount')
              ? _json['rowCount'] as core.int
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totals: _json.containsKey('totals')
              ? (_json['totals'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionHeaders != null) 'dimensionHeaders': dimensionHeaders!,
        if (kind != null) 'kind': kind!,
        if (maximums != null) 'maximums': maximums!,
        if (metricHeaders != null) 'metricHeaders': metricHeaders!,
        if (minimums != null) 'minimums': minimums!,
        if (propertyQuota != null) 'propertyQuota': propertyQuota!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (rows != null) 'rows': rows!,
        if (totals != null) 'totals': totals!,
      };
}

/// The request to generate a report.
class RunReportRequest {
  /// Cohort group associated with this request.
  ///
  /// If there is a cohort group in the request the 'cohort' dimension must be
  /// present.
  CohortSpec? cohortSpec;

  /// A currency code in ISO4217 format, such as "AED", "USD", "JPY".
  ///
  /// If the field is empty, the report uses the property's default currency.
  core.String? currencyCode;

  /// Date ranges of data to read.
  ///
  /// If multiple date ranges are requested, each response row will contain a
  /// zero based date range index. If two date ranges overlap, the event data
  /// for the overlapping days is included in the response rows for both date
  /// ranges. In a cohort request, this `dateRanges` must be unspecified.
  core.List<DateRange>? dateRanges;

  /// Dimension filters allow you to ask for only specific dimension values in
  /// the report.
  ///
  /// To learn more, see
  /// [Fundamentals of Dimension Filters](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#dimension_filters)
  /// for examples. Metrics cannot be used in this filter.
  FilterExpression? dimensionFilter;

  /// The dimensions requested and displayed.
  core.List<Dimension>? dimensions;

  /// If false or unspecified, each row with all metrics equal to 0 will not be
  /// returned.
  ///
  /// If true, these rows will be returned if they are not separately removed by
  /// a filter.
  core.bool? keepEmptyRows;

  /// The number of rows to return.
  ///
  /// If unspecified, 10,000 rows are returned. The API returns a maximum of
  /// 100,000 rows per request, no matter how many you ask for. `limit` must be
  /// positive. The API can also return fewer rows than the requested `limit`,
  /// if there aren't as many dimension values as the `limit`. For instance,
  /// there are fewer than 300 possible values for the dimension `country`, so
  /// when reporting on only `country`, you can't get more than 300 rows, even
  /// if you set `limit` to a higher value. To learn more about this pagination
  /// parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  core.String? limit;

  /// Aggregation of metrics.
  ///
  /// Aggregated metric values will be shown in rows where the dimension_values
  /// are set to "RESERVED_(MetricAggregation)".
  core.List<core.String>? metricAggregations;

  /// The filter clause of metrics.
  ///
  /// Applied at post aggregation phase, similar to SQL having-clause.
  /// Dimensions cannot be used in this filter.
  FilterExpression? metricFilter;

  /// The metrics requested and displayed.
  core.List<Metric>? metrics;

  /// The row count of the start row.
  ///
  /// The first row is counted as row 0. When paging, the first request does not
  /// specify offset; or equivalently, sets offset to 0; the first request
  /// returns the first `limit` of rows. The second request sets offset to the
  /// `limit` of the first request; the second request returns the second
  /// `limit` of rows. To learn more about this pagination parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  core.String? offset;

  /// Specifies how rows are ordered in the response.
  core.List<OrderBy>? orderBys;

  /// A Google Analytics GA4 property identifier whose events are tracked.
  ///
  /// Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// Within a batch request, this property should either be unspecified or
  /// consistent with the batch-level property. Example: properties/1234
  core.String? property;

  /// Toggles whether to return the current state of this Analytics Property's
  /// quota.
  ///
  /// Quota is returned in \[PropertyQuota\](#PropertyQuota).
  core.bool? returnPropertyQuota;

  RunReportRequest({
    this.cohortSpec,
    this.currencyCode,
    this.dateRanges,
    this.dimensionFilter,
    this.dimensions,
    this.keepEmptyRows,
    this.limit,
    this.metricAggregations,
    this.metricFilter,
    this.metrics,
    this.offset,
    this.orderBys,
    this.property,
    this.returnPropertyQuota,
  });

  RunReportRequest.fromJson(core.Map _json)
      : this(
          cohortSpec: _json.containsKey('cohortSpec')
              ? CohortSpec.fromJson(
                  _json['cohortSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          dateRanges: _json.containsKey('dateRanges')
              ? (_json['dateRanges'] as core.List)
                  .map((value) => DateRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensionFilter: _json.containsKey('dimensionFilter')
              ? FilterExpression.fromJson(_json['dimensionFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dimensions: _json.containsKey('dimensions')
              ? (_json['dimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          keepEmptyRows: _json.containsKey('keepEmptyRows')
              ? _json['keepEmptyRows'] as core.bool
              : null,
          limit:
              _json.containsKey('limit') ? _json['limit'] as core.String : null,
          metricAggregations: _json.containsKey('metricAggregations')
              ? (_json['metricAggregations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metricFilter: _json.containsKey('metricFilter')
              ? FilterExpression.fromJson(
                  _json['metricFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          offset: _json.containsKey('offset')
              ? _json['offset'] as core.String
              : null,
          orderBys: _json.containsKey('orderBys')
              ? (_json['orderBys'] as core.List)
                  .map((value) => OrderBy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          property: _json.containsKey('property')
              ? _json['property'] as core.String
              : null,
          returnPropertyQuota: _json.containsKey('returnPropertyQuota')
              ? _json['returnPropertyQuota'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cohortSpec != null) 'cohortSpec': cohortSpec!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (dateRanges != null) 'dateRanges': dateRanges!,
        if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (keepEmptyRows != null) 'keepEmptyRows': keepEmptyRows!,
        if (limit != null) 'limit': limit!,
        if (metricAggregations != null)
          'metricAggregations': metricAggregations!,
        if (metricFilter != null) 'metricFilter': metricFilter!,
        if (metrics != null) 'metrics': metrics!,
        if (offset != null) 'offset': offset!,
        if (orderBys != null) 'orderBys': orderBys!,
        if (property != null) 'property': property!,
        if (returnPropertyQuota != null)
          'returnPropertyQuota': returnPropertyQuota!,
      };
}

/// The response report table corresponding to a request.
class RunReportResponse {
  /// Describes dimension columns.
  ///
  /// The number of DimensionHeaders and ordering of DimensionHeaders matches
  /// the dimensions present in rows.
  core.List<DimensionHeader>? dimensionHeaders;

  /// Identifies what kind of resource this message is.
  ///
  /// This `kind` is always the fixed string "analyticsData#runReport". Useful
  /// to distinguish between response types in JSON.
  core.String? kind;

  /// If requested, the maximum values of metrics.
  core.List<Row>? maximums;

  /// Metadata for the report.
  ResponseMetaData? metadata;

  /// Describes metric columns.
  ///
  /// The number of MetricHeaders and ordering of MetricHeaders matches the
  /// metrics present in rows.
  core.List<MetricHeader>? metricHeaders;

  /// If requested, the minimum values of metrics.
  core.List<Row>? minimums;

  /// This Analytics Property's quota state including this request.
  PropertyQuota? propertyQuota;

  /// The total number of rows in the query result.
  ///
  /// `rowCount` is independent of the number of rows returned in the response,
  /// the `limit` request parameter, and the `offset` request parameter. For
  /// example if a query returns 175 rows and includes `limit` of 50 in the API
  /// request, the response will contain `rowCount` of 175 but only 50 rows. To
  /// learn more about this pagination parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  core.int? rowCount;

  /// Rows of dimension value combinations and metric values in the report.
  core.List<Row>? rows;

  /// If requested, the totaled values of metrics.
  core.List<Row>? totals;

  RunReportResponse({
    this.dimensionHeaders,
    this.kind,
    this.maximums,
    this.metadata,
    this.metricHeaders,
    this.minimums,
    this.propertyQuota,
    this.rowCount,
    this.rows,
    this.totals,
  });

  RunReportResponse.fromJson(core.Map _json)
      : this(
          dimensionHeaders: _json.containsKey('dimensionHeaders')
              ? (_json['dimensionHeaders'] as core.List)
                  .map((value) => DimensionHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          maximums: _json.containsKey('maximums')
              ? (_json['maximums'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? ResponseMetaData.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          metricHeaders: _json.containsKey('metricHeaders')
              ? (_json['metricHeaders'] as core.List)
                  .map((value) => MetricHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          minimums: _json.containsKey('minimums')
              ? (_json['minimums'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          propertyQuota: _json.containsKey('propertyQuota')
              ? PropertyQuota.fromJson(
                  _json['propertyQuota'] as core.Map<core.String, core.dynamic>)
              : null,
          rowCount: _json.containsKey('rowCount')
              ? _json['rowCount'] as core.int
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totals: _json.containsKey('totals')
              ? (_json['totals'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionHeaders != null) 'dimensionHeaders': dimensionHeaders!,
        if (kind != null) 'kind': kind!,
        if (maximums != null) 'maximums': maximums!,
        if (metadata != null) 'metadata': metadata!,
        if (metricHeaders != null) 'metricHeaders': metricHeaders!,
        if (minimums != null) 'minimums': minimums!,
        if (propertyQuota != null) 'propertyQuota': propertyQuota!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (rows != null) 'rows': rows!,
        if (totals != null) 'totals': totals!,
      };
}

/// The schema restrictions actively enforced in creating this report.
///
/// To learn more, see \[Access and data-restriction
/// management\](https://support.google.com/analytics/answer/10851388).
class SchemaRestrictionResponse {
  /// All restrictions actively enforced in creating the report.
  ///
  /// For example, `purchaseRevenue` always has the restriction type
  /// `REVENUE_DATA`. However, this active response restriction is only
  /// populated if the user's custom role disallows access to `REVENUE_DATA`.
  core.List<ActiveMetricRestriction>? activeMetricRestrictions;

  SchemaRestrictionResponse({
    this.activeMetricRestrictions,
  });

  SchemaRestrictionResponse.fromJson(core.Map _json)
      : this(
          activeMetricRestrictions:
              _json.containsKey('activeMetricRestrictions')
                  ? (_json['activeMetricRestrictions'] as core.List)
                      .map((value) => ActiveMetricRestriction.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeMetricRestrictions != null)
          'activeMetricRestrictions': activeMetricRestrictions!,
      };
}

/// The filter for string
class StringFilter {
  /// If true, the string value is case sensitive.
  core.bool? caseSensitive;

  /// The match type for this filter.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Unspecified
  /// - "EXACT" : Exact match of the string value.
  /// - "BEGINS_WITH" : Begins with the string value.
  /// - "ENDS_WITH" : Ends with the string value.
  /// - "CONTAINS" : Contains the string value.
  /// - "FULL_REGEXP" : Full regular expression match with the string value.
  /// - "PARTIAL_REGEXP" : Partial regular expression match with the string
  /// value.
  core.String? matchType;

  /// The string value used for the matching.
  core.String? value;

  StringFilter({
    this.caseSensitive,
    this.matchType,
    this.value,
  });

  StringFilter.fromJson(core.Map _json)
      : this(
          caseSensitive: _json.containsKey('caseSensitive')
              ? _json['caseSensitive'] as core.bool
              : null,
          matchType: _json.containsKey('matchType')
              ? _json['matchType'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (matchType != null) 'matchType': matchType!,
        if (value != null) 'value': value!,
      };
}
