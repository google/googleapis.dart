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

/// Cloud Natural Language API - v2
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
  /// along with entity types, probability, mentions for each entity, and other
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

    const url_ = 'v2/documents:analyzeEntities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeEntitiesResponse.fromJson(
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

    const url_ = 'v2/documents:analyzeSentiment';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeSentimentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// A convenience method that provides all features in one call.
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

    const url_ = 'v2/documents:annotateText';

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

    const url_ = 'v2/documents:classifyText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ClassifyTextResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    const url_ = 'v2/documents:moderateText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ModerateTextResponse.fromJson(
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
  /// See Document.language_code field for more details.
  core.String? languageCode;

  /// Whether the language is officially supported.
  ///
  /// The API may still return a response when the language is not supported,
  /// but it is on a best effort basis.
  core.bool? languageSupported;

  AnalyzeEntitiesResponse({
    this.entities,
    this.languageCode,
    this.languageSupported,
  });

  AnalyzeEntitiesResponse.fromJson(core.Map json_)
      : this(
          entities: (json_['entities'] as core.List?)
              ?.map((value) =>
                  Entity.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          languageCode: json_['languageCode'] as core.String?,
          languageSupported: json_['languageSupported'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (languageSupported != null) 'languageSupported': languageSupported!,
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
  /// See Document.language_code field for more details.
  core.String? languageCode;

  /// Whether the language is officially supported.
  ///
  /// The API may still return a response when the language is not supported,
  /// but it is on a best effort basis.
  core.bool? languageSupported;

  /// The sentiment for all the sentences in the document.
  core.List<Sentence>? sentences;

  AnalyzeSentimentResponse({
    this.documentSentiment,
    this.languageCode,
    this.languageSupported,
    this.sentences,
  });

  AnalyzeSentimentResponse.fromJson(core.Map json_)
      : this(
          documentSentiment: json_.containsKey('documentSentiment')
              ? Sentiment.fromJson(json_['documentSentiment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: json_['languageCode'] as core.String?,
          languageSupported: json_['languageSupported'] as core.bool?,
          sentences: (json_['sentences'] as core.List?)
              ?.map((value) => Sentence.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentSentiment != null) 'documentSentiment': documentSentiment!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (languageSupported != null) 'languageSupported': languageSupported!,
        if (sentences != null) 'sentences': sentences!,
      };
}

/// The request message for the text annotation API, which can perform multiple
/// analysis types in one call.
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
          encodingType: json_['encodingType'] as core.String?,
          features: json_.containsKey('features')
              ? AnnotateTextRequestFeatures.fromJson(
                  json_['features'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (encodingType != null) 'encodingType': encodingType!,
        if (features != null) 'features': features!,
      };
}

/// All available features.
///
/// Setting each one to true will enable that specific analysis for the input.
class AnnotateTextRequestFeatures {
  /// Classify the full document into categories.
  ///
  /// Optional.
  core.bool? classifyText;

  /// Extract document-level sentiment.
  ///
  /// Optional.
  core.bool? extractDocumentSentiment;

  /// Extract entities.
  ///
  /// Optional.
  core.bool? extractEntities;

  /// Moderate the document for harmful and sensitive categories.
  ///
  /// Optional.
  core.bool? moderateText;

  AnnotateTextRequestFeatures({
    this.classifyText,
    this.extractDocumentSentiment,
    this.extractEntities,
    this.moderateText,
  });

  AnnotateTextRequestFeatures.fromJson(core.Map json_)
      : this(
          classifyText: json_['classifyText'] as core.bool?,
          extractDocumentSentiment:
              json_['extractDocumentSentiment'] as core.bool?,
          extractEntities: json_['extractEntities'] as core.bool?,
          moderateText: json_['moderateText'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classifyText != null) 'classifyText': classifyText!,
        if (extractDocumentSentiment != null)
          'extractDocumentSentiment': extractDocumentSentiment!,
        if (extractEntities != null) 'extractEntities': extractEntities!,
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
  /// AnnotateTextRequest.Features.extract_entities .
  core.List<Entity>? entities;

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  ///
  /// See Document.language_code field for more details.
  core.String? languageCode;

  /// Whether the language is officially supported by all requested features.
  ///
  /// The API may still return a response when the language is not supported,
  /// but it is on a best effort basis.
  core.bool? languageSupported;

  /// Harmful and sensitive categories identified in the input document.
  core.List<ClassificationCategory>? moderationCategories;

  /// Sentences in the input document.
  ///
  /// Populated if the user enables
  /// AnnotateTextRequest.Features.extract_document_sentiment.
  core.List<Sentence>? sentences;

  AnnotateTextResponse({
    this.categories,
    this.documentSentiment,
    this.entities,
    this.languageCode,
    this.languageSupported,
    this.moderationCategories,
    this.sentences,
  });

  AnnotateTextResponse.fromJson(core.Map json_)
      : this(
          categories: (json_['categories'] as core.List?)
              ?.map((value) => ClassificationCategory.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          documentSentiment: json_.containsKey('documentSentiment')
              ? Sentiment.fromJson(json_['documentSentiment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          entities: (json_['entities'] as core.List?)
              ?.map((value) =>
                  Entity.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          languageCode: json_['languageCode'] as core.String?,
          languageSupported: json_['languageSupported'] as core.bool?,
          moderationCategories: (json_['moderationCategories'] as core.List?)
              ?.map((value) => ClassificationCategory.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          sentences: (json_['sentences'] as core.List?)
              ?.map((value) => Sentence.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (documentSentiment != null) 'documentSentiment': documentSentiment!,
        if (entities != null) 'entities': entities!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (languageSupported != null) 'languageSupported': languageSupported!,
        if (moderationCategories != null)
          'moderationCategories': moderationCategories!,
        if (sentences != null) 'sentences': sentences!,
      };
}

/// Represents a category returned from the text classifier.
class ClassificationCategory {
  /// The classifier's confidence of the category.
  ///
  /// Number represents how certain the classifier is that this category
  /// represents the given text.
  core.double? confidence;

  /// The name of the category representing the document.
  core.String? name;

  /// The classifier's severity of the category.
  ///
  /// This is only present when the ModerateTextRequest.ModelVersion is set to
  /// MODEL_VERSION_2, and the corresponding category has a severity score.
  ///
  /// Optional.
  core.double? severity;

  ClassificationCategory({
    this.confidence,
    this.name,
    this.severity,
  });

  ClassificationCategory.fromJson(core.Map json_)
      : this(
          confidence: (json_['confidence'] as core.num?)?.toDouble(),
          name: json_['name'] as core.String?,
          severity: (json_['severity'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (name != null) 'name': name!,
        if (severity != null) 'severity': severity!,
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

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  ///
  /// See Document.language_code field for more details.
  core.String? languageCode;

  /// Whether the language is officially supported.
  ///
  /// The API may still return a response when the language is not supported,
  /// but it is on a best effort basis.
  core.bool? languageSupported;

  ClassifyTextResponse({
    this.categories,
    this.languageCode,
    this.languageSupported,
  });

  ClassifyTextResponse.fromJson(core.Map json_)
      : this(
          categories: (json_['categories'] as core.List?)
              ?.map((value) => ClassificationCategory.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          languageCode: json_['languageCode'] as core.String?,
          languageSupported: json_['languageSupported'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (languageSupported != null) 'languageSupported': languageSupported!,
      };
}

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
  ///
  /// Optional.
  core.String? languageCode;

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
    this.languageCode,
    this.type,
  });

  Document.fromJson(core.Map json_)
      : this(
          content: json_['content'] as core.String?,
          gcsContentUri: json_['gcsContentUri'] as core.String?,
          languageCode: json_['languageCode'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (gcsContentUri != null) 'gcsContentUri': gcsContentUri!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (type != null) 'type': type!,
      };
}

/// Represents a phrase in the text that is a known entity, such as a person, an
/// organization, or location.
///
/// The API associates information, such as probability and mentions, with
/// entities.
class Entity {
  /// The mentions of this entity in the input document.
  ///
  /// The API currently supports proper noun mentions.
  core.List<EntityMention>? mentions;

  /// Metadata associated with the entity.
  ///
  /// For the metadata associated with other entity types, see the Type table
  /// below.
  core.Map<core.String, core.String>? metadata;

  /// The representative name for the entity.
  core.String? name;

  /// For calls to AnalyzeEntitySentiment this field will contain the aggregate
  /// sentiment expressed for this entity in the provided document.
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
  /// code, if detected * `country` - country, if detected * `broad_region` -
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
    this.sentiment,
    this.type,
  });

  Entity.fromJson(core.Map json_)
      : this(
          mentions: (json_['mentions'] as core.List?)
              ?.map((value) => EntityMention.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          sentiment: json_.containsKey('sentiment')
              ? Sentiment.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mentions != null) 'mentions': mentions!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (sentiment != null) 'sentiment': sentiment!,
        if (type != null) 'type': type!,
      };
}

/// Represents a mention for an entity in the text.
///
/// Currently, proper noun mentions are supported.
class EntityMention {
  /// Probability score associated with the entity.
  ///
  /// The score shows the probability of the entity mention being the entity
  /// type. The score is in (0, 1\] range.
  core.double? probability;

  /// For calls to AnalyzeEntitySentiment this field will contain the sentiment
  /// expressed for this mention of the entity in the provided document.
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
    this.probability,
    this.sentiment,
    this.text,
    this.type,
  });

  EntityMention.fromJson(core.Map json_)
      : this(
          probability: (json_['probability'] as core.num?)?.toDouble(),
          sentiment: json_.containsKey('sentiment')
              ? Sentiment.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? TextSpan.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (probability != null) 'probability': probability!,
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

  /// The model version to use for ModerateText.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MODEL_VERSION_UNSPECIFIED" : The default model version.
  /// - "MODEL_VERSION_1" : Use the v1 model, this model is used by default when
  /// not provided. The v1 model only returns probability (confidence) score for
  /// each category.
  /// - "MODEL_VERSION_2" : Use the v2 model. The v2 model only returns
  /// probability (confidence) score for each category, and returns severity
  /// score for a subset of the categories.
  core.String? modelVersion;

  ModerateTextRequest({
    this.document,
    this.modelVersion,
  });

  ModerateTextRequest.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          modelVersion: json_['modelVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (modelVersion != null) 'modelVersion': modelVersion!,
      };
}

/// The document moderation response message.
class ModerateTextResponse {
  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  ///
  /// See Document.language_code field for more details.
  core.String? languageCode;

  /// Whether the language is officially supported.
  ///
  /// The API may still return a response when the language is not supported,
  /// but it is on a best effort basis.
  core.bool? languageSupported;

  /// Harmful and sensitive categories representing the input document.
  core.List<ClassificationCategory>? moderationCategories;

  ModerateTextResponse({
    this.languageCode,
    this.languageSupported,
    this.moderationCategories,
  });

  ModerateTextResponse.fromJson(core.Map json_)
      : this(
          languageCode: json_['languageCode'] as core.String?,
          languageSupported: json_['languageSupported'] as core.bool?,
          moderationCategories: (json_['moderationCategories'] as core.List?)
              ?.map((value) => ClassificationCategory.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (languageSupported != null) 'languageSupported': languageSupported!,
        if (moderationCategories != null)
          'moderationCategories': moderationCategories!,
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
  /// A non-negative number in the \[0, +inf\] range, which represents the
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
          magnitude: (json_['magnitude'] as core.num?)?.toDouble(),
          score: (json_['score'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (magnitude != null) 'magnitude': magnitude!,
        if (score != null) 'score': score!,
      };
}

/// Represents a text span in the input document.
typedef TextSpan = $TextSpan;
