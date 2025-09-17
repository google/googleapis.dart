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

/// Google Analytics Data API - v1beta
///
/// Accesses report data in Google Analytics. Warning: Creating multiple
/// Customer Applications, Accounts, or Projects to simulate or act as a single
/// Customer Application, Account, or Project (respectively) or to circumvent
/// Service-specific usage limits or quotas is a direct violation of Google
/// Cloud Platform Terms of Service as well as Google APIs Terms of Service.
/// These actions can result in immediate termination of your GCP project(s)
/// without any warning.
///
/// For more information, see
/// <https://developers.google.com/analytics/devguides/reporting/data/v1/>
///
/// Create an instance of [AnalyticsDataApi] to access these resources:
///
/// - [PropertiesResource]
///   - [PropertiesAudienceExportsResource]
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

/// Accesses report data in Google Analytics.
///
/// Warning: Creating multiple Customer Applications, Accounts, or Projects to
/// simulate or act as a single Customer Application, Account, or Project
/// (respectively) or to circumvent Service-specific usage limits or quotas is a
/// direct violation of Google Cloud Platform Terms of Service as well as Google
/// APIs Terms of Service. These actions can result in immediate termination of
/// your GCP project(s) without any warning.
class AnalyticsDataApi {
  /// View and manage your Google Analytics data
  static const analyticsScope = 'https://www.googleapis.com/auth/analytics';

  /// See and download your Google Analytics data
  static const analyticsReadonlyScope =
      'https://www.googleapis.com/auth/analytics.readonly';

  final commons.ApiRequester _requester;

  PropertiesResource get properties => PropertiesResource(_requester);

  AnalyticsDataApi(
    http.Client client, {
    core.String rootUrl = 'https://analyticsdata.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class PropertiesResource {
  final commons.ApiRequester _requester;

  PropertiesAudienceExportsResource get audienceExports =>
      PropertiesAudienceExportsResource(_requester);

  PropertiesResource(commons.ApiRequester client) : _requester = client;

  /// Returns multiple pivot reports in a batch.
  ///
  /// All reports must be for the same Google Analytics property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics property identifier whose events are
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$property') + ':batchRunPivotReports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchRunPivotReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns multiple reports in a batch.
  ///
  /// All reports must be for the same Google Analytics property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics property identifier whose events are
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$property') + ':batchRunReports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchRunReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [property] - A Google Analytics property identifier whose events are
  /// tracked. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// `property` should be the same value as in your `runReport` request.
  /// Example: properties/1234
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$property') + ':checkCompatibility';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CheckCompatibilityResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns metadata for dimensions and metrics available in reporting
  /// methods.
  ///
  /// Used to explore the dimensions and metrics. In this method, a Google
  /// Analytics property identifier is specified in the request, and the
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
  /// is a numeric Google Analytics property identifier. To learn more, see
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Metadata.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [property] - A Google Analytics property identifier whose events are
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$property') + ':runPivotReport';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunPivotReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a customized report of realtime event data for your property.
  ///
  /// Events appear in realtime reports seconds after they have been sent to the
  /// Google Analytics. Realtime reports show events and usage data for the
  /// periods of time ranging from the present moment to 30 minutes ago (up to
  /// 60 minutes for Google Analytics 360 properties). For a guide to
  /// constructing realtime requests & understanding responses, see
  /// [Creating a Realtime Report](https://developers.google.com/analytics/devguides/reporting/data/v1/realtime-basics).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics property identifier whose events are
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$property') + ':runRealtimeReport';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunRealtimeReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a customized report of your Google Analytics event data.
  ///
  /// Reports contain statistics derived from data collected by the Google
  /// Analytics tracking code. The data returned from the API is as a table with
  /// columns for the requested dimensions and metrics. Metrics are individual
  /// measurements of user activity on your property, such as active users or
  /// event count. Dimensions break down metrics across some common criteria,
  /// such as country or event name. For a guide to constructing requests &
  /// understanding responses, see
  /// [Creating a Report](https://developers.google.com/analytics/devguides/reporting/data/v1/basics).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - A Google Analytics property identifier whose events are
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$property') + ':runReport';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesAudienceExportsResource {
  final commons.ApiRequester _requester;

  PropertiesAudienceExportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an audience export for later retrieval.
  ///
  /// This method quickly returns the audience export's resource name and
  /// initiates a long running asynchronous request to form an audience export.
  /// To export the users in an audience export, first create the audience
  /// export through this method and then send the audience resource name to the
  /// `QueryAudienceExport` method. See
  /// [Creating an Audience Export](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-basics)
  /// for an introduction to Audience Exports with examples. An audience export
  /// is a snapshot of the users currently in the audience at the time of
  /// audience export creation. Creating audience exports for one audience on
  /// different days will return different results as users enter and exit the
  /// audience. Audiences in Google Analytics 4 allow you to segment your users
  /// in the ways that are important to your business. To learn more, see
  /// https://support.google.com/analytics/answer/9267572. Audience exports
  /// contain the users in each audience. Audience Export APIs have some methods
  /// at alpha and other methods at beta stability. The intention is to advance
  /// methods to beta stability after some feedback and adoption. To give your
  /// feedback on this API, complete the
  /// [Google Analytics Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA)
  /// form.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this audience export will
  /// be created. Format: `properties/{property}`
  /// Value must have pattern `^properties/\[^/\]+$`.
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
  async.Future<Operation> create(
    AudienceExport request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/audienceExports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets configuration metadata about a specific audience export.
  ///
  /// This method can be used to understand an audience export after it has been
  /// created. See
  /// [Creating an Audience Export](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-basics)
  /// for an introduction to Audience Exports with examples. Audience Export
  /// APIs have some methods at alpha and other methods at beta stability. The
  /// intention is to advance methods to beta stability after some feedback and
  /// adoption. To give your feedback on this API, complete the
  /// [Google Analytics Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA)
  /// form.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The audience export resource name. Format:
  /// `properties/{property}/audienceExports/{audience_export}`
  /// Value must have pattern `^properties/\[^/\]+/audienceExports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AudienceExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AudienceExport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AudienceExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all audience exports for a property.
  ///
  /// This method can be used for you to find and reuse existing audience
  /// exports rather than creating unnecessary new audience exports. The same
  /// audience can have multiple audience exports that represent the export of
  /// users that were in an audience on different days. See
  /// [Creating an Audience Export](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-basics)
  /// for an introduction to Audience Exports with examples. Audience Export
  /// APIs have some methods at alpha and other methods at beta stability. The
  /// intention is to advance methods to beta stability after some feedback and
  /// adoption. To give your feedback on this API, complete the
  /// [Google Analytics Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA)
  /// form.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. All audience exports for this property will be listed
  /// in the response. Format: `properties/{property}`
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of audience exports to return.
  /// The service may return fewer than this value. If unspecified, at most 200
  /// audience exports will be returned. The maximum value is 1000 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListAudienceExports` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListAudienceExports`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAudienceExportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAudienceExportsResponse> list(
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

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/audienceExports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAudienceExportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves an audience export of users.
  ///
  /// After creating an audience, the users are not immediately available for
  /// exporting. First, a request to `CreateAudienceExport` is necessary to
  /// create an audience export of users, and then second, this method is used
  /// to retrieve the users in the audience export. See
  /// [Creating an Audience Export](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-basics)
  /// for an introduction to Audience Exports with examples. Audiences in Google
  /// Analytics 4 allow you to segment your users in the ways that are important
  /// to your business. To learn more, see
  /// https://support.google.com/analytics/answer/9267572. Audience Export APIs
  /// have some methods at alpha and other methods at beta stability. The
  /// intention is to advance methods to beta stability after some feedback and
  /// adoption. To give your feedback on this API, complete the
  /// [Google Analytics Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA)
  /// form.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the audience export to retrieve users from.
  /// Format: `properties/{property}/audienceExports/{audience_export}`
  /// Value must have pattern `^properties/\[^/\]+/audienceExports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryAudienceExportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryAudienceExportResponse> query(
    QueryAudienceExportRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryAudienceExportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A metric actively restricted in creating the report.
class ActiveMetricRestriction {
  /// The name of the restricted metric.
  core.String? metricName;

  /// The reason for this metric's restriction.
  core.List<core.String>? restrictedMetricTypes;

  ActiveMetricRestriction({this.metricName, this.restrictedMetricTypes});

  ActiveMetricRestriction.fromJson(core.Map json_)
    : this(
        metricName: json_['metricName'] as core.String?,
        restrictedMetricTypes:
            (json_['restrictedMetricTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metricName != null) 'metricName': metricName!,
    if (restrictedMetricTypes != null)
      'restrictedMetricTypes': restrictedMetricTypes!,
  };
}

/// An audience export is a list of users in an audience at the time of the
/// list's creation.
///
/// One audience may have multiple audience exports created for different days.
class AudienceExport {
  /// The audience resource name.
  ///
  /// This resource name identifies the audience being listed and is shared
  /// between the Analytics Data & Admin APIs. Format:
  /// `properties/{property}/audiences/{audience}`
  ///
  /// Required.
  core.String? audience;

  /// The descriptive display name for this audience.
  ///
  /// For example, "Purchasers".
  ///
  /// Output only.
  core.String? audienceDisplayName;

  /// The time when CreateAudienceExport was called and the AudienceExport began
  /// the `CREATING` state.
  ///
  /// Output only.
  core.String? beginCreatingTime;

  /// The total quota tokens charged during creation of the AudienceExport.
  ///
  /// Because this token count is based on activity from the `CREATING` state,
  /// this tokens charged will be fixed once an AudienceExport enters the
  /// `ACTIVE` or `FAILED` states.
  ///
  /// Output only.
  core.int? creationQuotaTokensCharged;

  /// The dimensions requested and displayed in the query response.
  ///
  /// Required.
  core.List<V1betaAudienceDimension>? dimensions;

  /// Error message is populated when an audience export fails during creation.
  ///
  /// A common reason for such a failure is quota exhaustion.
  ///
  /// Output only.
  core.String? errorMessage;

  /// Identifier.
  ///
  /// The audience export resource name assigned during creation. This resource
  /// name identifies this `AudienceExport`. Format:
  /// `properties/{property}/audienceExports/{audience_export}`
  ///
  /// Output only.
  core.String? name;

  /// The percentage completed for this audience export ranging between 0 to
  /// 100.
  ///
  /// Output only.
  core.double? percentageCompleted;

  /// The total number of rows in the AudienceExport result.
  ///
  /// Output only.
  core.int? rowCount;

  /// The current state for this AudienceExport.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state will never be used.
  /// - "CREATING" : The AudienceExport is currently creating and will be
  /// available in the future. Creating occurs immediately after the
  /// CreateAudienceExport call.
  /// - "ACTIVE" : The AudienceExport is fully created and ready for querying.
  /// An AudienceExport is updated to active asynchronously from a request; this
  /// occurs some time (for example 15 minutes) after the initial create call.
  /// - "FAILED" : The AudienceExport failed to be created. It is possible that
  /// re-requesting this audience export will succeed.
  core.String? state;

  AudienceExport({
    this.audience,
    this.audienceDisplayName,
    this.beginCreatingTime,
    this.creationQuotaTokensCharged,
    this.dimensions,
    this.errorMessage,
    this.name,
    this.percentageCompleted,
    this.rowCount,
    this.state,
  });

  AudienceExport.fromJson(core.Map json_)
    : this(
        audience: json_['audience'] as core.String?,
        audienceDisplayName: json_['audienceDisplayName'] as core.String?,
        beginCreatingTime: json_['beginCreatingTime'] as core.String?,
        creationQuotaTokensCharged:
            json_['creationQuotaTokensCharged'] as core.int?,
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => V1betaAudienceDimension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        errorMessage: json_['errorMessage'] as core.String?,
        name: json_['name'] as core.String?,
        percentageCompleted:
            (json_['percentageCompleted'] as core.num?)?.toDouble(),
        rowCount: json_['rowCount'] as core.int?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audience != null) 'audience': audience!,
    if (audienceDisplayName != null)
      'audienceDisplayName': audienceDisplayName!,
    if (beginCreatingTime != null) 'beginCreatingTime': beginCreatingTime!,
    if (creationQuotaTokensCharged != null)
      'creationQuotaTokensCharged': creationQuotaTokensCharged!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (errorMessage != null) 'errorMessage': errorMessage!,
    if (name != null) 'name': name!,
    if (percentageCompleted != null)
      'percentageCompleted': percentageCompleted!,
    if (rowCount != null) 'rowCount': rowCount!,
    if (state != null) 'state': state!,
  };
}

/// The batch request containing multiple pivot report requests.
class BatchRunPivotReportsRequest {
  /// Individual requests.
  ///
  /// Each request has a separate pivot report response. Each batch request is
  /// allowed up to 5 requests.
  core.List<RunPivotReportRequest>? requests;

  BatchRunPivotReportsRequest({this.requests});

  BatchRunPivotReportsRequest.fromJson(core.Map json_)
    : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) => RunPivotReportRequest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  BatchRunPivotReportsResponse({this.kind, this.pivotReports});

  BatchRunPivotReportsResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        pivotReports:
            (json_['pivotReports'] as core.List?)
                ?.map(
                  (value) => RunPivotReportResponse.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  BatchRunReportsRequest({this.requests});

  BatchRunReportsRequest.fromJson(core.Map json_)
    : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) => RunReportRequest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  BatchRunReportsResponse({this.kind, this.reports});

  BatchRunReportsResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        reports:
            (json_['reports'] as core.List?)
                ?.map(
                  (value) => RunReportResponse.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  BetweenFilter({this.fromValue, this.toValue});

  BetweenFilter.fromJson(core.Map json_)
    : this(
        fromValue:
            json_.containsKey('fromValue')
                ? NumericValue.fromJson(
                  json_['fromValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        toValue:
            json_.containsKey('toValue')
                ? NumericValue.fromJson(
                  json_['toValue'] as core.Map<core.String, core.dynamic>,
                )
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

  CaseExpression({this.dimensionName});

  CaseExpression.fromJson(core.Map json_)
    : this(dimensionName: json_['dimensionName'] as core.String?);

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

  CheckCompatibilityRequest.fromJson(core.Map json_)
    : this(
        compatibilityFilter: json_['compatibilityFilter'] as core.String?,
        dimensionFilter:
            json_.containsKey('dimensionFilter')
                ? FilterExpression.fromJson(
                  json_['dimensionFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => Dimension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metricFilter:
            json_.containsKey('metricFilter')
                ? FilterExpression.fromJson(
                  json_['metricFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => Metric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  CheckCompatibilityResponse.fromJson(core.Map json_)
    : this(
        dimensionCompatibilities:
            (json_['dimensionCompatibilities'] as core.List?)
                ?.map(
                  (value) => DimensionCompatibility.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metricCompatibilities:
            (json_['metricCompatibilities'] as core.List?)
                ?.map(
                  (value) => MetricCompatibility.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  Cohort({this.dateRange, this.dimension, this.name});

  Cohort.fromJson(core.Map json_)
    : this(
        dateRange:
            json_.containsKey('dateRange')
                ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimension: json_['dimension'] as core.String?,
        name: json_['name'] as core.String?,
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

  CohortReportSettings({this.accumulate});

  CohortReportSettings.fromJson(core.Map json_)
    : this(accumulate: json_['accumulate'] as core.bool?);

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

  CohortSpec({this.cohortReportSettings, this.cohorts, this.cohortsRange});

  CohortSpec.fromJson(core.Map json_)
    : this(
        cohortReportSettings:
            json_.containsKey('cohortReportSettings')
                ? CohortReportSettings.fromJson(
                  json_['cohortReportSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cohorts:
            (json_['cohorts'] as core.List?)
                ?.map(
                  (value) => Cohort.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        cohortsRange:
            json_.containsKey('cohortsRange')
                ? CohortsRange.fromJson(
                  json_['cohortsRange'] as core.Map<core.String, core.dynamic>,
                )
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

  CohortsRange({this.endOffset, this.granularity, this.startOffset});

  CohortsRange.fromJson(core.Map json_)
    : this(
        endOffset: json_['endOffset'] as core.int?,
        granularity: json_['granularity'] as core.String?,
        startOffset: json_['startOffset'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endOffset != null) 'endOffset': endOffset!,
    if (granularity != null) 'granularity': granularity!,
    if (startOffset != null) 'startOffset': startOffset!,
  };
}

/// Defines an individual comparison.
///
/// Most requests will include multiple comparisons so that the report compares
/// between the comparisons.
class Comparison {
  /// A saved comparison identified by the comparison's resource name.
  ///
  /// For example, 'comparisons/1234'.
  core.String? comparison;

  /// A basic comparison.
  FilterExpression? dimensionFilter;

  /// Each comparison produces separate rows in the response.
  ///
  /// In the response, this comparison is identified by this name. If name is
  /// unspecified, we will use the saved comparisons display name.
  core.String? name;

  Comparison({this.comparison, this.dimensionFilter, this.name});

  Comparison.fromJson(core.Map json_)
    : this(
        comparison: json_['comparison'] as core.String?,
        dimensionFilter:
            json_.containsKey('dimensionFilter')
                ? FilterExpression.fromJson(
                  json_['dimensionFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (comparison != null) 'comparison': comparison!,
    if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
    if (name != null) 'name': name!,
  };
}

/// The metadata for a single comparison.
class ComparisonMetadata {
  /// This comparison's resource name.
  ///
  /// Useable in \[Comparison\](#Comparison)'s `comparison` field. For example,
  /// 'comparisons/1234'.
  core.String? apiName;

  /// This comparison's description.
  core.String? description;

  /// This comparison's name within the Google Analytics user interface.
  core.String? uiName;

  ComparisonMetadata({this.apiName, this.description, this.uiName});

  ComparisonMetadata.fromJson(core.Map json_)
    : this(
        apiName: json_['apiName'] as core.String?,
        description: json_['description'] as core.String?,
        uiName: json_['uiName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiName != null) 'apiName': apiName!,
    if (description != null) 'description': description!,
    if (uiName != null) 'uiName': uiName!,
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

  ConcatenateExpression({this.delimiter, this.dimensionNames});

  ConcatenateExpression.fromJson(core.Map json_)
    : this(
        delimiter: json_['delimiter'] as core.String?,
        dimensionNames:
            (json_['dimensionNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (delimiter != null) 'delimiter': delimiter!,
    if (dimensionNames != null) 'dimensionNames': dimensionNames!,
  };
}

/// A contiguous set of days: `startDate`, `startDate + 1`, ..., `endDate`.
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

  DateRange({this.endDate, this.name, this.startDate});

  DateRange.fromJson(core.Map json_)
    : this(
        endDate: json_['endDate'] as core.String?,
        name: json_['name'] as core.String?,
        startDate: json_['startDate'] as core.String?,
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
/// the city could be "Paris" or "New York". Requests are allowed up to 9
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
  /// for the list of dimension names supported by core reporting methods such
  /// as `runReport` and `batchRunReports`. See
  /// [Realtime Dimensions](https://developers.google.com/analytics/devguides/reporting/data/v1/realtime-api-schema#dimensions)
  /// for the list of dimension names supported by the `runRealtimeReport`
  /// method. See
  /// [Funnel Dimensions](https://developers.google.com/analytics/devguides/reporting/data/v1/exploration-api-schema#dimensions)
  /// for the list of dimension names supported by the `runFunnelReport` method.
  /// If `dimensionExpression` is specified, `name` can be any string that you
  /// would like within the allowed character set. For example if a
  /// `dimensionExpression` concatenates `country` and `city`, you could call
  /// that dimension `countryAndCity`. Dimension names that you choose must
  /// match the regular expression `^[a-zA-Z0-9_]$`. Dimensions are referenced
  /// by `name` in `dimensionFilter`, `orderBys`, `dimensionExpression`, and
  /// `pivots`.
  core.String? name;

  Dimension({this.dimensionExpression, this.name});

  Dimension.fromJson(core.Map json_)
    : this(
        dimensionExpression:
            json_.containsKey('dimensionExpression')
                ? DimensionExpression.fromJson(
                  json_['dimensionExpression']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
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

  DimensionCompatibility({this.compatibility, this.dimensionMetadata});

  DimensionCompatibility.fromJson(core.Map json_)
    : this(
        compatibility: json_['compatibility'] as core.String?,
        dimensionMetadata:
            json_.containsKey('dimensionMetadata')
                ? DimensionMetadata.fromJson(
                  json_['dimensionMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
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

  DimensionExpression({this.concatenate, this.lowerCase, this.upperCase});

  DimensionExpression.fromJson(core.Map json_)
    : this(
        concatenate:
            json_.containsKey('concatenate')
                ? ConcatenateExpression.fromJson(
                  json_['concatenate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lowerCase:
            json_.containsKey('lowerCase')
                ? CaseExpression.fromJson(
                  json_['lowerCase'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        upperCase:
            json_.containsKey('upperCase')
                ? CaseExpression.fromJson(
                  json_['upperCase'] as core.Map<core.String, core.dynamic>,
                )
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

  DimensionHeader({this.name});

  DimensionHeader.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

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

  /// True if the dimension is custom to this property.
  ///
  /// This includes user, event, & item scoped custom dimensions; to learn more
  /// about custom dimensions, see
  /// https://support.google.com/analytics/answer/14240153. This also include
  /// custom channel groups; to learn more about custom channel groups, see
  /// https://support.google.com/analytics/answer/13051316.
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

  DimensionMetadata.fromJson(core.Map json_)
    : this(
        apiName: json_['apiName'] as core.String?,
        category: json_['category'] as core.String?,
        customDefinition: json_['customDefinition'] as core.bool?,
        deprecatedApiNames:
            (json_['deprecatedApiNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        uiName: json_['uiName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiName != null) 'apiName': apiName!,
    if (category != null) 'category': category!,
    if (customDefinition != null) 'customDefinition': customDefinition!,
    if (deprecatedApiNames != null) 'deprecatedApiNames': deprecatedApiNames!,
    if (description != null) 'description': description!,
    if (uiName != null) 'uiName': uiName!,
  };
}

/// Sorts by dimension values.
typedef DimensionOrderBy = $DimensionOrderBy;

/// The value of a dimension.
typedef DimensionValue = $DimensionValue00;

/// Filter for empty values.
typedef EmptyFilter = $Empty;

/// An expression to filter dimension or metric values.
class Filter {
  /// A filter for two values.
  BetweenFilter? betweenFilter;

  /// A filter for empty values such as "(not set)" and "" values.
  EmptyFilter? emptyFilter;

  /// The dimension name or metric name.
  ///
  /// In most methods, dimensions & metrics can be used for the first time in
  /// this field. However in a RunPivotReportRequest, this field must be
  /// additionally specified by name in the RunPivotReportRequest's dimensions
  /// or metrics.
  core.String? fieldName;

  /// A filter for in list values.
  InListFilter? inListFilter;

  /// A filter for numeric or date values.
  NumericFilter? numericFilter;

  /// Strings related filter.
  StringFilter? stringFilter;

  Filter({
    this.betweenFilter,
    this.emptyFilter,
    this.fieldName,
    this.inListFilter,
    this.numericFilter,
    this.stringFilter,
  });

  Filter.fromJson(core.Map json_)
    : this(
        betweenFilter:
            json_.containsKey('betweenFilter')
                ? BetweenFilter.fromJson(
                  json_['betweenFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        emptyFilter:
            json_.containsKey('emptyFilter')
                ? EmptyFilter.fromJson(
                  json_['emptyFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fieldName: json_['fieldName'] as core.String?,
        inListFilter:
            json_.containsKey('inListFilter')
                ? InListFilter.fromJson(
                  json_['inListFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        numericFilter:
            json_.containsKey('numericFilter')
                ? NumericFilter.fromJson(
                  json_['numericFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringFilter:
            json_.containsKey('stringFilter')
                ? StringFilter.fromJson(
                  json_['stringFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (betweenFilter != null) 'betweenFilter': betweenFilter!,
    if (emptyFilter != null) 'emptyFilter': emptyFilter!,
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
  /// In the same FilterExpression, all of the filter's field names need to be
  /// either all dimensions or all metrics.
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

  FilterExpression.fromJson(core.Map json_)
    : this(
        andGroup:
            json_.containsKey('andGroup')
                ? FilterExpressionList.fromJson(
                  json_['andGroup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        filter:
            json_.containsKey('filter')
                ? Filter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        notExpression:
            json_.containsKey('notExpression')
                ? FilterExpression.fromJson(
                  json_['notExpression'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        orGroup:
            json_.containsKey('orGroup')
                ? FilterExpressionList.fromJson(
                  json_['orGroup'] as core.Map<core.String, core.dynamic>,
                )
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

  FilterExpressionList({this.expressions});

  FilterExpressionList.fromJson(core.Map json_)
    : this(
        expressions:
            (json_['expressions'] as core.List?)
                ?.map(
                  (value) => FilterExpression.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (expressions != null) 'expressions': expressions!,
  };
}

/// The result needs to be in a list of string values.
typedef InListFilter = $InListFilter;

/// A list of all audience exports for a property.
class ListAudienceExportsResponse {
  /// Each audience export for a property.
  core.List<AudienceExport>? audienceExports;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAudienceExportsResponse({this.audienceExports, this.nextPageToken});

  ListAudienceExportsResponse.fromJson(core.Map json_)
    : this(
        audienceExports:
            (json_['audienceExports'] as core.List?)
                ?.map(
                  (value) => AudienceExport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audienceExports != null) 'audienceExports': audienceExports!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The dimensions, metrics and comparisons currently accepted in reporting
/// methods.
class Metadata {
  /// The comparison descriptions.
  core.List<ComparisonMetadata>? comparisons;

  /// The dimension descriptions.
  core.List<DimensionMetadata>? dimensions;

  /// The metric descriptions.
  core.List<MetricMetadata>? metrics;

  /// Resource name of this metadata.
  core.String? name;

  Metadata({this.comparisons, this.dimensions, this.metrics, this.name});

  Metadata.fromJson(core.Map json_)
    : this(
        comparisons:
            (json_['comparisons'] as core.List?)
                ?.map(
                  (value) => ComparisonMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => DimensionMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => MetricMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (comparisons != null) 'comparisons': comparisons!,
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
  /// for the list of metric names supported by core reporting methods such as
  /// `runReport` and `batchRunReports`. See
  /// [Realtime Metrics](https://developers.google.com/analytics/devguides/reporting/data/v1/realtime-api-schema#metrics)
  /// for the list of metric names supported by the `runRealtimeReport` method.
  /// See
  /// [Funnel Metrics](https://developers.google.com/analytics/devguides/reporting/data/v1/exploration-api-schema#metrics)
  /// for the list of metric names supported by the `runFunnelReport` method. If
  /// `expression` is specified, `name` can be any string that you would like
  /// within the allowed character set. For example if `expression` is
  /// `screenPageViews/sessions`, you could call that metric's name =
  /// `viewsPerSession`. Metric names that you choose must match the regular
  /// expression `^[a-zA-Z0-9_]$`. Metrics are referenced by `name` in
  /// `metricFilter`, `orderBys`, and metric `expression`.
  core.String? name;

  Metric({this.expression, this.invisible, this.name});

  Metric.fromJson(core.Map json_)
    : this(
        expression: json_['expression'] as core.String?,
        invisible: json_['invisible'] as core.bool?,
        name: json_['name'] as core.String?,
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

  MetricCompatibility({this.compatibility, this.metricMetadata});

  MetricCompatibility.fromJson(core.Map json_)
    : this(
        compatibility: json_['compatibility'] as core.String?,
        metricMetadata:
            json_.containsKey('metricMetadata')
                ? MetricMetadata.fromJson(
                  json_['metricMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
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

  MetricHeader({this.name, this.type});

  MetricHeader.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
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

  MetricMetadata.fromJson(core.Map json_)
    : this(
        apiName: json_['apiName'] as core.String?,
        blockedReasons:
            (json_['blockedReasons'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        category: json_['category'] as core.String?,
        customDefinition: json_['customDefinition'] as core.bool?,
        deprecatedApiNames:
            (json_['deprecatedApiNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        expression: json_['expression'] as core.String?,
        type: json_['type'] as core.String?,
        uiName: json_['uiName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiName != null) 'apiName': apiName!,
    if (blockedReasons != null) 'blockedReasons': blockedReasons!,
    if (category != null) 'category': category!,
    if (customDefinition != null) 'customDefinition': customDefinition!,
    if (deprecatedApiNames != null) 'deprecatedApiNames': deprecatedApiNames!,
    if (description != null) 'description': description!,
    if (expression != null) 'expression': expression!,
    if (type != null) 'type': type!,
    if (uiName != null) 'uiName': uiName!,
  };
}

/// Sorts by metric values.
typedef MetricOrderBy = $MetricOrderBy;

/// The value of a metric.
class MetricValue {
  /// Measurement value.
  ///
  /// See MetricHeader for type.
  core.String? value;

  MetricValue({this.value});

  MetricValue.fromJson(core.Map json_)
    : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (value != null) 'value': value!,
  };
}

/// A contiguous set of minutes: `startMinutesAgo`, `startMinutesAgo + 1`, ...,
/// `endMinutesAgo`.
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

  MinuteRange({this.endMinutesAgo, this.name, this.startMinutesAgo});

  MinuteRange.fromJson(core.Map json_)
    : this(
        endMinutesAgo: json_['endMinutesAgo'] as core.int?,
        name: json_['name'] as core.String?,
        startMinutesAgo: json_['startMinutesAgo'] as core.int?,
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

  NumericFilter({this.operation, this.value});

  NumericFilter.fromJson(core.Map json_)
    : this(
        operation: json_['operation'] as core.String?,
        value:
            json_.containsKey('value')
                ? NumericValue.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (operation != null) 'operation': operation!,
    if (value != null) 'value': value!,
  };
}

/// To represent a number.
typedef NumericValue = $NumericValue;

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
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// Order bys define how rows will be sorted in the response.
///
/// For example, ordering rows by descending event count is one ordering, and
/// ordering rows by the event name string is a different ordering.
class OrderBy {
  /// If true, sorts by descending order.
  core.bool? desc;

  /// Sorts results by a dimension's values.
  DimensionOrderBy? dimension;

  /// Sorts results by a metric's values.
  MetricOrderBy? metric;

  /// Sorts results by a metric's values within a pivot column group.
  PivotOrderBy? pivot;

  OrderBy({this.desc, this.dimension, this.metric, this.pivot});

  OrderBy.fromJson(core.Map json_)
    : this(
        desc: json_['desc'] as core.bool?,
        dimension:
            json_.containsKey('dimension')
                ? DimensionOrderBy.fromJson(
                  json_['dimension'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metric:
            json_.containsKey('metric')
                ? MetricOrderBy.fromJson(
                  json_['metric'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pivot:
            json_.containsKey('pivot')
                ? PivotOrderBy.fromJson(
                  json_['pivot'] as core.Map<core.String, core.dynamic>,
                )
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
  /// `RunPivotReportRequest` must not exceed 250,000. For example, a two pivot
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

  Pivot.fromJson(core.Map json_)
    : this(
        fieldNames:
            (json_['fieldNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        limit: json_['limit'] as core.String?,
        metricAggregations:
            (json_['metricAggregations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        offset: json_['offset'] as core.String?,
        orderBys:
            (json_['orderBys'] as core.List?)
                ?.map(
                  (value) => OrderBy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldNames != null) 'fieldNames': fieldNames!,
    if (limit != null) 'limit': limit!,
    if (metricAggregations != null) 'metricAggregations': metricAggregations!,
    if (offset != null) 'offset': offset!,
    if (orderBys != null) 'orderBys': orderBys!,
  };
}

/// Summarizes dimension values from a row for this pivot.
class PivotDimensionHeader {
  /// Values of multiple dimensions in a pivot.
  core.List<DimensionValue>? dimensionValues;

  PivotDimensionHeader({this.dimensionValues});

  PivotDimensionHeader.fromJson(core.Map json_)
    : this(
        dimensionValues:
            (json_['dimensionValues'] as core.List?)
                ?.map(
                  (value) => DimensionValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  PivotHeader({this.pivotDimensionHeaders, this.rowCount});

  PivotHeader.fromJson(core.Map json_)
    : this(
        pivotDimensionHeaders:
            (json_['pivotDimensionHeaders'] as core.List?)
                ?.map(
                  (value) => PivotDimensionHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        rowCount: json_['rowCount'] as core.int?,
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

  PivotOrderBy({this.metricName, this.pivotSelections});

  PivotOrderBy.fromJson(core.Map json_)
    : this(
        metricName: json_['metricName'] as core.String?,
        pivotSelections:
            (json_['pivotSelections'] as core.List?)
                ?.map(
                  (value) => PivotSelection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  PivotSelection({this.dimensionName, this.dimensionValue});

  PivotSelection.fromJson(core.Map json_)
    : this(
        dimensionName: json_['dimensionName'] as core.String?,
        dimensionValue: json_['dimensionValue'] as core.String?,
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

  /// Standard Analytics Properties can use up to 200,000 tokens per day;
  /// Analytics 360 Properties can use 2,000,000 tokens per day.
  ///
  /// Most requests consume fewer than 10 tokens.
  QuotaStatus? tokensPerDay;

  /// Standard Analytics Properties can use up to 40,000 tokens per hour;
  /// Analytics 360 Properties can use 400,000 tokens per hour.
  ///
  /// An API request consumes a single number of tokens, and that number is
  /// deducted from all of the hourly, daily, and per project hourly quotas.
  QuotaStatus? tokensPerHour;

  /// Analytics Properties can use up to 35% of their tokens per project per
  /// hour.
  ///
  /// This amounts to standard Analytics Properties can use up to 14,000 tokens
  /// per project per hour, and Analytics 360 Properties can use 140,000 tokens
  /// per project per hour. An API request consumes a single number of tokens,
  /// and that number is deducted from all of the hourly, daily, and per project
  /// hourly quotas.
  QuotaStatus? tokensPerProjectPerHour;

  PropertyQuota({
    this.concurrentRequests,
    this.potentiallyThresholdedRequestsPerHour,
    this.serverErrorsPerProjectPerHour,
    this.tokensPerDay,
    this.tokensPerHour,
    this.tokensPerProjectPerHour,
  });

  PropertyQuota.fromJson(core.Map json_)
    : this(
        concurrentRequests:
            json_.containsKey('concurrentRequests')
                ? QuotaStatus.fromJson(
                  json_['concurrentRequests']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        potentiallyThresholdedRequestsPerHour:
            json_.containsKey('potentiallyThresholdedRequestsPerHour')
                ? QuotaStatus.fromJson(
                  json_['potentiallyThresholdedRequestsPerHour']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        serverErrorsPerProjectPerHour:
            json_.containsKey('serverErrorsPerProjectPerHour')
                ? QuotaStatus.fromJson(
                  json_['serverErrorsPerProjectPerHour']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tokensPerDay:
            json_.containsKey('tokensPerDay')
                ? QuotaStatus.fromJson(
                  json_['tokensPerDay'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tokensPerHour:
            json_.containsKey('tokensPerHour')
                ? QuotaStatus.fromJson(
                  json_['tokensPerHour'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tokensPerProjectPerHour:
            json_.containsKey('tokensPerProjectPerHour')
                ? QuotaStatus.fromJson(
                  json_['tokensPerProjectPerHour']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (concurrentRequests != null) 'concurrentRequests': concurrentRequests!,
    if (potentiallyThresholdedRequestsPerHour != null)
      'potentiallyThresholdedRequestsPerHour':
          potentiallyThresholdedRequestsPerHour!,
    if (serverErrorsPerProjectPerHour != null)
      'serverErrorsPerProjectPerHour': serverErrorsPerProjectPerHour!,
    if (tokensPerDay != null) 'tokensPerDay': tokensPerDay!,
    if (tokensPerHour != null) 'tokensPerHour': tokensPerHour!,
    if (tokensPerProjectPerHour != null)
      'tokensPerProjectPerHour': tokensPerProjectPerHour!,
  };
}

/// A request to list users in an audience export.
class QueryAudienceExportRequest {
  /// The number of rows to return.
  ///
  /// If unspecified, 10,000 rows are returned. The API returns a maximum of
  /// 250,000 rows per request, no matter how many you ask for. `limit` must be
  /// positive. The API can also return fewer rows than the requested `limit`,
  /// if there aren't as many dimension values as the `limit`. To learn more
  /// about this pagination parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  ///
  /// Optional.
  core.String? limit;

  /// The row count of the start row.
  ///
  /// The first row is counted as row 0. When paging, the first request does not
  /// specify offset; or equivalently, sets offset to 0; the first request
  /// returns the first `limit` of rows. The second request sets offset to the
  /// `limit` of the first request; the second request returns the second
  /// `limit` of rows. To learn more about this pagination parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  ///
  /// Optional.
  core.String? offset;

  QueryAudienceExportRequest({this.limit, this.offset});

  QueryAudienceExportRequest.fromJson(core.Map json_)
    : this(
        limit: json_['limit'] as core.String?,
        offset: json_['offset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (limit != null) 'limit': limit!,
    if (offset != null) 'offset': offset!,
  };
}

/// A list of users in an audience export.
class QueryAudienceExportResponse {
  /// Configuration data about AudienceExport being queried.
  ///
  /// Returned to help interpret the audience rows in this response. For
  /// example, the dimensions in this AudienceExport correspond to the columns
  /// in the AudienceRows.
  AudienceExport? audienceExport;

  /// Rows for each user in an audience export.
  ///
  /// The number of rows in this response will be less than or equal to
  /// request's page size.
  core.List<V1betaAudienceRow>? audienceRows;

  /// The total number of rows in the AudienceExport result.
  ///
  /// `rowCount` is independent of the number of rows returned in the response,
  /// the `limit` request parameter, and the `offset` request parameter. For
  /// example if a query returns 175 rows and includes `limit` of 50 in the API
  /// request, the response will contain `rowCount` of 175 but only 50 rows. To
  /// learn more about this pagination parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  core.int? rowCount;

  QueryAudienceExportResponse({
    this.audienceExport,
    this.audienceRows,
    this.rowCount,
  });

  QueryAudienceExportResponse.fromJson(core.Map json_)
    : this(
        audienceExport:
            json_.containsKey('audienceExport')
                ? AudienceExport.fromJson(
                  json_['audienceExport']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        audienceRows:
            (json_['audienceRows'] as core.List?)
                ?.map(
                  (value) => V1betaAudienceRow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        rowCount: json_['rowCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audienceExport != null) 'audienceExport': audienceExport!,
    if (audienceRows != null) 'audienceRows': audienceRows!,
    if (rowCount != null) 'rowCount': rowCount!,
  };
}

/// Current state for a particular quota group.
typedef QuotaStatus = $QuotaStatus;

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
  /// This can happen for high cardinality reports. The metadata parameter
  /// dataLossFromOtherRow is populated based on the aggregated data table used
  /// in the report. The parameter will be accurately populated regardless of
  /// the filters and limits in the report. For example, the (other) row could
  /// be dropped from the report because the request contains a filter on
  /// sessionSource = google. This parameter will still be populated if data
  /// loss from other row was present in the input aggregate data used to
  /// generate this report. To learn more, see \[About the (other) row and data
  /// sampling\](https://support.google.com/analytics/answer/13208658#reports).
  core.bool? dataLossFromOtherRow;

  /// If empty reason is specified, the report is empty for this reason.
  core.String? emptyReason;

  /// If this report results is
  /// [sampled](https://support.google.com/analytics/answer/13331292), this
  /// describes the percentage of events used in this report.
  ///
  /// One `samplingMetadatas` is populated for each date range. Each
  /// `samplingMetadatas` corresponds to a date range in order that date ranges
  /// were specified in the request. However if the results are not sampled,
  /// this field will not be defined.
  core.List<SamplingMetadata>? samplingMetadatas;

  /// Describes the schema restrictions actively enforced in creating this
  /// report.
  ///
  /// To learn more, see \[Access and data-restriction
  /// management\](https://support.google.com/analytics/answer/10851388).
  SchemaRestrictionResponse? schemaRestrictionResponse;

  /// If `subjectToThresholding` is true, this report is subject to thresholding
  /// and only returns data that meets the minimum aggregation thresholds.
  ///
  /// It is possible for a request to be subject to thresholding thresholding
  /// and no data is absent from the report, and this happens when all data is
  /// above the thresholds. To learn more, see
  /// [Data thresholds](https://support.google.com/analytics/answer/9383630).
  core.bool? subjectToThresholding;

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
    this.samplingMetadatas,
    this.schemaRestrictionResponse,
    this.subjectToThresholding,
    this.timeZone,
  });

  ResponseMetaData.fromJson(core.Map json_)
    : this(
        currencyCode: json_['currencyCode'] as core.String?,
        dataLossFromOtherRow: json_['dataLossFromOtherRow'] as core.bool?,
        emptyReason: json_['emptyReason'] as core.String?,
        samplingMetadatas:
            (json_['samplingMetadatas'] as core.List?)
                ?.map(
                  (value) => SamplingMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        schemaRestrictionResponse:
            json_.containsKey('schemaRestrictionResponse')
                ? SchemaRestrictionResponse.fromJson(
                  json_['schemaRestrictionResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        subjectToThresholding: json_['subjectToThresholding'] as core.bool?,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currencyCode != null) 'currencyCode': currencyCode!,
    if (dataLossFromOtherRow != null)
      'dataLossFromOtherRow': dataLossFromOtherRow!,
    if (emptyReason != null) 'emptyReason': emptyReason!,
    if (samplingMetadatas != null) 'samplingMetadatas': samplingMetadatas!,
    if (schemaRestrictionResponse != null)
      'schemaRestrictionResponse': schemaRestrictionResponse!,
    if (subjectToThresholding != null)
      'subjectToThresholding': subjectToThresholding!,
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

  Row({this.dimensionValues, this.metricValues});

  Row.fromJson(core.Map json_)
    : this(
        dimensionValues:
            (json_['dimensionValues'] as core.List?)
                ?.map(
                  (value) => DimensionValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metricValues:
            (json_['metricValues'] as core.List?)
                ?.map(
                  (value) => MetricValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  /// The configuration of comparisons requested and displayed.
  ///
  /// The request requires both a comparisons field and a comparisons dimension
  /// to receive a comparison column in the response.
  ///
  /// Optional.
  core.List<Comparison>? comparisons;

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
  /// a filter. Regardless of this `keep_empty_rows` setting, only data recorded
  /// by the Google Analytics property can be displayed in a report. For example
  /// if a property never logs a `purchase` event, then a query for the
  /// `eventName` dimension and `eventCount` metric will not have a row
  /// eventName: "purchase" and eventCount: 0.
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

  /// A Google Analytics property identifier whose events are tracked.
  ///
  /// Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// Within a batch request, this property should either be unspecified or
  /// consistent with the batch-level property. Example: properties/1234
  core.String? property;

  /// Toggles whether to return the current state of this Google Analytics
  /// property's quota.
  ///
  /// Quota is returned in \[PropertyQuota\](#PropertyQuota).
  core.bool? returnPropertyQuota;

  RunPivotReportRequest({
    this.cohortSpec,
    this.comparisons,
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

  RunPivotReportRequest.fromJson(core.Map json_)
    : this(
        cohortSpec:
            json_.containsKey('cohortSpec')
                ? CohortSpec.fromJson(
                  json_['cohortSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        comparisons:
            (json_['comparisons'] as core.List?)
                ?.map(
                  (value) => Comparison.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        currencyCode: json_['currencyCode'] as core.String?,
        dateRanges:
            (json_['dateRanges'] as core.List?)
                ?.map(
                  (value) => DateRange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensionFilter:
            json_.containsKey('dimensionFilter')
                ? FilterExpression.fromJson(
                  json_['dimensionFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => Dimension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        keepEmptyRows: json_['keepEmptyRows'] as core.bool?,
        metricFilter:
            json_.containsKey('metricFilter')
                ? FilterExpression.fromJson(
                  json_['metricFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => Metric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pivots:
            (json_['pivots'] as core.List?)
                ?.map(
                  (value) => Pivot.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        property: json_['property'] as core.String?,
        returnPropertyQuota: json_['returnPropertyQuota'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cohortSpec != null) 'cohortSpec': cohortSpec!,
    if (comparisons != null) 'comparisons': comparisons!,
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

  /// This Google Analytics property's quota state including this request.
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

  RunPivotReportResponse.fromJson(core.Map json_)
    : this(
        aggregates:
            (json_['aggregates'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensionHeaders:
            (json_['dimensionHeaders'] as core.List?)
                ?.map(
                  (value) => DimensionHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        metadata:
            json_.containsKey('metadata')
                ? ResponseMetaData.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metricHeaders:
            (json_['metricHeaders'] as core.List?)
                ?.map(
                  (value) => MetricHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pivotHeaders:
            (json_['pivotHeaders'] as core.List?)
                ?.map(
                  (value) => PivotHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        propertyQuota:
            json_.containsKey('propertyQuota')
                ? PropertyQuota.fromJson(
                  json_['propertyQuota'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
  /// Metrics cannot be used in this filter.
  FilterExpression? dimensionFilter;

  /// The dimensions requested and displayed.
  core.List<Dimension>? dimensions;

  /// The number of rows to return.
  ///
  /// If unspecified, 10,000 rows are returned. The API returns a maximum of
  /// 250,000 rows per request, no matter how many you ask for. `limit` must be
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
  /// Applied at post aggregation phase, similar to SQL having-clause.
  /// Dimensions cannot be used in this filter.
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

  /// Toggles whether to return the current state of this Google Analytics
  /// property's Realtime quota.
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

  RunRealtimeReportRequest.fromJson(core.Map json_)
    : this(
        dimensionFilter:
            json_.containsKey('dimensionFilter')
                ? FilterExpression.fromJson(
                  json_['dimensionFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => Dimension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        limit: json_['limit'] as core.String?,
        metricAggregations:
            (json_['metricAggregations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        metricFilter:
            json_.containsKey('metricFilter')
                ? FilterExpression.fromJson(
                  json_['metricFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => Metric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        minuteRanges:
            (json_['minuteRanges'] as core.List?)
                ?.map(
                  (value) => MinuteRange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        orderBys:
            (json_['orderBys'] as core.List?)
                ?.map(
                  (value) => OrderBy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        returnPropertyQuota: json_['returnPropertyQuota'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (limit != null) 'limit': limit!,
    if (metricAggregations != null) 'metricAggregations': metricAggregations!,
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

  /// This Google Analytics property's Realtime quota state including this
  /// request.
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

  RunRealtimeReportResponse.fromJson(core.Map json_)
    : this(
        dimensionHeaders:
            (json_['dimensionHeaders'] as core.List?)
                ?.map(
                  (value) => DimensionHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        maximums:
            (json_['maximums'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metricHeaders:
            (json_['metricHeaders'] as core.List?)
                ?.map(
                  (value) => MetricHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        minimums:
            (json_['minimums'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        propertyQuota:
            json_.containsKey('propertyQuota')
                ? PropertyQuota.fromJson(
                  json_['propertyQuota'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rowCount: json_['rowCount'] as core.int?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totals:
            (json_['totals'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  /// The configuration of comparisons requested and displayed.
  ///
  /// The request only requires a comparisons field in order to receive a
  /// comparison column in the response.
  ///
  /// Optional.
  core.List<Comparison>? comparisons;

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

  /// Dimension filters let you ask for only specific dimension values in the
  /// report.
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
  /// a filter. Regardless of this `keep_empty_rows` setting, only data recorded
  /// by the Google Analytics property can be displayed in a report. For example
  /// if a property never logs a `purchase` event, then a query for the
  /// `eventName` dimension and `eventCount` metric will not have a row
  /// eventName: "purchase" and eventCount: 0.
  core.bool? keepEmptyRows;

  /// The number of rows to return.
  ///
  /// If unspecified, 10,000 rows are returned. The API returns a maximum of
  /// 250,000 rows per request, no matter how many you ask for. `limit` must be
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
  /// are set to "RESERVED_(MetricAggregation)". Aggregates including both
  /// comparisons and multiple date ranges will be aggregated based on the date
  /// ranges.
  core.List<core.String>? metricAggregations;

  /// The filter clause of metrics.
  ///
  /// Applied after aggregating the report's rows, similar to SQL having-clause.
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
  ///
  /// Requests including both comparisons and multiple date ranges will have
  /// order bys applied on the comparisons.
  core.List<OrderBy>? orderBys;

  /// A Google Analytics property identifier whose events are tracked.
  ///
  /// Specified in the URL path and not the body. To learn more, see
  /// [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
  /// Within a batch request, this property should either be unspecified or
  /// consistent with the batch-level property. Example: properties/1234
  core.String? property;

  /// Toggles whether to return the current state of this Google Analytics
  /// property's quota.
  ///
  /// Quota is returned in \[PropertyQuota\](#PropertyQuota).
  core.bool? returnPropertyQuota;

  RunReportRequest({
    this.cohortSpec,
    this.comparisons,
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

  RunReportRequest.fromJson(core.Map json_)
    : this(
        cohortSpec:
            json_.containsKey('cohortSpec')
                ? CohortSpec.fromJson(
                  json_['cohortSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        comparisons:
            (json_['comparisons'] as core.List?)
                ?.map(
                  (value) => Comparison.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        currencyCode: json_['currencyCode'] as core.String?,
        dateRanges:
            (json_['dateRanges'] as core.List?)
                ?.map(
                  (value) => DateRange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensionFilter:
            json_.containsKey('dimensionFilter')
                ? FilterExpression.fromJson(
                  json_['dimensionFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => Dimension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        keepEmptyRows: json_['keepEmptyRows'] as core.bool?,
        limit: json_['limit'] as core.String?,
        metricAggregations:
            (json_['metricAggregations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        metricFilter:
            json_.containsKey('metricFilter')
                ? FilterExpression.fromJson(
                  json_['metricFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => Metric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        offset: json_['offset'] as core.String?,
        orderBys:
            (json_['orderBys'] as core.List?)
                ?.map(
                  (value) => OrderBy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        property: json_['property'] as core.String?,
        returnPropertyQuota: json_['returnPropertyQuota'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cohortSpec != null) 'cohortSpec': cohortSpec!,
    if (comparisons != null) 'comparisons': comparisons!,
    if (currencyCode != null) 'currencyCode': currencyCode!,
    if (dateRanges != null) 'dateRanges': dateRanges!,
    if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (keepEmptyRows != null) 'keepEmptyRows': keepEmptyRows!,
    if (limit != null) 'limit': limit!,
    if (metricAggregations != null) 'metricAggregations': metricAggregations!,
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

  /// This Google Analytics property's quota state including this request.
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

  RunReportResponse.fromJson(core.Map json_)
    : this(
        dimensionHeaders:
            (json_['dimensionHeaders'] as core.List?)
                ?.map(
                  (value) => DimensionHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        maximums:
            (json_['maximums'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metadata:
            json_.containsKey('metadata')
                ? ResponseMetaData.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metricHeaders:
            (json_['metricHeaders'] as core.List?)
                ?.map(
                  (value) => MetricHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        minimums:
            (json_['minimums'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        propertyQuota:
            json_.containsKey('propertyQuota')
                ? PropertyQuota.fromJson(
                  json_['propertyQuota'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rowCount: json_['rowCount'] as core.int?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totals:
            (json_['totals'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

/// If this report results is
/// [sampled](https://support.google.com/analytics/answer/13331292), this
/// describes the percentage of events used in this report.
///
/// Sampling is the practice of analyzing a subset of all data in order to
/// uncover the meaningful information in the larger data set.
class SamplingMetadata {
  /// The total number of events read in this sampled report for a date range.
  ///
  /// This is the size of the subset this property's data that was analyzed in
  /// this report.
  core.String? samplesReadCount;

  /// The total number of events present in this property's data that could have
  /// been analyzed in this report for a date range.
  ///
  /// Sampling uncovers the meaningful information about the larger data set,
  /// and this is the size of the larger data set. To calculate the percentage
  /// of available data that was used in this report, compute
  /// `samplesReadCount/samplingSpaceSize`.
  core.String? samplingSpaceSize;

  SamplingMetadata({this.samplesReadCount, this.samplingSpaceSize});

  SamplingMetadata.fromJson(core.Map json_)
    : this(
        samplesReadCount: json_['samplesReadCount'] as core.String?,
        samplingSpaceSize: json_['samplingSpaceSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (samplesReadCount != null) 'samplesReadCount': samplesReadCount!,
    if (samplingSpaceSize != null) 'samplingSpaceSize': samplingSpaceSize!,
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

  SchemaRestrictionResponse({this.activeMetricRestrictions});

  SchemaRestrictionResponse.fromJson(core.Map json_)
    : this(
        activeMetricRestrictions:
            (json_['activeMetricRestrictions'] as core.List?)
                ?.map(
                  (value) => ActiveMetricRestriction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeMetricRestrictions != null)
      'activeMetricRestrictions': activeMetricRestrictions!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// The filter for string
typedef StringFilter = $StringFilter;

/// An audience dimension is a user attribute.
///
/// Specific user attributed are requested and then later returned in the
/// `QueryAudienceExportResponse`.
class V1betaAudienceDimension {
  /// The API name of the dimension.
  ///
  /// See the
  /// [API Dimensions](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-api-schema#dimensions)
  /// for the list of dimension names.
  ///
  /// Optional.
  core.String? dimensionName;

  V1betaAudienceDimension({this.dimensionName});

  V1betaAudienceDimension.fromJson(core.Map json_)
    : this(dimensionName: json_['dimensionName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensionName != null) 'dimensionName': dimensionName!,
  };
}

/// The value of a dimension.
typedef V1betaAudienceDimensionValue = $DimensionValue00;

/// Dimension value attributes for the audience user row.
class V1betaAudienceRow {
  /// Each dimension value attribute for an audience user.
  ///
  /// One dimension value will be added for each dimension column requested.
  core.List<V1betaAudienceDimensionValue>? dimensionValues;

  V1betaAudienceRow({this.dimensionValues});

  V1betaAudienceRow.fromJson(core.Map json_)
    : this(
        dimensionValues:
            (json_['dimensionValues'] as core.List?)
                ?.map(
                  (value) => V1betaAudienceDimensionValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensionValues != null) 'dimensionValues': dimensionValues!,
  };
}
