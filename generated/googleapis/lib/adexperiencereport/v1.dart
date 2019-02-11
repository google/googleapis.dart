// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.adexperiencereport.v1;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client adexperiencereport/v1';

/// Views Ad Experience Report data, and gets a list of sites that have a
/// significant number of annoying ads.
class AdexperiencereportApi {
  /// Test scope for access to the Zoo service
  static const XapiZooScope = "https://www.googleapis.com/auth/xapi.zoo";

  final commons.ApiRequester _requester;

  SitesResourceApi get sites => new SitesResourceApi(_requester);
  ViolatingSitesResourceApi get violatingSites =>
      new ViolatingSitesResourceApi(_requester);

  AdexperiencereportApi(http.Client client,
      {core.String rootUrl = "https://adexperiencereport.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class SitesResourceApi {
  final commons.ApiRequester _requester;

  SitesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a summary of the ad experience rating of a site.
  ///
  /// Request parameters:
  ///
  /// [name] - The required site name. It should be the site property whose ad
  /// experiences
  /// may have been reviewed, and it should be URL-encoded. For example,
  /// sites/https%3A%2F%2Fwww.google.com. The server will return an error of
  /// BAD_REQUEST if this field is not filled in. Note that if the site property
  /// is not yet verified in Search Console, the reportUrl field returned by the
  /// API will lead to the verification page, prompting the user to go through
  /// that process before they can gain access to the Ad Experience Report.
  /// Value must have pattern "^sites/[^/]+$".
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
  async.Future<SiteSummaryResponse> get(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SiteSummaryResponse.fromJson(data));
  }
}

class ViolatingSitesResourceApi {
  final commons.ApiRequester _requester;

  ViolatingSitesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists sites with Ad Experience Report statuses of "Failing" or "Warning".
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
  async.Future<ViolatingSitesResponse> list({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/violatingSites';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ViolatingSitesResponse.fromJson(data));
  }
}

/// Summary of the ad experience rating of a site for a specific platform.
class PlatformSummary {
  /// The status of the site reviewed for the Better Ads Standards.
  /// Possible string values are:
  /// - "UNKNOWN" : Not reviewed.
  /// - "PASSING" : Passing.
  /// - "WARNING" : Warning.
  /// - "FAILING" : Failing.
  core.String betterAdsStatus;

  /// The date on which ad filtering begins.
  core.String enforcementTime;

  /// The ad filtering status of the site.
  /// Possible string values are:
  /// - "UNKNOWN" : N/A.
  /// - "ON" : Ad filtering is on.
  /// - "OFF" : Ad filtering is off.
  /// - "PAUSED" : Ad filtering is paused.
  /// - "PENDING" : Ad filtering is pending.
  core.String filterStatus;

  /// The last time that the site changed status.
  core.String lastChangeTime;

  /// The assigned regions for the site and platform.
  core.List<core.String> region;

  /// A link that leads to a full ad experience report.
  core.String reportUrl;

  /// Whether the site is currently under review.
  core.bool underReview;

  PlatformSummary();

  PlatformSummary.fromJson(core.Map _json) {
    if (_json.containsKey("betterAdsStatus")) {
      betterAdsStatus = _json["betterAdsStatus"];
    }
    if (_json.containsKey("enforcementTime")) {
      enforcementTime = _json["enforcementTime"];
    }
    if (_json.containsKey("filterStatus")) {
      filterStatus = _json["filterStatus"];
    }
    if (_json.containsKey("lastChangeTime")) {
      lastChangeTime = _json["lastChangeTime"];
    }
    if (_json.containsKey("region")) {
      region = (_json["region"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("reportUrl")) {
      reportUrl = _json["reportUrl"];
    }
    if (_json.containsKey("underReview")) {
      underReview = _json["underReview"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (betterAdsStatus != null) {
      _json["betterAdsStatus"] = betterAdsStatus;
    }
    if (enforcementTime != null) {
      _json["enforcementTime"] = enforcementTime;
    }
    if (filterStatus != null) {
      _json["filterStatus"] = filterStatus;
    }
    if (lastChangeTime != null) {
      _json["lastChangeTime"] = lastChangeTime;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (reportUrl != null) {
      _json["reportUrl"] = reportUrl;
    }
    if (underReview != null) {
      _json["underReview"] = underReview;
    }
    return _json;
  }
}

/// Response message for GetSiteSummary.
class SiteSummaryResponse {
  /// Summary for the desktop review of the site.
  PlatformSummary desktopSummary;

  /// Summary for the mobile review of the site.
  PlatformSummary mobileSummary;

  /// The name of the site reviewed.
  core.String reviewedSite;

  SiteSummaryResponse();

  SiteSummaryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("desktopSummary")) {
      desktopSummary = new PlatformSummary.fromJson(_json["desktopSummary"]);
    }
    if (_json.containsKey("mobileSummary")) {
      mobileSummary = new PlatformSummary.fromJson(_json["mobileSummary"]);
    }
    if (_json.containsKey("reviewedSite")) {
      reviewedSite = _json["reviewedSite"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (desktopSummary != null) {
      _json["desktopSummary"] = (desktopSummary).toJson();
    }
    if (mobileSummary != null) {
      _json["mobileSummary"] = (mobileSummary).toJson();
    }
    if (reviewedSite != null) {
      _json["reviewedSite"] = reviewedSite;
    }
    return _json;
  }
}

/// Response message for ListViolatingSites.
class ViolatingSitesResponse {
  /// A list of summaries of violating sites.
  core.List<SiteSummaryResponse> violatingSites;

  ViolatingSitesResponse();

  ViolatingSitesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("violatingSites")) {
      violatingSites = (_json["violatingSites"] as core.List)
          .map<SiteSummaryResponse>(
              (value) => new SiteSummaryResponse.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (violatingSites != null) {
      _json["violatingSites"] =
          violatingSites.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
