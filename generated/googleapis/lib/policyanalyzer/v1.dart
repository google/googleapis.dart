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

/// Policy Analyzer API - v1
///
/// For more information, see <https://www.google.com>
///
/// Create an instance of [PolicyAnalyzerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsActivityTypesResource]
///       - [ProjectsLocationsActivityTypesActivitiesResource]
library policyanalyzer.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class PolicyAnalyzerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  PolicyAnalyzerApi(http.Client client,
      {core.String rootUrl = 'https://policyanalyzer.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsActivityTypesResource get activityTypes =>
      ProjectsLocationsActivityTypesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsActivityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsActivityTypesActivitiesResource get activities =>
      ProjectsLocationsActivityTypesActivitiesResource(_requester);

  ProjectsLocationsActivityTypesResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsActivityTypesActivitiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsActivityTypesActivitiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Queries policy activities on Google Cloud resources.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats:
  /// `projects/[PROJECT_ID|PROJECT_NUMBER]/locations/[LOCATION]/activityTypes/[ACTIVITY_TYPE]`
  /// LOCATION here refers to Google Cloud Locations:
  /// https://cloud.google.com/about/locations/
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/activityTypes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression to restrict the activities
  /// returned. For serviceAccountLastAuthentication activities, supported
  /// filters are: - `activities.full_resource_name {=} [STRING]` -
  /// `activities.fullResourceName {=} [STRING]` where `[STRING]` is the full
  /// resource name of the service account. For
  /// serviceAccountKeyLastAuthentication activities, supported filters are: -
  /// `activities.full_resource_name {=} [STRING]` -
  /// `activities.fullResourceName {=} [STRING]` where `[STRING]` is the full
  /// resource name of the service account key.
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Max limit is 1000. Non-positive values are ignored. The presence
  /// of `nextPageToken` in the response indicates that more results might be
  /// available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. `pageToken` must be the
  /// value of `nextPageToken` from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPolicyanalyzerV1QueryActivityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPolicyanalyzerV1QueryActivityResponse> query(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/activities:query';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudPolicyanalyzerV1QueryActivityResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class GoogleCloudPolicyanalyzerV1Activity {
  /// A struct of custom fields to explain the activity.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? activity;

  /// The type of the activity.
  core.String? activityType;

  /// The full resource name that identifies the resource.
  ///
  /// For examples of full resource names for Google Cloud services, see
  /// https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
  core.String? fullResourceName;

  /// The data observation period to build the activity.
  GoogleCloudPolicyanalyzerV1ObservationPeriod? observationPeriod;

  GoogleCloudPolicyanalyzerV1Activity({
    this.activity,
    this.activityType,
    this.fullResourceName,
    this.observationPeriod,
  });

  GoogleCloudPolicyanalyzerV1Activity.fromJson(core.Map _json)
      : this(
          activity: _json.containsKey('activity')
              ? _json['activity'] as core.Map<core.String, core.dynamic>
              : null,
          activityType: _json.containsKey('activityType')
              ? _json['activityType'] as core.String
              : null,
          fullResourceName: _json.containsKey('fullResourceName')
              ? _json['fullResourceName'] as core.String
              : null,
          observationPeriod: _json.containsKey('observationPeriod')
              ? GoogleCloudPolicyanalyzerV1ObservationPeriod.fromJson(
                  _json['observationPeriod']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activity != null) 'activity': activity!,
        if (activityType != null) 'activityType': activityType!,
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
        if (observationPeriod != null) 'observationPeriod': observationPeriod!,
      };
}

/// Represents data observation period.
class GoogleCloudPolicyanalyzerV1ObservationPeriod {
  /// The observation end time.
  ///
  /// The time in this timestamp is always `07:00:00Z`.
  core.String? endTime;

  /// The observation start time.
  ///
  /// The time in this timestamp is always `07:00:00Z`.
  core.String? startTime;

  GoogleCloudPolicyanalyzerV1ObservationPeriod({
    this.endTime,
    this.startTime,
  });

  GoogleCloudPolicyanalyzerV1ObservationPeriod.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Response to the `QueryActivity` method.
class GoogleCloudPolicyanalyzerV1QueryActivityResponse {
  /// The set of activities that match the filter included in the request.
  core.List<GoogleCloudPolicyanalyzerV1Activity>? activities;

  /// If there might be more results than those appearing in this response, then
  /// `nextPageToken` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `nextPageToken` as `pageToken`.
  core.String? nextPageToken;

  GoogleCloudPolicyanalyzerV1QueryActivityResponse({
    this.activities,
    this.nextPageToken,
  });

  GoogleCloudPolicyanalyzerV1QueryActivityResponse.fromJson(core.Map _json)
      : this(
          activities: _json.containsKey('activities')
              ? (_json['activities'] as core.List)
                  .map((value) => GoogleCloudPolicyanalyzerV1Activity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activities != null) 'activities': activities!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
