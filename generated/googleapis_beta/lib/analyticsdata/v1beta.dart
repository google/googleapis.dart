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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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

/// The batch request containing multiple pivot report requests.
class BatchRunPivotReportsRequest {
  /// Individual requests.
  ///
  /// Each request has a separate pivot report response. Each batch request is
  /// allowed up to 5 requests.
  core.List<RunPivotReportRequest>? requests;

  BatchRunPivotReportsRequest();

  BatchRunPivotReportsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('requests')) {
      requests = (_json['requests'] as core.List)
          .map<RunPivotReportRequest>((value) => RunPivotReportRequest.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null)
          'requests': requests!.map((value) => value.toJson()).toList(),
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

  BatchRunPivotReportsResponse();

  BatchRunPivotReportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('pivotReports')) {
      pivotReports = (_json['pivotReports'] as core.List)
          .map<RunPivotReportResponse>((value) =>
              RunPivotReportResponse.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (pivotReports != null)
          'pivotReports': pivotReports!.map((value) => value.toJson()).toList(),
      };
}

/// The batch request containing multiple report requests.
class BatchRunReportsRequest {
  /// Individual requests.
  ///
  /// Each request has a separate report response. Each batch request is allowed
  /// up to 5 requests.
  core.List<RunReportRequest>? requests;

  BatchRunReportsRequest();

  BatchRunReportsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('requests')) {
      requests = (_json['requests'] as core.List)
          .map<RunReportRequest>((value) => RunReportRequest.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null)
          'requests': requests!.map((value) => value.toJson()).toList(),
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

  BatchRunReportsResponse();

  BatchRunReportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('reports')) {
      reports = (_json['reports'] as core.List)
          .map<RunReportResponse>((value) => RunReportResponse.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (reports != null)
          'reports': reports!.map((value) => value.toJson()).toList(),
      };
}

/// To express that the result needs to be between two numbers (inclusive).
class BetweenFilter {
  /// Begins with this number.
  NumericValue? fromValue;

  /// Ends with this number.
  NumericValue? toValue;

  BetweenFilter();

  BetweenFilter.fromJson(core.Map _json) {
    if (_json.containsKey('fromValue')) {
      fromValue = NumericValue.fromJson(
          _json['fromValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('toValue')) {
      toValue = NumericValue.fromJson(
          _json['toValue'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (fromValue != null) 'fromValue': fromValue!.toJson(),
        if (toValue != null) 'toValue': toValue!.toJson(),
      };
}

/// Used to convert a dimension value to a single case.
class CaseExpression {
  /// Name of a dimension.
  ///
  /// The name must refer back to a name in dimensions field of the request.
  core.String? dimensionName;

  CaseExpression();

  CaseExpression.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionName')) {
      dimensionName = _json['dimensionName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
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

  Cohort();

  Cohort.fromJson(core.Map _json) {
    if (_json.containsKey('dateRange')) {
      dateRange = DateRange.fromJson(
          _json['dateRange'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dimension')) {
      dimension = _json['dimension'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!.toJson(),
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

  CohortReportSettings();

  CohortReportSettings.fromJson(core.Map _json) {
    if (_json.containsKey('accumulate')) {
      accumulate = _json['accumulate'] as core.bool;
    }
  }

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

  CohortSpec();

  CohortSpec.fromJson(core.Map _json) {
    if (_json.containsKey('cohortReportSettings')) {
      cohortReportSettings = CohortReportSettings.fromJson(
          _json['cohortReportSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('cohorts')) {
      cohorts = (_json['cohorts'] as core.List)
          .map<Cohort>((value) =>
              Cohort.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('cohortsRange')) {
      cohortsRange = CohortsRange.fromJson(
          _json['cohortsRange'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cohortReportSettings != null)
          'cohortReportSettings': cohortReportSettings!.toJson(),
        if (cohorts != null)
          'cohorts': cohorts!.map((value) => value.toJson()).toList(),
        if (cohortsRange != null) 'cohortsRange': cohortsRange!.toJson(),
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

  CohortsRange();

  CohortsRange.fromJson(core.Map _json) {
    if (_json.containsKey('endOffset')) {
      endOffset = _json['endOffset'] as core.int;
    }
    if (_json.containsKey('granularity')) {
      granularity = _json['granularity'] as core.String;
    }
    if (_json.containsKey('startOffset')) {
      startOffset = _json['startOffset'] as core.int;
    }
  }

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

  ConcatenateExpression();

  ConcatenateExpression.fromJson(core.Map _json) {
    if (_json.containsKey('delimiter')) {
      delimiter = _json['delimiter'] as core.String;
    }
    if (_json.containsKey('dimensionNames')) {
      dimensionNames = (_json['dimensionNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

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

  DateRange();

  DateRange.fromJson(core.Map _json) {
    if (_json.containsKey('endDate')) {
      endDate = _json['endDate'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('startDate')) {
      startDate = _json['startDate'] as core.String;
    }
  }

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
  /// that you choose must match the regular expression "^\[a-zA-Z0-9_\]$".
  /// Dimensions are referenced by `name` in `dimensionFilter`, `orderBys`,
  /// `dimensionExpression`, and `pivots`.
  core.String? name;

  Dimension();

  Dimension.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionExpression')) {
      dimensionExpression = DimensionExpression.fromJson(
          _json['dimensionExpression'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionExpression != null)
          'dimensionExpression': dimensionExpression!.toJson(),
        if (name != null) 'name': name!,
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

  DimensionExpression();

  DimensionExpression.fromJson(core.Map _json) {
    if (_json.containsKey('concatenate')) {
      concatenate = ConcatenateExpression.fromJson(
          _json['concatenate'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('lowerCase')) {
      lowerCase = CaseExpression.fromJson(
          _json['lowerCase'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('upperCase')) {
      upperCase = CaseExpression.fromJson(
          _json['upperCase'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (concatenate != null) 'concatenate': concatenate!.toJson(),
        if (lowerCase != null) 'lowerCase': lowerCase!.toJson(),
        if (upperCase != null) 'upperCase': upperCase!.toJson(),
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

  DimensionHeader();

  DimensionHeader.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

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

  DimensionMetadata();

  DimensionMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiName')) {
      apiName = _json['apiName'] as core.String;
    }
    if (_json.containsKey('customDefinition')) {
      customDefinition = _json['customDefinition'] as core.bool;
    }
    if (_json.containsKey('deprecatedApiNames')) {
      deprecatedApiNames = (_json['deprecatedApiNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('uiName')) {
      uiName = _json['uiName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiName != null) 'apiName': apiName!,
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
  /// "2" < "A" < "X" < "b" < "z".
  /// - "CASE_INSENSITIVE_ALPHANUMERIC" : Case insensitive alphanumeric sort by
  /// lower case Unicode code point. For example, "2" < "A" < "b" < "X" < "z".
  /// - "NUMERIC" : Dimension values are converted to numbers before sorting.
  /// For example in NUMERIC sort, "25" < "100", and in `ALPHANUMERIC` sort,
  /// "100" < "25". Non-numeric dimension values all have equal ordering value
  /// below all numeric values.
  core.String? orderType;

  DimensionOrderBy();

  DimensionOrderBy.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionName')) {
      dimensionName = _json['dimensionName'] as core.String;
    }
    if (_json.containsKey('orderType')) {
      orderType = _json['orderType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (orderType != null) 'orderType': orderType!,
      };
}

/// The value of a dimension.
class DimensionValue {
  /// Value as a string if the dimension type is a string.
  core.String? value;

  DimensionValue();

  DimensionValue.fromJson(core.Map _json) {
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

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

  Filter();

  Filter.fromJson(core.Map _json) {
    if (_json.containsKey('betweenFilter')) {
      betweenFilter = BetweenFilter.fromJson(
          _json['betweenFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fieldName')) {
      fieldName = _json['fieldName'] as core.String;
    }
    if (_json.containsKey('inListFilter')) {
      inListFilter = InListFilter.fromJson(
          _json['inListFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('numericFilter')) {
      numericFilter = NumericFilter.fromJson(
          _json['numericFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('stringFilter')) {
      stringFilter = StringFilter.fromJson(
          _json['stringFilter'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (betweenFilter != null) 'betweenFilter': betweenFilter!.toJson(),
        if (fieldName != null) 'fieldName': fieldName!,
        if (inListFilter != null) 'inListFilter': inListFilter!.toJson(),
        if (numericFilter != null) 'numericFilter': numericFilter!.toJson(),
        if (stringFilter != null) 'stringFilter': stringFilter!.toJson(),
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

  FilterExpression();

  FilterExpression.fromJson(core.Map _json) {
    if (_json.containsKey('andGroup')) {
      andGroup = FilterExpressionList.fromJson(
          _json['andGroup'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('filter')) {
      filter = Filter.fromJson(
          _json['filter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('notExpression')) {
      notExpression = FilterExpression.fromJson(
          _json['notExpression'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('orGroup')) {
      orGroup = FilterExpressionList.fromJson(
          _json['orGroup'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (andGroup != null) 'andGroup': andGroup!.toJson(),
        if (filter != null) 'filter': filter!.toJson(),
        if (notExpression != null) 'notExpression': notExpression!.toJson(),
        if (orGroup != null) 'orGroup': orGroup!.toJson(),
      };
}

/// A list of filter expressions.
class FilterExpressionList {
  /// A list of filter expressions.
  core.List<FilterExpression>? expressions;

  FilterExpressionList();

  FilterExpressionList.fromJson(core.Map _json) {
    if (_json.containsKey('expressions')) {
      expressions = (_json['expressions'] as core.List)
          .map<FilterExpression>((value) => FilterExpression.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (expressions != null)
          'expressions': expressions!.map((value) => value.toJson()).toList(),
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

  InListFilter();

  InListFilter.fromJson(core.Map _json) {
    if (_json.containsKey('caseSensitive')) {
      caseSensitive = _json['caseSensitive'] as core.bool;
    }
    if (_json.containsKey('values')) {
      values = (_json['values'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

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

  Metadata();

  Metadata.fromJson(core.Map _json) {
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<DimensionMetadata>((value) => DimensionMetadata.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<MetricMetadata>((value) => MetricMetadata.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensions != null)
          'dimensions': dimensions!.map((value) => value.toJson()).toList(),
        if (metrics != null)
          'metrics': metrics!.map((value) => value.toJson()).toList(),
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
  /// the regular expression "^\[a-zA-Z0-9_\]$". Metrics are referenced by
  /// `name` in `metricFilter`, `orderBys`, and metric `expression`.
  core.String? name;

  Metric();

  Metric.fromJson(core.Map _json) {
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('invisible')) {
      invisible = _json['invisible'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (expression != null) 'expression': expression!,
        if (invisible != null) 'invisible': invisible!,
        if (name != null) 'name': name!,
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

  MetricHeader();

  MetricHeader.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

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

  MetricMetadata();

  MetricMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiName')) {
      apiName = _json['apiName'] as core.String;
    }
    if (_json.containsKey('customDefinition')) {
      customDefinition = _json['customDefinition'] as core.bool;
    }
    if (_json.containsKey('deprecatedApiNames')) {
      deprecatedApiNames = (_json['deprecatedApiNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('uiName')) {
      uiName = _json['uiName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiName != null) 'apiName': apiName!,
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

  MetricOrderBy();

  MetricOrderBy.fromJson(core.Map _json) {
    if (_json.containsKey('metricName')) {
      metricName = _json['metricName'] as core.String;
    }
  }

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

  MetricValue();

  MetricValue.fromJson(core.Map _json) {
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
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

  NumericFilter();

  NumericFilter.fromJson(core.Map _json) {
    if (_json.containsKey('operation')) {
      operation = _json['operation'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = NumericValue.fromJson(
          _json['value'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
        if (value != null) 'value': value!.toJson(),
      };
}

/// To represent a number.
class NumericValue {
  /// Double value
  core.double? doubleValue;

  /// Integer value
  core.String? int64Value;

  NumericValue();

  NumericValue.fromJson(core.Map _json) {
    if (_json.containsKey('doubleValue')) {
      doubleValue = (_json['doubleValue'] as core.num).toDouble();
    }
    if (_json.containsKey('int64Value')) {
      int64Value = _json['int64Value'] as core.String;
    }
  }

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

  OrderBy();

  OrderBy.fromJson(core.Map _json) {
    if (_json.containsKey('desc')) {
      desc = _json['desc'] as core.bool;
    }
    if (_json.containsKey('dimension')) {
      dimension = DimensionOrderBy.fromJson(
          _json['dimension'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metric')) {
      metric = MetricOrderBy.fromJson(
          _json['metric'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pivot')) {
      pivot = PivotOrderBy.fromJson(
          _json['pivot'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (desc != null) 'desc': desc!,
        if (dimension != null) 'dimension': dimension!.toJson(),
        if (metric != null) 'metric': metric!.toJson(),
        if (pivot != null) 'pivot': pivot!.toJson(),
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

  Pivot();

  Pivot.fromJson(core.Map _json) {
    if (_json.containsKey('fieldNames')) {
      fieldNames = (_json['fieldNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('limit')) {
      limit = _json['limit'] as core.String;
    }
    if (_json.containsKey('metricAggregations')) {
      metricAggregations = (_json['metricAggregations'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('offset')) {
      offset = _json['offset'] as core.String;
    }
    if (_json.containsKey('orderBys')) {
      orderBys = (_json['orderBys'] as core.List)
          .map<OrderBy>((value) =>
              OrderBy.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldNames != null) 'fieldNames': fieldNames!,
        if (limit != null) 'limit': limit!,
        if (metricAggregations != null)
          'metricAggregations': metricAggregations!,
        if (offset != null) 'offset': offset!,
        if (orderBys != null)
          'orderBys': orderBys!.map((value) => value.toJson()).toList(),
      };
}

/// Summarizes dimension values from a row for this pivot.
class PivotDimensionHeader {
  /// Values of multiple dimensions in a pivot.
  core.List<DimensionValue>? dimensionValues;

  PivotDimensionHeader();

  PivotDimensionHeader.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionValues')) {
      dimensionValues = (_json['dimensionValues'] as core.List)
          .map<DimensionValue>((value) => DimensionValue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionValues != null)
          'dimensionValues':
              dimensionValues!.map((value) => value.toJson()).toList(),
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

  PivotHeader();

  PivotHeader.fromJson(core.Map _json) {
    if (_json.containsKey('pivotDimensionHeaders')) {
      pivotDimensionHeaders = (_json['pivotDimensionHeaders'] as core.List)
          .map<PivotDimensionHeader>((value) => PivotDimensionHeader.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('rowCount')) {
      rowCount = _json['rowCount'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (pivotDimensionHeaders != null)
          'pivotDimensionHeaders':
              pivotDimensionHeaders!.map((value) => value.toJson()).toList(),
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

  PivotOrderBy();

  PivotOrderBy.fromJson(core.Map _json) {
    if (_json.containsKey('metricName')) {
      metricName = _json['metricName'] as core.String;
    }
    if (_json.containsKey('pivotSelections')) {
      pivotSelections = (_json['pivotSelections'] as core.List)
          .map<PivotSelection>((value) => PivotSelection.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
        if (pivotSelections != null)
          'pivotSelections':
              pivotSelections!.map((value) => value.toJson()).toList(),
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

  PivotSelection();

  PivotSelection.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionName')) {
      dimensionName = _json['dimensionName'] as core.String;
    }
    if (_json.containsKey('dimensionValue')) {
      dimensionValue = _json['dimensionValue'] as core.String;
    }
  }

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

  PropertyQuota();

  PropertyQuota.fromJson(core.Map _json) {
    if (_json.containsKey('concurrentRequests')) {
      concurrentRequests = QuotaStatus.fromJson(
          _json['concurrentRequests'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('potentiallyThresholdedRequestsPerHour')) {
      potentiallyThresholdedRequestsPerHour = QuotaStatus.fromJson(
          _json['potentiallyThresholdedRequestsPerHour']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('serverErrorsPerProjectPerHour')) {
      serverErrorsPerProjectPerHour = QuotaStatus.fromJson(
          _json['serverErrorsPerProjectPerHour']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tokensPerDay')) {
      tokensPerDay = QuotaStatus.fromJson(
          _json['tokensPerDay'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tokensPerHour')) {
      tokensPerHour = QuotaStatus.fromJson(
          _json['tokensPerHour'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (concurrentRequests != null)
          'concurrentRequests': concurrentRequests!.toJson(),
        if (potentiallyThresholdedRequestsPerHour != null)
          'potentiallyThresholdedRequestsPerHour':
              potentiallyThresholdedRequestsPerHour!.toJson(),
        if (serverErrorsPerProjectPerHour != null)
          'serverErrorsPerProjectPerHour':
              serverErrorsPerProjectPerHour!.toJson(),
        if (tokensPerDay != null) 'tokensPerDay': tokensPerDay!.toJson(),
        if (tokensPerHour != null) 'tokensPerHour': tokensPerHour!.toJson(),
      };
}

/// Current state for a particular quota group.
class QuotaStatus {
  /// Quota consumed by this request.
  core.int? consumed;

  /// Quota remaining after this request.
  core.int? remaining;

  QuotaStatus();

  QuotaStatus.fromJson(core.Map _json) {
    if (_json.containsKey('consumed')) {
      consumed = _json['consumed'] as core.int;
    }
    if (_json.containsKey('remaining')) {
      remaining = _json['remaining'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumed != null) 'consumed': consumed!,
        if (remaining != null) 'remaining': remaining!,
      };
}

/// Response's metadata carrying additional information about the report
/// content.
class ResponseMetaData {
  /// If true, indicates some buckets of dimension combinations are rolled into
  /// "(other)" row.
  ///
  /// This can happen for high cardinality reports.
  core.bool? dataLossFromOtherRow;

  ResponseMetaData();

  ResponseMetaData.fromJson(core.Map _json) {
    if (_json.containsKey('dataLossFromOtherRow')) {
      dataLossFromOtherRow = _json['dataLossFromOtherRow'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataLossFromOtherRow != null)
          'dataLossFromOtherRow': dataLossFromOtherRow!,
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

  Row();

  Row.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionValues')) {
      dimensionValues = (_json['dimensionValues'] as core.List)
          .map<DimensionValue>((value) => DimensionValue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('metricValues')) {
      metricValues = (_json['metricValues'] as core.List)
          .map<MetricValue>((value) => MetricValue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionValues != null)
          'dimensionValues':
              dimensionValues!.map((value) => value.toJson()).toList(),
        if (metricValues != null)
          'metricValues': metricValues!.map((value) => value.toJson()).toList(),
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

  RunPivotReportRequest();

  RunPivotReportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('cohortSpec')) {
      cohortSpec = CohortSpec.fromJson(
          _json['cohortSpec'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'] as core.String;
    }
    if (_json.containsKey('dateRanges')) {
      dateRanges = (_json['dateRanges'] as core.List)
          .map<DateRange>((value) =>
              DateRange.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dimensionFilter')) {
      dimensionFilter = FilterExpression.fromJson(
          _json['dimensionFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<Dimension>((value) =>
              Dimension.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('keepEmptyRows')) {
      keepEmptyRows = _json['keepEmptyRows'] as core.bool;
    }
    if (_json.containsKey('metricFilter')) {
      metricFilter = FilterExpression.fromJson(
          _json['metricFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<Metric>((value) =>
              Metric.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('pivots')) {
      pivots = (_json['pivots'] as core.List)
          .map<Pivot>((value) =>
              Pivot.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('property')) {
      property = _json['property'] as core.String;
    }
    if (_json.containsKey('returnPropertyQuota')) {
      returnPropertyQuota = _json['returnPropertyQuota'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cohortSpec != null) 'cohortSpec': cohortSpec!.toJson(),
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (dateRanges != null)
          'dateRanges': dateRanges!.map((value) => value.toJson()).toList(),
        if (dimensionFilter != null)
          'dimensionFilter': dimensionFilter!.toJson(),
        if (dimensions != null)
          'dimensions': dimensions!.map((value) => value.toJson()).toList(),
        if (keepEmptyRows != null) 'keepEmptyRows': keepEmptyRows!,
        if (metricFilter != null) 'metricFilter': metricFilter!.toJson(),
        if (metrics != null)
          'metrics': metrics!.map((value) => value.toJson()).toList(),
        if (pivots != null)
          'pivots': pivots!.map((value) => value.toJson()).toList(),
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

  RunPivotReportResponse();

  RunPivotReportResponse.fromJson(core.Map _json) {
    if (_json.containsKey('aggregates')) {
      aggregates = (_json['aggregates'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dimensionHeaders')) {
      dimensionHeaders = (_json['dimensionHeaders'] as core.List)
          .map<DimensionHeader>((value) => DimensionHeader.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = ResponseMetaData.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metricHeaders')) {
      metricHeaders = (_json['metricHeaders'] as core.List)
          .map<MetricHeader>((value) => MetricHeader.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('pivotHeaders')) {
      pivotHeaders = (_json['pivotHeaders'] as core.List)
          .map<PivotHeader>((value) => PivotHeader.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('propertyQuota')) {
      propertyQuota = PropertyQuota.fromJson(
          _json['propertyQuota'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rows')) {
      rows = (_json['rows'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregates != null)
          'aggregates': aggregates!.map((value) => value.toJson()).toList(),
        if (dimensionHeaders != null)
          'dimensionHeaders':
              dimensionHeaders!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (metricHeaders != null)
          'metricHeaders':
              metricHeaders!.map((value) => value.toJson()).toList(),
        if (pivotHeaders != null)
          'pivotHeaders': pivotHeaders!.map((value) => value.toJson()).toList(),
        if (propertyQuota != null) 'propertyQuota': propertyQuota!.toJson(),
        if (rows != null) 'rows': rows!.map((value) => value.toJson()).toList(),
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

  /// Specifies how rows are ordered in the response.
  core.List<OrderBy>? orderBys;

  /// Toggles whether to return the current state of this Analytics Property's
  /// Realtime quota.
  ///
  /// Quota is returned in \[PropertyQuota\](#PropertyQuota).
  core.bool? returnPropertyQuota;

  RunRealtimeReportRequest();

  RunRealtimeReportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionFilter')) {
      dimensionFilter = FilterExpression.fromJson(
          _json['dimensionFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<Dimension>((value) =>
              Dimension.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('limit')) {
      limit = _json['limit'] as core.String;
    }
    if (_json.containsKey('metricAggregations')) {
      metricAggregations = (_json['metricAggregations'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('metricFilter')) {
      metricFilter = FilterExpression.fromJson(
          _json['metricFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<Metric>((value) =>
              Metric.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('orderBys')) {
      orderBys = (_json['orderBys'] as core.List)
          .map<OrderBy>((value) =>
              OrderBy.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('returnPropertyQuota')) {
      returnPropertyQuota = _json['returnPropertyQuota'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionFilter != null)
          'dimensionFilter': dimensionFilter!.toJson(),
        if (dimensions != null)
          'dimensions': dimensions!.map((value) => value.toJson()).toList(),
        if (limit != null) 'limit': limit!,
        if (metricAggregations != null)
          'metricAggregations': metricAggregations!,
        if (metricFilter != null) 'metricFilter': metricFilter!.toJson(),
        if (metrics != null)
          'metrics': metrics!.map((value) => value.toJson()).toList(),
        if (orderBys != null)
          'orderBys': orderBys!.map((value) => value.toJson()).toList(),
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

  RunRealtimeReportResponse();

  RunRealtimeReportResponse.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionHeaders')) {
      dimensionHeaders = (_json['dimensionHeaders'] as core.List)
          .map<DimensionHeader>((value) => DimensionHeader.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('maximums')) {
      maximums = (_json['maximums'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('metricHeaders')) {
      metricHeaders = (_json['metricHeaders'] as core.List)
          .map<MetricHeader>((value) => MetricHeader.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('minimums')) {
      minimums = (_json['minimums'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('propertyQuota')) {
      propertyQuota = PropertyQuota.fromJson(
          _json['propertyQuota'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowCount')) {
      rowCount = _json['rowCount'] as core.int;
    }
    if (_json.containsKey('rows')) {
      rows = (_json['rows'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('totals')) {
      totals = (_json['totals'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionHeaders != null)
          'dimensionHeaders':
              dimensionHeaders!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
        if (maximums != null)
          'maximums': maximums!.map((value) => value.toJson()).toList(),
        if (metricHeaders != null)
          'metricHeaders':
              metricHeaders!.map((value) => value.toJson()).toList(),
        if (minimums != null)
          'minimums': minimums!.map((value) => value.toJson()).toList(),
        if (propertyQuota != null) 'propertyQuota': propertyQuota!.toJson(),
        if (rowCount != null) 'rowCount': rowCount!,
        if (rows != null) 'rows': rows!.map((value) => value.toJson()).toList(),
        if (totals != null)
          'totals': totals!.map((value) => value.toJson()).toList(),
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

  /// The filter clause of dimensions.
  ///
  /// Dimensions must be requested to be used in this filter. Metrics cannot be
  /// used in this filter.
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
  /// Applied at post aggregation phase, similar to SQL having-clause. Metrics
  /// must be requested to be used in this filter. Dimensions cannot be used in
  /// this filter.
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

  RunReportRequest();

  RunReportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('cohortSpec')) {
      cohortSpec = CohortSpec.fromJson(
          _json['cohortSpec'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'] as core.String;
    }
    if (_json.containsKey('dateRanges')) {
      dateRanges = (_json['dateRanges'] as core.List)
          .map<DateRange>((value) =>
              DateRange.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dimensionFilter')) {
      dimensionFilter = FilterExpression.fromJson(
          _json['dimensionFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<Dimension>((value) =>
              Dimension.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('keepEmptyRows')) {
      keepEmptyRows = _json['keepEmptyRows'] as core.bool;
    }
    if (_json.containsKey('limit')) {
      limit = _json['limit'] as core.String;
    }
    if (_json.containsKey('metricAggregations')) {
      metricAggregations = (_json['metricAggregations'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('metricFilter')) {
      metricFilter = FilterExpression.fromJson(
          _json['metricFilter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<Metric>((value) =>
              Metric.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('offset')) {
      offset = _json['offset'] as core.String;
    }
    if (_json.containsKey('orderBys')) {
      orderBys = (_json['orderBys'] as core.List)
          .map<OrderBy>((value) =>
              OrderBy.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('property')) {
      property = _json['property'] as core.String;
    }
    if (_json.containsKey('returnPropertyQuota')) {
      returnPropertyQuota = _json['returnPropertyQuota'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cohortSpec != null) 'cohortSpec': cohortSpec!.toJson(),
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (dateRanges != null)
          'dateRanges': dateRanges!.map((value) => value.toJson()).toList(),
        if (dimensionFilter != null)
          'dimensionFilter': dimensionFilter!.toJson(),
        if (dimensions != null)
          'dimensions': dimensions!.map((value) => value.toJson()).toList(),
        if (keepEmptyRows != null) 'keepEmptyRows': keepEmptyRows!,
        if (limit != null) 'limit': limit!,
        if (metricAggregations != null)
          'metricAggregations': metricAggregations!,
        if (metricFilter != null) 'metricFilter': metricFilter!.toJson(),
        if (metrics != null)
          'metrics': metrics!.map((value) => value.toJson()).toList(),
        if (offset != null) 'offset': offset!,
        if (orderBys != null)
          'orderBys': orderBys!.map((value) => value.toJson()).toList(),
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

  RunReportResponse();

  RunReportResponse.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionHeaders')) {
      dimensionHeaders = (_json['dimensionHeaders'] as core.List)
          .map<DimensionHeader>((value) => DimensionHeader.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('maximums')) {
      maximums = (_json['maximums'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('metadata')) {
      metadata = ResponseMetaData.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metricHeaders')) {
      metricHeaders = (_json['metricHeaders'] as core.List)
          .map<MetricHeader>((value) => MetricHeader.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('minimums')) {
      minimums = (_json['minimums'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('propertyQuota')) {
      propertyQuota = PropertyQuota.fromJson(
          _json['propertyQuota'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowCount')) {
      rowCount = _json['rowCount'] as core.int;
    }
    if (_json.containsKey('rows')) {
      rows = (_json['rows'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('totals')) {
      totals = (_json['totals'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionHeaders != null)
          'dimensionHeaders':
              dimensionHeaders!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
        if (maximums != null)
          'maximums': maximums!.map((value) => value.toJson()).toList(),
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (metricHeaders != null)
          'metricHeaders':
              metricHeaders!.map((value) => value.toJson()).toList(),
        if (minimums != null)
          'minimums': minimums!.map((value) => value.toJson()).toList(),
        if (propertyQuota != null) 'propertyQuota': propertyQuota!.toJson(),
        if (rowCount != null) 'rowCount': rowCount!,
        if (rows != null) 'rows': rows!.map((value) => value.toJson()).toList(),
        if (totals != null)
          'totals': totals!.map((value) => value.toJson()).toList(),
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

  StringFilter();

  StringFilter.fromJson(core.Map _json) {
    if (_json.containsKey('caseSensitive')) {
      caseSensitive = _json['caseSensitive'] as core.bool;
    }
    if (_json.containsKey('matchType')) {
      matchType = _json['matchType'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (matchType != null) 'matchType': matchType!,
        if (value != null) 'value': value!,
      };
}
