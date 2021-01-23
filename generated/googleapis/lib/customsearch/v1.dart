// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.customsearch.v1;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client customsearch/v1';

/// Searches over a website or collection of websites
class CustomsearchApi {
  final commons.ApiRequester _requester;

  CseResourceApi get cse => CseResourceApi(_requester);

  CustomsearchApi(http.Client client,
      {core.String rootUrl = 'https://customsearch.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class CseResourceApi {
  final commons.ApiRequester _requester;

  CseSiterestrictResourceApi get siterestrict =>
      CseSiterestrictResourceApi(_requester);

  CseResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns metadata about the search performed, metadata about the engine
  /// used for the search, and the search results.
  ///
  /// Request parameters:
  ///
  /// [c2coff] - Enables or disables [Simplified and Traditional Chinese
  /// Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch).
  /// The default value for this parameter is 0 (zero), meaning that the feature
  /// is enabled. Supported values are: * `1`: Disabled * `0`: Enabled (default)
  ///
  /// [cr] - Restricts search results to documents originating in a particular
  /// country. You may use [Boolean
  /// operators](https://developers.google.com/custom-search/docs/xml_results_appendices#booleanOperators)
  /// in the cr parameter's value. Google Search determines the country of a
  /// document by analyzing: * the top-level domain (TLD) of the document's URL
  /// * the geographic location of the Web server's IP address See the [Country
  /// Parameter
  /// Values](https://developers.google.com/custom-search/docs/xml_results_appendices#countryCollections)
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
  /// of file types indexable by Google can be found in Search Console [Help
  /// Center](https://support.google.com/webmasters/answer/35287).
  ///
  /// [filter] - Controls turning on or off the duplicate content filter. * See
  /// [Automatic
  /// Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Note that host
  /// crowding filtering applies only to multi-site searches. * By default,
  /// Google applies filtering to all search results to improve the quality of
  /// those results. Acceptable values are: * `0`: Turns off duplicate content
  /// filter. * `1`: Turns on duplicate content filter.
  ///
  /// [gl] - Geolocation of end user. * The `gl` parameter value is a two-letter
  /// country code. The `gl` parameter boosts search results whose country of
  /// origin matches the parameter value. See the [Country
  /// Codes](https://developers.google.com/custom-search/docs/xml_results_appendices#countryCodes)
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
  /// * See the [Interface
  /// Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of [Internationalizing Queries and Results
  /// Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and (Supported Interface
  /// Languages)[https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages]
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
  /// `cc_nonderived` and combinations of these. See [typical
  /// combinations](https://wiki.creativecommons.org/wiki/CC_Search_integration).
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
  /// i.e. sort by date. [Example:
  /// sort=date](https://developers.google.com/custom-search/docs/structured_search#sort-by-attribute).
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
    core.String c2coff,
    core.String cr,
    core.String cx,
    core.String dateRestrict,
    core.String exactTerms,
    core.String excludeTerms,
    core.String fileType,
    core.String filter,
    core.String gl,
    core.String googlehost,
    core.String highRange,
    core.String hl,
    core.String hq,
    core.String imgColorType,
    core.String imgDominantColor,
    core.String imgSize,
    core.String imgType,
    core.String linkSite,
    core.String lowRange,
    core.String lr,
    core.int num,
    core.String orTerms,
    core.String q,
    core.String relatedSite,
    core.String rights,
    core.String safe,
    core.String searchType,
    core.String siteSearch,
    core.String siteSearchFilter,
    core.String sort,
    core.int start,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (c2coff != null) {
      _queryParams['c2coff'] = [c2coff];
    }
    if (cr != null) {
      _queryParams['cr'] = [cr];
    }
    if (cx != null) {
      _queryParams['cx'] = [cx];
    }
    if (dateRestrict != null) {
      _queryParams['dateRestrict'] = [dateRestrict];
    }
    if (exactTerms != null) {
      _queryParams['exactTerms'] = [exactTerms];
    }
    if (excludeTerms != null) {
      _queryParams['excludeTerms'] = [excludeTerms];
    }
    if (fileType != null) {
      _queryParams['fileType'] = [fileType];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (gl != null) {
      _queryParams['gl'] = [gl];
    }
    if (googlehost != null) {
      _queryParams['googlehost'] = [googlehost];
    }
    if (highRange != null) {
      _queryParams['highRange'] = [highRange];
    }
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (hq != null) {
      _queryParams['hq'] = [hq];
    }
    if (imgColorType != null) {
      _queryParams['imgColorType'] = [imgColorType];
    }
    if (imgDominantColor != null) {
      _queryParams['imgDominantColor'] = [imgDominantColor];
    }
    if (imgSize != null) {
      _queryParams['imgSize'] = [imgSize];
    }
    if (imgType != null) {
      _queryParams['imgType'] = [imgType];
    }
    if (linkSite != null) {
      _queryParams['linkSite'] = [linkSite];
    }
    if (lowRange != null) {
      _queryParams['lowRange'] = [lowRange];
    }
    if (lr != null) {
      _queryParams['lr'] = [lr];
    }
    if (num != null) {
      _queryParams['num'] = ['${num}'];
    }
    if (orTerms != null) {
      _queryParams['orTerms'] = [orTerms];
    }
    if (q != null) {
      _queryParams['q'] = [q];
    }
    if (relatedSite != null) {
      _queryParams['relatedSite'] = [relatedSite];
    }
    if (rights != null) {
      _queryParams['rights'] = [rights];
    }
    if (safe != null) {
      _queryParams['safe'] = [safe];
    }
    if (searchType != null) {
      _queryParams['searchType'] = [searchType];
    }
    if (siteSearch != null) {
      _queryParams['siteSearch'] = [siteSearch];
    }
    if (siteSearchFilter != null) {
      _queryParams['siteSearchFilter'] = [siteSearchFilter];
    }
    if (sort != null) {
      _queryParams['sort'] = [sort];
    }
    if (start != null) {
      _queryParams['start'] = ['${start}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'customsearch/v1';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Search.fromJson(data));
  }
}

class CseSiterestrictResourceApi {
  final commons.ApiRequester _requester;

  CseSiterestrictResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns metadata about the search performed, metadata about the engine
  /// used for the search, and the search results. Uses a small set of url
  /// patterns.
  ///
  /// Request parameters:
  ///
  /// [c2coff] - Enables or disables [Simplified and Traditional Chinese
  /// Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch).
  /// The default value for this parameter is 0 (zero), meaning that the feature
  /// is enabled. Supported values are: * `1`: Disabled * `0`: Enabled (default)
  ///
  /// [cr] - Restricts search results to documents originating in a particular
  /// country. You may use [Boolean
  /// operators](https://developers.google.com/custom-search/docs/xml_results_appendices#booleanOperators)
  /// in the cr parameter's value. Google Search determines the country of a
  /// document by analyzing: * the top-level domain (TLD) of the document's URL
  /// * the geographic location of the Web server's IP address See the [Country
  /// Parameter
  /// Values](https://developers.google.com/custom-search/docs/xml_results_appendices#countryCollections)
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
  /// of file types indexable by Google can be found in Search Console [Help
  /// Center](https://support.google.com/webmasters/answer/35287).
  ///
  /// [filter] - Controls turning on or off the duplicate content filter. * See
  /// [Automatic
  /// Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Note that host
  /// crowding filtering applies only to multi-site searches. * By default,
  /// Google applies filtering to all search results to improve the quality of
  /// those results. Acceptable values are: * `0`: Turns off duplicate content
  /// filter. * `1`: Turns on duplicate content filter.
  ///
  /// [gl] - Geolocation of end user. * The `gl` parameter value is a two-letter
  /// country code. The `gl` parameter boosts search results whose country of
  /// origin matches the parameter value. See the [Country
  /// Codes](https://developers.google.com/custom-search/docs/xml_results_appendices#countryCodes)
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
  /// * See the [Interface
  /// Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of [Internationalizing Queries and Results
  /// Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and (Supported Interface
  /// Languages)[https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages]
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
  /// `cc_nonderived` and combinations of these. See [typical
  /// combinations](https://wiki.creativecommons.org/wiki/CC_Search_integration).
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
  /// i.e. sort by date. [Example:
  /// sort=date](https://developers.google.com/custom-search/docs/structured_search#sort-by-attribute).
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
    core.String c2coff,
    core.String cr,
    core.String cx,
    core.String dateRestrict,
    core.String exactTerms,
    core.String excludeTerms,
    core.String fileType,
    core.String filter,
    core.String gl,
    core.String googlehost,
    core.String highRange,
    core.String hl,
    core.String hq,
    core.String imgColorType,
    core.String imgDominantColor,
    core.String imgSize,
    core.String imgType,
    core.String linkSite,
    core.String lowRange,
    core.String lr,
    core.int num,
    core.String orTerms,
    core.String q,
    core.String relatedSite,
    core.String rights,
    core.String safe,
    core.String searchType,
    core.String siteSearch,
    core.String siteSearchFilter,
    core.String sort,
    core.int start,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (c2coff != null) {
      _queryParams['c2coff'] = [c2coff];
    }
    if (cr != null) {
      _queryParams['cr'] = [cr];
    }
    if (cx != null) {
      _queryParams['cx'] = [cx];
    }
    if (dateRestrict != null) {
      _queryParams['dateRestrict'] = [dateRestrict];
    }
    if (exactTerms != null) {
      _queryParams['exactTerms'] = [exactTerms];
    }
    if (excludeTerms != null) {
      _queryParams['excludeTerms'] = [excludeTerms];
    }
    if (fileType != null) {
      _queryParams['fileType'] = [fileType];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (gl != null) {
      _queryParams['gl'] = [gl];
    }
    if (googlehost != null) {
      _queryParams['googlehost'] = [googlehost];
    }
    if (highRange != null) {
      _queryParams['highRange'] = [highRange];
    }
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (hq != null) {
      _queryParams['hq'] = [hq];
    }
    if (imgColorType != null) {
      _queryParams['imgColorType'] = [imgColorType];
    }
    if (imgDominantColor != null) {
      _queryParams['imgDominantColor'] = [imgDominantColor];
    }
    if (imgSize != null) {
      _queryParams['imgSize'] = [imgSize];
    }
    if (imgType != null) {
      _queryParams['imgType'] = [imgType];
    }
    if (linkSite != null) {
      _queryParams['linkSite'] = [linkSite];
    }
    if (lowRange != null) {
      _queryParams['lowRange'] = [lowRange];
    }
    if (lr != null) {
      _queryParams['lr'] = [lr];
    }
    if (num != null) {
      _queryParams['num'] = ['${num}'];
    }
    if (orTerms != null) {
      _queryParams['orTerms'] = [orTerms];
    }
    if (q != null) {
      _queryParams['q'] = [q];
    }
    if (relatedSite != null) {
      _queryParams['relatedSite'] = [relatedSite];
    }
    if (rights != null) {
      _queryParams['rights'] = [rights];
    }
    if (safe != null) {
      _queryParams['safe'] = [safe];
    }
    if (searchType != null) {
      _queryParams['searchType'] = [searchType];
    }
    if (siteSearch != null) {
      _queryParams['siteSearch'] = [siteSearch];
    }
    if (siteSearchFilter != null) {
      _queryParams['siteSearchFilter'] = [siteSearchFilter];
    }
    if (sort != null) {
      _queryParams['sort'] = [sort];
    }
    if (start != null) {
      _queryParams['start'] = ['${start}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'customsearch/v1/siterestrict';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Search.fromJson(data));
  }
}

/// Block object belonging to a promotion.
class PromotionBodyLines {
  /// The block object's text in HTML, if it has text.
  core.String htmlTitle;

  /// The anchor text of the block object's link, if it has a link.
  core.String link;

  /// The block object's text, if it has text.
  core.String title;

  /// The URL of the block object's link, if it has one.
  core.String url;

  PromotionBodyLines();

  PromotionBodyLines.fromJson(core.Map _json) {
    if (_json.containsKey('htmlTitle')) {
      htmlTitle = _json['htmlTitle'];
    }
    if (_json.containsKey('link')) {
      link = _json['link'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
    if (_json.containsKey('url')) {
      url = _json['url'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (htmlTitle != null) {
      _json['htmlTitle'] = htmlTitle;
    }
    if (link != null) {
      _json['link'] = link;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Image belonging to a promotion.
class PromotionImage {
  /// Image height in pixels.
  core.int height;

  /// URL of the image for this promotion link.
  core.String source;

  /// Image width in pixels.
  core.int width;

  PromotionImage();

  PromotionImage.fromJson(core.Map _json) {
    if (_json.containsKey('height')) {
      height = _json['height'];
    }
    if (_json.containsKey('source')) {
      source = _json['source'];
    }
    if (_json.containsKey('width')) {
      width = _json['width'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (height != null) {
      _json['height'] = height;
    }
    if (source != null) {
      _json['source'] = source;
    }
    if (width != null) {
      _json['width'] = width;
    }
    return _json;
  }
}

/// Promotion result.
class Promotion {
  /// An array of block objects for this promotion. See [Google WebSearch
  /// Protocol
  /// reference](https://developers.google.com/custom-search/docs/xml_results)
  /// for more information.
  core.List<PromotionBodyLines> bodyLines;

  /// An abridged version of this search's result URL, e.g. www.example.com.
  core.String displayLink;

  /// The title of the promotion, in HTML.
  core.String htmlTitle;

  /// Image belonging to a promotion.
  PromotionImage image;

  /// The URL of the promotion.
  core.String link;

  /// The title of the promotion.
  core.String title;

  Promotion();

  Promotion.fromJson(core.Map _json) {
    if (_json.containsKey('bodyLines')) {
      bodyLines = (_json['bodyLines'] as core.List)
          .map<PromotionBodyLines>(
              (value) => PromotionBodyLines.fromJson(value))
          .toList();
    }
    if (_json.containsKey('displayLink')) {
      displayLink = _json['displayLink'];
    }
    if (_json.containsKey('htmlTitle')) {
      htmlTitle = _json['htmlTitle'];
    }
    if (_json.containsKey('image')) {
      image = PromotionImage.fromJson(_json['image']);
    }
    if (_json.containsKey('link')) {
      link = _json['link'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bodyLines != null) {
      _json['bodyLines'] = bodyLines.map((value) => value.toJson()).toList();
    }
    if (displayLink != null) {
      _json['displayLink'] = displayLink;
    }
    if (htmlTitle != null) {
      _json['htmlTitle'] = htmlTitle;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (link != null) {
      _json['link'] = link;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Image belonging to a custom search result.
class ResultImage {
  /// The size of the image, in pixels.
  core.int byteSize;

  /// A URL pointing to the webpage hosting the image.
  core.String contextLink;

  /// The height of the image, in pixels.
  core.int height;

  /// The height of the thumbnail image, in pixels.
  core.int thumbnailHeight;

  /// A URL to the thumbnail image.
  core.String thumbnailLink;

  /// The width of the thumbnail image, in pixels.
  core.int thumbnailWidth;

  /// The width of the image, in pixels.
  core.int width;

  ResultImage();

  ResultImage.fromJson(core.Map _json) {
    if (_json.containsKey('byteSize')) {
      byteSize = _json['byteSize'];
    }
    if (_json.containsKey('contextLink')) {
      contextLink = _json['contextLink'];
    }
    if (_json.containsKey('height')) {
      height = _json['height'];
    }
    if (_json.containsKey('thumbnailHeight')) {
      thumbnailHeight = _json['thumbnailHeight'];
    }
    if (_json.containsKey('thumbnailLink')) {
      thumbnailLink = _json['thumbnailLink'];
    }
    if (_json.containsKey('thumbnailWidth')) {
      thumbnailWidth = _json['thumbnailWidth'];
    }
    if (_json.containsKey('width')) {
      width = _json['width'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (byteSize != null) {
      _json['byteSize'] = byteSize;
    }
    if (contextLink != null) {
      _json['contextLink'] = contextLink;
    }
    if (height != null) {
      _json['height'] = height;
    }
    if (thumbnailHeight != null) {
      _json['thumbnailHeight'] = thumbnailHeight;
    }
    if (thumbnailLink != null) {
      _json['thumbnailLink'] = thumbnailLink;
    }
    if (thumbnailWidth != null) {
      _json['thumbnailWidth'] = thumbnailWidth;
    }
    if (width != null) {
      _json['width'] = width;
    }
    return _json;
  }
}

/// Refinement label associated with a custom search result.
class ResultLabels {
  /// The display name of a refinement label. This is the name you should
  /// display in your user interface.
  core.String displayName;

  /// Refinement label and the associated refinement operation.
  core.String labelWithOp;

  /// The name of a refinement label, which you can use to refine searches.
  /// Don't display this in your user interface; instead, use displayName.
  core.String name;

  ResultLabels();

  ResultLabels.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('label_with_op')) {
      labelWithOp = _json['label_with_op'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labelWithOp != null) {
      _json['label_with_op'] = labelWithOp;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A custom search result.
class Result {
  /// Indicates the ID of Google's cached version of the search result.
  core.String cacheId;

  /// An abridged version of this search result’s URL, e.g. www.example.com.
  core.String displayLink;

  /// The file format of the search result.
  core.String fileFormat;

  /// The URL displayed after the snippet for each search result.
  core.String formattedUrl;

  /// The HTML-formatted URL displayed after the snippet for each search result.
  core.String htmlFormattedUrl;

  /// The snippet of the search result, in HTML.
  core.String htmlSnippet;

  /// The title of the search result, in HTML.
  core.String htmlTitle;

  /// Image belonging to a custom search result.
  ResultImage image;

  /// A unique identifier for the type of current object. For this API, it is
  /// `customsearch#result.`
  core.String kind;

  /// Encapsulates all information about [refinement
  /// labels](https://developers.google.com/custom-search/docs/xml_results).
  core.List<ResultLabels> labels;

  /// The full URL to which the search result is pointing, e.g.
  /// http://www.example.com/foo/bar.
  core.String link;

  /// The MIME type of the search result.
  core.String mime;

  /// Contains
  /// [PageMap](https://developers.google.com/custom-search/docs/structured_data#pagemaps)
  /// information for this search result.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> pagemap;

  /// The snippet of the search result, in plain text.
  core.String snippet;

  /// The title of the search result, in plain text.
  core.String title;

  Result();

  Result.fromJson(core.Map _json) {
    if (_json.containsKey('cacheId')) {
      cacheId = _json['cacheId'];
    }
    if (_json.containsKey('displayLink')) {
      displayLink = _json['displayLink'];
    }
    if (_json.containsKey('fileFormat')) {
      fileFormat = _json['fileFormat'];
    }
    if (_json.containsKey('formattedUrl')) {
      formattedUrl = _json['formattedUrl'];
    }
    if (_json.containsKey('htmlFormattedUrl')) {
      htmlFormattedUrl = _json['htmlFormattedUrl'];
    }
    if (_json.containsKey('htmlSnippet')) {
      htmlSnippet = _json['htmlSnippet'];
    }
    if (_json.containsKey('htmlTitle')) {
      htmlTitle = _json['htmlTitle'];
    }
    if (_json.containsKey('image')) {
      image = ResultImage.fromJson(_json['image']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.List)
          .map<ResultLabels>((value) => ResultLabels.fromJson(value))
          .toList();
    }
    if (_json.containsKey('link')) {
      link = _json['link'];
    }
    if (_json.containsKey('mime')) {
      mime = _json['mime'];
    }
    if (_json.containsKey('pagemap')) {
      pagemap = (_json['pagemap'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('snippet')) {
      snippet = _json['snippet'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cacheId != null) {
      _json['cacheId'] = cacheId;
    }
    if (displayLink != null) {
      _json['displayLink'] = displayLink;
    }
    if (fileFormat != null) {
      _json['fileFormat'] = fileFormat;
    }
    if (formattedUrl != null) {
      _json['formattedUrl'] = formattedUrl;
    }
    if (htmlFormattedUrl != null) {
      _json['htmlFormattedUrl'] = htmlFormattedUrl;
    }
    if (htmlSnippet != null) {
      _json['htmlSnippet'] = htmlSnippet;
    }
    if (htmlTitle != null) {
      _json['htmlTitle'] = htmlTitle;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (labels != null) {
      _json['labels'] = labels.map((value) => value.toJson()).toList();
    }
    if (link != null) {
      _json['link'] = link;
    }
    if (mime != null) {
      _json['mime'] = mime;
    }
    if (pagemap != null) {
      _json['pagemap'] = pagemap;
    }
    if (snippet != null) {
      _json['snippet'] = snippet;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Custom search request metadata.
class SearchQueriesNextPage {
  /// Number of search results returned in this set.
  core.int count;

  /// Restricts search results to documents originating in a particular country.
  /// You may use [Boolean
  /// operators](https://developers.google.com/custom-search/docs/xml_results#booleanOperators)
  /// in the `cr` parameter's value. Google WebSearch determines the country of
  /// a document by analyzing the following: * The top-level domain (TLD) of the
  /// document's URL. * The geographic location of the web server's IP address.
  /// See [Country (cr) Parameter
  /// Values](https://developers.google.com/custom-search/docs/xml_results#countryCollections)
  /// for a list of valid values for this parameter.
  core.String cr;

  /// The identifier of an engine created using the Programmable Search Engine
  /// [Control Panel](https://programmablesearchengine.google.com/). This is a
  /// custom property not defined in the OpenSearch spec. This parameter is
  /// **required**.
  core.String cx;

  /// Restricts results to URLs based on date. Supported values include: *
  /// `d[number]`: requests results from the specified number of past days. *
  /// `w[number]`: requests results from the specified number of past weeks. *
  /// `m[number]`: requests results from the specified number of past months. *
  /// `y[number]`: requests results from the specified number of past years.
  core.String dateRestrict;

  /// Enables or disables the [Simplified and Traditional Chinese
  /// Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch)
  /// feature. Supported values are: * `0`: enabled (default) * `1`: disabled
  core.String disableCnTwTranslation;

  /// Identifies a phrase that all documents in the search results must contain.
  core.String exactTerms;

  /// Identifies a word or phrase that should not appear in any documents in the
  /// search results.
  core.String excludeTerms;

  /// Restricts results to files of a specified extension. Filetypes supported
  /// by Google include: * Adobe Portable Document Format (`pdf`) * Adobe
  /// PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`,
  /// `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel
  /// (`xls`) * Microsoft PowerPoint (`ppt`) * Microsoft Word (`doc`) *
  /// Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft Write (`wri`) * Rich
  /// Text Format (`rtf`) * Shockwave Flash (`swf`) * Text (`ans`, `txt`).
  /// Additional filetypes may be added in the future. An up-to-date list can
  /// always be found in Google's [file type
  /// FAQ](https://support.google.com/webmasters/answer/35287).
  core.String fileType;

  /// Activates or deactivates the automatic filtering of Google search results.
  /// See [Automatic
  /// Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Valid values
  /// for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**:
  /// By default, Google applies filtering to all search results to improve the
  /// quality of those results.
  core.String filter;

  /// Boosts search results whose country of origin matches the parameter value.
  /// See [Country
  /// Codes](https://developers.google.com/custom-search/docs/xml_results#countryCodes)
  /// for a list of valid values. Specifying a `gl` parameter value in WebSearch
  /// requests should improve the relevance of results. This is particularly
  /// true for international customers and, even more specifically, for
  /// customers in English-speaking countries other than the United States.
  core.String gl;

  /// Specifies the Google domain (for example, google.com, google.de, or
  /// google.fr) to which the search should be limited.
  core.String googleHost;

  /// Specifies the ending value for a search range. Use `cse:lowRange` and
  /// `cse:highrange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  core.String highRange;

  /// Specifies the interface language (host language) of your user interface.
  /// Explicitly setting this parameter improves the performance and the quality
  /// of your search results. See the [Interface
  /// Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of [Internationalizing Queries and Results
  /// Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and [Supported Interface
  /// Languages](https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages)
  /// for a list of supported languages.
  core.String hl;

  /// Appends the specified query terms to the query, as if they were combined
  /// with a logical `AND` operator.
  core.String hq;

  /// Restricts results to images of a specified color type. Supported values
  /// are: * `mono` (black and white) * `gray` (grayscale) * `color` (color)
  core.String imgColorType;

  /// Restricts results to images with a specific dominant color. Supported
  /// values are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` *
  /// `purple` * `pink` * `white` * `gray` * `black` * `brown`
  core.String imgDominantColor;

  /// Restricts results to images of a specified size. Supported values are: *
  /// `icon` (small) * `small | medium | large | xlarge` (medium) * `xxlarge`
  /// (large) * `huge` (extra-large)
  core.String imgSize;

  /// Restricts results to images of a specified type. Supported values are: *
  /// `clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo`
  /// (Photo) * `animated` (Animated) * `stock` (Stock)
  core.String imgType;

  /// The character encoding supported for search requests.
  core.String inputEncoding;

  /// The language of the search results.
  core.String language;

  /// Specifies that all results should contain a link to a specific URL.
  core.String linkSite;

  /// Specifies the starting value for a search range. Use `cse:lowRange` and
  /// `cse:highrange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  core.String lowRange;

  /// Provides additional search terms to check for in a document, where each
  /// document in the search results must contain at least one of the additional
  /// search terms. You can also use the [Boolean
  /// OR](https://developers.google.com/custom-search/docs/xml_results#BooleanOrqt)
  /// query term for this type of query.
  core.String orTerms;

  /// The character encoding supported for search results.
  core.String outputEncoding;

  /// Specifies that all search results should be pages that are related to the
  /// specified URL. The parameter value should be a URL.
  core.String relatedSite;

  /// Filters based on licensing. Supported values include: * `cc_publicdomain`
  /// * `cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
  core.String rights;

  /// Specifies the [SafeSearch
  /// level](https://developers.google.com/custom-search/docs/xml_results#safeSearchLevels)
  /// used for filtering out adult results. This is a custom property not
  /// defined in the OpenSearch spec. Valid parameter values are: * `"off"`:
  /// Disable SafeSearch * `"active"`: Enable SafeSearch
  core.String safe;

  /// The search terms entered by the user.
  core.String searchTerms;

  /// Allowed values are `web` or `image`. If unspecified, results are limited
  /// to webpages.
  core.String searchType;

  /// Restricts results to URLs from a specified site.
  core.String siteSearch;

  /// Specifies whether to include or exclude results from the site named in the
  /// `sitesearch` parameter. Supported values are: * `i`: include content from
  /// site * `e`: exclude content from site
  core.String siteSearchFilter;

  /// Specifies that results should be sorted according to the specified
  /// expression. For example, sort by date.
  core.String sort;

  /// The index of the current set of search results into the total set of
  /// results, where the index of the first result is 1.
  core.int startIndex;

  /// The page number of this set of results, where the page length is set by
  /// the `count` property.
  core.int startPage;

  /// A description of the query.
  core.String title;

  /// Estimated number of total search results. May not be accurate.
  core.String totalResults;

  SearchQueriesNextPage();

  SearchQueriesNextPage.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = _json['count'];
    }
    if (_json.containsKey('cr')) {
      cr = _json['cr'];
    }
    if (_json.containsKey('cx')) {
      cx = _json['cx'];
    }
    if (_json.containsKey('dateRestrict')) {
      dateRestrict = _json['dateRestrict'];
    }
    if (_json.containsKey('disableCnTwTranslation')) {
      disableCnTwTranslation = _json['disableCnTwTranslation'];
    }
    if (_json.containsKey('exactTerms')) {
      exactTerms = _json['exactTerms'];
    }
    if (_json.containsKey('excludeTerms')) {
      excludeTerms = _json['excludeTerms'];
    }
    if (_json.containsKey('fileType')) {
      fileType = _json['fileType'];
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'];
    }
    if (_json.containsKey('gl')) {
      gl = _json['gl'];
    }
    if (_json.containsKey('googleHost')) {
      googleHost = _json['googleHost'];
    }
    if (_json.containsKey('highRange')) {
      highRange = _json['highRange'];
    }
    if (_json.containsKey('hl')) {
      hl = _json['hl'];
    }
    if (_json.containsKey('hq')) {
      hq = _json['hq'];
    }
    if (_json.containsKey('imgColorType')) {
      imgColorType = _json['imgColorType'];
    }
    if (_json.containsKey('imgDominantColor')) {
      imgDominantColor = _json['imgDominantColor'];
    }
    if (_json.containsKey('imgSize')) {
      imgSize = _json['imgSize'];
    }
    if (_json.containsKey('imgType')) {
      imgType = _json['imgType'];
    }
    if (_json.containsKey('inputEncoding')) {
      inputEncoding = _json['inputEncoding'];
    }
    if (_json.containsKey('language')) {
      language = _json['language'];
    }
    if (_json.containsKey('linkSite')) {
      linkSite = _json['linkSite'];
    }
    if (_json.containsKey('lowRange')) {
      lowRange = _json['lowRange'];
    }
    if (_json.containsKey('orTerms')) {
      orTerms = _json['orTerms'];
    }
    if (_json.containsKey('outputEncoding')) {
      outputEncoding = _json['outputEncoding'];
    }
    if (_json.containsKey('relatedSite')) {
      relatedSite = _json['relatedSite'];
    }
    if (_json.containsKey('rights')) {
      rights = _json['rights'];
    }
    if (_json.containsKey('safe')) {
      safe = _json['safe'];
    }
    if (_json.containsKey('searchTerms')) {
      searchTerms = _json['searchTerms'];
    }
    if (_json.containsKey('searchType')) {
      searchType = _json['searchType'];
    }
    if (_json.containsKey('siteSearch')) {
      siteSearch = _json['siteSearch'];
    }
    if (_json.containsKey('siteSearchFilter')) {
      siteSearchFilter = _json['siteSearchFilter'];
    }
    if (_json.containsKey('sort')) {
      sort = _json['sort'];
    }
    if (_json.containsKey('startIndex')) {
      startIndex = _json['startIndex'];
    }
    if (_json.containsKey('startPage')) {
      startPage = _json['startPage'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
    if (_json.containsKey('totalResults')) {
      totalResults = _json['totalResults'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (count != null) {
      _json['count'] = count;
    }
    if (cr != null) {
      _json['cr'] = cr;
    }
    if (cx != null) {
      _json['cx'] = cx;
    }
    if (dateRestrict != null) {
      _json['dateRestrict'] = dateRestrict;
    }
    if (disableCnTwTranslation != null) {
      _json['disableCnTwTranslation'] = disableCnTwTranslation;
    }
    if (exactTerms != null) {
      _json['exactTerms'] = exactTerms;
    }
    if (excludeTerms != null) {
      _json['excludeTerms'] = excludeTerms;
    }
    if (fileType != null) {
      _json['fileType'] = fileType;
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (gl != null) {
      _json['gl'] = gl;
    }
    if (googleHost != null) {
      _json['googleHost'] = googleHost;
    }
    if (highRange != null) {
      _json['highRange'] = highRange;
    }
    if (hl != null) {
      _json['hl'] = hl;
    }
    if (hq != null) {
      _json['hq'] = hq;
    }
    if (imgColorType != null) {
      _json['imgColorType'] = imgColorType;
    }
    if (imgDominantColor != null) {
      _json['imgDominantColor'] = imgDominantColor;
    }
    if (imgSize != null) {
      _json['imgSize'] = imgSize;
    }
    if (imgType != null) {
      _json['imgType'] = imgType;
    }
    if (inputEncoding != null) {
      _json['inputEncoding'] = inputEncoding;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (linkSite != null) {
      _json['linkSite'] = linkSite;
    }
    if (lowRange != null) {
      _json['lowRange'] = lowRange;
    }
    if (orTerms != null) {
      _json['orTerms'] = orTerms;
    }
    if (outputEncoding != null) {
      _json['outputEncoding'] = outputEncoding;
    }
    if (relatedSite != null) {
      _json['relatedSite'] = relatedSite;
    }
    if (rights != null) {
      _json['rights'] = rights;
    }
    if (safe != null) {
      _json['safe'] = safe;
    }
    if (searchTerms != null) {
      _json['searchTerms'] = searchTerms;
    }
    if (searchType != null) {
      _json['searchType'] = searchType;
    }
    if (siteSearch != null) {
      _json['siteSearch'] = siteSearch;
    }
    if (siteSearchFilter != null) {
      _json['siteSearchFilter'] = siteSearchFilter;
    }
    if (sort != null) {
      _json['sort'] = sort;
    }
    if (startIndex != null) {
      _json['startIndex'] = startIndex;
    }
    if (startPage != null) {
      _json['startPage'] = startPage;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (totalResults != null) {
      _json['totalResults'] = totalResults;
    }
    return _json;
  }
}

/// Custom search request metadata.
class SearchQueriesPreviousPage {
  /// Number of search results returned in this set.
  core.int count;

  /// Restricts search results to documents originating in a particular country.
  /// You may use [Boolean
  /// operators](https://developers.google.com/custom-search/docs/xml_results#booleanOperators)
  /// in the `cr` parameter's value. Google WebSearch determines the country of
  /// a document by analyzing the following: * The top-level domain (TLD) of the
  /// document's URL. * The geographic location of the web server's IP address.
  /// See [Country (cr) Parameter
  /// Values](https://developers.google.com/custom-search/docs/xml_results#countryCollections)
  /// for a list of valid values for this parameter.
  core.String cr;

  /// The identifier of an engine created using the Programmable Search Engine
  /// [Control Panel](https://programmablesearchengine.google.com/). This is a
  /// custom property not defined in the OpenSearch spec. This parameter is
  /// **required**.
  core.String cx;

  /// Restricts results to URLs based on date. Supported values include: *
  /// `d[number]`: requests results from the specified number of past days. *
  /// `w[number]`: requests results from the specified number of past weeks. *
  /// `m[number]`: requests results from the specified number of past months. *
  /// `y[number]`: requests results from the specified number of past years.
  core.String dateRestrict;

  /// Enables or disables the [Simplified and Traditional Chinese
  /// Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch)
  /// feature. Supported values are: * `0`: enabled (default) * `1`: disabled
  core.String disableCnTwTranslation;

  /// Identifies a phrase that all documents in the search results must contain.
  core.String exactTerms;

  /// Identifies a word or phrase that should not appear in any documents in the
  /// search results.
  core.String excludeTerms;

  /// Restricts results to files of a specified extension. Filetypes supported
  /// by Google include: * Adobe Portable Document Format (`pdf`) * Adobe
  /// PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`,
  /// `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel
  /// (`xls`) * Microsoft PowerPoint (`ppt`) * Microsoft Word (`doc`) *
  /// Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft Write (`wri`) * Rich
  /// Text Format (`rtf`) * Shockwave Flash (`swf`) * Text (`ans`, `txt`).
  /// Additional filetypes may be added in the future. An up-to-date list can
  /// always be found in Google's [file type
  /// FAQ](https://support.google.com/webmasters/answer/35287).
  core.String fileType;

  /// Activates or deactivates the automatic filtering of Google search results.
  /// See [Automatic
  /// Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Valid values
  /// for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**:
  /// By default, Google applies filtering to all search results to improve the
  /// quality of those results.
  core.String filter;

  /// Boosts search results whose country of origin matches the parameter value.
  /// See [Country
  /// Codes](https://developers.google.com/custom-search/docs/xml_results#countryCodes)
  /// for a list of valid values. Specifying a `gl` parameter value in WebSearch
  /// requests should improve the relevance of results. This is particularly
  /// true for international customers and, even more specifically, for
  /// customers in English-speaking countries other than the United States.
  core.String gl;

  /// Specifies the Google domain (for example, google.com, google.de, or
  /// google.fr) to which the search should be limited.
  core.String googleHost;

  /// Specifies the ending value for a search range. Use `cse:lowRange` and
  /// `cse:highrange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  core.String highRange;

  /// Specifies the interface language (host language) of your user interface.
  /// Explicitly setting this parameter improves the performance and the quality
  /// of your search results. See the [Interface
  /// Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of [Internationalizing Queries and Results
  /// Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and [Supported Interface
  /// Languages](https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages)
  /// for a list of supported languages.
  core.String hl;

  /// Appends the specified query terms to the query, as if they were combined
  /// with a logical `AND` operator.
  core.String hq;

  /// Restricts results to images of a specified color type. Supported values
  /// are: * `mono` (black and white) * `gray` (grayscale) * `color` (color)
  core.String imgColorType;

  /// Restricts results to images with a specific dominant color. Supported
  /// values are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` *
  /// `purple` * `pink` * `white` * `gray` * `black` * `brown`
  core.String imgDominantColor;

  /// Restricts results to images of a specified size. Supported values are: *
  /// `icon` (small) * `small | medium | large | xlarge` (medium) * `xxlarge`
  /// (large) * `huge` (extra-large)
  core.String imgSize;

  /// Restricts results to images of a specified type. Supported values are: *
  /// `clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo`
  /// (Photo) * `animated` (Animated) * `stock` (Stock)
  core.String imgType;

  /// The character encoding supported for search requests.
  core.String inputEncoding;

  /// The language of the search results.
  core.String language;

  /// Specifies that all results should contain a link to a specific URL.
  core.String linkSite;

  /// Specifies the starting value for a search range. Use `cse:lowRange` and
  /// `cse:highrange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  core.String lowRange;

  /// Provides additional search terms to check for in a document, where each
  /// document in the search results must contain at least one of the additional
  /// search terms. You can also use the [Boolean
  /// OR](https://developers.google.com/custom-search/docs/xml_results#BooleanOrqt)
  /// query term for this type of query.
  core.String orTerms;

  /// The character encoding supported for search results.
  core.String outputEncoding;

  /// Specifies that all search results should be pages that are related to the
  /// specified URL. The parameter value should be a URL.
  core.String relatedSite;

  /// Filters based on licensing. Supported values include: * `cc_publicdomain`
  /// * `cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
  core.String rights;

  /// Specifies the [SafeSearch
  /// level](https://developers.google.com/custom-search/docs/xml_results#safeSearchLevels)
  /// used for filtering out adult results. This is a custom property not
  /// defined in the OpenSearch spec. Valid parameter values are: * `"off"`:
  /// Disable SafeSearch * `"active"`: Enable SafeSearch
  core.String safe;

  /// The search terms entered by the user.
  core.String searchTerms;

  /// Allowed values are `web` or `image`. If unspecified, results are limited
  /// to webpages.
  core.String searchType;

  /// Restricts results to URLs from a specified site.
  core.String siteSearch;

  /// Specifies whether to include or exclude results from the site named in the
  /// `sitesearch` parameter. Supported values are: * `i`: include content from
  /// site * `e`: exclude content from site
  core.String siteSearchFilter;

  /// Specifies that results should be sorted according to the specified
  /// expression. For example, sort by date.
  core.String sort;

  /// The index of the current set of search results into the total set of
  /// results, where the index of the first result is 1.
  core.int startIndex;

  /// The page number of this set of results, where the page length is set by
  /// the `count` property.
  core.int startPage;

  /// A description of the query.
  core.String title;

  /// Estimated number of total search results. May not be accurate.
  core.String totalResults;

  SearchQueriesPreviousPage();

  SearchQueriesPreviousPage.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = _json['count'];
    }
    if (_json.containsKey('cr')) {
      cr = _json['cr'];
    }
    if (_json.containsKey('cx')) {
      cx = _json['cx'];
    }
    if (_json.containsKey('dateRestrict')) {
      dateRestrict = _json['dateRestrict'];
    }
    if (_json.containsKey('disableCnTwTranslation')) {
      disableCnTwTranslation = _json['disableCnTwTranslation'];
    }
    if (_json.containsKey('exactTerms')) {
      exactTerms = _json['exactTerms'];
    }
    if (_json.containsKey('excludeTerms')) {
      excludeTerms = _json['excludeTerms'];
    }
    if (_json.containsKey('fileType')) {
      fileType = _json['fileType'];
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'];
    }
    if (_json.containsKey('gl')) {
      gl = _json['gl'];
    }
    if (_json.containsKey('googleHost')) {
      googleHost = _json['googleHost'];
    }
    if (_json.containsKey('highRange')) {
      highRange = _json['highRange'];
    }
    if (_json.containsKey('hl')) {
      hl = _json['hl'];
    }
    if (_json.containsKey('hq')) {
      hq = _json['hq'];
    }
    if (_json.containsKey('imgColorType')) {
      imgColorType = _json['imgColorType'];
    }
    if (_json.containsKey('imgDominantColor')) {
      imgDominantColor = _json['imgDominantColor'];
    }
    if (_json.containsKey('imgSize')) {
      imgSize = _json['imgSize'];
    }
    if (_json.containsKey('imgType')) {
      imgType = _json['imgType'];
    }
    if (_json.containsKey('inputEncoding')) {
      inputEncoding = _json['inputEncoding'];
    }
    if (_json.containsKey('language')) {
      language = _json['language'];
    }
    if (_json.containsKey('linkSite')) {
      linkSite = _json['linkSite'];
    }
    if (_json.containsKey('lowRange')) {
      lowRange = _json['lowRange'];
    }
    if (_json.containsKey('orTerms')) {
      orTerms = _json['orTerms'];
    }
    if (_json.containsKey('outputEncoding')) {
      outputEncoding = _json['outputEncoding'];
    }
    if (_json.containsKey('relatedSite')) {
      relatedSite = _json['relatedSite'];
    }
    if (_json.containsKey('rights')) {
      rights = _json['rights'];
    }
    if (_json.containsKey('safe')) {
      safe = _json['safe'];
    }
    if (_json.containsKey('searchTerms')) {
      searchTerms = _json['searchTerms'];
    }
    if (_json.containsKey('searchType')) {
      searchType = _json['searchType'];
    }
    if (_json.containsKey('siteSearch')) {
      siteSearch = _json['siteSearch'];
    }
    if (_json.containsKey('siteSearchFilter')) {
      siteSearchFilter = _json['siteSearchFilter'];
    }
    if (_json.containsKey('sort')) {
      sort = _json['sort'];
    }
    if (_json.containsKey('startIndex')) {
      startIndex = _json['startIndex'];
    }
    if (_json.containsKey('startPage')) {
      startPage = _json['startPage'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
    if (_json.containsKey('totalResults')) {
      totalResults = _json['totalResults'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (count != null) {
      _json['count'] = count;
    }
    if (cr != null) {
      _json['cr'] = cr;
    }
    if (cx != null) {
      _json['cx'] = cx;
    }
    if (dateRestrict != null) {
      _json['dateRestrict'] = dateRestrict;
    }
    if (disableCnTwTranslation != null) {
      _json['disableCnTwTranslation'] = disableCnTwTranslation;
    }
    if (exactTerms != null) {
      _json['exactTerms'] = exactTerms;
    }
    if (excludeTerms != null) {
      _json['excludeTerms'] = excludeTerms;
    }
    if (fileType != null) {
      _json['fileType'] = fileType;
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (gl != null) {
      _json['gl'] = gl;
    }
    if (googleHost != null) {
      _json['googleHost'] = googleHost;
    }
    if (highRange != null) {
      _json['highRange'] = highRange;
    }
    if (hl != null) {
      _json['hl'] = hl;
    }
    if (hq != null) {
      _json['hq'] = hq;
    }
    if (imgColorType != null) {
      _json['imgColorType'] = imgColorType;
    }
    if (imgDominantColor != null) {
      _json['imgDominantColor'] = imgDominantColor;
    }
    if (imgSize != null) {
      _json['imgSize'] = imgSize;
    }
    if (imgType != null) {
      _json['imgType'] = imgType;
    }
    if (inputEncoding != null) {
      _json['inputEncoding'] = inputEncoding;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (linkSite != null) {
      _json['linkSite'] = linkSite;
    }
    if (lowRange != null) {
      _json['lowRange'] = lowRange;
    }
    if (orTerms != null) {
      _json['orTerms'] = orTerms;
    }
    if (outputEncoding != null) {
      _json['outputEncoding'] = outputEncoding;
    }
    if (relatedSite != null) {
      _json['relatedSite'] = relatedSite;
    }
    if (rights != null) {
      _json['rights'] = rights;
    }
    if (safe != null) {
      _json['safe'] = safe;
    }
    if (searchTerms != null) {
      _json['searchTerms'] = searchTerms;
    }
    if (searchType != null) {
      _json['searchType'] = searchType;
    }
    if (siteSearch != null) {
      _json['siteSearch'] = siteSearch;
    }
    if (siteSearchFilter != null) {
      _json['siteSearchFilter'] = siteSearchFilter;
    }
    if (sort != null) {
      _json['sort'] = sort;
    }
    if (startIndex != null) {
      _json['startIndex'] = startIndex;
    }
    if (startPage != null) {
      _json['startPage'] = startPage;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (totalResults != null) {
      _json['totalResults'] = totalResults;
    }
    return _json;
  }
}

/// Custom search request metadata.
class SearchQueriesRequest {
  /// Number of search results returned in this set.
  core.int count;

  /// Restricts search results to documents originating in a particular country.
  /// You may use [Boolean
  /// operators](https://developers.google.com/custom-search/docs/xml_results#booleanOperators)
  /// in the `cr` parameter's value. Google WebSearch determines the country of
  /// a document by analyzing the following: * The top-level domain (TLD) of the
  /// document's URL. * The geographic location of the web server's IP address.
  /// See [Country (cr) Parameter
  /// Values](https://developers.google.com/custom-search/docs/xml_results#countryCollections)
  /// for a list of valid values for this parameter.
  core.String cr;

  /// The identifier of an engine created using the Programmable Search Engine
  /// [Control Panel](https://programmablesearchengine.google.com/). This is a
  /// custom property not defined in the OpenSearch spec. This parameter is
  /// **required**.
  core.String cx;

  /// Restricts results to URLs based on date. Supported values include: *
  /// `d[number]`: requests results from the specified number of past days. *
  /// `w[number]`: requests results from the specified number of past weeks. *
  /// `m[number]`: requests results from the specified number of past months. *
  /// `y[number]`: requests results from the specified number of past years.
  core.String dateRestrict;

  /// Enables or disables the [Simplified and Traditional Chinese
  /// Search](https://developers.google.com/custom-search/docs/xml_results#chineseSearch)
  /// feature. Supported values are: * `0`: enabled (default) * `1`: disabled
  core.String disableCnTwTranslation;

  /// Identifies a phrase that all documents in the search results must contain.
  core.String exactTerms;

  /// Identifies a word or phrase that should not appear in any documents in the
  /// search results.
  core.String excludeTerms;

  /// Restricts results to files of a specified extension. Filetypes supported
  /// by Google include: * Adobe Portable Document Format (`pdf`) * Adobe
  /// PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`,
  /// `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel
  /// (`xls`) * Microsoft PowerPoint (`ppt`) * Microsoft Word (`doc`) *
  /// Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft Write (`wri`) * Rich
  /// Text Format (`rtf`) * Shockwave Flash (`swf`) * Text (`ans`, `txt`).
  /// Additional filetypes may be added in the future. An up-to-date list can
  /// always be found in Google's [file type
  /// FAQ](https://support.google.com/webmasters/answer/35287).
  core.String fileType;

  /// Activates or deactivates the automatic filtering of Google search results.
  /// See [Automatic
  /// Filtering](https://developers.google.com/custom-search/docs/xml_results#automaticFiltering)
  /// for more information about Google's search results filters. Valid values
  /// for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**:
  /// By default, Google applies filtering to all search results to improve the
  /// quality of those results.
  core.String filter;

  /// Boosts search results whose country of origin matches the parameter value.
  /// See [Country
  /// Codes](https://developers.google.com/custom-search/docs/xml_results#countryCodes)
  /// for a list of valid values. Specifying a `gl` parameter value in WebSearch
  /// requests should improve the relevance of results. This is particularly
  /// true for international customers and, even more specifically, for
  /// customers in English-speaking countries other than the United States.
  core.String gl;

  /// Specifies the Google domain (for example, google.com, google.de, or
  /// google.fr) to which the search should be limited.
  core.String googleHost;

  /// Specifies the ending value for a search range. Use `cse:lowRange` and
  /// `cse:highrange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  core.String highRange;

  /// Specifies the interface language (host language) of your user interface.
  /// Explicitly setting this parameter improves the performance and the quality
  /// of your search results. See the [Interface
  /// Languages](https://developers.google.com/custom-search/docs/xml_results#wsInterfaceLanguages)
  /// section of [Internationalizing Queries and Results
  /// Presentation](https://developers.google.com/custom-search/docs/xml_results#wsInternationalizing)
  /// for more information, and [Supported Interface
  /// Languages](https://developers.google.com/custom-search/docs/xml_results_appendices#interfaceLanguages)
  /// for a list of supported languages.
  core.String hl;

  /// Appends the specified query terms to the query, as if they were combined
  /// with a logical `AND` operator.
  core.String hq;

  /// Restricts results to images of a specified color type. Supported values
  /// are: * `mono` (black and white) * `gray` (grayscale) * `color` (color)
  core.String imgColorType;

  /// Restricts results to images with a specific dominant color. Supported
  /// values are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` *
  /// `purple` * `pink` * `white` * `gray` * `black` * `brown`
  core.String imgDominantColor;

  /// Restricts results to images of a specified size. Supported values are: *
  /// `icon` (small) * `small | medium | large | xlarge` (medium) * `xxlarge`
  /// (large) * `huge` (extra-large)
  core.String imgSize;

  /// Restricts results to images of a specified type. Supported values are: *
  /// `clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo`
  /// (Photo) * `animated` (Animated) * `stock` (Stock)
  core.String imgType;

  /// The character encoding supported for search requests.
  core.String inputEncoding;

  /// The language of the search results.
  core.String language;

  /// Specifies that all results should contain a link to a specific URL.
  core.String linkSite;

  /// Specifies the starting value for a search range. Use `cse:lowRange` and
  /// `cse:highrange` to append an inclusive search range of
  /// `lowRange...highRange` to the query.
  core.String lowRange;

  /// Provides additional search terms to check for in a document, where each
  /// document in the search results must contain at least one of the additional
  /// search terms. You can also use the [Boolean
  /// OR](https://developers.google.com/custom-search/docs/xml_results#BooleanOrqt)
  /// query term for this type of query.
  core.String orTerms;

  /// The character encoding supported for search results.
  core.String outputEncoding;

  /// Specifies that all search results should be pages that are related to the
  /// specified URL. The parameter value should be a URL.
  core.String relatedSite;

  /// Filters based on licensing. Supported values include: * `cc_publicdomain`
  /// * `cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
  core.String rights;

  /// Specifies the [SafeSearch
  /// level](https://developers.google.com/custom-search/docs/xml_results#safeSearchLevels)
  /// used for filtering out adult results. This is a custom property not
  /// defined in the OpenSearch spec. Valid parameter values are: * `"off"`:
  /// Disable SafeSearch * `"active"`: Enable SafeSearch
  core.String safe;

  /// The search terms entered by the user.
  core.String searchTerms;

  /// Allowed values are `web` or `image`. If unspecified, results are limited
  /// to webpages.
  core.String searchType;

  /// Restricts results to URLs from a specified site.
  core.String siteSearch;

  /// Specifies whether to include or exclude results from the site named in the
  /// `sitesearch` parameter. Supported values are: * `i`: include content from
  /// site * `e`: exclude content from site
  core.String siteSearchFilter;

  /// Specifies that results should be sorted according to the specified
  /// expression. For example, sort by date.
  core.String sort;

  /// The index of the current set of search results into the total set of
  /// results, where the index of the first result is 1.
  core.int startIndex;

  /// The page number of this set of results, where the page length is set by
  /// the `count` property.
  core.int startPage;

  /// A description of the query.
  core.String title;

  /// Estimated number of total search results. May not be accurate.
  core.String totalResults;

  SearchQueriesRequest();

  SearchQueriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = _json['count'];
    }
    if (_json.containsKey('cr')) {
      cr = _json['cr'];
    }
    if (_json.containsKey('cx')) {
      cx = _json['cx'];
    }
    if (_json.containsKey('dateRestrict')) {
      dateRestrict = _json['dateRestrict'];
    }
    if (_json.containsKey('disableCnTwTranslation')) {
      disableCnTwTranslation = _json['disableCnTwTranslation'];
    }
    if (_json.containsKey('exactTerms')) {
      exactTerms = _json['exactTerms'];
    }
    if (_json.containsKey('excludeTerms')) {
      excludeTerms = _json['excludeTerms'];
    }
    if (_json.containsKey('fileType')) {
      fileType = _json['fileType'];
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'];
    }
    if (_json.containsKey('gl')) {
      gl = _json['gl'];
    }
    if (_json.containsKey('googleHost')) {
      googleHost = _json['googleHost'];
    }
    if (_json.containsKey('highRange')) {
      highRange = _json['highRange'];
    }
    if (_json.containsKey('hl')) {
      hl = _json['hl'];
    }
    if (_json.containsKey('hq')) {
      hq = _json['hq'];
    }
    if (_json.containsKey('imgColorType')) {
      imgColorType = _json['imgColorType'];
    }
    if (_json.containsKey('imgDominantColor')) {
      imgDominantColor = _json['imgDominantColor'];
    }
    if (_json.containsKey('imgSize')) {
      imgSize = _json['imgSize'];
    }
    if (_json.containsKey('imgType')) {
      imgType = _json['imgType'];
    }
    if (_json.containsKey('inputEncoding')) {
      inputEncoding = _json['inputEncoding'];
    }
    if (_json.containsKey('language')) {
      language = _json['language'];
    }
    if (_json.containsKey('linkSite')) {
      linkSite = _json['linkSite'];
    }
    if (_json.containsKey('lowRange')) {
      lowRange = _json['lowRange'];
    }
    if (_json.containsKey('orTerms')) {
      orTerms = _json['orTerms'];
    }
    if (_json.containsKey('outputEncoding')) {
      outputEncoding = _json['outputEncoding'];
    }
    if (_json.containsKey('relatedSite')) {
      relatedSite = _json['relatedSite'];
    }
    if (_json.containsKey('rights')) {
      rights = _json['rights'];
    }
    if (_json.containsKey('safe')) {
      safe = _json['safe'];
    }
    if (_json.containsKey('searchTerms')) {
      searchTerms = _json['searchTerms'];
    }
    if (_json.containsKey('searchType')) {
      searchType = _json['searchType'];
    }
    if (_json.containsKey('siteSearch')) {
      siteSearch = _json['siteSearch'];
    }
    if (_json.containsKey('siteSearchFilter')) {
      siteSearchFilter = _json['siteSearchFilter'];
    }
    if (_json.containsKey('sort')) {
      sort = _json['sort'];
    }
    if (_json.containsKey('startIndex')) {
      startIndex = _json['startIndex'];
    }
    if (_json.containsKey('startPage')) {
      startPage = _json['startPage'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
    if (_json.containsKey('totalResults')) {
      totalResults = _json['totalResults'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (count != null) {
      _json['count'] = count;
    }
    if (cr != null) {
      _json['cr'] = cr;
    }
    if (cx != null) {
      _json['cx'] = cx;
    }
    if (dateRestrict != null) {
      _json['dateRestrict'] = dateRestrict;
    }
    if (disableCnTwTranslation != null) {
      _json['disableCnTwTranslation'] = disableCnTwTranslation;
    }
    if (exactTerms != null) {
      _json['exactTerms'] = exactTerms;
    }
    if (excludeTerms != null) {
      _json['excludeTerms'] = excludeTerms;
    }
    if (fileType != null) {
      _json['fileType'] = fileType;
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (gl != null) {
      _json['gl'] = gl;
    }
    if (googleHost != null) {
      _json['googleHost'] = googleHost;
    }
    if (highRange != null) {
      _json['highRange'] = highRange;
    }
    if (hl != null) {
      _json['hl'] = hl;
    }
    if (hq != null) {
      _json['hq'] = hq;
    }
    if (imgColorType != null) {
      _json['imgColorType'] = imgColorType;
    }
    if (imgDominantColor != null) {
      _json['imgDominantColor'] = imgDominantColor;
    }
    if (imgSize != null) {
      _json['imgSize'] = imgSize;
    }
    if (imgType != null) {
      _json['imgType'] = imgType;
    }
    if (inputEncoding != null) {
      _json['inputEncoding'] = inputEncoding;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (linkSite != null) {
      _json['linkSite'] = linkSite;
    }
    if (lowRange != null) {
      _json['lowRange'] = lowRange;
    }
    if (orTerms != null) {
      _json['orTerms'] = orTerms;
    }
    if (outputEncoding != null) {
      _json['outputEncoding'] = outputEncoding;
    }
    if (relatedSite != null) {
      _json['relatedSite'] = relatedSite;
    }
    if (rights != null) {
      _json['rights'] = rights;
    }
    if (safe != null) {
      _json['safe'] = safe;
    }
    if (searchTerms != null) {
      _json['searchTerms'] = searchTerms;
    }
    if (searchType != null) {
      _json['searchType'] = searchType;
    }
    if (siteSearch != null) {
      _json['siteSearch'] = siteSearch;
    }
    if (siteSearchFilter != null) {
      _json['siteSearchFilter'] = siteSearchFilter;
    }
    if (sort != null) {
      _json['sort'] = sort;
    }
    if (startIndex != null) {
      _json['startIndex'] = startIndex;
    }
    if (startPage != null) {
      _json['startPage'] = startPage;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (totalResults != null) {
      _json['totalResults'] = totalResults;
    }
    return _json;
  }
}

/// Query metadata for the previous, current, and next pages of results.
class SearchQueries {
  /// Metadata representing the next page of results, if applicable.
  core.List<SearchQueriesNextPage> nextPage;

  /// Metadata representing the previous page of results, if applicable.
  core.List<SearchQueriesPreviousPage> previousPage;

  /// Metadata representing the current request.
  core.List<SearchQueriesRequest> request;

  SearchQueries();

  SearchQueries.fromJson(core.Map _json) {
    if (_json.containsKey('nextPage')) {
      nextPage = (_json['nextPage'] as core.List)
          .map<SearchQueriesNextPage>(
              (value) => SearchQueriesNextPage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('previousPage')) {
      previousPage = (_json['previousPage'] as core.List)
          .map<SearchQueriesPreviousPage>(
              (value) => SearchQueriesPreviousPage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('request')) {
      request = (_json['request'] as core.List)
          .map<SearchQueriesRequest>(
              (value) => SearchQueriesRequest.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPage != null) {
      _json['nextPage'] = nextPage.map((value) => value.toJson()).toList();
    }
    if (previousPage != null) {
      _json['previousPage'] =
          previousPage.map((value) => value.toJson()).toList();
    }
    if (request != null) {
      _json['request'] = request.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Metadata about a search operation.
class SearchSearchInformation {
  /// The time taken for the server to return search results, formatted
  /// according to locale style.
  core.String formattedSearchTime;

  /// The total number of search results, formatted according to locale style.
  core.String formattedTotalResults;

  /// The time taken for the server to return search results.
  core.double searchTime;

  /// The total number of search results returned by the query.
  core.String totalResults;

  SearchSearchInformation();

  SearchSearchInformation.fromJson(core.Map _json) {
    if (_json.containsKey('formattedSearchTime')) {
      formattedSearchTime = _json['formattedSearchTime'];
    }
    if (_json.containsKey('formattedTotalResults')) {
      formattedTotalResults = _json['formattedTotalResults'];
    }
    if (_json.containsKey('searchTime')) {
      searchTime = _json['searchTime'].toDouble();
    }
    if (_json.containsKey('totalResults')) {
      totalResults = _json['totalResults'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (formattedSearchTime != null) {
      _json['formattedSearchTime'] = formattedSearchTime;
    }
    if (formattedTotalResults != null) {
      _json['formattedTotalResults'] = formattedTotalResults;
    }
    if (searchTime != null) {
      _json['searchTime'] = searchTime;
    }
    if (totalResults != null) {
      _json['totalResults'] = totalResults;
    }
    return _json;
  }
}

/// Spell correction information for a query.
class SearchSpelling {
  /// The corrected query.
  core.String correctedQuery;

  /// The corrected query, formatted in HTML.
  core.String htmlCorrectedQuery;

  SearchSpelling();

  SearchSpelling.fromJson(core.Map _json) {
    if (_json.containsKey('correctedQuery')) {
      correctedQuery = _json['correctedQuery'];
    }
    if (_json.containsKey('htmlCorrectedQuery')) {
      htmlCorrectedQuery = _json['htmlCorrectedQuery'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (correctedQuery != null) {
      _json['correctedQuery'] = correctedQuery;
    }
    if (htmlCorrectedQuery != null) {
      _json['htmlCorrectedQuery'] = htmlCorrectedQuery;
    }
    return _json;
  }
}

/// OpenSearch template and URL.
class SearchUrl {
  /// The actual [OpenSearch
  /// template](http://www.opensearch.org/specifications/opensearch/1.1#opensearch_url_template_syntax)
  /// for this API.
  core.String template;

  /// The MIME type of the OpenSearch URL template for the Custom Search JSON
  /// API.
  core.String type;

  SearchUrl();

  SearchUrl.fromJson(core.Map _json) {
    if (_json.containsKey('template')) {
      template = _json['template'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (template != null) {
      _json['template'] = template;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Response to a custom search request.
class Search {
  /// Metadata and refinements associated with the given search engine,
  /// including: * The name of the search engine that was used for the query. *
  /// A set of [facet
  /// objects](https://developers.google.com/custom-search/docs/refinements#create)
  /// (refinements) you can use for refining a search.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> context;

  /// The current set of custom search results.
  core.List<Result> items;

  /// Unique identifier for the type of current object. For this API, it is
  /// customsearch#search.
  core.String kind;

  /// The set of
  /// [promotions](https://developers.google.com/custom-search/docs/promotions).
  /// Present only if the custom search engine's configuration files define any
  /// promotions for the given query.
  core.List<Promotion> promotions;

  /// Query metadata for the previous, current, and next pages of results.
  SearchQueries queries;

  /// Metadata about a search operation.
  SearchSearchInformation searchInformation;

  /// Spell correction information for a query.
  SearchSpelling spelling;

  /// OpenSearch template and URL.
  SearchUrl url;

  Search();

  Search.fromJson(core.Map _json) {
    if (_json.containsKey('context')) {
      context = (_json['context'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Result>((value) => Result.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('promotions')) {
      promotions = (_json['promotions'] as core.List)
          .map<Promotion>((value) => Promotion.fromJson(value))
          .toList();
    }
    if (_json.containsKey('queries')) {
      queries = SearchQueries.fromJson(_json['queries']);
    }
    if (_json.containsKey('searchInformation')) {
      searchInformation =
          SearchSearchInformation.fromJson(_json['searchInformation']);
    }
    if (_json.containsKey('spelling')) {
      spelling = SearchSpelling.fromJson(_json['spelling']);
    }
    if (_json.containsKey('url')) {
      url = SearchUrl.fromJson(_json['url']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (context != null) {
      _json['context'] = context;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (promotions != null) {
      _json['promotions'] = promotions.map((value) => value.toJson()).toList();
    }
    if (queries != null) {
      _json['queries'] = queries.toJson();
    }
    if (searchInformation != null) {
      _json['searchInformation'] = searchInformation.toJson();
    }
    if (spelling != null) {
      _json['spelling'] = spelling.toJson();
    }
    if (url != null) {
      _json['url'] = url.toJson();
    }
    return _json;
  }
}
