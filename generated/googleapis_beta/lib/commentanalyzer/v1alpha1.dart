// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.commentanalyzer.v1alpha1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client commentanalyzer/v1alpha1';

/// The Perspective Comment Analyzer API provides information about the
/// potential impact of a comment on a conversation (e.g. it can provide a score
/// for the "toxicity" of a comment). Users can leverage the
/// "SuggestCommentScore" method to submit corrections to improve Perspective
/// over time. Users can set the "doNotStore" flag to ensure that all submitted
/// comments are automatically deleted after scores are returned.
class CommentanalyzerApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  CommentsResourceApi get comments => new CommentsResourceApi(_requester);

  CommentanalyzerApi(http.Client client,
      {core.String rootUrl = "https://commentanalyzer.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class CommentsResourceApi {
  final commons.ApiRequester _requester;

  CommentsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Analyzes the provided text and returns scores for requested attributes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeCommentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeCommentResponse> analyze(AnalyzeCommentRequest request,
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

    _url = 'v1alpha1/comments:analyze';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AnalyzeCommentResponse.fromJson(data));
  }

  /// Suggest comment scores as training data.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SuggestCommentScoreResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SuggestCommentScoreResponse> suggestscore(
      SuggestCommentScoreRequest request,
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

    _url = 'v1alpha1/comments:suggestscore';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new SuggestCommentScoreResponse.fromJson(data));
  }
}

/// The comment analysis request message.
class AnalyzeCommentRequest {
  /// Opaque token that is echoed from the request to the response.
  core.String clientToken;

  /// The comment to analyze.
  TextEntry comment;

  /// Optional identifier associating this AnalyzeCommentRequest with a
  /// particular client's community. Different communities may have different
  /// norms and rules. Specifying this value enables us to explore building
  /// community-specific models for clients.
  core.String communityId;

  /// The context of the comment.
  Context context;

  /// Do not store the comment or context sent in this request. By default, the
  /// service may store comments/context for debugging purposes.
  core.bool doNotStore;

  /// The language(s) of the comment and context (if none are specified, the
  /// language is automatically detected). If multiple languages are specified,
  /// the text is checked in all of them that are supported. Both ISO and BCP-47
  /// language codes are accepted.
  /// Current Language Restrictions:
  ///  * Only English text ("en") is supported.
  /// If none of the languages specified by the caller are supported, an
  /// `UNIMPLEMENTED` error is returned.
  core.List<core.String> languages;

  /// Specification of requested attributes. The AttributeParameters serve as
  /// configuration for each associated attribute. The map keys are attribute
  /// names. The following attributes are available:
  /// "ATTACK_ON_AUTHOR" - Attack on author of original article or post.
  /// "ATTACK_ON_COMMENTER" - Attack on fellow commenter.
  /// "ATTACK_ON_PUBLISHER" - Attack on publisher of article/post.
  /// "INCOHERENT" - Difficult to understand, nonsensical.
  /// "INFLAMMATORY" - Intending to provoke or inflame.
  /// "OBSCENE" - Obscene, such as cursing.
  /// "OFF_TOPIC" - Not related to the original topic.
  /// "SPAM" - Commercial/advertising spam content.
  /// "UNSUBSTANTIAL" - Trivial.
  core.Map<core.String, AttributeParameters> requestedAttributes;

  /// Session ID. Used to join related RPCs into a single session. For example,
  /// an interactive tool that calls both the AnalyzeComment and
  /// SuggestCommentScore RPCs should set all invocations of both RPCs to the
  /// same Session ID, typically a random 64-bit integer.
  core.String sessionId;

  /// An advisory parameter that will return span annotations if the model
  /// is capable of providing scores with sub-comment resolution. This will
  /// likely increase the size of the returned message.
  core.bool spanAnnotations;

  AnalyzeCommentRequest();

  AnalyzeCommentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clientToken")) {
      clientToken = _json["clientToken"];
    }
    if (_json.containsKey("comment")) {
      comment = new TextEntry.fromJson(_json["comment"]);
    }
    if (_json.containsKey("communityId")) {
      communityId = _json["communityId"];
    }
    if (_json.containsKey("context")) {
      context = new Context.fromJson(_json["context"]);
    }
    if (_json.containsKey("doNotStore")) {
      doNotStore = _json["doNotStore"];
    }
    if (_json.containsKey("languages")) {
      languages = (_json["languages"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("requestedAttributes")) {
      requestedAttributes = commons.mapMap<core.Map, AttributeParameters>(
          _json["requestedAttributes"].cast<core.String, core.Map>(),
          (core.Map item) => new AttributeParameters.fromJson(item));
    }
    if (_json.containsKey("sessionId")) {
      sessionId = _json["sessionId"];
    }
    if (_json.containsKey("spanAnnotations")) {
      spanAnnotations = _json["spanAnnotations"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientToken != null) {
      _json["clientToken"] = clientToken;
    }
    if (comment != null) {
      _json["comment"] = (comment).toJson();
    }
    if (communityId != null) {
      _json["communityId"] = communityId;
    }
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (doNotStore != null) {
      _json["doNotStore"] = doNotStore;
    }
    if (languages != null) {
      _json["languages"] = languages;
    }
    if (requestedAttributes != null) {
      _json["requestedAttributes"] = commons
          .mapMap<AttributeParameters, core.Map<core.String, core.Object>>(
              requestedAttributes,
              (AttributeParameters item) => (item).toJson());
    }
    if (sessionId != null) {
      _json["sessionId"] = sessionId;
    }
    if (spanAnnotations != null) {
      _json["spanAnnotations"] = spanAnnotations;
    }
    return _json;
  }
}

/// The comment analysis response message.
class AnalyzeCommentResponse {
  /// Scores for the requested attributes. The map keys are attribute names
  /// (same
  /// as the requested_attribute field in AnalyzeCommentRequest, for example
  /// "ATTACK_ON_AUTHOR", "INFLAMMATORY", etc).
  core.Map<core.String, AttributeScores> attributeScores;

  /// Same token from the original AnalyzeCommentRequest.
  core.String clientToken;

  /// Contains the languages detected from the text content, sorted in order of
  /// likelihood.
  core.List<core.String> detectedLanguages;

  /// The language(s) used by CommentAnalyzer service to choose which Model to
  /// use when analyzing the comment. Might better be called
  /// "effective_languages". The logic used to make the choice is as follows:
  ///   if Request.languages.empty()
  ///     effective_languages = detected_languages
  ///   else
  ///     effective_languages = Request.languages
  core.List<core.String> languages;

  AnalyzeCommentResponse();

  AnalyzeCommentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("attributeScores")) {
      attributeScores = commons.mapMap<core.Map, AttributeScores>(
          _json["attributeScores"].cast<core.String, core.Map>(),
          (core.Map item) => new AttributeScores.fromJson(item));
    }
    if (_json.containsKey("clientToken")) {
      clientToken = _json["clientToken"];
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages =
          (_json["detectedLanguages"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("languages")) {
      languages = (_json["languages"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attributeScores != null) {
      _json["attributeScores"] =
          commons.mapMap<AttributeScores, core.Map<core.String, core.Object>>(
              attributeScores, (AttributeScores item) => (item).toJson());
    }
    if (clientToken != null) {
      _json["clientToken"] = clientToken;
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] = detectedLanguages;
    }
    if (languages != null) {
      _json["languages"] = languages;
    }
    return _json;
  }
}

/// A type of context specific to a comment left on a single-threaded comment
/// message board, where comments are either a top level comment or the child of
/// a top level comment.
class ArticleAndParentComment {
  /// The source content about which the comment was made (article text, article
  /// summary, video transcript, etc).
  TextEntry article;

  /// Refers to text that is a direct parent of the source comment, such as in a
  /// one-deep threaded message board. This field will only be present for
  /// comments that are replies to other comments and will not be populated for
  /// direct comments on the article_text.
  TextEntry parentComment;

  ArticleAndParentComment();

  ArticleAndParentComment.fromJson(core.Map _json) {
    if (_json.containsKey("article")) {
      article = new TextEntry.fromJson(_json["article"]);
    }
    if (_json.containsKey("parentComment")) {
      parentComment = new TextEntry.fromJson(_json["parentComment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (article != null) {
      _json["article"] = (article).toJson();
    }
    if (parentComment != null) {
      _json["parentComment"] = (parentComment).toJson();
    }
    return _json;
  }
}

/// Configurable parameters for attribute scoring.
class AttributeParameters {
  /// Don't return scores for this attribute that are below this threshold. If
  /// unset, a default threshold will be applied. A FloatValue wrapper is used
  /// to
  /// distinguish between 0 vs. default/unset.
  core.double scoreThreshold;

  /// What type of scores to return. If unset, defaults to probability scores.
  /// Possible string values are:
  /// - "SCORE_TYPE_UNSPECIFIED" : Unspecified. Defaults to PROBABILITY scores
  /// if available, and otherwise
  /// RAW. Every model has a RAW score.
  /// - "PROBABILITY" : Probability scores are in the range [0, 1] and indicate
  /// level of confidence
  /// in the attribute label.
  /// - "STD_DEV_SCORE" : Standard deviation scores are in the range (-inf,
  /// +inf).
  /// - "PERCENTILE" : Percentile scores are in the range [0, 1] and indicate
  /// the percentile of
  /// the raw score, normalized with a test dataset. This is not generally
  /// recommended, as the normalization is dependent on the dataset used, which
  /// may not match other usecases.
  /// - "RAW" : Raw scores are the raw values from the model, and may take any
  /// value. This
  /// is primarily for debugging/testing, and not generally recommended.
  core.String scoreType;

  AttributeParameters();

  AttributeParameters.fromJson(core.Map _json) {
    if (_json.containsKey("scoreThreshold")) {
      scoreThreshold = _json["scoreThreshold"].toDouble();
    }
    if (_json.containsKey("scoreType")) {
      scoreType = _json["scoreType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (scoreThreshold != null) {
      _json["scoreThreshold"] = scoreThreshold;
    }
    if (scoreType != null) {
      _json["scoreType"] = scoreType;
    }
    return _json;
  }
}

/// This holds score values for a single attribute. It contains both per-span
/// scores as well as an overall summary score..
class AttributeScores {
  /// Per-span scores.
  core.List<SpanScore> spanScores;

  /// Overall score for comment as a whole.
  Score summaryScore;

  AttributeScores();

  AttributeScores.fromJson(core.Map _json) {
    if (_json.containsKey("spanScores")) {
      spanScores = (_json["spanScores"] as core.List)
          .map<SpanScore>((value) => new SpanScore.fromJson(value))
          .toList();
    }
    if (_json.containsKey("summaryScore")) {
      summaryScore = new Score.fromJson(_json["summaryScore"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (spanScores != null) {
      _json["spanScores"] =
          spanScores.map((value) => (value).toJson()).toList();
    }
    if (summaryScore != null) {
      _json["summaryScore"] = (summaryScore).toJson();
    }
    return _json;
  }
}

/// Context is typically something that a Comment is referencing or replying to
/// (such as an article, or previous comment).
/// Note: Populate only ONE OF the following fields. The oneof syntax cannot be
/// used because that would require nesting entries inside another message and
/// breaking backwards compatibility. The server will return an error if more
/// than one of the following fields is present.
class Context {
  /// Information about the source for which the original comment was made, and
  /// any parent comment info.
  ArticleAndParentComment articleAndParentComment;

  /// A list of messages. For example, a linear comments section or forum
  /// thread.
  core.List<TextEntry> entries;

  Context();

  Context.fromJson(core.Map _json) {
    if (_json.containsKey("articleAndParentComment")) {
      articleAndParentComment = new ArticleAndParentComment.fromJson(
          _json["articleAndParentComment"]);
    }
    if (_json.containsKey("entries")) {
      entries = (_json["entries"] as core.List)
          .map<TextEntry>((value) => new TextEntry.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (articleAndParentComment != null) {
      _json["articleAndParentComment"] = (articleAndParentComment).toJson();
    }
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Analysis scores are described by a value and a ScoreType.
class Score {
  /// The type of the above value.
  /// Possible string values are:
  /// - "SCORE_TYPE_UNSPECIFIED" : Unspecified. Defaults to PROBABILITY scores
  /// if available, and otherwise
  /// RAW. Every model has a RAW score.
  /// - "PROBABILITY" : Probability scores are in the range [0, 1] and indicate
  /// level of confidence
  /// in the attribute label.
  /// - "STD_DEV_SCORE" : Standard deviation scores are in the range (-inf,
  /// +inf).
  /// - "PERCENTILE" : Percentile scores are in the range [0, 1] and indicate
  /// the percentile of
  /// the raw score, normalized with a test dataset. This is not generally
  /// recommended, as the normalization is dependent on the dataset used, which
  /// may not match other usecases.
  /// - "RAW" : Raw scores are the raw values from the model, and may take any
  /// value. This
  /// is primarily for debugging/testing, and not generally recommended.
  core.String type;

  /// Score value. Semantics described by type below.
  core.double value;

  Score();

  Score.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// This is a single score for a given span of text.
class SpanScore {
  /// "begin" and "end" describe the span of the original text that the
  /// attribute
  /// score applies to. The values are the UTF-16 codepoint range. "end" is
  /// exclusive. For example, with the text "Hi there", the begin/end pair (0,2)
  /// describes the text "Hi".
  ///
  /// If "begin" and "end" are unset, the score applies to the full text.
  core.int begin;
  core.int end;

  /// The score value.
  Score score;

  SpanScore();

  SpanScore.fromJson(core.Map _json) {
    if (_json.containsKey("begin")) {
      begin = _json["begin"];
    }
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("score")) {
      score = new Score.fromJson(_json["score"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (begin != null) {
      _json["begin"] = begin;
    }
    if (end != null) {
      _json["end"] = end;
    }
    if (score != null) {
      _json["score"] = (score).toJson();
    }
    return _json;
  }
}

/// The comment score suggestion request message.
class SuggestCommentScoreRequest {
  /// Attribute scores for the comment. The map keys are attribute names, same
  /// as
  /// the requested_attribute field in AnalyzeCommentRequest (for example
  /// "ATTACK_ON_AUTHOR", "INFLAMMATORY", etc.). This field has the same type as
  /// the `attribute_scores` field in AnalyzeCommentResponse.
  ///
  /// To specify an overall attribute score for the entire comment as a whole,
  /// use the `summary_score` field of the mapped AttributeScores object. To
  /// specify scores on specific subparts of the comment, use the `span_scores`
  /// field. All SpanScore objects must have begin and end fields set.
  ///
  /// All Score objects must be explicitly set (for binary classification, use
  /// the score values 0 and 1). If Score objects don't include a ScoreType,
  /// `PROBABILITY` is assumed.
  ///
  /// `attribute_scores` must not be empty. The mapped AttributeScores objects
  /// also must not be empty. An `INVALID_ARGUMENT` error is returned for all
  /// malformed requests.
  core.Map<core.String, AttributeScores> attributeScores;

  /// Opaque token that is echoed from the request to the response.
  core.String clientToken;

  /// The comment being scored.
  TextEntry comment;

  /// Optional identifier associating this comment score suggestion with a
  /// particular sub-community. Different communities may have different norms
  /// and rules. Specifying this value enables training community-specific
  /// models.
  core.String communityId;

  /// The context of the comment.
  Context context;

  /// The language(s) of the comment and context (if none are specified, the
  /// language is automatically detected). If multiple languages are specified,
  /// the text is checked in all of them that are supported. Both ISO and BCP-47
  /// language codes are accepted.
  /// Current Language Restrictions:
  ///  * Only English text ("en") is supported.
  /// If none of the languages specified by the caller are supported, an
  /// `UNIMPLEMENTED` error is returned.
  core.List<core.String> languages;

  /// Session ID. Used to join related RPCs into a single session. For example,
  /// an interactive tool that calls both the AnalyzeComment and
  /// SuggestCommentScore RPCs should set all invocations of both RPCs to the
  /// same Session ID, typically a random 64-bit integer.
  core.String sessionId;

  SuggestCommentScoreRequest();

  SuggestCommentScoreRequest.fromJson(core.Map _json) {
    if (_json.containsKey("attributeScores")) {
      attributeScores = commons.mapMap<core.Map, AttributeScores>(
          _json["attributeScores"].cast<core.String, core.Map>(),
          (core.Map item) => new AttributeScores.fromJson(item));
    }
    if (_json.containsKey("clientToken")) {
      clientToken = _json["clientToken"];
    }
    if (_json.containsKey("comment")) {
      comment = new TextEntry.fromJson(_json["comment"]);
    }
    if (_json.containsKey("communityId")) {
      communityId = _json["communityId"];
    }
    if (_json.containsKey("context")) {
      context = new Context.fromJson(_json["context"]);
    }
    if (_json.containsKey("languages")) {
      languages = (_json["languages"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("sessionId")) {
      sessionId = _json["sessionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attributeScores != null) {
      _json["attributeScores"] =
          commons.mapMap<AttributeScores, core.Map<core.String, core.Object>>(
              attributeScores, (AttributeScores item) => (item).toJson());
    }
    if (clientToken != null) {
      _json["clientToken"] = clientToken;
    }
    if (comment != null) {
      _json["comment"] = (comment).toJson();
    }
    if (communityId != null) {
      _json["communityId"] = communityId;
    }
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (languages != null) {
      _json["languages"] = languages;
    }
    if (sessionId != null) {
      _json["sessionId"] = sessionId;
    }
    return _json;
  }
}

/// The comment score suggestion response message.
class SuggestCommentScoreResponse {
  /// Same token from the original SuggestCommentScoreRequest.
  core.String clientToken;

  /// The list of languages detected from the comment text.
  core.List<core.String> detectedLanguages;

  /// The list of languages provided in the request.
  core.List<core.String> requestedLanguages;

  SuggestCommentScoreResponse();

  SuggestCommentScoreResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clientToken")) {
      clientToken = _json["clientToken"];
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages =
          (_json["detectedLanguages"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("requestedLanguages")) {
      requestedLanguages =
          (_json["requestedLanguages"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientToken != null) {
      _json["clientToken"] = clientToken;
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] = detectedLanguages;
    }
    if (requestedLanguages != null) {
      _json["requestedLanguages"] = requestedLanguages;
    }
    return _json;
  }
}

/// Represents a body of text.
class TextEntry {
  /// UTF-8 encoded text.
  core.String text;

  /// Type of the text field.
  /// Possible string values are:
  /// - "TEXT_TYPE_UNSPECIFIED" : The content type is not specified. Text will
  /// be interpreted as plain text
  /// by default.
  /// - "PLAIN_TEXT" : Plain text.
  /// - "HTML" : HTML.
  core.String type;

  TextEntry();

  TextEntry.fromJson(core.Map _json) {
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (text != null) {
      _json["text"] = text;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}
