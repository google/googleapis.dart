// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.webmasters.v3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client webmasters/v3';

/// View Google Search Console data for your verified sites.
class WebmastersApi {
  /// View and manage Search Console data for your verified sites
  static const WebmastersScope = "https://www.googleapis.com/auth/webmasters";

  /// View Search Console data for your verified sites
  static const WebmastersReadonlyScope =
      "https://www.googleapis.com/auth/webmasters.readonly";

  final commons.ApiRequester _requester;

  SearchanalyticsResourceApi get searchanalytics =>
      new SearchanalyticsResourceApi(_requester);
  SitemapsResourceApi get sitemaps => new SitemapsResourceApi(_requester);
  SitesResourceApi get sites => new SitesResourceApi(_requester);

  WebmastersApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "webmasters/v3/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class SearchanalyticsResourceApi {
  final commons.ApiRequester _requester;

  SearchanalyticsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Query your data with filters and parameters that you define. Returns zero
  /// or more rows grouped by the row keys that you define. You must define a
  /// date range of one or more days.
  ///
  /// When date is one of the group by values, any days without data are omitted
  /// from the result list. If you need to know which days have data, issue a
  /// broad date range query grouped by date for any metric, and see which day
  /// rows are returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// http://www.example.com/
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
      SearchAnalyticsQueryRequest request, core.String siteUrl,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'sites/' +
        commons.Escaper.ecapeVariable('$siteUrl') +
        '/searchAnalytics/query';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new SearchAnalyticsQueryResponse.fromJson(data));
  }
}

class SitemapsResourceApi {
  final commons.ApiRequester _requester;

  SitemapsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a sitemap from this site.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// http://www.example.com/
  ///
  /// [feedpath] - The URL of the actual sitemap. For example:
  /// http://www.example.com/sitemap.xml
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String siteUrl, core.String feedpath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (feedpath == null) {
      throw new core.ArgumentError("Parameter feedpath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'sites/' +
        commons.Escaper.ecapeVariable('$siteUrl') +
        '/sitemaps/' +
        commons.Escaper.ecapeVariable('$feedpath');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves information about a specific sitemap.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// http://www.example.com/
  ///
  /// [feedpath] - The URL of the actual sitemap. For example:
  /// http://www.example.com/sitemap.xml
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
  async.Future<WmxSitemap> get(core.String siteUrl, core.String feedpath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (feedpath == null) {
      throw new core.ArgumentError("Parameter feedpath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'sites/' +
        commons.Escaper.ecapeVariable('$siteUrl') +
        '/sitemaps/' +
        commons.Escaper.ecapeVariable('$feedpath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WmxSitemap.fromJson(data));
  }

  /// Lists the sitemaps-entries submitted for this site, or included in the
  /// sitemap index file (if sitemapIndex is specified in the request).
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// http://www.example.com/
  ///
  /// [sitemapIndex] - A URL of a site's sitemap index. For example:
  /// http://www.example.com/sitemapindex.xml
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
  async.Future<SitemapsListResponse> list(core.String siteUrl,
      {core.String sitemapIndex, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (sitemapIndex != null) {
      _queryParams["sitemapIndex"] = [sitemapIndex];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/sitemaps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SitemapsListResponse.fromJson(data));
  }

  /// Submits a sitemap for a site.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The site's URL, including protocol. For example:
  /// http://www.example.com/
  ///
  /// [feedpath] - The URL of the sitemap to add. For example:
  /// http://www.example.com/sitemap.xml
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future submit(core.String siteUrl, core.String feedpath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (feedpath == null) {
      throw new core.ArgumentError("Parameter feedpath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'sites/' +
        commons.Escaper.ecapeVariable('$siteUrl') +
        '/sitemaps/' +
        commons.Escaper.ecapeVariable('$feedpath');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class SitesResourceApi {
  final commons.ApiRequester _requester;

  SitesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Adds a site to the set of the user's sites in Search Console.
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
  async.Future add(core.String siteUrl, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Removes a site from the set of the user's Search Console sites.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The URI of the property as defined in Search Console.
  /// Examples: http://www.example.com/ or android-app://com.example/ Note: for
  /// property-sets, use the URI that starts with sc-set: which is used in
  /// Search Console URLs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String siteUrl, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves information about specific site.
  ///
  /// Request parameters:
  ///
  /// [siteUrl] - The URI of the property as defined in Search Console.
  /// Examples: http://www.example.com/ or android-app://com.example/ Note: for
  /// property-sets, use the URI that starts with sc-set: which is used in
  /// Search Console URLs.
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
  async.Future<WmxSite> get(core.String siteUrl, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WmxSite.fromJson(data));
  }

  /// Lists the user's Search Console sites.
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
  async.Future<SitesListResponse> list({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'sites';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SitesListResponse.fromJson(data));
  }
}

class ApiDataRow {
  core.double clicks;
  core.double ctr;
  core.double impressions;
  core.List<core.String> keys;
  core.double position;

  ApiDataRow();

  ApiDataRow.fromJson(core.Map _json) {
    if (_json.containsKey("clicks")) {
      clicks = _json["clicks"].toDouble();
    }
    if (_json.containsKey("ctr")) {
      ctr = _json["ctr"].toDouble();
    }
    if (_json.containsKey("impressions")) {
      impressions = _json["impressions"].toDouble();
    }
    if (_json.containsKey("keys")) {
      keys = (_json["keys"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("position")) {
      position = _json["position"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clicks != null) {
      _json["clicks"] = clicks;
    }
    if (ctr != null) {
      _json["ctr"] = ctr;
    }
    if (impressions != null) {
      _json["impressions"] = impressions;
    }
    if (keys != null) {
      _json["keys"] = keys;
    }
    if (position != null) {
      _json["position"] = position;
    }
    return _json;
  }
}

class ApiDimensionFilter {
  core.String dimension;
  core.String expression;
  core.String operator;

  ApiDimensionFilter();

  ApiDimensionFilter.fromJson(core.Map _json) {
    if (_json.containsKey("dimension")) {
      dimension = _json["dimension"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("operator")) {
      operator = _json["operator"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimension != null) {
      _json["dimension"] = dimension;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (operator != null) {
      _json["operator"] = operator;
    }
    return _json;
  }
}

class ApiDimensionFilterGroup {
  core.List<ApiDimensionFilter> filters;
  core.String groupType;

  ApiDimensionFilterGroup();

  ApiDimensionFilterGroup.fromJson(core.Map _json) {
    if (_json.containsKey("filters")) {
      filters = (_json["filters"] as core.List)
          .map<ApiDimensionFilter>(
              (value) => new ApiDimensionFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("groupType")) {
      groupType = _json["groupType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filters != null) {
      _json["filters"] = filters.map((value) => (value).toJson()).toList();
    }
    if (groupType != null) {
      _json["groupType"] = groupType;
    }
    return _json;
  }
}

class SearchAnalyticsQueryRequest {
  /// [Optional; Default is "auto"] How data is aggregated. If aggregated by
  /// property, all data for the same property is aggregated; if aggregated by
  /// page, all data is aggregated by canonical URI. If you filter or group by
  /// page, choose AUTO; otherwise you can aggregate either by property or by
  /// page, depending on how you want your data calculated; see  the help
  /// documentation to learn how data is calculated differently by site versus
  /// by page.
  ///
  /// Note: If you group or filter by page, you cannot aggregate by property.
  ///
  /// If you specify any value other than AUTO, the aggregation type in the
  /// result will match the requested type, or if you request an invalid type,
  /// you will get an error. The API will never change your aggregation type if
  /// the requested type is invalid.
  core.String aggregationType;

  /// [Optional] Zero or more filters to apply to the dimension grouping values;
  /// for example, 'query contains "buy"' to see only data where the query
  /// string contains the substring "buy" (not case-sensitive). You can filter
  /// by a dimension without grouping by it.
  core.List<ApiDimensionFilterGroup> dimensionFilterGroups;

  /// [Optional] Zero or more dimensions to group results by. Dimensions are the
  /// group-by values in the Search Analytics page. Dimensions are combined to
  /// create a unique row key for each row. Results are grouped in the order
  /// that you supply these dimensions.
  core.List<core.String> dimensions;

  /// [Required] End date of the requested date range, in YYYY-MM-DD format, in
  /// PST (UTC - 8:00). Must be greater than or equal to the start date. This
  /// value is included in the range.
  core.String endDate;

  /// [Optional; Default is 1000] The maximum number of rows to return. Must be
  /// a number from 1 to 5,000 (inclusive).
  core.int rowLimit;

  /// [Optional; Default is "web"] The search type to filter for.
  core.String searchType;

  /// [Required] Start date of the requested date range, in YYYY-MM-DD format,
  /// in PST time (UTC - 8:00). Must be less than or equal to the end date. This
  /// value is included in the range.
  core.String startDate;

  /// [Optional; Default is 0] Zero-based index of the first row in the
  /// response. Must be a non-negative number.
  core.int startRow;

  SearchAnalyticsQueryRequest();

  SearchAnalyticsQueryRequest.fromJson(core.Map _json) {
    if (_json.containsKey("aggregationType")) {
      aggregationType = _json["aggregationType"];
    }
    if (_json.containsKey("dimensionFilterGroups")) {
      dimensionFilterGroups = (_json["dimensionFilterGroups"] as core.List)
          .map<ApiDimensionFilterGroup>(
              (value) => new ApiDimensionFilterGroup.fromJson(value))
          .toList();
    }
    if (_json.containsKey("dimensions")) {
      dimensions = (_json["dimensions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("endDate")) {
      endDate = _json["endDate"];
    }
    if (_json.containsKey("rowLimit")) {
      rowLimit = _json["rowLimit"];
    }
    if (_json.containsKey("searchType")) {
      searchType = _json["searchType"];
    }
    if (_json.containsKey("startDate")) {
      startDate = _json["startDate"];
    }
    if (_json.containsKey("startRow")) {
      startRow = _json["startRow"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aggregationType != null) {
      _json["aggregationType"] = aggregationType;
    }
    if (dimensionFilterGroups != null) {
      _json["dimensionFilterGroups"] =
          dimensionFilterGroups.map((value) => (value).toJson()).toList();
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions;
    }
    if (endDate != null) {
      _json["endDate"] = endDate;
    }
    if (rowLimit != null) {
      _json["rowLimit"] = rowLimit;
    }
    if (searchType != null) {
      _json["searchType"] = searchType;
    }
    if (startDate != null) {
      _json["startDate"] = startDate;
    }
    if (startRow != null) {
      _json["startRow"] = startRow;
    }
    return _json;
  }
}

/// A list of rows, one per result, grouped by key. Metrics in each row are
/// aggregated for all data grouped by that key either by page or property, as
/// specified by the aggregation type parameter.
class SearchAnalyticsQueryResponse {
  /// How the results were aggregated.
  core.String responseAggregationType;

  /// A list of rows grouped by the key values in the order given in the query.
  core.List<ApiDataRow> rows;

  SearchAnalyticsQueryResponse();

  SearchAnalyticsQueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responseAggregationType")) {
      responseAggregationType = _json["responseAggregationType"];
    }
    if (_json.containsKey("rows")) {
      rows = (_json["rows"] as core.List)
          .map<ApiDataRow>((value) => new ApiDataRow.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responseAggregationType != null) {
      _json["responseAggregationType"] = responseAggregationType;
    }
    if (rows != null) {
      _json["rows"] = rows.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// List of sitemaps.
class SitemapsListResponse {
  /// Contains detailed information about a specific URL submitted as a sitemap.
  core.List<WmxSitemap> sitemap;

  SitemapsListResponse();

  SitemapsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("sitemap")) {
      sitemap = (_json["sitemap"] as core.List)
          .map<WmxSitemap>((value) => new WmxSitemap.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sitemap != null) {
      _json["sitemap"] = sitemap.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// List of sites with access level information.
class SitesListResponse {
  /// Contains permission level information about a Search Console site. For
  /// more information, see Permissions in Search Console.
  core.List<WmxSite> siteEntry;

  SitesListResponse();

  SitesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("siteEntry")) {
      siteEntry = (_json["siteEntry"] as core.List)
          .map<WmxSite>((value) => new WmxSite.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (siteEntry != null) {
      _json["siteEntry"] = siteEntry.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Contains permission level information about a Search Console site. For more
/// information, see  Permissions in Search Console.
class WmxSite {
  /// The user's permission level for the site.
  core.String permissionLevel;

  /// The URL of the site.
  core.String siteUrl;

  WmxSite();

  WmxSite.fromJson(core.Map _json) {
    if (_json.containsKey("permissionLevel")) {
      permissionLevel = _json["permissionLevel"];
    }
    if (_json.containsKey("siteUrl")) {
      siteUrl = _json["siteUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissionLevel != null) {
      _json["permissionLevel"] = permissionLevel;
    }
    if (siteUrl != null) {
      _json["siteUrl"] = siteUrl;
    }
    return _json;
  }
}

/// Contains detailed information about a specific URL submitted as a sitemap.
class WmxSitemap {
  /// The various content types in the sitemap.
  core.List<WmxSitemapContent> contents;

  /// Number of errors in the sitemap. These are issues with the sitemap itself
  /// that need to be fixed before it can be processed correctly.
  core.String errors;

  /// If true, the sitemap has not been processed.
  core.bool isPending;

  /// If true, the sitemap is a collection of sitemaps.
  core.bool isSitemapsIndex;

  /// Date & time in which this sitemap was last downloaded. Date format is in
  /// RFC 3339 format (yyyy-mm-dd).
  core.DateTime lastDownloaded;

  /// Date & time in which this sitemap was submitted. Date format is in RFC
  /// 3339 format (yyyy-mm-dd).
  core.DateTime lastSubmitted;

  /// The url of the sitemap.
  core.String path;

  /// The type of the sitemap. For example: rssFeed.
  core.String type;

  /// Number of warnings for the sitemap. These are generally non-critical
  /// issues with URLs in the sitemaps.
  core.String warnings;

  WmxSitemap();

  WmxSitemap.fromJson(core.Map _json) {
    if (_json.containsKey("contents")) {
      contents = (_json["contents"] as core.List)
          .map<WmxSitemapContent>(
              (value) => new WmxSitemapContent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("errors")) {
      errors = _json["errors"];
    }
    if (_json.containsKey("isPending")) {
      isPending = _json["isPending"];
    }
    if (_json.containsKey("isSitemapsIndex")) {
      isSitemapsIndex = _json["isSitemapsIndex"];
    }
    if (_json.containsKey("lastDownloaded")) {
      lastDownloaded = core.DateTime.parse(_json["lastDownloaded"]);
    }
    if (_json.containsKey("lastSubmitted")) {
      lastSubmitted = core.DateTime.parse(_json["lastSubmitted"]);
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contents != null) {
      _json["contents"] = contents.map((value) => (value).toJson()).toList();
    }
    if (errors != null) {
      _json["errors"] = errors;
    }
    if (isPending != null) {
      _json["isPending"] = isPending;
    }
    if (isSitemapsIndex != null) {
      _json["isSitemapsIndex"] = isSitemapsIndex;
    }
    if (lastDownloaded != null) {
      _json["lastDownloaded"] = (lastDownloaded).toIso8601String();
    }
    if (lastSubmitted != null) {
      _json["lastSubmitted"] = (lastSubmitted).toIso8601String();
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (warnings != null) {
      _json["warnings"] = warnings;
    }
    return _json;
  }
}

/// Information about the various content types in the sitemap.
class WmxSitemapContent {
  /// The number of URLs from the sitemap that were indexed (of the content
  /// type).
  core.String indexed;

  /// The number of URLs in the sitemap (of the content type).
  core.String submitted;

  /// The specific type of content in this sitemap. For example: web.
  core.String type;

  WmxSitemapContent();

  WmxSitemapContent.fromJson(core.Map _json) {
    if (_json.containsKey("indexed")) {
      indexed = _json["indexed"];
    }
    if (_json.containsKey("submitted")) {
      submitted = _json["submitted"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexed != null) {
      _json["indexed"] = indexed;
    }
    if (submitted != null) {
      _json["submitted"] = submitted;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}
