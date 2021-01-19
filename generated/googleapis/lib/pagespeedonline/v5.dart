// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.pagespeedonline.v5;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client pagespeedonline/v5';

/// The PageSpeed Insights API lets you analyze the performance of your website
/// with a simple API. It offers tailored suggestions for how you can optimize
/// your site, and lets you easily integrate PageSpeed Insights analysis into
/// your development tools and workflow.
class PagespeedonlineApi {
  /// Associate you with your personal info on Google
  static const OpenidScope = 'openid';

  final commons.ApiRequester _requester;

  PagespeedapiResourceApi get pagespeedapi =>
      PagespeedapiResourceApi(_requester);

  PagespeedonlineApi(http.Client client,
      {core.String rootUrl = 'https://pagespeedonline.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
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
  /// [captchaToken] - The captcha token passed when filling out a captcha.
  ///
  /// [category] - A Lighthouse category to run; if none are given, only
  /// Performance category will be run
  ///
  /// [locale] - The locale used to localize formatted results
  ///
  /// [strategy] - The analysis strategy (desktop or mobile) to use, and desktop
  /// is the default
  /// Possible string values are:
  /// - "STRATEGY_UNSPECIFIED" : UNDEFINED.
  /// - "DESKTOP" : Fetch and analyze the URL for desktop browsers.
  /// - "MOBILE" : Fetch and analyze the URL for mobile devices.
  ///
  /// [url] - Required. The URL to fetch and analyze
  ///
  /// [utmCampaign] - Campaign name for analytics.
  ///
  /// [utmSource] - Campaign source for analytics.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PagespeedApiPagespeedResponseV5].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PagespeedApiPagespeedResponseV5> runpagespeed({
    core.String captchaToken,
    core.List<core.String> category,
    core.String locale,
    core.String strategy,
    core.String url,
    core.String utmCampaign,
    core.String utmSource,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (captchaToken != null) {
      _queryParams['captchaToken'] = [captchaToken];
    }
    if (category != null) {
      _queryParams['category'] = category;
    }
    if (locale != null) {
      _queryParams['locale'] = [locale];
    }
    if (strategy != null) {
      _queryParams['strategy'] = [strategy];
    }
    if (url != null) {
      _queryParams['url'] = [url];
    }
    if (utmCampaign != null) {
      _queryParams['utm_campaign'] = [utmCampaign];
    }
    if (utmSource != null) {
      _queryParams['utm_source'] = [utmSource];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'pagespeedonline/v5/runPagespeed';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => PagespeedApiPagespeedResponseV5.fromJson(data));
  }
}

/// A light reference to an audit by id, used to group and weight audits in a
/// given category.
class AuditRefs {
  /// The category group that the audit belongs to (optional).
  core.String group;

  /// The audit ref id.
  core.String id;

  /// The weight this audit's score has on the overall category score.
  core.double weight;

  AuditRefs();

  AuditRefs.fromJson(core.Map _json) {
    if (_json.containsKey('group')) {
      group = _json['group'];
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('weight')) {
      weight = _json['weight'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (group != null) {
      _json['group'] = group;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (weight != null) {
      _json['weight'] = weight;
    }
    return _json;
  }
}

/// A proportion of data in the total distribution, bucketed by a min/max
/// percentage. Each bucket's range is bounded by min <= x < max, In
/// millisecond.
class Bucket {
  /// Upper bound for a bucket's range.
  core.int max;

  /// Lower bound for a bucket's range.
  core.int min;

  /// The proportion of data in this bucket.
  core.double proportion;

  Bucket();

  Bucket.fromJson(core.Map _json) {
    if (_json.containsKey('max')) {
      max = _json['max'];
    }
    if (_json.containsKey('min')) {
      min = _json['min'];
    }
    if (_json.containsKey('proportion')) {
      proportion = _json['proportion'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (max != null) {
      _json['max'] = max;
    }
    if (min != null) {
      _json['min'] = min;
    }
    if (proportion != null) {
      _json['proportion'] = proportion;
    }
    return _json;
  }
}

/// The categories in a Lighthouse run.
class Categories {
  /// The accessibility category, containing all accessibility related audits.
  LighthouseCategoryV5 accessibility;

  /// The best practices category, containing all best practices related audits.
  LighthouseCategoryV5 best_practices;

  /// The performance category, containing all performance related audits.
  LighthouseCategoryV5 performance;

  /// The Progressive-Web-App (PWA) category, containing all pwa related audits.
  LighthouseCategoryV5 pwa;

  /// The Search-Engine-Optimization (SEO) category, containing all seo related
  /// audits.
  LighthouseCategoryV5 seo;

  Categories();

  Categories.fromJson(core.Map _json) {
    if (_json.containsKey('accessibility')) {
      accessibility = LighthouseCategoryV5.fromJson(_json['accessibility']);
    }
    if (_json.containsKey('best-practices')) {
      best_practices = LighthouseCategoryV5.fromJson(_json['best-practices']);
    }
    if (_json.containsKey('performance')) {
      performance = LighthouseCategoryV5.fromJson(_json['performance']);
    }
    if (_json.containsKey('pwa')) {
      pwa = LighthouseCategoryV5.fromJson(_json['pwa']);
    }
    if (_json.containsKey('seo')) {
      seo = LighthouseCategoryV5.fromJson(_json['seo']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accessibility != null) {
      _json['accessibility'] = accessibility.toJson();
    }
    if (best_practices != null) {
      _json['best-practices'] = best_practices.toJson();
    }
    if (performance != null) {
      _json['performance'] = performance.toJson();
    }
    if (pwa != null) {
      _json['pwa'] = pwa.toJson();
    }
    if (seo != null) {
      _json['seo'] = seo.toJson();
    }
    return _json;
  }
}

/// Message containing a category
class CategoryGroupV5 {
  /// The description of what the category is grouping
  core.String description;

  /// The human readable title of the group
  core.String title;

  CategoryGroupV5();

  CategoryGroupV5.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Message containing the configuration settings for the Lighthouse run.
class ConfigSettings {
  /// How Lighthouse was run, e.g. from the Chrome extension or from the npm
  /// module.
  core.String channel;

  /// The form factor the emulation should use.
  core.String emulatedFormFactor;

  /// The locale setting.
  core.String locale;

  /// List of categories of audits the run should conduct.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object onlyCategories;

  ConfigSettings();

  ConfigSettings.fromJson(core.Map _json) {
    if (_json.containsKey('channel')) {
      channel = _json['channel'];
    }
    if (_json.containsKey('emulatedFormFactor')) {
      emulatedFormFactor = _json['emulatedFormFactor'];
    }
    if (_json.containsKey('locale')) {
      locale = _json['locale'];
    }
    if (_json.containsKey('onlyCategories')) {
      onlyCategories = _json['onlyCategories'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (channel != null) {
      _json['channel'] = channel;
    }
    if (emulatedFormFactor != null) {
      _json['emulatedFormFactor'] = emulatedFormFactor;
    }
    if (locale != null) {
      _json['locale'] = locale;
    }
    if (onlyCategories != null) {
      _json['onlyCategories'] = onlyCategories;
    }
    return _json;
  }
}

/// Message containing environment configuration for a Lighthouse run.
class Environment {
  /// The benchmark index number that indicates rough device class.
  core.double benchmarkIndex;

  /// The user agent string of the version of Chrome used.
  core.String hostUserAgent;

  /// The user agent string that was sent over the network.
  core.String networkUserAgent;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey('benchmarkIndex')) {
      benchmarkIndex = _json['benchmarkIndex'].toDouble();
    }
    if (_json.containsKey('hostUserAgent')) {
      hostUserAgent = _json['hostUserAgent'];
    }
    if (_json.containsKey('networkUserAgent')) {
      networkUserAgent = _json['networkUserAgent'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (benchmarkIndex != null) {
      _json['benchmarkIndex'] = benchmarkIndex;
    }
    if (hostUserAgent != null) {
      _json['hostUserAgent'] = hostUserAgent;
    }
    if (networkUserAgent != null) {
      _json['networkUserAgent'] = networkUserAgent;
    }
    return _json;
  }
}

/// Message containing the i18n data for the LHR - Version 1.
class I18n {
  /// Internationalized strings that are formatted to the locale in
  /// configSettings.
  RendererFormattedStrings rendererFormattedStrings;

  I18n();

  I18n.fromJson(core.Map _json) {
    if (_json.containsKey('rendererFormattedStrings')) {
      rendererFormattedStrings =
          RendererFormattedStrings.fromJson(_json['rendererFormattedStrings']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (rendererFormattedStrings != null) {
      _json['rendererFormattedStrings'] = rendererFormattedStrings.toJson();
    }
    return _json;
  }
}

/// An audit's result object in a Lighthouse result.
class LighthouseAuditResultV5 {
  /// The description of the audit.
  core.String description;

  /// Freeform details section of the audit.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> details;

  /// The value that should be displayed on the UI for this audit.
  core.String displayValue;

  /// An error message from a thrown error inside the audit.
  core.String errorMessage;

  /// An explanation of the errors in the audit.
  core.String explanation;

  /// The audit's id.
  core.String id;

  /// A numeric value that has a meaning specific to the audit, e.g. the number
  /// of nodes in the DOM or the timestamp of a specific load event. More
  /// information can be found in the audit details, if present.
  core.double numericValue;

  /// The score of the audit, can be null.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object score;

  /// The enumerated score display mode.
  core.String scoreDisplayMode;

  /// The human readable title.
  core.String title;

  /// Possible warnings that occurred in the audit, can be null.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object warnings;

  LighthouseAuditResultV5();

  LighthouseAuditResultV5.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('displayValue')) {
      displayValue = _json['displayValue'];
    }
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'];
    }
    if (_json.containsKey('explanation')) {
      explanation = _json['explanation'];
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('numericValue')) {
      numericValue = _json['numericValue'].toDouble();
    }
    if (_json.containsKey('score')) {
      score = _json['score'];
    }
    if (_json.containsKey('scoreDisplayMode')) {
      scoreDisplayMode = _json['scoreDisplayMode'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
    if (_json.containsKey('warnings')) {
      warnings = _json['warnings'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (displayValue != null) {
      _json['displayValue'] = displayValue;
    }
    if (errorMessage != null) {
      _json['errorMessage'] = errorMessage;
    }
    if (explanation != null) {
      _json['explanation'] = explanation;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (numericValue != null) {
      _json['numericValue'] = numericValue;
    }
    if (score != null) {
      _json['score'] = score;
    }
    if (scoreDisplayMode != null) {
      _json['scoreDisplayMode'] = scoreDisplayMode;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (warnings != null) {
      _json['warnings'] = warnings;
    }
    return _json;
  }
}

/// A Lighthouse category.
class LighthouseCategoryV5 {
  /// An array of references to all the audit members of this category.
  core.List<AuditRefs> auditRefs;

  /// A more detailed description of the category and its importance.
  core.String description;

  /// The string identifier of the category.
  core.String id;

  /// A description for the manual audits in the category.
  core.String manualDescription;

  /// The overall score of the category, the weighted average of all its audits.
  /// (The category's score, can be null.)
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object score;

  /// The human-friendly name of the category.
  core.String title;

  LighthouseCategoryV5();

  LighthouseCategoryV5.fromJson(core.Map _json) {
    if (_json.containsKey('auditRefs')) {
      auditRefs = (_json['auditRefs'] as core.List)
          .map<AuditRefs>((value) => AuditRefs.fromJson(value))
          .toList();
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('manualDescription')) {
      manualDescription = _json['manualDescription'];
    }
    if (_json.containsKey('score')) {
      score = _json['score'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (auditRefs != null) {
      _json['auditRefs'] = auditRefs.map((value) => value.toJson()).toList();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (manualDescription != null) {
      _json['manualDescription'] = manualDescription;
    }
    if (score != null) {
      _json['score'] = score;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// The Lighthouse result object.
class LighthouseResultV5 {
  /// Map of audits in the LHR.
  core.Map<core.String, LighthouseAuditResultV5> audits;

  /// Map of categories in the LHR.
  Categories categories;

  /// Map of category groups in the LHR.
  core.Map<core.String, CategoryGroupV5> categoryGroups;

  /// The configuration settings for this LHR.
  ConfigSettings configSettings;

  /// Environment settings that were used when making this LHR.
  Environment environment;

  /// The time that this run was fetched.
  core.String fetchTime;

  /// The final resolved url that was audited.
  core.String finalUrl;

  /// The internationalization strings that are required to render the LHR.
  I18n i18n;

  /// The lighthouse version that was used to generate this LHR.
  core.String lighthouseVersion;

  /// The original requested url.
  core.String requestedUrl;

  /// List of all run warnings in the LHR. Will always output to at least `[]`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> runWarnings;

  /// A top-level error message that, if present, indicates a serious enough
  /// problem that this Lighthouse result may need to be discarded.
  RuntimeError runtimeError;

  /// The Stack Pack advice strings.
  core.List<StackPack> stackPacks;

  /// Timing information for this LHR.
  Timing timing;

  /// The user agent that was used to run this LHR.
  core.String userAgent;

  LighthouseResultV5();

  LighthouseResultV5.fromJson(core.Map _json) {
    if (_json.containsKey('audits')) {
      audits = commons.mapMap<core.Map, LighthouseAuditResultV5>(
          _json['audits'].cast<core.String, core.Map>(),
          (core.Map item) => LighthouseAuditResultV5.fromJson(item));
    }
    if (_json.containsKey('categories')) {
      categories = Categories.fromJson(_json['categories']);
    }
    if (_json.containsKey('categoryGroups')) {
      categoryGroups = commons.mapMap<core.Map, CategoryGroupV5>(
          _json['categoryGroups'].cast<core.String, core.Map>(),
          (core.Map item) => CategoryGroupV5.fromJson(item));
    }
    if (_json.containsKey('configSettings')) {
      configSettings = ConfigSettings.fromJson(_json['configSettings']);
    }
    if (_json.containsKey('environment')) {
      environment = Environment.fromJson(_json['environment']);
    }
    if (_json.containsKey('fetchTime')) {
      fetchTime = _json['fetchTime'];
    }
    if (_json.containsKey('finalUrl')) {
      finalUrl = _json['finalUrl'];
    }
    if (_json.containsKey('i18n')) {
      i18n = I18n.fromJson(_json['i18n']);
    }
    if (_json.containsKey('lighthouseVersion')) {
      lighthouseVersion = _json['lighthouseVersion'];
    }
    if (_json.containsKey('requestedUrl')) {
      requestedUrl = _json['requestedUrl'];
    }
    if (_json.containsKey('runWarnings')) {
      runWarnings = (_json['runWarnings'] as core.List).cast<core.Object>();
    }
    if (_json.containsKey('runtimeError')) {
      runtimeError = RuntimeError.fromJson(_json['runtimeError']);
    }
    if (_json.containsKey('stackPacks')) {
      stackPacks = (_json['stackPacks'] as core.List)
          .map<StackPack>((value) => StackPack.fromJson(value))
          .toList();
    }
    if (_json.containsKey('timing')) {
      timing = Timing.fromJson(_json['timing']);
    }
    if (_json.containsKey('userAgent')) {
      userAgent = _json['userAgent'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (audits != null) {
      _json['audits'] = commons
          .mapMap<LighthouseAuditResultV5, core.Map<core.String, core.Object>>(
              audits, (LighthouseAuditResultV5 item) => item.toJson());
    }
    if (categories != null) {
      _json['categories'] = categories.toJson();
    }
    if (categoryGroups != null) {
      _json['categoryGroups'] =
          commons.mapMap<CategoryGroupV5, core.Map<core.String, core.Object>>(
              categoryGroups, (CategoryGroupV5 item) => item.toJson());
    }
    if (configSettings != null) {
      _json['configSettings'] = configSettings.toJson();
    }
    if (environment != null) {
      _json['environment'] = environment.toJson();
    }
    if (fetchTime != null) {
      _json['fetchTime'] = fetchTime;
    }
    if (finalUrl != null) {
      _json['finalUrl'] = finalUrl;
    }
    if (i18n != null) {
      _json['i18n'] = i18n.toJson();
    }
    if (lighthouseVersion != null) {
      _json['lighthouseVersion'] = lighthouseVersion;
    }
    if (requestedUrl != null) {
      _json['requestedUrl'] = requestedUrl;
    }
    if (runWarnings != null) {
      _json['runWarnings'] = runWarnings;
    }
    if (runtimeError != null) {
      _json['runtimeError'] = runtimeError.toJson();
    }
    if (stackPacks != null) {
      _json['stackPacks'] = stackPacks.map((value) => value.toJson()).toList();
    }
    if (timing != null) {
      _json['timing'] = timing.toJson();
    }
    if (userAgent != null) {
      _json['userAgent'] = userAgent;
    }
    return _json;
  }
}

/// The CrUX loading experience object that contains CrUX data breakdowns.
class PagespeedApiLoadingExperienceV5 {
  /// The url, pattern or origin which the metrics are on.
  core.String id;

  /// The requested URL, which may differ from the resolved "id".
  core.String initialUrl;

  /// The map of .
  core.Map<core.String, UserPageLoadMetricV5> metrics;

  /// True if the result is an origin fallback from a page, false otherwise.
  core.bool originFallback;

  /// The human readable speed "category" of the id.
  core.String overallCategory;

  PagespeedApiLoadingExperienceV5();

  PagespeedApiLoadingExperienceV5.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('initial_url')) {
      initialUrl = _json['initial_url'];
    }
    if (_json.containsKey('metrics')) {
      metrics = commons.mapMap<core.Map, UserPageLoadMetricV5>(
          _json['metrics'].cast<core.String, core.Map>(),
          (core.Map item) => UserPageLoadMetricV5.fromJson(item));
    }
    if (_json.containsKey('origin_fallback')) {
      originFallback = _json['origin_fallback'];
    }
    if (_json.containsKey('overall_category')) {
      overallCategory = _json['overall_category'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (initialUrl != null) {
      _json['initial_url'] = initialUrl;
    }
    if (metrics != null) {
      _json['metrics'] = commons
          .mapMap<UserPageLoadMetricV5, core.Map<core.String, core.Object>>(
              metrics, (UserPageLoadMetricV5 item) => item.toJson());
    }
    if (originFallback != null) {
      _json['origin_fallback'] = originFallback;
    }
    if (overallCategory != null) {
      _json['overall_category'] = overallCategory;
    }
    return _json;
  }
}

/// The Pagespeed API response object.
class PagespeedApiPagespeedResponseV5 {
  /// The UTC timestamp of this analysis.
  core.String analysisUTCTimestamp;

  /// The captcha verify result
  core.String captchaResult;

  /// Canonicalized and final URL for the document, after following page
  /// redirects (if any).
  core.String id;

  /// Kind of result.
  core.String kind;

  /// Lighthouse response for the audit url as an object.
  LighthouseResultV5 lighthouseResult;

  /// Metrics of end users' page loading experience.
  PagespeedApiLoadingExperienceV5 loadingExperience;

  /// Metrics of the aggregated page loading experience of the origin
  PagespeedApiLoadingExperienceV5 originLoadingExperience;

  /// The version of PageSpeed used to generate these results.
  PagespeedVersion version;

  PagespeedApiPagespeedResponseV5();

  PagespeedApiPagespeedResponseV5.fromJson(core.Map _json) {
    if (_json.containsKey('analysisUTCTimestamp')) {
      analysisUTCTimestamp = _json['analysisUTCTimestamp'];
    }
    if (_json.containsKey('captchaResult')) {
      captchaResult = _json['captchaResult'];
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('lighthouseResult')) {
      lighthouseResult = LighthouseResultV5.fromJson(_json['lighthouseResult']);
    }
    if (_json.containsKey('loadingExperience')) {
      loadingExperience =
          PagespeedApiLoadingExperienceV5.fromJson(_json['loadingExperience']);
    }
    if (_json.containsKey('originLoadingExperience')) {
      originLoadingExperience = PagespeedApiLoadingExperienceV5.fromJson(
          _json['originLoadingExperience']);
    }
    if (_json.containsKey('version')) {
      version = PagespeedVersion.fromJson(_json['version']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (analysisUTCTimestamp != null) {
      _json['analysisUTCTimestamp'] = analysisUTCTimestamp;
    }
    if (captchaResult != null) {
      _json['captchaResult'] = captchaResult;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (lighthouseResult != null) {
      _json['lighthouseResult'] = lighthouseResult.toJson();
    }
    if (loadingExperience != null) {
      _json['loadingExperience'] = loadingExperience.toJson();
    }
    if (originLoadingExperience != null) {
      _json['originLoadingExperience'] = originLoadingExperience.toJson();
    }
    if (version != null) {
      _json['version'] = version.toJson();
    }
    return _json;
  }
}

/// The Pagespeed Version object.
class PagespeedVersion {
  /// The major version number of PageSpeed used to generate these results.
  core.String major;

  /// The minor version number of PageSpeed used to generate these results.
  core.String minor;

  PagespeedVersion();

  PagespeedVersion.fromJson(core.Map _json) {
    if (_json.containsKey('major')) {
      major = _json['major'];
    }
    if (_json.containsKey('minor')) {
      minor = _json['minor'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (major != null) {
      _json['major'] = major;
    }
    if (minor != null) {
      _json['minor'] = minor;
    }
    return _json;
  }
}

/// Message holding the formatted strings used in the renderer.
class RendererFormattedStrings {
  /// The tooltip text on an expandable chevron icon.
  core.String auditGroupExpandTooltip;

  /// The label for the initial request in a critical request chain.
  core.String crcInitialNavigation;

  /// The label for values shown in the summary of critical request chains.
  core.String crcLongestDurationLabel;

  /// The label shown next to an audit or metric that has had an error.
  core.String errorLabel;

  /// The error string shown next to an erroring audit.
  core.String errorMissingAuditInfo;

  /// The title of the lab data performance category.
  core.String labDataTitle;

  /// The disclaimer shown under performance explaning that the network can
  /// vary.
  core.String lsPerformanceCategoryDescription;

  /// The heading shown above a list of audits that were not computerd in the
  /// run.
  core.String manualAuditsGroupTitle;

  /// The heading shown above a list of audits that do not apply to a page.
  core.String notApplicableAuditsGroupTitle;

  /// The heading for the estimated page load savings opportunity of an audit.
  core.String opportunityResourceColumnLabel;

  /// The heading for the estimated page load savings of opportunity audits.
  core.String opportunitySavingsColumnLabel;

  /// The heading that is shown above a list of audits that are passing.
  core.String passedAuditsGroupTitle;

  /// The label that explains the score gauges scale (0-49, 50-89, 90-100).
  core.String scorescaleLabel;

  /// The label shown preceding important warnings that may have invalidated an
  /// entire report.
  core.String toplevelWarningsMessage;

  /// The disclaimer shown below a performance metric value.
  core.String varianceDisclaimer;

  /// The label shown above a bulleted list of warnings.
  core.String warningHeader;

  RendererFormattedStrings();

  RendererFormattedStrings.fromJson(core.Map _json) {
    if (_json.containsKey('auditGroupExpandTooltip')) {
      auditGroupExpandTooltip = _json['auditGroupExpandTooltip'];
    }
    if (_json.containsKey('crcInitialNavigation')) {
      crcInitialNavigation = _json['crcInitialNavigation'];
    }
    if (_json.containsKey('crcLongestDurationLabel')) {
      crcLongestDurationLabel = _json['crcLongestDurationLabel'];
    }
    if (_json.containsKey('errorLabel')) {
      errorLabel = _json['errorLabel'];
    }
    if (_json.containsKey('errorMissingAuditInfo')) {
      errorMissingAuditInfo = _json['errorMissingAuditInfo'];
    }
    if (_json.containsKey('labDataTitle')) {
      labDataTitle = _json['labDataTitle'];
    }
    if (_json.containsKey('lsPerformanceCategoryDescription')) {
      lsPerformanceCategoryDescription =
          _json['lsPerformanceCategoryDescription'];
    }
    if (_json.containsKey('manualAuditsGroupTitle')) {
      manualAuditsGroupTitle = _json['manualAuditsGroupTitle'];
    }
    if (_json.containsKey('notApplicableAuditsGroupTitle')) {
      notApplicableAuditsGroupTitle = _json['notApplicableAuditsGroupTitle'];
    }
    if (_json.containsKey('opportunityResourceColumnLabel')) {
      opportunityResourceColumnLabel = _json['opportunityResourceColumnLabel'];
    }
    if (_json.containsKey('opportunitySavingsColumnLabel')) {
      opportunitySavingsColumnLabel = _json['opportunitySavingsColumnLabel'];
    }
    if (_json.containsKey('passedAuditsGroupTitle')) {
      passedAuditsGroupTitle = _json['passedAuditsGroupTitle'];
    }
    if (_json.containsKey('scorescaleLabel')) {
      scorescaleLabel = _json['scorescaleLabel'];
    }
    if (_json.containsKey('toplevelWarningsMessage')) {
      toplevelWarningsMessage = _json['toplevelWarningsMessage'];
    }
    if (_json.containsKey('varianceDisclaimer')) {
      varianceDisclaimer = _json['varianceDisclaimer'];
    }
    if (_json.containsKey('warningHeader')) {
      warningHeader = _json['warningHeader'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (auditGroupExpandTooltip != null) {
      _json['auditGroupExpandTooltip'] = auditGroupExpandTooltip;
    }
    if (crcInitialNavigation != null) {
      _json['crcInitialNavigation'] = crcInitialNavigation;
    }
    if (crcLongestDurationLabel != null) {
      _json['crcLongestDurationLabel'] = crcLongestDurationLabel;
    }
    if (errorLabel != null) {
      _json['errorLabel'] = errorLabel;
    }
    if (errorMissingAuditInfo != null) {
      _json['errorMissingAuditInfo'] = errorMissingAuditInfo;
    }
    if (labDataTitle != null) {
      _json['labDataTitle'] = labDataTitle;
    }
    if (lsPerformanceCategoryDescription != null) {
      _json['lsPerformanceCategoryDescription'] =
          lsPerformanceCategoryDescription;
    }
    if (manualAuditsGroupTitle != null) {
      _json['manualAuditsGroupTitle'] = manualAuditsGroupTitle;
    }
    if (notApplicableAuditsGroupTitle != null) {
      _json['notApplicableAuditsGroupTitle'] = notApplicableAuditsGroupTitle;
    }
    if (opportunityResourceColumnLabel != null) {
      _json['opportunityResourceColumnLabel'] = opportunityResourceColumnLabel;
    }
    if (opportunitySavingsColumnLabel != null) {
      _json['opportunitySavingsColumnLabel'] = opportunitySavingsColumnLabel;
    }
    if (passedAuditsGroupTitle != null) {
      _json['passedAuditsGroupTitle'] = passedAuditsGroupTitle;
    }
    if (scorescaleLabel != null) {
      _json['scorescaleLabel'] = scorescaleLabel;
    }
    if (toplevelWarningsMessage != null) {
      _json['toplevelWarningsMessage'] = toplevelWarningsMessage;
    }
    if (varianceDisclaimer != null) {
      _json['varianceDisclaimer'] = varianceDisclaimer;
    }
    if (warningHeader != null) {
      _json['warningHeader'] = warningHeader;
    }
    return _json;
  }
}

/// Message containing a runtime error config.
class RuntimeError {
  /// The enumerated Lighthouse Error code.
  core.String code;

  /// A human readable message explaining the error code.
  core.String message;

  RuntimeError();

  RuntimeError.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Message containing Stack Pack information.
class StackPack {
  /// The stack pack advice strings.
  core.Map<core.String, core.String> descriptions;

  /// The stack pack icon data uri.
  core.String iconDataURL;

  /// The stack pack id.
  core.String id;

  /// The stack pack title.
  core.String title;

  StackPack();

  StackPack.fromJson(core.Map _json) {
    if (_json.containsKey('descriptions')) {
      descriptions =
          (_json['descriptions'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('iconDataURL')) {
      iconDataURL = _json['iconDataURL'];
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (descriptions != null) {
      _json['descriptions'] = descriptions;
    }
    if (iconDataURL != null) {
      _json['iconDataURL'] = iconDataURL;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Message containing the performance timing data for the Lighthouse run.
class Timing {
  /// The total duration of Lighthouse's run.
  core.double total;

  Timing();

  Timing.fromJson(core.Map _json) {
    if (_json.containsKey('total')) {
      total = _json['total'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (total != null) {
      _json['total'] = total;
    }
    return _json;
  }
}

/// A CrUX metric object for a single metric and form factor.
class UserPageLoadMetricV5 {
  /// The category of the specific time metric.
  core.String category;

  /// Metric distributions. Proportions should sum up to 1.
  core.List<Bucket> distributions;

  /// Identifies the form factor of the metric being collected.
  core.String formFactor;

  /// The median number of the metric, in millisecond.
  core.int median;

  /// Identifies the type of the metric.
  core.String metricId;

  /// We use this field to store certain percentile value for this metric. For
  /// v4, this field contains pc50. For v5, this field contains pc90.
  core.int percentile;

  UserPageLoadMetricV5();

  UserPageLoadMetricV5.fromJson(core.Map _json) {
    if (_json.containsKey('category')) {
      category = _json['category'];
    }
    if (_json.containsKey('distributions')) {
      distributions = (_json['distributions'] as core.List)
          .map<Bucket>((value) => Bucket.fromJson(value))
          .toList();
    }
    if (_json.containsKey('formFactor')) {
      formFactor = _json['formFactor'];
    }
    if (_json.containsKey('median')) {
      median = _json['median'];
    }
    if (_json.containsKey('metricId')) {
      metricId = _json['metricId'];
    }
    if (_json.containsKey('percentile')) {
      percentile = _json['percentile'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (category != null) {
      _json['category'] = category;
    }
    if (distributions != null) {
      _json['distributions'] =
          distributions.map((value) => value.toJson()).toList();
    }
    if (formFactor != null) {
      _json['formFactor'] = formFactor;
    }
    if (median != null) {
      _json['median'] = median;
    }
    if (metricId != null) {
      _json['metricId'] = metricId;
    }
    if (percentile != null) {
      _json['percentile'] = percentile;
    }
    return _json;
  }
}
