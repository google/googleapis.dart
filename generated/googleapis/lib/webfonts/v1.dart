// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.webfonts.v1;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client webfonts/v1';

/// Accesses the metadata for all families served by Google Fonts, providing a
/// list of families currently available (including available styles and a list
/// of supported script subsets).
class WebfontsApi {
  final commons.ApiRequester _requester;

  WebfontsResourceApi get webfonts => new WebfontsResourceApi(_requester);

  WebfontsApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "webfonts/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class WebfontsResourceApi {
  final commons.ApiRequester _requester;

  WebfontsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves the list of fonts currently served by the Google Fonts Developer
  /// API
  ///
  /// Request parameters:
  ///
  /// [sort] - Enables sorting of the list
  /// Possible string values are:
  /// - "alpha" : Sort alphabetically
  /// - "date" : Sort by date added
  /// - "popularity" : Sort by popularity
  /// - "style" : Sort by number of styles
  /// - "trending" : Sort by trending
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
  async.Future<WebfontList> list({core.String sort, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (sort != null) {
      _queryParams["sort"] = [sort];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'webfonts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebfontList.fromJson(data));
  }
}

class Webfont {
  /// The category of the font.
  core.String category;

  /// The name of the font.
  core.String family;

  /// The font files (with all supported scripts) for each one of the available
  /// variants, as a key : value map.
  core.Map<core.String, core.String> files;

  /// This kind represents a webfont object in the webfonts service.
  core.String kind;

  /// The date (format "yyyy-MM-dd") the font was modified for the last time.
  core.DateTime lastModified;

  /// The scripts supported by the font.
  core.List<core.String> subsets;

  /// The available variants for the font.
  core.List<core.String> variants;

  /// The font version.
  core.String version;

  Webfont();

  Webfont.fromJson(core.Map _json) {
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("family")) {
      family = _json["family"];
    }
    if (_json.containsKey("files")) {
      files = (_json["files"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastModified")) {
      lastModified = core.DateTime.parse(_json["lastModified"]);
    }
    if (_json.containsKey("subsets")) {
      subsets = (_json["subsets"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("variants")) {
      variants = (_json["variants"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (category != null) {
      _json["category"] = category;
    }
    if (family != null) {
      _json["family"] = family;
    }
    if (files != null) {
      _json["files"] = files;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastModified != null) {
      _json["lastModified"] =
          "${(lastModified).year.toString().padLeft(4, '0')}-${(lastModified).month.toString().padLeft(2, '0')}-${(lastModified).day.toString().padLeft(2, '0')}";
    }
    if (subsets != null) {
      _json["subsets"] = subsets;
    }
    if (variants != null) {
      _json["variants"] = variants;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class WebfontList {
  /// The list of fonts currently served by the Google Fonts API.
  core.List<Webfont> items;

  /// This kind represents a list of webfont objects in the webfonts service.
  core.String kind;

  WebfontList();

  WebfontList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Webfont>((value) => new Webfont.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}
