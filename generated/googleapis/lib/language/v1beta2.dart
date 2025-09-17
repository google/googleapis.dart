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

/// Cloud Natural Language API - v1beta2
///
/// Provides natural language understanding technologies, such as sentiment
/// analysis, entity recognition, entity sentiment analysis, and other text
/// annotations, to developers.
///
/// For more information, see <https://cloud.google.com/natural-language/>
///
/// Create an instance of [CloudNaturalLanguageApi] to access these resources:
///
/// - [DocumentsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides natural language understanding technologies, such as sentiment
/// analysis, entity recognition, entity sentiment analysis, and other text
/// annotations, to developers.
class CloudNaturalLanguageApi {
  /// Apply machine learning models to reveal the structure and meaning of text
  static const cloudLanguageScope =
      'https://www.googleapis.com/auth/cloud-language';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  DocumentsResource get documents => DocumentsResource(_requester);

  CloudNaturalLanguageApi(
    http.Client client, {
    core.String rootUrl = 'https://language.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class DocumentsResource {
  final commons.ApiRequester _requester;

  DocumentsResource(commons.ApiRequester client) : _requester = client;

  /// Finds named entities (currently proper names and common nouns) in the text
  /// along with entity types, salience, mentions for each entity, and other
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeEntitiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeEntitiesResponse> analyzeEntities(
    AnalyzeEntitiesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta2/documents:analyzeEntities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeEntitiesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Finds entities, similar to AnalyzeEntities in the text and analyzes
  /// sentiment associated with each entity and its mentions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeEntitySentimentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeEntitySentimentResponse> analyzeEntitySentiment(
    AnalyzeEntitySentimentRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta2/documents:analyzeEntitySentiment';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeEntitySentimentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Analyzes the sentiment of the provided text.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeSentimentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeSentimentResponse> analyzeSentiment(
    AnalyzeSentimentRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta2/documents:analyzeSentiment';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeSentimentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Analyzes the syntax of the text and provides sentence boundaries and
  /// tokenization along with part of speech tags, dependency trees, and other
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeSyntaxResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeSyntaxResponse> analyzeSyntax(
    AnalyzeSyntaxRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta2/documents:analyzeSyntax';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeSyntaxResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// A convenience method that provides all syntax, sentiment, entity, and
  /// classification features in one call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnnotateTextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnnotateTextResponse> annotateText(
    AnnotateTextRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta2/documents:annotateText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnnotateTextResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Classifies a document into categories.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClassifyTextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClassifyTextResponse> classifyText(
    ClassifyTextRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta2/documents:classifyText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ClassifyTextResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Moderates a document for harmful and sensitive categories.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ModerateTextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ModerateTextResponse> moderateText(
    ModerateTextRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta2/documents:moderateText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ModerateTextResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// The entity analysis request message.
class AnalyzeEntitiesRequest {
  /// Input document.
  ///
  /// Required.
  Document? document;

  /// The encoding type used by the API to calculate offsets.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and JavaScript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String? encodingType;

  AnalyzeEntitiesRequest({this.document, this.encodingType});

  AnalyzeEntitiesRequest.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        encodingType: json_['encodingType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (encodingType != null) 'encodingType': encodingType!,
  };
}

/// The entity analysis response message.
class AnalyzeEntitiesResponse {
  /// The recognized entities in the input document.
  core.List<Entity>? entities;

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  ///
  /// See Document.language field for more details.
  core.String? language;

  AnalyzeEntitiesResponse({this.entities, this.language});

  AnalyzeEntitiesResponse.fromJson(core.Map json_)
    : this(
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) => Entity.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        language: json_['language'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entities != null) 'entities': entities!,
    if (language != null) 'language': language!,
  };
}

/// The entity-level sentiment analysis request message.
class AnalyzeEntitySentimentRequest {
  /// Input document.
  ///
  /// Required.
  Document? document;

  /// The encoding type used by the API to calculate offsets.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and JavaScript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String? encodingType;

  AnalyzeEntitySentimentRequest({this.document, this.encodingType});

  AnalyzeEntitySentimentRequest.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        encodingType: json_['encodingType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (encodingType != null) 'encodingType': encodingType!,
  };
}

/// The entity-level sentiment analysis response message.
class AnalyzeEntitySentimentResponse {
  /// The recognized entities in the input document with associated sentiments.
  core.List<Entity>? entities;

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  ///
  /// See Document.language field for more details.
  core.String? language;

  AnalyzeEntitySentimentResponse({this.entities, this.language});

  AnalyzeEntitySentimentResponse.fromJson(core.Map json_)
    : this(
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) => Entity.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        language: json_['language'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entities != null) 'entities': entities!,
    if (language != null) 'language': language!,
  };
}

/// The sentiment analysis request message.
class AnalyzeSentimentRequest {
  /// Input document.
  ///
  /// Required.
  Document? document;

  /// The encoding type used by the API to calculate sentence offsets for the
  /// sentence sentiment.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and JavaScript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String? encodingType;

  AnalyzeSentimentRequest({this.document, this.encodingType});

  AnalyzeSentimentRequest.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        encodingType: json_['encodingType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (encodingType != null) 'encodingType': encodingType!,
  };
}

/// The sentiment analysis response message.
class AnalyzeSentimentResponse {
  /// The overall sentiment of the input document.
  Sentiment? documentSentiment;

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  ///
  /// See Document.language field for more details.
  core.String? language;

  /// The sentiment for all the sentences in the document.
  core.List<Sentence>? sentences;

  AnalyzeSentimentResponse({
    this.documentSentiment,
    this.language,
    this.sentences,
  });

  AnalyzeSentimentResponse.fromJson(core.Map json_)
    : this(
        documentSentiment:
            json_.containsKey('documentSentiment')
                ? Sentiment.fromJson(
                  json_['documentSentiment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        language: json_['language'] as core.String?,
        sentences:
            (json_['sentences'] as core.List?)
                ?.map(
                  (value) => Sentence.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentSentiment != null) 'documentSentiment': documentSentiment!,
    if (language != null) 'language': language!,
    if (sentences != null) 'sentences': sentences!,
  };
}

/// The syntax analysis request message.
class AnalyzeSyntaxRequest {
  /// Input document.
  ///
  /// Required.
  Document? document;

  /// The encoding type used by the API to calculate offsets.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and JavaScript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String? encodingType;

  AnalyzeSyntaxRequest({this.document, this.encodingType});

  AnalyzeSyntaxRequest.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        encodingType: json_['encodingType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (encodingType != null) 'encodingType': encodingType!,
  };
}

/// The syntax analysis response message.
class AnalyzeSyntaxResponse {
  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  ///
  /// See Document.language field for more details.
  core.String? language;

  /// Sentences in the input document.
  core.List<Sentence>? sentences;

  /// Tokens, along with their syntactic information, in the input document.
  core.List<Token>? tokens;

  AnalyzeSyntaxResponse({this.language, this.sentences, this.tokens});

  AnalyzeSyntaxResponse.fromJson(core.Map json_)
    : this(
        language: json_['language'] as core.String?,
        sentences:
            (json_['sentences'] as core.List?)
                ?.map(
                  (value) => Sentence.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        tokens:
            (json_['tokens'] as core.List?)
                ?.map(
                  (value) => Token.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (language != null) 'language': language!,
    if (sentences != null) 'sentences': sentences!,
    if (tokens != null) 'tokens': tokens!,
  };
}

/// The request message for the text annotation API, which can perform multiple
/// analysis types (sentiment, entities, and syntax) in one call.
class AnnotateTextRequest {
  /// Input document.
  ///
  /// Required.
  Document? document;

  /// The encoding type used by the API to calculate offsets.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and JavaScript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String? encodingType;

  /// The enabled features.
  ///
  /// Required.
  AnnotateTextRequestFeatures? features;

  AnnotateTextRequest({this.document, this.encodingType, this.features});

  AnnotateTextRequest.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        encodingType: json_['encodingType'] as core.String?,
        features:
            json_.containsKey('features')
                ? AnnotateTextRequestFeatures.fromJson(
                  json_['features'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (encodingType != null) 'encodingType': encodingType!,
    if (features != null) 'features': features!,
  };
}

/// All available features for sentiment, syntax, and semantic analysis.
///
/// Setting each one to true will enable that specific analysis for the input.
class AnnotateTextRequestFeatures {
  /// The model options to use for classification.
  ///
  /// Defaults to v1 options if not specified. Only used if `classify_text` is
  /// set to true.
  ///
  /// Optional.
  ClassificationModelOptions? classificationModelOptions;

  /// Classify the full document into categories.
  ///
  /// If this is true, the API will use the default model which classifies into
  /// a
  /// [predefined taxonomy](https://cloud.google.com/natural-language/docs/categories).
  core.bool? classifyText;

  /// Extract document-level sentiment.
  core.bool? extractDocumentSentiment;

  /// Extract entities.
  core.bool? extractEntities;

  /// Extract entities and their associated sentiment.
  core.bool? extractEntitySentiment;

  /// Extract syntax information.
  core.bool? extractSyntax;

  /// Moderate the document for harmful and sensitive categories.
  core.bool? moderateText;

  AnnotateTextRequestFeatures({
    this.classificationModelOptions,
    this.classifyText,
    this.extractDocumentSentiment,
    this.extractEntities,
    this.extractEntitySentiment,
    this.extractSyntax,
    this.moderateText,
  });

  AnnotateTextRequestFeatures.fromJson(core.Map json_)
    : this(
        classificationModelOptions:
            json_.containsKey('classificationModelOptions')
                ? ClassificationModelOptions.fromJson(
                  json_['classificationModelOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        classifyText: json_['classifyText'] as core.bool?,
        extractDocumentSentiment:
            json_['extractDocumentSentiment'] as core.bool?,
        extractEntities: json_['extractEntities'] as core.bool?,
        extractEntitySentiment: json_['extractEntitySentiment'] as core.bool?,
        extractSyntax: json_['extractSyntax'] as core.bool?,
        moderateText: json_['moderateText'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (classificationModelOptions != null)
      'classificationModelOptions': classificationModelOptions!,
    if (classifyText != null) 'classifyText': classifyText!,
    if (extractDocumentSentiment != null)
      'extractDocumentSentiment': extractDocumentSentiment!,
    if (extractEntities != null) 'extractEntities': extractEntities!,
    if (extractEntitySentiment != null)
      'extractEntitySentiment': extractEntitySentiment!,
    if (extractSyntax != null) 'extractSyntax': extractSyntax!,
    if (moderateText != null) 'moderateText': moderateText!,
  };
}

/// The text annotations response message.
class AnnotateTextResponse {
  /// Categories identified in the input document.
  core.List<ClassificationCategory>? categories;

  /// The overall sentiment for the document.
  ///
  /// Populated if the user enables
  /// AnnotateTextRequest.Features.extract_document_sentiment.
  Sentiment? documentSentiment;

  /// Entities, along with their semantic information, in the input document.
  ///
  /// Populated if the user enables
  /// AnnotateTextRequest.Features.extract_entities.
  core.List<Entity>? entities;

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  ///
  /// See Document.language field for more details.
  core.String? language;

  /// Harmful and sensitive categories identified in the input document.
  core.List<ClassificationCategory>? moderationCategories;

  /// Sentences in the input document.
  ///
  /// Populated if the user enables AnnotateTextRequest.Features.extract_syntax.
  core.List<Sentence>? sentences;

  /// Tokens, along with their syntactic information, in the input document.
  ///
  /// Populated if the user enables AnnotateTextRequest.Features.extract_syntax.
  core.List<Token>? tokens;

  AnnotateTextResponse({
    this.categories,
    this.documentSentiment,
    this.entities,
    this.language,
    this.moderationCategories,
    this.sentences,
    this.tokens,
  });

  AnnotateTextResponse.fromJson(core.Map json_)
    : this(
        categories:
            (json_['categories'] as core.List?)
                ?.map(
                  (value) => ClassificationCategory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        documentSentiment:
            json_.containsKey('documentSentiment')
                ? Sentiment.fromJson(
                  json_['documentSentiment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) => Entity.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        language: json_['language'] as core.String?,
        moderationCategories:
            (json_['moderationCategories'] as core.List?)
                ?.map(
                  (value) => ClassificationCategory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sentences:
            (json_['sentences'] as core.List?)
                ?.map(
                  (value) => Sentence.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        tokens:
            (json_['tokens'] as core.List?)
                ?.map(
                  (value) => Token.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (categories != null) 'categories': categories!,
    if (documentSentiment != null) 'documentSentiment': documentSentiment!,
    if (entities != null) 'entities': entities!,
    if (language != null) 'language': language!,
    if (moderationCategories != null)
      'moderationCategories': moderationCategories!,
    if (sentences != null) 'sentences': sentences!,
    if (tokens != null) 'tokens': tokens!,
  };
}

/// Represents a category returned from the text classifier.
typedef ClassificationCategory = $ClassificationCategory;

/// Model options available for classification requests.
class ClassificationModelOptions {
  /// Setting this field will use the V1 model and V1 content categories
  /// version.
  ///
  /// The V1 model is a legacy model; support for this will be discontinued in
  /// the future.
  ClassificationModelOptionsV1Model? v1Model;

  /// Setting this field will use the V2 model with the appropriate content
  /// categories version.
  ///
  /// The V2 model is a better performing model.
  ClassificationModelOptionsV2Model? v2Model;

  ClassificationModelOptions({this.v1Model, this.v2Model});

  ClassificationModelOptions.fromJson(core.Map json_)
    : this(
        v1Model:
            json_.containsKey('v1Model')
                ? ClassificationModelOptionsV1Model.fromJson(
                  json_['v1Model'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        v2Model:
            json_.containsKey('v2Model')
                ? ClassificationModelOptionsV2Model.fromJson(
                  json_['v2Model'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (v1Model != null) 'v1Model': v1Model!,
    if (v2Model != null) 'v2Model': v2Model!,
  };
}

/// Options for the V1 model.
typedef ClassificationModelOptionsV1Model = $Empty;

/// Options for the V2 model.
typedef ClassificationModelOptionsV2Model = $ClassificationModelOptionsV2Model;

/// The document classification request message.
class ClassifyTextRequest {
  /// Model options to use for classification.
  ///
  /// Defaults to v1 options if not specified.
  ///
  /// Optional.
  ClassificationModelOptions? classificationModelOptions;

  /// Input document.
  ///
  /// Required.
  Document? document;

  ClassifyTextRequest({this.classificationModelOptions, this.document});

  ClassifyTextRequest.fromJson(core.Map json_)
    : this(
        classificationModelOptions:
            json_.containsKey('classificationModelOptions')
                ? ClassificationModelOptions.fromJson(
                  json_['classificationModelOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (classificationModelOptions != null)
      'classificationModelOptions': classificationModelOptions!,
    if (document != null) 'document': document!,
  };
}

/// The document classification response message.
class ClassifyTextResponse {
  /// Categories representing the input document.
  core.List<ClassificationCategory>? categories;

  ClassifyTextResponse({this.categories});

  ClassifyTextResponse.fromJson(core.Map json_)
    : this(
        categories:
            (json_['categories'] as core.List?)
                ?.map(
                  (value) => ClassificationCategory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (categories != null) 'categories': categories!,
  };
}

/// Represents dependency parse tree information for a token.
typedef DependencyEdge = $DependencyEdge;

/// Represents the input to API methods.
class Document {
  /// Indicates how detected boilerplate(e.g. advertisements, copyright
  /// declarations, banners) should be handled for this document.
  ///
  /// If not specified, boilerplate will be treated the same as content.
  /// Possible string values are:
  /// - "BOILERPLATE_HANDLING_UNSPECIFIED" : The boilerplate handling is not
  /// specified.
  /// - "SKIP_BOILERPLATE" : Do not analyze detected boilerplate. Reference web
  /// URI is required for detecting boilerplate.
  /// - "KEEP_BOILERPLATE" : Treat boilerplate the same as content.
  core.String? boilerplateHandling;

  /// The content of the input in string format.
  ///
  /// Cloud audit logging exempt since it is based on user data.
  core.String? content;

  /// The Google Cloud Storage URI where the file content is located.
  ///
  /// This URI must be of the form: gs://bucket_name/object_name. For more
  /// details, see https://cloud.google.com/storage/docs/reference-uris. NOTE:
  /// Cloud Storage object versioning is not supported.
  core.String? gcsContentUri;

  /// The language of the document (if not specified, the language is
  /// automatically detected).
  ///
  /// Both ISO and BCP-47 language codes are accepted.
  /// [Language Support](https://cloud.google.com/natural-language/docs/languages)
  /// lists currently supported languages for each API method. If the language
  /// (either specified by the caller or automatically detected) is not
  /// supported by the called API method, an `INVALID_ARGUMENT` error is
  /// returned.
  core.String? language;

  /// The web URI where the document comes from.
  ///
  /// This URI is not used for fetching the content, but as a hint for analyzing
  /// the document.
  core.String? referenceWebUri;

  /// If the type is not set or is `TYPE_UNSPECIFIED`, returns an
  /// `INVALID_ARGUMENT` error.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The content type is not specified.
  /// - "PLAIN_TEXT" : Plain text
  /// - "HTML" : HTML
  core.String? type;

  Document({
    this.boilerplateHandling,
    this.content,
    this.gcsContentUri,
    this.language,
    this.referenceWebUri,
    this.type,
  });

  Document.fromJson(core.Map json_)
    : this(
        boilerplateHandling: json_['boilerplateHandling'] as core.String?,
        content: json_['content'] as core.String?,
        gcsContentUri: json_['gcsContentUri'] as core.String?,
        language: json_['language'] as core.String?,
        referenceWebUri: json_['referenceWebUri'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boilerplateHandling != null)
      'boilerplateHandling': boilerplateHandling!,
    if (content != null) 'content': content!,
    if (gcsContentUri != null) 'gcsContentUri': gcsContentUri!,
    if (language != null) 'language': language!,
    if (referenceWebUri != null) 'referenceWebUri': referenceWebUri!,
    if (type != null) 'type': type!,
  };
}

/// Represents a phrase in the text that is a known entity, such as a person, an
/// organization, or location.
///
/// The API associates information, such as salience and mentions, with
/// entities.
class Entity {
  /// The mentions of this entity in the input document.
  ///
  /// The API currently supports proper noun mentions.
  core.List<EntityMention>? mentions;

  /// Metadata associated with the entity.
  ///
  /// For most entity types, the metadata is a Wikipedia URL (`wikipedia_url`)
  /// and Knowledge Graph MID (`mid`), if they are available. For the metadata
  /// associated with other entity types, see the Type table below.
  core.Map<core.String, core.String>? metadata;

  /// The representative name for the entity.
  core.String? name;

  /// The salience score associated with the entity in the \[0, 1.0\] range.
  ///
  /// The salience score for an entity provides information about the importance
  /// or centrality of that entity to the entire document text. Scores closer to
  /// 0 are less salient, while scores closer to 1.0 are highly salient.
  core.double? salience;

  /// For calls to AnalyzeEntitySentiment or if
  /// AnnotateTextRequest.Features.extract_entity_sentiment is set to true, this
  /// field will contain the aggregate sentiment expressed for this entity in
  /// the provided document.
  Sentiment? sentiment;

  /// The entity type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown
  /// - "PERSON" : Person
  /// - "LOCATION" : Location
  /// - "ORGANIZATION" : Organization
  /// - "EVENT" : Event
  /// - "WORK_OF_ART" : Artwork
  /// - "CONSUMER_GOOD" : Consumer product
  /// - "OTHER" : Other types of entities
  /// - "PHONE_NUMBER" : Phone number The metadata lists the phone number,
  /// formatted according to local convention, plus whichever additional
  /// elements appear in the text: * `number` - the actual number, broken down
  /// into sections as per local convention * `national_prefix` - country code,
  /// if detected * `area_code` - region or area code, if detected * `extension`
  /// - phone extension (to be dialed after connection), if detected
  /// - "ADDRESS" : Address The metadata identifies the street number and
  /// locality plus whichever additional elements appear in the text: *
  /// `street_number` - street number * `locality` - city or town *
  /// `street_name` - street/route name, if detected * `postal_code` - postal
  /// code, if detected * `country` - country, if detected\< * `broad_region` -
  /// administrative area, such as the state, if detected * `narrow_region` -
  /// smaller administrative area, such as county, if detected * `sublocality` -
  /// used in Asian addresses to demark a district within a city, if detected
  /// - "DATE" : Date The metadata identifies the components of the date: *
  /// `year` - four digit year, if detected * `month` - two digit month number,
  /// if detected * `day` - two digit day number, if detected
  /// - "NUMBER" : Number The metadata is the number itself.
  /// - "PRICE" : Price The metadata identifies the `value` and `currency`.
  core.String? type;

  Entity({
    this.mentions,
    this.metadata,
    this.name,
    this.salience,
    this.sentiment,
    this.type,
  });

  Entity.fromJson(core.Map json_)
    : this(
        mentions:
            (json_['mentions'] as core.List?)
                ?.map(
                  (value) => EntityMention.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        name: json_['name'] as core.String?,
        salience: (json_['salience'] as core.num?)?.toDouble(),
        sentiment:
            json_.containsKey('sentiment')
                ? Sentiment.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mentions != null) 'mentions': mentions!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (salience != null) 'salience': salience!,
    if (sentiment != null) 'sentiment': sentiment!,
    if (type != null) 'type': type!,
  };
}

/// Represents a mention for an entity in the text.
///
/// Currently, proper noun mentions are supported.
class EntityMention {
  /// For calls to AnalyzeEntitySentiment or if
  /// AnnotateTextRequest.Features.extract_entity_sentiment is set to true, this
  /// field will contain the sentiment expressed for this mention of the entity
  /// in the provided document.
  Sentiment? sentiment;

  /// The mention text.
  TextSpan? text;

  /// The type of the entity mention.
  /// Possible string values are:
  /// - "TYPE_UNKNOWN" : Unknown
  /// - "PROPER" : Proper name
  /// - "COMMON" : Common noun (or noun compound)
  core.String? type;

  EntityMention({this.sentiment, this.text, this.type});

  EntityMention.fromJson(core.Map json_)
    : this(
        sentiment:
            json_.containsKey('sentiment')
                ? Sentiment.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text:
            json_.containsKey('text')
                ? TextSpan.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sentiment != null) 'sentiment': sentiment!,
    if (text != null) 'text': text!,
    if (type != null) 'type': type!,
  };
}

/// The document moderation request message.
class ModerateTextRequest {
  /// Input document.
  ///
  /// Required.
  Document? document;

  ModerateTextRequest({this.document});

  ModerateTextRequest.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
  };
}

/// The document moderation response message.
class ModerateTextResponse {
  /// Harmful and sensitive categories representing the input document.
  core.List<ClassificationCategory>? moderationCategories;

  ModerateTextResponse({this.moderationCategories});

  ModerateTextResponse.fromJson(core.Map json_)
    : this(
        moderationCategories:
            (json_['moderationCategories'] as core.List?)
                ?.map(
                  (value) => ClassificationCategory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (moderationCategories != null)
      'moderationCategories': moderationCategories!,
  };
}

/// Represents part of speech information for a token.
typedef PartOfSpeech = $PartOfSpeech;

/// Represents a sentence in the input document.
class Sentence {
  /// For calls to AnalyzeSentiment or if
  /// AnnotateTextRequest.Features.extract_document_sentiment is set to true,
  /// this field will contain the sentiment for the sentence.
  Sentiment? sentiment;

  /// The sentence text.
  TextSpan? text;

  Sentence({this.sentiment, this.text});

  Sentence.fromJson(core.Map json_)
    : this(
        sentiment:
            json_.containsKey('sentiment')
                ? Sentiment.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text:
            json_.containsKey('text')
                ? TextSpan.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sentiment != null) 'sentiment': sentiment!,
    if (text != null) 'text': text!,
  };
}

/// Represents the feeling associated with the entire text or entities in the
/// text.
typedef Sentiment = $Sentiment;

/// Represents a text span in the input document.
typedef TextSpan = $TextSpan00;

/// Represents the smallest syntactic building block of the text.
class Token {
  /// Dependency tree parse for this token.
  DependencyEdge? dependencyEdge;

  /// [Lemma](https://en.wikipedia.org/wiki/Lemma_%28morphology%29) of the
  /// token.
  core.String? lemma;

  /// Parts of speech tag for this token.
  PartOfSpeech? partOfSpeech;

  /// The token text.
  TextSpan? text;

  Token({this.dependencyEdge, this.lemma, this.partOfSpeech, this.text});

  Token.fromJson(core.Map json_)
    : this(
        dependencyEdge:
            json_.containsKey('dependencyEdge')
                ? DependencyEdge.fromJson(
                  json_['dependencyEdge']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lemma: json_['lemma'] as core.String?,
        partOfSpeech:
            json_.containsKey('partOfSpeech')
                ? PartOfSpeech.fromJson(
                  json_['partOfSpeech'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text:
            json_.containsKey('text')
                ? TextSpan.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dependencyEdge != null) 'dependencyEdge': dependencyEdge!,
    if (lemma != null) 'lemma': lemma!,
    if (partOfSpeech != null) 'partOfSpeech': partOfSpeech!,
    if (text != null) 'text': text!,
  };
}
