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

/// Google Search Console API - v1
///
/// The Search Console API provides access to both Search Console data (verified
/// users only) and to public information on an URL basis (anyone)
///
/// For more information, see
/// <https://developers.google.com/webmaster-tools/search-console-api/>
///
/// Create an instance of [SearchConsoleApi] to access these resources:
///
/// - [SearchanalyticsResource]
/// - [SitemapsResource]
/// - [SitesResource]
/// - [UrlInspectionResource]
///   - [UrlInspectionIndexResource]
/// - [UrlTestingToolsResource]
///   - [UrlTestingToolsMobileFriendlyTestResource]
library searchconsole.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Search Console API provides access to both Search Console data (verified
/// users only) and to public information on an URL basis (anyone)
class SearchConsoleApi {
  /// View and manage Search Console data for your verified sites
  static const webmastersScope = 'https://www.googleapis.com/auth/webmasters';

  /// View Search Console data for your verified sites
  static const webmastersReadonlyScope =
      'https://www.googleapis.com/auth/webmasters.readonly';

  final commons.ApiRequester _requester;

  SearchanalyticsResource get searchanalytics =>
      SearchanalyticsResource(_requester);
  SitemapsResource get sitemaps => SitemapsResource(_requester);
  SitesResource get sites => SitesResource(_requester);
  UrlInspectionResource get urlInspection => UrlInspectionResource(_requester);
  UrlTestingToolsResource get urlTestingTools =>
      UrlTestingToolsResource(_requester);

  SearchConsoleApi(http.Client client,
      {core.String rootUrl = 'https://searchconsole.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class SearchanalyticsResource {
  final commons.ApiRequester _requester;

  SearchanalyticsResource(commons.ApiRequester client) : _requester = client;

  /// Query your data with filters and parameters that you define.
  ///
  /// Returns zero or more rows grouped by the row keys that you define. You
  /// must define a date range of one or more days. When date is one of the
  /// group by values, any days without data are omitted from the result list.
  /// If you need to know which days have data, issue a broad date range query
  /// grouped by date for any metric, and see which day rows are returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// `http://www.example.com/`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchAnalyticsQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAnalyticsQueryResponse> query(
    SearchAnalyticsQueryRequest request,
    core.String siteUrl, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webmasters/v3/sites/' +
        commons.escapeVariable('$siteUrl') +
        '/searchAnalytics/query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchAnalyticsQueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SitemapsResource {
  final commons.ApiRequester _requester;

  SitemapsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a sitemap from the Sitemaps report.
  ///
  /// Does not stop Google from crawling this sitemap or the URLs that were
  /// previously crawled in the deleted sitemap.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// `http://www.example.com/`.
  ///
  /// [feedpath] - The URL of the actual sitemap. For example:
  /// `http://www.example.com/sitemap.xml`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String siteUrl,
    core.String feedpath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webmasters/v3/sites/' +
        commons.escapeVariable('$siteUrl') +
        '/sitemaps/' +
        commons.escapeVariable('$feedpath');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves information about a specific sitemap.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// `http://www.example.com/`.
  ///
  /// [feedpath] - The URL of the actual sitemap. For example:
  /// `http://www.example.com/sitemap.xml`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WmxSitemap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WmxSitemap> get(
    core.String siteUrl,
    core.String feedpath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webmasters/v3/sites/' +
        commons.escapeVariable('$siteUrl') +
        '/sitemaps/' +
        commons.escapeVariable('$feedpath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WmxSitemap.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the \[sitemaps-entries\](/webmaster-tools/v3/sitemaps) submitted for
  /// this site, or included in the sitemap index file (if `sitemapIndex` is
  /// specified in the request).
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// `http://www.example.com/`.
  ///
  /// [sitemapIndex] - A URL of a site's sitemap index. For example:
  /// `http://www.example.com/sitemapindex.xml`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SitemapsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SitemapsListResponse> list(
    core.String siteUrl, {
    core.String? sitemapIndex,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sitemapIndex != null) 'sitemapIndex': [sitemapIndex],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webmasters/v3/sites/' +
        commons.escapeVariable('$siteUrl') +
        '/sitemaps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SitemapsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Submits a sitemap for a site.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// `http://www.example.com/`.
  ///
  /// [feedpath] - The URL of the actual sitemap. For example:
  /// `http://www.example.com/sitemap.xml`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> submit(
    core.String siteUrl,
    core.String feedpath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webmasters/v3/sites/' +
        commons.escapeVariable('$siteUrl') +
        '/sitemaps/' +
        commons.escapeVariable('$feedpath');

    await _requester.request(
      url_,
      'PUT',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class SitesResource {
  final commons.ApiRequester _requester;

  SitesResource(commons.ApiRequester client) : _requester = client;

  ///  Adds a site to the set of the user's sites in Search Console.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The URL of the site to add.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> add(
    core.String siteUrl, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webmasters/v3/sites/' + commons.escapeVariable('$siteUrl');

    await _requester.request(
      url_,
      'PUT',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  ///  Removes a site from the set of the user's Search Console sites.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The URI of the property as defined in Search Console.
  /// **Examples:** `http://www.example.com/` or `sc-domain:example.com`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String siteUrl, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webmasters/v3/sites/' + commons.escapeVariable('$siteUrl');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  ///  Retrieves information about specific site.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The URI of the property as defined in Search Console.
  /// **Examples:** `http://www.example.com/` or `sc-domain:example.com`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WmxSite].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WmxSite> get(
    core.String siteUrl, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webmasters/v3/sites/' + commons.escapeVariable('$siteUrl');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WmxSite.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  ///  Lists the user's Search Console sites.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SitesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SitesListResponse> list({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'webmasters/v3/sites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SitesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UrlInspectionResource {
  final commons.ApiRequester _requester;

  UrlInspectionIndexResource get index =>
      UrlInspectionIndexResource(_requester);

  UrlInspectionResource(commons.ApiRequester client) : _requester = client;
}

class UrlInspectionIndexResource {
  final commons.ApiRequester _requester;

  UrlInspectionIndexResource(commons.ApiRequester client) : _requester = client;

  /// Index inspection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InspectUrlIndexResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InspectUrlIndexResponse> inspect(
    InspectUrlIndexRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/urlInspection/index:inspect';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InspectUrlIndexResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UrlTestingToolsResource {
  final commons.ApiRequester _requester;

  UrlTestingToolsMobileFriendlyTestResource get mobileFriendlyTest =>
      UrlTestingToolsMobileFriendlyTestResource(_requester);

  UrlTestingToolsResource(commons.ApiRequester client) : _requester = client;
}

class UrlTestingToolsMobileFriendlyTestResource {
  final commons.ApiRequester _requester;

  UrlTestingToolsMobileFriendlyTestResource(commons.ApiRequester client)
      : _requester = client;

  /// Runs Mobile-Friendly Test for a given URL.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunMobileFriendlyTestResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunMobileFriendlyTestResponse> run(
    RunMobileFriendlyTestRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/urlTestingTools/mobileFriendlyTest:run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunMobileFriendlyTestResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// AMP inspection result of the live page or the current information from
/// Google's index, depending on whether you requested a live inspection or not.
class AmpInspectionResult {
  /// Index status of the AMP URL.
  /// Possible string values are:
  /// - "VERDICT_UNSPECIFIED" : Unknown verdict.
  /// - "PASS" : Equivalent to "Valid" for the page or item in Search Console.
  /// - "PARTIAL" : Reserved, no longer in use.
  /// - "FAIL" : Equivalent to "Error" or "Invalid" for the page or item in
  /// Search Console.
  /// - "NEUTRAL" : Equivalent to "Excluded" for the page or item in Search
  /// Console.
  core.String? ampIndexStatusVerdict;

  /// URL of the AMP that was inspected.
  ///
  /// If the submitted URL is a desktop page that refers to an AMP version, the
  /// AMP version will be inspected.
  core.String? ampUrl;

  /// Whether or not the page blocks indexing through a noindex rule.
  /// Possible string values are:
  /// - "AMP_INDEXING_STATE_UNSPECIFIED" : Unknown indexing status.
  /// - "AMP_INDEXING_ALLOWED" : Indexing allowed.
  /// - "BLOCKED_DUE_TO_NOINDEX" : Indexing not allowed, 'noindex' detected.
  /// - "BLOCKED_DUE_TO_EXPIRED_UNAVAILABLE_AFTER" : Indexing not allowed,
  /// 'unavailable_after' date expired.
  core.String? indexingState;

  /// A list of zero or more AMP issues found for the inspected URL.
  core.List<AmpIssue>? issues;

  /// Last time this AMP version was crawled by Google.
  ///
  /// Absent if the URL was never crawled successfully.
  core.String? lastCrawlTime;

  /// Whether or not Google could fetch the AMP.
  /// Possible string values are:
  /// - "PAGE_FETCH_STATE_UNSPECIFIED" : Unknown fetch state.
  /// - "SUCCESSFUL" : Successful fetch.
  /// - "SOFT_404" : Soft 404.
  /// - "BLOCKED_ROBOTS_TXT" : Blocked by robots.txt.
  /// - "NOT_FOUND" : Not found (404).
  /// - "ACCESS_DENIED" : Blocked due to unauthorized request (401).
  /// - "SERVER_ERROR" : Server error (5xx).
  /// - "REDIRECT_ERROR" : Redirection error.
  /// - "ACCESS_FORBIDDEN" : Blocked due to access forbidden (403).
  /// - "BLOCKED_4XX" : Blocked due to other 4xx issue (not 403, 404).
  /// - "INTERNAL_CRAWL_ERROR" : Internal error.
  /// - "INVALID_URL" : Invalid URL.
  core.String? pageFetchState;

  /// Whether or not the page is blocked to Google by a robots.txt rule.
  /// Possible string values are:
  /// - "ROBOTS_TXT_STATE_UNSPECIFIED" : Unknown robots.txt state, typically
  /// because the page wasn't fetched or found, or because robots.txt itself
  /// couldn't be reached.
  /// - "ALLOWED" : Crawl allowed by robots.txt.
  /// - "DISALLOWED" : Crawl blocked by robots.txt.
  core.String? robotsTxtState;

  /// The status of the most severe error on the page.
  ///
  /// If a page has both warnings and errors, the page status is error. Error
  /// status means the page cannot be shown in Search results.
  /// Possible string values are:
  /// - "VERDICT_UNSPECIFIED" : Unknown verdict.
  /// - "PASS" : Equivalent to "Valid" for the page or item in Search Console.
  /// - "PARTIAL" : Reserved, no longer in use.
  /// - "FAIL" : Equivalent to "Error" or "Invalid" for the page or item in
  /// Search Console.
  /// - "NEUTRAL" : Equivalent to "Excluded" for the page or item in Search
  /// Console.
  core.String? verdict;

  AmpInspectionResult({
    this.ampIndexStatusVerdict,
    this.ampUrl,
    this.indexingState,
    this.issues,
    this.lastCrawlTime,
    this.pageFetchState,
    this.robotsTxtState,
    this.verdict,
  });

  AmpInspectionResult.fromJson(core.Map json_)
      : this(
          ampIndexStatusVerdict: json_.containsKey('ampIndexStatusVerdict')
              ? json_['ampIndexStatusVerdict'] as core.String
              : null,
          ampUrl: json_.containsKey('ampUrl')
              ? json_['ampUrl'] as core.String
              : null,
          indexingState: json_.containsKey('indexingState')
              ? json_['indexingState'] as core.String
              : null,
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) => AmpIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lastCrawlTime: json_.containsKey('lastCrawlTime')
              ? json_['lastCrawlTime'] as core.String
              : null,
          pageFetchState: json_.containsKey('pageFetchState')
              ? json_['pageFetchState'] as core.String
              : null,
          robotsTxtState: json_.containsKey('robotsTxtState')
              ? json_['robotsTxtState'] as core.String
              : null,
          verdict: json_.containsKey('verdict')
              ? json_['verdict'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ampIndexStatusVerdict != null)
          'ampIndexStatusVerdict': ampIndexStatusVerdict!,
        if (ampUrl != null) 'ampUrl': ampUrl!,
        if (indexingState != null) 'indexingState': indexingState!,
        if (issues != null) 'issues': issues!,
        if (lastCrawlTime != null) 'lastCrawlTime': lastCrawlTime!,
        if (pageFetchState != null) 'pageFetchState': pageFetchState!,
        if (robotsTxtState != null) 'robotsTxtState': robotsTxtState!,
        if (verdict != null) 'verdict': verdict!,
      };
}

/// AMP issue.
class AmpIssue {
  /// Brief description of this issue.
  core.String? issueMessage;

  /// Severity of this issue: WARNING or ERROR.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown severity.
  /// - "WARNING" : Warning.
  /// - "ERROR" : Error.
  core.String? severity;

  AmpIssue({
    this.issueMessage,
    this.severity,
  });

  AmpIssue.fromJson(core.Map json_)
      : this(
          issueMessage: json_.containsKey('issueMessage')
              ? json_['issueMessage'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueMessage != null) 'issueMessage': issueMessage!,
        if (severity != null) 'severity': severity!,
      };
}

class ApiDataRow {
  core.double? clicks;
  core.double? ctr;
  core.double? impressions;
  core.List<core.String>? keys;
  core.double? position;

  ApiDataRow({
    this.clicks,
    this.ctr,
    this.impressions,
    this.keys,
    this.position,
  });

  ApiDataRow.fromJson(core.Map json_)
      : this(
          clicks: json_.containsKey('clicks')
              ? (json_['clicks'] as core.num).toDouble()
              : null,
          ctr: json_.containsKey('ctr')
              ? (json_['ctr'] as core.num).toDouble()
              : null,
          impressions: json_.containsKey('impressions')
              ? (json_['impressions'] as core.num).toDouble()
              : null,
          keys: json_.containsKey('keys')
              ? (json_['keys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          position: json_.containsKey('position')
              ? (json_['position'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clicks != null) 'clicks': clicks!,
        if (ctr != null) 'ctr': ctr!,
        if (impressions != null) 'impressions': impressions!,
        if (keys != null) 'keys': keys!,
        if (position != null) 'position': position!,
      };
}

/// A filter test to be applied to each row in the data set, where a match can
/// return the row.
///
/// Filters are string comparisons, and values and dimension names are not
/// case-sensitive. Individual filters are either AND'ed or OR'ed within their
/// parent filter group, according to the group's group type. You do not need to
/// group by a specified dimension to filter against it.
class ApiDimensionFilter {
  ///
  /// Possible string values are:
  /// - "QUERY"
  /// - "PAGE"
  /// - "COUNTRY"
  /// - "DEVICE"
  /// - "SEARCH_APPEARANCE"
  core.String? dimension;
  core.String? expression;

  ///
  /// Possible string values are:
  /// - "EQUALS"
  /// - "NOT_EQUALS"
  /// - "CONTAINS"
  /// - "NOT_CONTAINS"
  /// - "INCLUDING_REGEX"
  /// - "EXCLUDING_REGEX"
  core.String? operator;

  ApiDimensionFilter({
    this.dimension,
    this.expression,
    this.operator,
  });

  ApiDimensionFilter.fromJson(core.Map json_)
      : this(
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          expression: json_.containsKey('expression')
              ? json_['expression'] as core.String
              : null,
          operator: json_.containsKey('operator')
              ? json_['operator'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (expression != null) 'expression': expression!,
        if (operator != null) 'operator': operator!,
      };
}

/// A set of dimension value filters to test against each row.
///
/// Only rows that pass all filter groups will be returned. All results within a
/// filter group are either AND'ed or OR'ed together, depending on the group
/// type selected. All filter groups are AND'ed together.
class ApiDimensionFilterGroup {
  core.List<ApiDimensionFilter>? filters;

  ///
  /// Possible string values are:
  /// - "AND"
  core.String? groupType;

  ApiDimensionFilterGroup({
    this.filters,
    this.groupType,
  });

  ApiDimensionFilterGroup.fromJson(core.Map json_)
      : this(
          filters: json_.containsKey('filters')
              ? (json_['filters'] as core.List)
                  .map((value) => ApiDimensionFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          groupType: json_.containsKey('groupType')
              ? json_['groupType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filters != null) 'filters': filters!,
        if (groupType != null) 'groupType': groupType!,
      };
}

/// Blocked resource.
class BlockedResource {
  /// URL of the blocked resource.
  core.String? url;

  BlockedResource({
    this.url,
  });

  BlockedResource.fromJson(core.Map json_)
      : this(
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// Rich Results items grouped by type.
class DetectedItems {
  /// List of Rich Results items.
  core.List<Item>? items;

  /// Rich Results type
  core.String? richResultType;

  DetectedItems({
    this.items,
    this.richResultType,
  });

  DetectedItems.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Item.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          richResultType: json_.containsKey('richResultType')
              ? json_['richResultType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (richResultType != null) 'richResultType': richResultType!,
      };
}

/// Describe image data.
class Image {
  /// Image data in format determined by the mime type.
  ///
  /// Currently, the format will always be "image/png", but this might change in
  /// the future.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The mime-type of the image data.
  core.String? mimeType;

  Image({
    this.data,
    this.mimeType,
  });

  Image.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Results of index status inspection for either the live page or the version
/// in Google's index, depending on whether you requested a live inspection or
/// not.
///
/// For more information, see the
/// [Index coverage report documentation](https://support.google.com/webmasters/answer/7440203).
class IndexStatusInspectionResult {
  /// Could Google find and index the page.
  ///
  /// More details about page indexing appear in 'indexing_state'.
  core.String? coverageState;

  /// Primary crawler that was used by Google to crawl your site.
  /// Possible string values are:
  /// - "CRAWLING_USER_AGENT_UNSPECIFIED" : Unknown user agent.
  /// - "DESKTOP" : Desktop user agent.
  /// - "MOBILE" : Mobile user agent.
  core.String? crawledAs;

  /// The URL of the page that Google selected as canonical.
  ///
  /// If the page was not indexed, this field is absent.
  core.String? googleCanonical;

  /// Whether or not the page blocks indexing through a noindex rule.
  /// Possible string values are:
  /// - "INDEXING_STATE_UNSPECIFIED" : Unknown indexing status.
  /// - "INDEXING_ALLOWED" : Indexing allowed.
  /// - "BLOCKED_BY_META_TAG" : Indexing not allowed, 'noindex' detected in
  /// 'robots' meta tag.
  /// - "BLOCKED_BY_HTTP_HEADER" : Indexing not allowed, 'noindex' detected in
  /// 'X-Robots-Tag' http header.
  /// - "BLOCKED_BY_ROBOTS_TXT" : Reserved, no longer in use.
  core.String? indexingState;

  /// Last time this URL was crawled by Google using the
  /// [primary crawler](https://support.google.com/webmasters/answer/7440203#primary_crawler).
  ///
  /// Absent if the URL was never crawled successfully.
  core.String? lastCrawlTime;

  /// Whether or not Google could retrieve the page from your server.
  ///
  /// Equivalent to \["page
  /// fetch"\](https://support.google.com/webmasters/answer/9012289#index_coverage)
  /// in the URL inspection report.
  /// Possible string values are:
  /// - "PAGE_FETCH_STATE_UNSPECIFIED" : Unknown fetch state.
  /// - "SUCCESSFUL" : Successful fetch.
  /// - "SOFT_404" : Soft 404.
  /// - "BLOCKED_ROBOTS_TXT" : Blocked by robots.txt.
  /// - "NOT_FOUND" : Not found (404).
  /// - "ACCESS_DENIED" : Blocked due to unauthorized request (401).
  /// - "SERVER_ERROR" : Server error (5xx).
  /// - "REDIRECT_ERROR" : Redirection error.
  /// - "ACCESS_FORBIDDEN" : Blocked due to access forbidden (403).
  /// - "BLOCKED_4XX" : Blocked due to other 4xx issue (not 403, 404).
  /// - "INTERNAL_CRAWL_ERROR" : Internal error.
  /// - "INVALID_URL" : Invalid URL.
  core.String? pageFetchState;

  /// URLs that link to the inspected URL, directly and indirectly.
  core.List<core.String>? referringUrls;

  /// Whether or not the page is blocked to Google by a robots.txt rule.
  /// Possible string values are:
  /// - "ROBOTS_TXT_STATE_UNSPECIFIED" : Unknown robots.txt state, typically
  /// because the page wasn't fetched or found, or because robots.txt itself
  /// couldn't be reached.
  /// - "ALLOWED" : Crawl allowed by robots.txt.
  /// - "DISALLOWED" : Crawl blocked by robots.txt.
  core.String? robotsTxtState;

  /// Any sitemaps that this URL was listed in, as known by Google.
  ///
  /// Not guaranteed to be an exhaustive list, especially if Google did not
  /// discover this URL through a sitemap. Absent if no sitemaps were found.
  core.List<core.String>? sitemap;

  /// The URL that your page or site
  /// [declares as canonical](https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls?#define-canonical).
  ///
  /// If you did not declare a canonical URL, this field is absent.
  core.String? userCanonical;

  /// High level verdict about whether the URL *is* indexed (indexed status), or
  /// *can be* indexed (live inspection).
  /// Possible string values are:
  /// - "VERDICT_UNSPECIFIED" : Unknown verdict.
  /// - "PASS" : Equivalent to "Valid" for the page or item in Search Console.
  /// - "PARTIAL" : Reserved, no longer in use.
  /// - "FAIL" : Equivalent to "Error" or "Invalid" for the page or item in
  /// Search Console.
  /// - "NEUTRAL" : Equivalent to "Excluded" for the page or item in Search
  /// Console.
  core.String? verdict;

  IndexStatusInspectionResult({
    this.coverageState,
    this.crawledAs,
    this.googleCanonical,
    this.indexingState,
    this.lastCrawlTime,
    this.pageFetchState,
    this.referringUrls,
    this.robotsTxtState,
    this.sitemap,
    this.userCanonical,
    this.verdict,
  });

  IndexStatusInspectionResult.fromJson(core.Map json_)
      : this(
          coverageState: json_.containsKey('coverageState')
              ? json_['coverageState'] as core.String
              : null,
          crawledAs: json_.containsKey('crawledAs')
              ? json_['crawledAs'] as core.String
              : null,
          googleCanonical: json_.containsKey('googleCanonical')
              ? json_['googleCanonical'] as core.String
              : null,
          indexingState: json_.containsKey('indexingState')
              ? json_['indexingState'] as core.String
              : null,
          lastCrawlTime: json_.containsKey('lastCrawlTime')
              ? json_['lastCrawlTime'] as core.String
              : null,
          pageFetchState: json_.containsKey('pageFetchState')
              ? json_['pageFetchState'] as core.String
              : null,
          referringUrls: json_.containsKey('referringUrls')
              ? (json_['referringUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          robotsTxtState: json_.containsKey('robotsTxtState')
              ? json_['robotsTxtState'] as core.String
              : null,
          sitemap: json_.containsKey('sitemap')
              ? (json_['sitemap'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          userCanonical: json_.containsKey('userCanonical')
              ? json_['userCanonical'] as core.String
              : null,
          verdict: json_.containsKey('verdict')
              ? json_['verdict'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coverageState != null) 'coverageState': coverageState!,
        if (crawledAs != null) 'crawledAs': crawledAs!,
        if (googleCanonical != null) 'googleCanonical': googleCanonical!,
        if (indexingState != null) 'indexingState': indexingState!,
        if (lastCrawlTime != null) 'lastCrawlTime': lastCrawlTime!,
        if (pageFetchState != null) 'pageFetchState': pageFetchState!,
        if (referringUrls != null) 'referringUrls': referringUrls!,
        if (robotsTxtState != null) 'robotsTxtState': robotsTxtState!,
        if (sitemap != null) 'sitemap': sitemap!,
        if (userCanonical != null) 'userCanonical': userCanonical!,
        if (verdict != null) 'verdict': verdict!,
      };
}

/// Index inspection request.
class InspectUrlIndexRequest {
  /// URL to inspect.
  ///
  /// Must be under the property specified in "site_url".
  ///
  /// Required.
  core.String? inspectionUrl;

  /// An \[IETF BCP-47\](https://en.wikipedia.org/wiki/IETF_language_tag)
  /// language code representing the requested language for translated issue
  /// messages, e.g. "en-US", "or "de-CH".
  ///
  /// Default value is "en-US".
  ///
  /// Optional.
  core.String? languageCode;

  /// The URL of the property as defined in Search Console.
  ///
  /// **Examples:** `http://www.example.com/` for a URL-prefix property, or
  /// `sc-domain:example.com` for a Domain property.
  ///
  /// Required.
  core.String? siteUrl;

  InspectUrlIndexRequest({
    this.inspectionUrl,
    this.languageCode,
    this.siteUrl,
  });

  InspectUrlIndexRequest.fromJson(core.Map json_)
      : this(
          inspectionUrl: json_.containsKey('inspectionUrl')
              ? json_['inspectionUrl'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          siteUrl: json_.containsKey('siteUrl')
              ? json_['siteUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inspectionUrl != null) 'inspectionUrl': inspectionUrl!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (siteUrl != null) 'siteUrl': siteUrl!,
      };
}

/// Index-Status inspection response.
class InspectUrlIndexResponse {
  /// URL inspection results.
  UrlInspectionResult? inspectionResult;

  InspectUrlIndexResponse({
    this.inspectionResult,
  });

  InspectUrlIndexResponse.fromJson(core.Map json_)
      : this(
          inspectionResult: json_.containsKey('inspectionResult')
              ? UrlInspectionResult.fromJson(json_['inspectionResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inspectionResult != null) 'inspectionResult': inspectionResult!,
      };
}

/// A specific rich result found on the page.
class Item {
  /// A list of zero or more rich result issues found for this instance.
  core.List<RichResultsIssue>? issues;

  /// The user-provided name of this item.
  core.String? name;

  Item({
    this.issues,
    this.name,
  });

  Item.fromJson(core.Map json_)
      : this(
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) => RichResultsIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issues != null) 'issues': issues!,
        if (name != null) 'name': name!,
      };
}

/// Mobile-friendly issue.
class MobileFriendlyIssue {
  /// Rule violated.
  /// Possible string values are:
  /// - "MOBILE_FRIENDLY_RULE_UNSPECIFIED" : Unknown rule. Sorry, we don't have
  /// any description for the rule that was broken.
  /// - "USES_INCOMPATIBLE_PLUGINS" : Plugins incompatible with mobile devices
  /// are being used.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#flash_usage).
  /// - "CONFIGURE_VIEWPORT" : Viewport is not specified using the meta viewport
  /// tag.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#viewport_not_configured).
  /// - "FIXED_WIDTH_VIEWPORT" : Viewport defined to a fixed width.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#fixed-width_viewport).
  /// - "SIZE_CONTENT_TO_VIEWPORT" : Content not sized to viewport.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#content_not_sized_to_viewport).
  /// - "USE_LEGIBLE_FONT_SIZES" : Font size is too small for easy reading on a
  /// small screen.
  /// [Learn More](https://support.google.com/webmasters/answer/6352293#small_font_size).
  /// - "TAP_TARGETS_TOO_CLOSE" : Touch elements are too close to each other.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#touch_elements_too_close).
  core.String? rule;

  MobileFriendlyIssue({
    this.rule,
  });

  MobileFriendlyIssue.fromJson(core.Map json_)
      : this(
          rule: json_.containsKey('rule') ? json_['rule'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rule != null) 'rule': rule!,
      };
}

/// Mobile-usability inspection results.
class MobileUsabilityInspectionResult {
  /// A list of zero or more mobile-usability issues detected for this URL.
  core.List<MobileUsabilityIssue>? issues;

  /// High-level mobile-usability inspection result for this URL.
  /// Possible string values are:
  /// - "VERDICT_UNSPECIFIED" : Unknown verdict.
  /// - "PASS" : Equivalent to "Valid" for the page or item in Search Console.
  /// - "PARTIAL" : Reserved, no longer in use.
  /// - "FAIL" : Equivalent to "Error" or "Invalid" for the page or item in
  /// Search Console.
  /// - "NEUTRAL" : Equivalent to "Excluded" for the page or item in Search
  /// Console.
  core.String? verdict;

  MobileUsabilityInspectionResult({
    this.issues,
    this.verdict,
  });

  MobileUsabilityInspectionResult.fromJson(core.Map json_)
      : this(
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) => MobileUsabilityIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          verdict: json_.containsKey('verdict')
              ? json_['verdict'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issues != null) 'issues': issues!,
        if (verdict != null) 'verdict': verdict!,
      };
}

/// Mobile-usability issue.
class MobileUsabilityIssue {
  /// Mobile-usability issue type.
  /// Possible string values are:
  /// - "MOBILE_USABILITY_ISSUE_TYPE_UNSPECIFIED" : Unknown issue. Sorry, we
  /// don't have any description for the rule that was broken.
  /// - "USES_INCOMPATIBLE_PLUGINS" : Plugins incompatible with mobile devices
  /// are being used.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#flash_usage#error-list).
  /// - "CONFIGURE_VIEWPORT" : Viewport is not specified using the meta viewport
  /// tag.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#viewport_not_configured#error-list).
  /// - "FIXED_WIDTH_VIEWPORT" : Viewport defined to a fixed width.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#fixed-width_viewport#error-list).
  /// - "SIZE_CONTENT_TO_VIEWPORT" : Content not sized to viewport.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#content_not_sized_to_viewport#error-list).
  /// - "USE_LEGIBLE_FONT_SIZES" : Font size is too small for easy reading on a
  /// small screen.
  /// [Learn More](https://support.google.com/webmasters/answer/6352293#small_font_size#error-list).
  /// - "TAP_TARGETS_TOO_CLOSE" : Touch elements are too close to each other.
  /// [Learn more](https://support.google.com/webmasters/answer/6352293#touch_elements_too_close#error-list).
  core.String? issueType;

  /// Additional information regarding the issue.
  core.String? message;

  /// Not returned; reserved for future use.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown severity.
  /// - "WARNING" : Warning.
  /// - "ERROR" : Error.
  core.String? severity;

  MobileUsabilityIssue({
    this.issueType,
    this.message,
    this.severity,
  });

  MobileUsabilityIssue.fromJson(core.Map json_)
      : this(
          issueType: json_.containsKey('issueType')
              ? json_['issueType'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueType != null) 'issueType': issueType!,
        if (message != null) 'message': message!,
        if (severity != null) 'severity': severity!,
      };
}

/// Information about a resource with issue.
class ResourceIssue {
  /// Describes a blocked resource issue.
  BlockedResource? blockedResource;

  ResourceIssue({
    this.blockedResource,
  });

  ResourceIssue.fromJson(core.Map json_)
      : this(
          blockedResource: json_.containsKey('blockedResource')
              ? BlockedResource.fromJson(json_['blockedResource']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blockedResource != null) 'blockedResource': blockedResource!,
      };
}

/// Rich-Results inspection result, including any rich results found at this
/// URL.
class RichResultsInspectionResult {
  /// A list of zero or more rich results detected on this page.
  ///
  /// Rich results that cannot even be parsed due to syntactic issues will not
  /// be listed here.
  core.List<DetectedItems>? detectedItems;

  /// High-level rich results inspection result for this URL.
  /// Possible string values are:
  /// - "VERDICT_UNSPECIFIED" : Unknown verdict.
  /// - "PASS" : Equivalent to "Valid" for the page or item in Search Console.
  /// - "PARTIAL" : Reserved, no longer in use.
  /// - "FAIL" : Equivalent to "Error" or "Invalid" for the page or item in
  /// Search Console.
  /// - "NEUTRAL" : Equivalent to "Excluded" for the page or item in Search
  /// Console.
  core.String? verdict;

  RichResultsInspectionResult({
    this.detectedItems,
    this.verdict,
  });

  RichResultsInspectionResult.fromJson(core.Map json_)
      : this(
          detectedItems: json_.containsKey('detectedItems')
              ? (json_['detectedItems'] as core.List)
                  .map((value) => DetectedItems.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          verdict: json_.containsKey('verdict')
              ? json_['verdict'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedItems != null) 'detectedItems': detectedItems!,
        if (verdict != null) 'verdict': verdict!,
      };
}

/// Severity and status of a single issue affecting a single rich result
/// instance on a page.
class RichResultsIssue {
  /// Rich Results issue type.
  core.String? issueMessage;

  /// Severity of this issue: WARNING, or ERROR.
  ///
  /// Items with an issue of status ERROR cannot appear with rich result
  /// features in Google Search results.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown severity.
  /// - "WARNING" : Warning.
  /// - "ERROR" : Error.
  core.String? severity;

  RichResultsIssue({
    this.issueMessage,
    this.severity,
  });

  RichResultsIssue.fromJson(core.Map json_)
      : this(
          issueMessage: json_.containsKey('issueMessage')
              ? json_['issueMessage'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueMessage != null) 'issueMessage': issueMessage!,
        if (severity != null) 'severity': severity!,
      };
}

/// Mobile-friendly test request.
class RunMobileFriendlyTestRequest {
  /// Whether or not screenshot is requested.
  ///
  /// Default is false.
  core.bool? requestScreenshot;

  /// URL for inspection.
  core.String? url;

  RunMobileFriendlyTestRequest({
    this.requestScreenshot,
    this.url,
  });

  RunMobileFriendlyTestRequest.fromJson(core.Map json_)
      : this(
          requestScreenshot: json_.containsKey('requestScreenshot')
              ? json_['requestScreenshot'] as core.bool
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestScreenshot != null) 'requestScreenshot': requestScreenshot!,
        if (url != null) 'url': url!,
      };
}

/// Mobile-friendly test response, including mobile-friendly issues and resource
/// issues.
class RunMobileFriendlyTestResponse {
  /// Test verdict, whether the page is mobile friendly or not.
  /// Possible string values are:
  /// - "MOBILE_FRIENDLY_TEST_RESULT_UNSPECIFIED" : Internal error when running
  /// this test. Please try running the test again.
  /// - "MOBILE_FRIENDLY" : The page is mobile friendly.
  /// - "NOT_MOBILE_FRIENDLY" : The page is not mobile friendly.
  core.String? mobileFriendliness;

  /// List of mobile-usability issues.
  core.List<MobileFriendlyIssue>? mobileFriendlyIssues;

  /// Information about embedded resources issues.
  core.List<ResourceIssue>? resourceIssues;

  /// Screenshot of the requested URL.
  Image? screenshot;

  /// Final state of the test, can be either complete or an error.
  TestStatus? testStatus;

  RunMobileFriendlyTestResponse({
    this.mobileFriendliness,
    this.mobileFriendlyIssues,
    this.resourceIssues,
    this.screenshot,
    this.testStatus,
  });

  RunMobileFriendlyTestResponse.fromJson(core.Map json_)
      : this(
          mobileFriendliness: json_.containsKey('mobileFriendliness')
              ? json_['mobileFriendliness'] as core.String
              : null,
          mobileFriendlyIssues: json_.containsKey('mobileFriendlyIssues')
              ? (json_['mobileFriendlyIssues'] as core.List)
                  .map((value) => MobileFriendlyIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceIssues: json_.containsKey('resourceIssues')
              ? (json_['resourceIssues'] as core.List)
                  .map((value) => ResourceIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          screenshot: json_.containsKey('screenshot')
              ? Image.fromJson(
                  json_['screenshot'] as core.Map<core.String, core.dynamic>)
              : null,
          testStatus: json_.containsKey('testStatus')
              ? TestStatus.fromJson(
                  json_['testStatus'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mobileFriendliness != null)
          'mobileFriendliness': mobileFriendliness!,
        if (mobileFriendlyIssues != null)
          'mobileFriendlyIssues': mobileFriendlyIssues!,
        if (resourceIssues != null) 'resourceIssues': resourceIssues!,
        if (screenshot != null) 'screenshot': screenshot!,
        if (testStatus != null) 'testStatus': testStatus!,
      };
}

class SearchAnalyticsQueryRequest {
  /// \[Optional; Default is \"auto\"\] How data is aggregated.
  ///
  /// If aggregated by property, all data for the same property is aggregated;
  /// if aggregated by page, all data is aggregated by canonical URI. If you
  /// filter or group by page, choose AUTO; otherwise you can aggregate either
  /// by property or by page, depending on how you want your data calculated;
  /// see the help documentation to learn how data is calculated differently by
  /// site versus by page. **Note:** If you group or filter by page, you cannot
  /// aggregate by property. If you specify any value other than AUTO, the
  /// aggregation type in the result will match the requested type, or if you
  /// request an invalid type, you will get an error. The API will never change
  /// your aggregation type if the requested type is invalid.
  /// Possible string values are:
  /// - "AUTO"
  /// - "BY_PROPERTY"
  /// - "BY_PAGE"
  core.String? aggregationType;

  /// The data state to be fetched, can be full or all, the latter including
  /// full and partial data.
  /// Possible string values are:
  /// - "DATA_STATE_UNSPECIFIED" : Default value, should not be used.
  /// - "FINAL" : Include full final data only, without partial.
  /// - "ALL" : Include all data, full and partial.
  core.String? dataState;

  /// Zero or more filters to apply to the dimension grouping values; for
  /// example, 'query contains \"buy\"' to see only data where the query string
  /// contains the substring \"buy\" (not case-sensitive).
  ///
  /// You can filter by a dimension without grouping by it.
  ///
  /// Optional.
  core.List<ApiDimensionFilterGroup>? dimensionFilterGroups;

  /// Zero or more dimensions to group results by.
  ///
  /// Dimensions are the group-by values in the Search Analytics page.
  /// Dimensions are combined to create a unique row key for each row. Results
  /// are grouped in the order that you supply these dimensions.
  ///
  /// Optional.
  core.List<core.String>? dimensions;

  /// End date of the requested date range, in YYYY-MM-DD format, in PST (UTC -
  /// 8:00).
  ///
  /// Must be greater than or equal to the start date. This value is included in
  /// the range.
  ///
  /// Required.
  core.String? endDate;

  /// \[Optional; Default is 1000\] The maximum number of rows to return.
  ///
  /// Must be a number from 1 to 25,000 (inclusive).
  core.int? rowLimit;

  /// \[Optional; Default is \"web\"\] The search type to filter for.
  /// Possible string values are:
  /// - "WEB"
  /// - "IMAGE"
  /// - "VIDEO"
  /// - "NEWS" : News tab in search.
  /// - "DISCOVER" : Discover.
  /// - "GOOGLE_NEWS" : Google News (news.google.com or mobile app).
  core.String? searchType;

  /// \[Required\] Start date of the requested date range, in YYYY-MM-DD format,
  /// in PST time (UTC - 8:00).
  ///
  /// Must be less than or equal to the end date. This value is included in the
  /// range.
  core.String? startDate;

  /// \[Optional; Default is 0\] Zero-based index of the first row in the
  /// response.
  ///
  /// Must be a non-negative number.
  core.int? startRow;

  /// \[Optional; Default is \"web\"\] Type of report: search type, or either
  /// Discover or Gnews.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WEB"
  /// - "IMAGE"
  /// - "VIDEO"
  /// - "NEWS" : News tab in search.
  /// - "DISCOVER" : Discover.
  /// - "GOOGLE_NEWS" : Google News (news.google.com or mobile app).
  core.String? type;

  SearchAnalyticsQueryRequest({
    this.aggregationType,
    this.dataState,
    this.dimensionFilterGroups,
    this.dimensions,
    this.endDate,
    this.rowLimit,
    this.searchType,
    this.startDate,
    this.startRow,
    this.type,
  });

  SearchAnalyticsQueryRequest.fromJson(core.Map json_)
      : this(
          aggregationType: json_.containsKey('aggregationType')
              ? json_['aggregationType'] as core.String
              : null,
          dataState: json_.containsKey('dataState')
              ? json_['dataState'] as core.String
              : null,
          dimensionFilterGroups: json_.containsKey('dimensionFilterGroups')
              ? (json_['dimensionFilterGroups'] as core.List)
                  .map((value) => ApiDimensionFilterGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          endDate: json_.containsKey('endDate')
              ? json_['endDate'] as core.String
              : null,
          rowLimit: json_.containsKey('rowLimit')
              ? json_['rowLimit'] as core.int
              : null,
          searchType: json_.containsKey('searchType')
              ? json_['searchType'] as core.String
              : null,
          startDate: json_.containsKey('startDate')
              ? json_['startDate'] as core.String
              : null,
          startRow: json_.containsKey('startRow')
              ? json_['startRow'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregationType != null) 'aggregationType': aggregationType!,
        if (dataState != null) 'dataState': dataState!,
        if (dimensionFilterGroups != null)
          'dimensionFilterGroups': dimensionFilterGroups!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (endDate != null) 'endDate': endDate!,
        if (rowLimit != null) 'rowLimit': rowLimit!,
        if (searchType != null) 'searchType': searchType!,
        if (startDate != null) 'startDate': startDate!,
        if (startRow != null) 'startRow': startRow!,
        if (type != null) 'type': type!,
      };
}

/// A list of rows, one per result, grouped by key.
///
/// Metrics in each row are aggregated for all data grouped by that key either
/// by page or property, as specified by the aggregation type parameter.
class SearchAnalyticsQueryResponse {
  /// How the results were aggregated.
  /// Possible string values are:
  /// - "AUTO"
  /// - "BY_PROPERTY"
  /// - "BY_PAGE"
  core.String? responseAggregationType;

  /// A list of rows grouped by the key values in the order given in the query.
  core.List<ApiDataRow>? rows;

  SearchAnalyticsQueryResponse({
    this.responseAggregationType,
    this.rows,
  });

  SearchAnalyticsQueryResponse.fromJson(core.Map json_)
      : this(
          responseAggregationType: json_.containsKey('responseAggregationType')
              ? json_['responseAggregationType'] as core.String
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => ApiDataRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responseAggregationType != null)
          'responseAggregationType': responseAggregationType!,
        if (rows != null) 'rows': rows!,
      };
}

/// List of sitemaps.
class SitemapsListResponse {
  /// Contains detailed information about a specific URL submitted as a
  /// [sitemap](https://support.google.com/webmasters/answer/156184).
  core.List<WmxSitemap>? sitemap;

  SitemapsListResponse({
    this.sitemap,
  });

  SitemapsListResponse.fromJson(core.Map json_)
      : this(
          sitemap: json_.containsKey('sitemap')
              ? (json_['sitemap'] as core.List)
                  .map((value) => WmxSitemap.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sitemap != null) 'sitemap': sitemap!,
      };
}

/// List of sites with access level information.
class SitesListResponse {
  /// Contains permission level information about a Search Console site.
  ///
  /// For more information, see
  /// [Permissions in Search Console](https://support.google.com/webmasters/answer/2451999).
  core.List<WmxSite>? siteEntry;

  SitesListResponse({
    this.siteEntry,
  });

  SitesListResponse.fromJson(core.Map json_)
      : this(
          siteEntry: json_.containsKey('siteEntry')
              ? (json_['siteEntry'] as core.List)
                  .map((value) => WmxSite.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (siteEntry != null) 'siteEntry': siteEntry!,
      };
}

/// Final state of the test, including error details if necessary.
class TestStatus {
  /// Error details if applicable.
  core.String? details;

  /// Status of the test.
  /// Possible string values are:
  /// - "TEST_STATUS_UNSPECIFIED" : Internal error when running this test.
  /// Please try running the test again.
  /// - "COMPLETE" : Inspection has completed without errors.
  /// - "INTERNAL_ERROR" : Inspection terminated in an error state. This
  /// indicates a problem in Google's infrastructure, not a user error. Please
  /// try again later.
  /// - "PAGE_UNREACHABLE" : Google can not access the URL because of a user
  /// error such as a robots.txt blockage, a 403 or 500 code etc. Please make
  /// sure that the URL provided is accessible by Googlebot and is not password
  /// protected.
  core.String? status;

  TestStatus({
    this.details,
    this.status,
  });

  TestStatus.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (status != null) 'status': status!,
      };
}

/// URL inspection result, including all inspection results.
class UrlInspectionResult {
  /// Result of the AMP analysis.
  ///
  /// Absent if the page is not an AMP page.
  AmpInspectionResult? ampResult;

  /// Result of the index status analysis.
  IndexStatusInspectionResult? indexStatusResult;

  /// Link to Search Console URL inspection.
  core.String? inspectionResultLink;

  /// Result of the Mobile usability analysis.
  MobileUsabilityInspectionResult? mobileUsabilityResult;

  /// Result of the Rich Results analysis.
  ///
  /// Absent if there are no rich results found.
  RichResultsInspectionResult? richResultsResult;

  UrlInspectionResult({
    this.ampResult,
    this.indexStatusResult,
    this.inspectionResultLink,
    this.mobileUsabilityResult,
    this.richResultsResult,
  });

  UrlInspectionResult.fromJson(core.Map json_)
      : this(
          ampResult: json_.containsKey('ampResult')
              ? AmpInspectionResult.fromJson(
                  json_['ampResult'] as core.Map<core.String, core.dynamic>)
              : null,
          indexStatusResult: json_.containsKey('indexStatusResult')
              ? IndexStatusInspectionResult.fromJson(json_['indexStatusResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inspectionResultLink: json_.containsKey('inspectionResultLink')
              ? json_['inspectionResultLink'] as core.String
              : null,
          mobileUsabilityResult: json_.containsKey('mobileUsabilityResult')
              ? MobileUsabilityInspectionResult.fromJson(
                  json_['mobileUsabilityResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          richResultsResult: json_.containsKey('richResultsResult')
              ? RichResultsInspectionResult.fromJson(json_['richResultsResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ampResult != null) 'ampResult': ampResult!,
        if (indexStatusResult != null) 'indexStatusResult': indexStatusResult!,
        if (inspectionResultLink != null)
          'inspectionResultLink': inspectionResultLink!,
        if (mobileUsabilityResult != null)
          'mobileUsabilityResult': mobileUsabilityResult!,
        if (richResultsResult != null) 'richResultsResult': richResultsResult!,
      };
}

/// Contains permission level information about a Search Console site.
///
/// For more information, see
/// [Permissions in Search Console](https://support.google.com/webmasters/answer/2451999).
class WmxSite {
  /// The user's permission level for the site.
  /// Possible string values are:
  /// - "SITE_PERMISSION_LEVEL_UNSPECIFIED"
  /// - "SITE_OWNER" : Owner has complete access to the site.
  /// - "SITE_FULL_USER" : Full users can access all data, and perform most of
  /// the operations.
  /// - "SITE_RESTRICTED_USER" : Restricted users can access most of the data,
  /// and perform some operations.
  /// - "SITE_UNVERIFIED_USER" : Unverified user has no access to site's data.
  core.String? permissionLevel;

  /// The URL of the site.
  core.String? siteUrl;

  WmxSite({
    this.permissionLevel,
    this.siteUrl,
  });

  WmxSite.fromJson(core.Map json_)
      : this(
          permissionLevel: json_.containsKey('permissionLevel')
              ? json_['permissionLevel'] as core.String
              : null,
          siteUrl: json_.containsKey('siteUrl')
              ? json_['siteUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissionLevel != null) 'permissionLevel': permissionLevel!,
        if (siteUrl != null) 'siteUrl': siteUrl!,
      };
}

/// Contains detailed information about a specific URL submitted as a
/// [sitemap](https://support.google.com/webmasters/answer/156184).
class WmxSitemap {
  /// The various content types in the sitemap.
  core.List<WmxSitemapContent>? contents;

  /// Number of errors in the sitemap.
  ///
  /// These are issues with the sitemap itself that need to be fixed before it
  /// can be processed correctly.
  core.String? errors;

  /// If true, the sitemap has not been processed.
  core.bool? isPending;

  /// If true, the sitemap is a collection of sitemaps.
  core.bool? isSitemapsIndex;

  /// Date & time in which this sitemap was last downloaded.
  ///
  /// Date format is in RFC 3339 format (yyyy-mm-dd).
  core.String? lastDownloaded;

  /// Date & time in which this sitemap was submitted.
  ///
  /// Date format is in RFC 3339 format (yyyy-mm-dd).
  core.String? lastSubmitted;

  /// The url of the sitemap.
  core.String? path;

  /// The type of the sitemap.
  ///
  /// For example: `rssFeed`.
  /// Possible string values are:
  /// - "NOT_SITEMAP"
  /// - "URL_LIST"
  /// - "SITEMAP"
  /// - "RSS_FEED"
  /// - "ATOM_FEED"
  /// - "PATTERN_SITEMAP" : Unsupported sitemap types.
  /// - "OCEANFRONT"
  core.String? type;

  /// Number of warnings for the sitemap.
  ///
  /// These are generally non-critical issues with URLs in the sitemaps.
  core.String? warnings;

  WmxSitemap({
    this.contents,
    this.errors,
    this.isPending,
    this.isSitemapsIndex,
    this.lastDownloaded,
    this.lastSubmitted,
    this.path,
    this.type,
    this.warnings,
  });

  WmxSitemap.fromJson(core.Map json_)
      : this(
          contents: json_.containsKey('contents')
              ? (json_['contents'] as core.List)
                  .map((value) => WmxSitemapContent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          errors: json_.containsKey('errors')
              ? json_['errors'] as core.String
              : null,
          isPending: json_.containsKey('isPending')
              ? json_['isPending'] as core.bool
              : null,
          isSitemapsIndex: json_.containsKey('isSitemapsIndex')
              ? json_['isSitemapsIndex'] as core.bool
              : null,
          lastDownloaded: json_.containsKey('lastDownloaded')
              ? json_['lastDownloaded'] as core.String
              : null,
          lastSubmitted: json_.containsKey('lastSubmitted')
              ? json_['lastSubmitted'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          warnings: json_.containsKey('warnings')
              ? json_['warnings'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contents != null) 'contents': contents!,
        if (errors != null) 'errors': errors!,
        if (isPending != null) 'isPending': isPending!,
        if (isSitemapsIndex != null) 'isSitemapsIndex': isSitemapsIndex!,
        if (lastDownloaded != null) 'lastDownloaded': lastDownloaded!,
        if (lastSubmitted != null) 'lastSubmitted': lastSubmitted!,
        if (path != null) 'path': path!,
        if (type != null) 'type': type!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// Information about the various content types in the sitemap.
class WmxSitemapContent {
  /// *Deprecated; do not use.*
  core.String? indexed;

  /// The number of URLs in the sitemap (of the content type).
  core.String? submitted;

  /// The specific type of content in this sitemap.
  ///
  /// For example: `web`.
  /// Possible string values are:
  /// - "WEB"
  /// - "IMAGE"
  /// - "VIDEO"
  /// - "NEWS"
  /// - "MOBILE"
  /// - "ANDROID_APP"
  /// - "PATTERN" : Unsupported content type.
  /// - "IOS_APP"
  /// - "DATA_FEED_ELEMENT" : Unsupported content type.
  core.String? type;

  WmxSitemapContent({
    this.indexed,
    this.submitted,
    this.type,
  });

  WmxSitemapContent.fromJson(core.Map json_)
      : this(
          indexed: json_.containsKey('indexed')
              ? json_['indexed'] as core.String
              : null,
          submitted: json_.containsKey('submitted')
              ? json_['submitted'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexed != null) 'indexed': indexed!,
        if (submitted != null) 'submitted': submitted!,
        if (type != null) 'type': type!,
      };
}
