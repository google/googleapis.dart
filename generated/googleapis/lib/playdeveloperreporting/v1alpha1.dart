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

/// Google Play Developer Reporting API - v1alpha1
///
/// For more information, see
/// <https://developers.google.com/play/developer/reporting>
///
/// Create an instance of [PlaydeveloperreportingApi] to access these resources:
///
/// - [AnomaliesResource]
/// - [AppsResource]
/// - [VitalsResource]
///   - [VitalsAnrrateResource]
///   - [VitalsCrashrateResource]
///   - [VitalsErrorsResource]
///     - [VitalsErrorsCountsResource]
///     - [VitalsErrorsIssuesResource]
///     - [VitalsErrorsReportsResource]
///   - [VitalsExcessivewakeuprateResource]
///   - [VitalsLmkrateResource]
///   - [VitalsSlowrenderingrateResource]
///   - [VitalsSlowstartrateResource]
///   - [VitalsStuckbackgroundwakelockrateResource]
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

class PlaydeveloperreportingApi {
  /// See metrics and data about the apps in your Google Play Developer account
  static const playdeveloperreportingScope =
      'https://www.googleapis.com/auth/playdeveloperreporting';

  final commons.ApiRequester _requester;

  AnomaliesResource get anomalies => AnomaliesResource(_requester);
  AppsResource get apps => AppsResource(_requester);
  VitalsResource get vitals => VitalsResource(_requester);

  PlaydeveloperreportingApi(
    http.Client client, {
    core.String rootUrl = 'https://playdeveloperreporting.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AnomaliesResource {
  final commons.ApiRequester _requester;

  AnomaliesResource(commons.ApiRequester client) : _requester = client;

  /// Lists anomalies in any of the datasets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent app for which anomalies were detected. Format:
  /// apps/{app}
  /// Value must have pattern `^apps/\[^/\]+$`.
  ///
  /// [filter] - Filtering criteria for anomalies. For basic filter guidance,
  /// please check: https://google.aip.dev/160. **Supported functions:** *
  /// `activeBetween(startTime, endTime)`: If specified, only list anomalies
  /// that were active in between `startTime` (inclusive) and `endTime`
  /// (exclusive). Both parameters are expected to conform to an RFC-3339
  /// formatted string (e.g. `2012-04-21T11:30:00-04:00`). UTC offsets are
  /// supported. Both `startTime` and `endTime` accept the special value
  /// `UNBOUNDED`, to signify intervals with no lower or upper bound,
  /// respectively. Examples: * `activeBetween("2021-04-21T11:30:00Z",
  /// "2021-07-21T00:00:00Z")` * `activeBetween(UNBOUNDED,
  /// "2021-11-21T00:00:00-04:00")` *
  /// `activeBetween("2021-07-21T00:00:00-04:00", UNBOUNDED)`
  ///
  /// [pageSize] - Maximum size of the returned data. If unspecified, at most 10
  /// anomalies will be returned. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A page token, received from a previous `ListErrorReports`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListErrorReports` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse> list(
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/anomalies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AppsResource {
  final commons.ApiRequester _requester;

  AppsResource(commons.ApiRequester client) : _requester = client;

  /// Describes filtering options for releases.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource, i.e. app the filtering options
  /// are for. Format: apps/{app}
  /// Value must have pattern `^apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions>
  fetchReleaseFilterOptions(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' +
        core.Uri.encodeFull('$name') +
        ':fetchReleaseFilterOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Searches for Apps accessible by the user.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of apps to return. The service may return
  /// fewer than this value. If unspecified, at most 50 apps will be returned.
  /// The maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `SearchAccessibleApps` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `SearchAccessibleApps`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse>
  search({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/apps:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsResource {
  final commons.ApiRequester _requester;

  VitalsAnrrateResource get anrrate => VitalsAnrrateResource(_requester);
  VitalsCrashrateResource get crashrate => VitalsCrashrateResource(_requester);
  VitalsErrorsResource get errors => VitalsErrorsResource(_requester);
  VitalsExcessivewakeuprateResource get excessivewakeuprate =>
      VitalsExcessivewakeuprateResource(_requester);
  VitalsLmkrateResource get lmkrate => VitalsLmkrateResource(_requester);
  VitalsSlowrenderingrateResource get slowrenderingrate =>
      VitalsSlowrenderingrateResource(_requester);
  VitalsSlowstartrateResource get slowstartrate =>
      VitalsSlowstartrateResource(_requester);
  VitalsStuckbackgroundwakelockrateResource get stuckbackgroundwakelockrate =>
      VitalsStuckbackgroundwakelockrateResource(_requester);

  VitalsResource(commons.ApiRequester client) : _requester = client;
}

class VitalsAnrrateResource {
  final commons.ApiRequester _requester;

  VitalsAnrrateResource(commons.ApiRequester client) : _requester = client;

  /// Describes the properties of the metric set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format: apps/{app}/anrRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/anrRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the metrics in the metric set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format: apps/{app}/anrRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/anrRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse
  >
  query(
    GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsCrashrateResource {
  final commons.ApiRequester _requester;

  VitalsCrashrateResource(commons.ApiRequester client) : _requester = client;

  /// Describes the properties of the metric set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/crashRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/crashRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the metrics in the metric set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/crashRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/crashRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse
  >
  query(
    GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsErrorsResource {
  final commons.ApiRequester _requester;

  VitalsErrorsCountsResource get counts =>
      VitalsErrorsCountsResource(_requester);
  VitalsErrorsIssuesResource get issues =>
      VitalsErrorsIssuesResource(_requester);
  VitalsErrorsReportsResource get reports =>
      VitalsErrorsReportsResource(_requester);

  VitalsErrorsResource(commons.ApiRequester client) : _requester = client;
}

class VitalsErrorsCountsResource {
  final commons.ApiRequester _requester;

  VitalsErrorsCountsResource(commons.ApiRequester client) : _requester = client;

  /// Describes the properties of the metrics set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the errors metric set. Format:
  /// apps/{app}/errorCountMetricSet
  /// Value must have pattern `^apps/\[^/\]+/errorCountMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the metrics in the metrics set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/errorCountMetricSet
  /// Value must have pattern `^apps/\[^/\]+/errorCountMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse
  >
  query(
    GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsErrorsIssuesResource {
  final commons.ApiRequester _requester;

  VitalsErrorsIssuesResource(commons.ApiRequester client) : _requester = client;

  /// Searches all error issues in which reports have been grouped.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the error issues, indicating the
  /// application for which they were received. Format: apps/{app}
  /// Value must have pattern `^apps/\[^/\]+$`.
  ///
  /// [filter] - A selection predicate to retrieve only a subset of the issues.
  /// Counts in the returned error issues will only reflect occurrences that
  /// matched the filter. For filtering basics, please check
  /// \[AIP-160\](https://google.aip.dev/160). ** Supported field names:** *
  /// \`apiLevel\`: Matches error issues that occurred in the requested Android
  /// versions (specified as the numeric API level) only. Example: \`apiLevel =
  /// 28 OR apiLevel = 29\`. * \`versionCode\`: Matches error issues that
  /// occurred in the requested app version codes only. Example: \`versionCode =
  /// 123 OR versionCode = 456\`. * \`deviceModel\`: Matches error issues that
  /// occurred in the requested devices. Example: \`deviceModel =
  /// "google/walleye" OR deviceModel = "google/marlin"\`. * \`deviceBrand\`:
  /// Matches error issues that occurred in the requested device brands.
  /// Example: \`deviceBrand = "Google". * \`deviceType\`: Matches error issues
  /// that occurred in the requested device types. Example: \`deviceType =
  /// "PHONE"\`. * \`errorIssueType\`: Matches error issues of the requested
  /// types only. Valid candidates: \`CRASH\`, \`ANR\`, \`NON_FATAL\`. Example:
  /// \`errorIssueType = CRASH OR errorIssueType = ANR\`. * \`appProcessState\`:
  /// Matches error issues on the process state of an app, indicating whether an
  /// app runs in the foreground (user-visible) or background. Valid candidates:
  /// \`FOREGROUND\`, \`BACKGROUND\`. Example: \`appProcessState = FOREGROUND\`.
  /// * \`isUserPerceived\`: Matches error issues that are user-perceived. It is
  /// not accompanied by any operators. Example: \`isUserPerceived\`. **
  /// Supported operators:** * Comparison operators: The only supported
  /// comparison operator is equality. The filtered field must appear on the
  /// left hand side of the comparison. * Logical Operators: Logical operators
  /// \`AND\` and \`OR\` can be used to build complex filters following a
  /// conjunctive normal form (CNF), i.e., conjunctions of disjunctions. The
  /// \`OR\` operator takes precedence over \`AND\` so the use of parenthesis is
  /// not necessary when building CNF. The \`OR\` operator is only supported to
  /// build disjunctions that apply to the same field, e.g., \`versionCode = 123
  /// OR errorIssueType = ANR\` is not a valid filter. ** Examples ** Some valid
  /// filtering expressions: * \`versionCode = 123 AND errorIssueType = ANR\` *
  /// \`versionCode = 123 AND errorIssueType = OR errorIssueType = CRASH\` *
  /// \`versionCode = 123 AND (errorIssueType = OR errorIssueType = CRASH)\`
  ///
  /// [interval_endTime_day] - Optional. Day of month. Must be from 1 to 31 and
  /// valid for the year and month, or 0 if specifying a datetime without a day.
  ///
  /// [interval_endTime_hours] - Optional. Hours of day in 24 hour format.
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// [interval_endTime_minutes] - Optional. Minutes of hour of day. Must be
  /// from 0 to 59, defaults to 0.
  ///
  /// [interval_endTime_month] - Optional. Month of year. Must be from 1 to 12,
  /// or 0 if specifying a datetime without a month.
  ///
  /// [interval_endTime_nanos] - Optional. Fractions of seconds in nanoseconds.
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// [interval_endTime_seconds] - Optional. Seconds of minutes of the time.
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// [interval_endTime_timeZone_id] - IANA Time Zone Database time zone. For
  /// example "America/New_York".
  ///
  /// [interval_endTime_timeZone_version] - Optional. IANA Time Zone Database
  /// version number. For example "2019a".
  ///
  /// [interval_endTime_utcOffset] - UTC offset. Must be whole seconds, between
  /// -18 hours and +18 hours. For example, a UTC offset of -4:00 would be
  /// represented as { seconds: -14400 }.
  ///
  /// [interval_endTime_year] - Optional. Year of date. Must be from 1 to 9999,
  /// or 0 if specifying a datetime without a year.
  ///
  /// [interval_startTime_day] - Optional. Day of month. Must be from 1 to 31
  /// and valid for the year and month, or 0 if specifying a datetime without a
  /// day.
  ///
  /// [interval_startTime_hours] - Optional. Hours of day in 24 hour format.
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// [interval_startTime_minutes] - Optional. Minutes of hour of day. Must be
  /// from 0 to 59, defaults to 0.
  ///
  /// [interval_startTime_month] - Optional. Month of year. Must be from 1 to
  /// 12, or 0 if specifying a datetime without a month.
  ///
  /// [interval_startTime_nanos] - Optional. Fractions of seconds in
  /// nanoseconds. Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// [interval_startTime_seconds] - Optional. Seconds of minutes of the time.
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// [interval_startTime_timeZone_id] - IANA Time Zone Database time zone. For
  /// example "America/New_York".
  ///
  /// [interval_startTime_timeZone_version] - Optional. IANA Time Zone Database
  /// version number. For example "2019a".
  ///
  /// [interval_startTime_utcOffset] - UTC offset. Must be whole seconds,
  /// between -18 hours and +18 hours. For example, a UTC offset of -4:00 would
  /// be represented as { seconds: -14400 }.
  ///
  /// [interval_startTime_year] - Optional. Year of date. Must be from 1 to
  /// 9999, or 0 if specifying a datetime without a year.
  ///
  /// [orderBy] - Specifies a field that will be used to order the results. **
  /// Supported dimensions:** * `errorReportCount`: Orders issues by number of
  /// error reports. * `distinctUsers`: Orders issues by number of unique
  /// affected users. ** Supported operations:** * `asc` for ascending order. *
  /// `desc` for descending order. Format: A field and an operation, e.g.,
  /// `errorReportCount desc` *Note:* currently only one field is supported at a
  /// time.
  ///
  /// [pageSize] - The maximum number of error issues to return. The service may
  /// return fewer than this value. If unspecified, at most 50 error issues will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - A page token, received from a previous call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to the request must match the call that provided the page token.
  ///
  /// [sampleErrorReportLimit] - Optional. Number of sample error reports to
  /// return per ErrorIssue. If unspecified, 0 will be used. *Note:* currently
  /// only 0 and 1 are supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse>
  search(
    core.String parent, {
    core.String? filter,
    core.int? interval_endTime_day,
    core.int? interval_endTime_hours,
    core.int? interval_endTime_minutes,
    core.int? interval_endTime_month,
    core.int? interval_endTime_nanos,
    core.int? interval_endTime_seconds,
    core.String? interval_endTime_timeZone_id,
    core.String? interval_endTime_timeZone_version,
    core.String? interval_endTime_utcOffset,
    core.int? interval_endTime_year,
    core.int? interval_startTime_day,
    core.int? interval_startTime_hours,
    core.int? interval_startTime_minutes,
    core.int? interval_startTime_month,
    core.int? interval_startTime_nanos,
    core.int? interval_startTime_seconds,
    core.String? interval_startTime_timeZone_id,
    core.String? interval_startTime_timeZone_version,
    core.String? interval_startTime_utcOffset,
    core.int? interval_startTime_year,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.int? sampleErrorReportLimit,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (interval_endTime_day != null)
        'interval.endTime.day': ['${interval_endTime_day}'],
      if (interval_endTime_hours != null)
        'interval.endTime.hours': ['${interval_endTime_hours}'],
      if (interval_endTime_minutes != null)
        'interval.endTime.minutes': ['${interval_endTime_minutes}'],
      if (interval_endTime_month != null)
        'interval.endTime.month': ['${interval_endTime_month}'],
      if (interval_endTime_nanos != null)
        'interval.endTime.nanos': ['${interval_endTime_nanos}'],
      if (interval_endTime_seconds != null)
        'interval.endTime.seconds': ['${interval_endTime_seconds}'],
      if (interval_endTime_timeZone_id != null)
        'interval.endTime.timeZone.id': [interval_endTime_timeZone_id],
      if (interval_endTime_timeZone_version != null)
        'interval.endTime.timeZone.version': [
          interval_endTime_timeZone_version,
        ],
      if (interval_endTime_utcOffset != null)
        'interval.endTime.utcOffset': [interval_endTime_utcOffset],
      if (interval_endTime_year != null)
        'interval.endTime.year': ['${interval_endTime_year}'],
      if (interval_startTime_day != null)
        'interval.startTime.day': ['${interval_startTime_day}'],
      if (interval_startTime_hours != null)
        'interval.startTime.hours': ['${interval_startTime_hours}'],
      if (interval_startTime_minutes != null)
        'interval.startTime.minutes': ['${interval_startTime_minutes}'],
      if (interval_startTime_month != null)
        'interval.startTime.month': ['${interval_startTime_month}'],
      if (interval_startTime_nanos != null)
        'interval.startTime.nanos': ['${interval_startTime_nanos}'],
      if (interval_startTime_seconds != null)
        'interval.startTime.seconds': ['${interval_startTime_seconds}'],
      if (interval_startTime_timeZone_id != null)
        'interval.startTime.timeZone.id': [interval_startTime_timeZone_id],
      if (interval_startTime_timeZone_version != null)
        'interval.startTime.timeZone.version': [
          interval_startTime_timeZone_version,
        ],
      if (interval_startTime_utcOffset != null)
        'interval.startTime.utcOffset': [interval_startTime_utcOffset],
      if (interval_startTime_year != null)
        'interval.startTime.year': ['${interval_startTime_year}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sampleErrorReportLimit != null)
        'sampleErrorReportLimit': ['${sampleErrorReportLimit}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/errorIssues:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsErrorsReportsResource {
  final commons.ApiRequester _requester;

  VitalsErrorsReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Searches all error reports received for an app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the reports, indicating the
  /// application for which they were received. Format: apps/{app}
  /// Value must have pattern `^apps/\[^/\]+$`.
  ///
  /// [filter] - A selection predicate to retrieve only a subset of the reports.
  /// For filtering basics, please check
  /// \[AIP-160\](https://google.aip.dev/160). ** Supported field names:** *
  /// \`apiLevel\`: Matches error reports that occurred in the requested Android
  /// versions (specified as the numeric API level) only. Example: \`apiLevel =
  /// 28 OR apiLevel = 29\`. * \`versionCode\`: Matches error reports that
  /// occurred in the requested app version codes only. Example: \`versionCode =
  /// 123 OR versionCode = 456\`. * \`deviceModel\`: Matches error issues that
  /// occurred in the requested devices. Example: \`deviceModel =
  /// "google/walleye" OR deviceModel = "google/marlin"\`. * \`deviceBrand\`:
  /// Matches error issues that occurred in the requested device brands.
  /// Example: \`deviceBrand = "Google". * \`deviceType\`: Matches error reports
  /// that occurred in the requested device types. Example: \`deviceType =
  /// "PHONE"\`. * \`errorIssueType\`: Matches error reports of the requested
  /// types only. Valid candidates: \`CRASH\`, \`ANR\`, \`NON_FATAL\`. Example:
  /// \`errorIssueType = CRASH OR errorIssueType = ANR\`. * \`errorIssueId\`:
  /// Matches error reports belonging to the requested error issue ids only.
  /// Example: \`errorIssueId = 1234 OR errorIssueId = 4567\`. *
  /// \`errorReportId\`: Matches error reports with the requested error report
  /// id. Example: \`errorReportId = 1234 OR errorReportId = 4567\`. *
  /// \`appProcessState\`: Matches error reports on the process state of an app,
  /// indicating whether an app runs in the foreground (user-visible) or
  /// background. Valid candidates: \`FOREGROUND\`, \`BACKGROUND\`. Example:
  /// \`appProcessState = FOREGROUND\`. * \`isUserPerceived\`: Matches error
  /// reports that are user-perceived. It is not accompanied by any operators.
  /// Example: \`isUserPerceived\`. ** Supported operators:** * Comparison
  /// operators: The only supported comparison operator is equality. The
  /// filtered field must appear on the left hand side of the comparison. *
  /// Logical Operators: Logical operators \`AND\` and \`OR\` can be used to
  /// build complex filters following a conjunctive normal form (CNF), i.e.,
  /// conjunctions of disjunctions. The \`OR\` operator takes precedence over
  /// \`AND\` so the use of parenthesis is not necessary when building CNF. The
  /// \`OR\` operator is only supported to build disjunctions that apply to the
  /// same field, e.g., \`versionCode = 123 OR versionCode = ANR\`. The filter
  /// expression \`versionCode = 123 OR errorIssueType = ANR\` is not valid. **
  /// Examples ** Some valid filtering expressions: * \`versionCode = 123 AND
  /// errorIssueType = ANR\` * \`versionCode = 123 AND errorIssueType = OR
  /// errorIssueType = CRASH\` * \`versionCode = 123 AND (errorIssueType = OR
  /// errorIssueType = CRASH)\`
  ///
  /// [interval_endTime_day] - Optional. Day of month. Must be from 1 to 31 and
  /// valid for the year and month, or 0 if specifying a datetime without a day.
  ///
  /// [interval_endTime_hours] - Optional. Hours of day in 24 hour format.
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// [interval_endTime_minutes] - Optional. Minutes of hour of day. Must be
  /// from 0 to 59, defaults to 0.
  ///
  /// [interval_endTime_month] - Optional. Month of year. Must be from 1 to 12,
  /// or 0 if specifying a datetime without a month.
  ///
  /// [interval_endTime_nanos] - Optional. Fractions of seconds in nanoseconds.
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// [interval_endTime_seconds] - Optional. Seconds of minutes of the time.
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// [interval_endTime_timeZone_id] - IANA Time Zone Database time zone. For
  /// example "America/New_York".
  ///
  /// [interval_endTime_timeZone_version] - Optional. IANA Time Zone Database
  /// version number. For example "2019a".
  ///
  /// [interval_endTime_utcOffset] - UTC offset. Must be whole seconds, between
  /// -18 hours and +18 hours. For example, a UTC offset of -4:00 would be
  /// represented as { seconds: -14400 }.
  ///
  /// [interval_endTime_year] - Optional. Year of date. Must be from 1 to 9999,
  /// or 0 if specifying a datetime without a year.
  ///
  /// [interval_startTime_day] - Optional. Day of month. Must be from 1 to 31
  /// and valid for the year and month, or 0 if specifying a datetime without a
  /// day.
  ///
  /// [interval_startTime_hours] - Optional. Hours of day in 24 hour format.
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// [interval_startTime_minutes] - Optional. Minutes of hour of day. Must be
  /// from 0 to 59, defaults to 0.
  ///
  /// [interval_startTime_month] - Optional. Month of year. Must be from 1 to
  /// 12, or 0 if specifying a datetime without a month.
  ///
  /// [interval_startTime_nanos] - Optional. Fractions of seconds in
  /// nanoseconds. Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// [interval_startTime_seconds] - Optional. Seconds of minutes of the time.
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// [interval_startTime_timeZone_id] - IANA Time Zone Database time zone. For
  /// example "America/New_York".
  ///
  /// [interval_startTime_timeZone_version] - Optional. IANA Time Zone Database
  /// version number. For example "2019a".
  ///
  /// [interval_startTime_utcOffset] - UTC offset. Must be whole seconds,
  /// between -18 hours and +18 hours. For example, a UTC offset of -4:00 would
  /// be represented as { seconds: -14400 }.
  ///
  /// [interval_startTime_year] - Optional. Year of date. Must be from 1 to
  /// 9999, or 0 if specifying a datetime without a year.
  ///
  /// [pageSize] - The maximum number of reports to return. The service may
  /// return fewer than this value. If unspecified, at most 50 reports will be
  /// returned. The maximum value is 100; values above 100 will be coerced to
  /// 100.
  ///
  /// [pageToken] - A page token, received from a previous `SearchErrorReports`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `SearchErrorReports` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse>
  search(
    core.String parent, {
    core.String? filter,
    core.int? interval_endTime_day,
    core.int? interval_endTime_hours,
    core.int? interval_endTime_minutes,
    core.int? interval_endTime_month,
    core.int? interval_endTime_nanos,
    core.int? interval_endTime_seconds,
    core.String? interval_endTime_timeZone_id,
    core.String? interval_endTime_timeZone_version,
    core.String? interval_endTime_utcOffset,
    core.int? interval_endTime_year,
    core.int? interval_startTime_day,
    core.int? interval_startTime_hours,
    core.int? interval_startTime_minutes,
    core.int? interval_startTime_month,
    core.int? interval_startTime_nanos,
    core.int? interval_startTime_seconds,
    core.String? interval_startTime_timeZone_id,
    core.String? interval_startTime_timeZone_version,
    core.String? interval_startTime_utcOffset,
    core.int? interval_startTime_year,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (interval_endTime_day != null)
        'interval.endTime.day': ['${interval_endTime_day}'],
      if (interval_endTime_hours != null)
        'interval.endTime.hours': ['${interval_endTime_hours}'],
      if (interval_endTime_minutes != null)
        'interval.endTime.minutes': ['${interval_endTime_minutes}'],
      if (interval_endTime_month != null)
        'interval.endTime.month': ['${interval_endTime_month}'],
      if (interval_endTime_nanos != null)
        'interval.endTime.nanos': ['${interval_endTime_nanos}'],
      if (interval_endTime_seconds != null)
        'interval.endTime.seconds': ['${interval_endTime_seconds}'],
      if (interval_endTime_timeZone_id != null)
        'interval.endTime.timeZone.id': [interval_endTime_timeZone_id],
      if (interval_endTime_timeZone_version != null)
        'interval.endTime.timeZone.version': [
          interval_endTime_timeZone_version,
        ],
      if (interval_endTime_utcOffset != null)
        'interval.endTime.utcOffset': [interval_endTime_utcOffset],
      if (interval_endTime_year != null)
        'interval.endTime.year': ['${interval_endTime_year}'],
      if (interval_startTime_day != null)
        'interval.startTime.day': ['${interval_startTime_day}'],
      if (interval_startTime_hours != null)
        'interval.startTime.hours': ['${interval_startTime_hours}'],
      if (interval_startTime_minutes != null)
        'interval.startTime.minutes': ['${interval_startTime_minutes}'],
      if (interval_startTime_month != null)
        'interval.startTime.month': ['${interval_startTime_month}'],
      if (interval_startTime_nanos != null)
        'interval.startTime.nanos': ['${interval_startTime_nanos}'],
      if (interval_startTime_seconds != null)
        'interval.startTime.seconds': ['${interval_startTime_seconds}'],
      if (interval_startTime_timeZone_id != null)
        'interval.startTime.timeZone.id': [interval_startTime_timeZone_id],
      if (interval_startTime_timeZone_version != null)
        'interval.startTime.timeZone.version': [
          interval_startTime_timeZone_version,
        ],
      if (interval_startTime_utcOffset != null)
        'interval.startTime.utcOffset': [interval_startTime_utcOffset],
      if (interval_startTime_year != null)
        'interval.startTime.year': ['${interval_startTime_year}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/errorReports:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsExcessivewakeuprateResource {
  final commons.ApiRequester _requester;

  VitalsExcessivewakeuprateResource(commons.ApiRequester client)
    : _requester = client;

  /// Describes the properties of the metric set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/excessiveWakeupRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/excessiveWakeupRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet>
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the metrics in the metric set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/excessiveWakeupRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/excessiveWakeupRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse
  >
  query(
    GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest
    request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsLmkrateResource {
  final commons.ApiRequester _requester;

  VitalsLmkrateResource(commons.ApiRequester client) : _requester = client;

  /// Describes the properties of the metric set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format: apps/{app}/lmkRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/lmkRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the metrics in the metric set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format: apps/{app}/lmkRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/lmkRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse
  >
  query(
    GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsSlowrenderingrateResource {
  final commons.ApiRequester _requester;

  VitalsSlowrenderingrateResource(commons.ApiRequester client)
    : _requester = client;

  /// Describes the properties of the metric set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/slowRenderingRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/slowRenderingRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet>
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the metrics in the metric set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/slowRenderingRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/slowRenderingRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse
  >
  query(
    GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest
    request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsSlowstartrateResource {
  final commons.ApiRequester _requester;

  VitalsSlowstartrateResource(commons.ApiRequester client)
    : _requester = client;

  /// Describes the properties of the metric set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/slowStartRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/slowStartRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the metrics in the metric set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/slowStartRateMetricSet
  /// Value must have pattern `^apps/\[^/\]+/slowStartRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse
  >
  query(
    GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest
    request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VitalsStuckbackgroundwakelockrateResource {
  final commons.ApiRequester _requester;

  VitalsStuckbackgroundwakelockrateResource(commons.ApiRequester client)
    : _requester = client;

  /// Describes the properties of the metric set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/stuckBackgroundWakelockRateMetricSet
  /// Value must have pattern
  /// `^apps/\[^/\]+/stuckBackgroundWakelockRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet
  >
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the metrics in the metric set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name. Format:
  /// apps/{app}/stuckBackgroundWakelockRateMetricSet
  /// Value must have pattern
  /// `^apps/\[^/\]+/stuckBackgroundWakelockRateMetricSet$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse
  >
  query(
    GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest
    request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Represents an anomaly detected in a dataset.
///
/// Our anomaly detection systems flag datapoints in a time series that fall
/// outside of and expected range derived from historical data. Although those
/// expected ranges have an upper and a lower bound, we only flag anomalies when
/// the data has become unexpectedly _worse_, which usually corresponds to the
/// case where the metric crosses the upper bound. Multiple contiguous
/// datapoints in a timeline outside of the expected range will be grouped into
/// a single anomaly. Therefore, an anomaly represents effectively a segment of
/// a metric's timeline. The information stored in the `timeline_spec`,
/// `dimensions` and `metric` can be used to fetch a full timeline with extended
/// ragne for context. **Required permissions**: to access this resource, the
/// calling user needs the _View app information (read-only)_ permission for the
/// app.
class GooglePlayDeveloperReportingV1alpha1Anomaly {
  /// Combination of dimensions in which the anomaly was detected.
  core.List<GooglePlayDeveloperReportingV1alpha1DimensionValue>? dimensions;

  /// Metric where the anomaly was detected, together with the anomalous value.
  GooglePlayDeveloperReportingV1alpha1MetricValue? metric;

  /// Metric set resource where the anomaly was detected.
  core.String? metricSet;

  /// Identifier.
  ///
  /// Name of the anomaly. Format: apps/{app}/anomalies/{anomaly}
  core.String? name;

  /// Timeline specification that covers the anomaly period.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  GooglePlayDeveloperReportingV1alpha1Anomaly({
    this.dimensions,
    this.metric,
    this.metricSet,
    this.name,
    this.timelineSpec,
  });

  GooglePlayDeveloperReportingV1alpha1Anomaly.fromJson(core.Map json_)
    : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1DimensionValue.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        metric:
            json_.containsKey('metric')
                ? GooglePlayDeveloperReportingV1alpha1MetricValue.fromJson(
                  json_['metric'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metricSet: json_['metricSet'] as core.String?,
        name: json_['name'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (metric != null) 'metric': metric!,
    if (metricSet != null) 'metricSet': metricSet!,
    if (name != null) 'name': name!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
  };
}

/// Singleton resource representing the set of ANR (Application not responding)
/// metrics.
///
/// This metric set contains ANRs data combined with usage data to produce a
/// normalized metric independent of user counts. **Supported aggregation
/// periods:** * DAILY: metrics are aggregated in calendar date intervals. Due
/// to historical constraints, the only supported timezone is
/// `America/Los_Angeles`. * HOURLY: metrics are aggregated in hourly intervals.
/// The default and only supported timezone is `UTC`. **Supported metrics:** *
/// `anrRate` (`google.type.Decimal`): Percentage of distinct users in the
/// aggregation period that experienced at least one ANR. *
/// `anrRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of
/// `anrRate` in the last 7 days. The daily values are weighted by the count of
/// distinct users for the day. Not supported in HOURLY granularity. *
/// `anrRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of
/// `anrRate` in the last 28 days. The daily values are weighted by the count of
/// distinct users for the day. Not supported in HOURLY granularity. *
/// `userPerceivedAnrRate` (`google.type.Decimal`): Percentage of distinct users
/// in the aggregation period that experienced at least one user-perceived ANR.
/// User-perceived ANRs are currently those of 'Input dispatching' type. *
/// `userPerceivedAnrRate7dUserWeighted` (`google.type.Decimal`): Rolling
/// average value of `userPerceivedAnrRate` in the last 7 days. The daily values
/// are weighted by the count of distinct users for the day. Not supported in
/// HOURLY granularity. * `userPerceivedAnrRate28dUserWeighted`
/// (`google.type.Decimal`): Rolling average value of `userPerceivedAnrRate` in
/// the last 28 days. The daily values are weighted by the count of distinct
/// users for the day. * `distinctUsers` (`google.type.Decimal`): Count of
/// distinct users in the aggregation period that were used as normalization
/// value for the `anrRate` and `userPerceivedAnrRate` metrics. A user is
/// counted in this metric if they used the app in the foreground during the
/// aggregation period. Care must be taken not to aggregate this count further,
/// as it may result in users being counted multiple times. The value is rounded
/// to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the
/// magnitude of the value. **Supported dimensions:** * `apiLevel` (string): the
/// API level of Android that was running on the user's device, e.g., 26. *
/// `versionCode` (int64): version of the app that was running on the user's
/// device. * `deviceModel` (string): unique identifier of the user's device
/// model. The form of the identifier is 'deviceBrand/device', where deviceBrand
/// corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
/// google/coral. * `deviceBrand` (string): unique identifier of the user's
/// device brand, e.g., google. * `deviceType` (string): the type (also known as
/// form factor) of the user's device, e.g., PHONE. * `countryCode` (string):
/// the country or region of the user's device based on their IP address,
/// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
/// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
/// etc.). * `deviceSocMake` (string): Make of the device's primary
/// system-on-chip, e.g., Samsung.
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
/// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
/// e.g., "Exynos 2100".
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
/// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
/// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
/// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
/// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
/// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
/// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
/// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device,
/// e.g., "196610". * `deviceScreenSize` (string): Screen size of the device,
/// e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the
/// device, e.g., mdpi, hdpi. **Required permissions**: to access this resource,
/// the calling user needs the _View app information (read-only)_ permission for
/// the app. **Related metric sets:** * vitals.errors contains unnormalized
/// version (absolute counts) of crashes. * vitals.errors contains normalized
/// metrics about crashes, another stability metric.
class GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet {
  /// Summary about data freshness in this resource.
  GooglePlayDeveloperReportingV1alpha1FreshnessInfo? freshnessInfo;

  /// Identifier.
  ///
  /// The resource name. Format: apps/{app}/anrRateMetricSet
  core.String? name;

  GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet({
    this.freshnessInfo,
    this.name,
  });

  GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet.fromJson(core.Map json_)
    : this(
        freshnessInfo:
            json_.containsKey('freshnessInfo')
                ? GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
                  json_['freshnessInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnessInfo != null) 'freshnessInfo': freshnessInfo!,
    if (name != null) 'name': name!,
  };
}

/// A representation of an app in the Play Store.
typedef GooglePlayDeveloperReportingV1alpha1App = $App;

/// Representations of an app version.
typedef GooglePlayDeveloperReportingV1alpha1AppVersion = $AppVersion;

/// Singleton resource representing the set of crashrate metrics.
///
/// This metric set contains crashes data combined with usage data to produce a
/// normalized metric independent of user counts. **Supported aggregation
/// periods:** * DAILY: metrics are aggregated in calendar date intervals. Due
/// to historical constraints, the only supported timezone is
/// `America/Los_Angeles`. * HOURLY: metrics are aggregated in hourly intervals.
/// The default and only supported timezone is `UTC`. **Supported metrics:** *
/// `crashRate` (`google.type.Decimal`): Percentage of distinct users in the
/// aggregation period that experienced at least one crash. *
/// `crashRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of
/// `crashRate` in the last 7 days. The daily values are weighted by the count
/// of distinct users for the day. Not supported in HOURLY granularity. *
/// `crashRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of
/// `crashRate` in the last 28 days. The daily values are weighted by the count
/// of distinct users for the day. Not supported in HOURLY granularity. *
/// `userPerceivedCrashRate` (`google.type.Decimal`): Percentage of distinct
/// users in the aggregation period that experienced at least one crash while
/// they were actively using your app (a user-perceived crash). An app is
/// considered to be in active use if it is displaying any activity or executing
/// any foreground service. * `userPerceivedCrashRate7dUserWeighted`
/// (`google.type.Decimal`): Rolling average value of `userPerceivedCrashRate`
/// in the last 7 days. The daily values are weighted by the count of distinct
/// users for the day. Not supported in HOURLY granularity. *
/// `userPerceivedCrashRate28dUserWeighted` (`google.type.Decimal`): Rolling
/// average value of `userPerceivedCrashRate` in the last 28 days. The daily
/// values are weighted by the count of distinct users for the day. Not
/// supported in HOURLY granularity. * `distinctUsers` (`google.type.Decimal`):
/// Count of distinct users in the aggregation period that were used as
/// normalization value for the `crashRate` and `userPerceivedCrashRate`
/// metrics. A user is counted in this metric if they used the app actively
/// during the aggregation period. An app is considered to be in active use if
/// it is displaying any activity or executing any foreground service. Care must
/// be taken not to aggregate this count further, as it may result in users
/// being counted multiple times. The value is rounded to the nearest multiple
/// of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value.
/// **Supported dimensions:** * `apiLevel` (string): the API level of Android
/// that was running on the user's device, e.g., 26. * `versionCode` (int64):
/// version of the app that was running on the user's device. * `deviceModel`
/// (string): unique identifier of the user's device model. The form of the
/// identifier is 'deviceBrand/device', where deviceBrand corresponds to
/// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
/// `deviceBrand` (string): unique identifier of the user's device brand, e.g.,
/// google. * `deviceType` (string): the type (also known as form factor) of the
/// user's device, e.g., PHONE. * `countryCode` (string): the country or region
/// of the user's device based on their IP address, represented as a 2-letter
/// ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64):
/// RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake`
/// (string): Make of the device's primary system-on-chip, e.g., Samsung.
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
/// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
/// e.g., "Exynos 2100".
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
/// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
/// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
/// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
/// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
/// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
/// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
/// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device,
/// e.g., "196610". * `deviceScreenSize` (string): Screen size of the device,
/// e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the
/// device, e.g., mdpi, hdpi. **Required permissions**: to access this resource,
/// the calling user needs the _View app information (read-only)_ permission for
/// the app. **Related metric sets:** * vitals.errors contains unnormalized
/// version (absolute counts) of crashes. * vitals.errors contains normalized
/// metrics about ANRs, another stability metric.
class GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet {
  /// Summary about data freshness in this resource.
  GooglePlayDeveloperReportingV1alpha1FreshnessInfo? freshnessInfo;

  /// Identifier.
  ///
  /// The resource name. Format: apps/{app}/crashRateMetricSet
  core.String? name;

  GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet({
    this.freshnessInfo,
    this.name,
  });

  GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet.fromJson(
    core.Map json_,
  ) : this(
        freshnessInfo:
            json_.containsKey('freshnessInfo')
                ? GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
                  json_['freshnessInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnessInfo != null) 'freshnessInfo': freshnessInfo!,
    if (name != null) 'name': name!,
  };
}

/// Represents the confidence interval of a metric.
class GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval {
  /// The confidence interval's lower bound.
  GoogleTypeDecimal? lowerBound;

  /// The confidence interval's upper bound.
  GoogleTypeDecimal? upperBound;

  GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval({
    this.lowerBound,
    this.upperBound,
  });

  GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval.fromJson(
    core.Map json_,
  ) : this(
        lowerBound:
            json_.containsKey('lowerBound')
                ? GoogleTypeDecimal.fromJson(
                  json_['lowerBound'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        upperBound:
            json_.containsKey('upperBound')
                ? GoogleTypeDecimal.fromJson(
                  json_['upperBound'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lowerBound != null) 'lowerBound': lowerBound!,
    if (upperBound != null) 'upperBound': upperBound!,
  };
}

/// Identifier of a device.
typedef GooglePlayDeveloperReportingV1alpha1DeviceId = $DeviceId;

/// Summary of a device
class GooglePlayDeveloperReportingV1alpha1DeviceModelSummary {
  /// Identifier of the device.
  GooglePlayDeveloperReportingV1alpha1DeviceId? deviceId;

  /// Link to the device in Play Device Catalog.
  core.String? deviceUri;

  /// Display name of the device.
  core.String? marketingName;

  GooglePlayDeveloperReportingV1alpha1DeviceModelSummary({
    this.deviceId,
    this.deviceUri,
    this.marketingName,
  });

  GooglePlayDeveloperReportingV1alpha1DeviceModelSummary.fromJson(
    core.Map json_,
  ) : this(
        deviceId:
            json_.containsKey('deviceId')
                ? GooglePlayDeveloperReportingV1alpha1DeviceId.fromJson(
                  json_['deviceId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deviceUri: json_['deviceUri'] as core.String?,
        marketingName: json_['marketingName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceId != null) 'deviceId': deviceId!,
    if (deviceUri != null) 'deviceUri': deviceUri!,
    if (marketingName != null) 'marketingName': marketingName!,
  };
}

/// Represents the value of a single dimension.
typedef GooglePlayDeveloperReportingV1alpha1DimensionValue = $DimensionValue02;

/// Singleton resource representing the set of error report metrics.
///
/// This metric set contains un-normalized error report counts. **Supported
/// aggregation periods:** * HOURLY: metrics are aggregated in hourly intervals.
/// The default and only supported timezone is `UTC`. * DAILY: metrics are
/// aggregated in calendar date intervals. The default and only supported
/// timezone is `America/Los_Angeles`. **Supported metrics:** *
/// `errorReportCount` (`google.type.Decimal`): Absolute count of individual
/// error reports that have been received for an app. * `distinctUsers`
/// (`google.type.Decimal`): Count of distinct users for which reports have been
/// received. Care must be taken not to aggregate this count further, as it may
/// result in users being counted multiple times. This value is not rounded,
/// however it may be an approximation. **Required dimension:** This dimension
/// must be always specified in all requests in the `dimensions` field in query
/// requests. * `reportType` (string): the type of error. The value should
/// correspond to one of the possible values in ErrorType. **Supported
/// dimensions:** * `apiLevel` (string): the API level of Android that was
/// running on the user's device, e.g., 26. * `versionCode` (int64): version of
/// the app that was running on the user's device. * `deviceModel` (string):
/// unique identifier of the user's device model. The form of the identifier is
/// 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and
/// device corresponds to Build.DEVICE, e.g., google/coral. * `deviceType`
/// (string): identifier of the device's form factor, e.g., PHONE. * `issueId`
/// (string): the id an error was assigned to. The value should correspond to
/// the `{issue}` component of the issue name. * `deviceRamBucket` (int64): RAM
/// of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake`
/// (string): Make of the device's primary system-on-chip, e.g., Samsung.
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
/// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
/// e.g., "Exynos 2100".
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
/// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
/// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
/// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
/// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
/// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
/// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
/// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device,
/// e.g., "196610". * `deviceScreenSize` (string): Screen size of the device,
/// e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the
/// device, e.g., mdpi, hdpi. **Required permissions**: to access this resource,
/// the calling user needs the _View app information (read-only)_ permission for
/// the app. **Related metric sets:** * vitals.errors.counts contains normalized
/// metrics about Crashes, another stability metric. * vitals.errors.counts
/// contains normalized metrics about ANRs, another stability metric.
class GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet {
  /// Summary about data freshness in this resource.
  GooglePlayDeveloperReportingV1alpha1FreshnessInfo? freshnessInfo;

  /// The resource name.
  ///
  /// Format: apps/{app}/errorCountMetricSet
  core.String? name;

  GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet({
    this.freshnessInfo,
    this.name,
  });

  GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet.fromJson(
    core.Map json_,
  ) : this(
        freshnessInfo:
            json_.containsKey('freshnessInfo')
                ? GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
                  json_['freshnessInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnessInfo != null) 'freshnessInfo': freshnessInfo!,
    if (name != null) 'name': name!,
  };
}

/// A group of related ErrorReports received for an app.
///
/// Similar error reports are grouped together into issues with a likely
/// identical root cause. **Please note:** this resource is currently in Alpha.
/// There could be changes to the issue grouping that would result in similar
/// but more recent error reports being assigned to different issues. This could
/// also cause some issues disappearing entirely and being replaced by new ones.
/// **Required permissions**: to access this resource, the calling user needs
/// the _View app information (read-only)_ permission for the app.
class GooglePlayDeveloperReportingV1alpha1ErrorIssue {
  /// List of annotations for an issue.
  ///
  /// Annotations provide additional information that may help in diagnosing and
  /// fixing the issue.
  core.List<GooglePlayDeveloperReportingV1alpha1IssueAnnotation>? annotations;

  /// Cause of the issue.
  ///
  /// Depending on the type this can be either: * APPLICATION_NOT_RESPONDING:
  /// the type of ANR that occurred, e.g., 'Input dispatching timed out'. *
  /// CRASH: for Java unhandled exception errors, the type of the innermost
  /// exception that was thrown, e.g., IllegalArgumentException. For signals in
  /// native code, the signal that was raised, e.g. SIGSEGV.
  core.String? cause;

  /// An estimate of the number of unique users who have experienced this issue
  /// (only considering occurrences matching the filters and within the
  /// requested time period).
  core.String? distinctUsers;

  /// An estimated percentage of users affected by any issue that are affected
  /// by this issue (only considering occurrences matching the filters and
  /// within the requested time period).
  GoogleTypeDecimal? distinctUsersPercent;

  /// The total number of error reports in this issue (only considering
  /// occurrences matching the filters and within the requested time period).
  core.String? errorReportCount;

  /// The earliest (inclusive) app version appearing in this ErrorIssue in the
  /// requested time period (only considering occurrences matching the filters).
  GooglePlayDeveloperReportingV1alpha1AppVersion? firstAppVersion;

  /// The smallest OS version in which this error cluster has occurred in the
  /// requested time period (only considering occurrences matching the filters
  /// and within the requested time period).
  GooglePlayDeveloperReportingV1alpha1OsVersion? firstOsVersion;

  /// Link to the issue in Android vitals in the Play Console.
  core.String? issueUri;

  /// The latest (inclusive) app version appearing in this ErrorIssue in the
  /// requested time period (only considering occurrences matching the filters).
  GooglePlayDeveloperReportingV1alpha1AppVersion? lastAppVersion;

  /// Start of the hour during which the last error report in this issue
  /// occurred.
  core.String? lastErrorReportTime;

  /// The latest OS version in which this error cluster has occurred in the
  /// requested time period (only considering occurrences matching the filters
  /// and within the requested time period).
  GooglePlayDeveloperReportingV1alpha1OsVersion? lastOsVersion;

  /// Location where the issue happened.
  ///
  /// Depending on the type this can be either: * APPLICATION_NOT_RESPONDING:
  /// the name of the activity or service that stopped responding. * CRASH: the
  /// likely method name that caused the error.
  core.String? location;

  /// Identifier.
  ///
  /// The resource name of the issue. Format: apps/{app}/{issue}
  core.String? name;

  /// Sample error reports which belong to this ErrorIssue.
  ///
  /// *Note:* currently a maximum of 1 per ErrorIssue is supported. Format:
  /// "apps/{app}/{report}"
  ///
  /// Output only.
  core.List<core.String>? sampleErrorReports;

  /// Type of the errors grouped in this issue.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : Unspecified error type.
  /// - "APPLICATION_NOT_RESPONDING" : Application Not Responding (ANR) error.
  /// To learn more about this type of errors visit the corresponding Android
  /// Developers documentation.
  /// - "CRASH" : Crash caused by an unhandled exception in Java (or Kotlin or
  /// any other JVM language) or a signal in native code such as SIGSEGV.
  /// - "NON_FATAL" : Non-fatal caused by events that do not immediately cause
  /// crashes, but is likely to lead to one.
  core.String? type;

  GooglePlayDeveloperReportingV1alpha1ErrorIssue({
    this.annotations,
    this.cause,
    this.distinctUsers,
    this.distinctUsersPercent,
    this.errorReportCount,
    this.firstAppVersion,
    this.firstOsVersion,
    this.issueUri,
    this.lastAppVersion,
    this.lastErrorReportTime,
    this.lastOsVersion,
    this.location,
    this.name,
    this.sampleErrorReports,
    this.type,
  });

  GooglePlayDeveloperReportingV1alpha1ErrorIssue.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1IssueAnnotation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        cause: json_['cause'] as core.String?,
        distinctUsers: json_['distinctUsers'] as core.String?,
        distinctUsersPercent:
            json_.containsKey('distinctUsersPercent')
                ? GoogleTypeDecimal.fromJson(
                  json_['distinctUsersPercent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorReportCount: json_['errorReportCount'] as core.String?,
        firstAppVersion:
            json_.containsKey('firstAppVersion')
                ? GooglePlayDeveloperReportingV1alpha1AppVersion.fromJson(
                  json_['firstAppVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        firstOsVersion:
            json_.containsKey('firstOsVersion')
                ? GooglePlayDeveloperReportingV1alpha1OsVersion.fromJson(
                  json_['firstOsVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        issueUri: json_['issueUri'] as core.String?,
        lastAppVersion:
            json_.containsKey('lastAppVersion')
                ? GooglePlayDeveloperReportingV1alpha1AppVersion.fromJson(
                  json_['lastAppVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastErrorReportTime: json_['lastErrorReportTime'] as core.String?,
        lastOsVersion:
            json_.containsKey('lastOsVersion')
                ? GooglePlayDeveloperReportingV1alpha1OsVersion.fromJson(
                  json_['lastOsVersion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        sampleErrorReports:
            (json_['sampleErrorReports'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (cause != null) 'cause': cause!,
    if (distinctUsers != null) 'distinctUsers': distinctUsers!,
    if (distinctUsersPercent != null)
      'distinctUsersPercent': distinctUsersPercent!,
    if (errorReportCount != null) 'errorReportCount': errorReportCount!,
    if (firstAppVersion != null) 'firstAppVersion': firstAppVersion!,
    if (firstOsVersion != null) 'firstOsVersion': firstOsVersion!,
    if (issueUri != null) 'issueUri': issueUri!,
    if (lastAppVersion != null) 'lastAppVersion': lastAppVersion!,
    if (lastErrorReportTime != null)
      'lastErrorReportTime': lastErrorReportTime!,
    if (lastOsVersion != null) 'lastOsVersion': lastOsVersion!,
    if (location != null) 'location': location!,
    if (name != null) 'name': name!,
    if (sampleErrorReports != null) 'sampleErrorReports': sampleErrorReports!,
    if (type != null) 'type': type!,
  };
}

/// An error report received for an app.
///
/// There reports are produced by the Android platform code when a (potentially
/// fatal) error condition is detected. Identical reports from many users will
/// be deduplicated and coalesced into a single ErrorReport. **Required
/// permissions**: to access this resource, the calling user needs the _View app
/// information (read-only)_ permission for the app.
class GooglePlayDeveloperReportingV1alpha1ErrorReport {
  /// The app version on which an event in this error report occurred on.
  GooglePlayDeveloperReportingV1alpha1AppVersion? appVersion;

  /// A device model on which an event in this error report occurred on.
  GooglePlayDeveloperReportingV1alpha1DeviceModelSummary? deviceModel;

  /// Start of the hour during which the latest event in this error report
  /// occurred.
  core.String? eventTime;

  /// The issue this report was associated with.
  ///
  /// **Please note:** this resource is currently in Alpha. There could be
  /// changes to the issue grouping that would result in similar but more recent
  /// error reports being assigned to a different issue.
  core.String? issue;

  /// The resource name of the report.
  ///
  /// Format: apps/{app}/{report}
  core.String? name;

  /// The OS version on which an event in this error report occurred on.
  GooglePlayDeveloperReportingV1alpha1OsVersion? osVersion;

  /// Textual representation of the error report.
  ///
  /// These textual reports are produced by the platform. The reports are then
  /// sanitized and filtered to remove any potentially sensitive information.
  /// Although their format is fairly stable, they are not entirely meant for
  /// machine consumption and we cannot guarantee that there won't be subtle
  /// changes to the formatting that may break systems trying to parse
  /// information out of the reports.
  core.String? reportText;

  /// Type of the error for which this report was generated.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : Unspecified error type.
  /// - "APPLICATION_NOT_RESPONDING" : Application Not Responding (ANR) error.
  /// To learn more about this type of errors visit the corresponding Android
  /// Developers documentation.
  /// - "CRASH" : Crash caused by an unhandled exception in Java (or Kotlin or
  /// any other JVM language) or a signal in native code such as SIGSEGV.
  /// - "NON_FATAL" : Non-fatal caused by events that do not immediately cause
  /// crashes, but is likely to lead to one.
  core.String? type;

  /// Version control system information from
  /// BUNDLE-METADATA/version-control-info.textproto or
  /// META-INF/version-control-info.textproto of the app bundle or APK,
  /// respectively.
  core.String? vcsInformation;

  GooglePlayDeveloperReportingV1alpha1ErrorReport({
    this.appVersion,
    this.deviceModel,
    this.eventTime,
    this.issue,
    this.name,
    this.osVersion,
    this.reportText,
    this.type,
    this.vcsInformation,
  });

  GooglePlayDeveloperReportingV1alpha1ErrorReport.fromJson(core.Map json_)
    : this(
        appVersion:
            json_.containsKey('appVersion')
                ? GooglePlayDeveloperReportingV1alpha1AppVersion.fromJson(
                  json_['appVersion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deviceModel:
            json_.containsKey('deviceModel')
                ? GooglePlayDeveloperReportingV1alpha1DeviceModelSummary.fromJson(
                  json_['deviceModel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventTime: json_['eventTime'] as core.String?,
        issue: json_['issue'] as core.String?,
        name: json_['name'] as core.String?,
        osVersion:
            json_.containsKey('osVersion')
                ? GooglePlayDeveloperReportingV1alpha1OsVersion.fromJson(
                  json_['osVersion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportText: json_['reportText'] as core.String?,
        type: json_['type'] as core.String?,
        vcsInformation: json_['vcsInformation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appVersion != null) 'appVersion': appVersion!,
    if (deviceModel != null) 'deviceModel': deviceModel!,
    if (eventTime != null) 'eventTime': eventTime!,
    if (issue != null) 'issue': issue!,
    if (name != null) 'name': name!,
    if (osVersion != null) 'osVersion': osVersion!,
    if (reportText != null) 'reportText': reportText!,
    if (type != null) 'type': type!,
    if (vcsInformation != null) 'vcsInformation': vcsInformation!,
  };
}

/// Singleton resource representing the set of Excessive Weakeups metrics.
///
/// This metric set contains AlarmManager wakeup counts data combined with
/// process state data to produce a normalized metric independent of user
/// counts. **Supported aggregation periods:** * DAILY: metrics are aggregated
/// in calendar date intervals. Due to historical constraints, the only
/// supported timezone is `America/Los_Angeles`. **Supported metrics:** *
/// `excessiveWakeupRate` (`google.type.Decimal`): Percentage of distinct users
/// in the aggregation period that had more than 10 wakeups per hour. *
/// `excessiveWakeupRate7dUserWeighted` (`google.type.Decimal`): Rolling average
/// value of `excessiveWakeupRate` in the last 7 days. The daily values are
/// weighted by the count of distinct users for the day. *
/// `excessiveWakeupRate28dUserWeighted` (`google.type.Decimal`): Rolling
/// average value of `excessiveWakeupRate` in the last 28 days. The daily values
/// are weighted by the count of distinct users for the day. * `distinctUsers`
/// (`google.type.Decimal`): Count of distinct users in the aggregation period
/// that were used as normalization value for the `excessiveWakeupRate` metric.
/// A user is counted in this metric if they app was doing any work on the
/// device, i.e., not just active foreground usage but also background work.
/// Care must be taken not to aggregate this count further, as it may result in
/// users being counted multiple times. The value is rounded to the nearest
/// multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the
/// value. **Supported dimensions:** * `apiLevel` (string): the API level of
/// Android that was running on the user's device, e.g., 26. * `versionCode`
/// (int64): version of the app that was running on the user's device. *
/// `deviceModel` (string): unique identifier of the user's device model. The
/// form of the identifier is 'deviceBrand/device', where deviceBrand
/// corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
/// google/coral. * `deviceBrand` (string): unique identifier of the user's
/// device brand, e.g., google. * `deviceType` (string): the type (also known as
/// form factor) of the user's device, e.g., PHONE. * `countryCode` (string):
/// the country or region of the user's device based on their IP address,
/// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
/// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
/// etc.). * `deviceSocMake` (string): Make of the device's primary
/// system-on-chip, e.g., Samsung.
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
/// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
/// e.g., "Exynos 2100".
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
/// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
/// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
/// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
/// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
/// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
/// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
/// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device,
/// e.g., "196610". * `deviceScreenSize` (string): Screen size of the device,
/// e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the
/// device, e.g., mdpi, hdpi. **Required permissions**: to access this resource,
/// the calling user needs the _View app information (read-only)_ permission for
/// the app.
class GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet {
  /// Summary about data freshness in this resource.
  GooglePlayDeveloperReportingV1alpha1FreshnessInfo? freshnessInfo;

  /// Identifier.
  ///
  /// The resource name. Format: apps/{app}/excessiveWakeupRateMetricSet
  core.String? name;

  GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet({
    this.freshnessInfo,
    this.name,
  });

  GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet.fromJson(
    core.Map json_,
  ) : this(
        freshnessInfo:
            json_.containsKey('freshnessInfo')
                ? GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
                  json_['freshnessInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnessInfo != null) 'freshnessInfo': freshnessInfo!,
    if (name != null) 'name': name!,
  };
}

/// Represents the latest available time that can be requested in a
/// TimelineSpec.
///
/// Different aggregation periods have different freshness. For example, `DAILY`
/// aggregation may lag behind `HOURLY` in cases where such aggregation is
/// computed only once at the end of the day.
class GooglePlayDeveloperReportingV1alpha1FreshnessInfo {
  /// Information about data freshness for every supported aggregation period.
  ///
  /// This field has set semantics, keyed by the `aggregation_period` field.
  core.List<GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness>?
  freshnesses;

  GooglePlayDeveloperReportingV1alpha1FreshnessInfo({this.freshnesses});

  GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(core.Map json_)
    : this(
        freshnesses:
            (json_['freshnesses'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnesses != null) 'freshnesses': freshnesses!,
  };
}

/// Information about data freshness for a single aggregation period.
class GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness {
  /// Aggregation period for which data is available.
  /// Possible string values are:
  /// - "AGGREGATION_PERIOD_UNSPECIFIED" : Unspecified granularity.
  /// - "HOURLY" : Data is aggregated in hourly intervals.
  /// - "DAILY" : Data is aggregated in daily intervals.
  /// - "FULL_RANGE" : Data is aggregated over the full timeline range.
  /// Effectively this produces a single value rather than a timeline.
  core.String? aggregationPeriod;

  /// Latest end time for which data is available, for the aggregation period.
  ///
  /// The time is specified in the metric set's default timezone. *Note:* time
  /// ranges in TimelineSpec are represented as `start_time, end_time)`. For
  /// example, if the latest available timeline data point for a `DAILY`
  /// aggregation period is `2021-06-23 00:00:00 America/Los_Angeles`, the value
  /// of this field would be `2021-06-24 00:00:00 America/Los_Angeles` so it can
  /// be easily reused in \[TimelineSpec.end_time.
  GoogleTypeDateTime? latestEndTime;

  GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness({
    this.aggregationPeriod,
    this.latestEndTime,
  });

  GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness.fromJson(
    core.Map json_,
  ) : this(
        aggregationPeriod: json_['aggregationPeriod'] as core.String?,
        latestEndTime:
            json_.containsKey('latestEndTime')
                ? GoogleTypeDateTime.fromJson(
                  json_['latestEndTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationPeriod != null) 'aggregationPeriod': aggregationPeriod!,
    if (latestEndTime != null) 'latestEndTime': latestEndTime!,
  };
}

/// Representation of an annotation message for an issue.
typedef GooglePlayDeveloperReportingV1alpha1IssueAnnotation = $IssueAnnotation;

/// Response with a list of anomalies in datasets.
class GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse {
  /// Anomalies that were found.
  core.List<GooglePlayDeveloperReportingV1alpha1Anomaly>? anomalies;

  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse({
    this.anomalies,
    this.nextPageToken,
  });

  GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse.fromJson(
    core.Map json_,
  ) : this(
        anomalies:
            (json_['anomalies'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1Anomaly.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (anomalies != null) 'anomalies': anomalies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Singleton resource representing the set of LMK (Low Memory Kill) metrics.
///
/// This metric set contains LMKs data combined with usage data to produce a
/// normalized metric independent of user counts. **Supported aggregation
/// periods:** * DAILY: metrics are aggregated in calendar date intervals. Due
/// to historical constraints, the only supported timezone is
/// `America/Los_Angeles`. **Supported metrics:** * `userPerceivedLmkRate`
/// (`google.type.Decimal`): Percentage of distinct users in the aggregation
/// period that experienced at least one LMK while they were actively using your
/// app (a user-perceived LMK). An app is considered to be in active use if it
/// is displaying any activity or executing any foreground service. *
/// `userPerceivedLmkRate7dUserWeighted` (`google.type.Decimal`): Rolling
/// average value of `userPerceivedLmkRate` in the last 7 days. The daily values
/// are weighted by the count of distinct users for the day. *
/// `userPerceivedLmkRate28dUserWeighted` (`google.type.Decimal`): Rolling
/// average value of `userPerceivedLmkRate` in the last 28 days. The daily
/// values are weighted by the count of distinct users for the day. *
/// `distinctUsers` (`google.type.Decimal`): Count of distinct users in the
/// aggregation period that were used as normalization value for the
/// `userPerceivedLmkRate` metrics. A user is counted in this metric if they
/// used the app in the foreground during the aggregation period. Care must be
/// taken not to aggregate this count further, as it may result in users being
/// counted multiple times. The value is rounded to the nearest multiple of 10,
/// 100, 1,000 or 1,000,000, depending on the magnitude of the value.
/// **Supported dimensions:** * `apiLevel` (string): the API level of Android
/// that was running on the user's device, e.g., 26. * `versionCode` (int64):
/// version of the app that was running on the user's device. * `deviceModel`
/// (string): unique identifier of the user's device model. The form of the
/// identifier is 'deviceBrand/device', where deviceBrand corresponds to
/// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
/// `deviceBrand` (string): unique identifier of the user's device brand, e.g.,
/// google. * `deviceType` (string): the type (also known as form factor) of the
/// user's device, e.g., PHONE. * `countryCode` (string): the country or region
/// of the user's device based on their IP address, represented as a 2-letter
/// ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64):
/// RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake`
/// (string): Make of the device's primary system-on-chip, e.g., Samsung.
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
/// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
/// e.g., "Exynos 2100".
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
/// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
/// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
/// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
/// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
/// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
/// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
/// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device,
/// e.g., "196610". * `deviceScreenSize` (string): Screen size of the device,
/// e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the
/// device, e.g., mdpi, hdpi. **Required permissions**: to access this resource,
/// the calling user needs the _View app information (read-only)_ permission for
/// the app. **Related metric sets:** * vitals.errors contains normalized
/// metrics about crashes, another stability metric. * vitals.errors contains
/// normalized metrics about ANRs, another stability metric.
class GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet {
  /// Summary about data freshness in this resource.
  GooglePlayDeveloperReportingV1alpha1FreshnessInfo? freshnessInfo;

  /// Identifier.
  ///
  /// The resource name. Format: apps/{app}/lmkRateMetricSet
  core.String? name;

  GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet({
    this.freshnessInfo,
    this.name,
  });

  GooglePlayDeveloperReportingV1alpha1LmkRateMetricSet.fromJson(core.Map json_)
    : this(
        freshnessInfo:
            json_.containsKey('freshnessInfo')
                ? GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
                  json_['freshnessInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnessInfo != null) 'freshnessInfo': freshnessInfo!,
    if (name != null) 'name': name!,
  };
}

/// Represents the value of a metric.
class GooglePlayDeveloperReportingV1alpha1MetricValue {
  /// Actual value, represented as a decimal number.
  GoogleTypeDecimal? decimalValue;

  /// Confidence interval of a value that is of type `type.Decimal`.
  GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval?
  decimalValueConfidenceInterval;

  /// Name of the metric.
  core.String? metric;

  GooglePlayDeveloperReportingV1alpha1MetricValue({
    this.decimalValue,
    this.decimalValueConfidenceInterval,
    this.metric,
  });

  GooglePlayDeveloperReportingV1alpha1MetricValue.fromJson(core.Map json_)
    : this(
        decimalValue:
            json_.containsKey('decimalValue')
                ? GoogleTypeDecimal.fromJson(
                  json_['decimalValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        decimalValueConfidenceInterval:
            json_.containsKey('decimalValueConfidenceInterval')
                ? GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval.fromJson(
                  json_['decimalValueConfidenceInterval']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        metric: json_['metric'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (decimalValue != null) 'decimalValue': decimalValue!,
    if (decimalValueConfidenceInterval != null)
      'decimalValueConfidenceInterval': decimalValueConfidenceInterval!,
    if (metric != null) 'metric': metric!,
  };
}

/// Represents a row of dimensions and metrics.
class GooglePlayDeveloperReportingV1alpha1MetricsRow {
  /// Granularity of the aggregation period of the row.
  /// Possible string values are:
  /// - "AGGREGATION_PERIOD_UNSPECIFIED" : Unspecified granularity.
  /// - "HOURLY" : Data is aggregated in hourly intervals.
  /// - "DAILY" : Data is aggregated in daily intervals.
  /// - "FULL_RANGE" : Data is aggregated over the full timeline range.
  /// Effectively this produces a single value rather than a timeline.
  core.String? aggregationPeriod;

  /// Dimension columns in the row.
  core.List<GooglePlayDeveloperReportingV1alpha1DimensionValue>? dimensions;

  /// Metric columns in the row.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricValue>? metrics;

  /// Starting date (and time for hourly aggregation) of the period covered by
  /// this row.
  GoogleTypeDateTime? startTime;

  GooglePlayDeveloperReportingV1alpha1MetricsRow({
    this.aggregationPeriod,
    this.dimensions,
    this.metrics,
    this.startTime,
  });

  GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(core.Map json_)
    : this(
        aggregationPeriod: json_['aggregationPeriod'] as core.String?,
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1DimensionValue.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricValue.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        startTime:
            json_.containsKey('startTime')
                ? GoogleTypeDateTime.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationPeriod != null) 'aggregationPeriod': aggregationPeriod!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (metrics != null) 'metrics': metrics!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Representation of an OS version.
typedef GooglePlayDeveloperReportingV1alpha1OsVersion = $OsVersion;

/// Request message for QueryAnrRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest {
  /// Dimensions to slice the metrics by.
  ///
  /// **Supported dimensions:** * `apiLevel` (string): the API level of Android
  /// that was running on the user's device, e.g., 26. * `versionCode` (int64):
  /// version of the app that was running on the user's device. * `deviceModel`
  /// (string): unique identifier of the user's device model. The form of the
  /// identifier is 'deviceBrand/device', where deviceBrand corresponds to
  /// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
  /// `deviceBrand` (string): unique identifier of the user's device brand,
  /// e.g., google. * `deviceType` (string): the type (also known as form
  /// factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
  /// country or region of the user's device based on their IP address,
  /// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
  /// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
  /// etc.). * `deviceSocMake` (string): Make of the device's primary
  /// system-on-chip, e.g., Samsung.
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
  /// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
  /// e.g., "Exynos 2100".
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
  /// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
  /// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
  /// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
  /// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
  /// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
  /// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
  /// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the
  /// device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the
  /// device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density
  /// of the device, e.g., mdpi, hdpi.
  core.List<core.String>? dimensions;

  /// Filters to apply to data.
  ///
  /// The filtering expression follows \[AIP-160\](https://google.aip.dev/160)
  /// standard and supports filtering by equality of all breakdown dimensions.
  core.String? filter;

  /// Metrics to aggregate.
  ///
  /// **Supported metrics:** * `anrRate` (`google.type.Decimal`): Percentage of
  /// distinct users in the aggregation period that experienced at least one
  /// ANR. * `anrRate7dUserWeighted` (`google.type.Decimal`): Rolling average
  /// value of `anrRate` in the last 7 days. The daily values are weighted by
  /// the count of distinct users for the day. Not supported in HOURLY
  /// granularity. * `anrRate28dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `anrRate` in the last 28 days. The daily values are
  /// weighted by the count of distinct users for the day. Not supported in
  /// HOURLY granularity. * `userPerceivedAnrRate` (`google.type.Decimal`):
  /// Percentage of distinct users in the aggregation period that experienced at
  /// least one user-perceived ANR. User-perceived ANRs are currently those of
  /// 'Input dispatching' type. * `userPerceivedAnrRate7dUserWeighted`
  /// (`google.type.Decimal`): Rolling average value of `userPerceivedAnrRate`
  /// in the last 7 days. The daily values are weighted by the count of distinct
  /// users for the day. Not supported in HOURLY granularity. *
  /// `userPerceivedAnrRate28dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `userPerceivedAnrRate` in the last 28 days. The daily
  /// values are weighted by the count of distinct users for the day. Not .
  /// supported in HOURLY granularity. * `distinctUsers`
  /// (`google.type.Decimal`): Count of distinct users in the aggregation period
  /// that were used as normalization value for the `anrRate` and
  /// `userPerceivedAnrRate` metrics. A user is counted in this metric if they
  /// used the app in the foreground during the aggregation period. Care must be
  /// taken not to aggregate this count further, as it may result in users being
  /// counted multiple times. The value is rounded to the nearest multiple of
  /// 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value.
  core.List<core.String>? metrics;

  /// Maximum size of the returned data.
  ///
  /// If unspecified, at most 1000 rows will be returned. The maximum value is
  /// 100,000; values above 100,000 will be coerced to 100,000.
  core.int? pageSize;

  /// A page token, received from a previous call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  core.String? pageToken;

  /// Specification of the timeline aggregation parameters.
  ///
  /// **Supported aggregation periods:** * DAILY: metrics are aggregated in
  /// calendar date intervals. Due to historical constraints, the default and
  /// only supported timezone is `America/Los_Angeles`. * HOURLY: metrics are
  /// aggregated in hourly intervals. The default and only supported timezone is
  /// `UTC`.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  /// User view to select.
  ///
  /// The output data will correspond to the selected view. **Supported
  /// values:** * `OS_PUBLIC` To select data from all publicly released Android
  /// versions. This is the default. Supports all the above dimensions. *
  /// `APP_TESTERS` To select data from users who have opted in to be testers.
  /// Supports all the above dimensions. * `OS_BETA` To select data from beta
  /// android versions only, excluding data from released android versions. Only
  /// the following dimensions are supported: * `versionCode` (int64): version
  /// of the app that was running on the user's device. * `osBuild` (string): OS
  /// build of the user's device, e.g., "T1B2.220916.004".
  /// Possible string values are:
  /// - "USER_COHORT_UNSPECIFIED" : Unspecified User cohort. This will
  /// automatically choose the default value.
  /// - "OS_PUBLIC" : This is default view. Contains data from public released
  /// android versions only.
  /// - "OS_BETA" : This is the view with just android beta data excluding
  /// released OS version data.
  /// - "APP_TESTERS" : This is the view with data only from users who have
  /// opted in to be testers for a given app, excluding OS beta data.
  core.String? userCohort;

  GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest({
    this.dimensions,
    this.filter,
    this.metrics,
    this.pageSize,
    this.pageToken,
    this.timelineSpec,
    this.userCohort,
  });

  GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userCohort: json_['userCohort'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (filter != null) 'filter': filter!,
    if (metrics != null) 'metrics': metrics!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
    if (userCohort != null) 'userCohort': userCohort!,
  };
}

/// Response message for QueryAnrRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse {
  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  /// Returned rows of data.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricsRow>? rows;

  GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse({
    this.nextPageToken,
    this.rows,
  });

  GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// Request message for QueryCrashRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest {
  /// Dimensions to slice the metrics by.
  ///
  /// **Supported dimensions:** * `apiLevel` (string): the API level of Android
  /// that was running on the user's device, e.g., 26. * `versionCode` (int64):
  /// version of the app that was running on the user's device. * `deviceModel`
  /// (string): unique identifier of the user's device model. The form of the
  /// identifier is 'deviceBrand/device', where deviceBrand corresponds to
  /// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
  /// `deviceBrand` (string): unique identifier of the user's device brand,
  /// e.g., google. * `deviceType` (string): the type (also known as form
  /// factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
  /// country or region of the user's device based on their IP address,
  /// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
  /// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
  /// etc.). * `deviceSocMake` (string): Make of the device's primary
  /// system-on-chip, e.g., Samsung.
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
  /// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
  /// e.g., "Exynos 2100".
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
  /// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
  /// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
  /// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
  /// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
  /// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
  /// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
  /// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the
  /// device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the
  /// device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density
  /// of the device, e.g., mdpi, hdpi.
  core.List<core.String>? dimensions;

  /// Filters to apply to data.
  ///
  /// The filtering expression follows \[AIP-160\](https://google.aip.dev/160)
  /// standard and supports filtering by equality of all breakdown dimensions.
  core.String? filter;

  /// Metrics to aggregate.
  ///
  /// **Supported metrics:** * `crashRate` (`google.type.Decimal`): Percentage
  /// of distinct users in the aggregation period that experienced at least one
  /// crash. * `crashRate7dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `crashRate` in the last 7 days. The daily values are
  /// weighted by the count of distinct users for the day. *
  /// `crashRate28dUserWeighted` (`google.type.Decimal`): Rolling average value
  /// of `crashRate` in the last 28 days. The daily values are weighted by the
  /// count of distinct users for the day. Not supported in HOURLY granularity.
  /// * `userPerceivedCrashRate` (`google.type.Decimal`): Percentage of distinct
  /// users in the aggregation period that experienced at least one crash while
  /// they were actively using your app (a user-perceived crash). An app is
  /// considered to be in active use if it is displaying any activity or
  /// executing any foreground service. * `userPerceivedCrashRate7dUserWeighted`
  /// (`google.type.Decimal`): Rolling average value of `userPerceivedCrashRate`
  /// in the last 7 days. The daily values are weighted by the count of distinct
  /// users for the day. Not supported in HOURLY granularity. *
  /// `userPerceivedCrashRate28dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `userPerceivedCrashRate` in the last 28 days. The daily
  /// values are weighted by the count of distinct users for the day. Not
  /// supported in HOURLY granularity. * `distinctUsers`
  /// (`google.type.Decimal`): Count of distinct users in the aggregation period
  /// that were used as normalization value for the `crashRate` and
  /// `userPerceivedCrashRate` metrics. A user is counted in this metric if they
  /// used the app actively during the aggregation period. An app is considered
  /// to be in active use if it is displaying any activity or executing any
  /// foreground service. Care must be taken not to aggregate this count
  /// further, as it may result in users being counted multiple times. The value
  /// is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000,
  /// depending on the magnitude of the value.
  core.List<core.String>? metrics;

  /// Maximum size of the returned data.
  ///
  /// If unspecified, at most 1000 rows will be returned. The maximum value is
  /// 100,000; values above 100,000 will be coerced to 100,000.
  core.int? pageSize;

  /// A page token, received from a previous call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  core.String? pageToken;

  /// Specification of the timeline aggregation parameters.
  ///
  /// **Supported aggregation periods:** * DAILY: metrics are aggregated in
  /// calendar date intervals. Due to historical constraints, the default and
  /// only supported timezone is `America/Los_Angeles`. * HOURLY: metrics are
  /// aggregated in hourly intervals. The default and only supported timezone is
  /// `UTC`.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  /// User view to select.
  ///
  /// The output data will correspond to the selected view. **Supported
  /// values:** * `OS_PUBLIC` To select data from all publicly released Android
  /// versions. This is the default. Supports all the above dimensions. *
  /// `APP_TESTERS` To select data from users who have opted in to be testers.
  /// Supports all the above dimensions. * `OS_BETA` To select data from beta
  /// android versions only, excluding data from released android versions. Only
  /// the following dimensions are supported: * `versionCode` (int64): version
  /// of the app that was running on the user's device. * `osBuild` (string): OS
  /// build of the user's device, e.g., "T1B2.220916.004".
  /// Possible string values are:
  /// - "USER_COHORT_UNSPECIFIED" : Unspecified User cohort. This will
  /// automatically choose the default value.
  /// - "OS_PUBLIC" : This is default view. Contains data from public released
  /// android versions only.
  /// - "OS_BETA" : This is the view with just android beta data excluding
  /// released OS version data.
  /// - "APP_TESTERS" : This is the view with data only from users who have
  /// opted in to be testers for a given app, excluding OS beta data.
  core.String? userCohort;

  GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest({
    this.dimensions,
    this.filter,
    this.metrics,
    this.pageSize,
    this.pageToken,
    this.timelineSpec,
    this.userCohort,
  });

  GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userCohort: json_['userCohort'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (filter != null) 'filter': filter!,
    if (metrics != null) 'metrics': metrics!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
    if (userCohort != null) 'userCohort': userCohort!,
  };
}

/// Response message for QueryCrashRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse {
  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  /// Returned rows of data.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricsRow>? rows;

  GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse({
    this.nextPageToken,
    this.rows,
  });

  GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// Request message for QueryErrorCountMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest {
  /// Dimensions to slice the data by.
  ///
  /// **Supported dimensions:** * `apiLevel` (string): the API level of Android
  /// that was running on the user's device, e.g., 26. * `versionCode` (int64):
  /// unique identifier of the user's device model. The form of the identifier
  /// is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and
  /// device corresponds to Build.DEVICE, e.g., google/coral. * `deviceModel`
  /// (string): unique identifier of the user's device model. * `deviceType`
  /// (string): identifier of the device's form factor, e.g., PHONE. *
  /// `reportType` (string): the type of error. The value should correspond to
  /// one of the possible values in ErrorType. * `issueId` (string): the id an
  /// error was assigned to. The value should correspond to the `{issue}`
  /// component of the issue name. * `deviceRamBucket` (int64): RAM of the
  /// device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string):
  /// Make of the device's primary system-on-chip, e.g., Samsung.
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
  /// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
  /// e.g., "Exynos 2100".
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
  /// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
  /// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
  /// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
  /// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
  /// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
  /// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
  /// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the
  /// device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the
  /// device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density
  /// of the device, e.g., mdpi, hdpi.
  core.List<core.String>? dimensions;

  /// Filters to apply to data.
  ///
  /// The filtering expression follows \[AIP-160\](https://google.aip.dev/160)
  /// standard and supports filtering by equality of all breakdown dimensions
  /// and: * `isUserPerceived` (string): denotes whether error is user perceived
  /// or not, USER_PERCEIVED or NOT_USER_PERCEIVED.
  core.String? filter;

  /// Metrics to aggregate.
  ///
  /// **Supported metrics:** * `errorReportCount` (`google.type.Decimal`):
  /// Absolute count of individual error reports that have been received for an
  /// app. * `distinctUsers` (`google.type.Decimal`): Count of distinct users
  /// for which reports have been received. Care must be taken not to aggregate
  /// this count further, as it may result in users being counted multiple
  /// times. This value is not rounded, however it may be an approximation.
  core.List<core.String>? metrics;

  /// Maximum size of the returned data.
  ///
  /// If unspecified, at most 1000 rows will be returned. The maximum value is
  /// 100000; values above 100000 will be coerced to 100000.
  core.int? pageSize;

  /// A page token, received from a previous call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  core.String? pageToken;

  /// Specification of the timeline aggregation parameters.
  ///
  /// **Supported aggregation periods:** * DAILY: metrics are aggregated in
  /// calendar date intervals. The default and only supported timezone is
  /// `America/Los_Angeles`.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest({
    this.dimensions,
    this.filter,
    this.metrics,
    this.pageSize,
    this.pageToken,
    this.timelineSpec,
  });

  GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (filter != null) 'filter': filter!,
    if (metrics != null) 'metrics': metrics!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
  };
}

/// Error counts query response.
class GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse {
  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  /// Returned rows.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricsRow>? rows;

  GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse({
    this.nextPageToken,
    this.rows,
  });

  GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// Request message for QueryExcessiveWakeupRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest {
  /// Dimensions to slice the data by.
  ///
  /// **Supported dimensions:** * `apiLevel` (string): the API level of Android
  /// that was running on the user's device, e.g., 26. * `versionCode` (int64):
  /// version of the app that was running on the user's device. * `deviceModel`
  /// (string): unique identifier of the user's device model. The form of the
  /// identifier is 'deviceBrand/device', where deviceBrand corresponds to
  /// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
  /// `deviceBrand` (string): unique identifier of the user's device brand,
  /// e.g., google. * `deviceType` (string): the type (also known as form
  /// factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
  /// country or region of the user's device based on their IP address,
  /// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
  /// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
  /// etc.). * `deviceSocMake` (string): Make of the device's primary
  /// system-on-chip, e.g., Samsung.
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
  /// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
  /// e.g., "Exynos 2100".
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
  /// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
  /// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
  /// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
  /// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
  /// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
  /// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
  /// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the
  /// device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the
  /// device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density
  /// of the device, e.g., mdpi, hdpi.
  core.List<core.String>? dimensions;

  /// Filters to apply to data.
  ///
  /// The filtering expression follows \[AIP-160\](https://google.aip.dev/160)
  /// standard and supports filtering by equality of all breakdown dimensions.
  core.String? filter;

  /// Metrics to aggregate.
  ///
  /// **Supported metrics:** * `excessiveWakeupRate` (`google.type.Decimal`):
  /// Percentage of distinct users in the aggregation period that had more than
  /// 10 wakeups per hour. * `excessiveWakeupRate7dUserWeighted`
  /// (`google.type.Decimal`): Rolling average value of `excessiveWakeupRate` in
  /// the last 7 days. The daily values are weighted by the count of distinct
  /// users for the day. * `excessiveWakeupRate28dUserWeighted`
  /// (`google.type.Decimal`): Rolling average value of `excessiveWakeupRate` in
  /// the last 28 days. The daily values are weighted by the count of distinct
  /// users for the day. * `distinctUsers` (`google.type.Decimal`): Count of
  /// distinct users in the aggregation period that were used as normalization
  /// value for the `excessiveWakeupRate` metric. A user is counted in this
  /// metric if they app was doing any work on the device, i.e., not just active
  /// foreground usage but also background work. Care must be taken not to
  /// aggregate this count further, as it may result in users being counted
  /// multiple times. The value is rounded to the nearest multiple of 10, 100,
  /// 1,000 or 1,000,000, depending on the magnitude of the value.
  core.List<core.String>? metrics;

  /// Maximum size of the returned data.
  ///
  /// If unspecified, at most 1000 rows will be returned. The maximum value is
  /// 100000; values above 100000 will be coerced to 100000.
  core.int? pageSize;

  /// A page token, received from a previous call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  core.String? pageToken;

  /// Specification of the timeline aggregation parameters.
  ///
  /// **Supported aggregation periods:** * DAILY: metrics are aggregated in
  /// calendar date intervals. Due to historical constraints, the only supported
  /// timezone is `America/Los_Angeles`.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  /// User view to select.
  ///
  /// The output data will correspond to the selected view. The only supported
  /// value is `OS_PUBLIC`.
  /// Possible string values are:
  /// - "USER_COHORT_UNSPECIFIED" : Unspecified User cohort. This will
  /// automatically choose the default value.
  /// - "OS_PUBLIC" : This is default view. Contains data from public released
  /// android versions only.
  /// - "OS_BETA" : This is the view with just android beta data excluding
  /// released OS version data.
  /// - "APP_TESTERS" : This is the view with data only from users who have
  /// opted in to be testers for a given app, excluding OS beta data.
  core.String? userCohort;

  GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest({
    this.dimensions,
    this.filter,
    this.metrics,
    this.pageSize,
    this.pageToken,
    this.timelineSpec,
    this.userCohort,
  });

  GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userCohort: json_['userCohort'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (filter != null) 'filter': filter!,
    if (metrics != null) 'metrics': metrics!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
    if (userCohort != null) 'userCohort': userCohort!,
  };
}

/// Response message for QueryExcessiveWakeupRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse {
  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  /// Returned rows of data.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricsRow>? rows;

  GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse({
    this.nextPageToken,
    this.rows,
  });

  GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// Request message for QueryLmkRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest {
  /// Dimensions to slice the metrics by.
  ///
  /// **Supported dimensions:** * `apiLevel` (string): the API level of Android
  /// that was running on the user's device, e.g., 26. * `versionCode` (int64):
  /// version of the app that was running on the user's device. * `deviceModel`
  /// (string): unique identifier of the user's device model. The form of the
  /// identifier is 'deviceBrand/device', where deviceBrand corresponds to
  /// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
  /// `deviceBrand` (string): unique identifier of the user's device brand,
  /// e.g., google. * `deviceType` (string): the type (also known as form
  /// factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
  /// country or region of the user's device based on their IP address,
  /// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
  /// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
  /// etc.). * `deviceSocMake` (string): Make of the device's primary
  /// system-on-chip, e.g., Samsung.
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
  /// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
  /// e.g., "Exynos 2100".
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
  /// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
  /// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
  /// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
  /// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
  /// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
  /// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
  /// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the
  /// device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the
  /// device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density
  /// of the device, e.g., mdpi, hdpi.
  ///
  /// Optional.
  core.List<core.String>? dimensions;

  /// Filters to apply to data.
  ///
  /// The filtering expression follows \[AIP-160\](https://google.aip.dev/160)
  /// standard and supports filtering by equality of all breakdown dimensions.
  ///
  /// Optional.
  core.String? filter;

  /// Metrics to aggregate.
  ///
  /// **Supported metrics:** * `userPerceivedLmkRate` (`google.type.Decimal`):
  /// Percentage of distinct users in the aggregation period that experienced at
  /// least one LMK while they were actively using your app (a user-perceived
  /// LMK). An app is considered to be in active use if it is displaying any
  /// activity or executing any foreground service. *
  /// `userPerceivedLmkRate7dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `userPerceivedLmkRate` in the last 7 days. The daily
  /// values are weighted by the count of distinct users for the day. *
  /// `userPerceivedLmkRate28dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `userPerceivedLmkRate` in the last 28 days. The daily
  /// values are weighted by the count of distinct users for the day. *
  /// `distinctUsers` (`google.type.Decimal`): Count of distinct users in the
  /// aggregation period that were used as normalization value for the
  /// `userPerceivedLmkRate` metrics. A user is counted in this metric if they
  /// used the app in the foreground during the aggregation period. Care must be
  /// taken not to aggregate this count further, as it may result in users being
  /// counted multiple times. The value is rounded to the nearest multiple of
  /// 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value.
  ///
  /// Optional.
  core.List<core.String>? metrics;

  /// Maximum size of the returned data.
  ///
  /// If unspecified, at most 1000 rows will be returned. The maximum value is
  /// 100,000; values above 100,000 will be coerced to 100,000.
  ///
  /// Optional.
  core.int? pageSize;

  /// A page token, received from a previous call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  ///
  /// Optional.
  core.String? pageToken;

  /// Specification of the timeline aggregation parameters.
  ///
  /// **Supported aggregation periods:** * DAILY: metrics are aggregated in
  /// calendar date intervals. Due to historical constraints, the default and
  /// only supported timezone is `America/Los_Angeles`.
  ///
  /// Optional.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  /// User view to select.
  ///
  /// The output data will correspond to the selected view. **Supported
  /// values:** * `OS_PUBLIC` To select data from all publicly released Android
  /// versions. This is the default. Supports all the above dimensions. *
  /// `APP_TESTERS` To select data from users who have opted in to be testers.
  /// Supports all the above dimensions. * `OS_BETA` To select data from beta
  /// android versions only, excluding data from released android versions. Only
  /// the following dimensions are supported: * `versionCode` (int64): version
  /// of the app that was running on the user's device. * `osBuild` (string): OS
  /// build of the user's device, e.g., "T1B2.220916.004".
  ///
  /// Optional.
  /// Possible string values are:
  /// - "USER_COHORT_UNSPECIFIED" : Unspecified User cohort. This will
  /// automatically choose the default value.
  /// - "OS_PUBLIC" : This is default view. Contains data from public released
  /// android versions only.
  /// - "OS_BETA" : This is the view with just android beta data excluding
  /// released OS version data.
  /// - "APP_TESTERS" : This is the view with data only from users who have
  /// opted in to be testers for a given app, excluding OS beta data.
  core.String? userCohort;

  GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest({
    this.dimensions,
    this.filter,
    this.metrics,
    this.pageSize,
    this.pageToken,
    this.timelineSpec,
    this.userCohort,
  });

  GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetRequest.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userCohort: json_['userCohort'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (filter != null) 'filter': filter!,
    if (metrics != null) 'metrics': metrics!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
    if (userCohort != null) 'userCohort': userCohort!,
  };
}

/// Response message for QueryLmkRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse {
  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  /// Returned rows of data.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricsRow>? rows;

  GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse({
    this.nextPageToken,
    this.rows,
  });

  GooglePlayDeveloperReportingV1alpha1QueryLmkRateMetricSetResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// Request message for QuerySlowRenderingRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest {
  /// Dimensions to slice the data by.
  ///
  /// **Supported dimensions:** * `apiLevel` (string): the API level of Android
  /// that was running on the user's device, e.g., 26. * `versionCode` (int64):
  /// version of the app that was running on the user's device. * `deviceModel`
  /// (string): unique identifier of the user's device model. The form of the
  /// identifier is 'deviceBrand/device', where deviceBrand corresponds to
  /// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
  /// `deviceBrand` (string): unique identifier of the user's device brand,
  /// e.g., google. * `deviceType` (string): the type (also known as form
  /// factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
  /// country or region of the user's device based on their IP address,
  /// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
  /// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
  /// etc.). * `deviceSocMake` (string): Make of the device's primary
  /// system-on-chip, e.g., Samsung.
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
  /// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
  /// e.g., "Exynos 2100".
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
  /// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
  /// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
  /// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
  /// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
  /// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
  /// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
  /// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the
  /// device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the
  /// device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density
  /// of the device, e.g., mdpi, hdpi.
  core.List<core.String>? dimensions;

  /// Filters to apply to data.
  ///
  /// The filtering expression follows \[AIP-160\](https://google.aip.dev/160)
  /// standard and supports filtering by equality of all breakdown dimensions.
  core.String? filter;

  /// Metrics to aggregate.
  ///
  /// **Supported metrics:** * `slowRenderingRate20Fps` (`google.type.Decimal`):
  /// Percentage of distinct users in the aggregation period that had a slow
  /// rendering. * `slowRenderingRate20Fps7dUserWeighted`
  /// (`google.type.Decimal`): Rolling average value of `slowRenderingRate20Fps`
  /// in the last 7 days. The daily values are weighted by the count of distinct
  /// users for the day. * `slowRenderingRate20Fps28dUserWeighted`
  /// (`google.type.Decimal`): Rolling average value of `slowRenderingRate20Fps`
  /// in the last 28 days. The daily values are weighted by the count of
  /// distinct users for the day. * `slowRenderingRate30Fps`
  /// (`google.type.Decimal`): Percentage of distinct users in the aggregation
  /// period that had a slow rendering. * `slowRenderingRate30Fps7dUserWeighted`
  /// (`google.type.Decimal`): Rolling average value of `slowRenderingRate30Fps`
  /// in the last 7 days. The daily values are weighted by the count of distinct
  /// users for the day. * `slowRenderingRate30Fps28dUserWeighted`
  /// (`google.type.Decimal`): Rolling average value of `slowRenderingRate30Fps`
  /// in the last 28 days. The daily values are weighted by the count of
  /// distinct users for the day. * `distinctUsers` (`google.type.Decimal`):
  /// Count of distinct users in the aggregation period that were used as
  /// normalization value for the
  /// `slowRenderingRate20Fps`/`slowRenderingRate30Fps` metric. A user is
  /// counted in this metric if their app was launched in the device. Care must
  /// be taken not to aggregate this count further, as it may result in users
  /// being counted multiple times. The value is rounded to the nearest multiple
  /// of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value.
  core.List<core.String>? metrics;

  /// Maximum size of the returned data.
  ///
  /// If unspecified, at most 1000 rows will be returned. The maximum value is
  /// 100000; values above 100000 will be coerced to 100000.
  core.int? pageSize;

  /// A page token, received from a previous call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  core.String? pageToken;

  /// Specification of the timeline aggregation parameters.
  ///
  /// **Supported aggregation periods:** * DAILY: metrics are aggregated in
  /// calendar date intervals. Due to historical constraints, the only supported
  /// timezone is `America/Los_Angeles`.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  /// User view to select.
  ///
  /// The output data will correspond to the selected view. The only supported
  /// value is `OS_PUBLIC`.
  /// Possible string values are:
  /// - "USER_COHORT_UNSPECIFIED" : Unspecified User cohort. This will
  /// automatically choose the default value.
  /// - "OS_PUBLIC" : This is default view. Contains data from public released
  /// android versions only.
  /// - "OS_BETA" : This is the view with just android beta data excluding
  /// released OS version data.
  /// - "APP_TESTERS" : This is the view with data only from users who have
  /// opted in to be testers for a given app, excluding OS beta data.
  core.String? userCohort;

  GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest({
    this.dimensions,
    this.filter,
    this.metrics,
    this.pageSize,
    this.pageToken,
    this.timelineSpec,
    this.userCohort,
  });

  GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userCohort: json_['userCohort'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (filter != null) 'filter': filter!,
    if (metrics != null) 'metrics': metrics!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
    if (userCohort != null) 'userCohort': userCohort!,
  };
}

/// Response message for QuerySlowRenderingRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse {
  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  /// Returned rows of data.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricsRow>? rows;

  GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse({
    this.nextPageToken,
    this.rows,
  });

  GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// Request message for QuerySlowStartRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest {
  /// Dimensions to slice the data by.
  ///
  /// **Supported dimensions:** * `apiLevel` (string): the API level of Android
  /// that was running on the user's device, e.g., 26. * `versionCode` (int64):
  /// version of the app that was running on the user's device. * `deviceModel`
  /// (string): unique identifier of the user's device model. The form of the
  /// identifier is 'deviceBrand/device', where deviceBrand corresponds to
  /// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
  /// `deviceBrand` (string): unique identifier of the user's device brand,
  /// e.g., google. * `deviceType` (string): the type (also known as form
  /// factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
  /// country or region of the user's device based on their IP address,
  /// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
  /// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
  /// etc.). * `deviceSocMake` (string): Make of the device's primary
  /// system-on-chip, e.g., Samsung.
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
  /// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
  /// e.g., "Exynos 2100".
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
  /// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
  /// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
  /// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
  /// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
  /// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
  /// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
  /// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the
  /// device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the
  /// device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density
  /// of the device, e.g., mdpi, hdpi.
  core.List<core.String>? dimensions;

  /// Filters to apply to data.
  ///
  /// The filtering expression follows \[AIP-160\](https://google.aip.dev/160)
  /// standard and supports filtering by equality of all breakdown dimensions.
  core.String? filter;

  /// Metrics to aggregate.
  ///
  /// **Supported metrics:** * `slowStartRate` (`google.type.Decimal`):
  /// Percentage of distinct users in the aggregation period that had a slow
  /// start. * `slowStartRate7dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `slowStartRate` in the last 7 days. The daily values are
  /// weighted by the count of distinct users for the day. *
  /// `slowStartRate28dUserWeighted` (`google.type.Decimal`): Rolling average
  /// value of `slowStartRate` in the last 28 days. The daily values are
  /// weighted by the count of distinct users for the day. * `distinctUsers`
  /// (`google.type.Decimal`): Count of distinct users in the aggregation period
  /// that were used as normalization value for the `slowStartRate` metric. A
  /// user is counted in this metric if their app was launched in the device.
  /// Care must be taken not to aggregate this count further, as it may result
  /// in users being counted multiple times. The value is rounded to the nearest
  /// multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the
  /// value.
  core.List<core.String>? metrics;

  /// Maximum size of the returned data.
  ///
  /// If unspecified, at most 1000 rows will be returned. The maximum value is
  /// 100000; values above 100000 will be coerced to 100000.
  core.int? pageSize;

  /// A page token, received from a previous call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  core.String? pageToken;

  /// Specification of the timeline aggregation parameters.
  ///
  /// **Supported aggregation periods:** * DAILY: metrics are aggregated in
  /// calendar date intervals. Due to historical constraints, the only supported
  /// timezone is `America/Los_Angeles`.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  /// User view to select.
  ///
  /// The output data will correspond to the selected view. The only supported
  /// value is `OS_PUBLIC`.
  /// Possible string values are:
  /// - "USER_COHORT_UNSPECIFIED" : Unspecified User cohort. This will
  /// automatically choose the default value.
  /// - "OS_PUBLIC" : This is default view. Contains data from public released
  /// android versions only.
  /// - "OS_BETA" : This is the view with just android beta data excluding
  /// released OS version data.
  /// - "APP_TESTERS" : This is the view with data only from users who have
  /// opted in to be testers for a given app, excluding OS beta data.
  core.String? userCohort;

  GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest({
    this.dimensions,
    this.filter,
    this.metrics,
    this.pageSize,
    this.pageToken,
    this.timelineSpec,
    this.userCohort,
  });

  GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userCohort: json_['userCohort'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (filter != null) 'filter': filter!,
    if (metrics != null) 'metrics': metrics!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
    if (userCohort != null) 'userCohort': userCohort!,
  };
}

/// Response message for QuerySlowStartRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse {
  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  /// Returned rows of data.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricsRow>? rows;

  GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse({
    this.nextPageToken,
    this.rows,
  });

  GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// Request message for QueryStuckBackgroundWakelockRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest {
  /// Dimensions to slice the data by.
  ///
  /// **Supported dimensions:** * `apiLevel` (string): the API level of Android
  /// that was running on the user's device, e.g., 26. * `versionCode` (int64):
  /// version of the app that was running on the user's device. * `deviceModel`
  /// (string): unique identifier of the user's device model. The form of the
  /// identifier is 'deviceBrand/device', where deviceBrand corresponds to
  /// Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. *
  /// `deviceBrand` (string): unique identifier of the user's device brand,
  /// e.g., google. * `deviceType` (string): the type (also known as form
  /// factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
  /// country or region of the user's device based on their IP address,
  /// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
  /// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
  /// etc.). * `deviceSocMake` (string): Make of the device's primary
  /// system-on-chip, e.g., Samsung.
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
  /// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
  /// e.g., "Exynos 2100".
  /// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
  /// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
  /// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
  /// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
  /// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
  /// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
  /// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
  /// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the
  /// device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the
  /// device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density
  /// of the device, e.g., mdpi, hdpi.
  core.List<core.String>? dimensions;

  /// Filters to apply to data.
  ///
  /// The filtering expression follows \[AIP-160\](https://google.aip.dev/160)
  /// standard and supports filtering by equality of all breakdown dimensions.
  core.String? filter;

  /// Metrics to aggregate.
  ///
  /// **Supported metrics:** * `stuckBgWakelockRate` (`google.type.Decimal`):
  /// Percentage of distinct users in the aggregation period that had a wakelock
  /// held in the background for longer than 1 hour. *
  /// `stuckBgWakelockRate7dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `stuckBgWakelockRate` in the last 7 days. The daily
  /// values are weighted by the count of distinct users for the day. *
  /// `stuckBgWakelockRate28dUserWeighted` (`google.type.Decimal`): Rolling
  /// average value of `stuckBgWakelockRate` in the last 28 days. The daily
  /// values are weighted by the count of distinct users for the day. *
  /// `distinctUsers` (`google.type.Decimal`): Count of distinct users in the
  /// aggregation period that were used as normalization value for the
  /// `stuckBgWakelockRate` metric. A user is counted in this metric if they app
  /// was doing any work on the device, i.e., not just active foreground usage
  /// but also background work. Care must be taken not to aggregate this count
  /// further, as it may result in users being counted multiple times. The value
  /// is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000,
  /// depending on the magnitude of the value.
  core.List<core.String>? metrics;

  /// Maximum size of the returned data.
  ///
  /// If unspecified, at most 1000 rows will be returned. The maximum value is
  /// 100000; values above 100000 will be coerced to 100000.
  core.int? pageSize;

  /// A page token, received from a previous call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  core.String? pageToken;

  /// Specification of the timeline aggregation parameters.
  ///
  /// **Supported aggregation periods:** * DAILY: metrics are aggregated in
  /// calendar date intervals. Due to historical constraints, the only supported
  /// timezone is `America/Los_Angeles`.
  GooglePlayDeveloperReportingV1alpha1TimelineSpec? timelineSpec;

  /// User view to select.
  ///
  /// The output data will correspond to the selected view. The only supported
  /// value is `OS_PUBLIC`.
  /// Possible string values are:
  /// - "USER_COHORT_UNSPECIFIED" : Unspecified User cohort. This will
  /// automatically choose the default value.
  /// - "OS_PUBLIC" : This is default view. Contains data from public released
  /// android versions only.
  /// - "OS_BETA" : This is the view with just android beta data excluding
  /// released OS version data.
  /// - "APP_TESTERS" : This is the view with data only from users who have
  /// opted in to be testers for a given app, excluding OS beta data.
  core.String? userCohort;

  GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest({
    this.dimensions,
    this.filter,
    this.metrics,
    this.pageSize,
    this.pageToken,
    this.timelineSpec,
    this.userCohort,
  });

  GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest.fromJson(
    core.Map json_,
  ) : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        timelineSpec:
            json_.containsKey('timelineSpec')
                ? GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(
                  json_['timelineSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userCohort: json_['userCohort'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (filter != null) 'filter': filter!,
    if (metrics != null) 'metrics': metrics!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (timelineSpec != null) 'timelineSpec': timelineSpec!,
    if (userCohort != null) 'userCohort': userCohort!,
  };
}

/// Response message for QueryStuckBackgroundWakelockRateMetricSet.
class GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse {
  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  /// Returned rows of data.
  core.List<GooglePlayDeveloperReportingV1alpha1MetricsRow>? rows;

  GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse({
    this.nextPageToken,
    this.rows,
  });

  GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1MetricsRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// A representation of an app release.
typedef GooglePlayDeveloperReportingV1alpha1Release = $Release;

/// A set of filtering options for releases and version codes specific to an
/// app.
class GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions {
  /// List of tracks to filter releases over.
  ///
  /// Provides the grouping of version codes under releases and tracks.
  core.List<GooglePlayDeveloperReportingV1alpha1Track>? tracks;

  GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions({this.tracks});

  GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions.fromJson(
    core.Map json_,
  ) : this(
        tracks:
            (json_['tracks'] as core.List?)
                ?.map(
                  (value) => GooglePlayDeveloperReportingV1alpha1Track.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (tracks != null) 'tracks': tracks!,
  };
}

/// Response message for SearchAccessibleApps.
class GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse {
  /// The apps accessible to the user calling the endpoint.
  core.List<GooglePlayDeveloperReportingV1alpha1App>? apps;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse({
    this.apps,
    this.nextPageToken,
  });

  GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse.fromJson(
    core.Map json_,
  ) : this(
        apps:
            (json_['apps'] as core.List?)
                ?.map(
                  (value) => GooglePlayDeveloperReportingV1alpha1App.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apps != null) 'apps': apps!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response with a paginated list of issues that matched the request.
class GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse {
  /// ErrorIssues that were found.
  core.List<GooglePlayDeveloperReportingV1alpha1ErrorIssue>? errorIssues;

  /// Continuation token to fetch the next page of data.
  core.String? nextPageToken;

  GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse({
    this.errorIssues,
    this.nextPageToken,
  });

  GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse.fromJson(
    core.Map json_,
  ) : this(
        errorIssues:
            (json_['errorIssues'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1ErrorIssue.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorIssues != null) 'errorIssues': errorIssues!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response with a paginated list of error reports matching the search query.
class GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse {
  /// Error reports that were found.
  core.List<GooglePlayDeveloperReportingV1alpha1ErrorReport>? errorReports;

  /// Page token to fetch the next page of reports.
  core.String? nextPageToken;

  GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse({
    this.errorReports,
    this.nextPageToken,
  });

  GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse.fromJson(
    core.Map json_,
  ) : this(
        errorReports:
            (json_['errorReports'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1ErrorReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorReports != null) 'errorReports': errorReports!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Singleton resource representing the set of Slow Rendering metrics.
///
/// This metric set contains low-level rendering data captured by SurafeFlinger.
/// Sessions are evaluated based on the present-to-present histogram of frames
/// handled by any SurfaceFlinger layer owned by the app. A slow session is a
/// session where more than 25% of frames for the session did not meet the
/// metric's target frame rate (either 20fps, or 30fps). *NOTE:* This metric set
/// is only available for games. **Supported aggregation periods:** * DAILY:
/// metrics are aggregated in calendar date intervals. Due to historical
/// constraints, the only supported timezone is `America/Los_Angeles`.
/// **Supported metrics:** * `slowRenderingRate20Fps` (`google.type.Decimal`):
/// Percentage of distinct users in the aggregation period that had slow
/// rendering. * `slowRenderingRate20Fps7dUserWeighted` (`google.type.Decimal`):
/// Rolling average value of `slowRenderingRate20Fps` in the last 7 days. The
/// daily values are weighted by the count of distinct users for the day. *
/// `slowRenderingRate20Fps28dUserWeighted` (`google.type.Decimal`): Rolling
/// average value of `slowRenderingRate20Fps` in the last 28 days. The daily
/// values are weighted by the count of distinct users for the day. *
/// `slowRenderingRate30Fps` (`google.type.Decimal`): Percentage of distinct
/// users in the aggregation period that had slow rendering. *
/// `slowRenderingRate30Fps7dUserWeighted` (`google.type.Decimal`): Rolling
/// average value of `slowRenderingRate30Fps` in the last 7 days. The daily
/// values are weighted by the count of distinct users for the day. *
/// `slowRenderingRate30Fps28dUserWeighted` (`google.type.Decimal`): Rolling
/// average value of `slowRenderingRate30Fps` in the last 28 days. The daily
/// values are weighted by the count of distinct users for the day. *
/// `distinctUsers` (`google.type.Decimal`): Count of distinct users in the
/// aggregation period that were used as normalization value for the
/// `slowRenderingRate20Fps`/`slowRenderingRate30Fps` metric. A user is counted
/// in this metric if their app rendered any frames. Care must be taken not to
/// aggregate this count further, as it may result in users being counted
/// multiple times. The value is rounded to the nearest multiple of 10, 100,
/// 1,000 or 1,000,000, depending on the magnitude of the value. **Supported
/// dimensions:** * `apiLevel` (string): the API level of Android that was
/// running on the user's device, e.g., 26. * `versionCode` (int64): version of
/// the app that was running on the user's device. * `deviceModel` (string):
/// unique identifier of the user's device model. The form of the identifier is
/// 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and
/// device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand`
/// (string): unique identifier of the user's device brand, e.g., google. *
/// `deviceType` (string): the type (also known as form factor) of the user's
/// device, e.g., PHONE. * `countryCode` (string): the country or region of the
/// user's device based on their IP address, represented as a 2-letter ISO-3166
/// code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of
/// the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string):
/// Make of the device's primary system-on-chip, e.g., Samsung.
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
/// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
/// e.g., "Exynos 2100".
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
/// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
/// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
/// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
/// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
/// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
/// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
/// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device,
/// e.g., "196610". * `deviceScreenSize` (string): Screen size of the device,
/// e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the
/// device, e.g., mdpi, hdpi. **Required permissions**: to access this resource,
/// the calling user needs the _View app information (read-only)_ permission for
/// the app.
class GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet {
  /// Summary about data freshness in this resource.
  GooglePlayDeveloperReportingV1alpha1FreshnessInfo? freshnessInfo;

  /// Identifier.
  ///
  /// The resource name. Format: apps/{app}/slowRenderingRateMetricSet
  core.String? name;

  GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet({
    this.freshnessInfo,
    this.name,
  });

  GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet.fromJson(
    core.Map json_,
  ) : this(
        freshnessInfo:
            json_.containsKey('freshnessInfo')
                ? GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
                  json_['freshnessInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnessInfo != null) 'freshnessInfo': freshnessInfo!,
    if (name != null) 'name': name!,
  };
}

/// Singleton resource representing the set of Slow Start metrics.
///
/// This metric set contains Activity start duration data. **Supported
/// aggregation periods:** * DAILY: metrics are aggregated in calendar date
/// intervals. Due to historical constraints, the only supported timezone is
/// `America/Los_Angeles`. **Supported metrics:** * `slowStartRate`
/// (`google.type.Decimal`): Percentage of distinct users in the aggregation
/// period that had a slow start. * `slowStartRate7dUserWeighted`
/// (`google.type.Decimal`): Rolling average value of `slowStartRate` in the
/// last 7 days. The daily values are weighted by the count of distinct users
/// for the day. * `slowStartRate28dUserWeighted` (`google.type.Decimal`):
/// Rolling average value of `slowStartRate` in the last 28 days. The daily
/// values are weighted by the count of distinct users for the day. *
/// `distinctUsers` (`google.type.Decimal`): Count of distinct users in the
/// aggregation period that were used as normalization value for the
/// `slowStartRate` metric. A user is counted in this metric if their app was
/// launched in the device. Care must be taken not to aggregate this count
/// further, as it may result in users being counted multiple times. The value
/// is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending
/// on the magnitude of the value. **Required dimension:** This dimension must
/// be specified with each request for the request to be valid. * `startType`
/// (string): the type of start that was measured. Valid types are `HOT`, `WARM`
/// and `COLD`. **Supported dimensions:** * `apiLevel` (string): the API level
/// of Android that was running on the user's device, e.g., 26. * `versionCode`
/// (int64): version of the app that was running on the user's device. *
/// `deviceModel` (string): unique identifier of the user's device model. The
/// form of the identifier is 'deviceBrand/device', where deviceBrand
/// corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
/// google/coral. * `deviceBrand` (string): unique identifier of the user's
/// device brand, e.g., google. * `deviceType` (string): the type (also known as
/// form factor) of the user's device, e.g., PHONE. * `countryCode` (string):
/// the country or region of the user's device based on their IP address,
/// represented as a 2-letter ISO-3166 code (e.g. US for the United States). *
/// `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
/// etc.). * `deviceSocMake` (string): Make of the device's primary
/// system-on-chip, e.g., Samsung.
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
/// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
/// e.g., "Exynos 2100".
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
/// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
/// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
/// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
/// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
/// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
/// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
/// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device,
/// e.g., "196610". * `deviceScreenSize` (string): Screen size of the device,
/// e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the
/// device, e.g., mdpi, hdpi. **Required permissions**: to access this resource,
/// the calling user needs the _View app information (read-only)_ permission for
/// the app.
class GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet {
  /// Summary about data freshness in this resource.
  GooglePlayDeveloperReportingV1alpha1FreshnessInfo? freshnessInfo;

  /// Identifier.
  ///
  /// The resource name. Format: apps/{app}/slowStartRateMetricSet
  core.String? name;

  GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet({
    this.freshnessInfo,
    this.name,
  });

  GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet.fromJson(
    core.Map json_,
  ) : this(
        freshnessInfo:
            json_.containsKey('freshnessInfo')
                ? GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
                  json_['freshnessInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnessInfo != null) 'freshnessInfo': freshnessInfo!,
    if (name != null) 'name': name!,
  };
}

/// Singleton resource representing the set of Stuck Background Wakelocks
/// metrics.
///
/// This metric set contains PowerManager wakelock duration data combined with
/// process state data to produce a normalized metric independent of user
/// counts. **Supported aggregation periods:** * DAILY: metrics are aggregated
/// in calendar date intervals. Due to historical constraints, the only
/// supported timezone is `America/Los_Angeles`. **Supported metrics:** *
/// `stuckBgWakelockRate` (`google.type.Decimal`): Percentage of distinct users
/// in the aggregation period that had a wakelock held in the background for
/// longer than 1 hour. * `stuckBgWakelockRate7dUserWeighted`
/// (`google.type.Decimal`): Rolling average value of `stuckBgWakelockRate` in
/// the last 7 days. The daily values are weighted by the count of distinct
/// users for the day. * `stuckBgWakelockRate28dUserWeighted`
/// (`google.type.Decimal`): Rolling average value of `stuckBgWakelockRate` in
/// the last 28 days. The daily values are weighted by the count of distinct
/// users for the day. * `distinctUsers` (`google.type.Decimal`): Count of
/// distinct users in the aggregation period that were used as normalization
/// value for the `stuckBgWakelockRate` metric. A user is counted in this metric
/// if their app was doing any work on the device, i.e., not just active
/// foreground usage but also background work. Care must be taken not to
/// aggregate this count further, as it may result in users being counted
/// multiple times. The value is rounded to the nearest multiple of 10, 100,
/// 1,000 or 1,000,000, depending on the magnitude of the value. **Supported
/// dimensions:** * `apiLevel` (string): the API level of Android that was
/// running on the user's device, e.g., 26. * `versionCode` (int64): version of
/// the app that was running on the user's device. * `deviceModel` (string):
/// unique identifier of the user's device model. The form of the identifier is
/// 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and
/// device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand`
/// (string): unique identifier of the user's device brand, e.g., google. *
/// `deviceType` (string): the type (also known as form factor) of the user's
/// device, e.g., PHONE. * `countryCode` (string): the country or region of the
/// user's device based on their IP address, represented as a 2-letter ISO-3166
/// code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of
/// the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string):
/// Make of the device's primary system-on-chip, e.g., Samsung.
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER)
/// * `deviceSocModel` (string): Model of the device's primary system-on-chip,
/// e.g., "Exynos 2100".
/// [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL)
/// * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. *
/// `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". *
/// `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. *
/// `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. *
/// `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. *
/// `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
/// "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device,
/// e.g., "196610". * `deviceScreenSize` (string): Screen size of the device,
/// e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the
/// device, e.g., mdpi, hdpi. **Required permissions**: to access this resource,
/// the calling user needs the _View app information (read-only)_ permission for
/// the app.
class GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet {
  /// Summary about data freshness in this resource.
  GooglePlayDeveloperReportingV1alpha1FreshnessInfo? freshnessInfo;

  /// Identifier.
  ///
  /// The resource name. Format: apps/{app}/stuckBackgroundWakelockRateMetricSet
  core.String? name;

  GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet({
    this.freshnessInfo,
    this.name,
  });

  GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet.fromJson(
    core.Map json_,
  ) : this(
        freshnessInfo:
            json_.containsKey('freshnessInfo')
                ? GooglePlayDeveloperReportingV1alpha1FreshnessInfo.fromJson(
                  json_['freshnessInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freshnessInfo != null) 'freshnessInfo': freshnessInfo!,
    if (name != null) 'name': name!,
  };
}

/// Specification of the time-related aggregation parameters of a timeline.
///
/// Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
/// how events are aggregated in metrics. The points in a timeline are defined
/// by the starting DateTime of the aggregation period. The duration is implicit
/// in the AggregationPeriod. Hourly aggregation periods, when supported by a
/// metric set, are always specified in UTC to avoid ambiguities around daylight
/// saving time transitions, where an hour is skipped when adopting DST, and
/// repeated when abandoning DST. For example, the timestamp '2021-11-07
/// 01:00:00 America/Los_Angeles' is ambiguous since it can correspond to
/// '2021-11-07 08:00:00 UTC' or '2021-11-07 09:00:00 UTC'. Daily aggregation
/// periods require specifying a timezone which will determine the precise
/// instants of the start and the end of the day. Not all metric sets support
/// all timezones, so make sure to check which timezones are supported by the
/// metric set you want to query.
class GooglePlayDeveloperReportingV1alpha1TimelineSpec {
  /// Type of the aggregation period of the datapoints in the timeline.
  ///
  /// Intervals are identified by the date and time at the start of the
  /// interval.
  /// Possible string values are:
  /// - "AGGREGATION_PERIOD_UNSPECIFIED" : Unspecified granularity.
  /// - "HOURLY" : Data is aggregated in hourly intervals.
  /// - "DAILY" : Data is aggregated in daily intervals.
  /// - "FULL_RANGE" : Data is aggregated over the full timeline range.
  /// Effectively this produces a single value rather than a timeline.
  core.String? aggregationPeriod;

  /// Ending datapoint of the timeline (exclusive).
  ///
  /// See start_time for restrictions. The timezone of the end point must match
  /// the timezone of the start point.
  GoogleTypeDateTime? endTime;

  /// Starting datapoint of the timeline (inclusive).
  ///
  /// Must be aligned to the aggregation period as follows: * HOURLY: the
  /// 'minutes', 'seconds' and 'nanos' fields must be unset. The time_zone can
  /// be left unset (defaults to UTC) or set explicitly to "UTC". Setting any
  /// other utc_offset or timezone id will result in a validation error. *
  /// DAILY: the 'hours', 'minutes', 'seconds' and 'nanos' fields must be unset.
  /// Different metric sets support different timezones. It can be left unset to
  /// use the default timezone specified by the metric set. The timezone of the
  /// end point must match the timezone of the start point.
  GoogleTypeDateTime? startTime;

  GooglePlayDeveloperReportingV1alpha1TimelineSpec({
    this.aggregationPeriod,
    this.endTime,
    this.startTime,
  });

  GooglePlayDeveloperReportingV1alpha1TimelineSpec.fromJson(core.Map json_)
    : this(
        aggregationPeriod: json_['aggregationPeriod'] as core.String?,
        endTime:
            json_.containsKey('endTime')
                ? GoogleTypeDateTime.fromJson(
                  json_['endTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startTime:
            json_.containsKey('startTime')
                ? GoogleTypeDateTime.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationPeriod != null) 'aggregationPeriod': aggregationPeriod!,
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// A representation of a Play release track.
class GooglePlayDeveloperReportingV1alpha1Track {
  /// Readable identifier of the track.
  core.String? displayName;

  /// Represents all active releases in the track.
  core.List<GooglePlayDeveloperReportingV1alpha1Release>? servingReleases;

  /// The type of the track.
  core.String? type;

  GooglePlayDeveloperReportingV1alpha1Track({
    this.displayName,
    this.servingReleases,
    this.type,
  });

  GooglePlayDeveloperReportingV1alpha1Track.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        servingReleases:
            (json_['servingReleases'] as core.List?)
                ?.map(
                  (value) =>
                      GooglePlayDeveloperReportingV1alpha1Release.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (servingReleases != null) 'servingReleases': servingReleases!,
    if (type != null) 'type': type!,
  };
}

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year, month, or day are 0, the DateTime is considered not to have a specific
/// year, month, or day respectively. This type may also be used to represent a
/// physical time if all the date and time fields are set and either case of the
/// `time_offset` oneof is set. Consider using `Timestamp` message for physical
/// time instead. If your use case also would like to store the user's timezone,
/// that can be done in another field. This type is more flexible than some
/// applications may want. Make sure to document and validate your application's
/// limitations.
class GoogleTypeDateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 if specifying
  /// a datetime without a day.
  ///
  /// Optional.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// Optional.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59, defaults to 0.
  ///
  /// Optional.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12, or 0 if specifying a datetime without a month.
  ///
  /// Optional.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// Optional.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// Optional.
  core.int? seconds;

  /// Time zone.
  GoogleTypeTimeZone? timeZone;

  /// UTC offset.
  ///
  /// Must be whole seconds, between -18 hours and +18 hours. For example, a UTC
  /// offset of -4:00 would be represented as { seconds: -14400 }.
  core.String? utcOffset;

  /// Year of date.
  ///
  /// Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  ///
  /// Optional.
  core.int? year;

  GoogleTypeDateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  GoogleTypeDateTime.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.int?,
        hours: json_['hours'] as core.int?,
        minutes: json_['minutes'] as core.int?,
        month: json_['month'] as core.int?,
        nanos: json_['nanos'] as core.int?,
        seconds: json_['seconds'] as core.int?,
        timeZone:
            json_.containsKey('timeZone')
                ? GoogleTypeTimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        utcOffset: json_['utcOffset'] as core.String?,
        year: json_['year'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (day != null) 'day': day!,
    if (hours != null) 'hours': hours!,
    if (minutes != null) 'minutes': minutes!,
    if (month != null) 'month': month!,
    if (nanos != null) 'nanos': nanos!,
    if (seconds != null) 'seconds': seconds!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (utcOffset != null) 'utcOffset': utcOffset!,
    if (year != null) 'year': year!,
  };
}

/// A representation of a decimal value, such as 2.5.
///
/// Clients may convert values into language-native decimal formats, such as
/// Java's
/// [BigDecimal](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html)
/// or Python's
/// [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
typedef GoogleTypeDecimal = $Decimal;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef GoogleTypeTimeZone = $TimeZone;
