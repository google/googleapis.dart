// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.pagespeedonline.v4;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client pagespeedonline/v4';

/// Analyzes the performance of a web page and provides tailored suggestions to
/// make that page faster.
class PagespeedonlineApi {
  final commons.ApiRequester _requester;

  PagespeedapiResourceApi get pagespeedapi =>
      new PagespeedapiResourceApi(_requester);

  PagespeedonlineApi(http.Client client,
      {core.String rootUrl: "https://www.googleapis.com/",
      core.String servicePath: "pagespeedonline/v4/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class PagespeedapiResourceApi {
  final commons.ApiRequester _requester;

  PagespeedapiResourceApi(commons.ApiRequester client) : _requester = client;

  /// Runs PageSpeed analysis on the page at the specified URL, and returns
  /// PageSpeed scores, a list of suggestions to make that page faster, and
  /// other information.
  ///
  /// Request parameters:
  ///
  /// [url] - The URL to fetch and analyze
  /// Value must have pattern "(?i)(site:|origin:)?http(s)?://.*".
  ///
  /// [filterThirdPartyResources] - Indicates if third party resources should be
  /// filtered out before PageSpeed analysis.
  ///
  /// [locale] - The locale used to localize formatted results
  /// Value must have pattern "[a-zA-Z]+(_[a-zA-Z]+)?".
  ///
  /// [rule] - A PageSpeed rule to run; if none are given, all rules are run
  /// Value must have pattern "[a-zA-Z]+".
  ///
  /// [screenshot] - Indicates if binary data containing a screenshot should be
  /// included
  ///
  /// [snapshots] - Indicates if binary data containing snapshot images should
  /// be included
  ///
  /// [strategy] - The analysis strategy (desktop or mobile) to use, and desktop
  /// is the default
  /// Possible string values are:
  /// - "desktop" : Fetch and analyze the URL for desktop browsers
  /// - "mobile" : Fetch and analyze the URL for mobile devices
  ///
  /// [utmCampaign] - Campaign name for analytics.
  ///
  /// [utmSource] - Campaign source for analytics.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PagespeedApiPagespeedResponseV4].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PagespeedApiPagespeedResponseV4> runpagespeed(core.String url,
      {core.bool filterThirdPartyResources,
      core.String locale,
      core.List<core.String> rule,
      core.bool screenshot,
      core.bool snapshots,
      core.String strategy,
      core.String utmCampaign,
      core.String utmSource,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (url == null) {
      throw new core.ArgumentError("Parameter url is required.");
    }
    _queryParams["url"] = [url];
    if (filterThirdPartyResources != null) {
      _queryParams["filter_third_party_resources"] = [
        "${filterThirdPartyResources}"
      ];
    }
    if (locale != null) {
      _queryParams["locale"] = [locale];
    }
    if (rule != null) {
      _queryParams["rule"] = rule;
    }
    if (screenshot != null) {
      _queryParams["screenshot"] = ["${screenshot}"];
    }
    if (snapshots != null) {
      _queryParams["snapshots"] = ["${snapshots}"];
    }
    if (strategy != null) {
      _queryParams["strategy"] = [strategy];
    }
    if (utmCampaign != null) {
      _queryParams["utm_campaign"] = [utmCampaign];
    }
    if (utmSource != null) {
      _queryParams["utm_source"] = [utmSource];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'runPagespeed';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new PagespeedApiPagespeedResponseV4.fromJson(data));
  }
}

class PagespeedApiFormatStringV4ArgsRects {
  core.int height;
  core.int left;
  core.int top;
  core.int width;

  PagespeedApiFormatStringV4ArgsRects();

  PagespeedApiFormatStringV4ArgsRects.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("left")) {
      left = _json["left"];
    }
    if (_json.containsKey("top")) {
      top = _json["top"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (height != null) {
      _json["height"] = height;
    }
    if (left != null) {
      _json["left"] = left;
    }
    if (top != null) {
      _json["top"] = top;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

class PagespeedApiFormatStringV4ArgsSecondaryRects {
  core.int height;
  core.int left;
  core.int top;
  core.int width;

  PagespeedApiFormatStringV4ArgsSecondaryRects();

  PagespeedApiFormatStringV4ArgsSecondaryRects.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("left")) {
      left = _json["left"];
    }
    if (_json.containsKey("top")) {
      top = _json["top"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (height != null) {
      _json["height"] = height;
    }
    if (left != null) {
      _json["left"] = left;
    }
    if (top != null) {
      _json["top"] = top;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

class PagespeedApiFormatStringV4Args {
  /// The placeholder key for this arg, as a string.
  core.String key;

  /// The screen rectangles being referred to, with dimensions measured in CSS
  /// pixels. This is only ever used for SNAPSHOT_RECT arguments. If this is
  /// absent for a SNAPSHOT_RECT argument, it means that that argument refers to
  /// the entire snapshot.
  core.List<PagespeedApiFormatStringV4ArgsRects> rects;

  /// Secondary screen rectangles being referred to, with dimensions measured in
  /// CSS pixels. This is only ever used for SNAPSHOT_RECT arguments.
  core.List<PagespeedApiFormatStringV4ArgsSecondaryRects> secondaryRects;

  /// Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES,
  /// DURATION, VERBATIM_STRING, PERCENTAGE, HYPERLINK, or SNAPSHOT_RECT.
  core.String type;

  /// Argument value, as a localized string.
  core.String value;

  PagespeedApiFormatStringV4Args();

  PagespeedApiFormatStringV4Args.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("rects")) {
      rects = (_json["rects"] as core.List)
          .map<PagespeedApiFormatStringV4ArgsRects>((value) =>
              new PagespeedApiFormatStringV4ArgsRects.fromJson(value))
          .toList();
    }
    if (_json.containsKey("secondary_rects")) {
      secondaryRects = (_json["secondary_rects"] as core.List)
          .map<PagespeedApiFormatStringV4ArgsSecondaryRects>((value) =>
              new PagespeedApiFormatStringV4ArgsSecondaryRects.fromJson(value))
          .toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (rects != null) {
      _json["rects"] = rects.map((value) => (value).toJson()).toList();
    }
    if (secondaryRects != null) {
      _json["secondary_rects"] =
          secondaryRects.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class PagespeedApiFormatStringV4 {
  /// List of arguments for the format string.
  core.List<PagespeedApiFormatStringV4Args> args;

  /// A localized format string with {{FOO}} placeholders, where 'FOO' is the
  /// key of the argument whose value should be substituted. For HYPERLINK
  /// arguments, the format string will instead contain {{BEGIN_FOO}} and
  /// {{END_FOO}} for the argument with key 'FOO'.
  core.String format;

  PagespeedApiFormatStringV4();

  PagespeedApiFormatStringV4.fromJson(core.Map _json) {
    if (_json.containsKey("args")) {
      args = (_json["args"] as core.List)
          .map<PagespeedApiFormatStringV4Args>(
              (value) => new PagespeedApiFormatStringV4Args.fromJson(value))
          .toList();
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (args != null) {
      _json["args"] = args.map((value) => (value).toJson()).toList();
    }
    if (format != null) {
      _json["format"] = format;
    }
    return _json;
  }
}

class PagespeedApiImageV4PageRect {
  core.int height;
  core.int left;
  core.int top;
  core.int width;

  PagespeedApiImageV4PageRect();

  PagespeedApiImageV4PageRect.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("left")) {
      left = _json["left"];
    }
    if (_json.containsKey("top")) {
      top = _json["top"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (height != null) {
      _json["height"] = height;
    }
    if (left != null) {
      _json["left"] = left;
    }
    if (top != null) {
      _json["top"] = top;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

class PagespeedApiImageV4 {
  /// Image data base64 encoded.
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.base64.decode(data);
  }

  void set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Height of screenshot in pixels.
  core.int height;

  /// Unique string key, if any, identifying this image.
  core.String key;

  /// Mime type of image data (e.g. "image/jpeg").
  core.String mimeType;
  PagespeedApiImageV4PageRect pageRect;

  /// Width of screenshot in pixels.
  core.int width;

  PagespeedApiImageV4();

  PagespeedApiImageV4.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("mime_type")) {
      mimeType = _json["mime_type"];
    }
    if (_json.containsKey("page_rect")) {
      pageRect = new PagespeedApiImageV4PageRect.fromJson(_json["page_rect"]);
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (mimeType != null) {
      _json["mime_type"] = mimeType;
    }
    if (pageRect != null) {
      _json["page_rect"] = (pageRect).toJson();
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

class PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls {
  /// List of entries that provide additional details about a single URL.
  /// Optional.
  core.List<PagespeedApiFormatStringV4> details;

  /// A format string that gives information about the URL, and a list of
  /// arguments for that format string.
  PagespeedApiFormatStringV4 result;

  PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls();

  PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls.fromJson(
      core.Map _json) {
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<PagespeedApiFormatStringV4>(
              (value) => new PagespeedApiFormatStringV4.fromJson(value))
          .toList();
    }
    if (_json.containsKey("result")) {
      result = new PagespeedApiFormatStringV4.fromJson(_json["result"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (details != null) {
      _json["details"] = details.map((value) => (value).toJson()).toList();
    }
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    return _json;
  }
}

class PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks {
  /// Heading to be displayed with the list of URLs.
  PagespeedApiFormatStringV4 header;

  /// List of entries that provide information about URLs in the url block.
  /// Optional.
  core.List<
          PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls>
      urls;

  PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks();

  PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks.fromJson(
      core.Map _json) {
    if (_json.containsKey("header")) {
      header = new PagespeedApiFormatStringV4.fromJson(_json["header"]);
    }
    if (_json.containsKey("urls")) {
      urls = (_json["urls"] as core.List)
          .map<PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls>(
              (value) =>
                  new PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    if (urls != null) {
      _json["urls"] = urls.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The enum-like identifier for this rule. For instance "EnableKeepAlive" or
/// "AvoidCssImport". Not localized.
class PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue {
  /// Whether this rule is in 'beta'. Rules in beta are new rules that are being
  /// tested, which do not impact the overall score.
  core.bool beta;

  /// List of rule groups that this rule belongs to. Each entry in the list is
  /// one of "SPEED", "USABILITY", or "SECURITY".
  core.List<core.String> groups;

  /// Localized name of the rule, intended for presentation to a user.
  core.String localizedRuleName;

  /// The impact (unbounded floating point value) that implementing the
  /// suggestions for this rule would have on making the page faster. Impact is
  /// comparable between rules to determine which rule's suggestions would have
  /// a higher or lower impact on making a page faster. For instance, if
  /// enabling compression would save 1MB, while optimizing images would save
  /// 500kB, the enable compression rule would have 2x the impact of the image
  /// optimization rule, all other things being equal.
  core.double ruleImpact;

  /// A brief summary description for the rule, indicating at a high level what
  /// should be done to follow the rule and what benefit can be gained by doing
  /// so.
  PagespeedApiFormatStringV4 summary;

  /// List of blocks of URLs. Each block may contain a heading and a list of
  /// URLs. Each URL may optionally include additional details.
  core.List<
          PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks>
      urlBlocks;

  PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue();

  PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue.fromJson(
      core.Map _json) {
    if (_json.containsKey("beta")) {
      beta = _json["beta"];
    }
    if (_json.containsKey("groups")) {
      groups = (_json["groups"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("localizedRuleName")) {
      localizedRuleName = _json["localizedRuleName"];
    }
    if (_json.containsKey("ruleImpact")) {
      ruleImpact = _json["ruleImpact"].toDouble();
    }
    if (_json.containsKey("summary")) {
      summary = new PagespeedApiFormatStringV4.fromJson(_json["summary"]);
    }
    if (_json.containsKey("urlBlocks")) {
      urlBlocks = (_json["urlBlocks"] as core.List)
          .map<PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks>(
              (value) =>
                  new PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (beta != null) {
      _json["beta"] = beta;
    }
    if (groups != null) {
      _json["groups"] = groups;
    }
    if (localizedRuleName != null) {
      _json["localizedRuleName"] = localizedRuleName;
    }
    if (ruleImpact != null) {
      _json["ruleImpact"] = ruleImpact;
    }
    if (summary != null) {
      _json["summary"] = (summary).toJson();
    }
    if (urlBlocks != null) {
      _json["urlBlocks"] = urlBlocks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Localized PageSpeed results. Contains a ruleResults entry for each PageSpeed
/// rule instantiated and run by the server.
class PagespeedApiPagespeedResponseV4FormattedResults {
  /// The locale of the formattedResults, e.g. "en_US".
  core.String locale;

  /// Dictionary of formatted rule results, with one entry for each PageSpeed
  /// rule instantiated and run by the server.
  core.Map<core.String,
          PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue>
      ruleResults;

  PagespeedApiPagespeedResponseV4FormattedResults();

  PagespeedApiPagespeedResponseV4FormattedResults.fromJson(core.Map _json) {
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("ruleResults")) {
      ruleResults = commons.mapMap<core.Map,
              PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue>(
          _json["ruleResults"].cast<core.String, core.Map>(),
          (core.Map item) =>
              new PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue
                  .fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (ruleResults != null) {
      _json["ruleResults"] = commons.mapMap<
              PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue,
              core.Map<core.String, core.Object>>(
          ruleResults,
          (PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue
                  item) =>
              (item).toJson());
    }
    return _json;
  }
}

class PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions {
  core.int max;
  core.int min;
  core.double proportion;

  PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions();

  PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions.fromJson(
      core.Map _json) {
    if (_json.containsKey("max")) {
      max = _json["max"];
    }
    if (_json.containsKey("min")) {
      min = _json["min"];
    }
    if (_json.containsKey("proportion")) {
      proportion = _json["proportion"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (max != null) {
      _json["max"] = max;
    }
    if (min != null) {
      _json["min"] = min;
    }
    if (proportion != null) {
      _json["proportion"] = proportion;
    }
    return _json;
  }
}

/// The type of the metric.
class PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue {
  core.String category;
  core.List<
          PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions>
      distributions;
  core.int median;

  PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue();

  PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue.fromJson(
      core.Map _json) {
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("distributions")) {
      distributions = (_json["distributions"] as core.List)
          .map<PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions>(
              (value) =>
                  new PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("median")) {
      median = _json["median"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (category != null) {
      _json["category"] = category;
    }
    if (distributions != null) {
      _json["distributions"] =
          distributions.map((value) => (value).toJson()).toList();
    }
    if (median != null) {
      _json["median"] = median;
    }
    return _json;
  }
}

/// Metrics of end users' page loading experience.
class PagespeedApiPagespeedResponseV4LoadingExperience {
  /// The url, pattern or origin which the metrics are on.
  core.String id;
  core.String initialUrl;
  core.Map<core.String,
      PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue> metrics;
  core.String overallCategory;

  PagespeedApiPagespeedResponseV4LoadingExperience();

  PagespeedApiPagespeedResponseV4LoadingExperience.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("initial_url")) {
      initialUrl = _json["initial_url"];
    }
    if (_json.containsKey("metrics")) {
      metrics = commons.mapMap<core.Map,
              PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue>(
          _json["metrics"].cast<core.String, core.Map>(),
          (core.Map item) =>
              new PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue
                  .fromJson(item));
    }
    if (_json.containsKey("overall_category")) {
      overallCategory = _json["overall_category"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (initialUrl != null) {
      _json["initial_url"] = initialUrl;
    }
    if (metrics != null) {
      _json["metrics"] = commons.mapMap<
              PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue,
              core.Map<core.String, core.Object>>(
          metrics,
          (PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue item) =>
              (item).toJson());
    }
    if (overallCategory != null) {
      _json["overall_category"] = overallCategory;
    }
    return _json;
  }
}

/// Summary statistics for the page, such as number of JavaScript bytes, number
/// of HTML bytes, etc.
class PagespeedApiPagespeedResponseV4PageStats {
  /// Content management system (CMS) used for the page.
  core.String cms;

  /// Number of uncompressed response bytes for CSS resources on the page.
  core.String cssResponseBytes;

  /// Number of response bytes for flash resources on the page.
  core.String flashResponseBytes;

  /// Number of uncompressed response bytes for the main HTML document and all
  /// iframes on the page.
  core.String htmlResponseBytes;

  /// Number of response bytes for image resources on the page.
  core.String imageResponseBytes;

  /// Number of uncompressed response bytes for JS resources on the page.
  core.String javascriptResponseBytes;

  /// The needed round trips to load render blocking resources
  core.int numRenderBlockingRoundTrips;

  /// The needed round trips to load the full page
  core.int numTotalRoundTrips;

  /// Number of CSS resources referenced by the page.
  core.int numberCssResources;

  /// Number of unique hosts referenced by the page.
  core.int numberHosts;

  /// Number of JavaScript resources referenced by the page.
  core.int numberJsResources;

  /// Number of HTTP resources loaded by the page.
  core.int numberResources;

  /// Number of roboted resources.
  core.int numberRobotedResources;

  /// Number of static (i.e. cacheable) resources on the page.
  core.int numberStaticResources;

  /// Number of transient-failed resources.
  core.int numberTransientFetchFailureResources;

  /// Number of response bytes for other resources on the page.
  core.String otherResponseBytes;

  /// Number of over-the-wire bytes, uses the default gzip compression strategy
  /// as an estimation.
  core.String overTheWireResponseBytes;

  /// List of roboted urls.
  core.List<core.String> robotedUrls;

  /// Number of uncompressed response bytes for text resources not covered by
  /// other statistics (i.e non-HTML, non-script, non-CSS resources) on the
  /// page.
  core.String textResponseBytes;

  /// Total size of all request bytes sent by the page.
  core.String totalRequestBytes;

  /// List of transient fetch failure urls.
  core.List<core.String> transientFetchFailureUrls;

  PagespeedApiPagespeedResponseV4PageStats();

  PagespeedApiPagespeedResponseV4PageStats.fromJson(core.Map _json) {
    if (_json.containsKey("cms")) {
      cms = _json["cms"];
    }
    if (_json.containsKey("cssResponseBytes")) {
      cssResponseBytes = _json["cssResponseBytes"];
    }
    if (_json.containsKey("flashResponseBytes")) {
      flashResponseBytes = _json["flashResponseBytes"];
    }
    if (_json.containsKey("htmlResponseBytes")) {
      htmlResponseBytes = _json["htmlResponseBytes"];
    }
    if (_json.containsKey("imageResponseBytes")) {
      imageResponseBytes = _json["imageResponseBytes"];
    }
    if (_json.containsKey("javascriptResponseBytes")) {
      javascriptResponseBytes = _json["javascriptResponseBytes"];
    }
    if (_json.containsKey("numRenderBlockingRoundTrips")) {
      numRenderBlockingRoundTrips = _json["numRenderBlockingRoundTrips"];
    }
    if (_json.containsKey("numTotalRoundTrips")) {
      numTotalRoundTrips = _json["numTotalRoundTrips"];
    }
    if (_json.containsKey("numberCssResources")) {
      numberCssResources = _json["numberCssResources"];
    }
    if (_json.containsKey("numberHosts")) {
      numberHosts = _json["numberHosts"];
    }
    if (_json.containsKey("numberJsResources")) {
      numberJsResources = _json["numberJsResources"];
    }
    if (_json.containsKey("numberResources")) {
      numberResources = _json["numberResources"];
    }
    if (_json.containsKey("numberRobotedResources")) {
      numberRobotedResources = _json["numberRobotedResources"];
    }
    if (_json.containsKey("numberStaticResources")) {
      numberStaticResources = _json["numberStaticResources"];
    }
    if (_json.containsKey("numberTransientFetchFailureResources")) {
      numberTransientFetchFailureResources =
          _json["numberTransientFetchFailureResources"];
    }
    if (_json.containsKey("otherResponseBytes")) {
      otherResponseBytes = _json["otherResponseBytes"];
    }
    if (_json.containsKey("overTheWireResponseBytes")) {
      overTheWireResponseBytes = _json["overTheWireResponseBytes"];
    }
    if (_json.containsKey("robotedUrls")) {
      robotedUrls = (_json["robotedUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("textResponseBytes")) {
      textResponseBytes = _json["textResponseBytes"];
    }
    if (_json.containsKey("totalRequestBytes")) {
      totalRequestBytes = _json["totalRequestBytes"];
    }
    if (_json.containsKey("transientFetchFailureUrls")) {
      transientFetchFailureUrls =
          (_json["transientFetchFailureUrls"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cms != null) {
      _json["cms"] = cms;
    }
    if (cssResponseBytes != null) {
      _json["cssResponseBytes"] = cssResponseBytes;
    }
    if (flashResponseBytes != null) {
      _json["flashResponseBytes"] = flashResponseBytes;
    }
    if (htmlResponseBytes != null) {
      _json["htmlResponseBytes"] = htmlResponseBytes;
    }
    if (imageResponseBytes != null) {
      _json["imageResponseBytes"] = imageResponseBytes;
    }
    if (javascriptResponseBytes != null) {
      _json["javascriptResponseBytes"] = javascriptResponseBytes;
    }
    if (numRenderBlockingRoundTrips != null) {
      _json["numRenderBlockingRoundTrips"] = numRenderBlockingRoundTrips;
    }
    if (numTotalRoundTrips != null) {
      _json["numTotalRoundTrips"] = numTotalRoundTrips;
    }
    if (numberCssResources != null) {
      _json["numberCssResources"] = numberCssResources;
    }
    if (numberHosts != null) {
      _json["numberHosts"] = numberHosts;
    }
    if (numberJsResources != null) {
      _json["numberJsResources"] = numberJsResources;
    }
    if (numberResources != null) {
      _json["numberResources"] = numberResources;
    }
    if (numberRobotedResources != null) {
      _json["numberRobotedResources"] = numberRobotedResources;
    }
    if (numberStaticResources != null) {
      _json["numberStaticResources"] = numberStaticResources;
    }
    if (numberTransientFetchFailureResources != null) {
      _json["numberTransientFetchFailureResources"] =
          numberTransientFetchFailureResources;
    }
    if (otherResponseBytes != null) {
      _json["otherResponseBytes"] = otherResponseBytes;
    }
    if (overTheWireResponseBytes != null) {
      _json["overTheWireResponseBytes"] = overTheWireResponseBytes;
    }
    if (robotedUrls != null) {
      _json["robotedUrls"] = robotedUrls;
    }
    if (textResponseBytes != null) {
      _json["textResponseBytes"] = textResponseBytes;
    }
    if (totalRequestBytes != null) {
      _json["totalRequestBytes"] = totalRequestBytes;
    }
    if (transientFetchFailureUrls != null) {
      _json["transientFetchFailureUrls"] = transientFetchFailureUrls;
    }
    return _json;
  }
}

/// The name of this rule group: one of "SPEED", "USABILITY", or "SECURITY".
class PagespeedApiPagespeedResponseV4RuleGroupsValue {
  core.bool pass;

  /// The score (0-100) for this rule group, which indicates how much better a
  /// page could be in that category (e.g. how much faster, or how much more
  /// usable, or how much more secure). A high score indicates little room for
  /// improvement, while a lower score indicates more room for improvement.
  core.int score;

  PagespeedApiPagespeedResponseV4RuleGroupsValue();

  PagespeedApiPagespeedResponseV4RuleGroupsValue.fromJson(core.Map _json) {
    if (_json.containsKey("pass")) {
      pass = _json["pass"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pass != null) {
      _json["pass"] = pass;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// The version of PageSpeed used to generate these results.
class PagespeedApiPagespeedResponseV4Version {
  /// The major version number of PageSpeed used to generate these results.
  core.int major;

  /// The minor version number of PageSpeed used to generate these results.
  core.int minor;

  PagespeedApiPagespeedResponseV4Version();

  PagespeedApiPagespeedResponseV4Version.fromJson(core.Map _json) {
    if (_json.containsKey("major")) {
      major = _json["major"];
    }
    if (_json.containsKey("minor")) {
      minor = _json["minor"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (major != null) {
      _json["major"] = major;
    }
    if (minor != null) {
      _json["minor"] = minor;
    }
    return _json;
  }
}

class PagespeedApiPagespeedResponseV4 {
  /// The captcha verify result
  core.String captchaResult;

  /// Localized PageSpeed results. Contains a ruleResults entry for each
  /// PageSpeed rule instantiated and run by the server.
  PagespeedApiPagespeedResponseV4FormattedResults formattedResults;

  /// Canonicalized and final URL for the document, after following page
  /// redirects (if any).
  core.String id;

  /// List of rules that were specified in the request, but which the server did
  /// not know how to instantiate.
  core.List<core.String> invalidRules;

  /// Kind of result.
  core.String kind;

  /// Metrics of end users' page loading experience.
  PagespeedApiPagespeedResponseV4LoadingExperience loadingExperience;

  /// Summary statistics for the page, such as number of JavaScript bytes,
  /// number of HTML bytes, etc.
  PagespeedApiPagespeedResponseV4PageStats pageStats;

  /// Response code for the document. 200 indicates a normal page load. 4xx/5xx
  /// indicates an error.
  core.int responseCode;

  /// A map with one entry for each rule group in these results.
  core.Map<core.String, PagespeedApiPagespeedResponseV4RuleGroupsValue>
      ruleGroups;

  /// Base64-encoded screenshot of the page that was analyzed.
  PagespeedApiImageV4 screenshot;

  /// Additional base64-encoded screenshots of the page, in various partial
  /// render states.
  core.List<PagespeedApiImageV4> snapshots;

  /// Title of the page, as displayed in the browser's title bar.
  core.String title;

  /// The version of PageSpeed used to generate these results.
  PagespeedApiPagespeedResponseV4Version version;

  PagespeedApiPagespeedResponseV4();

  PagespeedApiPagespeedResponseV4.fromJson(core.Map _json) {
    if (_json.containsKey("captchaResult")) {
      captchaResult = _json["captchaResult"];
    }
    if (_json.containsKey("formattedResults")) {
      formattedResults =
          new PagespeedApiPagespeedResponseV4FormattedResults.fromJson(
              _json["formattedResults"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("invalidRules")) {
      invalidRules = (_json["invalidRules"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("loadingExperience")) {
      loadingExperience =
          new PagespeedApiPagespeedResponseV4LoadingExperience.fromJson(
              _json["loadingExperience"]);
    }
    if (_json.containsKey("pageStats")) {
      pageStats = new PagespeedApiPagespeedResponseV4PageStats.fromJson(
          _json["pageStats"]);
    }
    if (_json.containsKey("responseCode")) {
      responseCode = _json["responseCode"];
    }
    if (_json.containsKey("ruleGroups")) {
      ruleGroups = commons
          .mapMap<core.Map, PagespeedApiPagespeedResponseV4RuleGroupsValue>(
              _json["ruleGroups"].cast<core.String, core.Map>(),
              (core.Map item) =>
                  new PagespeedApiPagespeedResponseV4RuleGroupsValue.fromJson(
                      item));
    }
    if (_json.containsKey("screenshot")) {
      screenshot = new PagespeedApiImageV4.fromJson(_json["screenshot"]);
    }
    if (_json.containsKey("snapshots")) {
      snapshots = (_json["snapshots"] as core.List)
          .map<PagespeedApiImageV4>(
              (value) => new PagespeedApiImageV4.fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("version")) {
      version =
          new PagespeedApiPagespeedResponseV4Version.fromJson(_json["version"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (captchaResult != null) {
      _json["captchaResult"] = captchaResult;
    }
    if (formattedResults != null) {
      _json["formattedResults"] = (formattedResults).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (invalidRules != null) {
      _json["invalidRules"] = invalidRules;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (loadingExperience != null) {
      _json["loadingExperience"] = (loadingExperience).toJson();
    }
    if (pageStats != null) {
      _json["pageStats"] = (pageStats).toJson();
    }
    if (responseCode != null) {
      _json["responseCode"] = responseCode;
    }
    if (ruleGroups != null) {
      _json["ruleGroups"] = commons.mapMap<
              PagespeedApiPagespeedResponseV4RuleGroupsValue,
              core.Map<core.String, core.Object>>(
          ruleGroups,
          (PagespeedApiPagespeedResponseV4RuleGroupsValue item) =>
              (item).toJson());
    }
    if (screenshot != null) {
      _json["screenshot"] = (screenshot).toJson();
    }
    if (snapshots != null) {
      _json["snapshots"] = snapshots.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (version != null) {
      _json["version"] = (version).toJson();
    }
    return _json;
  }
}
