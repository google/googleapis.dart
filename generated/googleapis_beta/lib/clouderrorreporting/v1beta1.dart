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

/// Error Reporting API - v1beta1
///
/// Groups and counts similar errors from cloud services and applications,
/// reports new errors, and provides access to error groups and their associated
/// errors.
///
/// For more information, see <https://cloud.google.com/error-reporting/>
///
/// Create an instance of [ClouderrorreportingApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsEventsResource]
///   - [ProjectsGroupStatsResource]
///   - [ProjectsGroupsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsEventsResource]
///     - [ProjectsLocationsGroupStatsResource]
///     - [ProjectsLocationsGroupsResource]
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

/// Groups and counts similar errors from cloud services and applications,
/// reports new errors, and provides access to error groups and their associated
/// errors.
class ClouderrorreportingApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ClouderrorreportingApi(http.Client client,
      {core.String rootUrl = 'https://clouderrorreporting.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsEventsResource get events => ProjectsEventsResource(_requester);
  ProjectsGroupStatsResource get groupStats =>
      ProjectsGroupStatsResource(_requester);
  ProjectsGroupsResource get groups => ProjectsGroupsResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes all error events of a given project.
  ///
  /// Request parameters:
  ///
  /// [projectName] - Required. The resource name of the Google Cloud Platform
  /// project. Written as `projects/{projectID}` or
  /// `projects/{projectID}/locations/{location}`, where `{projectID}` is the
  /// [Google Cloud Platform project ID](https://support.google.com/cloud/answer/6158840)
  /// and `{location}` is a Cloud region. Examples: `projects/my-project-123`,
  /// `projects/my-project-123/locations/global`. For a list of supported
  /// locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteEventsResponse> deleteEvents(
    core.String projectName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$projectName') + '/events';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return DeleteEventsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsEventsResource {
  final commons.ApiRequester _requester;

  ProjectsEventsResource(commons.ApiRequester client) : _requester = client;

  /// Lists the specified events.
  ///
  /// Request parameters:
  ///
  /// [projectName] - Required. The resource name of the Google Cloud Platform
  /// project. Written as `projects/{projectID}` or
  /// `projects/{projectID}/locations/{location}`, where `{projectID}` is the
  /// [Google Cloud Platform project ID](https://support.google.com/cloud/answer/6158840)
  /// and `{location}` is a Cloud region. Examples: `projects/my-project-123`,
  /// `projects/my-project-123/locations/global`. For a list of supported
  /// locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [groupId] - Required. The group for which events shall be returned. The
  /// `group_id` is a unique identifier for a particular error group. The
  /// identifier is derived from key parts of the error-log content and is
  /// treated as Service Data. For information about how Service Data is
  /// handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  ///
  /// [pageSize] - Optional. The maximum number of results to return per
  /// response.
  ///
  /// [pageToken] - Optional. A `next_page_token` provided by a previous
  /// response.
  ///
  /// [serviceFilter_resourceType] - Optional. The exact value to match against
  /// \[`ServiceContext.resource_type`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type).
  ///
  /// [serviceFilter_service] - Optional. The exact value to match against
  /// \[`ServiceContext.service`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service).
  ///
  /// [serviceFilter_version] - Optional. The exact value to match against
  /// \[`ServiceContext.version`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version).
  ///
  /// [timeRange_period] - Restricts the query to the specified time range.
  /// Possible string values are:
  /// - "PERIOD_UNSPECIFIED" : Do not use.
  /// - "PERIOD_1_HOUR" : Retrieve data for the last hour. Recommended minimum
  /// timed count duration: 1 min.
  /// - "PERIOD_6_HOURS" : Retrieve data for the last 6 hours. Recommended
  /// minimum timed count duration: 10 min.
  /// - "PERIOD_1_DAY" : Retrieve data for the last day. Recommended minimum
  /// timed count duration: 1 hour.
  /// - "PERIOD_1_WEEK" : Retrieve data for the last week. Recommended minimum
  /// timed count duration: 6 hours.
  /// - "PERIOD_30_DAYS" : Retrieve data for the last 30 days. Recommended
  /// minimum timed count duration: 1 day.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEventsResponse> list(
    core.String projectName, {
    core.String? groupId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? serviceFilter_resourceType,
    core.String? serviceFilter_service,
    core.String? serviceFilter_version,
    core.String? timeRange_period,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupId != null) 'groupId': [groupId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (serviceFilter_resourceType != null)
        'serviceFilter.resourceType': [serviceFilter_resourceType],
      if (serviceFilter_service != null)
        'serviceFilter.service': [serviceFilter_service],
      if (serviceFilter_version != null)
        'serviceFilter.version': [serviceFilter_version],
      if (timeRange_period != null) 'timeRange.period': [timeRange_period],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$projectName') + '/events';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Report an individual error event and record the event to a log.
  ///
  /// This endpoint accepts **either** an OAuth token, **or** an
  /// [API key](https://support.google.com/cloud/answer/6158862) for
  /// authentication. To use an API key, append it to the URL as the value of a
  /// `key` parameter. For example: `POST
  /// https://clouderrorreporting.googleapis.com/v1beta1/{projectName}/events:report?key=123ABC456`
  /// **Note:** [Error Reporting](https://cloud.google.com/error-reporting) is a
  /// service built on Cloud Logging and can analyze log entries when all of the
  /// following are true: * Customer-managed encryption keys (CMEK) are disabled
  /// on the log bucket. * The log bucket satisfies one of the following: * The
  /// log bucket is stored in the same project where the logs originated. * The
  /// logs were routed to a project, and then that project stored those logs in
  /// a log bucket that it owns.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectName] - Required. The resource name of the Google Cloud Platform
  /// project. Written as `projects/{projectId}`, where `{projectId}` is the
  /// [Google Cloud Platform project ID](https://support.google.com/cloud/answer/6158840).
  /// Example: // `projects/my-project-123`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportErrorEventResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportErrorEventResponse> report(
    ReportedErrorEvent request,
    core.String projectName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$projectName') + '/events:report';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReportErrorEventResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsGroupStatsResource {
  final commons.ApiRequester _requester;

  ProjectsGroupStatsResource(commons.ApiRequester client) : _requester = client;

  /// Lists the specified groups.
  ///
  /// Request parameters:
  ///
  /// [projectName] - Required. The resource name of the Google Cloud Platform
  /// project. Written as `projects/{projectID}` or `projects/{projectNumber}`,
  /// where `{projectID}` and `{projectNumber}` can be found in the
  /// [Google Cloud console](https://support.google.com/cloud/answer/6158840).
  /// It may also include a location, such as
  /// `projects/{projectID}/locations/{location}` where `{location}` is a cloud
  /// region. Examples: `projects/my-project-123`, `projects/5551234`,
  /// `projects/my-project-123/locations/us-central1`,
  /// `projects/5551234/locations/us-central1`. For a list of supported
  /// locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified. Use `-` as a wildcard to request
  /// group stats from all regions.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [alignment] - Optional. The alignment of the timed counts to be returned.
  /// Default is `ALIGNMENT_EQUAL_AT_END`.
  /// Possible string values are:
  /// - "ERROR_COUNT_ALIGNMENT_UNSPECIFIED" : No alignment specified.
  /// - "ALIGNMENT_EQUAL_ROUNDED" : The time periods shall be consecutive, have
  /// width equal to the requested duration, and be aligned at the
  /// alignment_time provided in the request. The alignment_time does not have
  /// to be inside the query period but even if it is outside, only time periods
  /// are returned which overlap with the query period. A rounded alignment will
  /// typically result in a different size of the first or the last time period.
  /// - "ALIGNMENT_EQUAL_AT_END" : The time periods shall be consecutive, have
  /// width equal to the requested duration, and be aligned at the end of the
  /// requested time period. This can result in a different size of the first
  /// time period.
  ///
  /// [alignmentTime] - Optional. Time where the timed counts shall be aligned
  /// if rounded alignment is chosen. Default is 00:00 UTC.
  ///
  /// [groupId] - Optional. List all ErrorGroupStats with these IDs. The
  /// `group_id` is a unique identifier for a particular error group. The
  /// identifier is derived from key parts of the error-log content and is
  /// treated as Service Data. For information about how Service Data is
  /// handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  ///
  /// [order] - Optional. The sort order in which the results are returned.
  /// Default is `COUNT_DESC`.
  /// Possible string values are:
  /// - "GROUP_ORDER_UNSPECIFIED" : No group order specified.
  /// - "COUNT_DESC" : Total count of errors in the given time window in
  /// descending order.
  /// - "LAST_SEEN_DESC" : Timestamp when the group was last seen in the given
  /// time window in descending order.
  /// - "CREATED_DESC" : Timestamp when the group was created in descending
  /// order.
  /// - "AFFECTED_USERS_DESC" : Number of affected users in the given time
  /// window in descending order.
  ///
  /// [pageSize] - Optional. The maximum number of results to return per
  /// response. Default is 20.
  ///
  /// [pageToken] - Optional. A next_page_token provided by a previous response.
  /// To view additional results, pass this token along with the identical query
  /// parameters as the first request.
  ///
  /// [serviceFilter_resourceType] - Optional. The exact value to match against
  /// \[`ServiceContext.resource_type`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type).
  ///
  /// [serviceFilter_service] - Optional. The exact value to match against
  /// \[`ServiceContext.service`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service).
  ///
  /// [serviceFilter_version] - Optional. The exact value to match against
  /// \[`ServiceContext.version`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version).
  ///
  /// [timeRange_period] - Restricts the query to the specified time range.
  /// Possible string values are:
  /// - "PERIOD_UNSPECIFIED" : Do not use.
  /// - "PERIOD_1_HOUR" : Retrieve data for the last hour. Recommended minimum
  /// timed count duration: 1 min.
  /// - "PERIOD_6_HOURS" : Retrieve data for the last 6 hours. Recommended
  /// minimum timed count duration: 10 min.
  /// - "PERIOD_1_DAY" : Retrieve data for the last day. Recommended minimum
  /// timed count duration: 1 hour.
  /// - "PERIOD_1_WEEK" : Retrieve data for the last week. Recommended minimum
  /// timed count duration: 6 hours.
  /// - "PERIOD_30_DAYS" : Retrieve data for the last 30 days. Recommended
  /// minimum timed count duration: 1 day.
  ///
  /// [timedCountDuration] - Optional. The preferred duration for a single
  /// returned TimedCount. If not set, no timed counts are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupStatsResponse> list(
    core.String projectName, {
    core.String? alignment,
    core.String? alignmentTime,
    core.List<core.String>? groupId,
    core.String? order,
    core.int? pageSize,
    core.String? pageToken,
    core.String? serviceFilter_resourceType,
    core.String? serviceFilter_service,
    core.String? serviceFilter_version,
    core.String? timeRange_period,
    core.String? timedCountDuration,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (alignment != null) 'alignment': [alignment],
      if (alignmentTime != null) 'alignmentTime': [alignmentTime],
      if (groupId != null) 'groupId': groupId,
      if (order != null) 'order': [order],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (serviceFilter_resourceType != null)
        'serviceFilter.resourceType': [serviceFilter_resourceType],
      if (serviceFilter_service != null)
        'serviceFilter.service': [serviceFilter_service],
      if (serviceFilter_version != null)
        'serviceFilter.version': [serviceFilter_version],
      if (timeRange_period != null) 'timeRange.period': [timeRange_period],
      if (timedCountDuration != null)
        'timedCountDuration': [timedCountDuration],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$projectName') + '/groupStats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupStatsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Get the specified group.
  ///
  /// Request parameters:
  ///
  /// [groupName] - Required. The group resource name. Written as either
  /// `projects/{projectID}/groups/{group_id}` or
  /// `projects/{projectID}/locations/{location}/groups/{group_id}`. Call
  /// groupStats.list to return a list of groups belonging to this project.
  /// Examples: `projects/my-project-123/groups/my-group`,
  /// `projects/my-project-123/locations/global/groups/my-group` In the group
  /// resource name, the `group_id` is a unique identifier for a particular
  /// error group. The identifier is derived from key parts of the error-log
  /// content and is treated as Service Data. For information about how Service
  /// Data is handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  /// For a list of supported locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ErrorGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ErrorGroup> get(
    core.String groupName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$groupName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ErrorGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replace the data for the specified group.
  ///
  /// Fails if the group does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The group resource name. Written as
  /// `projects/{projectID}/groups/{group_id}` or
  /// `projects/{projectID}/locations/{location}/groups/{group_id}` Examples:
  /// `projects/my-project-123/groups/my-group`,
  /// `projects/my-project-123/locations/us-central1/groups/my-group` In the
  /// group resource name, the `group_id` is a unique identifier for a
  /// particular error group. The identifier is derived from key parts of the
  /// error-log content and is treated as Service Data. For information about
  /// how Service Data is handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  /// For a list of supported locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ErrorGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ErrorGroup> update(
    ErrorGroup request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ErrorGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEventsResource get events =>
      ProjectsLocationsEventsResource(_requester);
  ProjectsLocationsGroupStatsResource get groupStats =>
      ProjectsLocationsGroupStatsResource(_requester);
  ProjectsLocationsGroupsResource get groups =>
      ProjectsLocationsGroupsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes all error events of a given project.
  ///
  /// Request parameters:
  ///
  /// [projectName] - Required. The resource name of the Google Cloud Platform
  /// project. Written as `projects/{projectID}` or
  /// `projects/{projectID}/locations/{location}`, where `{projectID}` is the
  /// [Google Cloud Platform project ID](https://support.google.com/cloud/answer/6158840)
  /// and `{location}` is a Cloud region. Examples: `projects/my-project-123`,
  /// `projects/my-project-123/locations/global`. For a list of supported
  /// locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteEventsResponse> deleteEvents(
    core.String projectName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$projectName') + '/events';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return DeleteEventsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEventsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the specified events.
  ///
  /// Request parameters:
  ///
  /// [projectName] - Required. The resource name of the Google Cloud Platform
  /// project. Written as `projects/{projectID}` or
  /// `projects/{projectID}/locations/{location}`, where `{projectID}` is the
  /// [Google Cloud Platform project ID](https://support.google.com/cloud/answer/6158840)
  /// and `{location}` is a Cloud region. Examples: `projects/my-project-123`,
  /// `projects/my-project-123/locations/global`. For a list of supported
  /// locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [groupId] - Required. The group for which events shall be returned. The
  /// `group_id` is a unique identifier for a particular error group. The
  /// identifier is derived from key parts of the error-log content and is
  /// treated as Service Data. For information about how Service Data is
  /// handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  ///
  /// [pageSize] - Optional. The maximum number of results to return per
  /// response.
  ///
  /// [pageToken] - Optional. A `next_page_token` provided by a previous
  /// response.
  ///
  /// [serviceFilter_resourceType] - Optional. The exact value to match against
  /// \[`ServiceContext.resource_type`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type).
  ///
  /// [serviceFilter_service] - Optional. The exact value to match against
  /// \[`ServiceContext.service`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service).
  ///
  /// [serviceFilter_version] - Optional. The exact value to match against
  /// \[`ServiceContext.version`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version).
  ///
  /// [timeRange_period] - Restricts the query to the specified time range.
  /// Possible string values are:
  /// - "PERIOD_UNSPECIFIED" : Do not use.
  /// - "PERIOD_1_HOUR" : Retrieve data for the last hour. Recommended minimum
  /// timed count duration: 1 min.
  /// - "PERIOD_6_HOURS" : Retrieve data for the last 6 hours. Recommended
  /// minimum timed count duration: 10 min.
  /// - "PERIOD_1_DAY" : Retrieve data for the last day. Recommended minimum
  /// timed count duration: 1 hour.
  /// - "PERIOD_1_WEEK" : Retrieve data for the last week. Recommended minimum
  /// timed count duration: 6 hours.
  /// - "PERIOD_30_DAYS" : Retrieve data for the last 30 days. Recommended
  /// minimum timed count duration: 1 day.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEventsResponse> list(
    core.String projectName, {
    core.String? groupId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? serviceFilter_resourceType,
    core.String? serviceFilter_service,
    core.String? serviceFilter_version,
    core.String? timeRange_period,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupId != null) 'groupId': [groupId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (serviceFilter_resourceType != null)
        'serviceFilter.resourceType': [serviceFilter_resourceType],
      if (serviceFilter_service != null)
        'serviceFilter.service': [serviceFilter_service],
      if (serviceFilter_version != null)
        'serviceFilter.version': [serviceFilter_version],
      if (timeRange_period != null) 'timeRange.period': [timeRange_period],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$projectName') + '/events';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGroupStatsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGroupStatsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the specified groups.
  ///
  /// Request parameters:
  ///
  /// [projectName] - Required. The resource name of the Google Cloud Platform
  /// project. Written as `projects/{projectID}` or `projects/{projectNumber}`,
  /// where `{projectID}` and `{projectNumber}` can be found in the
  /// [Google Cloud console](https://support.google.com/cloud/answer/6158840).
  /// It may also include a location, such as
  /// `projects/{projectID}/locations/{location}` where `{location}` is a cloud
  /// region. Examples: `projects/my-project-123`, `projects/5551234`,
  /// `projects/my-project-123/locations/us-central1`,
  /// `projects/5551234/locations/us-central1`. For a list of supported
  /// locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified. Use `-` as a wildcard to request
  /// group stats from all regions.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [alignment] - Optional. The alignment of the timed counts to be returned.
  /// Default is `ALIGNMENT_EQUAL_AT_END`.
  /// Possible string values are:
  /// - "ERROR_COUNT_ALIGNMENT_UNSPECIFIED" : No alignment specified.
  /// - "ALIGNMENT_EQUAL_ROUNDED" : The time periods shall be consecutive, have
  /// width equal to the requested duration, and be aligned at the
  /// alignment_time provided in the request. The alignment_time does not have
  /// to be inside the query period but even if it is outside, only time periods
  /// are returned which overlap with the query period. A rounded alignment will
  /// typically result in a different size of the first or the last time period.
  /// - "ALIGNMENT_EQUAL_AT_END" : The time periods shall be consecutive, have
  /// width equal to the requested duration, and be aligned at the end of the
  /// requested time period. This can result in a different size of the first
  /// time period.
  ///
  /// [alignmentTime] - Optional. Time where the timed counts shall be aligned
  /// if rounded alignment is chosen. Default is 00:00 UTC.
  ///
  /// [groupId] - Optional. List all ErrorGroupStats with these IDs. The
  /// `group_id` is a unique identifier for a particular error group. The
  /// identifier is derived from key parts of the error-log content and is
  /// treated as Service Data. For information about how Service Data is
  /// handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  ///
  /// [order] - Optional. The sort order in which the results are returned.
  /// Default is `COUNT_DESC`.
  /// Possible string values are:
  /// - "GROUP_ORDER_UNSPECIFIED" : No group order specified.
  /// - "COUNT_DESC" : Total count of errors in the given time window in
  /// descending order.
  /// - "LAST_SEEN_DESC" : Timestamp when the group was last seen in the given
  /// time window in descending order.
  /// - "CREATED_DESC" : Timestamp when the group was created in descending
  /// order.
  /// - "AFFECTED_USERS_DESC" : Number of affected users in the given time
  /// window in descending order.
  ///
  /// [pageSize] - Optional. The maximum number of results to return per
  /// response. Default is 20.
  ///
  /// [pageToken] - Optional. A next_page_token provided by a previous response.
  /// To view additional results, pass this token along with the identical query
  /// parameters as the first request.
  ///
  /// [serviceFilter_resourceType] - Optional. The exact value to match against
  /// \[`ServiceContext.resource_type`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type).
  ///
  /// [serviceFilter_service] - Optional. The exact value to match against
  /// \[`ServiceContext.service`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service).
  ///
  /// [serviceFilter_version] - Optional. The exact value to match against
  /// \[`ServiceContext.version`\](/error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version).
  ///
  /// [timeRange_period] - Restricts the query to the specified time range.
  /// Possible string values are:
  /// - "PERIOD_UNSPECIFIED" : Do not use.
  /// - "PERIOD_1_HOUR" : Retrieve data for the last hour. Recommended minimum
  /// timed count duration: 1 min.
  /// - "PERIOD_6_HOURS" : Retrieve data for the last 6 hours. Recommended
  /// minimum timed count duration: 10 min.
  /// - "PERIOD_1_DAY" : Retrieve data for the last day. Recommended minimum
  /// timed count duration: 1 hour.
  /// - "PERIOD_1_WEEK" : Retrieve data for the last week. Recommended minimum
  /// timed count duration: 6 hours.
  /// - "PERIOD_30_DAYS" : Retrieve data for the last 30 days. Recommended
  /// minimum timed count duration: 1 day.
  ///
  /// [timedCountDuration] - Optional. The preferred duration for a single
  /// returned TimedCount. If not set, no timed counts are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupStatsResponse> list(
    core.String projectName, {
    core.String? alignment,
    core.String? alignmentTime,
    core.List<core.String>? groupId,
    core.String? order,
    core.int? pageSize,
    core.String? pageToken,
    core.String? serviceFilter_resourceType,
    core.String? serviceFilter_service,
    core.String? serviceFilter_version,
    core.String? timeRange_period,
    core.String? timedCountDuration,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (alignment != null) 'alignment': [alignment],
      if (alignmentTime != null) 'alignmentTime': [alignmentTime],
      if (groupId != null) 'groupId': groupId,
      if (order != null) 'order': [order],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (serviceFilter_resourceType != null)
        'serviceFilter.resourceType': [serviceFilter_resourceType],
      if (serviceFilter_service != null)
        'serviceFilter.service': [serviceFilter_service],
      if (serviceFilter_version != null)
        'serviceFilter.version': [serviceFilter_version],
      if (timeRange_period != null) 'timeRange.period': [timeRange_period],
      if (timedCountDuration != null)
        'timedCountDuration': [timedCountDuration],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$projectName') + '/groupStats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupStatsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the specified group.
  ///
  /// Request parameters:
  ///
  /// [groupName] - Required. The group resource name. Written as either
  /// `projects/{projectID}/groups/{group_id}` or
  /// `projects/{projectID}/locations/{location}/groups/{group_id}`. Call
  /// groupStats.list to return a list of groups belonging to this project.
  /// Examples: `projects/my-project-123/groups/my-group`,
  /// `projects/my-project-123/locations/global/groups/my-group` In the group
  /// resource name, the `group_id` is a unique identifier for a particular
  /// error group. The identifier is derived from key parts of the error-log
  /// content and is treated as Service Data. For information about how Service
  /// Data is handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  /// For a list of supported locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ErrorGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ErrorGroup> get(
    core.String groupName, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$groupName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ErrorGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replace the data for the specified group.
  ///
  /// Fails if the group does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The group resource name. Written as
  /// `projects/{projectID}/groups/{group_id}` or
  /// `projects/{projectID}/locations/{location}/groups/{group_id}` Examples:
  /// `projects/my-project-123/groups/my-group`,
  /// `projects/my-project-123/locations/us-central1/groups/my-group` In the
  /// group resource name, the `group_id` is a unique identifier for a
  /// particular error group. The identifier is derived from key parts of the
  /// error-log content and is treated as Service Data. For information about
  /// how Service Data is handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  /// For a list of supported locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ErrorGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ErrorGroup> update(
    ErrorGroup request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ErrorGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Response message for deleting error events.
typedef DeleteEventsResponse = $Empty;

/// A description of the context in which an error occurred.
///
/// This data should be provided by the application when reporting an error,
/// unless the error report has been generated automatically from Google App
/// Engine logs.
class ErrorContext {
  /// The HTTP request which was processed when the error was triggered.
  HttpRequestContext? httpRequest;

  /// The location in the source code where the decision was made to report the
  /// error, usually the place where it was logged.
  ///
  /// For a logged exception this would be the source line where the exception
  /// is logged, usually close to the place where it was caught.
  SourceLocation? reportLocation;

  /// Source code that was used to build the executable which has caused the
  /// given error message.
  core.List<SourceReference>? sourceReferences;

  /// The user who caused or was affected by the crash.
  ///
  /// This can be a user ID, an email address, or an arbitrary token that
  /// uniquely identifies the user. When sending an error report, leave this
  /// field empty if the user was not logged in. In this case the Error
  /// Reporting system will use other data, such as remote IP address, to
  /// distinguish affected users. See `affected_users_count` in
  /// `ErrorGroupStats`.
  core.String? user;

  ErrorContext({
    this.httpRequest,
    this.reportLocation,
    this.sourceReferences,
    this.user,
  });

  ErrorContext.fromJson(core.Map json_)
      : this(
          httpRequest: json_.containsKey('httpRequest')
              ? HttpRequestContext.fromJson(
                  json_['httpRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          reportLocation: json_.containsKey('reportLocation')
              ? SourceLocation.fromJson(json_['reportLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sourceReferences: (json_['sourceReferences'] as core.List?)
              ?.map((value) => SourceReference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          user: json_['user'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpRequest != null) 'httpRequest': httpRequest!,
        if (reportLocation != null) 'reportLocation': reportLocation!,
        if (sourceReferences != null) 'sourceReferences': sourceReferences!,
        if (user != null) 'user': user!,
      };
}

/// An error event which is returned by the Error Reporting system.
class ErrorEvent {
  /// Data about the context in which the error occurred.
  ErrorContext? context;

  /// Time when the event occurred as provided in the error report.
  ///
  /// If the report did not contain a timestamp, the time the error was received
  /// by the Error Reporting system is used.
  core.String? eventTime;

  /// The stack trace that was reported or logged by the service.
  core.String? message;

  /// The `ServiceContext` for which this error was reported.
  ServiceContext? serviceContext;

  ErrorEvent({
    this.context,
    this.eventTime,
    this.message,
    this.serviceContext,
  });

  ErrorEvent.fromJson(core.Map json_)
      : this(
          context: json_.containsKey('context')
              ? ErrorContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          eventTime: json_['eventTime'] as core.String?,
          message: json_['message'] as core.String?,
          serviceContext: json_.containsKey('serviceContext')
              ? ServiceContext.fromJson(json_['serviceContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (message != null) 'message': message!,
        if (serviceContext != null) 'serviceContext': serviceContext!,
      };
}

/// Description of a group of similar error events.
class ErrorGroup {
  /// An opaque identifier of the group.
  ///
  /// This field is assigned by the Error Reporting system and always populated.
  /// In the group resource name, the `group_id` is a unique identifier for a
  /// particular error group. The identifier is derived from key parts of the
  /// error-log content and is treated as Service Data. For information about
  /// how Service Data is handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  core.String? groupId;

  /// The group resource name.
  ///
  /// Written as `projects/{projectID}/groups/{group_id}` or
  /// `projects/{projectID}/locations/{location}/groups/{group_id}` Examples:
  /// `projects/my-project-123/groups/my-group`,
  /// `projects/my-project-123/locations/us-central1/groups/my-group` In the
  /// group resource name, the `group_id` is a unique identifier for a
  /// particular error group. The identifier is derived from key parts of the
  /// error-log content and is treated as Service Data. For information about
  /// how Service Data is handled, see
  /// [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
  /// For a list of supported locations, see
  /// [Supported Regions](https://cloud.google.com/logging/docs/region-support).
  /// `global` is the default when unspecified.
  core.String? name;

  /// Error group's resolution status.
  ///
  /// An unspecified resolution status will be interpreted as OPEN
  /// Possible string values are:
  /// - "RESOLUTION_STATUS_UNSPECIFIED" : Status is unknown. When left
  /// unspecified in requests, it is treated like OPEN.
  /// - "OPEN" : The error group is not being addressed. This is the default for
  /// new groups. It is also used for errors re-occurring after marked RESOLVED.
  /// - "ACKNOWLEDGED" : Error Group manually acknowledged, it can have an issue
  /// link attached.
  /// - "RESOLVED" : Error Group manually resolved, more events for this group
  /// are not expected to occur.
  /// - "MUTED" : The error group is muted and excluded by default on group
  /// stats requests.
  core.String? resolutionStatus;

  /// Associated tracking issues.
  core.List<TrackingIssue>? trackingIssues;

  ErrorGroup({
    this.groupId,
    this.name,
    this.resolutionStatus,
    this.trackingIssues,
  });

  ErrorGroup.fromJson(core.Map json_)
      : this(
          groupId: json_['groupId'] as core.String?,
          name: json_['name'] as core.String?,
          resolutionStatus: json_['resolutionStatus'] as core.String?,
          trackingIssues: (json_['trackingIssues'] as core.List?)
              ?.map((value) => TrackingIssue.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupId != null) 'groupId': groupId!,
        if (name != null) 'name': name!,
        if (resolutionStatus != null) 'resolutionStatus': resolutionStatus!,
        if (trackingIssues != null) 'trackingIssues': trackingIssues!,
      };
}

/// Data extracted for a specific group based on certain filter criteria, such
/// as a given time period and/or service filter.
class ErrorGroupStats {
  /// Service contexts with a non-zero error count for the given filter
  /// criteria.
  ///
  /// This list can be truncated if multiple services are affected. Refer to
  /// `num_affected_services` for the total count.
  core.List<ServiceContext>? affectedServices;

  /// Approximate number of affected users in the given group that match the
  /// filter criteria.
  ///
  /// Users are distinguished by data in the ErrorContext of the individual
  /// error events, such as their login name or their remote IP address in case
  /// of HTTP requests. The number of affected users can be zero even if the
  /// number of errors is non-zero if no data was provided from which the
  /// affected user could be deduced. Users are counted based on data in the
  /// request context that was provided in the error report. If more users are
  /// implicitly affected, such as due to a crash of the whole service, this is
  /// not reflected here.
  core.String? affectedUsersCount;

  /// Approximate total number of events in the given group that match the
  /// filter criteria.
  core.String? count;

  /// Approximate first occurrence that was ever seen for this group and which
  /// matches the given filter criteria, ignoring the time_range that was
  /// specified in the request.
  core.String? firstSeenTime;

  /// Group data that is independent of the filter criteria.
  ErrorGroup? group;

  /// Approximate last occurrence that was ever seen for this group and which
  /// matches the given filter criteria, ignoring the time_range that was
  /// specified in the request.
  core.String? lastSeenTime;

  /// The total number of services with a non-zero error count for the given
  /// filter criteria.
  core.int? numAffectedServices;

  /// An arbitrary event that is chosen as representative for the whole group.
  ///
  /// The representative event is intended to be used as a quick preview for the
  /// whole group. Events in the group are usually sufficiently similar to each
  /// other such that showing an arbitrary representative provides insight into
  /// the characteristics of the group as a whole.
  ErrorEvent? representative;

  /// Approximate number of occurrences over time.
  ///
  /// Timed counts returned by ListGroups are guaranteed to be: - Inside the
  /// requested time interval - Non-overlapping, and - Ordered by ascending
  /// time.
  core.List<TimedCount>? timedCounts;

  ErrorGroupStats({
    this.affectedServices,
    this.affectedUsersCount,
    this.count,
    this.firstSeenTime,
    this.group,
    this.lastSeenTime,
    this.numAffectedServices,
    this.representative,
    this.timedCounts,
  });

  ErrorGroupStats.fromJson(core.Map json_)
      : this(
          affectedServices: (json_['affectedServices'] as core.List?)
              ?.map((value) => ServiceContext.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          affectedUsersCount: json_['affectedUsersCount'] as core.String?,
          count: json_['count'] as core.String?,
          firstSeenTime: json_['firstSeenTime'] as core.String?,
          group: json_.containsKey('group')
              ? ErrorGroup.fromJson(
                  json_['group'] as core.Map<core.String, core.dynamic>)
              : null,
          lastSeenTime: json_['lastSeenTime'] as core.String?,
          numAffectedServices: json_['numAffectedServices'] as core.int?,
          representative: json_.containsKey('representative')
              ? ErrorEvent.fromJson(json_['representative']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timedCounts: (json_['timedCounts'] as core.List?)
              ?.map((value) => TimedCount.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (affectedServices != null) 'affectedServices': affectedServices!,
        if (affectedUsersCount != null)
          'affectedUsersCount': affectedUsersCount!,
        if (count != null) 'count': count!,
        if (firstSeenTime != null) 'firstSeenTime': firstSeenTime!,
        if (group != null) 'group': group!,
        if (lastSeenTime != null) 'lastSeenTime': lastSeenTime!,
        if (numAffectedServices != null)
          'numAffectedServices': numAffectedServices!,
        if (representative != null) 'representative': representative!,
        if (timedCounts != null) 'timedCounts': timedCounts!,
      };
}

/// HTTP request data that is related to a reported error.
///
/// This data should be provided by the application when reporting an error,
/// unless the error report has been generated automatically from Google App
/// Engine logs.
class HttpRequestContext {
  /// The type of HTTP request, such as `GET`, `POST`, etc.
  core.String? method;

  /// The referrer information that is provided with the request.
  core.String? referrer;

  /// The IP address from which the request originated.
  ///
  /// This can be IPv4, IPv6, or a token which is derived from the IP address,
  /// depending on the data that has been provided in the error report.
  core.String? remoteIp;

  /// The HTTP response status code for the request.
  core.int? responseStatusCode;

  /// The URL of the request.
  core.String? url;

  /// The user agent information that is provided with the request.
  core.String? userAgent;

  HttpRequestContext({
    this.method,
    this.referrer,
    this.remoteIp,
    this.responseStatusCode,
    this.url,
    this.userAgent,
  });

  HttpRequestContext.fromJson(core.Map json_)
      : this(
          method: json_['method'] as core.String?,
          referrer: json_['referrer'] as core.String?,
          remoteIp: json_['remoteIp'] as core.String?,
          responseStatusCode: json_['responseStatusCode'] as core.int?,
          url: json_['url'] as core.String?,
          userAgent: json_['userAgent'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (method != null) 'method': method!,
        if (referrer != null) 'referrer': referrer!,
        if (remoteIp != null) 'remoteIp': remoteIp!,
        if (responseStatusCode != null)
          'responseStatusCode': responseStatusCode!,
        if (url != null) 'url': url!,
        if (userAgent != null) 'userAgent': userAgent!,
      };
}

/// Contains a set of requested error events.
class ListEventsResponse {
  /// The error events which match the given request.
  core.List<ErrorEvent>? errorEvents;

  /// If non-empty, more results are available.
  ///
  /// Pass this token, along with the same query parameters as the first
  /// request, to view the next page of results.
  core.String? nextPageToken;

  /// The timestamp specifies the start time to which the request was
  /// restricted.
  core.String? timeRangeBegin;

  ListEventsResponse({
    this.errorEvents,
    this.nextPageToken,
    this.timeRangeBegin,
  });

  ListEventsResponse.fromJson(core.Map json_)
      : this(
          errorEvents: (json_['errorEvents'] as core.List?)
              ?.map((value) => ErrorEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          timeRangeBegin: json_['timeRangeBegin'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorEvents != null) 'errorEvents': errorEvents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (timeRangeBegin != null) 'timeRangeBegin': timeRangeBegin!,
      };
}

/// Contains a set of requested error group stats.
class ListGroupStatsResponse {
  /// The error group stats which match the given request.
  core.List<ErrorGroupStats>? errorGroupStats;

  /// If non-empty, more results are available.
  ///
  /// Pass this token, along with the same query parameters as the first
  /// request, to view the next page of results.
  core.String? nextPageToken;

  /// The timestamp specifies the start time to which the request was
  /// restricted.
  ///
  /// The start time is set based on the requested time range. It may be
  /// adjusted to a later time if a project has exceeded the storage quota and
  /// older data has been deleted.
  core.String? timeRangeBegin;

  ListGroupStatsResponse({
    this.errorGroupStats,
    this.nextPageToken,
    this.timeRangeBegin,
  });

  ListGroupStatsResponse.fromJson(core.Map json_)
      : this(
          errorGroupStats: (json_['errorGroupStats'] as core.List?)
              ?.map((value) => ErrorGroupStats.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          timeRangeBegin: json_['timeRangeBegin'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorGroupStats != null) 'errorGroupStats': errorGroupStats!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (timeRangeBegin != null) 'timeRangeBegin': timeRangeBegin!,
      };
}

/// Response for reporting an individual error event.
///
/// Data may be added to this message in the future.
typedef ReportErrorEventResponse = $Empty;

/// An error event which is reported to the Error Reporting system.
class ReportedErrorEvent {
  /// A description of the context in which the error occurred.
  ///
  /// Optional.
  ErrorContext? context;

  /// Time when the event occurred.
  ///
  /// If not provided, the time when the event was received by the Error
  /// Reporting system is used. If provided, the time must not exceed the
  /// [logs retention period](https://cloud.google.com/logging/quotas#logs_retention_periods)
  /// in the past, or be more than 24 hours in the future. If an invalid time is
  /// provided, then an error is returned.
  ///
  /// Optional.
  core.String? eventTime;

  /// The error message.
  ///
  /// If no `context.reportLocation` is provided, the message must contain a
  /// header (typically consisting of the exception type name and an error
  /// message) and an exception stack trace in one of the supported programming
  /// languages and formats. Supported languages are Java, Python, JavaScript,
  /// Ruby, C#, PHP, and Go. Supported stack trace formats are: * **Java**: Must
  /// be the return value of
  /// \[`Throwable.printStackTrace()`\](https://docs.oracle.com/javase/7/docs/api/java/lang/Throwable.html#printStackTrace%28%29).
  /// * **Python**: Must be the return value of
  /// \[`traceback.format_exc()`\](https://docs.python.org/2/library/traceback.html#traceback.format_exc).
  /// * **JavaScript**: Must be the value of
  /// \[`error.stack`\](https://github.com/v8/v8/wiki/Stack-Trace-API) as
  /// returned by V8. * **Ruby**: Must contain frames returned by
  /// \[`Exception.backtrace`\](https://ruby-doc.org/core-2.2.0/Exception.html#method-i-backtrace).
  /// * **C#**: Must be the return value of
  /// \[`Exception.ToString()`\](https://msdn.microsoft.com/en-us/library/system.exception.tostring.aspx).
  /// * **PHP**: Must be prefixed with `"PHP (Notice|Parse error|Fatal
  /// error|Warning): "` and contain the result of
  /// \[`(string)$exception`\](https://php.net/manual/en/exception.tostring.php).
  /// * **Go**: Must be the return value of
  /// \[`debug.Stack()`\](https://pkg.go.dev/runtime/debug#Stack).
  ///
  /// Required.
  core.String? message;

  /// The service context in which this error has occurred.
  ///
  /// Required.
  ServiceContext? serviceContext;

  ReportedErrorEvent({
    this.context,
    this.eventTime,
    this.message,
    this.serviceContext,
  });

  ReportedErrorEvent.fromJson(core.Map json_)
      : this(
          context: json_.containsKey('context')
              ? ErrorContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          eventTime: json_['eventTime'] as core.String?,
          message: json_['message'] as core.String?,
          serviceContext: json_.containsKey('serviceContext')
              ? ServiceContext.fromJson(json_['serviceContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (message != null) 'message': message!,
        if (serviceContext != null) 'serviceContext': serviceContext!,
      };
}

/// Describes a running service that sends errors.
///
/// Its version changes over time and multiple versions can run in parallel.
class ServiceContext {
  /// Type of the MonitoredResource.
  ///
  /// List of possible values: https://cloud.google.com/monitoring/api/resources
  /// Value is set automatically for incoming errors and must not be set when
  /// reporting errors.
  core.String? resourceType;

  /// An identifier of the service, such as the name of the executable, job, or
  /// Google App Engine service name.
  ///
  /// This field is expected to have a low number of values that are relatively
  /// stable over time, as opposed to `version`, which can be changed whenever
  /// new code is deployed. Contains the service name for error reports
  /// extracted from Google App Engine logs or `default` if the App Engine
  /// default service is used.
  core.String? service;

  /// Represents the source code version that the developer provided, which
  /// could represent a version label or a Git SHA-1 hash, for example.
  ///
  /// For App Engine standard environment, the version is set to the version of
  /// the app.
  core.String? version;

  ServiceContext({
    this.resourceType,
    this.service,
    this.version,
  });

  ServiceContext.fromJson(core.Map json_)
      : this(
          resourceType: json_['resourceType'] as core.String?,
          service: json_['service'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceType != null) 'resourceType': resourceType!,
        if (service != null) 'service': service!,
        if (version != null) 'version': version!,
      };
}

/// Indicates a location in the source code of the service for which errors are
/// reported.
///
/// `functionName` must be provided by the application when reporting an error,
/// unless the error report contains a `message` with a supported exception
/// stack trace. All fields are optional for the later case.
class SourceLocation {
  /// The source code filename, which can include a truncated relative path, or
  /// a full path from a production machine.
  core.String? filePath;

  /// Human-readable name of a function or method.
  ///
  /// The value can include optional context like the class or package name. For
  /// example, `my.package.MyClass.method` in case of Java.
  core.String? functionName;

  /// 1-based.
  ///
  /// 0 indicates that the line number is unknown.
  core.int? lineNumber;

  SourceLocation({
    this.filePath,
    this.functionName,
    this.lineNumber,
  });

  SourceLocation.fromJson(core.Map json_)
      : this(
          filePath: json_['filePath'] as core.String?,
          functionName: json_['functionName'] as core.String?,
          lineNumber: json_['lineNumber'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filePath != null) 'filePath': filePath!,
        if (functionName != null) 'functionName': functionName!,
        if (lineNumber != null) 'lineNumber': lineNumber!,
      };
}

/// A reference to a particular snapshot of the source tree used to build and
/// deploy an application.
class SourceReference {
  /// A URI string identifying the repository.
  ///
  /// Example: "https://github.com/GoogleCloudPlatform/kubernetes.git"
  ///
  /// Optional.
  core.String? repository;

  /// The canonical and persistent identifier of the deployed revision.
  ///
  /// Example (git): "0035781c50ec7aa23385dc841529ce8a4b70db1b"
  core.String? revisionId;

  SourceReference({
    this.repository,
    this.revisionId,
  });

  SourceReference.fromJson(core.Map json_)
      : this(
          repository: json_['repository'] as core.String?,
          revisionId: json_['revisionId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (repository != null) 'repository': repository!,
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// The number of errors in a given time period.
///
/// All numbers are approximate since the error events are sampled before
/// counting them.
class TimedCount {
  /// Approximate number of occurrences in the given time period.
  core.String? count;

  /// End of the time period to which `count` refers (excluded).
  core.String? endTime;

  /// Start of the time period to which `count` refers (included).
  core.String? startTime;

  TimedCount({
    this.count,
    this.endTime,
    this.startTime,
  });

  TimedCount.fromJson(core.Map json_)
      : this(
          count: json_['count'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          startTime: json_['startTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Information related to tracking the progress on resolving the error.
class TrackingIssue {
  /// A URL pointing to a related entry in an issue tracking system.
  ///
  /// Example: `https://github.com/user/project/issues/4`
  core.String? url;

  TrackingIssue({
    this.url,
  });

  TrackingIssue.fromJson(core.Map json_)
      : this(
          url: json_['url'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}
