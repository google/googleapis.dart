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

/// Google Forms API - v1
///
/// Reads and writes Google Forms and responses.
///
/// For more information, see <https://developers.google.com/forms/api>
///
/// Create an instance of [FormsApi] to access these resources:
///
/// - [FormsResource]
///   - [FormsResponsesResource]
///   - [FormsWatchesResource]
library forms.v1;

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

/// Reads and writes Google Forms and responses.
class FormsApi {
  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// See, edit, create, and delete only the specific Google Drive files you use
  /// with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  /// See and download all your Google Drive files
  static const driveReadonlyScope =
      'https://www.googleapis.com/auth/drive.readonly';

  /// See, edit, create, and delete all your Google Forms forms
  static const formsBodyScope = 'https://www.googleapis.com/auth/forms.body';

  /// See all your Google Forms forms
  static const formsBodyReadonlyScope =
      'https://www.googleapis.com/auth/forms.body.readonly';

  /// See all responses to your Google Forms forms
  static const formsResponsesReadonlyScope =
      'https://www.googleapis.com/auth/forms.responses.readonly';

  final commons.ApiRequester _requester;

  FormsResource get forms => FormsResource(_requester);

  FormsApi(http.Client client,
      {core.String rootUrl = 'https://forms.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class FormsResource {
  final commons.ApiRequester _requester;

  FormsResponsesResource get responses => FormsResponsesResource(_requester);
  FormsWatchesResource get watches => FormsWatchesResource(_requester);

  FormsResource(commons.ApiRequester client) : _requester = client;

  /// Change the form with a batch of updates.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [formId] - Required. The form ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateFormResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateFormResponse> batchUpdate(
    BatchUpdateFormRequest request,
    core.String formId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/forms/' + commons.escapeVariable('$formId') + ':batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateFormResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a new form using the title given in the provided form message in
  /// the request.
  ///
  /// *Important:* Only the form.info.title and form.info.document_title fields
  /// are copied to the new form. All other fields including the form
  /// description, items and settings are disallowed. To create a new form and
  /// add items, you must first call forms.create to create an empty form with a
  /// title and (optional) document title, and then call forms.update to add the
  /// items.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Form].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Form> create(
    Form request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/forms';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Form.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a form.
  ///
  /// Request parameters:
  ///
  /// [formId] - Required. The form ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Form].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Form> get(
    core.String formId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/forms/' + commons.escapeVariable('$formId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Form.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class FormsResponsesResource {
  final commons.ApiRequester _requester;

  FormsResponsesResource(commons.ApiRequester client) : _requester = client;

  /// Get one response from the form.
  ///
  /// Request parameters:
  ///
  /// [formId] - Required. The form ID.
  ///
  /// [responseId] - Required. The response ID within the form.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FormResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FormResponse> get(
    core.String formId,
    core.String responseId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/forms/' +
        commons.escapeVariable('$formId') +
        '/responses/' +
        commons.escapeVariable('$responseId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FormResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List a form's responses.
  ///
  /// Request parameters:
  ///
  /// [formId] - Required. ID of the Form whose responses to list.
  ///
  /// [filter] - Which form responses to return. Currently, the only supported
  /// filters are: * timestamp \> *N* which means to get all form responses
  /// submitted after (but not at) timestamp *N*. * timestamp \>= *N* which
  /// means to get all form responses submitted at and after timestamp *N*. For
  /// both supported filters, timestamp must be formatted in RFC3339 UTC "Zulu"
  /// format. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  ///
  /// [pageSize] - The maximum number of responses to return. The service may
  /// return fewer than this value. If unspecified or zero, at most 5000
  /// responses are returned.
  ///
  /// [pageToken] - A page token returned by a previous list response. If this
  /// field is set, the form and the values of the filter must be the same as
  /// for the original request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFormResponsesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFormResponsesResponse> list(
    core.String formId, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/forms/' + commons.escapeVariable('$formId') + '/responses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFormResponsesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FormsWatchesResource {
  final commons.ApiRequester _requester;

  FormsWatchesResource(commons.ApiRequester client) : _requester = client;

  /// Create a new watch.
  ///
  /// If a watch ID is provided, it must be unused. For each invoking project,
  /// the per form limit is one watch per Watch.EventType. A watch expires seven
  /// days after it is created (see Watch.expire_time).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [formId] - Required. ID of the Form to watch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Watch].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Watch> create(
    CreateWatchRequest request,
    core.String formId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/forms/' + commons.escapeVariable('$formId') + '/watches';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Watch.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a watch.
  ///
  /// Request parameters:
  ///
  /// [formId] - Required. The ID of the Form.
  ///
  /// [watchId] - Required. The ID of the Watch to delete.
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
    core.String formId,
    core.String watchId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/forms/' +
        commons.escapeVariable('$formId') +
        '/watches/' +
        commons.escapeVariable('$watchId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Return a list of the watches owned by the invoking project.
  ///
  /// The maximum number of watches is two: For each invoker, the limit is one
  /// for each event type per form.
  ///
  /// Request parameters:
  ///
  /// [formId] - Required. ID of the Form whose watches to list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWatchesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWatchesResponse> list(
    core.String formId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/forms/' + commons.escapeVariable('$formId') + '/watches';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWatchesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Renew an existing watch for seven days.
  ///
  /// The state of the watch after renewal is `ACTIVE`, and the `expire_time` is
  /// seven days from the renewal. Renewing a watch in an error state (e.g.
  /// `SUSPENDED`) succeeds if the error is no longer present, but fail
  /// otherwise. After a watch has expired, RenewWatch returns `NOT_FOUND`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [formId] - Required. The ID of the Form.
  ///
  /// [watchId] - Required. The ID of the Watch to renew.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Watch].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Watch> renew(
    RenewWatchRequest request,
    core.String formId,
    core.String watchId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/forms/' +
        commons.escapeVariable('$formId') +
        '/watches/' +
        commons.escapeVariable('$watchId') +
        ':renew';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Watch.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The submitted answer for a question.
class Answer {
  /// The answers to a file upload question.
  ///
  /// Output only.
  FileUploadAnswers? fileUploadAnswers;

  /// The grade for the answer if the form was a quiz.
  ///
  /// Output only.
  Grade? grade;

  /// The question's ID.
  ///
  /// See also Question.question_id.
  ///
  /// Output only.
  core.String? questionId;

  /// The specific answers as text.
  ///
  /// Output only.
  TextAnswers? textAnswers;

  Answer({
    this.fileUploadAnswers,
    this.grade,
    this.questionId,
    this.textAnswers,
  });

  Answer.fromJson(core.Map json_)
      : this(
          fileUploadAnswers: json_.containsKey('fileUploadAnswers')
              ? FileUploadAnswers.fromJson(json_['fileUploadAnswers']
                  as core.Map<core.String, core.dynamic>)
              : null,
          grade: json_.containsKey('grade')
              ? Grade.fromJson(
                  json_['grade'] as core.Map<core.String, core.dynamic>)
              : null,
          questionId: json_.containsKey('questionId')
              ? json_['questionId'] as core.String
              : null,
          textAnswers: json_.containsKey('textAnswers')
              ? TextAnswers.fromJson(
                  json_['textAnswers'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileUploadAnswers != null) 'fileUploadAnswers': fileUploadAnswers!,
        if (grade != null) 'grade': grade!,
        if (questionId != null) 'questionId': questionId!,
        if (textAnswers != null) 'textAnswers': textAnswers!,
      };
}

/// A batch of updates to perform on a form.
///
/// All the specified updates are made or none of them are.
class BatchUpdateFormRequest {
  /// Whether to return an updated version of the model in the response.
  core.bool? includeFormInResponse;

  /// The update requests of this batch.
  ///
  /// Required.
  core.List<Request>? requests;

  /// Provides control over how write requests are executed.
  WriteControl? writeControl;

  BatchUpdateFormRequest({
    this.includeFormInResponse,
    this.requests,
    this.writeControl,
  });

  BatchUpdateFormRequest.fromJson(core.Map json_)
      : this(
          includeFormInResponse: json_.containsKey('includeFormInResponse')
              ? json_['includeFormInResponse'] as core.bool
              : null,
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => Request.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          writeControl: json_.containsKey('writeControl')
              ? WriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeFormInResponse != null)
          'includeFormInResponse': includeFormInResponse!,
        if (requests != null) 'requests': requests!,
        if (writeControl != null) 'writeControl': writeControl!,
      };
}

/// Response to a BatchUpdateFormRequest.
class BatchUpdateFormResponse {
  /// Based on the bool request field `include_form_in_response`, a form with
  /// all applied mutations/updates is returned or not.
  ///
  /// This may be later than the revision ID created by these changes.
  Form? form;

  /// The reply of the updates.
  ///
  /// This maps 1:1 with the update requests, although replies to some requests
  /// may be empty.
  core.List<Response>? replies;

  /// The updated write control after applying the request.
  WriteControl? writeControl;

  BatchUpdateFormResponse({
    this.form,
    this.replies,
    this.writeControl,
  });

  BatchUpdateFormResponse.fromJson(core.Map json_)
      : this(
          form: json_.containsKey('form')
              ? Form.fromJson(
                  json_['form'] as core.Map<core.String, core.dynamic>)
              : null,
          replies: json_.containsKey('replies')
              ? (json_['replies'] as core.List)
                  .map((value) => Response.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          writeControl: json_.containsKey('writeControl')
              ? WriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (form != null) 'form': form!,
        if (replies != null) 'replies': replies!,
        if (writeControl != null) 'writeControl': writeControl!,
      };
}

/// A radio/checkbox/dropdown question.
class ChoiceQuestion {
  /// List of options that a respondent must choose from.
  ///
  /// Required.
  core.List<Option>? options;

  /// Whether the options should be displayed in random order for different
  /// instances of the quiz.
  ///
  /// This is often used to prevent cheating by respondents who might be looking
  /// at another respondent's screen, or to address bias in a survey that might
  /// be introduced by always putting the same options first or last.
  core.bool? shuffle;

  /// The type of choice question.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CHOICE_TYPE_UNSPECIFIED" : Default value. Unused.
  /// - "RADIO" : Radio buttons: All choices are shown to the user, who can only
  /// pick one of them.
  /// - "CHECKBOX" : Checkboxes: All choices are shown to the user, who can pick
  /// any number of them.
  /// - "DROP_DOWN" : Drop-down menu: The choices are only shown to the user on
  /// demand, otherwise only the current choice is shown. Only one option can be
  /// chosen.
  core.String? type;

  ChoiceQuestion({
    this.options,
    this.shuffle,
    this.type,
  });

  ChoiceQuestion.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? (json_['options'] as core.List)
                  .map((value) => Option.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shuffle: json_.containsKey('shuffle')
              ? json_['shuffle'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
        if (shuffle != null) 'shuffle': shuffle!,
        if (type != null) 'type': type!,
      };
}

/// A Pub/Sub topic.
class CloudPubsubTopic {
  /// A fully qualified Pub/Sub topic name to publish the events to.
  ///
  /// This topic must be owned by the calling project and already exist in
  /// Pub/Sub.
  ///
  /// Required.
  core.String? topicName;

  CloudPubsubTopic({
    this.topicName,
  });

  CloudPubsubTopic.fromJson(core.Map json_)
      : this(
          topicName: json_.containsKey('topicName')
              ? json_['topicName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topicName != null) 'topicName': topicName!,
      };
}

/// A single correct answer for a question.
///
/// For multiple-valued (`CHECKBOX`) questions, several `CorrectAnswer`s may be
/// needed to represent a single correct response option.
class CorrectAnswer {
  /// The correct answer value.
  ///
  /// See the documentation for TextAnswer.value for details on how various
  /// value types are formatted.
  ///
  /// Required.
  core.String? value;

  CorrectAnswer({
    this.value,
  });

  CorrectAnswer.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// The answer key for a question.
class CorrectAnswers {
  /// A list of correct answers.
  ///
  /// A quiz response can be automatically graded based on these answers. For
  /// single-valued questions, a response is marked correct if it matches any
  /// value in this list (in other words, multiple correct answers are
  /// possible). For multiple-valued (`CHECKBOX`) questions, a response is
  /// marked correct if it contains exactly the values in this list.
  core.List<CorrectAnswer>? answers;

  CorrectAnswers({
    this.answers,
  });

  CorrectAnswers.fromJson(core.Map json_)
      : this(
          answers: json_.containsKey('answers')
              ? (json_['answers'] as core.List)
                  .map((value) => CorrectAnswer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answers != null) 'answers': answers!,
      };
}

/// Create an item in a form.
class CreateItemRequest {
  /// The item to create.
  ///
  /// Required.
  Item? item;

  /// Where to place the new item.
  ///
  /// Required.
  Location? location;

  CreateItemRequest({
    this.item,
    this.location,
  });

  CreateItemRequest.fromJson(core.Map json_)
      : this(
          item: json_.containsKey('item')
              ? Item.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? Location.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (item != null) 'item': item!,
        if (location != null) 'location': location!,
      };
}

/// The result of creating an item.
class CreateItemResponse {
  /// The ID of the created item.
  core.String? itemId;

  /// The ID of the question created as part of this item, for a question group
  /// it lists IDs of all the questions created for this item.
  core.List<core.String>? questionId;

  CreateItemResponse({
    this.itemId,
    this.questionId,
  });

  CreateItemResponse.fromJson(core.Map json_)
      : this(
          itemId: json_.containsKey('itemId')
              ? json_['itemId'] as core.String
              : null,
          questionId: json_.containsKey('questionId')
              ? (json_['questionId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (itemId != null) 'itemId': itemId!,
        if (questionId != null) 'questionId': questionId!,
      };
}

/// Create a new watch.
class CreateWatchRequest {
  /// The watch object.
  ///
  /// No ID should be set on this object; use `watch_id` instead.
  ///
  /// Required.
  Watch? watch;

  /// The ID to use for the watch.
  ///
  /// If specified, the ID must not already be in use. If not specified, an ID
  /// is generated. This value should be 4-63 characters, and valid characters
  /// are /a-z-/.
  core.String? watchId;

  CreateWatchRequest({
    this.watch,
    this.watchId,
  });

  CreateWatchRequest.fromJson(core.Map json_)
      : this(
          watch: json_.containsKey('watch')
              ? Watch.fromJson(
                  json_['watch'] as core.Map<core.String, core.dynamic>)
              : null,
          watchId: json_.containsKey('watchId')
              ? json_['watchId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (watch != null) 'watch': watch!,
        if (watchId != null) 'watchId': watchId!,
      };
}

/// A date question.
///
/// Date questions default to just month + day.
class DateQuestion {
  /// Whether to include the time as part of the question.
  core.bool? includeTime;

  /// Whether to include the year as part of the question.
  core.bool? includeYear;

  DateQuestion({
    this.includeTime,
    this.includeYear,
  });

  DateQuestion.fromJson(core.Map json_)
      : this(
          includeTime: json_.containsKey('includeTime')
              ? json_['includeTime'] as core.bool
              : null,
          includeYear: json_.containsKey('includeYear')
              ? json_['includeYear'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeTime != null) 'includeTime': includeTime!,
        if (includeYear != null) 'includeYear': includeYear!,
      };
}

/// Delete an item in a form.
class DeleteItemRequest {
  /// The location of the item to delete.
  ///
  /// Required.
  Location? location;

  DeleteItemRequest({
    this.location,
  });

  DeleteItemRequest.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? Location.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Supplementary material to the feedback.
class ExtraMaterial {
  /// Text feedback.
  TextLink? link;

  /// Video feedback.
  VideoLink? video;

  ExtraMaterial({
    this.link,
    this.video,
  });

  ExtraMaterial.fromJson(core.Map json_)
      : this(
          link: json_.containsKey('link')
              ? TextLink.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          video: json_.containsKey('video')
              ? VideoLink.fromJson(
                  json_['video'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (link != null) 'link': link!,
        if (video != null) 'video': video!,
      };
}

/// Feedback for a respondent about their response to a question.
class Feedback {
  /// Additional information provided as part of the feedback, often used to
  /// point the respondent to more reading and resources.
  core.List<ExtraMaterial>? material;

  /// The main text of the feedback.
  ///
  /// Required.
  core.String? text;

  Feedback({
    this.material,
    this.text,
  });

  Feedback.fromJson(core.Map json_)
      : this(
          material: json_.containsKey('material')
              ? (json_['material'] as core.List)
                  .map((value) => ExtraMaterial.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (material != null) 'material': material!,
        if (text != null) 'text': text!,
      };
}

/// Info for a single file submitted to a file upload question.
class FileUploadAnswer {
  /// The ID of the Google Drive file.
  ///
  /// Output only.
  core.String? fileId;

  /// The file name, as stored in Google Drive on upload.
  ///
  /// Output only.
  core.String? fileName;

  /// The MIME type of the file, as stored in Google Drive on upload.
  ///
  /// Output only.
  core.String? mimeType;

  FileUploadAnswer({
    this.fileId,
    this.fileName,
    this.mimeType,
  });

  FileUploadAnswer.fromJson(core.Map json_)
      : this(
          fileId: json_.containsKey('fileId')
              ? json_['fileId'] as core.String
              : null,
          fileName: json_.containsKey('fileName')
              ? json_['fileName'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileId != null) 'fileId': fileId!,
        if (fileName != null) 'fileName': fileName!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// All submitted files for a FileUpload question.
class FileUploadAnswers {
  /// All submitted files for a FileUpload question.
  ///
  /// Output only.
  core.List<FileUploadAnswer>? answers;

  FileUploadAnswers({
    this.answers,
  });

  FileUploadAnswers.fromJson(core.Map json_)
      : this(
          answers: json_.containsKey('answers')
              ? (json_['answers'] as core.List)
                  .map((value) => FileUploadAnswer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answers != null) 'answers': answers!,
      };
}

/// A file upload question.
///
/// The API currently does not support creating file upload questions.
class FileUploadQuestion {
  /// The ID of the Drive folder where uploaded files are stored.
  ///
  /// Required.
  core.String? folderId;

  /// Maximum number of bytes allowed for any single file uploaded to this
  /// question.
  core.String? maxFileSize;

  /// Maximum number of files that can be uploaded for this question in a single
  /// response.
  core.int? maxFiles;

  /// File types accepted by this question.
  core.List<core.String>? types;

  FileUploadQuestion({
    this.folderId,
    this.maxFileSize,
    this.maxFiles,
    this.types,
  });

  FileUploadQuestion.fromJson(core.Map json_)
      : this(
          folderId: json_.containsKey('folderId')
              ? json_['folderId'] as core.String
              : null,
          maxFileSize: json_.containsKey('maxFileSize')
              ? json_['maxFileSize'] as core.String
              : null,
          maxFiles: json_.containsKey('maxFiles')
              ? json_['maxFiles'] as core.int
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (folderId != null) 'folderId': folderId!,
        if (maxFileSize != null) 'maxFileSize': maxFileSize!,
        if (maxFiles != null) 'maxFiles': maxFiles!,
        if (types != null) 'types': types!,
      };
}

/// A Google Forms document.
///
/// A form is created in Drive, and deleting a form or changing its access
/// protections is done via the
/// [Drive API](https://developers.google.com/drive/api/v3/about-sdk).
class Form {
  /// The form ID.
  ///
  /// Output only.
  core.String? formId;

  /// The title and description of the form.
  ///
  /// Required.
  Info? info;

  /// A list of the form's items, which can include section headers, questions,
  /// embedded media, etc.
  ///
  /// Required.
  core.List<Item>? items;

  /// The ID of the linked Google Sheet which is accumulating responses from
  /// this Form (if such a Sheet exists).
  ///
  /// Output only.
  core.String? linkedSheetId;

  /// The form URI to share with responders.
  ///
  /// This opens a page that allows the user to submit responses but not edit
  /// the questions.
  ///
  /// Output only.
  core.String? responderUri;

  /// The revision ID of the form.
  ///
  /// Used in the WriteControl in update requests to identify the revision on
  /// which the changes are based. The format of the revision ID may change over
  /// time, so it should be treated opaquely. A returned revision ID is only
  /// guaranteed to be valid for 24 hours after it has been returned and cannot
  /// be shared across users. If the revision ID is unchanged between calls,
  /// then the form has not changed. Conversely, a changed ID (for the same form
  /// and user) usually means the form has been updated; however, a changed ID
  /// can also be due to internal factors such as ID format changes.
  ///
  /// Output only.
  core.String? revisionId;

  /// The form's settings.
  ///
  /// This must be updated with UpdateSettingsRequest; it is ignored during
  /// `forms.create` and UpdateFormInfoRequest.
  FormSettings? settings;

  Form({
    this.formId,
    this.info,
    this.items,
    this.linkedSheetId,
    this.responderUri,
    this.revisionId,
    this.settings,
  });

  Form.fromJson(core.Map json_)
      : this(
          formId: json_.containsKey('formId')
              ? json_['formId'] as core.String
              : null,
          info: json_.containsKey('info')
              ? Info.fromJson(
                  json_['info'] as core.Map<core.String, core.dynamic>)
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Item.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          linkedSheetId: json_.containsKey('linkedSheetId')
              ? json_['linkedSheetId'] as core.String
              : null,
          responderUri: json_.containsKey('responderUri')
              ? json_['responderUri'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          settings: json_.containsKey('settings')
              ? FormSettings.fromJson(
                  json_['settings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formId != null) 'formId': formId!,
        if (info != null) 'info': info!,
        if (items != null) 'items': items!,
        if (linkedSheetId != null) 'linkedSheetId': linkedSheetId!,
        if (responderUri != null) 'responderUri': responderUri!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (settings != null) 'settings': settings!,
      };
}

/// A form response.
class FormResponse {
  /// The actual answers to the questions, keyed by question_id.
  ///
  /// Output only.
  core.Map<core.String, Answer>? answers;

  /// Timestamp for the first time the response was submitted.
  ///
  /// Output only.
  core.String? createTime;

  /// The form ID.
  ///
  /// Output only.
  core.String? formId;

  /// Timestamp for the most recent time the response was submitted.
  ///
  /// Does not track changes to grades.
  ///
  /// Output only.
  core.String? lastSubmittedTime;

  /// The email address (if collected) for the respondent.
  ///
  /// Output only.
  core.String? respondentEmail;

  /// The response ID.
  ///
  /// Output only.
  core.String? responseId;

  /// The total number of points the respondent received for their submission
  /// Only set if the form was a quiz and the response was graded.
  ///
  /// This includes points automatically awarded via autograding adjusted by any
  /// manual corrections entered by the form owner.
  ///
  /// Output only.
  core.double? totalScore;

  FormResponse({
    this.answers,
    this.createTime,
    this.formId,
    this.lastSubmittedTime,
    this.respondentEmail,
    this.responseId,
    this.totalScore,
  });

  FormResponse.fromJson(core.Map json_)
      : this(
          answers: json_.containsKey('answers')
              ? (json_['answers'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    Answer.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          formId: json_.containsKey('formId')
              ? json_['formId'] as core.String
              : null,
          lastSubmittedTime: json_.containsKey('lastSubmittedTime')
              ? json_['lastSubmittedTime'] as core.String
              : null,
          respondentEmail: json_.containsKey('respondentEmail')
              ? json_['respondentEmail'] as core.String
              : null,
          responseId: json_.containsKey('responseId')
              ? json_['responseId'] as core.String
              : null,
          totalScore: json_.containsKey('totalScore')
              ? (json_['totalScore'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answers != null) 'answers': answers!,
        if (createTime != null) 'createTime': createTime!,
        if (formId != null) 'formId': formId!,
        if (lastSubmittedTime != null) 'lastSubmittedTime': lastSubmittedTime!,
        if (respondentEmail != null) 'respondentEmail': respondentEmail!,
        if (responseId != null) 'responseId': responseId!,
        if (totalScore != null) 'totalScore': totalScore!,
      };
}

/// A form's settings.
class FormSettings {
  /// Settings related to quiz forms and grading.
  QuizSettings? quizSettings;

  FormSettings({
    this.quizSettings,
  });

  FormSettings.fromJson(core.Map json_)
      : this(
          quizSettings: json_.containsKey('quizSettings')
              ? QuizSettings.fromJson(
                  json_['quizSettings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quizSettings != null) 'quizSettings': quizSettings!,
      };
}

/// Grade information associated with a respondent's answer to a question.
class Grade {
  /// Whether the question was answered correctly or not.
  ///
  /// A zero-point score is not enough to infer incorrectness, since a correctly
  /// answered question could be worth zero points.
  ///
  /// Output only.
  core.bool? correct;

  /// Additional feedback given for an answer.
  ///
  /// Output only.
  Feedback? feedback;

  /// The numeric score awarded for the answer.
  ///
  /// Output only.
  core.double? score;

  Grade({
    this.correct,
    this.feedback,
    this.score,
  });

  Grade.fromJson(core.Map json_)
      : this(
          correct: json_.containsKey('correct')
              ? json_['correct'] as core.bool
              : null,
          feedback: json_.containsKey('feedback')
              ? Feedback.fromJson(
                  json_['feedback'] as core.Map<core.String, core.dynamic>)
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correct != null) 'correct': correct!,
        if (feedback != null) 'feedback': feedback!,
        if (score != null) 'score': score!,
      };
}

/// Grading for a single question
class Grading {
  /// The answer key for the question.
  ///
  /// Responses are automatically graded based on this field.
  ///
  /// Required.
  CorrectAnswers? correctAnswers;

  /// The feedback displayed for all answers.
  ///
  /// This is commonly used for short answer questions when a quiz owner wants
  /// to quickly give respondents some sense of whether they answered the
  /// question correctly before they've had a chance to officially grade the
  /// response. General feedback cannot be set for automatically graded multiple
  /// choice questions.
  Feedback? generalFeedback;

  /// The maximum number of points a respondent can automatically get for a
  /// correct answer.
  ///
  /// This must not be negative.
  ///
  /// Required.
  core.int? pointValue;

  /// The feedback displayed for correct responses.
  ///
  /// This feedback can only be set for multiple choice questions that have
  /// correct answers provided.
  Feedback? whenRight;

  /// The feedback displayed for incorrect responses.
  ///
  /// This feedback can only be set for multiple choice questions that have
  /// correct answers provided.
  Feedback? whenWrong;

  Grading({
    this.correctAnswers,
    this.generalFeedback,
    this.pointValue,
    this.whenRight,
    this.whenWrong,
  });

  Grading.fromJson(core.Map json_)
      : this(
          correctAnswers: json_.containsKey('correctAnswers')
              ? CorrectAnswers.fromJson(json_['correctAnswers']
                  as core.Map<core.String, core.dynamic>)
              : null,
          generalFeedback: json_.containsKey('generalFeedback')
              ? Feedback.fromJson(json_['generalFeedback']
                  as core.Map<core.String, core.dynamic>)
              : null,
          pointValue: json_.containsKey('pointValue')
              ? json_['pointValue'] as core.int
              : null,
          whenRight: json_.containsKey('whenRight')
              ? Feedback.fromJson(
                  json_['whenRight'] as core.Map<core.String, core.dynamic>)
              : null,
          whenWrong: json_.containsKey('whenWrong')
              ? Feedback.fromJson(
                  json_['whenWrong'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correctAnswers != null) 'correctAnswers': correctAnswers!,
        if (generalFeedback != null) 'generalFeedback': generalFeedback!,
        if (pointValue != null) 'pointValue': pointValue!,
        if (whenRight != null) 'whenRight': whenRight!,
        if (whenWrong != null) 'whenWrong': whenWrong!,
      };
}

/// A grid of choices (radio or check boxes) with each row constituting a
/// separate question.
///
/// Each row has the same choices, which are shown as the columns.
class Grid {
  /// The choices shared by each question in the grid.
  ///
  /// In other words, the values of the columns. Only `CHECK_BOX` and `RADIO`
  /// choices are allowed.
  ///
  /// Required.
  ChoiceQuestion? columns;

  /// If `true`, the questions are randomly ordered.
  ///
  /// In other words, the rows appear in a different order for every respondent.
  core.bool? shuffleQuestions;

  Grid({
    this.columns,
    this.shuffleQuestions,
  });

  Grid.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? ChoiceQuestion.fromJson(
                  json_['columns'] as core.Map<core.String, core.dynamic>)
              : null,
          shuffleQuestions: json_.containsKey('shuffleQuestions')
              ? json_['shuffleQuestions'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (shuffleQuestions != null) 'shuffleQuestions': shuffleQuestions!,
      };
}

/// Data representing an image.
class Image {
  /// A description of the image that is shown on hover and read by
  /// screenreaders.
  core.String? altText;

  /// A URI from which you can download the image; this is valid only for a
  /// limited time.
  ///
  /// Output only.
  core.String? contentUri;

  /// Properties of an image.
  MediaProperties? properties;

  /// Input only.
  ///
  /// The source URI is the URI used to insert the image. The source URI can be
  /// empty when fetched.
  core.String? sourceUri;

  Image({
    this.altText,
    this.contentUri,
    this.properties,
    this.sourceUri,
  });

  Image.fromJson(core.Map json_)
      : this(
          altText: json_.containsKey('altText')
              ? json_['altText'] as core.String
              : null,
          contentUri: json_.containsKey('contentUri')
              ? json_['contentUri'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? MediaProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceUri: json_.containsKey('sourceUri')
              ? json_['sourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altText != null) 'altText': altText!,
        if (contentUri != null) 'contentUri': contentUri!,
        if (properties != null) 'properties': properties!,
        if (sourceUri != null) 'sourceUri': sourceUri!,
      };
}

/// An item containing an image.
class ImageItem {
  /// The image displayed in the item.
  ///
  /// Required.
  Image? image;

  ImageItem({
    this.image,
  });

  ImageItem.fromJson(core.Map json_)
      : this(
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
      };
}

/// The general information for a form.
class Info {
  /// The description of the form.
  core.String? description;

  /// The title of the document which is visible in Drive.
  ///
  /// If `Info.title` is empty, `document_title` may appear in its place in the
  /// Google Forms UI and be visible to responders. `document_title` can be set
  /// on create, but cannot be modified by a batchUpdate request. Please use the
  /// [Google Drive API](https://developers.google.com/drive/api/v3/reference/files/update)
  /// if you need to programmatically update `document_title`.
  ///
  /// Output only.
  core.String? documentTitle;

  /// The title of the form which is visible to responders.
  ///
  /// Required.
  core.String? title;

  Info({
    this.description,
    this.documentTitle,
    this.title,
  });

  Info.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          documentTitle: json_.containsKey('documentTitle')
              ? json_['documentTitle'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (documentTitle != null) 'documentTitle': documentTitle!,
        if (title != null) 'title': title!,
      };
}

/// A single item of the form.
///
/// `kind` defines which kind of item it is.
class Item {
  /// The description of the item.
  core.String? description;

  /// Displays an image on the page.
  ImageItem? imageItem;

  /// The item ID.
  ///
  /// On creation, it can be provided but the ID must not be already used in the
  /// form. If not provided, a new ID is assigned.
  core.String? itemId;

  /// Starts a new page with a title.
  PageBreakItem? pageBreakItem;

  /// Poses one or more questions to the user with a single major prompt.
  QuestionGroupItem? questionGroupItem;

  /// Poses a question to the user.
  QuestionItem? questionItem;

  /// Displays a title and description on the page.
  TextItem? textItem;

  /// The title of the item.
  core.String? title;

  /// Displays a video on the page.
  VideoItem? videoItem;

  Item({
    this.description,
    this.imageItem,
    this.itemId,
    this.pageBreakItem,
    this.questionGroupItem,
    this.questionItem,
    this.textItem,
    this.title,
    this.videoItem,
  });

  Item.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          imageItem: json_.containsKey('imageItem')
              ? ImageItem.fromJson(
                  json_['imageItem'] as core.Map<core.String, core.dynamic>)
              : null,
          itemId: json_.containsKey('itemId')
              ? json_['itemId'] as core.String
              : null,
          pageBreakItem: json_.containsKey('pageBreakItem')
              ? PageBreakItem.fromJson(
                  json_['pageBreakItem'] as core.Map<core.String, core.dynamic>)
              : null,
          questionGroupItem: json_.containsKey('questionGroupItem')
              ? QuestionGroupItem.fromJson(json_['questionGroupItem']
                  as core.Map<core.String, core.dynamic>)
              : null,
          questionItem: json_.containsKey('questionItem')
              ? QuestionItem.fromJson(
                  json_['questionItem'] as core.Map<core.String, core.dynamic>)
              : null,
          textItem: json_.containsKey('textItem')
              ? TextItem.fromJson(
                  json_['textItem'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          videoItem: json_.containsKey('videoItem')
              ? VideoItem.fromJson(
                  json_['videoItem'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (imageItem != null) 'imageItem': imageItem!,
        if (itemId != null) 'itemId': itemId!,
        if (pageBreakItem != null) 'pageBreakItem': pageBreakItem!,
        if (questionGroupItem != null) 'questionGroupItem': questionGroupItem!,
        if (questionItem != null) 'questionItem': questionItem!,
        if (textItem != null) 'textItem': textItem!,
        if (title != null) 'title': title!,
        if (videoItem != null) 'videoItem': videoItem!,
      };
}

/// Response to a ListFormResponsesRequest.
class ListFormResponsesResponse {
  /// If set, there are more responses.
  ///
  /// To get the next page of responses, provide this as `page_token` in a
  /// future request.
  core.String? nextPageToken;

  /// The returned responses.
  core.List<FormResponse>? responses;

  ListFormResponsesResponse({
    this.nextPageToken,
    this.responses,
  });

  ListFormResponsesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) => FormResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (responses != null) 'responses': responses!,
      };
}

/// The response of a ListWatchesRequest.
class ListWatchesResponse {
  /// The returned watches.
  core.List<Watch>? watches;

  ListWatchesResponse({
    this.watches,
  });

  ListWatchesResponse.fromJson(core.Map json_)
      : this(
          watches: json_.containsKey('watches')
              ? (json_['watches'] as core.List)
                  .map((value) => Watch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (watches != null) 'watches': watches!,
      };
}

/// A specific location in a form.
class Location {
  /// The index of an item in the form.
  ///
  /// This must be in the range \[0..*N*), where *N* is the number of items in
  /// the form.
  core.int? index;

  Location({
    this.index,
  });

  Location.fromJson(core.Map json_)
      : this(
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
      };
}

/// Properties of the media.
class MediaProperties {
  /// Position of the media.
  /// Possible string values are:
  /// - "ALIGNMENT_UNSPECIFIED" : Default value. Unused.
  /// - "LEFT" : Left align.
  /// - "RIGHT" : Right align.
  /// - "CENTER" : Center.
  core.String? alignment;

  /// The width of the media in pixels.
  ///
  /// When the media is displayed, it is scaled to the smaller of this value or
  /// the width of the displayed form. The original aspect ratio of the media is
  /// preserved. If a width is not specified when the media is added to the
  /// form, it is set to the width of the media source. Width must be between 0
  /// and 740, inclusive. Setting width to 0 or unspecified is only permitted
  /// when updating the media source.
  core.int? width;

  MediaProperties({
    this.alignment,
    this.width,
  });

  MediaProperties.fromJson(core.Map json_)
      : this(
          alignment: json_.containsKey('alignment')
              ? json_['alignment'] as core.String
              : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alignment != null) 'alignment': alignment!,
        if (width != null) 'width': width!,
      };
}

/// Move an item in a form.
class MoveItemRequest {
  /// The new location for the item.
  ///
  /// Required.
  Location? newLocation;

  /// The location of the item to move.
  ///
  /// Required.
  Location? originalLocation;

  MoveItemRequest({
    this.newLocation,
    this.originalLocation,
  });

  MoveItemRequest.fromJson(core.Map json_)
      : this(
          newLocation: json_.containsKey('newLocation')
              ? Location.fromJson(
                  json_['newLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          originalLocation: json_.containsKey('originalLocation')
              ? Location.fromJson(json_['originalLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newLocation != null) 'newLocation': newLocation!,
        if (originalLocation != null) 'originalLocation': originalLocation!,
      };
}

/// An option for a Choice question.
class Option {
  /// Section navigation type.
  /// Possible string values are:
  /// - "GO_TO_ACTION_UNSPECIFIED" : Default value. Unused.
  /// - "NEXT_SECTION" : Go to the next section.
  /// - "RESTART_FORM" : Go back to the beginning of the form.
  /// - "SUBMIT_FORM" : Submit form immediately.
  core.String? goToAction;

  /// Item ID of section header to go to.
  core.String? goToSectionId;

  /// Display image as an option.
  Image? image;

  /// Whether the option is "other".
  ///
  /// Currently only applies to `RADIO` and `CHECKBOX` choice types, but is not
  /// allowed in a QuestionGroupItem.
  core.bool? isOther;

  /// The choice as presented to the user.
  ///
  /// Required.
  core.String? value;

  Option({
    this.goToAction,
    this.goToSectionId,
    this.image,
    this.isOther,
    this.value,
  });

  Option.fromJson(core.Map json_)
      : this(
          goToAction: json_.containsKey('goToAction')
              ? json_['goToAction'] as core.String
              : null,
          goToSectionId: json_.containsKey('goToSectionId')
              ? json_['goToSectionId'] as core.String
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          isOther: json_.containsKey('isOther')
              ? json_['isOther'] as core.bool
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (goToAction != null) 'goToAction': goToAction!,
        if (goToSectionId != null) 'goToSectionId': goToSectionId!,
        if (image != null) 'image': image!,
        if (isOther != null) 'isOther': isOther!,
        if (value != null) 'value': value!,
      };
}

/// A page break.
///
/// The title and description of this item are shown at the top of the new page.
typedef PageBreakItem = $Empty;

/// Any question.
///
/// The specific type of question is known by its `kind`.
class Question {
  /// A respondent can choose from a pre-defined set of options.
  ChoiceQuestion? choiceQuestion;

  /// A respondent can enter a date.
  DateQuestion? dateQuestion;

  /// A respondent can upload one or more files.
  FileUploadQuestion? fileUploadQuestion;

  /// Grading setup for the question.
  Grading? grading;

  /// Read only.
  ///
  /// The question ID. On creation, it can be provided but the ID must not be
  /// already used in the form. If not provided, a new ID is assigned.
  core.String? questionId;

  /// Whether the question must be answered in order for a respondent to submit
  /// their response.
  core.bool? required;

  /// A row of a QuestionGroupItem.
  RowQuestion? rowQuestion;

  /// A respondent can choose a number from a range.
  ScaleQuestion? scaleQuestion;

  /// A respondent can enter a free text response.
  TextQuestion? textQuestion;

  /// A respondent can enter a time.
  TimeQuestion? timeQuestion;

  Question({
    this.choiceQuestion,
    this.dateQuestion,
    this.fileUploadQuestion,
    this.grading,
    this.questionId,
    this.required,
    this.rowQuestion,
    this.scaleQuestion,
    this.textQuestion,
    this.timeQuestion,
  });

  Question.fromJson(core.Map json_)
      : this(
          choiceQuestion: json_.containsKey('choiceQuestion')
              ? ChoiceQuestion.fromJson(json_['choiceQuestion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dateQuestion: json_.containsKey('dateQuestion')
              ? DateQuestion.fromJson(
                  json_['dateQuestion'] as core.Map<core.String, core.dynamic>)
              : null,
          fileUploadQuestion: json_.containsKey('fileUploadQuestion')
              ? FileUploadQuestion.fromJson(json_['fileUploadQuestion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          grading: json_.containsKey('grading')
              ? Grading.fromJson(
                  json_['grading'] as core.Map<core.String, core.dynamic>)
              : null,
          questionId: json_.containsKey('questionId')
              ? json_['questionId'] as core.String
              : null,
          required: json_.containsKey('required')
              ? json_['required'] as core.bool
              : null,
          rowQuestion: json_.containsKey('rowQuestion')
              ? RowQuestion.fromJson(
                  json_['rowQuestion'] as core.Map<core.String, core.dynamic>)
              : null,
          scaleQuestion: json_.containsKey('scaleQuestion')
              ? ScaleQuestion.fromJson(
                  json_['scaleQuestion'] as core.Map<core.String, core.dynamic>)
              : null,
          textQuestion: json_.containsKey('textQuestion')
              ? TextQuestion.fromJson(
                  json_['textQuestion'] as core.Map<core.String, core.dynamic>)
              : null,
          timeQuestion: json_.containsKey('timeQuestion')
              ? TimeQuestion.fromJson(
                  json_['timeQuestion'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (choiceQuestion != null) 'choiceQuestion': choiceQuestion!,
        if (dateQuestion != null) 'dateQuestion': dateQuestion!,
        if (fileUploadQuestion != null)
          'fileUploadQuestion': fileUploadQuestion!,
        if (grading != null) 'grading': grading!,
        if (questionId != null) 'questionId': questionId!,
        if (required != null) 'required': required!,
        if (rowQuestion != null) 'rowQuestion': rowQuestion!,
        if (scaleQuestion != null) 'scaleQuestion': scaleQuestion!,
        if (textQuestion != null) 'textQuestion': textQuestion!,
        if (timeQuestion != null) 'timeQuestion': timeQuestion!,
      };
}

/// Defines a question that comprises multiple questions grouped together.
class QuestionGroupItem {
  /// The question group is a grid with rows of multiple choice questions that
  /// share the same options.
  ///
  /// When `grid` is set, all questions in the group must be of kind `row`.
  Grid? grid;

  /// The image displayed within the question group above the specific
  /// questions.
  Image? image;

  /// A list of questions that belong in this question group.
  ///
  /// A question must only belong to one group. The `kind` of the group may
  /// affect what types of questions are allowed.
  ///
  /// Required.
  core.List<Question>? questions;

  QuestionGroupItem({
    this.grid,
    this.image,
    this.questions,
  });

  QuestionGroupItem.fromJson(core.Map json_)
      : this(
          grid: json_.containsKey('grid')
              ? Grid.fromJson(
                  json_['grid'] as core.Map<core.String, core.dynamic>)
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          questions: json_.containsKey('questions')
              ? (json_['questions'] as core.List)
                  .map((value) => Question.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (grid != null) 'grid': grid!,
        if (image != null) 'image': image!,
        if (questions != null) 'questions': questions!,
      };
}

/// A form item containing a single question.
class QuestionItem {
  /// The image displayed within the question.
  Image? image;

  /// The displayed question.
  ///
  /// Required.
  Question? question;

  QuestionItem({
    this.image,
    this.question,
  });

  QuestionItem.fromJson(core.Map json_)
      : this(
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          question: json_.containsKey('question')
              ? Question.fromJson(
                  json_['question'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
        if (question != null) 'question': question!,
      };
}

/// Settings related to quiz forms and grading.
///
/// These must be updated with the UpdateSettingsRequest.
class QuizSettings {
  /// Whether this form is a quiz or not.
  ///
  /// When true, responses are graded based on question Grading. Upon setting to
  /// false, all question Grading is deleted.
  core.bool? isQuiz;

  QuizSettings({
    this.isQuiz,
  });

  QuizSettings.fromJson(core.Map json_)
      : this(
          isQuiz:
              json_.containsKey('isQuiz') ? json_['isQuiz'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isQuiz != null) 'isQuiz': isQuiz!,
      };
}

/// Renew an existing Watch for seven days.
typedef RenewWatchRequest = $Empty;

/// The kinds of update requests that can be made.
class Request {
  /// Create a new item.
  CreateItemRequest? createItem;

  /// Delete an item.
  DeleteItemRequest? deleteItem;

  /// Move an item to a specified location.
  MoveItemRequest? moveItem;

  /// Update Form's Info.
  UpdateFormInfoRequest? updateFormInfo;

  /// Update an item.
  UpdateItemRequest? updateItem;

  /// Updates the Form's settings.
  UpdateSettingsRequest? updateSettings;

  Request({
    this.createItem,
    this.deleteItem,
    this.moveItem,
    this.updateFormInfo,
    this.updateItem,
    this.updateSettings,
  });

  Request.fromJson(core.Map json_)
      : this(
          createItem: json_.containsKey('createItem')
              ? CreateItemRequest.fromJson(
                  json_['createItem'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteItem: json_.containsKey('deleteItem')
              ? DeleteItemRequest.fromJson(
                  json_['deleteItem'] as core.Map<core.String, core.dynamic>)
              : null,
          moveItem: json_.containsKey('moveItem')
              ? MoveItemRequest.fromJson(
                  json_['moveItem'] as core.Map<core.String, core.dynamic>)
              : null,
          updateFormInfo: json_.containsKey('updateFormInfo')
              ? UpdateFormInfoRequest.fromJson(json_['updateFormInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateItem: json_.containsKey('updateItem')
              ? UpdateItemRequest.fromJson(
                  json_['updateItem'] as core.Map<core.String, core.dynamic>)
              : null,
          updateSettings: json_.containsKey('updateSettings')
              ? UpdateSettingsRequest.fromJson(json_['updateSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createItem != null) 'createItem': createItem!,
        if (deleteItem != null) 'deleteItem': deleteItem!,
        if (moveItem != null) 'moveItem': moveItem!,
        if (updateFormInfo != null) 'updateFormInfo': updateFormInfo!,
        if (updateItem != null) 'updateItem': updateItem!,
        if (updateSettings != null) 'updateSettings': updateSettings!,
      };
}

/// A single response from an update.
class Response {
  /// The result of creating an item.
  CreateItemResponse? createItem;

  Response({
    this.createItem,
  });

  Response.fromJson(core.Map json_)
      : this(
          createItem: json_.containsKey('createItem')
              ? CreateItemResponse.fromJson(
                  json_['createItem'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createItem != null) 'createItem': createItem!,
      };
}

/// Configuration for a question that is part of a question group.
class RowQuestion {
  /// The title for the single row in the QuestionGroupItem.
  ///
  /// Required.
  core.String? title;

  RowQuestion({
    this.title,
  });

  RowQuestion.fromJson(core.Map json_)
      : this(
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (title != null) 'title': title!,
      };
}

/// A scale question.
///
/// The user has a range of numeric values to choose from.
class ScaleQuestion {
  /// The highest possible value for the scale.
  ///
  /// Required.
  core.int? high;

  /// The label to display describing the highest point on the scale.
  core.String? highLabel;

  /// The lowest possible value for the scale.
  ///
  /// Required.
  core.int? low;

  /// The label to display describing the lowest point on the scale.
  core.String? lowLabel;

  ScaleQuestion({
    this.high,
    this.highLabel,
    this.low,
    this.lowLabel,
  });

  ScaleQuestion.fromJson(core.Map json_)
      : this(
          high: json_.containsKey('high') ? json_['high'] as core.int : null,
          highLabel: json_.containsKey('highLabel')
              ? json_['highLabel'] as core.String
              : null,
          low: json_.containsKey('low') ? json_['low'] as core.int : null,
          lowLabel: json_.containsKey('lowLabel')
              ? json_['lowLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (high != null) 'high': high!,
        if (highLabel != null) 'highLabel': highLabel!,
        if (low != null) 'low': low!,
        if (lowLabel != null) 'lowLabel': lowLabel!,
      };
}

/// An answer to a question represented as text.
class TextAnswer {
  /// The answer value.
  ///
  /// Formatting used for different kinds of question: * ChoiceQuestion *
  /// `RADIO` or `DROP_DOWN`: A single string corresponding to the option that
  /// was selected. * `CHECKBOX`: Multiple strings corresponding to each option
  /// that was selected. * TextQuestion: The text that the user entered. *
  /// ScaleQuestion: A string containing the number that was selected. *
  /// DateQuestion * Without time or year: MM-DD e.g. "05-19" * With year:
  /// YYYY-MM-DD e.g. "1986-05-19" * With time: MM-DD HH:MM e.g. "05-19 14:51" *
  /// With year and time: YYYY-MM-DD HH:MM e.g. "1986-05-19 14:51" *
  /// TimeQuestion: String with time or duration in HH:MM format e.g. "14:51" *
  /// RowQuestion within QuestionGroupItem: The answer for each row of a
  /// QuestionGroupItem is represented as a separate Answer. Each will contain
  /// one string for `RADIO`-type choices or multiple strings for `CHECKBOX`
  /// choices.
  ///
  /// Output only.
  core.String? value;

  TextAnswer({
    this.value,
  });

  TextAnswer.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// A question's answers as text.
class TextAnswers {
  /// Answers to a question.
  ///
  /// For multiple-value ChoiceQuestions, each answer is a separate value.
  ///
  /// Output only.
  core.List<TextAnswer>? answers;

  TextAnswers({
    this.answers,
  });

  TextAnswers.fromJson(core.Map json_)
      : this(
          answers: json_.containsKey('answers')
              ? (json_['answers'] as core.List)
                  .map((value) => TextAnswer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answers != null) 'answers': answers!,
      };
}

/// A text item.
typedef TextItem = $Empty;

/// Link for text.
class TextLink {
  /// Display text for the URI.
  ///
  /// Required.
  core.String? displayText;

  /// The URI.
  ///
  /// Required.
  core.String? uri;

  TextLink({
    this.displayText,
    this.uri,
  });

  TextLink.fromJson(core.Map json_)
      : this(
          displayText: json_.containsKey('displayText')
              ? json_['displayText'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayText != null) 'displayText': displayText!,
        if (uri != null) 'uri': uri!,
      };
}

/// A text-based question.
class TextQuestion {
  /// Whether the question is a paragraph question or not.
  ///
  /// If not, the question is a short text question.
  core.bool? paragraph;

  TextQuestion({
    this.paragraph,
  });

  TextQuestion.fromJson(core.Map json_)
      : this(
          paragraph: json_.containsKey('paragraph')
              ? json_['paragraph'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (paragraph != null) 'paragraph': paragraph!,
      };
}

/// A time question.
class TimeQuestion {
  /// `true` if the question is about an elapsed time.
  ///
  /// Otherwise it is about a time of day.
  core.bool? duration;

  TimeQuestion({
    this.duration,
  });

  TimeQuestion.fromJson(core.Map json_)
      : this(
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
      };
}

/// Update Form's Info.
class UpdateFormInfoRequest {
  /// The info to update.
  Info? info;

  /// Only values named in this mask are changed.
  ///
  /// At least one field must be specified. The root `info` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// updating every field.
  ///
  /// Required.
  core.String? updateMask;

  UpdateFormInfoRequest({
    this.info,
    this.updateMask,
  });

  UpdateFormInfoRequest.fromJson(core.Map json_)
      : this(
          info: json_.containsKey('info')
              ? Info.fromJson(
                  json_['info'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (info != null) 'info': info!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Update an item in a form.
class UpdateItemRequest {
  /// New values for the item.
  ///
  /// Note that item and question IDs are used if they are provided (and are in
  /// the field mask). If an ID is blank (and in the field mask) a new ID is
  /// generated. This means you can modify an item by getting the form via
  /// forms.get, modifying your local copy of that item to be how you want it,
  /// and using UpdateItemRequest to write it back, with the IDs being the same
  /// (or not in the field mask).
  ///
  /// Required.
  Item? item;

  /// The location identifying the item to update.
  ///
  /// Required.
  Location? location;

  /// Only values named in this mask are changed.
  ///
  /// Required.
  core.String? updateMask;

  UpdateItemRequest({
    this.item,
    this.location,
    this.updateMask,
  });

  UpdateItemRequest.fromJson(core.Map json_)
      : this(
          item: json_.containsKey('item')
              ? Item.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? Location.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (item != null) 'item': item!,
        if (location != null) 'location': location!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Update Form's FormSettings.
class UpdateSettingsRequest {
  /// The settings to update with.
  ///
  /// Required.
  FormSettings? settings;

  /// Only values named in this mask are changed.
  ///
  /// At least one field must be specified. The root `settings` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// updating every field.
  ///
  /// Required.
  core.String? updateMask;

  UpdateSettingsRequest({
    this.settings,
    this.updateMask,
  });

  UpdateSettingsRequest.fromJson(core.Map json_)
      : this(
          settings: json_.containsKey('settings')
              ? FormSettings.fromJson(
                  json_['settings'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (settings != null) 'settings': settings!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Data representing a video.
class Video {
  /// Properties of a video.
  MediaProperties? properties;

  /// A YouTube URI.
  ///
  /// Required.
  core.String? youtubeUri;

  Video({
    this.properties,
    this.youtubeUri,
  });

  Video.fromJson(core.Map json_)
      : this(
          properties: json_.containsKey('properties')
              ? MediaProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          youtubeUri: json_.containsKey('youtubeUri')
              ? json_['youtubeUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
        if (youtubeUri != null) 'youtubeUri': youtubeUri!,
      };
}

/// An item containing a video.
class VideoItem {
  /// The text displayed below the video.
  core.String? caption;

  /// The video displayed in the item.
  ///
  /// Required.
  Video? video;

  VideoItem({
    this.caption,
    this.video,
  });

  VideoItem.fromJson(core.Map json_)
      : this(
          caption: json_.containsKey('caption')
              ? json_['caption'] as core.String
              : null,
          video: json_.containsKey('video')
              ? Video.fromJson(
                  json_['video'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caption != null) 'caption': caption!,
        if (video != null) 'video': video!,
      };
}

/// Link to a video.
class VideoLink {
  /// The display text for the link.
  ///
  /// Required.
  core.String? displayText;

  /// The URI of a YouTube video.
  core.String? youtubeUri;

  VideoLink({
    this.displayText,
    this.youtubeUri,
  });

  VideoLink.fromJson(core.Map json_)
      : this(
          displayText: json_.containsKey('displayText')
              ? json_['displayText'] as core.String
              : null,
          youtubeUri: json_.containsKey('youtubeUri')
              ? json_['youtubeUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayText != null) 'displayText': displayText!,
        if (youtubeUri != null) 'youtubeUri': youtubeUri!,
      };
}

/// A watch for events for a form.
///
/// When the designated event happens, a notification will be published to the
/// specified target. The notification's attributes will include a `formId` key
/// that has the ID of the watched form and an `eventType` key that has the
/// string of the type. Messages are sent with at-least-once delivery and are
/// only dropped in extraordinary circumstances. Typically all notifications
/// should be reliably delivered within a few seconds; however, in some
/// situations notifications may be delayed. A watch expires seven days after it
/// is created unless it is renewed with watches.renew
class Watch {
  /// Timestamp of when this was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The most recent error type for an attempted delivery.
  ///
  /// To begin watching the form again a call can be made to watches.renew which
  /// also clears this error information.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : Unspecified error type.
  /// - "PROJECT_NOT_AUTHORIZED" : The cloud project does not have access to the
  /// form being watched. This occurs if the user has revoked the authorization
  /// for your project to access their form(s). Watches with this error will not
  /// be retried. To attempt to begin watching the form again a call can be made
  /// to watches.renew
  /// - "NO_USER_ACCESS" : The user that granted access no longer has access to
  /// the form being watched. Watches with this error will not be retried. To
  /// attempt to begin watching the form again a call can be made to
  /// watches.renew
  /// - "OTHER_ERRORS" : Another type of error has occurred. Whether
  /// notifications will continue depends on the watch state.
  core.String? errorType;

  /// Which event type to watch for.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : Unspecified event type. This value should not
  /// be used.
  /// - "SCHEMA" : The schema event type. A watch with this event type will be
  /// notified about changes to form content and settings.
  /// - "RESPONSES" : The responses event type. A watch with this event type
  /// will be notified when form responses are submitted.
  core.String? eventType;

  /// Timestamp for when this will expire.
  ///
  /// Each watches.renew call resets this to seven days in the future.
  ///
  /// Output only.
  core.String? expireTime;

  /// The ID of this watch.
  ///
  /// See notes on CreateWatchRequest.watch_id.
  ///
  /// Output only.
  core.String? id;

  /// The current state of the watch.
  ///
  /// Additional details about suspended watches can be found by checking the
  /// `error_type`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : Watch is active.
  /// - "SUSPENDED" : The watch is suspended due to an error that may be
  /// resolved. The watch will continue to exist until it expires. To attempt to
  /// reactivate the watch a call can be made to watches.renew
  core.String? state;

  /// Where to send the notification.
  ///
  /// Required.
  WatchTarget? target;

  Watch({
    this.createTime,
    this.errorType,
    this.eventType,
    this.expireTime,
    this.id,
    this.state,
    this.target,
  });

  Watch.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          errorType: json_.containsKey('errorType')
              ? json_['errorType'] as core.String
              : null,
          eventType: json_.containsKey('eventType')
              ? json_['eventType'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          target: json_.containsKey('target')
              ? WatchTarget.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (errorType != null) 'errorType': errorType!,
        if (eventType != null) 'eventType': eventType!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (id != null) 'id': id!,
        if (state != null) 'state': state!,
        if (target != null) 'target': target!,
      };
}

/// The target for notification delivery.
class WatchTarget {
  /// A Pub/Sub topic.
  ///
  /// To receive notifications, the topic must grant publish privileges to the
  /// Forms service account
  /// `serviceAccount:forms-notifications@system.gserviceaccount.com`. Only the
  /// project that owns a topic may create a watch with it. Pub/Sub delivery
  /// guarantees should be considered.
  CloudPubsubTopic? topic;

  WatchTarget({
    this.topic,
  });

  WatchTarget.fromJson(core.Map json_)
      : this(
          topic: json_.containsKey('topic')
              ? CloudPubsubTopic.fromJson(
                  json_['topic'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}

/// Provides control over how write requests are executed.
class WriteControl {
  /// The revision ID of the form that the write request is applied to.
  ///
  /// If this is not the latest revision of the form, the request is not
  /// processed and returns a 400 bad request error.
  core.String? requiredRevisionId;

  /// The target revision ID of the form that the write request is applied to.
  ///
  /// If changes have occurred after this revision, the changes in this update
  /// request are transformed against those changes. This results in a new
  /// revision of the form that incorporates both the changes in the request and
  /// the intervening changes, with the server resolving conflicting changes.
  /// The target revision ID may only be used to write to recent versions of a
  /// form. If the target revision is too far behind the latest revision, the
  /// request is not processed and returns a 400 (Bad Request Error). The
  /// request may be retried after reading the latest version of the form. In
  /// most cases a target revision ID remains valid for several minutes after it
  /// is read, but for frequently-edited forms this window may be shorter.
  core.String? targetRevisionId;

  WriteControl({
    this.requiredRevisionId,
    this.targetRevisionId,
  });

  WriteControl.fromJson(core.Map json_)
      : this(
          requiredRevisionId: json_.containsKey('requiredRevisionId')
              ? json_['requiredRevisionId'] as core.String
              : null,
          targetRevisionId: json_.containsKey('targetRevisionId')
              ? json_['targetRevisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requiredRevisionId != null)
          'requiredRevisionId': requiredRevisionId!,
        if (targetRevisionId != null) 'targetRevisionId': targetRevisionId!,
      };
}
