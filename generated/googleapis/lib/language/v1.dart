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

/// Cloud Natural Language API - v1
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
library language.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  CloudNaturalLanguageApi(http.Client client,
      {core.String rootUrl = 'https://language.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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

    const url_ = 'v1/documents:analyzeEntities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeEntitiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    const url_ = 'v1/documents:analyzeEntitySentiment';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeEntitySentimentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    const url_ = 'v1/documents:analyzeSentiment';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeSentimentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    const url_ = 'v1/documents:analyzeSyntax';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeSyntaxResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// A convenience method that provides all the features that analyzeSentiment,
  /// analyzeEntities, and analyzeSyntax provide in one call.
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

    const url_ = 'v1/documents:annotateText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnnotateTextResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    const url_ = 'v1/documents:classifyText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ClassifyTextResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  AnalyzeEntitiesRequest({
    this.document,
    this.encodingType,
  });

  AnalyzeEntitiesRequest.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          encodingType: json_.containsKey('encodingType')
              ? json_['encodingType'] as core.String
              : null,
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

  AnalyzeEntitiesResponse({
    this.entities,
    this.language,
  });

  AnalyzeEntitiesResponse.fromJson(core.Map json_)
      : this(
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) => Entity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
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

  AnalyzeEntitySentimentRequest({
    this.document,
    this.encodingType,
  });

  AnalyzeEntitySentimentRequest.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          encodingType: json_.containsKey('encodingType')
              ? json_['encodingType'] as core.String
              : null,
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

  AnalyzeEntitySentimentResponse({
    this.entities,
    this.language,
  });

  AnalyzeEntitySentimentResponse.fromJson(core.Map json_)
      : this(
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) => Entity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
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

  /// The encoding type used by the API to calculate sentence offsets.
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

  AnalyzeSentimentRequest({
    this.document,
    this.encodingType,
  });

  AnalyzeSentimentRequest.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          encodingType: json_.containsKey('encodingType')
              ? json_['encodingType'] as core.String
              : null,
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
          documentSentiment: json_.containsKey('documentSentiment')
              ? Sentiment.fromJson(json_['documentSentiment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
          sentences: json_.containsKey('sentences')
              ? (json_['sentences'] as core.List)
                  .map((value) => Sentence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  AnalyzeSyntaxRequest({
    this.document,
    this.encodingType,
  });

  AnalyzeSyntaxRequest.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          encodingType: json_.containsKey('encodingType')
              ? json_['encodingType'] as core.String
              : null,
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

  AnalyzeSyntaxResponse({
    this.language,
    this.sentences,
    this.tokens,
  });

  AnalyzeSyntaxResponse.fromJson(core.Map json_)
      : this(
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
          sentences: json_.containsKey('sentences')
              ? (json_['sentences'] as core.List)
                  .map((value) => Sentence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: json_.containsKey('tokens')
              ? (json_['tokens'] as core.List)
                  .map((value) => Token.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
  Features? features;

  AnnotateTextRequest({
    this.document,
    this.encodingType,
    this.features,
  });

  AnnotateTextRequest.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          encodingType: json_.containsKey('encodingType')
              ? json_['encodingType'] as core.String
              : null,
          features: json_.containsKey('features')
              ? Features.fromJson(
                  json_['features'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (encodingType != null) 'encodingType': encodingType!,
        if (features != null) 'features': features!,
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
    this.sentences,
    this.tokens,
  });

  AnnotateTextResponse.fromJson(core.Map json_)
      : this(
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) => ClassificationCategory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          documentSentiment: json_.containsKey('documentSentiment')
              ? Sentiment.fromJson(json_['documentSentiment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) => Entity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
          sentences: json_.containsKey('sentences')
              ? (json_['sentences'] as core.List)
                  .map((value) => Sentence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: json_.containsKey('tokens')
              ? (json_['tokens'] as core.List)
                  .map((value) => Token.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (documentSentiment != null) 'documentSentiment': documentSentiment!,
        if (entities != null) 'entities': entities!,
        if (language != null) 'language': language!,
        if (sentences != null) 'sentences': sentences!,
        if (tokens != null) 'tokens': tokens!,
      };
}

/// Represents a category returned from the text classifier.
class ClassificationCategory {
  /// The classifier's confidence of the category.
  ///
  /// Number represents how certain the classifier is that this category
  /// represents the given text.
  core.double? confidence;

  /// The name of the category representing the document, from the
  /// [predefined taxonomy](https://cloud.google.com/natural-language/docs/categories).
  core.String? name;

  ClassificationCategory({
    this.confidence,
    this.name,
  });

  ClassificationCategory.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (name != null) 'name': name!,
      };
}

/// The document classification request message.
class ClassifyTextRequest {
  /// Input document.
  ///
  /// Required.
  Document? document;

  ClassifyTextRequest({
    this.document,
  });

  ClassifyTextRequest.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
      };
}

/// The document classification response message.
class ClassifyTextResponse {
  /// Categories representing the input document.
  core.List<ClassificationCategory>? categories;

  ClassifyTextResponse({
    this.categories,
  });

  ClassifyTextResponse.fromJson(core.Map json_)
      : this(
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) => ClassificationCategory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
      };
}

/// Represents dependency parse tree information for a token.
///
/// (For more information on dependency labels, see
/// http://www.aclweb.org/anthology/P13-2017
class DependencyEdge {
  /// Represents the head of this token in the dependency tree.
  ///
  /// This is the index of the token which has an arc going to this token. The
  /// index is the position of the token in the array of tokens returned by the
  /// API method. If this token is a root token, then the `head_token_index` is
  /// its own index.
  core.int? headTokenIndex;

  /// The parse label for the token.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown
  /// - "ABBREV" : Abbreviation modifier
  /// - "ACOMP" : Adjectival complement
  /// - "ADVCL" : Adverbial clause modifier
  /// - "ADVMOD" : Adverbial modifier
  /// - "AMOD" : Adjectival modifier of an NP
  /// - "APPOS" : Appositional modifier of an NP
  /// - "ATTR" : Attribute dependent of a copular verb
  /// - "AUX" : Auxiliary (non-main) verb
  /// - "AUXPASS" : Passive auxiliary
  /// - "CC" : Coordinating conjunction
  /// - "CCOMP" : Clausal complement of a verb or adjective
  /// - "CONJ" : Conjunct
  /// - "CSUBJ" : Clausal subject
  /// - "CSUBJPASS" : Clausal passive subject
  /// - "DEP" : Dependency (unable to determine)
  /// - "DET" : Determiner
  /// - "DISCOURSE" : Discourse
  /// - "DOBJ" : Direct object
  /// - "EXPL" : Expletive
  /// - "GOESWITH" : Goes with (part of a word in a text not well edited)
  /// - "IOBJ" : Indirect object
  /// - "MARK" : Marker (word introducing a subordinate clause)
  /// - "MWE" : Multi-word expression
  /// - "MWV" : Multi-word verbal expression
  /// - "NEG" : Negation modifier
  /// - "NN" : Noun compound modifier
  /// - "NPADVMOD" : Noun phrase used as an adverbial modifier
  /// - "NSUBJ" : Nominal subject
  /// - "NSUBJPASS" : Passive nominal subject
  /// - "NUM" : Numeric modifier of a noun
  /// - "NUMBER" : Element of compound number
  /// - "P" : Punctuation mark
  /// - "PARATAXIS" : Parataxis relation
  /// - "PARTMOD" : Participial modifier
  /// - "PCOMP" : The complement of a preposition is a clause
  /// - "POBJ" : Object of a preposition
  /// - "POSS" : Possession modifier
  /// - "POSTNEG" : Postverbal negative particle
  /// - "PRECOMP" : Predicate complement
  /// - "PRECONJ" : Preconjunt
  /// - "PREDET" : Predeterminer
  /// - "PREF" : Prefix
  /// - "PREP" : Prepositional modifier
  /// - "PRONL" : The relationship between a verb and verbal morpheme
  /// - "PRT" : Particle
  /// - "PS" : Associative or possessive marker
  /// - "QUANTMOD" : Quantifier phrase modifier
  /// - "RCMOD" : Relative clause modifier
  /// - "RCMODREL" : Complementizer in relative clause
  /// - "RDROP" : Ellipsis without a preceding predicate
  /// - "REF" : Referent
  /// - "REMNANT" : Remnant
  /// - "REPARANDUM" : Reparandum
  /// - "ROOT" : Root
  /// - "SNUM" : Suffix specifying a unit of number
  /// - "SUFF" : Suffix
  /// - "TMOD" : Temporal modifier
  /// - "TOPIC" : Topic marker
  /// - "VMOD" : Clause headed by an infinite form of the verb that modifies a
  /// noun
  /// - "VOCATIVE" : Vocative
  /// - "XCOMP" : Open clausal complement
  /// - "SUFFIX" : Name suffix
  /// - "TITLE" : Name title
  /// - "ADVPHMOD" : Adverbial phrase modifier
  /// - "AUXCAUS" : Causative auxiliary
  /// - "AUXVV" : Helper auxiliary
  /// - "DTMOD" : Rentaishi (Prenominal modifier)
  /// - "FOREIGN" : Foreign words
  /// - "KW" : Keyword
  /// - "LIST" : List for chains of comparable items
  /// - "NOMC" : Nominalized clause
  /// - "NOMCSUBJ" : Nominalized clausal subject
  /// - "NOMCSUBJPASS" : Nominalized clausal passive
  /// - "NUMC" : Compound of numeric modifier
  /// - "COP" : Copula
  /// - "DISLOCATED" : Dislocated relation (for fronted/topicalized elements)
  /// - "ASP" : Aspect marker
  /// - "GMOD" : Genitive modifier
  /// - "GOBJ" : Genitive object
  /// - "INFMOD" : Infinitival modifier
  /// - "MES" : Measure
  /// - "NCOMP" : Nominal complement of a noun
  core.String? label;

  DependencyEdge({
    this.headTokenIndex,
    this.label,
  });

  DependencyEdge.fromJson(core.Map json_)
      : this(
          headTokenIndex: json_.containsKey('headTokenIndex')
              ? json_['headTokenIndex'] as core.int
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headTokenIndex != null) 'headTokenIndex': headTokenIndex!,
        if (label != null) 'label': label!,
      };
}

/// ################################################################ #
/// Represents the input to API methods.
class Document {
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
    this.content,
    this.gcsContentUri,
    this.language,
    this.type,
  });

  Document.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          gcsContentUri: json_.containsKey('gcsContentUri')
              ? json_['gcsContentUri'] as core.String
              : null,
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (gcsContentUri != null) 'gcsContentUri': gcsContentUri!,
        if (language != null) 'language': language!,
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
          mentions: json_.containsKey('mentions')
              ? (json_['mentions'] as core.List)
                  .map((value) => EntityMention.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          salience: json_.containsKey('salience')
              ? (json_['salience'] as core.num).toDouble()
              : null,
          sentiment: json_.containsKey('sentiment')
              ? Sentiment.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  EntityMention({
    this.sentiment,
    this.text,
    this.type,
  });

  EntityMention.fromJson(core.Map json_)
      : this(
          sentiment: json_.containsKey('sentiment')
              ? Sentiment.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? TextSpan.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sentiment != null) 'sentiment': sentiment!,
        if (text != null) 'text': text!,
        if (type != null) 'type': type!,
      };
}

/// All available features for sentiment, syntax, and semantic analysis.
///
/// Setting each one to true will enable that specific analysis for the input.
class Features {
  /// Classify the full document into categories.
  core.bool? classifyText;

  /// Extract document-level sentiment.
  core.bool? extractDocumentSentiment;

  /// Extract entities.
  core.bool? extractEntities;

  /// Extract entities and their associated sentiment.
  core.bool? extractEntitySentiment;

  /// Extract syntax information.
  core.bool? extractSyntax;

  Features({
    this.classifyText,
    this.extractDocumentSentiment,
    this.extractEntities,
    this.extractEntitySentiment,
    this.extractSyntax,
  });

  Features.fromJson(core.Map json_)
      : this(
          classifyText: json_.containsKey('classifyText')
              ? json_['classifyText'] as core.bool
              : null,
          extractDocumentSentiment:
              json_.containsKey('extractDocumentSentiment')
                  ? json_['extractDocumentSentiment'] as core.bool
                  : null,
          extractEntities: json_.containsKey('extractEntities')
              ? json_['extractEntities'] as core.bool
              : null,
          extractEntitySentiment: json_.containsKey('extractEntitySentiment')
              ? json_['extractEntitySentiment'] as core.bool
              : null,
          extractSyntax: json_.containsKey('extractSyntax')
              ? json_['extractSyntax'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classifyText != null) 'classifyText': classifyText!,
        if (extractDocumentSentiment != null)
          'extractDocumentSentiment': extractDocumentSentiment!,
        if (extractEntities != null) 'extractEntities': extractEntities!,
        if (extractEntitySentiment != null)
          'extractEntitySentiment': extractEntitySentiment!,
        if (extractSyntax != null) 'extractSyntax': extractSyntax!,
      };
}

/// Represents part of speech information for a token.
///
/// Parts of speech are as defined in
/// http://www.lrec-conf.org/proceedings/lrec2012/pdf/274_Paper.pdf
class PartOfSpeech {
  /// The grammatical aspect.
  /// Possible string values are:
  /// - "ASPECT_UNKNOWN" : Aspect is not applicable in the analyzed language or
  /// is not predicted.
  /// - "PERFECTIVE" : Perfective
  /// - "IMPERFECTIVE" : Imperfective
  /// - "PROGRESSIVE" : Progressive
  core.String? aspect;

  /// The grammatical case.
  /// Possible string values are:
  /// - "CASE_UNKNOWN" : Case is not applicable in the analyzed language or is
  /// not predicted.
  /// - "ACCUSATIVE" : Accusative
  /// - "ADVERBIAL" : Adverbial
  /// - "COMPLEMENTIVE" : Complementive
  /// - "DATIVE" : Dative
  /// - "GENITIVE" : Genitive
  /// - "INSTRUMENTAL" : Instrumental
  /// - "LOCATIVE" : Locative
  /// - "NOMINATIVE" : Nominative
  /// - "OBLIQUE" : Oblique
  /// - "PARTITIVE" : Partitive
  /// - "PREPOSITIONAL" : Prepositional
  /// - "REFLEXIVE_CASE" : Reflexive
  /// - "RELATIVE_CASE" : Relative
  /// - "VOCATIVE" : Vocative
  core.String? case_;

  /// The grammatical form.
  /// Possible string values are:
  /// - "FORM_UNKNOWN" : Form is not applicable in the analyzed language or is
  /// not predicted.
  /// - "ADNOMIAL" : Adnomial
  /// - "AUXILIARY" : Auxiliary
  /// - "COMPLEMENTIZER" : Complementizer
  /// - "FINAL_ENDING" : Final ending
  /// - "GERUND" : Gerund
  /// - "REALIS" : Realis
  /// - "IRREALIS" : Irrealis
  /// - "SHORT" : Short form
  /// - "LONG" : Long form
  /// - "ORDER" : Order form
  /// - "SPECIFIC" : Specific form
  core.String? form;

  /// The grammatical gender.
  /// Possible string values are:
  /// - "GENDER_UNKNOWN" : Gender is not applicable in the analyzed language or
  /// is not predicted.
  /// - "FEMININE" : Feminine
  /// - "MASCULINE" : Masculine
  /// - "NEUTER" : Neuter
  core.String? gender;

  /// The grammatical mood.
  /// Possible string values are:
  /// - "MOOD_UNKNOWN" : Mood is not applicable in the analyzed language or is
  /// not predicted.
  /// - "CONDITIONAL_MOOD" : Conditional
  /// - "IMPERATIVE" : Imperative
  /// - "INDICATIVE" : Indicative
  /// - "INTERROGATIVE" : Interrogative
  /// - "JUSSIVE" : Jussive
  /// - "SUBJUNCTIVE" : Subjunctive
  core.String? mood;

  /// The grammatical number.
  /// Possible string values are:
  /// - "NUMBER_UNKNOWN" : Number is not applicable in the analyzed language or
  /// is not predicted.
  /// - "SINGULAR" : Singular
  /// - "PLURAL" : Plural
  /// - "DUAL" : Dual
  core.String? number;

  /// The grammatical person.
  /// Possible string values are:
  /// - "PERSON_UNKNOWN" : Person is not applicable in the analyzed language or
  /// is not predicted.
  /// - "FIRST" : First
  /// - "SECOND" : Second
  /// - "THIRD" : Third
  /// - "REFLEXIVE_PERSON" : Reflexive
  core.String? person;

  /// The grammatical properness.
  /// Possible string values are:
  /// - "PROPER_UNKNOWN" : Proper is not applicable in the analyzed language or
  /// is not predicted.
  /// - "PROPER" : Proper
  /// - "NOT_PROPER" : Not proper
  core.String? proper;

  /// The grammatical reciprocity.
  /// Possible string values are:
  /// - "RECIPROCITY_UNKNOWN" : Reciprocity is not applicable in the analyzed
  /// language or is not predicted.
  /// - "RECIPROCAL" : Reciprocal
  /// - "NON_RECIPROCAL" : Non-reciprocal
  core.String? reciprocity;

  /// The part of speech tag.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown
  /// - "ADJ" : Adjective
  /// - "ADP" : Adposition (preposition and postposition)
  /// - "ADV" : Adverb
  /// - "CONJ" : Conjunction
  /// - "DET" : Determiner
  /// - "NOUN" : Noun (common and proper)
  /// - "NUM" : Cardinal number
  /// - "PRON" : Pronoun
  /// - "PRT" : Particle or other function word
  /// - "PUNCT" : Punctuation
  /// - "VERB" : Verb (all tenses and modes)
  /// - "X" : Other: foreign words, typos, abbreviations
  /// - "AFFIX" : Affix
  core.String? tag;

  /// The grammatical tense.
  /// Possible string values are:
  /// - "TENSE_UNKNOWN" : Tense is not applicable in the analyzed language or is
  /// not predicted.
  /// - "CONDITIONAL_TENSE" : Conditional
  /// - "FUTURE" : Future
  /// - "PAST" : Past
  /// - "PRESENT" : Present
  /// - "IMPERFECT" : Imperfect
  /// - "PLUPERFECT" : Pluperfect
  core.String? tense;

  /// The grammatical voice.
  /// Possible string values are:
  /// - "VOICE_UNKNOWN" : Voice is not applicable in the analyzed language or is
  /// not predicted.
  /// - "ACTIVE" : Active
  /// - "CAUSATIVE" : Causative
  /// - "PASSIVE" : Passive
  core.String? voice;

  PartOfSpeech({
    this.aspect,
    this.case_,
    this.form,
    this.gender,
    this.mood,
    this.number,
    this.person,
    this.proper,
    this.reciprocity,
    this.tag,
    this.tense,
    this.voice,
  });

  PartOfSpeech.fromJson(core.Map json_)
      : this(
          aspect: json_.containsKey('aspect')
              ? json_['aspect'] as core.String
              : null,
          case_:
              json_.containsKey('case') ? json_['case'] as core.String : null,
          form: json_.containsKey('form') ? json_['form'] as core.String : null,
          gender: json_.containsKey('gender')
              ? json_['gender'] as core.String
              : null,
          mood: json_.containsKey('mood') ? json_['mood'] as core.String : null,
          number: json_.containsKey('number')
              ? json_['number'] as core.String
              : null,
          person: json_.containsKey('person')
              ? json_['person'] as core.String
              : null,
          proper: json_.containsKey('proper')
              ? json_['proper'] as core.String
              : null,
          reciprocity: json_.containsKey('reciprocity')
              ? json_['reciprocity'] as core.String
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
          tense:
              json_.containsKey('tense') ? json_['tense'] as core.String : null,
          voice:
              json_.containsKey('voice') ? json_['voice'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aspect != null) 'aspect': aspect!,
        if (case_ != null) 'case': case_!,
        if (form != null) 'form': form!,
        if (gender != null) 'gender': gender!,
        if (mood != null) 'mood': mood!,
        if (number != null) 'number': number!,
        if (person != null) 'person': person!,
        if (proper != null) 'proper': proper!,
        if (reciprocity != null) 'reciprocity': reciprocity!,
        if (tag != null) 'tag': tag!,
        if (tense != null) 'tense': tense!,
        if (voice != null) 'voice': voice!,
      };
}

/// Represents a sentence in the input document.
class Sentence {
  /// For calls to AnalyzeSentiment or if
  /// AnnotateTextRequest.Features.extract_document_sentiment is set to true,
  /// this field will contain the sentiment for the sentence.
  Sentiment? sentiment;

  /// The sentence text.
  TextSpan? text;

  Sentence({
    this.sentiment,
    this.text,
  });

  Sentence.fromJson(core.Map json_)
      : this(
          sentiment: json_.containsKey('sentiment')
              ? Sentiment.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? TextSpan.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sentiment != null) 'sentiment': sentiment!,
        if (text != null) 'text': text!,
      };
}

/// Represents the feeling associated with the entire text or entities in the
/// text.
class Sentiment {
  /// A non-negative number in the \[0, +inf) range, which represents the
  /// absolute magnitude of sentiment regardless of score (positive or
  /// negative).
  core.double? magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double? score;

  Sentiment({
    this.magnitude,
    this.score,
  });

  Sentiment.fromJson(core.Map json_)
      : this(
          magnitude: json_.containsKey('magnitude')
              ? (json_['magnitude'] as core.num).toDouble()
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (magnitude != null) 'magnitude': magnitude!,
        if (score != null) 'score': score!,
      };
}

/// Represents an output piece of text.
class TextSpan {
  /// The API calculates the beginning offset of the content in the original
  /// document according to the EncodingType specified in the API request.
  core.int? beginOffset;

  /// The content of the output text.
  core.String? content;

  TextSpan({
    this.beginOffset,
    this.content,
  });

  TextSpan.fromJson(core.Map json_)
      : this(
          beginOffset: json_.containsKey('beginOffset')
              ? json_['beginOffset'] as core.int
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (beginOffset != null) 'beginOffset': beginOffset!,
        if (content != null) 'content': content!,
      };
}

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

  Token({
    this.dependencyEdge,
    this.lemma,
    this.partOfSpeech,
    this.text,
  });

  Token.fromJson(core.Map json_)
      : this(
          dependencyEdge: json_.containsKey('dependencyEdge')
              ? DependencyEdge.fromJson(json_['dependencyEdge']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lemma:
              json_.containsKey('lemma') ? json_['lemma'] as core.String : null,
          partOfSpeech: json_.containsKey('partOfSpeech')
              ? PartOfSpeech.fromJson(
                  json_['partOfSpeech'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? TextSpan.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dependencyEdge != null) 'dependencyEdge': dependencyEdge!,
        if (lemma != null) 'lemma': lemma!,
        if (partOfSpeech != null) 'partOfSpeech': partOfSpeech!,
        if (text != null) 'text': text!,
      };
}
