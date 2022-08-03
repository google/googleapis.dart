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

/// My Business Q&A API - v1
///
/// The My Business Q&A API allows questions and answers to be posted for
/// specific listings.
///
/// For more information, see <https://developers.google.com/my-business/>
///
/// Create an instance of [MyBusinessQ_AApi] to access these resources:
///
/// - [LocationsResource]
///   - [LocationsQuestionsResource]
///     - [LocationsQuestionsAnswersResource]
library mybusinessqanda.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The My Business Q&A API allows questions and answers to be posted for
/// specific listings.
class MyBusinessQ_AApi {
  final commons.ApiRequester _requester;

  LocationsResource get locations => LocationsResource(_requester);

  MyBusinessQ_AApi(http.Client client,
      {core.String rootUrl = 'https://mybusinessqanda.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsQuestionsResource get questions =>
      LocationsQuestionsResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;
}

class LocationsQuestionsResource {
  final commons.ApiRequester _requester;

  LocationsQuestionsAnswersResource get answers =>
      LocationsQuestionsAnswersResource(_requester);

  LocationsQuestionsResource(commons.ApiRequester client) : _requester = client;

  /// Adds a question for the specified location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the location to write a question for.
  /// Value must have pattern `^locations/\[^/\]+/questions$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Question].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Question> create(
    Question request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Question.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a specific question written by the current user.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the question to delete.
  /// Value must have pattern `^locations/\[^/\]+/questions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the paginated list of questions and some of its answers for a
  /// specified location.
  ///
  /// This operation is only valid if the specified location is verified.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the location to fetch questions for.
  /// Value must have pattern `^locations/\[^/\]+/questions$`.
  ///
  /// [answersPerQuestion] - Optional. How many answers to fetch per question.
  /// The default and maximum `answers_per_question` values are 10.
  ///
  /// [filter] - Optional. A filter constraining the questions to return. The
  /// only filter currently supported is "ignore_answered=true"
  ///
  /// [orderBy] - Optional. The order to return the questions. Valid options
  /// include 'update_time desc' and 'upvote_count desc', which will return the
  /// questions sorted descendingly by the requested field. The default sort
  /// order is 'update_time desc'.
  ///
  /// [pageSize] - Optional. How many questions to fetch per page. The default
  /// and maximum `page_size` values are 10.
  ///
  /// [pageToken] - Optional. If specified, the next page of questions is
  /// retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListQuestionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListQuestionsResponse> list(
    core.String parent, {
    core.int? answersPerQuestion,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (answersPerQuestion != null)
        'answersPerQuestion': ['${answersPerQuestion}'],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListQuestionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a specific question written by the current user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The unique name for the question. locations / *
  /// /questions / * This field will be ignored if set during question creation.
  /// Value must have pattern `^locations/\[^/\]+/questions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The specific fields to update. Only question text
  /// can be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Question].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Question> patch(
    Question request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Question.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsQuestionsAnswersResource {
  final commons.ApiRequester _requester;

  LocationsQuestionsAnswersResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the answer written by the current user to a question.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the question to delete an answer for.
  /// Value must have pattern `^locations/\[^/\]+/questions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/answers:delete';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the paginated list of answers for a specified question.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the question to fetch answers for.
  /// Value must have pattern `^locations/\[^/\]+/questions/\[^/\]+$`.
  ///
  /// [orderBy] - Optional. The order to return the answers. Valid options
  /// include 'update_time desc' and 'upvote_count desc', which will return the
  /// answers sorted descendingly by the requested field. The default sort order
  /// is 'update_time desc'.
  ///
  /// [pageSize] - Optional. How many answers to fetch per page. The default and
  /// maximum `page_size` values are 10.
  ///
  /// [pageToken] - Optional. If specified, the next page of answers is
  /// retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAnswersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAnswersResponse> list(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/answers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAnswersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an answer or updates the existing answer written by the user for
  /// the specified question.
  ///
  /// A user can only create one answer per question.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the question to write an answer for.
  /// Value must have pattern `^locations/\[^/\]+/questions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Answer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Answer> upsert(
    UpsertAnswerRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/answers:upsert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Answer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents an answer to a question
class Answer {
  /// The author of the answer.
  ///
  /// Will only be set during list operations.
  ///
  /// Output only.
  Author? author;

  /// The timestamp for when the answer was written.
  ///
  /// Only retrieved during ListResponse fetching.
  ///
  /// Output only.
  core.String? createTime;

  /// The unique name for the answer locations / * /questions / * /answers / *
  ///
  /// Output only.
  core.String? name;

  /// The text of the answer.
  ///
  /// It should contain at least one non-whitespace character. The maximum
  /// length is 4096 characters.
  ///
  /// Required.
  core.String? text;

  /// The timestamp for when the answer was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  /// The number of upvotes for the answer.
  ///
  /// Output only.
  core.int? upvoteCount;

  Answer({
    this.author,
    this.createTime,
    this.name,
    this.text,
    this.updateTime,
    this.upvoteCount,
  });

  Answer.fromJson(core.Map json_)
      : this(
          author: json_.containsKey('author')
              ? Author.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upvoteCount: json_.containsKey('upvoteCount')
              ? json_['upvoteCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (text != null) 'text': text!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upvoteCount != null) 'upvoteCount': upvoteCount!,
      };
}

/// Represents the author of a question or answer
class Author {
  /// The display name of the user
  core.String? displayName;

  /// The profile photo URI of the user.
  core.String? profilePhotoUri;

  /// The type of user the author is.
  /// Possible string values are:
  /// - "AUTHOR_TYPE_UNSPECIFIED" : This should not be used.
  /// - "REGULAR_USER" : A regular user.
  /// - "LOCAL_GUIDE" : A Local Guide
  /// - "MERCHANT" : The owner/manager of the location
  core.String? type;

  Author({
    this.displayName,
    this.profilePhotoUri,
    this.type,
  });

  Author.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          profilePhotoUri: json_.containsKey('profilePhotoUri')
              ? json_['profilePhotoUri'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (profilePhotoUri != null) 'profilePhotoUri': profilePhotoUri!,
        if (type != null) 'type': type!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Response message for QuestionsAndAnswers.ListAnswers
class ListAnswersResponse {
  /// The requested answers.
  core.List<Answer>? answers;

  /// If the number of answers exceeds the requested max page size, this field
  /// is populated with a token to fetch the next page of answers on a
  /// subsequent call.
  ///
  /// If there are no more answers, this field is not present in the response.
  core.String? nextPageToken;

  /// The total number of answers posted for this question across all pages.
  core.int? totalSize;

  ListAnswersResponse({
    this.answers,
    this.nextPageToken,
    this.totalSize,
  });

  ListAnswersResponse.fromJson(core.Map json_)
      : this(
          answers: json_.containsKey('answers')
              ? (json_['answers'] as core.List)
                  .map((value) => Answer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answers != null) 'answers': answers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response message for QuestionsAndAnswers.ListQuestions
class ListQuestionsResponse {
  /// If the number of questions exceeds the requested max page size, this field
  /// is populated with a token to fetch the next page of questions on a
  /// subsequent call.
  ///
  /// If there are no more questions, this field is not present in the response.
  core.String? nextPageToken;

  /// The requested questions,
  core.List<Question>? questions;

  /// The total number of questions posted for this location across all pages.
  core.int? totalSize;

  ListQuestionsResponse({
    this.nextPageToken,
    this.questions,
    this.totalSize,
  });

  ListQuestionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          questions: json_.containsKey('questions')
              ? (json_['questions'] as core.List)
                  .map((value) => Question.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (questions != null) 'questions': questions!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Represents a single question and some of its answers.
class Question {
  /// The author of the question.
  ///
  /// Output only.
  Author? author;

  /// The timestamp for when the question was written.
  ///
  /// Output only.
  core.String? createTime;

  /// The unique name for the question.
  ///
  /// locations / * /questions / * This field will be ignored if set during
  /// question creation.
  ///
  /// Immutable.
  core.String? name;

  /// The text of the question.
  ///
  /// It should contain at least three words and the total length should be
  /// greater than or equal to 10 characters. The maximum length is 4096
  /// characters.
  ///
  /// Required.
  core.String? text;

  /// A list of answers to the question, sorted by upvotes.
  ///
  /// This may not be a complete list of answers depending on the request
  /// parameters (answers_per_question)
  ///
  /// Output only.
  core.List<Answer>? topAnswers;

  /// The total number of answers posted for this question.
  ///
  /// Output only.
  core.int? totalAnswerCount;

  /// The timestamp for when the question was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  /// The number of upvotes for the question.
  ///
  /// Output only.
  core.int? upvoteCount;

  Question({
    this.author,
    this.createTime,
    this.name,
    this.text,
    this.topAnswers,
    this.totalAnswerCount,
    this.updateTime,
    this.upvoteCount,
  });

  Question.fromJson(core.Map json_)
      : this(
          author: json_.containsKey('author')
              ? Author.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          topAnswers: json_.containsKey('topAnswers')
              ? (json_['topAnswers'] as core.List)
                  .map((value) => Answer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalAnswerCount: json_.containsKey('totalAnswerCount')
              ? json_['totalAnswerCount'] as core.int
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upvoteCount: json_.containsKey('upvoteCount')
              ? json_['upvoteCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (text != null) 'text': text!,
        if (topAnswers != null) 'topAnswers': topAnswers!,
        if (totalAnswerCount != null) 'totalAnswerCount': totalAnswerCount!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upvoteCount != null) 'upvoteCount': upvoteCount!,
      };
}

/// Request message for QuestionsAndAnswers.UpsertAnswer
class UpsertAnswerRequest {
  /// The new answer.
  ///
  /// Required.
  Answer? answer;

  UpsertAnswerRequest({
    this.answer,
  });

  UpsertAnswerRequest.fromJson(core.Map json_)
      : this(
          answer: json_.containsKey('answer')
              ? Answer.fromJson(
                  json_['answer'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answer != null) 'answer': answer!,
      };
}
