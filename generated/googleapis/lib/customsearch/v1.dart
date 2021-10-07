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

/// Custom Search API - v1
///
/// Searches over a website or collection of websites
///
/// For more information, see
/// <https://developers.google.com/custom-search/v1/introduction>
///
/// Create an instance of [CustomSearchApi] to access these resources:
///
/// - [CseResource]
///   - [CseSiterestrictResource]
library customsearch.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Searches over a website or collection of websites
class CustomSearchApi {
  final commons.ApiRequester _requester;

  CseResource get cse => CseResource(_requester);

  CustomSearchApi(http.Client client,
      {core.String rootUrl = 'https://customsearch.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CseResource {
  final commons.ApiRequester _requester;

  CseSiterestrictResource get siterestrict =>
      CseSiterestrictResource(_requester);

  CseResource(commons.ApiRequester client) : _requester = client;

  /// Returns metadata about the search performed, metadata about the engine
  /// used for the search, and the search results.
  ///
  /// Request parameters:
  ///
  /// [c2coff] - Enables or disables
  /// [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch).
  /// The default value for this parameter is 0 (zero), meaning that the feature
  /// is enabled. Supported values are: * `1`: Disabled * `0`: Enabled (default)
  ///
  /// [cr] - Restricts search results to documents originating in a particular
  /// country. You may use
  /// [Boolean operators](https://developers.google.com/custom-search/docs/xml_results_appendices#booleanOperators)
  /// in the cr parameter's value. Google Search determines the country of a
  /// document by analyzing: * the top-level domain (TLD) of the document's URL
  /// * the geographic location of the Web server's IP address See the
  /// [Country Parameter Values](https://developers.google.com/custom-search/docs/xml_results_appendices#countryCollections)
  /// page for a list of valid values for this parameter.
  ///
  /// [cx] - The Programmable Search Engine ID to use for this request.
  ///
  /// [dateRestrict] - Restricts results to URLs based on date. Supported values
  /// include: * `d[number]`: requests results from the specified number of past
  /// days. * `w[number]`: requests results from the specified number of past
  /// weeks. * `m[number]`: requests results from the specified number of past
  /// months. * `y[number]`: requests results from the specified number of past
  /// years.
  ///
  /// [exactTerms] - Identifies a phrase that all documents in the search
  /// results must contain.
  ///
  /// [excludeTerms] - Identifies a word or phrase that should not appear in any
  /// documents in the search results.
  ///
  /// [fileType] - Restricts results to files of a specified extension. A list
  /// of file types indexable by Google can be found in Search Console
  /// [Help Center](https://support.google.com/webmasters/answer/35287).
  ///
  /// [filter] - Controls turning on or off the duplicate content filter. * See
  /// [Automatic Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Note that host
  /// crowding filtering applies only to multi-site searches. * By default,
  /// Google applies filtering to all search results to improve the quality of
  /// those results. Acceptable values are: * `0`: Turns off duplicate content
  /// filter. * `1`: Turns on duplicate content filter.
  ///
  /// [gl] - Geolocation of end user. * The `gl` parameter value is a two-letter
  /// country code. The `gl` parameter boosts search results whose country of
  /// origin matches the parameter value. See the
  /// [Country Codes](https://developers.google.com/custom-search/docs/xml_results_appendices#countryCodes)
  /// page for a list of valid values. * Specifying a `gl` parameter value
  /// should lead to more relevant results. This is particularly true for
  /// international customers and, even more specifically, for customers in
  /// English- speaking countries other than the United States.
  ///
  /// [googlehost] - **Deprecated**. Use the `gl` parameter for a similar
  /// effect. The local Google domain (for example, google.com, google.de, or
  /// google.fr) to use to perform the search.
  ///
  /// [highRange] - Specifies the ending value for a search range. * Use
  /// `lowRange` and `highRange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  ///
  /// [hl] - Sets the user interface language. * Explicitly setting this
  /// parameter improves the performance and the quality of your search results.
  /// * See the
  /// [Interface Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of
  /// [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and (Supported Interface
  /// Languages)\[https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages\]
  /// for a list of supported languages.
  ///
  /// [hq] - Appends the specified query terms to the query, as if they were
  /// combined with a logical AND operator.
  ///
  /// [imgColorType] - Returns black and white, grayscale, transparent, or color
  /// images. Acceptable values are: * `"color"` * `"gray"` * `"mono"`: black
  /// and white * `"trans"`: transparent background
  /// Possible string values are:
  /// - "imgColorTypeUndefined" : No image color type specified.
  /// - "mono" : Black and white images only.
  /// - "gray" : Grayscale images only.
  /// - "color" : Color images only.
  /// - "trans" : Images with transparent background
  ///
  /// [imgDominantColor] - Returns images of a specific dominant color.
  /// Acceptable values are: * `"black"` * `"blue"` * `"brown"` * `"gray"` *
  /// `"green"` * `"orange"` * `"pink"` * `"purple"` * `"red"` * `"teal"` *
  /// `"white"` * `"yellow"`
  /// Possible string values are:
  /// - "imgDominantColorUndefined" : No dominant color specified.
  /// - "black" : Predominantly black images only.
  /// - "blue" : Predominantly blue images only.
  /// - "brown" : Predominantly brown images only.
  /// - "gray" : Predominantly gray images only.
  /// - "green" : Predominantly green images only.
  /// - "orange" : Predominantly orange images only.
  /// - "pink" : Predominantly pink images only.
  /// - "purple" : Predominantly purple images only.
  /// - "red" : Predominantly red images only.
  /// - "teal" : Predominantly teal images only.
  /// - "white" : Predominantly white images only.
  /// - "yellow" : Predominantly yellow images only.
  ///
  /// [imgSize] - Returns images of a specified size. Acceptable values are: *
  /// `"huge"` * `"icon"` * `"large"` * `"medium"` * `"small"` * `"xlarge"` *
  /// `"xxlarge"`
  /// Possible string values are:
  /// - "imgSizeUndefined" : No image size specified.
  /// - "HUGE" : Only the largest possible images.
  /// - "ICON" : Only very small icon-sized images.
  /// - "LARGE" : Only large images.
  /// - "MEDIUM" : Only medium images.
  /// - "SMALL" : Only small images.
  /// - "XLARGE" : Only very large images.
  /// - "XXLARGE" : Only extremely large images.
  ///
  /// [imgType] - Returns images of a type. Acceptable values are: * `"clipart"`
  /// * `"face"` * `"lineart"` * `"stock"` * `"photo"` * `"animated"`
  /// Possible string values are:
  /// - "imgTypeUndefined" : No image type specified.
  /// - "clipart" : Clipart-style images only.
  /// - "face" : Images of faces only.
  /// - "lineart" : Line art images only.
  /// - "stock" : Stock images only.
  /// - "photo" : Photo images only.
  /// - "animated" : Animated images only.
  ///
  /// [linkSite] - Specifies that all search results should contain a link to a
  /// particular URL.
  ///
  /// [lowRange] - Specifies the starting value for a search range. Use
  /// `lowRange` and `highRange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  ///
  /// [lr] - Restricts the search to documents written in a particular language
  /// (e.g., `lr=lang_ja`). Acceptable values are: * `"lang_ar"`: Arabic *
  /// `"lang_bg"`: Bulgarian * `"lang_ca"`: Catalan * `"lang_cs"`: Czech *
  /// `"lang_da"`: Danish * `"lang_de"`: German * `"lang_el"`: Greek *
  /// `"lang_en"`: English * `"lang_es"`: Spanish * `"lang_et"`: Estonian *
  /// `"lang_fi"`: Finnish * `"lang_fr"`: French * `"lang_hr"`: Croatian *
  /// `"lang_hu"`: Hungarian * `"lang_id"`: Indonesian * `"lang_is"`: Icelandic
  /// * `"lang_it"`: Italian * `"lang_iw"`: Hebrew * `"lang_ja"`: Japanese *
  /// `"lang_ko"`: Korean * `"lang_lt"`: Lithuanian * `"lang_lv"`: Latvian *
  /// `"lang_nl"`: Dutch * `"lang_no"`: Norwegian * `"lang_pl"`: Polish *
  /// `"lang_pt"`: Portuguese * `"lang_ro"`: Romanian * `"lang_ru"`: Russian *
  /// `"lang_sk"`: Slovak * `"lang_sl"`: Slovenian * `"lang_sr"`: Serbian *
  /// `"lang_sv"`: Swedish * `"lang_tr"`: Turkish * `"lang_zh-CN"`: Chinese
  /// (Simplified) * `"lang_zh-TW"`: Chinese (Traditional)
  ///
  /// [num] - Number of search results to return. * Valid values are integers
  /// between 1 and 10, inclusive.
  ///
  /// [orTerms] - Provides additional search terms to check for in a document,
  /// where each document in the search results must contain at least one of the
  /// additional search terms.
  ///
  /// [q] - Query
  ///
  /// [relatedSite] - Specifies that all search results should be pages that are
  /// related to the specified URL.
  ///
  /// [rights] - Filters based on licensing. Supported values include:
  /// `cc_publicdomain`, `cc_attribute`, `cc_sharealike`, `cc_noncommercial`,
  /// `cc_nonderived` and combinations of these. See
  /// [typical combinations](https://wiki.creativecommons.org/wiki/CC_Search_integration).
  ///
  /// [safe] - Search safety level. Acceptable values are: * `"active"`: Enables
  /// SafeSearch filtering. * `"off"`: Disables SafeSearch filtering. (default)
  /// Possible string values are:
  /// - "safeUndefined" : SafeSearch mode unspecified. (Falls back to engine's
  /// configuration.)
  /// - "active" : Turn SafeSearch on.
  /// - "high" : Deprecated, equivalent to "active".
  /// - "medium" : Deprecated, equivalent to "active".
  /// - "off" : Turn SafeSearch off.
  ///
  /// [searchType] - Specifies the search type: `image`. If unspecified, results
  /// are limited to webpages. Acceptable values are: * `"image"`: custom image
  /// search.
  /// Possible string values are:
  /// - "searchTypeUndefined" : Search type unspecified (defaults to web
  /// search).
  /// - "image" : Image search.
  ///
  /// [siteSearch] - Specifies a given site which should always be included or
  /// excluded from results (see `siteSearchFilter` parameter, below).
  ///
  /// [siteSearchFilter] - Controls whether to include or exclude results from
  /// the site named in the `siteSearch` parameter. Acceptable values are: *
  /// `"e"`: exclude * `"i"`: include
  /// Possible string values are:
  /// - "siteSearchFilterUndefined" : Filter mode unspecified.
  /// - "e" : Exclude results from the listed sites.
  /// - "i" : Include only results from the listed sites.
  ///
  /// [sort] - The sort expression to apply to the results. The sort parameter
  /// specifies that the results be sorted according to the specified expression
  /// i.e. sort by date. \[Example:
  /// sort=date\](https://developers.google.com/custom-search/docs/structured_search#sort-by-attribute).
  ///
  /// [start] - The index of the first result to return. The default number of
  /// results per page is 10, so `&start=11` would start at the top of the
  /// second page of results. **Note**: The JSON API will never return more than
  /// 100 results, even if more than 100 documents match the query, so setting
  /// the sum of `start + num` to a number greater than 100 will produce an
  /// error. Also note that the maximum value for `num` is 10.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Search].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Search> list({
    core.String? c2coff,
    core.String? cr,
    core.String? cx,
    core.String? dateRestrict,
    core.String? exactTerms,
    core.String? excludeTerms,
    core.String? fileType,
    core.String? filter,
    core.String? gl,
    core.String? googlehost,
    core.String? highRange,
    core.String? hl,
    core.String? hq,
    core.String? imgColorType,
    core.String? imgDominantColor,
    core.String? imgSize,
    core.String? imgType,
    core.String? linkSite,
    core.String? lowRange,
    core.String? lr,
    core.int? num,
    core.String? orTerms,
    core.String? q,
    core.String? relatedSite,
    core.String? rights,
    core.String? safe,
    core.String? searchType,
    core.String? siteSearch,
    core.String? siteSearchFilter,
    core.String? sort,
    core.int? start,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (c2coff != null) 'c2coff': [c2coff],
      if (cr != null) 'cr': [cr],
      if (cx != null) 'cx': [cx],
      if (dateRestrict != null) 'dateRestrict': [dateRestrict],
      if (exactTerms != null) 'exactTerms': [exactTerms],
      if (excludeTerms != null) 'excludeTerms': [excludeTerms],
      if (fileType != null) 'fileType': [fileType],
      if (filter != null) 'filter': [filter],
      if (gl != null) 'gl': [gl],
      if (googlehost != null) 'googlehost': [googlehost],
      if (highRange != null) 'highRange': [highRange],
      if (hl != null) 'hl': [hl],
      if (hq != null) 'hq': [hq],
      if (imgColorType != null) 'imgColorType': [imgColorType],
      if (imgDominantColor != null) 'imgDominantColor': [imgDominantColor],
      if (imgSize != null) 'imgSize': [imgSize],
      if (imgType != null) 'imgType': [imgType],
      if (linkSite != null) 'linkSite': [linkSite],
      if (lowRange != null) 'lowRange': [lowRange],
      if (lr != null) 'lr': [lr],
      if (num != null) 'num': ['${num}'],
      if (orTerms != null) 'orTerms': [orTerms],
      if (q != null) 'q': [q],
      if (relatedSite != null) 'relatedSite': [relatedSite],
      if (rights != null) 'rights': [rights],
      if (safe != null) 'safe': [safe],
      if (searchType != null) 'searchType': [searchType],
      if (siteSearch != null) 'siteSearch': [siteSearch],
      if (siteSearchFilter != null) 'siteSearchFilter': [siteSearchFilter],
      if (sort != null) 'sort': [sort],
      if (start != null) 'start': ['${start}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'customsearch/v1';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Search.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class CseSiterestrictResource {
  final commons.ApiRequester _requester;

  CseSiterestrictResource(commons.ApiRequester client) : _requester = client;

  /// Returns metadata about the search performed, metadata about the engine
  /// used for the search, and the search results.
  ///
  /// Uses a small set of url patterns.
  ///
  /// Request parameters:
  ///
  /// [c2coff] - Enables or disables
  /// [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch).
  /// The default value for this parameter is 0 (zero), meaning that the feature
  /// is enabled. Supported values are: * `1`: Disabled * `0`: Enabled (default)
  ///
  /// [cr] - Restricts search results to documents originating in a particular
  /// country. You may use
  /// [Boolean operators](https://developers.google.com/custom-search/docs/xml_results_appendices#booleanOperators)
  /// in the cr parameter's value. Google Search determines the country of a
  /// document by analyzing: * the top-level domain (TLD) of the document's URL
  /// * the geographic location of the Web server's IP address See the
  /// [Country Parameter Values](https://developers.google.com/custom-search/docs/xml_results_appendices#countryCollections)
  /// page for a list of valid values for this parameter.
  ///
  /// [cx] - The Programmable Search Engine ID to use for this request.
  ///
  /// [dateRestrict] - Restricts results to URLs based on date. Supported values
  /// include: * `d[number]`: requests results from the specified number of past
  /// days. * `w[number]`: requests results from the specified number of past
  /// weeks. * `m[number]`: requests results from the specified number of past
  /// months. * `y[number]`: requests results from the specified number of past
  /// years.
  ///
  /// [exactTerms] - Identifies a phrase that all documents in the search
  /// results must contain.
  ///
  /// [excludeTerms] - Identifies a word or phrase that should not appear in any
  /// documents in the search results.
  ///
  /// [fileType] - Restricts results to files of a specified extension. A list
  /// of file types indexable by Google can be found in Search Console
  /// [Help Center](https://support.google.com/webmasters/answer/35287).
  ///
  /// [filter] - Controls turning on or off the duplicate content filter. * See
  /// [Automatic Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Note that host
  /// crowding filtering applies only to multi-site searches. * By default,
  /// Google applies filtering to all search results to improve the quality of
  /// those results. Acceptable values are: * `0`: Turns off duplicate content
  /// filter. * `1`: Turns on duplicate content filter.
  ///
  /// [gl] - Geolocation of end user. * The `gl` parameter value is a two-letter
  /// country code. The `gl` parameter boosts search results whose country of
  /// origin matches the parameter value. See the
  /// [Country Codes](https://developers.google.com/custom-search/docs/xml_results_appendices#countryCodes)
  /// page for a list of valid values. * Specifying a `gl` parameter value
  /// should lead to more relevant results. This is particularly true for
  /// international customers and, even more specifically, for customers in
  /// English- speaking countries other than the United States.
  ///
  /// [googlehost] - **Deprecated**. Use the `gl` parameter for a similar
  /// effect. The local Google domain (for example, google.com, google.de, or
  /// google.fr) to use to perform the search.
  ///
  /// [highRange] - Specifies the ending value for a search range. * Use
  /// `lowRange` and `highRange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  ///
  /// [hl] - Sets the user interface language. * Explicitly setting this
  /// parameter improves the performance and the quality of your search results.
  /// * See the
  /// [Interface Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of
  /// [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and (Supported Interface
  /// Languages)\[https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages\]
  /// for a list of supported languages.
  ///
  /// [hq] - Appends the specified query terms to the query, as if they were
  /// combined with a logical AND operator.
  ///
  /// [imgColorType] - Returns black and white, grayscale, transparent, or color
  /// images. Acceptable values are: * `"color"` * `"gray"` * `"mono"`: black
  /// and white * `"trans"`: transparent background
  /// Possible string values are:
  /// - "imgColorTypeUndefined" : No image color type specified.
  /// - "mono" : Black and white images only.
  /// - "gray" : Grayscale images only.
  /// - "color" : Color images only.
  /// - "trans" : Images with transparent background
  ///
  /// [imgDominantColor] - Returns images of a specific dominant color.
  /// Acceptable values are: * `"black"` * `"blue"` * `"brown"` * `"gray"` *
  /// `"green"` * `"orange"` * `"pink"` * `"purple"` * `"red"` * `"teal"` *
  /// `"white"` * `"yellow"`
  /// Possible string values are:
  /// - "imgDominantColorUndefined" : No dominant color specified.
  /// - "black" : Predominantly black images only.
  /// - "blue" : Predominantly blue images only.
  /// - "brown" : Predominantly brown images only.
  /// - "gray" : Predominantly gray images only.
  /// - "green" : Predominantly green images only.
  /// - "orange" : Predominantly orange images only.
  /// - "pink" : Predominantly pink images only.
  /// - "purple" : Predominantly purple images only.
  /// - "red" : Predominantly red images only.
  /// - "teal" : Predominantly teal images only.
  /// - "white" : Predominantly white images only.
  /// - "yellow" : Predominantly yellow images only.
  ///
  /// [imgSize] - Returns images of a specified size. Acceptable values are: *
  /// `"huge"` * `"icon"` * `"large"` * `"medium"` * `"small"` * `"xlarge"` *
  /// `"xxlarge"`
  /// Possible string values are:
  /// - "imgSizeUndefined" : No image size specified.
  /// - "HUGE" : Only the largest possible images.
  /// - "ICON" : Only very small icon-sized images.
  /// - "LARGE" : Only large images.
  /// - "MEDIUM" : Only medium images.
  /// - "SMALL" : Only small images.
  /// - "XLARGE" : Only very large images.
  /// - "XXLARGE" : Only extremely large images.
  ///
  /// [imgType] - Returns images of a type. Acceptable values are: * `"clipart"`
  /// * `"face"` * `"lineart"` * `"stock"` * `"photo"` * `"animated"`
  /// Possible string values are:
  /// - "imgTypeUndefined" : No image type specified.
  /// - "clipart" : Clipart-style images only.
  /// - "face" : Images of faces only.
  /// - "lineart" : Line art images only.
  /// - "stock" : Stock images only.
  /// - "photo" : Photo images only.
  /// - "animated" : Animated images only.
  ///
  /// [linkSite] - Specifies that all search results should contain a link to a
  /// particular URL.
  ///
  /// [lowRange] - Specifies the starting value for a search range. Use
  /// `lowRange` and `highRange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  ///
  /// [lr] - Restricts the search to documents written in a particular language
  /// (e.g., `lr=lang_ja`). Acceptable values are: * `"lang_ar"`: Arabic *
  /// `"lang_bg"`: Bulgarian * `"lang_ca"`: Catalan * `"lang_cs"`: Czech *
  /// `"lang_da"`: Danish * `"lang_de"`: German * `"lang_el"`: Greek *
  /// `"lang_en"`: English * `"lang_es"`: Spanish * `"lang_et"`: Estonian *
  /// `"lang_fi"`: Finnish * `"lang_fr"`: French * `"lang_hr"`: Croatian *
  /// `"lang_hu"`: Hungarian * `"lang_id"`: Indonesian * `"lang_is"`: Icelandic
  /// * `"lang_it"`: Italian * `"lang_iw"`: Hebrew * `"lang_ja"`: Japanese *
  /// `"lang_ko"`: Korean * `"lang_lt"`: Lithuanian * `"lang_lv"`: Latvian *
  /// `"lang_nl"`: Dutch * `"lang_no"`: Norwegian * `"lang_pl"`: Polish *
  /// `"lang_pt"`: Portuguese * `"lang_ro"`: Romanian * `"lang_ru"`: Russian *
  /// `"lang_sk"`: Slovak * `"lang_sl"`: Slovenian * `"lang_sr"`: Serbian *
  /// `"lang_sv"`: Swedish * `"lang_tr"`: Turkish * `"lang_zh-CN"`: Chinese
  /// (Simplified) * `"lang_zh-TW"`: Chinese (Traditional)
  ///
  /// [num] - Number of search results to return. * Valid values are integers
  /// between 1 and 10, inclusive.
  ///
  /// [orTerms] - Provides additional search terms to check for in a document,
  /// where each document in the search results must contain at least one of the
  /// additional search terms.
  ///
  /// [q] - Query
  ///
  /// [relatedSite] - Specifies that all search results should be pages that are
  /// related to the specified URL.
  ///
  /// [rights] - Filters based on licensing. Supported values include:
  /// `cc_publicdomain`, `cc_attribute`, `cc_sharealike`, `cc_noncommercial`,
  /// `cc_nonderived` and combinations of these. See
  /// [typical combinations](https://wiki.creativecommons.org/wiki/CC_Search_integration).
  ///
  /// [safe] - Search safety level. Acceptable values are: * `"active"`: Enables
  /// SafeSearch filtering. * `"off"`: Disables SafeSearch filtering. (default)
  /// Possible string values are:
  /// - "safeUndefined" : SafeSearch mode unspecified. (Falls back to engine's
  /// configuration.)
  /// - "active" : Turn SafeSearch on.
  /// - "high" : Deprecated, equivalent to "active".
  /// - "medium" : Deprecated, equivalent to "active".
  /// - "off" : Turn SafeSearch off.
  ///
  /// [searchType] - Specifies the search type: `image`. If unspecified, results
  /// are limited to webpages. Acceptable values are: * `"image"`: custom image
  /// search.
  /// Possible string values are:
  /// - "searchTypeUndefined" : Search type unspecified (defaults to web
  /// search).
  /// - "image" : Image search.
  ///
  /// [siteSearch] - Specifies a given site which should always be included or
  /// excluded from results (see `siteSearchFilter` parameter, below).
  ///
  /// [siteSearchFilter] - Controls whether to include or exclude results from
  /// the site named in the `siteSearch` parameter. Acceptable values are: *
  /// `"e"`: exclude * `"i"`: include
  /// Possible string values are:
  /// - "siteSearchFilterUndefined" : Filter mode unspecified.
  /// - "e" : Exclude results from the listed sites.
  /// - "i" : Include only results from the listed sites.
  ///
  /// [sort] - The sort expression to apply to the results. The sort parameter
  /// specifies that the results be sorted according to the specified expression
  /// i.e. sort by date. \[Example:
  /// sort=date\](https://developers.google.com/custom-search/docs/structured_search#sort-by-attribute).
  ///
  /// [start] - The index of the first result to return. The default number of
  /// results per page is 10, so `&start=11` would start at the top of the
  /// second page of results. **Note**: The JSON API will never return more than
  /// 100 results, even if more than 100 documents match the query, so setting
  /// the sum of `start + num` to a number greater than 100 will produce an
  /// error. Also note that the maximum value for `num` is 10.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Search].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Search> list({
    core.String? c2coff,
    core.String? cr,
    core.String? cx,
    core.String? dateRestrict,
    core.String? exactTerms,
    core.String? excludeTerms,
    core.String? fileType,
    core.String? filter,
    core.String? gl,
    core.String? googlehost,
    core.String? highRange,
    core.String? hl,
    core.String? hq,
    core.String? imgColorType,
    core.String? imgDominantColor,
    core.String? imgSize,
    core.String? imgType,
    core.String? linkSite,
    core.String? lowRange,
    core.String? lr,
    core.int? num,
    core.String? orTerms,
    core.String? q,
    core.String? relatedSite,
    core.String? rights,
    core.String? safe,
    core.String? searchType,
    core.String? siteSearch,
    core.String? siteSearchFilter,
    core.String? sort,
    core.int? start,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (c2coff != null) 'c2coff': [c2coff],
      if (cr != null) 'cr': [cr],
      if (cx != null) 'cx': [cx],
      if (dateRestrict != null) 'dateRestrict': [dateRestrict],
      if (exactTerms != null) 'exactTerms': [exactTerms],
      if (excludeTerms != null) 'excludeTerms': [excludeTerms],
      if (fileType != null) 'fileType': [fileType],
      if (filter != null) 'filter': [filter],
      if (gl != null) 'gl': [gl],
      if (googlehost != null) 'googlehost': [googlehost],
      if (highRange != null) 'highRange': [highRange],
      if (hl != null) 'hl': [hl],
      if (hq != null) 'hq': [hq],
      if (imgColorType != null) 'imgColorType': [imgColorType],
      if (imgDominantColor != null) 'imgDominantColor': [imgDominantColor],
      if (imgSize != null) 'imgSize': [imgSize],
      if (imgType != null) 'imgType': [imgType],
      if (linkSite != null) 'linkSite': [linkSite],
      if (lowRange != null) 'lowRange': [lowRange],
      if (lr != null) 'lr': [lr],
      if (num != null) 'num': ['${num}'],
      if (orTerms != null) 'orTerms': [orTerms],
      if (q != null) 'q': [q],
      if (relatedSite != null) 'relatedSite': [relatedSite],
      if (rights != null) 'rights': [rights],
      if (safe != null) 'safe': [safe],
      if (searchType != null) 'searchType': [searchType],
      if (siteSearch != null) 'siteSearch': [siteSearch],
      if (siteSearchFilter != null) 'siteSearchFilter': [siteSearchFilter],
      if (sort != null) 'sort': [sort],
      if (start != null) 'start': ['${start}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'customsearch/v1/siterestrict';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Search.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Block object belonging to a promotion.
class PromotionBodyLines {
  /// The block object's text in HTML, if it has text.
  core.String? htmlTitle;

  /// The anchor text of the block object's link, if it has a link.
  core.String? link;

  /// The block object's text, if it has text.
  core.String? title;

  /// The URL of the block object's link, if it has one.
  core.String? url;

  PromotionBodyLines({
    this.htmlTitle,
    this.link,
    this.title,
    this.url,
  });

  PromotionBodyLines.fromJson(core.Map _json)
      : this(
          htmlTitle: _json.containsKey('htmlTitle')
              ? _json['htmlTitle'] as core.String
              : null,
          link: _json.containsKey('link') ? _json['link'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (htmlTitle != null) 'htmlTitle': htmlTitle!,
        if (link != null) 'link': link!,
        if (title != null) 'title': title!,
        if (url != null) 'url': url!,
      };
}

/// Image belonging to a promotion.
class PromotionImage {
  /// Image height in pixels.
  core.int? height;

  /// URL of the image for this promotion link.
  core.String? source;

  /// Image width in pixels.
  core.int? width;

  PromotionImage({
    this.height,
    this.source,
    this.width,
  });

  PromotionImage.fromJson(core.Map _json)
      : this(
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (source != null) 'source': source!,
        if (width != null) 'width': width!,
      };
}

/// Promotion result.
class Promotion {
  /// An array of block objects for this promotion.
  ///
  /// See
  /// [Google WebSearch Protocol reference](https://developers.google.com/custom-search/docs/xml_results)
  /// for more information.
  core.List<PromotionBodyLines>? bodyLines;

  /// An abridged version of this search's result URL, e.g. www.example.com.
  core.String? displayLink;

  /// The title of the promotion, in HTML.
  core.String? htmlTitle;

  /// Image belonging to a promotion.
  PromotionImage? image;

  /// The URL of the promotion.
  core.String? link;

  /// The title of the promotion.
  core.String? title;

  Promotion({
    this.bodyLines,
    this.displayLink,
    this.htmlTitle,
    this.image,
    this.link,
    this.title,
  });

  Promotion.fromJson(core.Map _json)
      : this(
          bodyLines: _json.containsKey('bodyLines')
              ? (_json['bodyLines'] as core.List)
                  .map((value) => PromotionBodyLines.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          displayLink: _json.containsKey('displayLink')
              ? _json['displayLink'] as core.String
              : null,
          htmlTitle: _json.containsKey('htmlTitle')
              ? _json['htmlTitle'] as core.String
              : null,
          image: _json.containsKey('image')
              ? PromotionImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          link: _json.containsKey('link') ? _json['link'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bodyLines != null)
          'bodyLines': bodyLines!.map((value) => value.toJson()).toList(),
        if (displayLink != null) 'displayLink': displayLink!,
        if (htmlTitle != null) 'htmlTitle': htmlTitle!,
        if (image != null) 'image': image!.toJson(),
        if (link != null) 'link': link!,
        if (title != null) 'title': title!,
      };
}

/// Image belonging to a custom search result.
class ResultImage {
  /// The size of the image, in pixels.
  core.int? byteSize;

  /// A URL pointing to the webpage hosting the image.
  core.String? contextLink;

  /// The height of the image, in pixels.
  core.int? height;

  /// The height of the thumbnail image, in pixels.
  core.int? thumbnailHeight;

  /// A URL to the thumbnail image.
  core.String? thumbnailLink;

  /// The width of the thumbnail image, in pixels.
  core.int? thumbnailWidth;

  /// The width of the image, in pixels.
  core.int? width;

  ResultImage({
    this.byteSize,
    this.contextLink,
    this.height,
    this.thumbnailHeight,
    this.thumbnailLink,
    this.thumbnailWidth,
    this.width,
  });

  ResultImage.fromJson(core.Map _json)
      : this(
          byteSize: _json.containsKey('byteSize')
              ? _json['byteSize'] as core.int
              : null,
          contextLink: _json.containsKey('contextLink')
              ? _json['contextLink'] as core.String
              : null,
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          thumbnailHeight: _json.containsKey('thumbnailHeight')
              ? _json['thumbnailHeight'] as core.int
              : null,
          thumbnailLink: _json.containsKey('thumbnailLink')
              ? _json['thumbnailLink'] as core.String
              : null,
          thumbnailWidth: _json.containsKey('thumbnailWidth')
              ? _json['thumbnailWidth'] as core.int
              : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (byteSize != null) 'byteSize': byteSize!,
        if (contextLink != null) 'contextLink': contextLink!,
        if (height != null) 'height': height!,
        if (thumbnailHeight != null) 'thumbnailHeight': thumbnailHeight!,
        if (thumbnailLink != null) 'thumbnailLink': thumbnailLink!,
        if (thumbnailWidth != null) 'thumbnailWidth': thumbnailWidth!,
        if (width != null) 'width': width!,
      };
}

/// Refinement label associated with a custom search result.
class ResultLabels {
  /// The display name of a refinement label.
  ///
  /// This is the name you should display in your user interface.
  core.String? displayName;

  /// Refinement label and the associated refinement operation.
  core.String? labelWithOp;

  /// The name of a refinement label, which you can use to refine searches.
  ///
  /// Don't display this in your user interface; instead, use displayName.
  core.String? name;

  ResultLabels({
    this.displayName,
    this.labelWithOp,
    this.name,
  });

  ResultLabels.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labelWithOp: _json.containsKey('label_with_op')
              ? _json['label_with_op'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labelWithOp != null) 'label_with_op': labelWithOp!,
        if (name != null) 'name': name!,
      };
}

/// A custom search result.
class Result {
  /// Indicates the ID of Google's cached version of the search result.
  core.String? cacheId;

  /// An abridged version of this search result’s URL, e.g. www.example.com.
  core.String? displayLink;

  /// The file format of the search result.
  core.String? fileFormat;

  /// The URL displayed after the snippet for each search result.
  core.String? formattedUrl;

  /// The HTML-formatted URL displayed after the snippet for each search result.
  core.String? htmlFormattedUrl;

  /// The snippet of the search result, in HTML.
  core.String? htmlSnippet;

  /// The title of the search result, in HTML.
  core.String? htmlTitle;

  /// Image belonging to a custom search result.
  ResultImage? image;

  /// A unique identifier for the type of current object.
  ///
  /// For this API, it is `customsearch#result.`
  core.String? kind;

  /// Encapsulates all information about
  /// [refinement labels](https://developers.google.com/custom-search/docs/xml_results).
  core.List<ResultLabels>? labels;

  /// The full URL to which the search result is pointing, e.g.
  /// http://www.example.com/foo/bar.
  core.String? link;

  /// The MIME type of the search result.
  core.String? mime;

  /// Contains
  /// [PageMap](https://developers.google.com/custom-search/docs/structured_data#pagemaps)
  /// information for this search result.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? pagemap;

  /// The snippet of the search result, in plain text.
  core.String? snippet;

  /// The title of the search result, in plain text.
  core.String? title;

  Result({
    this.cacheId,
    this.displayLink,
    this.fileFormat,
    this.formattedUrl,
    this.htmlFormattedUrl,
    this.htmlSnippet,
    this.htmlTitle,
    this.image,
    this.kind,
    this.labels,
    this.link,
    this.mime,
    this.pagemap,
    this.snippet,
    this.title,
  });

  Result.fromJson(core.Map _json)
      : this(
          cacheId: _json.containsKey('cacheId')
              ? _json['cacheId'] as core.String
              : null,
          displayLink: _json.containsKey('displayLink')
              ? _json['displayLink'] as core.String
              : null,
          fileFormat: _json.containsKey('fileFormat')
              ? _json['fileFormat'] as core.String
              : null,
          formattedUrl: _json.containsKey('formattedUrl')
              ? _json['formattedUrl'] as core.String
              : null,
          htmlFormattedUrl: _json.containsKey('htmlFormattedUrl')
              ? _json['htmlFormattedUrl'] as core.String
              : null,
          htmlSnippet: _json.containsKey('htmlSnippet')
              ? _json['htmlSnippet'] as core.String
              : null,
          htmlTitle: _json.containsKey('htmlTitle')
              ? _json['htmlTitle'] as core.String
              : null,
          image: _json.containsKey('image')
              ? ResultImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => ResultLabels.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          link: _json.containsKey('link') ? _json['link'] as core.String : null,
          mime: _json.containsKey('mime') ? _json['mime'] as core.String : null,
          pagemap: _json.containsKey('pagemap')
              ? _json['pagemap'] as core.Map<core.String, core.dynamic>
              : null,
          snippet: _json.containsKey('snippet')
              ? _json['snippet'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cacheId != null) 'cacheId': cacheId!,
        if (displayLink != null) 'displayLink': displayLink!,
        if (fileFormat != null) 'fileFormat': fileFormat!,
        if (formattedUrl != null) 'formattedUrl': formattedUrl!,
        if (htmlFormattedUrl != null) 'htmlFormattedUrl': htmlFormattedUrl!,
        if (htmlSnippet != null) 'htmlSnippet': htmlSnippet!,
        if (htmlTitle != null) 'htmlTitle': htmlTitle!,
        if (image != null) 'image': image!.toJson(),
        if (kind != null) 'kind': kind!,
        if (labels != null)
          'labels': labels!.map((value) => value.toJson()).toList(),
        if (link != null) 'link': link!,
        if (mime != null) 'mime': mime!,
        if (pagemap != null) 'pagemap': pagemap!,
        if (snippet != null) 'snippet': snippet!,
        if (title != null) 'title': title!,
      };
}

/// Custom search request metadata.
class SearchQueriesNextPage {
  /// Number of search results returned in this set.
  core.int? count;

  /// Restricts search results to documents originating in a particular country.
  ///
  /// You may use
  /// [Boolean operators](https://developers.google.com/custom-search/docs/xml_results#booleanOperators)
  /// in the `cr` parameter's value. Google WebSearch determines the country of
  /// a document by analyzing the following: * The top-level domain (TLD) of the
  /// document's URL. * The geographic location of the web server's IP address.
  /// See \[Country (cr) Parameter
  /// Values\](https://developers.google.com/custom-search/docs/xml_results#countryCollections)
  /// for a list of valid values for this parameter.
  core.String? cr;

  /// The identifier of an engine created using the Programmable Search Engine
  /// [Control Panel](https://programmablesearchengine.google.com/).
  ///
  /// This is a custom property not defined in the OpenSearch spec. This
  /// parameter is **required**.
  core.String? cx;

  /// Restricts results to URLs based on date.
  ///
  /// Supported values include: * `d[number]`: requests results from the
  /// specified number of past days. * `w[number]`: requests results from the
  /// specified number of past weeks. * `m[number]`: requests results from the
  /// specified number of past months. * `y[number]`: requests results from the
  /// specified number of past years.
  core.String? dateRestrict;

  /// Enables or disables the
  /// [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch)
  /// feature.
  ///
  /// Supported values are: * `0`: enabled (default) * `1`: disabled
  core.String? disableCnTwTranslation;

  /// Identifies a phrase that all documents in the search results must contain.
  core.String? exactTerms;

  /// Identifies a word or phrase that should not appear in any documents in the
  /// search results.
  core.String? excludeTerms;

  /// Restricts results to files of a specified extension.
  ///
  /// Filetypes supported by Google include: * Adobe Portable Document Format
  /// (`pdf`) * Adobe PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`,
  /// `wk4`, `wk5`, `wki`, `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite
  /// (`mw`) * Microsoft Excel (`xls`) * Microsoft PowerPoint (`ppt`) *
  /// Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft
  /// Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`swf`) * Text
  /// (`ans`, `txt`). Additional filetypes may be added in the future. An
  /// up-to-date list can always be found in Google's
  /// [file type FAQ](https://support.google.com/webmasters/answer/35287).
  core.String? fileType;

  /// Activates or deactivates the automatic filtering of Google search results.
  ///
  /// See
  /// [Automatic Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Valid values
  /// for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**:
  /// By default, Google applies filtering to all search results to improve the
  /// quality of those results.
  core.String? filter;

  /// Boosts search results whose country of origin matches the parameter value.
  ///
  /// See
  /// [Country Codes](https://developers.google.com/custom-search/docs/xml_results#countryCodes)
  /// for a list of valid values. Specifying a `gl` parameter value in WebSearch
  /// requests should improve the relevance of results. This is particularly
  /// true for international customers and, even more specifically, for
  /// customers in English-speaking countries other than the United States.
  core.String? gl;

  /// Specifies the Google domain (for example, google.com, google.de, or
  /// google.fr) to which the search should be limited.
  core.String? googleHost;

  /// Specifies the ending value for a search range.
  ///
  /// Use `cse:lowRange` and `cse:highrange` to append an inclusive search range
  /// of `lowRange...highRange` to the query.
  core.String? highRange;

  /// Specifies the interface language (host language) of your user interface.
  ///
  /// Explicitly setting this parameter improves the performance and the quality
  /// of your search results. See the
  /// [Interface Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of
  /// [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and
  /// [Supported Interface Languages](https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages)
  /// for a list of supported languages.
  core.String? hl;

  /// Appends the specified query terms to the query, as if they were combined
  /// with a logical `AND` operator.
  core.String? hq;

  /// Restricts results to images of a specified color type.
  ///
  /// Supported values are: * `mono` (black and white) * `gray` (grayscale) *
  /// `color` (color)
  core.String? imgColorType;

  /// Restricts results to images with a specific dominant color.
  ///
  /// Supported values are: * `red` * `orange` * `yellow` * `green` * `teal` *
  /// `blue` * `purple` * `pink` * `white` * `gray` * `black` * `brown`
  core.String? imgDominantColor;

  /// Restricts results to images of a specified size.
  ///
  /// Supported values are: * `icon` (small) * `small | medium | large | xlarge`
  /// (medium) * `xxlarge` (large) * `huge` (extra-large)
  core.String? imgSize;

  /// Restricts results to images of a specified type.
  ///
  /// Supported values are: * `clipart` (Clip art) * `face` (Face) * `lineart`
  /// (Line drawing) * `photo` (Photo) * `animated` (Animated) * `stock` (Stock)
  core.String? imgType;

  /// The character encoding supported for search requests.
  core.String? inputEncoding;

  /// The language of the search results.
  core.String? language;

  /// Specifies that all results should contain a link to a specific URL.
  core.String? linkSite;

  /// Specifies the starting value for a search range.
  ///
  /// Use `cse:lowRange` and `cse:highrange` to append an inclusive search range
  /// of `lowRange...highRange` to the query.
  core.String? lowRange;

  /// Provides additional search terms to check for in a document, where each
  /// document in the search results must contain at least one of the additional
  /// search terms.
  ///
  /// You can also use the
  /// [Boolean OR](https://developers.google.com/custom-search/docs/xml_results#BooleanOrqt)
  /// query term for this type of query.
  core.String? orTerms;

  /// The character encoding supported for search results.
  core.String? outputEncoding;

  /// Specifies that all search results should be pages that are related to the
  /// specified URL.
  ///
  /// The parameter value should be a URL.
  core.String? relatedSite;

  /// Filters based on licensing.
  ///
  /// Supported values include: * `cc_publicdomain` * `cc_attribute` *
  /// `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
  core.String? rights;

  /// Specifies the
  /// [SafeSearch level](https://developers.google.com/custom-search/docs/xml_results#safeSearchLevels)
  /// used for filtering out adult results.
  ///
  /// This is a custom property not defined in the OpenSearch spec. Valid
  /// parameter values are: * `"off"`: Disable SafeSearch * `"active"`: Enable
  /// SafeSearch
  core.String? safe;

  /// The search terms entered by the user.
  core.String? searchTerms;

  /// Allowed values are `web` or `image`.
  ///
  /// If unspecified, results are limited to webpages.
  core.String? searchType;

  /// Restricts results to URLs from a specified site.
  core.String? siteSearch;

  /// Specifies whether to include or exclude results from the site named in the
  /// `sitesearch` parameter.
  ///
  /// Supported values are: * `i`: include content from site * `e`: exclude
  /// content from site
  core.String? siteSearchFilter;

  /// Specifies that results should be sorted according to the specified
  /// expression.
  ///
  /// For example, sort by date.
  core.String? sort;

  /// The index of the current set of search results into the total set of
  /// results, where the index of the first result is 1.
  core.int? startIndex;

  /// The page number of this set of results, where the page length is set by
  /// the `count` property.
  core.int? startPage;

  /// A description of the query.
  core.String? title;

  /// Estimated number of total search results.
  ///
  /// May not be accurate.
  core.String? totalResults;

  SearchQueriesNextPage({
    this.count,
    this.cr,
    this.cx,
    this.dateRestrict,
    this.disableCnTwTranslation,
    this.exactTerms,
    this.excludeTerms,
    this.fileType,
    this.filter,
    this.gl,
    this.googleHost,
    this.highRange,
    this.hl,
    this.hq,
    this.imgColorType,
    this.imgDominantColor,
    this.imgSize,
    this.imgType,
    this.inputEncoding,
    this.language,
    this.linkSite,
    this.lowRange,
    this.orTerms,
    this.outputEncoding,
    this.relatedSite,
    this.rights,
    this.safe,
    this.searchTerms,
    this.searchType,
    this.siteSearch,
    this.siteSearchFilter,
    this.sort,
    this.startIndex,
    this.startPage,
    this.title,
    this.totalResults,
  });

  SearchQueriesNextPage.fromJson(core.Map _json)
      : this(
          count: _json.containsKey('count') ? _json['count'] as core.int : null,
          cr: _json.containsKey('cr') ? _json['cr'] as core.String : null,
          cx: _json.containsKey('cx') ? _json['cx'] as core.String : null,
          dateRestrict: _json.containsKey('dateRestrict')
              ? _json['dateRestrict'] as core.String
              : null,
          disableCnTwTranslation: _json.containsKey('disableCnTwTranslation')
              ? _json['disableCnTwTranslation'] as core.String
              : null,
          exactTerms: _json.containsKey('exactTerms')
              ? _json['exactTerms'] as core.String
              : null,
          excludeTerms: _json.containsKey('excludeTerms')
              ? _json['excludeTerms'] as core.String
              : null,
          fileType: _json.containsKey('fileType')
              ? _json['fileType'] as core.String
              : null,
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          gl: _json.containsKey('gl') ? _json['gl'] as core.String : null,
          googleHost: _json.containsKey('googleHost')
              ? _json['googleHost'] as core.String
              : null,
          highRange: _json.containsKey('highRange')
              ? _json['highRange'] as core.String
              : null,
          hl: _json.containsKey('hl') ? _json['hl'] as core.String : null,
          hq: _json.containsKey('hq') ? _json['hq'] as core.String : null,
          imgColorType: _json.containsKey('imgColorType')
              ? _json['imgColorType'] as core.String
              : null,
          imgDominantColor: _json.containsKey('imgDominantColor')
              ? _json['imgDominantColor'] as core.String
              : null,
          imgSize: _json.containsKey('imgSize')
              ? _json['imgSize'] as core.String
              : null,
          imgType: _json.containsKey('imgType')
              ? _json['imgType'] as core.String
              : null,
          inputEncoding: _json.containsKey('inputEncoding')
              ? _json['inputEncoding'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          linkSite: _json.containsKey('linkSite')
              ? _json['linkSite'] as core.String
              : null,
          lowRange: _json.containsKey('lowRange')
              ? _json['lowRange'] as core.String
              : null,
          orTerms: _json.containsKey('orTerms')
              ? _json['orTerms'] as core.String
              : null,
          outputEncoding: _json.containsKey('outputEncoding')
              ? _json['outputEncoding'] as core.String
              : null,
          relatedSite: _json.containsKey('relatedSite')
              ? _json['relatedSite'] as core.String
              : null,
          rights: _json.containsKey('rights')
              ? _json['rights'] as core.String
              : null,
          safe: _json.containsKey('safe') ? _json['safe'] as core.String : null,
          searchTerms: _json.containsKey('searchTerms')
              ? _json['searchTerms'] as core.String
              : null,
          searchType: _json.containsKey('searchType')
              ? _json['searchType'] as core.String
              : null,
          siteSearch: _json.containsKey('siteSearch')
              ? _json['siteSearch'] as core.String
              : null,
          siteSearchFilter: _json.containsKey('siteSearchFilter')
              ? _json['siteSearchFilter'] as core.String
              : null,
          sort: _json.containsKey('sort') ? _json['sort'] as core.String : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          startPage: _json.containsKey('startPage')
              ? _json['startPage'] as core.int
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (cr != null) 'cr': cr!,
        if (cx != null) 'cx': cx!,
        if (dateRestrict != null) 'dateRestrict': dateRestrict!,
        if (disableCnTwTranslation != null)
          'disableCnTwTranslation': disableCnTwTranslation!,
        if (exactTerms != null) 'exactTerms': exactTerms!,
        if (excludeTerms != null) 'excludeTerms': excludeTerms!,
        if (fileType != null) 'fileType': fileType!,
        if (filter != null) 'filter': filter!,
        if (gl != null) 'gl': gl!,
        if (googleHost != null) 'googleHost': googleHost!,
        if (highRange != null) 'highRange': highRange!,
        if (hl != null) 'hl': hl!,
        if (hq != null) 'hq': hq!,
        if (imgColorType != null) 'imgColorType': imgColorType!,
        if (imgDominantColor != null) 'imgDominantColor': imgDominantColor!,
        if (imgSize != null) 'imgSize': imgSize!,
        if (imgType != null) 'imgType': imgType!,
        if (inputEncoding != null) 'inputEncoding': inputEncoding!,
        if (language != null) 'language': language!,
        if (linkSite != null) 'linkSite': linkSite!,
        if (lowRange != null) 'lowRange': lowRange!,
        if (orTerms != null) 'orTerms': orTerms!,
        if (outputEncoding != null) 'outputEncoding': outputEncoding!,
        if (relatedSite != null) 'relatedSite': relatedSite!,
        if (rights != null) 'rights': rights!,
        if (safe != null) 'safe': safe!,
        if (searchTerms != null) 'searchTerms': searchTerms!,
        if (searchType != null) 'searchType': searchType!,
        if (siteSearch != null) 'siteSearch': siteSearch!,
        if (siteSearchFilter != null) 'siteSearchFilter': siteSearchFilter!,
        if (sort != null) 'sort': sort!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (startPage != null) 'startPage': startPage!,
        if (title != null) 'title': title!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// Custom search request metadata.
class SearchQueriesPreviousPage {
  /// Number of search results returned in this set.
  core.int? count;

  /// Restricts search results to documents originating in a particular country.
  ///
  /// You may use
  /// [Boolean operators](https://developers.google.com/custom-search/docs/xml_results#booleanOperators)
  /// in the `cr` parameter's value. Google WebSearch determines the country of
  /// a document by analyzing the following: * The top-level domain (TLD) of the
  /// document's URL. * The geographic location of the web server's IP address.
  /// See \[Country (cr) Parameter
  /// Values\](https://developers.google.com/custom-search/docs/xml_results#countryCollections)
  /// for a list of valid values for this parameter.
  core.String? cr;

  /// The identifier of an engine created using the Programmable Search Engine
  /// [Control Panel](https://programmablesearchengine.google.com/).
  ///
  /// This is a custom property not defined in the OpenSearch spec. This
  /// parameter is **required**.
  core.String? cx;

  /// Restricts results to URLs based on date.
  ///
  /// Supported values include: * `d[number]`: requests results from the
  /// specified number of past days. * `w[number]`: requests results from the
  /// specified number of past weeks. * `m[number]`: requests results from the
  /// specified number of past months. * `y[number]`: requests results from the
  /// specified number of past years.
  core.String? dateRestrict;

  /// Enables or disables the
  /// [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch)
  /// feature.
  ///
  /// Supported values are: * `0`: enabled (default) * `1`: disabled
  core.String? disableCnTwTranslation;

  /// Identifies a phrase that all documents in the search results must contain.
  core.String? exactTerms;

  /// Identifies a word or phrase that should not appear in any documents in the
  /// search results.
  core.String? excludeTerms;

  /// Restricts results to files of a specified extension.
  ///
  /// Filetypes supported by Google include: * Adobe Portable Document Format
  /// (`pdf`) * Adobe PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`,
  /// `wk4`, `wk5`, `wki`, `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite
  /// (`mw`) * Microsoft Excel (`xls`) * Microsoft PowerPoint (`ppt`) *
  /// Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft
  /// Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`swf`) * Text
  /// (`ans`, `txt`). Additional filetypes may be added in the future. An
  /// up-to-date list can always be found in Google's
  /// [file type FAQ](https://support.google.com/webmasters/answer/35287).
  core.String? fileType;

  /// Activates or deactivates the automatic filtering of Google search results.
  ///
  /// See
  /// [Automatic Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Valid values
  /// for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**:
  /// By default, Google applies filtering to all search results to improve the
  /// quality of those results.
  core.String? filter;

  /// Boosts search results whose country of origin matches the parameter value.
  ///
  /// See
  /// [Country Codes](https://developers.google.com/custom-search/docs/xml_results#countryCodes)
  /// for a list of valid values. Specifying a `gl` parameter value in WebSearch
  /// requests should improve the relevance of results. This is particularly
  /// true for international customers and, even more specifically, for
  /// customers in English-speaking countries other than the United States.
  core.String? gl;

  /// Specifies the Google domain (for example, google.com, google.de, or
  /// google.fr) to which the search should be limited.
  core.String? googleHost;

  /// Specifies the ending value for a search range.
  ///
  /// Use `cse:lowRange` and `cse:highrange` to append an inclusive search range
  /// of `lowRange...highRange` to the query.
  core.String? highRange;

  /// Specifies the interface language (host language) of your user interface.
  ///
  /// Explicitly setting this parameter improves the performance and the quality
  /// of your search results. See the
  /// [Interface Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of
  /// [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and
  /// [Supported Interface Languages](https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages)
  /// for a list of supported languages.
  core.String? hl;

  /// Appends the specified query terms to the query, as if they were combined
  /// with a logical `AND` operator.
  core.String? hq;

  /// Restricts results to images of a specified color type.
  ///
  /// Supported values are: * `mono` (black and white) * `gray` (grayscale) *
  /// `color` (color)
  core.String? imgColorType;

  /// Restricts results to images with a specific dominant color.
  ///
  /// Supported values are: * `red` * `orange` * `yellow` * `green` * `teal` *
  /// `blue` * `purple` * `pink` * `white` * `gray` * `black` * `brown`
  core.String? imgDominantColor;

  /// Restricts results to images of a specified size.
  ///
  /// Supported values are: * `icon` (small) * `small | medium | large | xlarge`
  /// (medium) * `xxlarge` (large) * `huge` (extra-large)
  core.String? imgSize;

  /// Restricts results to images of a specified type.
  ///
  /// Supported values are: * `clipart` (Clip art) * `face` (Face) * `lineart`
  /// (Line drawing) * `photo` (Photo) * `animated` (Animated) * `stock` (Stock)
  core.String? imgType;

  /// The character encoding supported for search requests.
  core.String? inputEncoding;

  /// The language of the search results.
  core.String? language;

  /// Specifies that all results should contain a link to a specific URL.
  core.String? linkSite;

  /// Specifies the starting value for a search range.
  ///
  /// Use `cse:lowRange` and `cse:highrange` to append an inclusive search range
  /// of `lowRange...highRange` to the query.
  core.String? lowRange;

  /// Provides additional search terms to check for in a document, where each
  /// document in the search results must contain at least one of the additional
  /// search terms.
  ///
  /// You can also use the
  /// [Boolean OR](https://developers.google.com/custom-search/docs/xml_results#BooleanOrqt)
  /// query term for this type of query.
  core.String? orTerms;

  /// The character encoding supported for search results.
  core.String? outputEncoding;

  /// Specifies that all search results should be pages that are related to the
  /// specified URL.
  ///
  /// The parameter value should be a URL.
  core.String? relatedSite;

  /// Filters based on licensing.
  ///
  /// Supported values include: * `cc_publicdomain` * `cc_attribute` *
  /// `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
  core.String? rights;

  /// Specifies the
  /// [SafeSearch level](https://developers.google.com/custom-search/docs/xml_results#safeSearchLevels)
  /// used for filtering out adult results.
  ///
  /// This is a custom property not defined in the OpenSearch spec. Valid
  /// parameter values are: * `"off"`: Disable SafeSearch * `"active"`: Enable
  /// SafeSearch
  core.String? safe;

  /// The search terms entered by the user.
  core.String? searchTerms;

  /// Allowed values are `web` or `image`.
  ///
  /// If unspecified, results are limited to webpages.
  core.String? searchType;

  /// Restricts results to URLs from a specified site.
  core.String? siteSearch;

  /// Specifies whether to include or exclude results from the site named in the
  /// `sitesearch` parameter.
  ///
  /// Supported values are: * `i`: include content from site * `e`: exclude
  /// content from site
  core.String? siteSearchFilter;

  /// Specifies that results should be sorted according to the specified
  /// expression.
  ///
  /// For example, sort by date.
  core.String? sort;

  /// The index of the current set of search results into the total set of
  /// results, where the index of the first result is 1.
  core.int? startIndex;

  /// The page number of this set of results, where the page length is set by
  /// the `count` property.
  core.int? startPage;

  /// A description of the query.
  core.String? title;

  /// Estimated number of total search results.
  ///
  /// May not be accurate.
  core.String? totalResults;

  SearchQueriesPreviousPage({
    this.count,
    this.cr,
    this.cx,
    this.dateRestrict,
    this.disableCnTwTranslation,
    this.exactTerms,
    this.excludeTerms,
    this.fileType,
    this.filter,
    this.gl,
    this.googleHost,
    this.highRange,
    this.hl,
    this.hq,
    this.imgColorType,
    this.imgDominantColor,
    this.imgSize,
    this.imgType,
    this.inputEncoding,
    this.language,
    this.linkSite,
    this.lowRange,
    this.orTerms,
    this.outputEncoding,
    this.relatedSite,
    this.rights,
    this.safe,
    this.searchTerms,
    this.searchType,
    this.siteSearch,
    this.siteSearchFilter,
    this.sort,
    this.startIndex,
    this.startPage,
    this.title,
    this.totalResults,
  });

  SearchQueriesPreviousPage.fromJson(core.Map _json)
      : this(
          count: _json.containsKey('count') ? _json['count'] as core.int : null,
          cr: _json.containsKey('cr') ? _json['cr'] as core.String : null,
          cx: _json.containsKey('cx') ? _json['cx'] as core.String : null,
          dateRestrict: _json.containsKey('dateRestrict')
              ? _json['dateRestrict'] as core.String
              : null,
          disableCnTwTranslation: _json.containsKey('disableCnTwTranslation')
              ? _json['disableCnTwTranslation'] as core.String
              : null,
          exactTerms: _json.containsKey('exactTerms')
              ? _json['exactTerms'] as core.String
              : null,
          excludeTerms: _json.containsKey('excludeTerms')
              ? _json['excludeTerms'] as core.String
              : null,
          fileType: _json.containsKey('fileType')
              ? _json['fileType'] as core.String
              : null,
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          gl: _json.containsKey('gl') ? _json['gl'] as core.String : null,
          googleHost: _json.containsKey('googleHost')
              ? _json['googleHost'] as core.String
              : null,
          highRange: _json.containsKey('highRange')
              ? _json['highRange'] as core.String
              : null,
          hl: _json.containsKey('hl') ? _json['hl'] as core.String : null,
          hq: _json.containsKey('hq') ? _json['hq'] as core.String : null,
          imgColorType: _json.containsKey('imgColorType')
              ? _json['imgColorType'] as core.String
              : null,
          imgDominantColor: _json.containsKey('imgDominantColor')
              ? _json['imgDominantColor'] as core.String
              : null,
          imgSize: _json.containsKey('imgSize')
              ? _json['imgSize'] as core.String
              : null,
          imgType: _json.containsKey('imgType')
              ? _json['imgType'] as core.String
              : null,
          inputEncoding: _json.containsKey('inputEncoding')
              ? _json['inputEncoding'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          linkSite: _json.containsKey('linkSite')
              ? _json['linkSite'] as core.String
              : null,
          lowRange: _json.containsKey('lowRange')
              ? _json['lowRange'] as core.String
              : null,
          orTerms: _json.containsKey('orTerms')
              ? _json['orTerms'] as core.String
              : null,
          outputEncoding: _json.containsKey('outputEncoding')
              ? _json['outputEncoding'] as core.String
              : null,
          relatedSite: _json.containsKey('relatedSite')
              ? _json['relatedSite'] as core.String
              : null,
          rights: _json.containsKey('rights')
              ? _json['rights'] as core.String
              : null,
          safe: _json.containsKey('safe') ? _json['safe'] as core.String : null,
          searchTerms: _json.containsKey('searchTerms')
              ? _json['searchTerms'] as core.String
              : null,
          searchType: _json.containsKey('searchType')
              ? _json['searchType'] as core.String
              : null,
          siteSearch: _json.containsKey('siteSearch')
              ? _json['siteSearch'] as core.String
              : null,
          siteSearchFilter: _json.containsKey('siteSearchFilter')
              ? _json['siteSearchFilter'] as core.String
              : null,
          sort: _json.containsKey('sort') ? _json['sort'] as core.String : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          startPage: _json.containsKey('startPage')
              ? _json['startPage'] as core.int
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (cr != null) 'cr': cr!,
        if (cx != null) 'cx': cx!,
        if (dateRestrict != null) 'dateRestrict': dateRestrict!,
        if (disableCnTwTranslation != null)
          'disableCnTwTranslation': disableCnTwTranslation!,
        if (exactTerms != null) 'exactTerms': exactTerms!,
        if (excludeTerms != null) 'excludeTerms': excludeTerms!,
        if (fileType != null) 'fileType': fileType!,
        if (filter != null) 'filter': filter!,
        if (gl != null) 'gl': gl!,
        if (googleHost != null) 'googleHost': googleHost!,
        if (highRange != null) 'highRange': highRange!,
        if (hl != null) 'hl': hl!,
        if (hq != null) 'hq': hq!,
        if (imgColorType != null) 'imgColorType': imgColorType!,
        if (imgDominantColor != null) 'imgDominantColor': imgDominantColor!,
        if (imgSize != null) 'imgSize': imgSize!,
        if (imgType != null) 'imgType': imgType!,
        if (inputEncoding != null) 'inputEncoding': inputEncoding!,
        if (language != null) 'language': language!,
        if (linkSite != null) 'linkSite': linkSite!,
        if (lowRange != null) 'lowRange': lowRange!,
        if (orTerms != null) 'orTerms': orTerms!,
        if (outputEncoding != null) 'outputEncoding': outputEncoding!,
        if (relatedSite != null) 'relatedSite': relatedSite!,
        if (rights != null) 'rights': rights!,
        if (safe != null) 'safe': safe!,
        if (searchTerms != null) 'searchTerms': searchTerms!,
        if (searchType != null) 'searchType': searchType!,
        if (siteSearch != null) 'siteSearch': siteSearch!,
        if (siteSearchFilter != null) 'siteSearchFilter': siteSearchFilter!,
        if (sort != null) 'sort': sort!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (startPage != null) 'startPage': startPage!,
        if (title != null) 'title': title!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// Custom search request metadata.
class SearchQueriesRequest {
  /// Number of search results returned in this set.
  core.int? count;

  /// Restricts search results to documents originating in a particular country.
  ///
  /// You may use
  /// [Boolean operators](https://developers.google.com/custom-search/docs/xml_results#booleanOperators)
  /// in the `cr` parameter's value. Google WebSearch determines the country of
  /// a document by analyzing the following: * The top-level domain (TLD) of the
  /// document's URL. * The geographic location of the web server's IP address.
  /// See \[Country (cr) Parameter
  /// Values\](https://developers.google.com/custom-search/docs/xml_results#countryCollections)
  /// for a list of valid values for this parameter.
  core.String? cr;

  /// The identifier of an engine created using the Programmable Search Engine
  /// [Control Panel](https://programmablesearchengine.google.com/).
  ///
  /// This is a custom property not defined in the OpenSearch spec. This
  /// parameter is **required**.
  core.String? cx;

  /// Restricts results to URLs based on date.
  ///
  /// Supported values include: * `d[number]`: requests results from the
  /// specified number of past days. * `w[number]`: requests results from the
  /// specified number of past weeks. * `m[number]`: requests results from the
  /// specified number of past months. * `y[number]`: requests results from the
  /// specified number of past years.
  core.String? dateRestrict;

  /// Enables or disables the
  /// [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch)
  /// feature.
  ///
  /// Supported values are: * `0`: enabled (default) * `1`: disabled
  core.String? disableCnTwTranslation;

  /// Identifies a phrase that all documents in the search results must contain.
  core.String? exactTerms;

  /// Identifies a word or phrase that should not appear in any documents in the
  /// search results.
  core.String? excludeTerms;

  /// Restricts results to files of a specified extension.
  ///
  /// Filetypes supported by Google include: * Adobe Portable Document Format
  /// (`pdf`) * Adobe PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`,
  /// `wk4`, `wk5`, `wki`, `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite
  /// (`mw`) * Microsoft Excel (`xls`) * Microsoft PowerPoint (`ppt`) *
  /// Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft
  /// Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`swf`) * Text
  /// (`ans`, `txt`). Additional filetypes may be added in the future. An
  /// up-to-date list can always be found in Google's
  /// [file type FAQ](https://support.google.com/webmasters/answer/35287).
  core.String? fileType;

  /// Activates or deactivates the automatic filtering of Google search results.
  ///
  /// See
  /// [Automatic Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Valid values
  /// for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**:
  /// By default, Google applies filtering to all search results to improve the
  /// quality of those results.
  core.String? filter;

  /// Boosts search results whose country of origin matches the parameter value.
  ///
  /// See
  /// [Country Codes](https://developers.google.com/custom-search/docs/xml_results#countryCodes)
  /// for a list of valid values. Specifying a `gl` parameter value in WebSearch
  /// requests should improve the relevance of results. This is particularly
  /// true for international customers and, even more specifically, for
  /// customers in English-speaking countries other than the United States.
  core.String? gl;

  /// Specifies the Google domain (for example, google.com, google.de, or
  /// google.fr) to which the search should be limited.
  core.String? googleHost;

  /// Specifies the ending value for a search range.
  ///
  /// Use `cse:lowRange` and `cse:highrange` to append an inclusive search range
  /// of `lowRange...highRange` to the query.
  core.String? highRange;

  /// Specifies the interface language (host language) of your user interface.
  ///
  /// Explicitly setting this parameter improves the performance and the quality
  /// of your search results. See the
  /// [Interface Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of
  /// [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and
  /// [Supported Interface Languages](https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages)
  /// for a list of supported languages.
  core.String? hl;

  /// Appends the specified query terms to the query, as if they were combined
  /// with a logical `AND` operator.
  core.String? hq;

  /// Restricts results to images of a specified color type.
  ///
  /// Supported values are: * `mono` (black and white) * `gray` (grayscale) *
  /// `color` (color)
  core.String? imgColorType;

  /// Restricts results to images with a specific dominant color.
  ///
  /// Supported values are: * `red` * `orange` * `yellow` * `green` * `teal` *
  /// `blue` * `purple` * `pink` * `white` * `gray` * `black` * `brown`
  core.String? imgDominantColor;

  /// Restricts results to images of a specified size.
  ///
  /// Supported values are: * `icon` (small) * `small | medium | large | xlarge`
  /// (medium) * `xxlarge` (large) * `huge` (extra-large)
  core.String? imgSize;

  /// Restricts results to images of a specified type.
  ///
  /// Supported values are: * `clipart` (Clip art) * `face` (Face) * `lineart`
  /// (Line drawing) * `photo` (Photo) * `animated` (Animated) * `stock` (Stock)
  core.String? imgType;

  /// The character encoding supported for search requests.
  core.String? inputEncoding;

  /// The language of the search results.
  core.String? language;

  /// Specifies that all results should contain a link to a specific URL.
  core.String? linkSite;

  /// Specifies the starting value for a search range.
  ///
  /// Use `cse:lowRange` and `cse:highrange` to append an inclusive search range
  /// of `lowRange...highRange` to the query.
  core.String? lowRange;

  /// Provides additional search terms to check for in a document, where each
  /// document in the search results must contain at least one of the additional
  /// search terms.
  ///
  /// You can also use the
  /// [Boolean OR](https://developers.google.com/custom-search/docs/xml_results#BooleanOrqt)
  /// query term for this type of query.
  core.String? orTerms;

  /// The character encoding supported for search results.
  core.String? outputEncoding;

  /// Specifies that all search results should be pages that are related to the
  /// specified URL.
  ///
  /// The parameter value should be a URL.
  core.String? relatedSite;

  /// Filters based on licensing.
  ///
  /// Supported values include: * `cc_publicdomain` * `cc_attribute` *
  /// `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
  core.String? rights;

  /// Specifies the
  /// [SafeSearch level](https://developers.google.com/custom-search/docs/xml_results#safeSearchLevels)
  /// used for filtering out adult results.
  ///
  /// This is a custom property not defined in the OpenSearch spec. Valid
  /// parameter values are: * `"off"`: Disable SafeSearch * `"active"`: Enable
  /// SafeSearch
  core.String? safe;

  /// The search terms entered by the user.
  core.String? searchTerms;

  /// Allowed values are `web` or `image`.
  ///
  /// If unspecified, results are limited to webpages.
  core.String? searchType;

  /// Restricts results to URLs from a specified site.
  core.String? siteSearch;

  /// Specifies whether to include or exclude results from the site named in the
  /// `sitesearch` parameter.
  ///
  /// Supported values are: * `i`: include content from site * `e`: exclude
  /// content from site
  core.String? siteSearchFilter;

  /// Specifies that results should be sorted according to the specified
  /// expression.
  ///
  /// For example, sort by date.
  core.String? sort;

  /// The index of the current set of search results into the total set of
  /// results, where the index of the first result is 1.
  core.int? startIndex;

  /// The page number of this set of results, where the page length is set by
  /// the `count` property.
  core.int? startPage;

  /// A description of the query.
  core.String? title;

  /// Estimated number of total search results.
  ///
  /// May not be accurate.
  core.String? totalResults;

  SearchQueriesRequest({
    this.count,
    this.cr,
    this.cx,
    this.dateRestrict,
    this.disableCnTwTranslation,
    this.exactTerms,
    this.excludeTerms,
    this.fileType,
    this.filter,
    this.gl,
    this.googleHost,
    this.highRange,
    this.hl,
    this.hq,
    this.imgColorType,
    this.imgDominantColor,
    this.imgSize,
    this.imgType,
    this.inputEncoding,
    this.language,
    this.linkSite,
    this.lowRange,
    this.orTerms,
    this.outputEncoding,
    this.relatedSite,
    this.rights,
    this.safe,
    this.searchTerms,
    this.searchType,
    this.siteSearch,
    this.siteSearchFilter,
    this.sort,
    this.startIndex,
    this.startPage,
    this.title,
    this.totalResults,
  });

  SearchQueriesRequest.fromJson(core.Map _json)
      : this(
          count: _json.containsKey('count') ? _json['count'] as core.int : null,
          cr: _json.containsKey('cr') ? _json['cr'] as core.String : null,
          cx: _json.containsKey('cx') ? _json['cx'] as core.String : null,
          dateRestrict: _json.containsKey('dateRestrict')
              ? _json['dateRestrict'] as core.String
              : null,
          disableCnTwTranslation: _json.containsKey('disableCnTwTranslation')
              ? _json['disableCnTwTranslation'] as core.String
              : null,
          exactTerms: _json.containsKey('exactTerms')
              ? _json['exactTerms'] as core.String
              : null,
          excludeTerms: _json.containsKey('excludeTerms')
              ? _json['excludeTerms'] as core.String
              : null,
          fileType: _json.containsKey('fileType')
              ? _json['fileType'] as core.String
              : null,
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          gl: _json.containsKey('gl') ? _json['gl'] as core.String : null,
          googleHost: _json.containsKey('googleHost')
              ? _json['googleHost'] as core.String
              : null,
          highRange: _json.containsKey('highRange')
              ? _json['highRange'] as core.String
              : null,
          hl: _json.containsKey('hl') ? _json['hl'] as core.String : null,
          hq: _json.containsKey('hq') ? _json['hq'] as core.String : null,
          imgColorType: _json.containsKey('imgColorType')
              ? _json['imgColorType'] as core.String
              : null,
          imgDominantColor: _json.containsKey('imgDominantColor')
              ? _json['imgDominantColor'] as core.String
              : null,
          imgSize: _json.containsKey('imgSize')
              ? _json['imgSize'] as core.String
              : null,
          imgType: _json.containsKey('imgType')
              ? _json['imgType'] as core.String
              : null,
          inputEncoding: _json.containsKey('inputEncoding')
              ? _json['inputEncoding'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          linkSite: _json.containsKey('linkSite')
              ? _json['linkSite'] as core.String
              : null,
          lowRange: _json.containsKey('lowRange')
              ? _json['lowRange'] as core.String
              : null,
          orTerms: _json.containsKey('orTerms')
              ? _json['orTerms'] as core.String
              : null,
          outputEncoding: _json.containsKey('outputEncoding')
              ? _json['outputEncoding'] as core.String
              : null,
          relatedSite: _json.containsKey('relatedSite')
              ? _json['relatedSite'] as core.String
              : null,
          rights: _json.containsKey('rights')
              ? _json['rights'] as core.String
              : null,
          safe: _json.containsKey('safe') ? _json['safe'] as core.String : null,
          searchTerms: _json.containsKey('searchTerms')
              ? _json['searchTerms'] as core.String
              : null,
          searchType: _json.containsKey('searchType')
              ? _json['searchType'] as core.String
              : null,
          siteSearch: _json.containsKey('siteSearch')
              ? _json['siteSearch'] as core.String
              : null,
          siteSearchFilter: _json.containsKey('siteSearchFilter')
              ? _json['siteSearchFilter'] as core.String
              : null,
          sort: _json.containsKey('sort') ? _json['sort'] as core.String : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          startPage: _json.containsKey('startPage')
              ? _json['startPage'] as core.int
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (cr != null) 'cr': cr!,
        if (cx != null) 'cx': cx!,
        if (dateRestrict != null) 'dateRestrict': dateRestrict!,
        if (disableCnTwTranslation != null)
          'disableCnTwTranslation': disableCnTwTranslation!,
        if (exactTerms != null) 'exactTerms': exactTerms!,
        if (excludeTerms != null) 'excludeTerms': excludeTerms!,
        if (fileType != null) 'fileType': fileType!,
        if (filter != null) 'filter': filter!,
        if (gl != null) 'gl': gl!,
        if (googleHost != null) 'googleHost': googleHost!,
        if (highRange != null) 'highRange': highRange!,
        if (hl != null) 'hl': hl!,
        if (hq != null) 'hq': hq!,
        if (imgColorType != null) 'imgColorType': imgColorType!,
        if (imgDominantColor != null) 'imgDominantColor': imgDominantColor!,
        if (imgSize != null) 'imgSize': imgSize!,
        if (imgType != null) 'imgType': imgType!,
        if (inputEncoding != null) 'inputEncoding': inputEncoding!,
        if (language != null) 'language': language!,
        if (linkSite != null) 'linkSite': linkSite!,
        if (lowRange != null) 'lowRange': lowRange!,
        if (orTerms != null) 'orTerms': orTerms!,
        if (outputEncoding != null) 'outputEncoding': outputEncoding!,
        if (relatedSite != null) 'relatedSite': relatedSite!,
        if (rights != null) 'rights': rights!,
        if (safe != null) 'safe': safe!,
        if (searchTerms != null) 'searchTerms': searchTerms!,
        if (searchType != null) 'searchType': searchType!,
        if (siteSearch != null) 'siteSearch': siteSearch!,
        if (siteSearchFilter != null) 'siteSearchFilter': siteSearchFilter!,
        if (sort != null) 'sort': sort!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (startPage != null) 'startPage': startPage!,
        if (title != null) 'title': title!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// Query metadata for the previous, current, and next pages of results.
class SearchQueries {
  /// Metadata representing the next page of results, if applicable.
  core.List<SearchQueriesNextPage>? nextPage;

  /// Metadata representing the previous page of results, if applicable.
  core.List<SearchQueriesPreviousPage>? previousPage;

  /// Metadata representing the current request.
  core.List<SearchQueriesRequest>? request;

  SearchQueries({
    this.nextPage,
    this.previousPage,
    this.request,
  });

  SearchQueries.fromJson(core.Map _json)
      : this(
          nextPage: _json.containsKey('nextPage')
              ? (_json['nextPage'] as core.List)
                  .map((value) => SearchQueriesNextPage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          previousPage: _json.containsKey('previousPage')
              ? (_json['previousPage'] as core.List)
                  .map((value) => SearchQueriesPreviousPage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          request: _json.containsKey('request')
              ? (_json['request'] as core.List)
                  .map((value) => SearchQueriesRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPage != null)
          'nextPage': nextPage!.map((value) => value.toJson()).toList(),
        if (previousPage != null)
          'previousPage': previousPage!.map((value) => value.toJson()).toList(),
        if (request != null)
          'request': request!.map((value) => value.toJson()).toList(),
      };
}

/// Metadata about a search operation.
class SearchSearchInformation {
  /// The time taken for the server to return search results, formatted
  /// according to locale style.
  core.String? formattedSearchTime;

  /// The total number of search results, formatted according to locale style.
  core.String? formattedTotalResults;

  /// The time taken for the server to return search results.
  core.double? searchTime;

  /// The total number of search results returned by the query.
  core.String? totalResults;

  SearchSearchInformation({
    this.formattedSearchTime,
    this.formattedTotalResults,
    this.searchTime,
    this.totalResults,
  });

  SearchSearchInformation.fromJson(core.Map _json)
      : this(
          formattedSearchTime: _json.containsKey('formattedSearchTime')
              ? _json['formattedSearchTime'] as core.String
              : null,
          formattedTotalResults: _json.containsKey('formattedTotalResults')
              ? _json['formattedTotalResults'] as core.String
              : null,
          searchTime: _json.containsKey('searchTime')
              ? (_json['searchTime'] as core.num).toDouble()
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedSearchTime != null)
          'formattedSearchTime': formattedSearchTime!,
        if (formattedTotalResults != null)
          'formattedTotalResults': formattedTotalResults!,
        if (searchTime != null) 'searchTime': searchTime!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// Spell correction information for a query.
class SearchSpelling {
  /// The corrected query.
  core.String? correctedQuery;

  /// The corrected query, formatted in HTML.
  core.String? htmlCorrectedQuery;

  SearchSpelling({
    this.correctedQuery,
    this.htmlCorrectedQuery,
  });

  SearchSpelling.fromJson(core.Map _json)
      : this(
          correctedQuery: _json.containsKey('correctedQuery')
              ? _json['correctedQuery'] as core.String
              : null,
          htmlCorrectedQuery: _json.containsKey('htmlCorrectedQuery')
              ? _json['htmlCorrectedQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correctedQuery != null) 'correctedQuery': correctedQuery!,
        if (htmlCorrectedQuery != null)
          'htmlCorrectedQuery': htmlCorrectedQuery!,
      };
}

/// OpenSearch template and URL.
class SearchUrl {
  /// The actual
  /// [OpenSearch template](http://www.opensearch.org/specifications/opensearch/1.1#opensearch_url_template_syntax)
  /// for this API.
  core.String? template;

  /// The MIME type of the OpenSearch URL template for the Custom Search JSON
  /// API.
  core.String? type;

  SearchUrl({
    this.template,
    this.type,
  });

  SearchUrl.fromJson(core.Map _json)
      : this(
          template: _json.containsKey('template')
              ? _json['template'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (template != null) 'template': template!,
        if (type != null) 'type': type!,
      };
}

/// Response to a custom search request.
class Search {
  /// Metadata and refinements associated with the given search engine,
  /// including: * The name of the search engine that was used for the query.
  ///
  /// * A set of
  /// [facet objects](https://developers.google.com/custom-search/docs/refinements#create)
  /// (refinements) you can use for refining a search.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? context;

  /// The current set of custom search results.
  core.List<Result>? items;

  /// Unique identifier for the type of current object.
  ///
  /// For this API, it is customsearch#search.
  core.String? kind;

  /// The set of
  /// [promotions](https://developers.google.com/custom-search/docs/promotions).
  ///
  /// Present only if the custom search engine's configuration files define any
  /// promotions for the given query.
  core.List<Promotion>? promotions;

  /// Query metadata for the previous, current, and next pages of results.
  SearchQueries? queries;

  /// Metadata about a search operation.
  SearchSearchInformation? searchInformation;

  /// Spell correction information for a query.
  SearchSpelling? spelling;

  /// OpenSearch template and URL.
  SearchUrl? url;

  Search({
    this.context,
    this.items,
    this.kind,
    this.promotions,
    this.queries,
    this.searchInformation,
    this.spelling,
    this.url,
  });

  Search.fromJson(core.Map _json)
      : this(
          context: _json.containsKey('context')
              ? _json['context'] as core.Map<core.String, core.dynamic>
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Result.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          promotions: _json.containsKey('promotions')
              ? (_json['promotions'] as core.List)
                  .map((value) => Promotion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          queries: _json.containsKey('queries')
              ? SearchQueries.fromJson(
                  _json['queries'] as core.Map<core.String, core.dynamic>)
              : null,
          searchInformation: _json.containsKey('searchInformation')
              ? SearchSearchInformation.fromJson(_json['searchInformation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spelling: _json.containsKey('spelling')
              ? SearchSpelling.fromJson(
                  _json['spelling'] as core.Map<core.String, core.dynamic>)
              : null,
          url: _json.containsKey('url')
              ? SearchUrl.fromJson(
                  _json['url'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
        if (promotions != null)
          'promotions': promotions!.map((value) => value.toJson()).toList(),
        if (queries != null) 'queries': queries!.toJson(),
        if (searchInformation != null)
          'searchInformation': searchInformation!.toJson(),
        if (spelling != null) 'spelling': spelling!.toJson(),
        if (url != null) 'url': url!.toJson(),
      };
}
