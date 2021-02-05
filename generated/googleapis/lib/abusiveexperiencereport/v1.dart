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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
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
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SiteSummaryResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/violatingSites';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ViolatingSitesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Response message for GetSiteSummary.
class SiteSummaryResponse {
  /// The site's Abusive Experience Report status.
  /// Possible string values are:
  /// - "UNKNOWN" : Not reviewed.
  /// - "PASSING" : Passing.
  /// - "FAILING" : Failing.
  core.String abusiveStatus;

  /// The time at which
  /// [enforcement](https://support.google.com/webtools/answer/7538608) against
  /// the site began or will begin.
  ///
  /// Not set when the filter_status is OFF.
  core.String enforcementTime;

  /// The site's
  /// [enforcement status](https://support.google.com/webtools/answer/7538608).
  /// Possible string values are:
  /// - "UNKNOWN" : N/A.
  /// - "ON" : Enforcement is on.
  /// - "OFF" : Enforcement is off.
  /// - "PAUSED" : Enforcement is paused.
  /// - "PENDING" : Enforcement is pending.
  core.String filterStatus;

  /// The time at which the site's status last changed.
  core.String lastChangeTime;

  /// A link to the full Abusive Experience Report for the site.
  ///
  /// Not set in ViolatingSitesResponse. Note that you must complete the
  /// [Search Console verification process](https://support.google.com/webmasters/answer/9008080)
  /// for the site before you can access the full report.
  core.String reportUrl;

  /// The name of the reviewed site, e.g. `google.com`.
  core.String reviewedSite;

  /// Whether the site is currently under review.
  core.bool underReview;

  SiteSummaryResponse();

  SiteSummaryResponse.fromJson(core.Map _json) {
    if (_json.containsKey('abusiveStatus')) {
      abusiveStatus = _json['abusiveStatus'] as core.String;
    }
    if (_json.containsKey('enforcementTime')) {
      enforcementTime = _json['enforcementTime'] as core.String;
    }
    if (_json.containsKey('filterStatus')) {
      filterStatus = _json['filterStatus'] as core.String;
    }
    if (_json.containsKey('lastChangeTime')) {
      lastChangeTime = _json['lastChangeTime'] as core.String;
    }
    if (_json.containsKey('reportUrl')) {
      reportUrl = _json['reportUrl'] as core.String;
    }
    if (_json.containsKey('reviewedSite')) {
      reviewedSite = _json['reviewedSite'] as core.String;
    }
    if (_json.containsKey('underReview')) {
      underReview = _json['underReview'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (abusiveStatus != null) {
      _json['abusiveStatus'] = abusiveStatus;
    }
    if (enforcementTime != null) {
      _json['enforcementTime'] = enforcementTime;
    }
    if (filterStatus != null) {
      _json['filterStatus'] = filterStatus;
    }
    if (lastChangeTime != null) {
      _json['lastChangeTime'] = lastChangeTime;
    }
    if (reportUrl != null) {
      _json['reportUrl'] = reportUrl;
    }
    if (reviewedSite != null) {
      _json['reviewedSite'] = reviewedSite;
    }
    if (underReview != null) {
      _json['underReview'] = underReview;
    }
    return _json;
  }
}

/// Response message for ListViolatingSites.
class ViolatingSitesResponse {
  /// The list of violating sites.
  core.List<SiteSummaryResponse> violatingSites;

  ViolatingSitesResponse();

  ViolatingSitesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('violatingSites')) {
      violatingSites = (_json['violatingSites'] as core.List)
          .map<SiteSummaryResponse>((value) => SiteSummaryResponse.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (violatingSites != null) {
      _json['violatingSites'] =
          violatingSites.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}
