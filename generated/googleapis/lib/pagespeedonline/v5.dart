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

/// PageSpeed Insights API - v5
///
/// The PageSpeed Insights API lets you analyze the performance of your website
/// with a simple API. It offers tailored suggestions for how you can optimize
/// your site, and lets you easily integrate PageSpeed Insights analysis into
/// your development tools and workflow.
///
/// For more information, see
/// <https://developers.google.com/speed/docs/insights/v5/about>
///
/// Create an instance of [PagespeedInsightsApi] to access these resources:
///
/// - [PagespeedapiResource]
library pagespeedonline.v5;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The PageSpeed Insights API lets you analyze the performance of your website
/// with a simple API.
///
/// It offers tailored suggestions for how you can optimize your site, and lets
/// you easily integrate PageSpeed Insights analysis into your development tools
/// and workflow.
class PagespeedInsightsApi {
  /// Associate you with your personal info on Google
  static const openidScope = 'openid';

  final commons.ApiRequester _requester;

  PagespeedapiResource get pagespeedapi => PagespeedapiResource(_requester);

  PagespeedInsightsApi(http.Client client,
      {core.String rootUrl = 'https://pagespeedonline.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PagespeedapiResource {
  final commons.ApiRequester _requester;

  PagespeedapiResource(commons.ApiRequester client) : _requester = client;

  /// Runs PageSpeed analysis on the page at the specified URL, and returns
  /// PageSpeed scores, a list of suggestions to make that page faster, and
  /// other information.
  ///
  /// Request parameters:
  ///
  /// [url] - Required. The URL to fetch and analyze
  /// Value must have pattern `(?i)(url:|origin:)?http(s)?://.*`.
  ///
  /// [captchaToken] - The captcha token passed when filling out a captcha.
  ///
  /// [category] - A Lighthouse category to run; if none are given, only
  /// Performance category will be run
  ///
  /// [locale] - The locale used to localize formatted results
  /// Value must have pattern `\[a-zA-Z\]+((_|-)\[a-zA-Z\]+)?`.
  ///
  /// [strategy] - The analysis strategy (desktop or mobile) to use, and desktop
  /// is the default
  /// Possible string values are:
  /// - "STRATEGY_UNSPECIFIED" : UNDEFINED.
  /// - "DESKTOP" : Fetch and analyze the URL for desktop browsers.
  /// - "MOBILE" : Fetch and analyze the URL for mobile devices.
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
  async.Future<PagespeedApiPagespeedResponseV5> runpagespeed(
    core.String url, {
    core.String? captchaToken,
    core.List<core.String>? category,
    core.String? locale,
    core.String? strategy,
    core.String? utmCampaign,
    core.String? utmSource,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'url': [url],
      if (captchaToken != null) 'captchaToken': [captchaToken],
      if (category != null) 'category': category,
      if (locale != null) 'locale': [locale],
      if (strategy != null) 'strategy': [strategy],
      if (utmCampaign != null) 'utm_campaign': [utmCampaign],
      if (utmSource != null) 'utm_source': [utmSource],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'pagespeedonline/v5/runPagespeed';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PagespeedApiPagespeedResponseV5.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A light reference to an audit by id, used to group and weight audits in a
/// given category.
class AuditRefs {
  /// The conventional acronym for the audit/metric.
  core.String? acronym;

  /// The category group that the audit belongs to (optional).
  core.String? group;

  /// The audit ref id.
  core.String? id;

  /// Any audit IDs closely relevant to this one.
  core.List<core.String>? relevantAudits;

  /// The weight this audit's score has on the overall category score.
  core.double? weight;

  AuditRefs({
    this.acronym,
    this.group,
    this.id,
    this.relevantAudits,
    this.weight,
  });

  AuditRefs.fromJson(core.Map _json)
      : this(
          acronym: _json.containsKey('acronym')
              ? _json['acronym'] as core.String
              : null,
          group:
              _json.containsKey('group') ? _json['group'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          relevantAudits: _json.containsKey('relevantAudits')
              ? (_json['relevantAudits'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          weight: _json.containsKey('weight')
              ? (_json['weight'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acronym != null) 'acronym': acronym!,
        if (group != null) 'group': group!,
        if (id != null) 'id': id!,
        if (relevantAudits != null) 'relevantAudits': relevantAudits!,
        if (weight != null) 'weight': weight!,
      };
}

/// A proportion of data in the total distribution, bucketed by a min/max
/// percentage.
///
/// Each bucket's range is bounded by min \<= x \< max, In millisecond.
class Bucket {
  /// Upper bound for a bucket's range.
  core.int? max;

  /// Lower bound for a bucket's range.
  core.int? min;

  /// The proportion of data in this bucket.
  core.double? proportion;

  Bucket({
    this.max,
    this.min,
    this.proportion,
  });

  Bucket.fromJson(core.Map _json)
      : this(
          max: _json.containsKey('max') ? _json['max'] as core.int : null,
          min: _json.containsKey('min') ? _json['min'] as core.int : null,
          proportion: _json.containsKey('proportion')
              ? (_json['proportion'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
        if (proportion != null) 'proportion': proportion!,
      };
}

/// The categories in a Lighthouse run.
class Categories {
  /// The accessibility category, containing all accessibility related audits.
  LighthouseCategoryV5? accessibility;

  /// The best practices category, containing all best practices related audits.
  LighthouseCategoryV5? bestPractices;

  /// The performance category, containing all performance related audits.
  LighthouseCategoryV5? performance;

  /// The Progressive-Web-App (PWA) category, containing all pwa related audits.
  LighthouseCategoryV5? pwa;

  /// The Search-Engine-Optimization (SEO) category, containing all seo related
  /// audits.
  LighthouseCategoryV5? seo;

  Categories({
    this.accessibility,
    this.bestPractices,
    this.performance,
    this.pwa,
    this.seo,
  });

  Categories.fromJson(core.Map _json)
      : this(
          accessibility: _json.containsKey('accessibility')
              ? LighthouseCategoryV5.fromJson(
                  _json['accessibility'] as core.Map<core.String, core.dynamic>)
              : null,
          bestPractices: _json.containsKey('best-practices')
              ? LighthouseCategoryV5.fromJson(_json['best-practices']
                  as core.Map<core.String, core.dynamic>)
              : null,
          performance: _json.containsKey('performance')
              ? LighthouseCategoryV5.fromJson(
                  _json['performance'] as core.Map<core.String, core.dynamic>)
              : null,
          pwa: _json.containsKey('pwa')
              ? LighthouseCategoryV5.fromJson(
                  _json['pwa'] as core.Map<core.String, core.dynamic>)
              : null,
          seo: _json.containsKey('seo')
              ? LighthouseCategoryV5.fromJson(
                  _json['seo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessibility != null) 'accessibility': accessibility!,
        if (bestPractices != null) 'best-practices': bestPractices!,
        if (performance != null) 'performance': performance!,
        if (pwa != null) 'pwa': pwa!,
        if (seo != null) 'seo': seo!,
      };
}

/// Message containing a category
class CategoryGroupV5 {
  /// The description of what the category is grouping
  core.String? description;

  /// The human readable title of the group
  core.String? title;

  CategoryGroupV5({
    this.description,
    this.title,
  });

  CategoryGroupV5.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (title != null) 'title': title!,
      };
}

/// Message containing the configuration settings for the Lighthouse run.
class ConfigSettings {
  /// How Lighthouse was run, e.g. from the Chrome extension or from the npm
  /// module.
  core.String? channel;

  /// The form factor the emulation should use.
  ///
  /// This field is deprecated, form_factor should be used instead.
  core.String? emulatedFormFactor;

  /// How Lighthouse should interpret this run in regards to scoring performance
  /// metrics and skipping mobile-only tests in desktop.
  core.String? formFactor;

  /// The locale setting.
  core.String? locale;

  /// List of categories of audits the run should conduct.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? onlyCategories;

  ConfigSettings({
    this.channel,
    this.emulatedFormFactor,
    this.formFactor,
    this.locale,
    this.onlyCategories,
  });

  ConfigSettings.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
          emulatedFormFactor: _json.containsKey('emulatedFormFactor')
              ? _json['emulatedFormFactor'] as core.String
              : null,
          formFactor: _json.containsKey('formFactor')
              ? _json['formFactor'] as core.String
              : null,
          locale: _json.containsKey('locale')
              ? _json['locale'] as core.String
              : null,
          onlyCategories: _json.containsKey('onlyCategories')
              ? _json['onlyCategories']
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (emulatedFormFactor != null)
          'emulatedFormFactor': emulatedFormFactor!,
        if (formFactor != null) 'formFactor': formFactor!,
        if (locale != null) 'locale': locale!,
        if (onlyCategories != null) 'onlyCategories': onlyCategories!,
      };
}

/// Message containing environment configuration for a Lighthouse run.
class Environment {
  /// The benchmark index number that indicates rough device class.
  core.double? benchmarkIndex;

  /// The user agent string of the version of Chrome used.
  core.String? hostUserAgent;

  /// The user agent string that was sent over the network.
  core.String? networkUserAgent;

  Environment({
    this.benchmarkIndex,
    this.hostUserAgent,
    this.networkUserAgent,
  });

  Environment.fromJson(core.Map _json)
      : this(
          benchmarkIndex: _json.containsKey('benchmarkIndex')
              ? (_json['benchmarkIndex'] as core.num).toDouble()
              : null,
          hostUserAgent: _json.containsKey('hostUserAgent')
              ? _json['hostUserAgent'] as core.String
              : null,
          networkUserAgent: _json.containsKey('networkUserAgent')
              ? _json['networkUserAgent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (benchmarkIndex != null) 'benchmarkIndex': benchmarkIndex!,
        if (hostUserAgent != null) 'hostUserAgent': hostUserAgent!,
        if (networkUserAgent != null) 'networkUserAgent': networkUserAgent!,
      };
}

/// Message containing the i18n data for the LHR - Version 1.
class I18n {
  /// Internationalized strings that are formatted to the locale in
  /// configSettings.
  RendererFormattedStrings? rendererFormattedStrings;

  I18n({
    this.rendererFormattedStrings,
  });

  I18n.fromJson(core.Map _json)
      : this(
          rendererFormattedStrings:
              _json.containsKey('rendererFormattedStrings')
                  ? RendererFormattedStrings.fromJson(
                      _json['rendererFormattedStrings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rendererFormattedStrings != null)
          'rendererFormattedStrings': rendererFormattedStrings!,
      };
}

/// An audit's result object in a Lighthouse result.
class LighthouseAuditResultV5 {
  /// The description of the audit.
  core.String? description;

  /// Freeform details section of the audit.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? details;

  /// The value that should be displayed on the UI for this audit.
  core.String? displayValue;

  /// An error message from a thrown error inside the audit.
  core.String? errorMessage;

  /// An explanation of the errors in the audit.
  core.String? explanation;

  /// The audit's id.
  core.String? id;

  /// The unit of the numeric_value field.
  ///
  /// Used to format the numeric value for display.
  core.String? numericUnit;

  /// A numeric value that has a meaning specific to the audit, e.g. the number
  /// of nodes in the DOM or the timestamp of a specific load event.
  ///
  /// More information can be found in the audit details, if present.
  core.double? numericValue;

  /// The score of the audit, can be null.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? score;

  /// The enumerated score display mode.
  core.String? scoreDisplayMode;

  /// The human readable title.
  core.String? title;

  /// Possible warnings that occurred in the audit, can be null.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? warnings;

  LighthouseAuditResultV5({
    this.description,
    this.details,
    this.displayValue,
    this.errorMessage,
    this.explanation,
    this.id,
    this.numericUnit,
    this.numericValue,
    this.score,
    this.scoreDisplayMode,
    this.title,
    this.warnings,
  });

  LighthouseAuditResultV5.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          details: _json.containsKey('details')
              ? _json['details'] as core.Map<core.String, core.dynamic>
              : null,
          displayValue: _json.containsKey('displayValue')
              ? _json['displayValue'] as core.String
              : null,
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          explanation: _json.containsKey('explanation')
              ? _json['explanation'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          numericUnit: _json.containsKey('numericUnit')
              ? _json['numericUnit'] as core.String
              : null,
          numericValue: _json.containsKey('numericValue')
              ? (_json['numericValue'] as core.num).toDouble()
              : null,
          score: _json.containsKey('score') ? _json['score'] : null,
          scoreDisplayMode: _json.containsKey('scoreDisplayMode')
              ? _json['scoreDisplayMode'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          warnings: _json.containsKey('warnings') ? _json['warnings'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (details != null) 'details': details!,
        if (displayValue != null) 'displayValue': displayValue!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (explanation != null) 'explanation': explanation!,
        if (id != null) 'id': id!,
        if (numericUnit != null) 'numericUnit': numericUnit!,
        if (numericValue != null) 'numericValue': numericValue!,
        if (score != null) 'score': score!,
        if (scoreDisplayMode != null) 'scoreDisplayMode': scoreDisplayMode!,
        if (title != null) 'title': title!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// A Lighthouse category.
class LighthouseCategoryV5 {
  /// An array of references to all the audit members of this category.
  core.List<AuditRefs>? auditRefs;

  /// A more detailed description of the category and its importance.
  core.String? description;

  /// The string identifier of the category.
  core.String? id;

  /// A description for the manual audits in the category.
  core.String? manualDescription;

  /// The overall score of the category, the weighted average of all its audits.
  ///
  /// (The category's score, can be null.)
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? score;

  /// The human-friendly name of the category.
  core.String? title;

  LighthouseCategoryV5({
    this.auditRefs,
    this.description,
    this.id,
    this.manualDescription,
    this.score,
    this.title,
  });

  LighthouseCategoryV5.fromJson(core.Map _json)
      : this(
          auditRefs: _json.containsKey('auditRefs')
              ? (_json['auditRefs'] as core.List)
                  .map((value) => AuditRefs.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          manualDescription: _json.containsKey('manualDescription')
              ? _json['manualDescription'] as core.String
              : null,
          score: _json.containsKey('score') ? _json['score'] : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditRefs != null) 'auditRefs': auditRefs!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (manualDescription != null) 'manualDescription': manualDescription!,
        if (score != null) 'score': score!,
        if (title != null) 'title': title!,
      };
}

/// The Lighthouse result object.
class LighthouseResultV5 {
  /// Map of audits in the LHR.
  core.Map<core.String, LighthouseAuditResultV5>? audits;

  /// Map of categories in the LHR.
  Categories? categories;

  /// Map of category groups in the LHR.
  core.Map<core.String, CategoryGroupV5>? categoryGroups;

  /// The configuration settings for this LHR.
  ConfigSettings? configSettings;

  /// Environment settings that were used when making this LHR.
  Environment? environment;

  /// The time that this run was fetched.
  core.String? fetchTime;

  /// The final resolved url that was audited.
  core.String? finalUrl;

  /// The internationalization strings that are required to render the LHR.
  I18n? i18n;

  /// The lighthouse version that was used to generate this LHR.
  core.String? lighthouseVersion;

  /// The original requested url.
  core.String? requestedUrl;

  /// List of all run warnings in the LHR.
  ///
  /// Will always output to at least `[]`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? runWarnings;

  /// A top-level error message that, if present, indicates a serious enough
  /// problem that this Lighthouse result may need to be discarded.
  RuntimeError? runtimeError;

  /// The Stack Pack advice strings.
  core.List<StackPack>? stackPacks;

  /// Timing information for this LHR.
  Timing? timing;

  /// The user agent that was used to run this LHR.
  core.String? userAgent;

  LighthouseResultV5({
    this.audits,
    this.categories,
    this.categoryGroups,
    this.configSettings,
    this.environment,
    this.fetchTime,
    this.finalUrl,
    this.i18n,
    this.lighthouseVersion,
    this.requestedUrl,
    this.runWarnings,
    this.runtimeError,
    this.stackPacks,
    this.timing,
    this.userAgent,
  });

  LighthouseResultV5.fromJson(core.Map _json)
      : this(
          audits: _json.containsKey('audits')
              ? (_json['audits'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    LighthouseAuditResultV5.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          categories: _json.containsKey('categories')
              ? Categories.fromJson(
                  _json['categories'] as core.Map<core.String, core.dynamic>)
              : null,
          categoryGroups: _json.containsKey('categoryGroups')
              ? (_json['categoryGroups'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    CategoryGroupV5.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          configSettings: _json.containsKey('configSettings')
              ? ConfigSettings.fromJson(_json['configSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          environment: _json.containsKey('environment')
              ? Environment.fromJson(
                  _json['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          fetchTime: _json.containsKey('fetchTime')
              ? _json['fetchTime'] as core.String
              : null,
          finalUrl: _json.containsKey('finalUrl')
              ? _json['finalUrl'] as core.String
              : null,
          i18n: _json.containsKey('i18n')
              ? I18n.fromJson(
                  _json['i18n'] as core.Map<core.String, core.dynamic>)
              : null,
          lighthouseVersion: _json.containsKey('lighthouseVersion')
              ? _json['lighthouseVersion'] as core.String
              : null,
          requestedUrl: _json.containsKey('requestedUrl')
              ? _json['requestedUrl'] as core.String
              : null,
          runWarnings: _json.containsKey('runWarnings')
              ? _json['runWarnings'] as core.List
              : null,
          runtimeError: _json.containsKey('runtimeError')
              ? RuntimeError.fromJson(
                  _json['runtimeError'] as core.Map<core.String, core.dynamic>)
              : null,
          stackPacks: _json.containsKey('stackPacks')
              ? (_json['stackPacks'] as core.List)
                  .map((value) => StackPack.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timing: _json.containsKey('timing')
              ? Timing.fromJson(
                  _json['timing'] as core.Map<core.String, core.dynamic>)
              : null,
          userAgent: _json.containsKey('userAgent')
              ? _json['userAgent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audits != null) 'audits': audits!,
        if (categories != null) 'categories': categories!,
        if (categoryGroups != null) 'categoryGroups': categoryGroups!,
        if (configSettings != null) 'configSettings': configSettings!,
        if (environment != null) 'environment': environment!,
        if (fetchTime != null) 'fetchTime': fetchTime!,
        if (finalUrl != null) 'finalUrl': finalUrl!,
        if (i18n != null) 'i18n': i18n!,
        if (lighthouseVersion != null) 'lighthouseVersion': lighthouseVersion!,
        if (requestedUrl != null) 'requestedUrl': requestedUrl!,
        if (runWarnings != null) 'runWarnings': runWarnings!,
        if (runtimeError != null) 'runtimeError': runtimeError!,
        if (stackPacks != null) 'stackPacks': stackPacks!,
        if (timing != null) 'timing': timing!,
        if (userAgent != null) 'userAgent': userAgent!,
      };
}

/// The CrUX loading experience object that contains CrUX data breakdowns.
class PagespeedApiLoadingExperienceV5 {
  /// The url, pattern or origin which the metrics are on.
  core.String? id;

  /// The requested URL, which may differ from the resolved "id".
  core.String? initialUrl;

  /// The map of .
  core.Map<core.String, UserPageLoadMetricV5>? metrics;

  /// True if the result is an origin fallback from a page, false otherwise.
  core.bool? originFallback;

  /// The human readable speed "category" of the id.
  core.String? overallCategory;

  PagespeedApiLoadingExperienceV5({
    this.id,
    this.initialUrl,
    this.metrics,
    this.originFallback,
    this.overallCategory,
  });

  PagespeedApiLoadingExperienceV5.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          initialUrl: _json.containsKey('initial_url')
              ? _json['initial_url'] as core.String
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    UserPageLoadMetricV5.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          originFallback: _json.containsKey('origin_fallback')
              ? _json['origin_fallback'] as core.bool
              : null,
          overallCategory: _json.containsKey('overall_category')
              ? _json['overall_category'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (initialUrl != null) 'initial_url': initialUrl!,
        if (metrics != null) 'metrics': metrics!,
        if (originFallback != null) 'origin_fallback': originFallback!,
        if (overallCategory != null) 'overall_category': overallCategory!,
      };
}

/// The Pagespeed API response object.
class PagespeedApiPagespeedResponseV5 {
  /// The UTC timestamp of this analysis.
  core.String? analysisUTCTimestamp;

  /// The captcha verify result
  core.String? captchaResult;

  /// Canonicalized and final URL for the document, after following page
  /// redirects (if any).
  core.String? id;

  /// Kind of result.
  core.String? kind;

  /// Lighthouse response for the audit url as an object.
  LighthouseResultV5? lighthouseResult;

  /// Metrics of end users' page loading experience.
  PagespeedApiLoadingExperienceV5? loadingExperience;

  /// Metrics of the aggregated page loading experience of the origin
  PagespeedApiLoadingExperienceV5? originLoadingExperience;

  /// The version of PageSpeed used to generate these results.
  PagespeedVersion? version;

  PagespeedApiPagespeedResponseV5({
    this.analysisUTCTimestamp,
    this.captchaResult,
    this.id,
    this.kind,
    this.lighthouseResult,
    this.loadingExperience,
    this.originLoadingExperience,
    this.version,
  });

  PagespeedApiPagespeedResponseV5.fromJson(core.Map _json)
      : this(
          analysisUTCTimestamp: _json.containsKey('analysisUTCTimestamp')
              ? _json['analysisUTCTimestamp'] as core.String
              : null,
          captchaResult: _json.containsKey('captchaResult')
              ? _json['captchaResult'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          lighthouseResult: _json.containsKey('lighthouseResult')
              ? LighthouseResultV5.fromJson(_json['lighthouseResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
          loadingExperience: _json.containsKey('loadingExperience')
              ? PagespeedApiLoadingExperienceV5.fromJson(
                  _json['loadingExperience']
                      as core.Map<core.String, core.dynamic>)
              : null,
          originLoadingExperience: _json.containsKey('originLoadingExperience')
              ? PagespeedApiLoadingExperienceV5.fromJson(
                  _json['originLoadingExperience']
                      as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? PagespeedVersion.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisUTCTimestamp != null)
          'analysisUTCTimestamp': analysisUTCTimestamp!,
        if (captchaResult != null) 'captchaResult': captchaResult!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lighthouseResult != null) 'lighthouseResult': lighthouseResult!,
        if (loadingExperience != null) 'loadingExperience': loadingExperience!,
        if (originLoadingExperience != null)
          'originLoadingExperience': originLoadingExperience!,
        if (version != null) 'version': version!,
      };
}

/// The Pagespeed Version object.
class PagespeedVersion {
  /// The major version number of PageSpeed used to generate these results.
  core.String? major;

  /// The minor version number of PageSpeed used to generate these results.
  core.String? minor;

  PagespeedVersion({
    this.major,
    this.minor,
  });

  PagespeedVersion.fromJson(core.Map _json)
      : this(
          major:
              _json.containsKey('major') ? _json['major'] as core.String : null,
          minor:
              _json.containsKey('minor') ? _json['minor'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (major != null) 'major': major!,
        if (minor != null) 'minor': minor!,
      };
}

/// Message holding the formatted strings used in the renderer.
class RendererFormattedStrings {
  /// The tooltip text on an expandable chevron icon.
  core.String? auditGroupExpandTooltip;

  /// Text link pointing to the Lighthouse scoring calculator.
  ///
  /// This link immediately follows a sentence stating the performance score is
  /// calculated from the perf metrics.
  core.String? calculatorLink;

  /// The label for the initial request in a critical request chain.
  core.String? crcInitialNavigation;

  /// The label for values shown in the summary of critical request chains.
  core.String? crcLongestDurationLabel;

  /// Option in a dropdown menu that copies the Lighthouse JSON object to the
  /// system clipboard.
  core.String? dropdownCopyJSON;

  /// Option in a dropdown menu that toggles the themeing of the report between
  /// Light(default) and Dark themes.
  core.String? dropdownDarkTheme;

  /// Option in a dropdown menu that opens a full Lighthouse report in a print
  /// dialog.
  core.String? dropdownPrintExpanded;

  /// Option in a dropdown menu that opens a small, summary report in a print
  /// dialog.
  core.String? dropdownPrintSummary;

  /// Option in a dropdown menu that saves the current report as a new GitHub
  /// Gist.
  core.String? dropdownSaveGist;

  /// Option in a dropdown menu that saves the Lighthouse report HTML locally to
  /// the system as a '.html' file.
  core.String? dropdownSaveHTML;

  /// Option in a dropdown menu that saves the Lighthouse JSON object to the
  /// local system as a '.json' file.
  core.String? dropdownSaveJSON;

  /// Option in a dropdown menu that opens the current report in the Lighthouse
  /// Viewer Application.
  core.String? dropdownViewer;

  /// The label shown next to an audit or metric that has had an error.
  core.String? errorLabel;

  /// The error string shown next to an erroring audit.
  core.String? errorMissingAuditInfo;

  /// Label for button to create an issue against the Lighthouse GitHub project.
  core.String? footerIssue;

  /// The title of the lab data performance category.
  core.String? labDataTitle;

  /// The disclaimer shown under performance explaining that the network can
  /// vary.
  core.String? lsPerformanceCategoryDescription;

  /// The heading shown above a list of audits that were not computerd in the
  /// run.
  core.String? manualAuditsGroupTitle;

  /// The heading shown above a list of audits that do not apply to a page.
  core.String? notApplicableAuditsGroupTitle;

  /// The heading for the estimated page load savings opportunity of an audit.
  core.String? opportunityResourceColumnLabel;

  /// The heading for the estimated page load savings of opportunity audits.
  core.String? opportunitySavingsColumnLabel;

  /// The heading that is shown above a list of audits that are passing.
  core.String? passedAuditsGroupTitle;

  /// Descriptive explanation for emulation setting when emulating a generic
  /// desktop form factor, as opposed to a mobile-device like form factor.
  core.String? runtimeDesktopEmulation;

  /// Descriptive explanation for emulation setting when emulating a Nexus 5X
  /// mobile device.
  core.String? runtimeMobileEmulation;

  /// Descriptive explanation for emulation setting when no device emulation is
  /// set.
  core.String? runtimeNoEmulation;

  /// Label for a row in a table that shows the version of the Axe library used
  core.String? runtimeSettingsAxeVersion;

  /// Label for a row in a table that shows the estimated CPU power of the
  /// machine running Lighthouse.
  ///
  /// Example row values: 532, 1492, 783.
  core.String? runtimeSettingsBenchmark;

  /// Label for a row in a table that describes the CPU throttling conditions
  /// that were used during a Lighthouse run, if any.
  core.String? runtimeSettingsCPUThrottling;

  /// Label for a row in a table that shows in what tool Lighthouse is being run
  /// (e.g. The lighthouse CLI, Chrome DevTools, Lightrider, WebPageTest, etc).
  core.String? runtimeSettingsChannel;

  /// Label for a row in a table that describes the kind of device that was
  /// emulated for the Lighthouse run.
  ///
  /// Example values for row elements: 'No Emulation', 'Emulated Desktop', etc.
  core.String? runtimeSettingsDevice;

  /// Label for a row in a table that shows the time at which a Lighthouse run
  /// was conducted; formatted as a timestamp, e.g. Jan 1, 1970 12:00 AM UTC.
  core.String? runtimeSettingsFetchTime;

  /// Label for a row in a table that describes the network throttling
  /// conditions that were used during a Lighthouse run, if any.
  core.String? runtimeSettingsNetworkThrottling;

  /// Title of the Runtime settings table in a Lighthouse report.
  ///
  /// Runtime settings are the environment configurations that a specific report
  /// used at auditing time.
  core.String? runtimeSettingsTitle;

  /// Label for a row in a table that shows the User Agent that was detected on
  /// the Host machine that ran Lighthouse.
  core.String? runtimeSettingsUA;

  /// Label for a row in a table that shows the User Agent that was used to send
  /// out all network requests during the Lighthouse run.
  core.String? runtimeSettingsUANetwork;

  /// Label for a row in a table that shows the URL that was audited during a
  /// Lighthouse run.
  core.String? runtimeSettingsUrl;

  /// Descriptive explanation for a runtime setting that is set to an unknown
  /// value.
  core.String? runtimeUnknown;

  /// The label that explains the score gauges scale (0-49, 50-89, 90-100).
  core.String? scorescaleLabel;

  /// Label preceding a radio control for filtering the list of audits.
  ///
  /// The radio choices are various performance metrics (FCP, LCP, TBT), and if
  /// chosen, the audits in the report are hidden if they are not relevant to
  /// the selected metric.
  core.String? showRelevantAudits;

  /// The label for the button to show only a few lines of a snippet
  core.String? snippetCollapseButtonLabel;

  /// The label for the button to show all lines of a snippet
  core.String? snippetExpandButtonLabel;

  /// This label is for a filter checkbox above a table of items
  core.String? thirdPartyResourcesLabel;

  /// Descriptive explanation for environment throttling that was provided by
  /// the runtime environment instead of provided by Lighthouse throttling.
  core.String? throttlingProvided;

  /// The label shown preceding important warnings that may have invalidated an
  /// entire report.
  core.String? toplevelWarningsMessage;

  /// The disclaimer shown below a performance metric value.
  core.String? varianceDisclaimer;

  /// Label for a button that opens the Treemap App
  core.String? viewTreemapLabel;

  /// The heading that is shown above a list of audits that have warnings
  core.String? warningAuditsGroupTitle;

  /// The label shown above a bulleted list of warnings.
  core.String? warningHeader;

  RendererFormattedStrings({
    this.auditGroupExpandTooltip,
    this.calculatorLink,
    this.crcInitialNavigation,
    this.crcLongestDurationLabel,
    this.dropdownCopyJSON,
    this.dropdownDarkTheme,
    this.dropdownPrintExpanded,
    this.dropdownPrintSummary,
    this.dropdownSaveGist,
    this.dropdownSaveHTML,
    this.dropdownSaveJSON,
    this.dropdownViewer,
    this.errorLabel,
    this.errorMissingAuditInfo,
    this.footerIssue,
    this.labDataTitle,
    this.lsPerformanceCategoryDescription,
    this.manualAuditsGroupTitle,
    this.notApplicableAuditsGroupTitle,
    this.opportunityResourceColumnLabel,
    this.opportunitySavingsColumnLabel,
    this.passedAuditsGroupTitle,
    this.runtimeDesktopEmulation,
    this.runtimeMobileEmulation,
    this.runtimeNoEmulation,
    this.runtimeSettingsAxeVersion,
    this.runtimeSettingsBenchmark,
    this.runtimeSettingsCPUThrottling,
    this.runtimeSettingsChannel,
    this.runtimeSettingsDevice,
    this.runtimeSettingsFetchTime,
    this.runtimeSettingsNetworkThrottling,
    this.runtimeSettingsTitle,
    this.runtimeSettingsUA,
    this.runtimeSettingsUANetwork,
    this.runtimeSettingsUrl,
    this.runtimeUnknown,
    this.scorescaleLabel,
    this.showRelevantAudits,
    this.snippetCollapseButtonLabel,
    this.snippetExpandButtonLabel,
    this.thirdPartyResourcesLabel,
    this.throttlingProvided,
    this.toplevelWarningsMessage,
    this.varianceDisclaimer,
    this.viewTreemapLabel,
    this.warningAuditsGroupTitle,
    this.warningHeader,
  });

  RendererFormattedStrings.fromJson(core.Map _json)
      : this(
          auditGroupExpandTooltip: _json.containsKey('auditGroupExpandTooltip')
              ? _json['auditGroupExpandTooltip'] as core.String
              : null,
          calculatorLink: _json.containsKey('calculatorLink')
              ? _json['calculatorLink'] as core.String
              : null,
          crcInitialNavigation: _json.containsKey('crcInitialNavigation')
              ? _json['crcInitialNavigation'] as core.String
              : null,
          crcLongestDurationLabel: _json.containsKey('crcLongestDurationLabel')
              ? _json['crcLongestDurationLabel'] as core.String
              : null,
          dropdownCopyJSON: _json.containsKey('dropdownCopyJSON')
              ? _json['dropdownCopyJSON'] as core.String
              : null,
          dropdownDarkTheme: _json.containsKey('dropdownDarkTheme')
              ? _json['dropdownDarkTheme'] as core.String
              : null,
          dropdownPrintExpanded: _json.containsKey('dropdownPrintExpanded')
              ? _json['dropdownPrintExpanded'] as core.String
              : null,
          dropdownPrintSummary: _json.containsKey('dropdownPrintSummary')
              ? _json['dropdownPrintSummary'] as core.String
              : null,
          dropdownSaveGist: _json.containsKey('dropdownSaveGist')
              ? _json['dropdownSaveGist'] as core.String
              : null,
          dropdownSaveHTML: _json.containsKey('dropdownSaveHTML')
              ? _json['dropdownSaveHTML'] as core.String
              : null,
          dropdownSaveJSON: _json.containsKey('dropdownSaveJSON')
              ? _json['dropdownSaveJSON'] as core.String
              : null,
          dropdownViewer: _json.containsKey('dropdownViewer')
              ? _json['dropdownViewer'] as core.String
              : null,
          errorLabel: _json.containsKey('errorLabel')
              ? _json['errorLabel'] as core.String
              : null,
          errorMissingAuditInfo: _json.containsKey('errorMissingAuditInfo')
              ? _json['errorMissingAuditInfo'] as core.String
              : null,
          footerIssue: _json.containsKey('footerIssue')
              ? _json['footerIssue'] as core.String
              : null,
          labDataTitle: _json.containsKey('labDataTitle')
              ? _json['labDataTitle'] as core.String
              : null,
          lsPerformanceCategoryDescription:
              _json.containsKey('lsPerformanceCategoryDescription')
                  ? _json['lsPerformanceCategoryDescription'] as core.String
                  : null,
          manualAuditsGroupTitle: _json.containsKey('manualAuditsGroupTitle')
              ? _json['manualAuditsGroupTitle'] as core.String
              : null,
          notApplicableAuditsGroupTitle:
              _json.containsKey('notApplicableAuditsGroupTitle')
                  ? _json['notApplicableAuditsGroupTitle'] as core.String
                  : null,
          opportunityResourceColumnLabel:
              _json.containsKey('opportunityResourceColumnLabel')
                  ? _json['opportunityResourceColumnLabel'] as core.String
                  : null,
          opportunitySavingsColumnLabel:
              _json.containsKey('opportunitySavingsColumnLabel')
                  ? _json['opportunitySavingsColumnLabel'] as core.String
                  : null,
          passedAuditsGroupTitle: _json.containsKey('passedAuditsGroupTitle')
              ? _json['passedAuditsGroupTitle'] as core.String
              : null,
          runtimeDesktopEmulation: _json.containsKey('runtimeDesktopEmulation')
              ? _json['runtimeDesktopEmulation'] as core.String
              : null,
          runtimeMobileEmulation: _json.containsKey('runtimeMobileEmulation')
              ? _json['runtimeMobileEmulation'] as core.String
              : null,
          runtimeNoEmulation: _json.containsKey('runtimeNoEmulation')
              ? _json['runtimeNoEmulation'] as core.String
              : null,
          runtimeSettingsAxeVersion:
              _json.containsKey('runtimeSettingsAxeVersion')
                  ? _json['runtimeSettingsAxeVersion'] as core.String
                  : null,
          runtimeSettingsBenchmark:
              _json.containsKey('runtimeSettingsBenchmark')
                  ? _json['runtimeSettingsBenchmark'] as core.String
                  : null,
          runtimeSettingsCPUThrottling:
              _json.containsKey('runtimeSettingsCPUThrottling')
                  ? _json['runtimeSettingsCPUThrottling'] as core.String
                  : null,
          runtimeSettingsChannel: _json.containsKey('runtimeSettingsChannel')
              ? _json['runtimeSettingsChannel'] as core.String
              : null,
          runtimeSettingsDevice: _json.containsKey('runtimeSettingsDevice')
              ? _json['runtimeSettingsDevice'] as core.String
              : null,
          runtimeSettingsFetchTime:
              _json.containsKey('runtimeSettingsFetchTime')
                  ? _json['runtimeSettingsFetchTime'] as core.String
                  : null,
          runtimeSettingsNetworkThrottling:
              _json.containsKey('runtimeSettingsNetworkThrottling')
                  ? _json['runtimeSettingsNetworkThrottling'] as core.String
                  : null,
          runtimeSettingsTitle: _json.containsKey('runtimeSettingsTitle')
              ? _json['runtimeSettingsTitle'] as core.String
              : null,
          runtimeSettingsUA: _json.containsKey('runtimeSettingsUA')
              ? _json['runtimeSettingsUA'] as core.String
              : null,
          runtimeSettingsUANetwork:
              _json.containsKey('runtimeSettingsUANetwork')
                  ? _json['runtimeSettingsUANetwork'] as core.String
                  : null,
          runtimeSettingsUrl: _json.containsKey('runtimeSettingsUrl')
              ? _json['runtimeSettingsUrl'] as core.String
              : null,
          runtimeUnknown: _json.containsKey('runtimeUnknown')
              ? _json['runtimeUnknown'] as core.String
              : null,
          scorescaleLabel: _json.containsKey('scorescaleLabel')
              ? _json['scorescaleLabel'] as core.String
              : null,
          showRelevantAudits: _json.containsKey('showRelevantAudits')
              ? _json['showRelevantAudits'] as core.String
              : null,
          snippetCollapseButtonLabel:
              _json.containsKey('snippetCollapseButtonLabel')
                  ? _json['snippetCollapseButtonLabel'] as core.String
                  : null,
          snippetExpandButtonLabel:
              _json.containsKey('snippetExpandButtonLabel')
                  ? _json['snippetExpandButtonLabel'] as core.String
                  : null,
          thirdPartyResourcesLabel:
              _json.containsKey('thirdPartyResourcesLabel')
                  ? _json['thirdPartyResourcesLabel'] as core.String
                  : null,
          throttlingProvided: _json.containsKey('throttlingProvided')
              ? _json['throttlingProvided'] as core.String
              : null,
          toplevelWarningsMessage: _json.containsKey('toplevelWarningsMessage')
              ? _json['toplevelWarningsMessage'] as core.String
              : null,
          varianceDisclaimer: _json.containsKey('varianceDisclaimer')
              ? _json['varianceDisclaimer'] as core.String
              : null,
          viewTreemapLabel: _json.containsKey('viewTreemapLabel')
              ? _json['viewTreemapLabel'] as core.String
              : null,
          warningAuditsGroupTitle: _json.containsKey('warningAuditsGroupTitle')
              ? _json['warningAuditsGroupTitle'] as core.String
              : null,
          warningHeader: _json.containsKey('warningHeader')
              ? _json['warningHeader'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditGroupExpandTooltip != null)
          'auditGroupExpandTooltip': auditGroupExpandTooltip!,
        if (calculatorLink != null) 'calculatorLink': calculatorLink!,
        if (crcInitialNavigation != null)
          'crcInitialNavigation': crcInitialNavigation!,
        if (crcLongestDurationLabel != null)
          'crcLongestDurationLabel': crcLongestDurationLabel!,
        if (dropdownCopyJSON != null) 'dropdownCopyJSON': dropdownCopyJSON!,
        if (dropdownDarkTheme != null) 'dropdownDarkTheme': dropdownDarkTheme!,
        if (dropdownPrintExpanded != null)
          'dropdownPrintExpanded': dropdownPrintExpanded!,
        if (dropdownPrintSummary != null)
          'dropdownPrintSummary': dropdownPrintSummary!,
        if (dropdownSaveGist != null) 'dropdownSaveGist': dropdownSaveGist!,
        if (dropdownSaveHTML != null) 'dropdownSaveHTML': dropdownSaveHTML!,
        if (dropdownSaveJSON != null) 'dropdownSaveJSON': dropdownSaveJSON!,
        if (dropdownViewer != null) 'dropdownViewer': dropdownViewer!,
        if (errorLabel != null) 'errorLabel': errorLabel!,
        if (errorMissingAuditInfo != null)
          'errorMissingAuditInfo': errorMissingAuditInfo!,
        if (footerIssue != null) 'footerIssue': footerIssue!,
        if (labDataTitle != null) 'labDataTitle': labDataTitle!,
        if (lsPerformanceCategoryDescription != null)
          'lsPerformanceCategoryDescription': lsPerformanceCategoryDescription!,
        if (manualAuditsGroupTitle != null)
          'manualAuditsGroupTitle': manualAuditsGroupTitle!,
        if (notApplicableAuditsGroupTitle != null)
          'notApplicableAuditsGroupTitle': notApplicableAuditsGroupTitle!,
        if (opportunityResourceColumnLabel != null)
          'opportunityResourceColumnLabel': opportunityResourceColumnLabel!,
        if (opportunitySavingsColumnLabel != null)
          'opportunitySavingsColumnLabel': opportunitySavingsColumnLabel!,
        if (passedAuditsGroupTitle != null)
          'passedAuditsGroupTitle': passedAuditsGroupTitle!,
        if (runtimeDesktopEmulation != null)
          'runtimeDesktopEmulation': runtimeDesktopEmulation!,
        if (runtimeMobileEmulation != null)
          'runtimeMobileEmulation': runtimeMobileEmulation!,
        if (runtimeNoEmulation != null)
          'runtimeNoEmulation': runtimeNoEmulation!,
        if (runtimeSettingsAxeVersion != null)
          'runtimeSettingsAxeVersion': runtimeSettingsAxeVersion!,
        if (runtimeSettingsBenchmark != null)
          'runtimeSettingsBenchmark': runtimeSettingsBenchmark!,
        if (runtimeSettingsCPUThrottling != null)
          'runtimeSettingsCPUThrottling': runtimeSettingsCPUThrottling!,
        if (runtimeSettingsChannel != null)
          'runtimeSettingsChannel': runtimeSettingsChannel!,
        if (runtimeSettingsDevice != null)
          'runtimeSettingsDevice': runtimeSettingsDevice!,
        if (runtimeSettingsFetchTime != null)
          'runtimeSettingsFetchTime': runtimeSettingsFetchTime!,
        if (runtimeSettingsNetworkThrottling != null)
          'runtimeSettingsNetworkThrottling': runtimeSettingsNetworkThrottling!,
        if (runtimeSettingsTitle != null)
          'runtimeSettingsTitle': runtimeSettingsTitle!,
        if (runtimeSettingsUA != null) 'runtimeSettingsUA': runtimeSettingsUA!,
        if (runtimeSettingsUANetwork != null)
          'runtimeSettingsUANetwork': runtimeSettingsUANetwork!,
        if (runtimeSettingsUrl != null)
          'runtimeSettingsUrl': runtimeSettingsUrl!,
        if (runtimeUnknown != null) 'runtimeUnknown': runtimeUnknown!,
        if (scorescaleLabel != null) 'scorescaleLabel': scorescaleLabel!,
        if (showRelevantAudits != null)
          'showRelevantAudits': showRelevantAudits!,
        if (snippetCollapseButtonLabel != null)
          'snippetCollapseButtonLabel': snippetCollapseButtonLabel!,
        if (snippetExpandButtonLabel != null)
          'snippetExpandButtonLabel': snippetExpandButtonLabel!,
        if (thirdPartyResourcesLabel != null)
          'thirdPartyResourcesLabel': thirdPartyResourcesLabel!,
        if (throttlingProvided != null)
          'throttlingProvided': throttlingProvided!,
        if (toplevelWarningsMessage != null)
          'toplevelWarningsMessage': toplevelWarningsMessage!,
        if (varianceDisclaimer != null)
          'varianceDisclaimer': varianceDisclaimer!,
        if (viewTreemapLabel != null) 'viewTreemapLabel': viewTreemapLabel!,
        if (warningAuditsGroupTitle != null)
          'warningAuditsGroupTitle': warningAuditsGroupTitle!,
        if (warningHeader != null) 'warningHeader': warningHeader!,
      };
}

/// Message containing a runtime error config.
class RuntimeError {
  /// The enumerated Lighthouse Error code.
  core.String? code;

  /// A human readable message explaining the error code.
  core.String? message;

  RuntimeError({
    this.code,
    this.message,
  });

  RuntimeError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (message != null) 'message': message!,
      };
}

/// Message containing Stack Pack information.
class StackPack {
  /// The stack pack advice strings.
  core.Map<core.String, core.String>? descriptions;

  /// The stack pack icon data uri.
  core.String? iconDataURL;

  /// The stack pack id.
  core.String? id;

  /// The stack pack title.
  core.String? title;

  StackPack({
    this.descriptions,
    this.iconDataURL,
    this.id,
    this.title,
  });

  StackPack.fromJson(core.Map _json)
      : this(
          descriptions: _json.containsKey('descriptions')
              ? (_json['descriptions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          iconDataURL: _json.containsKey('iconDataURL')
              ? _json['iconDataURL'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (descriptions != null) 'descriptions': descriptions!,
        if (iconDataURL != null) 'iconDataURL': iconDataURL!,
        if (id != null) 'id': id!,
        if (title != null) 'title': title!,
      };
}

/// Message containing the performance timing data for the Lighthouse run.
class Timing {
  /// The total duration of Lighthouse's run.
  core.double? total;

  Timing({
    this.total,
  });

  Timing.fromJson(core.Map _json)
      : this(
          total: _json.containsKey('total')
              ? (_json['total'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (total != null) 'total': total!,
      };
}

/// A CrUX metric object for a single metric and form factor.
class UserPageLoadMetricV5 {
  /// The category of the specific time metric.
  core.String? category;

  /// Metric distributions.
  ///
  /// Proportions should sum up to 1.
  core.List<Bucket>? distributions;

  /// Identifies the form factor of the metric being collected.
  core.String? formFactor;

  /// The median number of the metric, in millisecond.
  core.int? median;

  /// Identifies the type of the metric.
  core.String? metricId;

  /// We use this field to store certain percentile value for this metric.
  ///
  /// For v4, this field contains pc50. For v5, this field contains pc90.
  core.int? percentile;

  UserPageLoadMetricV5({
    this.category,
    this.distributions,
    this.formFactor,
    this.median,
    this.metricId,
    this.percentile,
  });

  UserPageLoadMetricV5.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          distributions: _json.containsKey('distributions')
              ? (_json['distributions'] as core.List)
                  .map((value) => Bucket.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          formFactor: _json.containsKey('formFactor')
              ? _json['formFactor'] as core.String
              : null,
          median:
              _json.containsKey('median') ? _json['median'] as core.int : null,
          metricId: _json.containsKey('metricId')
              ? _json['metricId'] as core.String
              : null,
          percentile: _json.containsKey('percentile')
              ? _json['percentile'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (distributions != null) 'distributions': distributions!,
        if (formFactor != null) 'formFactor': formFactor!,
        if (median != null) 'median': median!,
        if (metricId != null) 'metricId': metricId!,
        if (percentile != null) 'percentile': percentile!,
      };
}
