// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.translate.v2;

import 'dart:core' as core;
import 'dart:collection' as collection;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client translate/v2';

/// The Google Cloud Translation API lets websites and programs integrate with
///     Google Translate programmatically.
class TranslateApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Translate text from one language to another using Google Translate
  static const CloudTranslationScope =
      "https://www.googleapis.com/auth/cloud-translation";

  final commons.ApiRequester _requester;

  DetectionsResourceApi get detections => new DetectionsResourceApi(_requester);
  LanguagesResourceApi get languages => new LanguagesResourceApi(_requester);
  TranslationsResourceApi get translations =>
      new TranslationsResourceApi(_requester);

  TranslateApi(http.Client client,
      {core.String rootUrl = "https://translation.googleapis.com/",
      core.String servicePath = "language/translate/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class DetectionsResourceApi {
  final commons.ApiRequester _requester;

  DetectionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Detects the language of text within a request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DetectionsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DetectionsListResponse> detect(DetectLanguageRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/detect';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new DetectionsListResponse.fromJson(data['data']));
  }

  /// Detects the language of text within a request.
  ///
  /// Request parameters:
  ///
  /// [q] - The input text upon which to perform language detection. Repeat this
  /// parameter to perform language detection on multiple text inputs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DetectionsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DetectionsListResponse> list(core.List<core.String> q,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (q == null || q.isEmpty) {
      throw new core.ArgumentError("Parameter q is required.");
    }
    _queryParams["q"] = q;
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/detect';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new DetectionsListResponse.fromJson(data['data']));
  }
}

class LanguagesResourceApi {
  final commons.ApiRequester _requester;

  LanguagesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns a list of supported languages for translation.
  ///
  /// Request parameters:
  ///
  /// [target] - The language to use to return localized, human readable names
  /// of supported
  /// languages.
  ///
  /// [model] - The model type for which supported languages should be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LanguagesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LanguagesListResponse> list(
      {core.String target, core.String model, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (target != null) {
      _queryParams["target"] = [target];
    }
    if (model != null) {
      _queryParams["model"] = [model];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/languages';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new LanguagesListResponse.fromJson(data['data']));
  }
}

class TranslationsResourceApi {
  final commons.ApiRequester _requester;

  TranslationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Translates input text, returning translated text.
  ///
  /// Request parameters:
  ///
  /// [q] - The input text to translate. Repeat this parameter to perform
  /// translation
  /// operations on multiple text inputs.
  ///
  /// [target] - The language to use for translation of the input text, set to
  /// one of the
  /// language codes listed in Language Support.
  ///
  /// [cid] - The customization id for translate
  ///
  /// [format] - The format of the source text, in either HTML (default) or
  /// plain-text. A
  /// value of "html" indicates HTML and a value of "text" indicates plain-text.
  /// Possible string values are:
  /// - "html" : Specifies the input is in HTML
  /// - "text" : Specifies the input is in plain textual format
  ///
  /// [model] - The `model` type requested for this translation. Valid values
  /// are
  /// listed in public documentation.
  ///
  /// [source] - The language of the source text, set to one of the language
  /// codes listed in
  /// Language Support. If the source language is not specified, the API will
  /// attempt to identify the source language automatically and return it within
  /// the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TranslationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TranslationsListResponse> list(
      core.List<core.String> q, core.String target,
      {core.List<core.String> cid,
      core.String format,
      core.String model,
      core.String source,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (q == null || q.isEmpty) {
      throw new core.ArgumentError("Parameter q is required.");
    }
    _queryParams["q"] = q;
    if (target == null) {
      throw new core.ArgumentError("Parameter target is required.");
    }
    _queryParams["target"] = [target];
    if (cid != null) {
      _queryParams["cid"] = cid;
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }
    if (model != null) {
      _queryParams["model"] = [model];
    }
    if (source != null) {
      _queryParams["source"] = [source];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TranslationsListResponse.fromJson(data['data']));
  }

  /// Translates input text, returning translated text.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TranslationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TranslationsListResponse> translate(TranslateTextRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TranslationsListResponse.fromJson(data['data']));
  }
}

/// The request message for language detection.
class DetectLanguageRequest {
  /// The input text upon which to perform language detection. Repeat this
  /// parameter to perform language detection on multiple text inputs.
  core.List<core.String> q;

  DetectLanguageRequest();

  DetectLanguageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("q")) {
      q = (_json["q"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (q != null) {
      _json["q"] = q;
    }
    return _json;
  }
}

class DetectionsListResponse {
  /// A detections contains detection results of several text
  core.List<DetectionsResource> detections;

  DetectionsListResponse();

  DetectionsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("detections")) {
      detections = (_json["detections"] as core.List)
          .map<DetectionsResource>(
              (value) => new DetectionsResource.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detections != null) {
      _json["detections"] =
          detections.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class DetectionsResourceElement {
  /// The confidence of the detection result of this language.
  core.double confidence;

  /// A boolean to indicate is the language detection result reliable.
  core.bool isReliable;

  /// The language we detected.
  core.String language;

  DetectionsResourceElement();

  DetectionsResourceElement.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("isReliable")) {
      isReliable = _json["isReliable"];
    }
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (isReliable != null) {
      _json["isReliable"] = isReliable;
    }
    if (language != null) {
      _json["language"] = language;
    }
    return _json;
  }
}

/// An array of languages which we detect for the given text The most likely
/// language list first.
class DetectionsResource
    extends collection.ListBase<DetectionsResourceElement> {
  final core.List<DetectionsResourceElement> _inner;

  DetectionsResource() : _inner = [];

  DetectionsResource.fromJson(core.List json)
      : _inner = json
            .map((value) => new DetectionsResourceElement.fromJson(value))
            .toList();

  core.List<core.Map<core.String, core.Object>> toJson() {
    return _inner.map((value) => (value).toJson()).toList();
  }

  DetectionsResourceElement operator [](core.int key) => _inner[key];

  void operator []=(core.int key, DetectionsResourceElement value) {
    _inner[key] = value;
  }

  core.int get length => _inner.length;

  set length(core.int newLength) {
    _inner.length = newLength;
  }
}

/// The request message for discovering supported languages.
class GetSupportedLanguagesRequest {
  /// The language to use to return localized, human readable names of supported
  /// languages.
  core.String target;

  GetSupportedLanguagesRequest();

  GetSupportedLanguagesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

class LanguagesListResponse {
  /// List of source/target languages supported by the translation API. If
  /// target parameter is unspecified, the list is sorted by the ASCII code
  /// point order of the language code. If target parameter is specified, the
  /// list is sorted by the collation order of the language name in the target
  /// language.
  core.List<LanguagesResource> languages;

  LanguagesListResponse();

  LanguagesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("languages")) {
      languages = (_json["languages"] as core.List)
          .map<LanguagesResource>(
              (value) => new LanguagesResource.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (languages != null) {
      _json["languages"] = languages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class LanguagesResource {
  /// Supported language code, generally consisting of its ISO 639-1
  /// identifier. (E.g. 'en', 'ja'). In certain cases, BCP-47 codes including
  /// language + region identifiers are returned (e.g. 'zh-TW' and 'zh-CH')
  core.String language;

  /// Human readable name of the language localized to the target language.
  core.String name;

  LanguagesResource();

  LanguagesResource.fromJson(core.Map _json) {
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (language != null) {
      _json["language"] = language;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// The main translation request message for the Cloud Translation API.
class TranslateTextRequest {
  /// The format of the source text, in either HTML (default) or plain-text. A
  /// value of "html" indicates HTML and a value of "text" indicates plain-text.
  core.String format;

  /// The `model` type requested for this translation. Valid values are
  /// listed in public documentation.
  core.String model;

  /// The input text to translate. Repeat this parameter to perform translation
  /// operations on multiple text inputs.
  core.List<core.String> q;

  /// The language of the source text, set to one of the language codes listed
  /// in
  /// Language Support. If the source language is not specified, the API will
  /// attempt to identify the source language automatically and return it within
  /// the response.
  core.String source;

  /// The language to use for translation of the input text, set to one of the
  /// language codes listed in Language Support.
  core.String target;

  TranslateTextRequest();

  TranslateTextRequest.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
    if (_json.containsKey("q")) {
      q = (_json["q"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (format != null) {
      _json["format"] = format;
    }
    if (model != null) {
      _json["model"] = model;
    }
    if (q != null) {
      _json["q"] = q;
    }
    if (source != null) {
      _json["source"] = source;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

/// The main language translation response message.
class TranslationsListResponse {
  /// Translations contains list of translation results of given text
  core.List<TranslationsResource> translations;

  TranslationsListResponse();

  TranslationsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("translations")) {
      translations = (_json["translations"] as core.List)
          .map<TranslationsResource>(
              (value) => new TranslationsResource.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (translations != null) {
      _json["translations"] =
          translations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class TranslationsResource {
  /// The source language of the initial request, detected automatically, if
  /// no source language was passed within the initial request. If the
  /// source language was passed, auto-detection of the language will not
  /// occur and this field will be empty.
  core.String detectedSourceLanguage;

  /// The `model` type used for this translation. Valid values are
  /// listed in public documentation. Can be different from requested `model`.
  /// Present only if specific model type was explicitly requested.
  core.String model;

  /// Text translated into the target language.
  core.String translatedText;

  TranslationsResource();

  TranslationsResource.fromJson(core.Map _json) {
    if (_json.containsKey("detectedSourceLanguage")) {
      detectedSourceLanguage = _json["detectedSourceLanguage"];
    }
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
    if (_json.containsKey("translatedText")) {
      translatedText = _json["translatedText"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detectedSourceLanguage != null) {
      _json["detectedSourceLanguage"] = detectedSourceLanguage;
    }
    if (model != null) {
      _json["model"] = model;
    }
    if (translatedText != null) {
      _json["translatedText"] = translatedText;
    }
    return _json;
  }
}
