// This is a generated file (see the discoveryapis_generator project).

library googleapis.webmasters.v3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client webmasters/v3';

/** Lets you view Google Webmaster Tools data for your verified sites. */
class WebmastersApi {
  /** View and modify Webmaster Tools data for your verified sites */
  static const WebmastersScope = "https://www.googleapis.com/auth/webmasters";

  /** View Webmaster Tools data for your verified sites */
  static const WebmastersReadonlyScope = "https://www.googleapis.com/auth/webmasters.readonly";


  final commons.ApiRequester _requester;

  SitemapsResourceApi get sitemaps => new SitemapsResourceApi(_requester);
  SitesResourceApi get sites => new SitesResourceApi(_requester);
  UrlcrawlerrorscountsResourceApi get urlcrawlerrorscounts => new UrlcrawlerrorscountsResourceApi(_requester);
  UrlcrawlerrorssamplesResourceApi get urlcrawlerrorssamples => new UrlcrawlerrorssamplesResourceApi(_requester);

  WebmastersApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "webmasters/v3/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class SitemapsResourceApi {
  final commons.ApiRequester _requester;

  SitemapsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a sitemap from this site.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * [feedpath] - The URL of the actual sitemap (for example
   * http://www.example.com/sitemap.xml).
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String siteUrl, core.String feedpath) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (feedpath == null) {
      throw new core.ArgumentError("Parameter feedpath is required.");
    }

    _downloadOptions = null;

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/sitemaps/' + commons.Escaper.ecapeVariable('$feedpath');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves information about a specific sitemap.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * [feedpath] - The URL of the actual sitemap (for example
   * http://www.example.com/sitemap.xml).
   *
   * Completes with a [WmxSitemap].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<WmxSitemap> get(core.String siteUrl, core.String feedpath) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (feedpath == null) {
      throw new core.ArgumentError("Parameter feedpath is required.");
    }

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/sitemaps/' + commons.Escaper.ecapeVariable('$feedpath');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new WmxSitemap.fromJson(data));
  }

  /**
   * Lists sitemaps uploaded to the site.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * [sitemapIndex] - A URL of a site's sitemap index.
   *
   * Completes with a [SitemapsListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SitemapsListResponse> list(core.String siteUrl, {core.String sitemapIndex}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (sitemapIndex != null) {
      _queryParams["sitemapIndex"] = [sitemapIndex];
    }

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/sitemaps';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SitemapsListResponse.fromJson(data));
  }

  /**
   * Submits a sitemap for a site.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * [feedpath] - The URL of the sitemap to add.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future submit(core.String siteUrl, core.String feedpath) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (feedpath == null) {
      throw new core.ArgumentError("Parameter feedpath is required.");
    }

    _downloadOptions = null;

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/sitemaps/' + commons.Escaper.ecapeVariable('$feedpath');

    var _response = _requester.request(_url,
                                       "PUT",
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

  SitesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Adds a site to the set of the user's sites in Webmaster Tools.
   *
   * Request parameters:
   *
   * [siteUrl] - The URL of the site to add.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future add(core.String siteUrl) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }

    _downloadOptions = null;

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Removes a site from the set of the user's Webmaster Tools sites.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String siteUrl) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }

    _downloadOptions = null;

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves information about specific site.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * Completes with a [WmxSite].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<WmxSite> get(core.String siteUrl) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new WmxSite.fromJson(data));
  }

  /**
   * Lists your Webmaster Tools sites.
   *
   * Request parameters:
   *
   * Completes with a [SitesListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SitesListResponse> list() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;


    _url = 'sites';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SitesListResponse.fromJson(data));
  }

}


class UrlcrawlerrorscountsResourceApi {
  final commons.ApiRequester _requester;

  UrlcrawlerrorscountsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a time series of the number of URL crawl errors per error
   * category and platform.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * [category] - The crawl error category, for example 'serverError'. If not
   * specified, we return results for all categories.
   * Possible string values are:
   * - "authPermissions"
   * - "manyToOneRedirect"
   * - "notFollowed"
   * - "notFound"
   * - "other"
   * - "roboted"
   * - "serverError"
   * - "soft404"
   *
   * [latestCountsOnly] - If true, returns only the latest crawl error counts.
   *
   * [platform] - The user agent type (platform) that made the request, for
   * example 'web'. If not specified, we return results for all platforms.
   * Possible string values are:
   * - "mobile"
   * - "smartphoneOnly"
   * - "web"
   *
   * Completes with a [UrlCrawlErrorsCountsQueryResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UrlCrawlErrorsCountsQueryResponse> query(core.String siteUrl, {core.String category, core.bool latestCountsOnly, core.String platform}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (category != null) {
      _queryParams["category"] = [category];
    }
    if (latestCountsOnly != null) {
      _queryParams["latestCountsOnly"] = ["${latestCountsOnly}"];
    }
    if (platform != null) {
      _queryParams["platform"] = [platform];
    }

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/urlCrawlErrorsCounts/query';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlCrawlErrorsCountsQueryResponse.fromJson(data));
  }

}


class UrlcrawlerrorssamplesResourceApi {
  final commons.ApiRequester _requester;

  UrlcrawlerrorssamplesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves details about crawl errors for a site's sample URL.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * [url] - The relative path (without the site) of the sample URL; must be one
   * of the URLs returned by list
   *
   * [category] - The crawl error category, for example 'authPermissions'
   * Possible string values are:
   * - "authPermissions"
   * - "manyToOneRedirect"
   * - "notFollowed"
   * - "notFound"
   * - "other"
   * - "roboted"
   * - "serverError"
   * - "soft404"
   *
   * [platform] - The user agent type (platform) that made the request, for
   * example 'web'
   * Possible string values are:
   * - "mobile"
   * - "smartphoneOnly"
   * - "web"
   *
   * Completes with a [UrlCrawlErrorsSample].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UrlCrawlErrorsSample> get(core.String siteUrl, core.String url, core.String category, core.String platform) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (url == null) {
      throw new core.ArgumentError("Parameter url is required.");
    }
    if (category == null) {
      throw new core.ArgumentError("Parameter category is required.");
    }
    _queryParams["category"] = [category];
    if (platform == null) {
      throw new core.ArgumentError("Parameter platform is required.");
    }
    _queryParams["platform"] = [platform];

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/urlCrawlErrorsSamples/' + commons.Escaper.ecapeVariable('$url');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlCrawlErrorsSample.fromJson(data));
  }

  /**
   * Lists a site's sample URLs for the specified crawl error category and
   * platform.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * [category] - The crawl error category, for example 'authPermissions'
   * Possible string values are:
   * - "authPermissions"
   * - "manyToOneRedirect"
   * - "notFollowed"
   * - "notFound"
   * - "other"
   * - "roboted"
   * - "serverError"
   * - "soft404"
   *
   * [platform] - The user agent type (platform) that made the request, for
   * example 'web'
   * Possible string values are:
   * - "mobile"
   * - "smartphoneOnly"
   * - "web"
   *
   * Completes with a [UrlCrawlErrorsSamplesListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UrlCrawlErrorsSamplesListResponse> list(core.String siteUrl, core.String category, core.String platform) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (category == null) {
      throw new core.ArgumentError("Parameter category is required.");
    }
    _queryParams["category"] = [category];
    if (platform == null) {
      throw new core.ArgumentError("Parameter platform is required.");
    }
    _queryParams["platform"] = [platform];

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/urlCrawlErrorsSamples';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlCrawlErrorsSamplesListResponse.fromJson(data));
  }

  /**
   * Marks the provided site's sample URL as fixed, and removes it from the
   * samples list.
   *
   * Request parameters:
   *
   * [siteUrl] - The site's URL, including protocol, for example
   * 'http://www.example.com/'
   *
   * [url] - The relative path (without the site) of the sample URL; must be one
   * of the URLs returned by list
   *
   * [category] - The crawl error category, for example 'authPermissions'
   * Possible string values are:
   * - "authPermissions"
   * - "manyToOneRedirect"
   * - "notFollowed"
   * - "notFound"
   * - "other"
   * - "roboted"
   * - "serverError"
   * - "soft404"
   *
   * [platform] - The user agent type (platform) that made the request, for
   * example 'web'
   * Possible string values are:
   * - "mobile"
   * - "smartphoneOnly"
   * - "web"
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future markAsFixed(core.String siteUrl, core.String url, core.String category, core.String platform) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (siteUrl == null) {
      throw new core.ArgumentError("Parameter siteUrl is required.");
    }
    if (url == null) {
      throw new core.ArgumentError("Parameter url is required.");
    }
    if (category == null) {
      throw new core.ArgumentError("Parameter category is required.");
    }
    _queryParams["category"] = [category];
    if (platform == null) {
      throw new core.ArgumentError("Parameter platform is required.");
    }
    _queryParams["platform"] = [platform];

    _downloadOptions = null;

    _url = 'sites/' + commons.Escaper.ecapeVariable('$siteUrl') + '/urlCrawlErrorsSamples/' + commons.Escaper.ecapeVariable('$url');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

}



/** List of sitemaps. */
class SitemapsListResponse {
  /** Information about a sitemap entry. */
  core.List<WmxSitemap> sitemap;

  SitemapsListResponse();

  SitemapsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("sitemap")) {
      sitemap = _json["sitemap"].map((value) => new WmxSitemap.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sitemap != null) {
      _json["sitemap"] = sitemap.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** List of sites with access level information. */
class SitesListResponse {
  /** Access level information for a Webmaster Tools site. */
  core.List<WmxSite> siteEntry;

  SitesListResponse();

  SitesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("siteEntry")) {
      siteEntry = _json["siteEntry"].map((value) => new WmxSite.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (siteEntry != null) {
      _json["siteEntry"] = siteEntry.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** An entry in a URL crawl errors time series. */
class UrlCrawlErrorCount {
  /** The error count at the given timestamp. */
  core.String count;
  /** The time (well, date) when errors were detected, in RFC 3339 format. */
  core.DateTime timestamp;

  UrlCrawlErrorCount();

  UrlCrawlErrorCount.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = core.DateTime.parse(_json["timestamp"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (count != null) {
      _json["count"] = count;
    }
    if (timestamp != null) {
      _json["timestamp"] = (timestamp).toIso8601String();
    }
    return _json;
  }
}

/**
 * Number of errors per day for a specific error type (defined by platform and
 * category).
 */
class UrlCrawlErrorCountsPerType {
  /** The crawl error type. */
  core.String category;
  /** The error count entries time series. */
  core.List<UrlCrawlErrorCount> entries;
  /** Corresponding to the user agent that made the request. */
  core.String platform;

  UrlCrawlErrorCountsPerType();

  UrlCrawlErrorCountsPerType.fromJson(core.Map _json) {
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new UrlCrawlErrorCount.fromJson(value)).toList();
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (category != null) {
      _json["category"] = category;
    }
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (platform != null) {
      _json["platform"] = platform;
    }
    return _json;
  }
}

/**
 * A time series of the number of URL crawl errors per error category and
 * platform.
 */
class UrlCrawlErrorsCountsQueryResponse {
  /**
   * The time series of the number of URL crawl errors for per error category
   * and platform.
   */
  core.List<UrlCrawlErrorCountsPerType> countPerTypes;

  UrlCrawlErrorsCountsQueryResponse();

  UrlCrawlErrorsCountsQueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("countPerTypes")) {
      countPerTypes = _json["countPerTypes"].map((value) => new UrlCrawlErrorCountsPerType.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (countPerTypes != null) {
      _json["countPerTypes"] = countPerTypes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class UrlCrawlErrorsSample {
  /** The time the error was first detected, in RFC 3339 format. */
  core.DateTime firstDetected;
  /** The time when the URL was last crawled, in RFC 3339 format. */
  core.DateTime lastCrawled;
  /** The URL of an error, relative to the site. */
  core.String pageUrl;
  /** The HTTP response code, if any. */
  core.int responseCode;
  /** Additional details about the URL, set only when calling get(). */
  UrlSampleDetails urlDetails;

  UrlCrawlErrorsSample();

  UrlCrawlErrorsSample.fromJson(core.Map _json) {
    if (_json.containsKey("first_detected")) {
      firstDetected = core.DateTime.parse(_json["first_detected"]);
    }
    if (_json.containsKey("last_crawled")) {
      lastCrawled = core.DateTime.parse(_json["last_crawled"]);
    }
    if (_json.containsKey("pageUrl")) {
      pageUrl = _json["pageUrl"];
    }
    if (_json.containsKey("responseCode")) {
      responseCode = _json["responseCode"];
    }
    if (_json.containsKey("urlDetails")) {
      urlDetails = new UrlSampleDetails.fromJson(_json["urlDetails"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (firstDetected != null) {
      _json["first_detected"] = (firstDetected).toIso8601String();
    }
    if (lastCrawled != null) {
      _json["last_crawled"] = (lastCrawled).toIso8601String();
    }
    if (pageUrl != null) {
      _json["pageUrl"] = pageUrl;
    }
    if (responseCode != null) {
      _json["responseCode"] = responseCode;
    }
    if (urlDetails != null) {
      _json["urlDetails"] = (urlDetails).toJson();
    }
    return _json;
  }
}

/** List of crawl error samples. */
class UrlCrawlErrorsSamplesListResponse {
  /** Information about the sample URL and its crawl error. */
  core.List<UrlCrawlErrorsSample> urlCrawlErrorSample;

  UrlCrawlErrorsSamplesListResponse();

  UrlCrawlErrorsSamplesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("urlCrawlErrorSample")) {
      urlCrawlErrorSample = _json["urlCrawlErrorSample"].map((value) => new UrlCrawlErrorsSample.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (urlCrawlErrorSample != null) {
      _json["urlCrawlErrorSample"] = urlCrawlErrorSample.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Additional details about the URL, set only when calling get(). */
class UrlSampleDetails {
  /** List of sitemaps pointing at this URL. */
  core.List<core.String> containingSitemaps;
  /** A sample set of URLs linking to this URL. */
  core.List<core.String> linkedFromUrls;

  UrlSampleDetails();

  UrlSampleDetails.fromJson(core.Map _json) {
    if (_json.containsKey("containingSitemaps")) {
      containingSitemaps = _json["containingSitemaps"];
    }
    if (_json.containsKey("linkedFromUrls")) {
      linkedFromUrls = _json["linkedFromUrls"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (containingSitemaps != null) {
      _json["containingSitemaps"] = containingSitemaps;
    }
    if (linkedFromUrls != null) {
      _json["linkedFromUrls"] = linkedFromUrls;
    }
    return _json;
  }
}

/** Access level information for a Webmaster Tools site. */
class WmxSite {
  /** The user's permission level for the site. */
  core.String permissionLevel;
  /** The URL of the site. */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (permissionLevel != null) {
      _json["permissionLevel"] = permissionLevel;
    }
    if (siteUrl != null) {
      _json["siteUrl"] = siteUrl;
    }
    return _json;
  }
}

class WmxSitemap {
  /** The various content types in the sitemap. */
  core.List<WmxSitemapContent> contents;
  /**
   * Number of errors in the sitemap - issues with the sitemap itself, that
   * needs to be fixed before it can be processed correctly.
   */
  core.String errors;
  /** If true, the sitemap has not been processed. */
  core.bool isPending;
  /** If true, the sitemap is a collection of sitemaps. */
  core.bool isSitemapsIndex;
  /**
   * Date & time in which this sitemap was last downloaded. Date format is in
   * RFC 3339 format (yyyy-mm-dd).
   */
  core.DateTime lastDownloaded;
  /**
   * Date & time in which this sitemap was submitted. Date format is in RFC 3339
   * format (yyyy-mm-dd).
   */
  core.DateTime lastSubmitted;
  /** The url of the sitemap. */
  core.String path;
  /** The type of the sitemap (for example "sitemap"). */
  core.String type;
  /** Number of warnings for the sitemap - issues with URLs in the sitemaps. */
  core.String warnings;

  WmxSitemap();

  WmxSitemap.fromJson(core.Map _json) {
    if (_json.containsKey("contents")) {
      contents = _json["contents"].map((value) => new WmxSitemapContent.fromJson(value)).toList();
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** Information about the various content types in the sitemap. */
class WmxSitemapContent {
  /**
   * The number of URLs from the sitemap that were indexed (of the content
   * type).
   */
  core.String indexed;
  /** The number of URLs in the sitemap (of the content type). */
  core.String submitted;
  /**
   * The specific type of content in this sitemap (for example "web", "images").
   */
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

  core.Map toJson() {
    var _json = new core.Map();
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
