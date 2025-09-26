// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Web Fonts Developer API - v1
///
/// The Google Web Fonts Developer API lets you retrieve information about web
/// fonts served by Google.
///
/// For more information, see
/// <https://developers.google.com/fonts/docs/developer_api>
///
/// Create an instance of [WebfontsApi] to access these resources:
///
/// - [WebfontsResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Google Web Fonts Developer API lets you retrieve information about web
/// fonts served by Google.
class WebfontsApi {
  final commons.ApiRequester _requester;

  WebfontsResource get webfonts => WebfontsResource(_requester);

  WebfontsApi(
    http.Client client, {
    core.String rootUrl = 'https://webfonts.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class WebfontsResource {
  final commons.ApiRequester _requester;

  WebfontsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the list of fonts currently served by the Google Fonts Developer
  /// API.
  ///
  /// Request parameters:
  ///
  /// [capability] - Controls the font urls in `Webfont.files`, by default,
  /// static ttf fonts are sent.
  ///
  /// [category] - Filters by Webfont.category, if category is found in
  /// Webfont.categories. If not set, returns all families.
  ///
  /// [family] - Filters by Webfont.family, using literal match. If not set,
  /// returns all families
  ///
  /// [sort] - Enables sorting of the list.
  /// Possible string values are:
  /// - "SORT_UNDEFINED" : No sorting specified, use the default sorting method.
  /// - "ALPHA" : Sort alphabetically
  /// - "DATE" : Sort by date added
  /// - "POPULARITY" : Sort by popularity
  /// - "STYLE" : Sort by number of styles
  /// - "TRENDING" : Sort by trending
  ///
  /// [subset] - Filters by Webfont.subset, if subset is found in
  /// Webfont.subsets. If not set, returns all families.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebfontList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebfontList> list({
    core.List<core.String>? capability,
    core.String? category,
    core.List<core.String>? family,
    core.String? sort,
    core.String? subset,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (capability != null) 'capability': capability,
      if (category != null) 'category': [category],
      if (family != null) 'family': family,
      if (sort != null) 'sort': [sort],
      if (subset != null) 'subset': [subset],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/webfonts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebfontList.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Metadata for a variable font axis.
class Axis {
  /// maximum value
  core.double? end;

  /// minimum value
  core.double? start;

  /// tag name.
  core.String? tag;

  Axis({this.end, this.start, this.tag});

  Axis.fromJson(core.Map json_)
    : this(
        end: (json_['end'] as core.num?)?.toDouble(),
        start: (json_['start'] as core.num?)?.toDouble(),
        tag: json_['tag'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (end != null) 'end': end!,
    if (start != null) 'start': start!,
    if (tag != null) 'tag': tag!,
  };
}

/// Metadata for a tag.
class Tag {
  /// The name of the tag.
  core.String? name;

  /// The weight of the tag.
  core.double? weight;

  Tag({this.name, this.weight});

  Tag.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        weight: (json_['weight'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (weight != null) 'weight': weight!,
  };
}

/// Metadata describing a family of fonts.
class Webfont {
  /// Axis for variable fonts.
  core.List<Axis>? axes;

  /// The category of the font.
  core.String? category;

  /// The color format(s) available for this family.
  core.List<core.String>? colorCapabilities;

  /// The name of the font.
  core.String? family;

  /// The font files (with all supported scripts) for each one of the available
  /// variants, as a key : value map.
  core.Map<core.String, core.String>? files;

  /// This kind represents a webfont object in the webfonts service.
  core.String? kind;

  /// The date (format "yyyy-MM-dd") the font was modified for the last time.
  core.String? lastModified;

  /// Font URL for menu subset, a subset of the font that is enough to display
  /// the font name
  core.String? menu;

  /// The scripts supported by the font.
  core.List<core.String>? subsets;

  /// The tags that apply to this family.
  core.List<Tag>? tags;

  /// The available variants for the font.
  core.List<core.String>? variants;

  /// The font version.
  core.String? version;

  Webfont({
    this.axes,
    this.category,
    this.colorCapabilities,
    this.family,
    this.files,
    this.kind,
    this.lastModified,
    this.menu,
    this.subsets,
    this.tags,
    this.variants,
    this.version,
  });

  Webfont.fromJson(core.Map json_)
    : this(
        axes:
            (json_['axes'] as core.List?)
                ?.map(
                  (value) => Axis.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        category: json_['category'] as core.String?,
        colorCapabilities:
            (json_['colorCapabilities'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        family: json_['family'] as core.String?,
        files: (json_['files'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        kind: json_['kind'] as core.String?,
        lastModified: json_['lastModified'] as core.String?,
        menu: json_['menu'] as core.String?,
        subsets:
            (json_['subsets'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        tags:
            (json_['tags'] as core.List?)
                ?.map(
                  (value) => Tag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        variants:
            (json_['variants'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (axes != null) 'axes': axes!,
    if (category != null) 'category': category!,
    if (colorCapabilities != null) 'colorCapabilities': colorCapabilities!,
    if (family != null) 'family': family!,
    if (files != null) 'files': files!,
    if (kind != null) 'kind': kind!,
    if (lastModified != null) 'lastModified': lastModified!,
    if (menu != null) 'menu': menu!,
    if (subsets != null) 'subsets': subsets!,
    if (tags != null) 'tags': tags!,
    if (variants != null) 'variants': variants!,
    if (version != null) 'version': version!,
  };
}

/// Response containing the list of fonts currently served by the Google Fonts
/// API.
class WebfontList {
  /// The list of fonts currently served by the Google Fonts API.
  core.List<Webfont>? items;

  /// This kind represents a list of webfont objects in the webfonts service.
  core.String? kind;

  WebfontList({this.items, this.kind});

  WebfontList.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Webfont.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
  };
}
