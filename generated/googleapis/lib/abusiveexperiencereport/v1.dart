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

/// Abusive Experience Report API - v1
///
/// Views Abusive Experience Report data, and gets a list of sites that have a
/// significant number of abusive experiences.
///
/// For more information, see
/// <https://developers.google.com/abusive-experience-report/>
///
/// Create an instance of [AbusiveExperienceReportApi] to access these
/// resources:
///
/// - [SitesResource]
/// - [ViolatingSitesResource]
library abusiveexperiencereport.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Views Abusive Experience Report data, and gets a list of sites that have a
/// significant number of abusive experiences.
class AbusiveExperienceReportApi {
  final commons.ApiRequester _requester;

  SitesResource get sites => SitesResource(_requester);
  ViolatingSitesResource get violatingSites =>
      ViolatingSitesResource(_requester);

  AbusiveExperienceReportApi(http.Client client,
      {core.String rootUrl = 'https://abusiveexperiencereport.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class SitesResource {
  final commons.ApiRequester _requester;

  SitesResource(commons.ApiRequester client) : _requester = client;

  /// Gets a site's Abusive Experience Report summary.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the site whose summary to get, e.g.
  /// `sites/http%3A%2F%2Fwww.google.com%2F`. Format: `sites/{site}`
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteSummaryResponse> get(
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
    return SiteSummaryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ViolatingSitesResource {
  final commons.ApiRequester _requester;

  ViolatingSitesResource(commons.ApiRequester client) : _requester = client;

  /// Lists sites that are failing in the Abusive Experience Report.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ViolatingSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ViolatingSitesResponse> list({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/violatingSites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ViolatingSitesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Response message for GetSiteSummary.
class SiteSummaryResponse {
  /// The site's Abusive Experience Report status.
  /// Possible string values are:
  /// - "UNKNOWN" : Not reviewed.
  /// - "PASSING" : Passing.
  /// - "FAILING" : Failing.
  core.String? abusiveStatus;

  /// The time at which
  /// [enforcement](https://support.google.com/webtools/answer/7538608) against
  /// the site began or will begin.
  ///
  /// Not set when the filter_status is OFF.
  core.String? enforcementTime;

  /// The site's
  /// [enforcement status](https://support.google.com/webtools/answer/7538608).
  /// Possible string values are:
  /// - "UNKNOWN" : N/A.
  /// - "ON" : Enforcement is on.
  /// - "OFF" : Enforcement is off.
  /// - "PAUSED" : Enforcement is paused.
  /// - "PENDING" : Enforcement is pending.
  core.String? filterStatus;

  /// The time at which the site's status last changed.
  core.String? lastChangeTime;

  /// A link to the full Abusive Experience Report for the site.
  ///
  /// Not set in ViolatingSitesResponse. Note that you must complete the
  /// [Search Console verification process](https://support.google.com/webmasters/answer/9008080)
  /// for the site before you can access the full report.
  core.String? reportUrl;

  /// The name of the reviewed site, e.g. `google.com`.
  core.String? reviewedSite;

  /// Whether the site is currently under review.
  core.bool? underReview;

  SiteSummaryResponse({
    this.abusiveStatus,
    this.enforcementTime,
    this.filterStatus,
    this.lastChangeTime,
    this.reportUrl,
    this.reviewedSite,
    this.underReview,
  });

  SiteSummaryResponse.fromJson(core.Map json_)
      : this(
          abusiveStatus: json_.containsKey('abusiveStatus')
              ? json_['abusiveStatus'] as core.String
              : null,
          enforcementTime: json_.containsKey('enforcementTime')
              ? json_['enforcementTime'] as core.String
              : null,
          filterStatus: json_.containsKey('filterStatus')
              ? json_['filterStatus'] as core.String
              : null,
          lastChangeTime: json_.containsKey('lastChangeTime')
              ? json_['lastChangeTime'] as core.String
              : null,
          reportUrl: json_.containsKey('reportUrl')
              ? json_['reportUrl'] as core.String
              : null,
          reviewedSite: json_.containsKey('reviewedSite')
              ? json_['reviewedSite'] as core.String
              : null,
          underReview: json_.containsKey('underReview')
              ? json_['underReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abusiveStatus != null) 'abusiveStatus': abusiveStatus!,
        if (enforcementTime != null) 'enforcementTime': enforcementTime!,
        if (filterStatus != null) 'filterStatus': filterStatus!,
        if (lastChangeTime != null) 'lastChangeTime': lastChangeTime!,
        if (reportUrl != null) 'reportUrl': reportUrl!,
        if (reviewedSite != null) 'reviewedSite': reviewedSite!,
        if (underReview != null) 'underReview': underReview!,
      };
}

/// Response message for ListViolatingSites.
class ViolatingSitesResponse {
  /// The list of violating sites.
  core.List<SiteSummaryResponse>? violatingSites;

  ViolatingSitesResponse({
    this.violatingSites,
  });

  ViolatingSitesResponse.fromJson(core.Map json_)
      : this(
          violatingSites: json_.containsKey('violatingSites')
              ? (json_['violatingSites'] as core.List)
                  .map((value) => SiteSummaryResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (violatingSites != null) 'violatingSites': violatingSites!,
      };
}
