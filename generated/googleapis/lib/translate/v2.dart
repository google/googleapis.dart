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

/// Google Cloud Translation API - v2
///
/// The Google Cloud Translation API lets websites and programs integrate with
///     Google Translate programmatically.
///
/// For more information, see
/// <https://code.google.com/apis/language/translate/v2/getting_started.html>
///
/// Create an instance of [TranslateApi] to access these resources:
///
/// - [DetectionsResource_1]
/// - [LanguagesResource_1]
/// - [TranslationsResource_1]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Google Cloud Translation API lets websites and programs integrate with
///     Google Translate programmatically.
class TranslateApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Translate text from one language to another using Google Translate
  static const cloudTranslationScope =
      'https://www.googleapis.com/auth/cloud-translation';

  final commons.ApiRequester _requester;

  DetectionsResource_1 get detections => DetectionsResource_1(_requester);
  LanguagesResource_1 get languages => LanguagesResource_1(_requester);
  TranslationsResource_1 get translations => TranslationsResource_1(_requester);

  TranslateApi(
    http.Client client, {
    core.String rootUrl = 'https://translation.googleapis.com/',
    core.String servicePath = 'language/translate/',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class DetectionsResource_1 {
  final commons.ApiRequester _requester;

  DetectionsResource_1(commons.ApiRequester client) : _requester = client;

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
  async.Future<DetectionsListResponse> detect(
    DetectLanguageRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/detect';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DetectionsListResponse.fromJson(
      (response_ as core.Map)['data'] as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<DetectionsListResponse> list(
    core.List<core.String> q, {
    core.String? $fields,
  }) async {
    if (q.isEmpty) {
      throw core.ArgumentError('Parameter q cannot be empty.');
    }
    final queryParams_ = <core.String, core.List<core.String>>{
      'q': q,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/detect';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DetectionsListResponse.fromJson(
      (response_ as core.Map)['data'] as core.Map<core.String, core.dynamic>,
    );
  }
}

class LanguagesResource_1 {
  final commons.ApiRequester _requester;

  LanguagesResource_1(commons.ApiRequester client) : _requester = client;

  /// Returns a list of supported languages for translation.
  ///
  /// Request parameters:
  ///
  /// [model] - The model type for which supported languages should be returned.
  ///
  /// [target] - The language to use to return localized, human readable names
  /// of supported
  /// languages.
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
  async.Future<LanguagesListResponse> list({
    core.String? model,
    core.String? target,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (model != null) 'model': [model],
      if (target != null) 'target': [target],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/languages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LanguagesListResponse.fromJson(
      (response_ as core.Map)['data'] as core.Map<core.String, core.dynamic>,
    );
  }
}

class TranslationsResource_1 {
  final commons.ApiRequester _requester;

  TranslationsResource_1(commons.ApiRequester client) : _requester = client;

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
    core.List<core.String> q,
    core.String target, {
    core.List<core.String>? cid,
    core.String? format,
    core.String? model,
    core.String? source,
    core.String? $fields,
  }) async {
    if (q.isEmpty) {
      throw core.ArgumentError('Parameter q cannot be empty.');
    }
    final queryParams_ = <core.String, core.List<core.String>>{
      'q': q,
      'target': [target],
      if (cid != null) 'cid': cid,
      if (format != null) 'format': [format],
      if (model != null) 'model': [model],
      if (source != null) 'source': [source],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TranslationsListResponse.fromJson(
      (response_ as core.Map)['data'] as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<TranslationsListResponse> translate(
    TranslateTextRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TranslationsListResponse.fromJson(
      (response_ as core.Map)['data'] as core.Map<core.String, core.dynamic>,
    );
  }
}

/// The request message for language detection.
class DetectLanguageRequest {
  /// The input text upon which to perform language detection.
  ///
  /// Repeat this
  /// parameter to perform language detection on multiple text inputs.
  core.List<core.String>? q;

  DetectLanguageRequest({this.q});

  DetectLanguageRequest.fromJson(core.Map json_)
    : this(
        q:
            (json_['q'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {if (q != null) 'q': q!};
}

class DetectionsListResponse {
  /// A detections contains detection results of several text
  core.List<DetectionsResource>? detections;

  DetectionsListResponse({this.detections});

  DetectionsListResponse.fromJson(core.Map json_)
    : this(
        detections:
            (json_['detections'] as core.List?)
                ?.map(
                  (value) =>
                      (value as core.List)
                          .map(
                            (value) => DetectionsResourceElement.fromJson(
                              value as core.Map<core.String, core.dynamic>,
                            ),
                          )
                          .toList(),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detections != null) 'detections': detections!,
  };
}

class DetectionsResourceElement {
  /// The confidence of the detection result of this language.
  core.double? confidence;

  /// A boolean to indicate is the language detection result reliable.
  core.bool? isReliable;

  /// The language we detected.
  core.String? language;

  DetectionsResourceElement({this.confidence, this.isReliable, this.language});

  DetectionsResourceElement.fromJson(core.Map json_)
    : this(
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        isReliable: json_['isReliable'] as core.bool?,
        language: json_['language'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (confidence != null) 'confidence': confidence!,
    if (isReliable != null) 'isReliable': isReliable!,
    if (language != null) 'language': language!,
  };
}

/// An array of languages which we detect for the given text The most likely
/// language list first.
typedef DetectionsResource = core.List<DetectionsResourceElement>;

class LanguagesListResponse {
  /// List of source/target languages supported by the translation API.
  ///
  /// If target parameter is unspecified, the list is sorted by the ASCII code
  /// point order of the language code. If target parameter is specified, the
  /// list is sorted by the collation order of the language name in the target
  /// language.
  core.List<LanguagesResource>? languages;

  LanguagesListResponse({this.languages});

  LanguagesListResponse.fromJson(core.Map json_)
    : this(
        languages:
            (json_['languages'] as core.List?)
                ?.map(
                  (value) => LanguagesResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (languages != null) 'languages': languages!,
  };
}

class LanguagesResource {
  /// Supported language code, generally consisting of its ISO 639-1
  /// identifier.
  ///
  /// (E.g. 'en', 'ja'). In certain cases, BCP-47 codes including
  /// language + region identifiers are returned (e.g. 'zh-TW' and 'zh-CH')
  core.String? language;

  /// Human readable name of the language localized to the target language.
  core.String? name;

  LanguagesResource({this.language, this.name});

  LanguagesResource.fromJson(core.Map json_)
    : this(
        language: json_['language'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (language != null) 'language': language!,
    if (name != null) 'name': name!,
  };
}

/// The main translation request message for the Cloud Translation API.
class TranslateTextRequest {
  /// The format of the source text, in either HTML (default) or plain-text.
  ///
  /// A
  /// value of "html" indicates HTML and a value of "text" indicates plain-text.
  core.String? format;

  /// The `model` type requested for this translation.
  ///
  /// Valid values are
  /// listed in public documentation.
  core.String? model;

  /// The input text to translate.
  ///
  /// Repeat this parameter to perform translation
  /// operations on multiple text inputs.
  core.List<core.String>? q;

  /// The language of the source text, set to one of the language codes listed
  /// in
  /// Language Support.
  ///
  /// If the source language is not specified, the API will
  /// attempt to identify the source language automatically and return it within
  /// the response.
  core.String? source;

  /// The language to use for translation of the input text, set to one of the
  /// language codes listed in Language Support.
  core.String? target;

  TranslateTextRequest({
    this.format,
    this.model,
    this.q,
    this.source,
    this.target,
  });

  TranslateTextRequest.fromJson(core.Map json_)
    : this(
        format: json_['format'] as core.String?,
        model: json_['model'] as core.String?,
        q:
            (json_['q'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        source: json_['source'] as core.String?,
        target: json_['target'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (format != null) 'format': format!,
    if (model != null) 'model': model!,
    if (q != null) 'q': q!,
    if (source != null) 'source': source!,
    if (target != null) 'target': target!,
  };
}

/// The main language translation response message.
class TranslationsListResponse {
  /// Translations contains list of translation results of given text
  core.List<TranslationsResource>? translations;

  TranslationsListResponse({this.translations});

  TranslationsListResponse.fromJson(core.Map json_)
    : this(
        translations:
            (json_['translations'] as core.List?)
                ?.map(
                  (value) => TranslationsResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (translations != null) 'translations': translations!,
  };
}

class TranslationsResource {
  /// The source language of the initial request, detected automatically, if
  /// no source language was passed within the initial request.
  ///
  /// If the
  /// source language was passed, auto-detection of the language will not
  /// occur and this field will be empty.
  core.String? detectedSourceLanguage;

  /// The `model` type used for this translation.
  ///
  /// Valid values are
  /// listed in public documentation. Can be different from requested `model`.
  /// Present only if specific model type was explicitly requested.
  core.String? model;

  /// Text translated into the target language.
  core.String? translatedText;

  TranslationsResource({
    this.detectedSourceLanguage,
    this.model,
    this.translatedText,
  });

  TranslationsResource.fromJson(core.Map json_)
    : this(
        detectedSourceLanguage: json_['detectedSourceLanguage'] as core.String?,
        model: json_['model'] as core.String?,
        translatedText: json_['translatedText'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detectedSourceLanguage != null)
      'detectedSourceLanguage': detectedSourceLanguage!,
    if (model != null) 'model': model!,
    if (translatedText != null) 'translatedText': translatedText!,
  };
}
