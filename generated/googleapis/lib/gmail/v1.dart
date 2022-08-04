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

/// Gmail API - v1
///
/// The Gmail API lets you view and manage Gmail mailbox data like threads,
/// messages, and labels.
///
/// For more information, see <https://developers.google.com/gmail/api/>
///
/// Create an instance of [GmailApi] to access these resources:
///
/// - [UsersResource]
///   - [UsersDraftsResource]
///   - [UsersHistoryResource]
///   - [UsersLabelsResource]
///   - [UsersMessagesResource]
///     - [UsersMessagesAttachmentsResource]
///   - [UsersSettingsResource]
///     - [UsersSettingsDelegatesResource]
///     - [UsersSettingsFiltersResource]
///     - [UsersSettingsForwardingAddressesResource]
///     - [UsersSettingsSendAsResource]
///       - [UsersSettingsSendAsSmimeInfoResource]
///   - [UsersThreadsResource]
library gmail.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// The Gmail API lets you view and manage Gmail mailbox data like threads,
/// messages, and labels.
class GmailApi {
  /// Read, compose, send, and permanently delete all your email from Gmail
  static const mailGoogleComScope = 'https://mail.google.com/';

  /// Manage drafts and send emails when you interact with the add-on
  static const gmailAddonsCurrentActionComposeScope =
      'https://www.googleapis.com/auth/gmail.addons.current.action.compose';

  /// View your email messages when you interact with the add-on
  static const gmailAddonsCurrentMessageActionScope =
      'https://www.googleapis.com/auth/gmail.addons.current.message.action';

  /// View your email message metadata when the add-on is running
  static const gmailAddonsCurrentMessageMetadataScope =
      'https://www.googleapis.com/auth/gmail.addons.current.message.metadata';

  /// View your email messages when the add-on is running
  static const gmailAddonsCurrentMessageReadonlyScope =
      'https://www.googleapis.com/auth/gmail.addons.current.message.readonly';

  /// Manage drafts and send emails
  static const gmailComposeScope =
      'https://www.googleapis.com/auth/gmail.compose';

  /// Add emails into your Gmail mailbox
  static const gmailInsertScope =
      'https://www.googleapis.com/auth/gmail.insert';

  /// See and edit your email labels
  static const gmailLabelsScope =
      'https://www.googleapis.com/auth/gmail.labels';

  /// View your email message metadata such as labels and headers, but not the
  /// email body
  static const gmailMetadataScope =
      'https://www.googleapis.com/auth/gmail.metadata';

  /// Read, compose, and send emails from your Gmail account
  static const gmailModifyScope =
      'https://www.googleapis.com/auth/gmail.modify';

  /// View your email messages and settings
  static const gmailReadonlyScope =
      'https://www.googleapis.com/auth/gmail.readonly';

  /// Send email on your behalf
  static const gmailSendScope = 'https://www.googleapis.com/auth/gmail.send';

  /// See, edit, create, or change your email settings and filters in Gmail
  static const gmailSettingsBasicScope =
      'https://www.googleapis.com/auth/gmail.settings.basic';

  /// Manage your sensitive mail settings, including who can manage your mail
  static const gmailSettingsSharingScope =
      'https://www.googleapis.com/auth/gmail.settings.sharing';

  final commons.ApiRequester _requester;

  UsersResource get users => UsersResource(_requester);

  GmailApi(http.Client client,
      {core.String rootUrl = 'https://gmail.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersDraftsResource get drafts => UsersDraftsResource(_requester);
  UsersHistoryResource get history => UsersHistoryResource(_requester);
  UsersLabelsResource get labels => UsersLabelsResource(_requester);
  UsersMessagesResource get messages => UsersMessagesResource(_requester);
  UsersSettingsResource get settings => UsersSettingsResource(_requester);
  UsersThreadsResource get threads => UsersThreadsResource(_requester);

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Gets the current user's Gmail profile.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> getProfile(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/profile';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Profile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stop receiving push notifications for the given user mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> stop(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/stop';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Set up or update a push notification watch on the given user mailbox.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WatchResponse> watch(
    WatchRequest request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WatchResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersDraftsResource {
  final commons.ApiRequester _requester;

  UsersDraftsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new draft with the `DRAFT` label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Draft].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Draft> create(
    Draft request,
    core.String userId, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'gmail/v1/users/' + commons.escapeVariable('$userId') + '/drafts';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/drafts';
    } else {
      url_ = '/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/drafts';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Draft.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Immediately and permanently deletes the specified draft.
  ///
  /// Does not simply trash it.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the draft to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/drafts/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified draft.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the draft to retrieve.
  ///
  /// [format] - The format to return the draft in.
  /// Possible string values are:
  /// - "minimal" : Returns only email message ID and labels; does not return
  /// the email headers, body, or payload.
  /// - "full" : Returns the full email message data with body content parsed in
  /// the `payload` field; the `raw` field is not used. Format cannot be used
  /// when accessing the api using the gmail.metadata scope.
  /// - "raw" : Returns the full email message data with body content in the
  /// `raw` field as a base64url encoded string; the `payload` field is not
  /// used. Format cannot be used when accessing the api using the
  /// gmail.metadata scope.
  /// - "metadata" : Returns only email message ID, labels, and email headers.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Draft].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Draft> get(
    core.String userId,
    core.String id, {
    core.String? format,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (format != null) 'format': [format],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/drafts/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Draft.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the drafts in the user's mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [includeSpamTrash] - Include drafts from `SPAM` and `TRASH` in the
  /// results.
  ///
  /// [maxResults] - Maximum number of drafts to return. This field defaults to
  /// 100. The maximum allowed value for this field is 500.
  ///
  /// [pageToken] - Page token to retrieve a specific page of results in the
  /// list.
  ///
  /// [q] - Only return draft messages matching the specified query. Supports
  /// the same query format as the Gmail search box. For example,
  /// `"from:someuser@example.com rfc822msgid: is:unread"`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDraftsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDraftsResponse> list(
    core.String userId, {
    core.bool? includeSpamTrash,
    core.int? maxResults,
    core.String? pageToken,
    core.String? q,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeSpamTrash != null) 'includeSpamTrash': ['${includeSpamTrash}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (q != null) 'q': [q],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/drafts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDraftsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends the specified, existing draft to the recipients in the `To`, `Cc`,
  /// and `Bcc` headers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> send(
    Draft request,
    core.String userId, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/drafts/send';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/drafts/send';
    } else {
      url_ = '/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/drafts/send';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replaces a draft's content.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the draft to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Draft].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Draft> update(
    Draft request,
    core.String userId,
    core.String id, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/drafts/' +
          commons.escapeVariable('$id');
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/drafts/' +
          commons.escapeVariable('$id');
    } else {
      url_ = '/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/drafts/' +
          commons.escapeVariable('$id');
    }

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Draft.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersHistoryResource {
  final commons.ApiRequester _requester;

  UsersHistoryResource(commons.ApiRequester client) : _requester = client;

  /// Lists the history of all changes to the given mailbox.
  ///
  /// History results are returned in chronological order (increasing
  /// `historyId`).
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [historyTypes] - History types to be returned by the function
  ///
  /// [labelId] - Only return messages with a label matching the ID.
  ///
  /// [maxResults] - Maximum number of history records to return. This field
  /// defaults to 100. The maximum allowed value for this field is 500.
  ///
  /// [pageToken] - Page token to retrieve a specific page of results in the
  /// list.
  ///
  /// [startHistoryId] - Required. Returns history records after the specified
  /// `startHistoryId`. The supplied `startHistoryId` should be obtained from
  /// the `historyId` of a message, thread, or previous `list` response. History
  /// IDs increase chronologically but are not contiguous with random gaps in
  /// between valid IDs. Supplying an invalid or out of date `startHistoryId`
  /// typically returns an `HTTP 404` error code. A `historyId` is typically
  /// valid for at least a week, but in some rare circumstances may be valid for
  /// only a few hours. If you receive an `HTTP 404` error response, your
  /// application should perform a full sync. If you receive no `nextPageToken`
  /// in the response, there are no updates to retrieve and you can store the
  /// returned `historyId` for a future request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHistoryResponse> list(
    core.String userId, {
    core.List<core.String>? historyTypes,
    core.String? labelId,
    core.int? maxResults,
    core.String? pageToken,
    core.String? startHistoryId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (historyTypes != null) 'historyTypes': historyTypes,
      if (labelId != null) 'labelId': [labelId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startHistoryId != null) 'startHistoryId': [startHistoryId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/history';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHistoryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersLabelsResource {
  final commons.ApiRequester _requester;

  UsersLabelsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Label> create(
    Label request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/labels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Label.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Immediately and permanently deletes the specified label and removes it
  /// from any messages and threads that it is applied to.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the label to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/labels/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified label.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the label to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Label> get(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/labels/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Label.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all labels in the user's mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLabelsResponse> list(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/labels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLabelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patch the specified label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the label to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Label> patch(
    Label request,
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/labels/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Label.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the label to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Label> update(
    Label request,
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/labels/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Label.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersMessagesResource {
  final commons.ApiRequester _requester;

  UsersMessagesAttachmentsResource get attachments =>
      UsersMessagesAttachmentsResource(_requester);

  UsersMessagesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes many messages by message ID.
  ///
  /// Provides no guarantees that messages were not already deleted or even
  /// existed at all.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> batchDelete(
    BatchDeleteMessagesRequest request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/messages/batchDelete';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Modifies the labels on the specified messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> batchModify(
    BatchModifyMessagesRequest request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/messages/batchModify';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Immediately and permanently deletes the specified message.
  ///
  /// This operation cannot be undone. Prefer `messages.trash` instead.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the message to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/messages/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified message.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the message to retrieve. This ID is usually retrieved
  /// using `messages.list`. The ID is also contained in the result when a
  /// message is inserted (`messages.insert`) or imported (`messages.import`).
  ///
  /// [format] - The format to return the message in.
  /// Possible string values are:
  /// - "minimal" : Returns only email message ID and labels; does not return
  /// the email headers, body, or payload.
  /// - "full" : Returns the full email message data with body content parsed in
  /// the `payload` field; the `raw` field is not used. Format cannot be used
  /// when accessing the api using the gmail.metadata scope.
  /// - "raw" : Returns the full email message data with body content in the
  /// `raw` field as a base64url encoded string; the `payload` field is not
  /// used. Format cannot be used when accessing the api using the
  /// gmail.metadata scope.
  /// - "metadata" : Returns only email message ID, labels, and email headers.
  ///
  /// [metadataHeaders] - When given and format is `METADATA`, only include
  /// headers specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> get(
    core.String userId,
    core.String id, {
    core.String? format,
    core.List<core.String>? metadataHeaders,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (format != null) 'format': [format],
      if (metadataHeaders != null) 'metadataHeaders': metadataHeaders,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/messages/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports a message into only this user's mailbox, with standard email
  /// delivery scanning and classification similar to receiving via SMTP.
  ///
  /// This method doesn't perform SPF checks, so it might not work for some spam
  /// messages, such as those attempting to perform domain spoofing. This method
  /// does not send a message. Note: This function doesn't trigger forwarding
  /// rules or filters set up by the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [deleted] - Mark the email as permanently deleted (not TRASH) and only
  /// visible in Google Vault to a Vault administrator. Only used for G Suite
  /// accounts.
  ///
  /// [internalDateSource] - Source for Gmail's internal date of the message.
  /// Possible string values are:
  /// - "receivedTime" : Internal message date set to current time when received
  /// by Gmail.
  /// - "dateHeader" : Internal message time based on 'Date' header in email,
  /// when valid.
  ///
  /// [neverMarkSpam] - Ignore the Gmail spam classifier decision and never mark
  /// this email as SPAM in the mailbox.
  ///
  /// [processForCalendar] - Process calendar invites in the email and add any
  /// extracted meetings to the Google Calendar for this user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> import(
    Message request,
    core.String userId, {
    core.bool? deleted,
    core.String? internalDateSource,
    core.bool? neverMarkSpam,
    core.bool? processForCalendar,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if (internalDateSource != null)
        'internalDateSource': [internalDateSource],
      if (neverMarkSpam != null) 'neverMarkSpam': ['${neverMarkSpam}'],
      if (processForCalendar != null)
        'processForCalendar': ['${processForCalendar}'],
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/messages/import';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/messages/import';
    } else {
      url_ = '/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/messages/import';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Directly inserts a message into only this user's mailbox similar to `IMAP
  /// APPEND`, bypassing most scanning and classification.
  ///
  /// Does not send a message.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [deleted] - Mark the email as permanently deleted (not TRASH) and only
  /// visible in Google Vault to a Vault administrator. Only used for G Suite
  /// accounts.
  ///
  /// [internalDateSource] - Source for Gmail's internal date of the message.
  /// Possible string values are:
  /// - "receivedTime" : Internal message date set to current time when received
  /// by Gmail.
  /// - "dateHeader" : Internal message time based on 'Date' header in email,
  /// when valid.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> insert(
    Message request,
    core.String userId, {
    core.bool? deleted,
    core.String? internalDateSource,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if (internalDateSource != null)
        'internalDateSource': [internalDateSource],
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'gmail/v1/users/' + commons.escapeVariable('$userId') + '/messages';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/messages';
    } else {
      url_ = '/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/messages';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the messages in the user's mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [includeSpamTrash] - Include messages from `SPAM` and `TRASH` in the
  /// results.
  ///
  /// [labelIds] - Only return messages with labels that match all of the
  /// specified label IDs.
  ///
  /// [maxResults] - Maximum number of messages to return. This field defaults
  /// to 100. The maximum allowed value for this field is 500.
  ///
  /// [pageToken] - Page token to retrieve a specific page of results in the
  /// list.
  ///
  /// [q] - Only return messages matching the specified query. Supports the same
  /// query format as the Gmail search box. For example,
  /// `"from:someuser@example.com rfc822msgid: is:unread"`. Parameter cannot be
  /// used when accessing the api using the gmail.metadata scope.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMessagesResponse> list(
    core.String userId, {
    core.bool? includeSpamTrash,
    core.List<core.String>? labelIds,
    core.int? maxResults,
    core.String? pageToken,
    core.String? q,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeSpamTrash != null) 'includeSpamTrash': ['${includeSpamTrash}'],
      if (labelIds != null) 'labelIds': labelIds,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (q != null) 'q': [q],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/messages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMessagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies the labels on the specified message.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the message to modify.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> modify(
    ModifyMessageRequest request,
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/messages/' +
        commons.escapeVariable('$id') +
        '/modify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends the specified message to the recipients in the `To`, `Cc`, and `Bcc`
  /// headers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> send(
    Message request,
    core.String userId, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/messages/send';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/messages/send';
    } else {
      url_ = '/upload/gmail/v1/users/' +
          commons.escapeVariable('$userId') +
          '/messages/send';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Moves the specified message to the trash.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the message to Trash.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> trash(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/messages/' +
        commons.escapeVariable('$id') +
        '/trash';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes the specified message from the trash.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the message to remove from Trash.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> untrash(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/messages/' +
        commons.escapeVariable('$id') +
        '/untrash';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersMessagesAttachmentsResource {
  final commons.ApiRequester _requester;

  UsersMessagesAttachmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the specified message attachment.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [messageId] - The ID of the message containing the attachment.
  ///
  /// [id] - The ID of the attachment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MessagePartBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MessagePartBody> get(
    core.String userId,
    core.String messageId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/messages/' +
        commons.escapeVariable('$messageId') +
        '/attachments/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MessagePartBody.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersSettingsResource {
  final commons.ApiRequester _requester;

  UsersSettingsDelegatesResource get delegates =>
      UsersSettingsDelegatesResource(_requester);
  UsersSettingsFiltersResource get filters =>
      UsersSettingsFiltersResource(_requester);
  UsersSettingsForwardingAddressesResource get forwardingAddresses =>
      UsersSettingsForwardingAddressesResource(_requester);
  UsersSettingsSendAsResource get sendAs =>
      UsersSettingsSendAsResource(_requester);

  UsersSettingsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the auto-forwarding setting for the specified account.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutoForwarding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutoForwarding> getAutoForwarding(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/autoForwarding';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AutoForwarding.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets IMAP settings.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImapSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImapSettings> getImap(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/imap';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ImapSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets language settings.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LanguageSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LanguageSettings> getLanguage(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/language';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LanguageSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets POP settings.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PopSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PopSettings> getPop(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/settings/pop';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PopSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets vacation responder settings.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VacationSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VacationSettings> getVacation(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/vacation';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VacationSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the auto-forwarding setting for the specified account.
  ///
  /// A verified forwarding address must be specified when auto-forwarding is
  /// enabled. This method is only available to service account clients that
  /// have been delegated domain-wide authority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutoForwarding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutoForwarding> updateAutoForwarding(
    AutoForwarding request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/autoForwarding';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AutoForwarding.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates IMAP settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImapSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImapSettings> updateImap(
    ImapSettings request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/imap';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ImapSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates language settings.
  ///
  /// If successful, the return object contains the `displayLanguage` that was
  /// saved for the user, which may differ from the value passed into the
  /// request. This is because the requested `displayLanguage` may not be
  /// directly supported by Gmail but have a close variant that is, and so the
  /// variant may be chosen and saved instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LanguageSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LanguageSettings> updateLanguage(
    LanguageSettings request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/language';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return LanguageSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates POP settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PopSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PopSettings> updatePop(
    PopSettings request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/settings/pop';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return PopSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates vacation responder settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VacationSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VacationSettings> updateVacation(
    VacationSettings request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/vacation';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return VacationSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersSettingsDelegatesResource {
  final commons.ApiRequester _requester;

  UsersSettingsDelegatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds a delegate with its verification status set directly to `accepted`,
  /// without sending any verification email.
  ///
  /// The delegate user must be a member of the same G Suite organization as the
  /// delegator user. Gmail imposes limitations on the number of delegates and
  /// delegators each user in a G Suite organization can have. These limits
  /// depend on your organization, but in general each user can have up to 25
  /// delegates and up to 10 delegators. Note that a delegate user must be
  /// referred to by their primary email address, and not an email alias. Also
  /// note that when a new delegate is created, there may be up to a one minute
  /// delay before the new delegate is available for use. This method is only
  /// available to service account clients that have been delegated domain-wide
  /// authority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Delegate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Delegate> create(
    Delegate request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/delegates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Delegate.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes the specified delegate (which can be of any verification status),
  /// and revokes any verification that may have been required for using it.
  ///
  /// Note that a delegate user must be referred to by their primary email
  /// address, and not an email alias. This method is only available to service
  /// account clients that have been delegated domain-wide authority.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [delegateEmail] - The email address of the user to be removed as a
  /// delegate.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String delegateEmail, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/delegates/' +
        commons.escapeVariable('$delegateEmail');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified delegate.
  ///
  /// Note that a delegate user must be referred to by their primary email
  /// address, and not an email alias. This method is only available to service
  /// account clients that have been delegated domain-wide authority.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [delegateEmail] - The email address of the user whose delegate
  /// relationship is to be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Delegate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Delegate> get(
    core.String userId,
    core.String delegateEmail, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/delegates/' +
        commons.escapeVariable('$delegateEmail');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Delegate.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the delegates for the specified account.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDelegatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDelegatesResponse> list(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/delegates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDelegatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersSettingsFiltersResource {
  final commons.ApiRequester _requester;

  UsersSettingsFiltersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a filter.
  ///
  /// Note: you can only create a maximum of 1,000 filters.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Filter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Filter> create(
    Filter request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/filters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Filter.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Immediately and permanently deletes the specified filter.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the filter to be deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/filters/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a filter.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the filter to be fetched.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Filter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Filter> get(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/filters/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Filter.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the message filters of a Gmail user.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFiltersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFiltersResponse> list(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/filters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFiltersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersSettingsForwardingAddressesResource {
  final commons.ApiRequester _requester;

  UsersSettingsForwardingAddressesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a forwarding address.
  ///
  /// If ownership verification is required, a message will be sent to the
  /// recipient and the resource's verification status will be set to `pending`;
  /// otherwise, the resource will be created with verification status set to
  /// `accepted`. This method is only available to service account clients that
  /// have been delegated domain-wide authority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ForwardingAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ForwardingAddress> create(
    ForwardingAddress request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/forwardingAddresses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ForwardingAddress.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified forwarding address and revokes any verification that
  /// may have been required.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [forwardingEmail] - The forwarding address to be deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String forwardingEmail, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/forwardingAddresses/' +
        commons.escapeVariable('$forwardingEmail');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified forwarding address.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [forwardingEmail] - The forwarding address to be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ForwardingAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ForwardingAddress> get(
    core.String userId,
    core.String forwardingEmail, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/forwardingAddresses/' +
        commons.escapeVariable('$forwardingEmail');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ForwardingAddress.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the forwarding addresses for the specified account.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListForwardingAddressesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListForwardingAddressesResponse> list(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/forwardingAddresses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListForwardingAddressesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersSettingsSendAsResource {
  final commons.ApiRequester _requester;

  UsersSettingsSendAsSmimeInfoResource get smimeInfo =>
      UsersSettingsSendAsSmimeInfoResource(_requester);

  UsersSettingsSendAsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a custom "from" send-as alias.
  ///
  /// If an SMTP MSA is specified, Gmail will attempt to connect to the SMTP
  /// service to validate the configuration before creating the alias. If
  /// ownership verification is required for the alias, a message will be sent
  /// to the email address and the resource's verification status will be set to
  /// `pending`; otherwise, the resource will be created with verification
  /// status set to `accepted`. If a signature is provided, Gmail will sanitize
  /// the HTML before saving it with the alias. This method is only available to
  /// service account clients that have been delegated domain-wide authority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendAs].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendAs> create(
    SendAs request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SendAs.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified send-as alias.
  ///
  /// Revokes any verification that may have been required for using it. This
  /// method is only available to service account clients that have been
  /// delegated domain-wide authority.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The send-as alias to be deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String sendAsEmail, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified send-as alias.
  ///
  /// Fails with an HTTP 404 error if the specified address is not a member of
  /// the collection.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The send-as alias to be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendAs].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendAs> get(
    core.String userId,
    core.String sendAsEmail, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SendAs.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the send-as aliases for the specified account.
  ///
  /// The result includes the primary send-as address associated with the
  /// account as well as any custom "from" aliases.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSendAsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSendAsResponse> list(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSendAsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patch the specified send-as alias.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The send-as alias to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendAs].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendAs> patch(
    SendAs request,
    core.String userId,
    core.String sendAsEmail, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SendAs.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a send-as alias.
  ///
  /// If a signature is provided, Gmail will sanitize the HTML before saving it
  /// with the alias. Addresses other than the primary address for the account
  /// can only be updated by service account clients that have been delegated
  /// domain-wide authority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The send-as alias to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendAs].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendAs> update(
    SendAs request,
    core.String userId,
    core.String sendAsEmail, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return SendAs.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends a verification email to the specified send-as alias address.
  ///
  /// The verification status must be `pending`. This method is only available
  /// to service account clients that have been delegated domain-wide authority.
  ///
  /// Request parameters:
  ///
  /// [userId] - User's email address. The special value "me" can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The send-as alias to be verified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> verify(
    core.String userId,
    core.String sendAsEmail, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail') +
        '/verify';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class UsersSettingsSendAsSmimeInfoResource {
  final commons.ApiRequester _requester;

  UsersSettingsSendAsSmimeInfoResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the specified S/MIME config for the specified send-as alias.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The email address that appears in the "From:" header for
  /// mail sent using this alias.
  ///
  /// [id] - The immutable ID for the SmimeInfo.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String sendAsEmail,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail') +
        '/smimeInfo/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified S/MIME config for the specified send-as alias.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The email address that appears in the "From:" header for
  /// mail sent using this alias.
  ///
  /// [id] - The immutable ID for the SmimeInfo.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SmimeInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SmimeInfo> get(
    core.String userId,
    core.String sendAsEmail,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail') +
        '/smimeInfo/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SmimeInfo.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Insert (upload) the given S/MIME config for the specified send-as alias.
  ///
  /// Note that pkcs12 format is required for the key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The email address that appears in the "From:" header for
  /// mail sent using this alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SmimeInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SmimeInfo> insert(
    SmimeInfo request,
    core.String userId,
    core.String sendAsEmail, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail') +
        '/smimeInfo';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SmimeInfo.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists S/MIME configs for the specified send-as alias.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The email address that appears in the "From:" header for
  /// mail sent using this alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSmimeInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSmimeInfoResponse> list(
    core.String userId,
    core.String sendAsEmail, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail') +
        '/smimeInfo';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSmimeInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the default S/MIME config for the specified send-as alias.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [sendAsEmail] - The email address that appears in the "From:" header for
  /// mail sent using this alias.
  ///
  /// [id] - The immutable ID for the SmimeInfo.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> setDefault(
    core.String userId,
    core.String sendAsEmail,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.escapeVariable('$sendAsEmail') +
        '/smimeInfo/' +
        commons.escapeVariable('$id') +
        '/setDefault';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class UsersThreadsResource {
  final commons.ApiRequester _requester;

  UsersThreadsResource(commons.ApiRequester client) : _requester = client;

  /// Immediately and permanently deletes the specified thread.
  ///
  /// Any messages that belong to the thread are also deleted. This operation
  /// cannot be undone. Prefer `threads.trash` instead.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - ID of the Thread to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/threads/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets the specified thread.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the thread to retrieve.
  ///
  /// [format] - The format to return the messages in.
  /// Possible string values are:
  /// - "full" : Returns the full email message data with body content parsed in
  /// the `payload` field; the `raw` field is not used. Format cannot be used
  /// when accessing the api using the gmail.metadata scope.
  /// - "metadata" : Returns only email message IDs, labels, and email headers.
  /// - "minimal" : Returns only email message IDs and labels; does not return
  /// the email headers, body, or payload.
  ///
  /// [metadataHeaders] - When given and format is METADATA, only include
  /// headers specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Thread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Thread> get(
    core.String userId,
    core.String id, {
    core.String? format,
    core.List<core.String>? metadataHeaders,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (format != null) 'format': [format],
      if (metadataHeaders != null) 'metadataHeaders': metadataHeaders,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/threads/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Thread.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the threads in the user's mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [includeSpamTrash] - Include threads from `SPAM` and `TRASH` in the
  /// results.
  ///
  /// [labelIds] - Only return threads with labels that match all of the
  /// specified label IDs.
  ///
  /// [maxResults] - Maximum number of threads to return. This field defaults to
  /// 100. The maximum allowed value for this field is 500.
  ///
  /// [pageToken] - Page token to retrieve a specific page of results in the
  /// list.
  ///
  /// [q] - Only return threads matching the specified query. Supports the same
  /// query format as the Gmail search box. For example,
  /// `"from:someuser@example.com rfc822msgid: is:unread"`. Parameter cannot be
  /// used when accessing the api using the gmail.metadata scope.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListThreadsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListThreadsResponse> list(
    core.String userId, {
    core.bool? includeSpamTrash,
    core.List<core.String>? labelIds,
    core.int? maxResults,
    core.String? pageToken,
    core.String? q,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeSpamTrash != null) 'includeSpamTrash': ['${includeSpamTrash}'],
      if (labelIds != null) 'labelIds': labelIds,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (q != null) 'q': [q],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'gmail/v1/users/' + commons.escapeVariable('$userId') + '/threads';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListThreadsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies the labels applied to the thread.
  ///
  /// This applies to all messages in the thread.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the thread to modify.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Thread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Thread> modify(
    ModifyThreadRequest request,
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/threads/' +
        commons.escapeVariable('$id') +
        '/modify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Thread.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Moves the specified thread to the trash.
  ///
  /// Any messages that belong to the thread are also moved to the trash.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the thread to Trash.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Thread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Thread> trash(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/threads/' +
        commons.escapeVariable('$id') +
        '/trash';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Thread.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes the specified thread from the trash.
  ///
  /// Any messages that belong to the thread are also removed from the trash.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value `me` can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the thread to remove from Trash.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Thread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Thread> untrash(
    core.String userId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'gmail/v1/users/' +
        commons.escapeVariable('$userId') +
        '/threads/' +
        commons.escapeVariable('$id') +
        '/untrash';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Thread.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Auto-forwarding settings for an account.
class AutoForwarding {
  /// The state that a message should be left in after it has been forwarded.
  /// Possible string values are:
  /// - "dispositionUnspecified" : Unspecified disposition.
  /// - "leaveInInbox" : Leave the message in the `INBOX`.
  /// - "archive" : Archive the message.
  /// - "trash" : Move the message to the `TRASH`.
  /// - "markRead" : Leave the message in the `INBOX` and mark it as read.
  core.String? disposition;

  /// Email address to which all incoming messages are forwarded.
  ///
  /// This email address must be a verified member of the forwarding addresses.
  core.String? emailAddress;

  /// Whether all incoming mail is automatically forwarded to another address.
  core.bool? enabled;

  AutoForwarding({
    this.disposition,
    this.emailAddress,
    this.enabled,
  });

  AutoForwarding.fromJson(core.Map json_)
      : this(
          disposition: json_.containsKey('disposition')
              ? json_['disposition'] as core.String
              : null,
          emailAddress: json_.containsKey('emailAddress')
              ? json_['emailAddress'] as core.String
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disposition != null) 'disposition': disposition!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (enabled != null) 'enabled': enabled!,
      };
}

class BatchDeleteMessagesRequest {
  /// The IDs of the messages to delete.
  core.List<core.String>? ids;

  BatchDeleteMessagesRequest({
    this.ids,
  });

  BatchDeleteMessagesRequest.fromJson(core.Map json_)
      : this(
          ids: json_.containsKey('ids')
              ? (json_['ids'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ids != null) 'ids': ids!,
      };
}

class BatchModifyMessagesRequest {
  /// A list of label IDs to add to messages.
  core.List<core.String>? addLabelIds;

  /// The IDs of the messages to modify.
  ///
  /// There is a limit of 1000 ids per request.
  core.List<core.String>? ids;

  /// A list of label IDs to remove from messages.
  core.List<core.String>? removeLabelIds;

  BatchModifyMessagesRequest({
    this.addLabelIds,
    this.ids,
    this.removeLabelIds,
  });

  BatchModifyMessagesRequest.fromJson(core.Map json_)
      : this(
          addLabelIds: json_.containsKey('addLabelIds')
              ? (json_['addLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ids: json_.containsKey('ids')
              ? (json_['ids'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          removeLabelIds: json_.containsKey('removeLabelIds')
              ? (json_['removeLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addLabelIds != null) 'addLabelIds': addLabelIds!,
        if (ids != null) 'ids': ids!,
        if (removeLabelIds != null) 'removeLabelIds': removeLabelIds!,
      };
}

/// Settings for a delegate.
///
/// Delegates can read, send, and delete messages, as well as view and add
/// contacts, for the delegator's account. See "Set up mail delegation" for more
/// information about delegates.
class Delegate {
  /// The email address of the delegate.
  core.String? delegateEmail;

  /// Indicates whether this address has been verified and can act as a delegate
  /// for the account.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "verificationStatusUnspecified" : Unspecified verification status.
  /// - "accepted" : The address can act a delegate for the account.
  /// - "pending" : A verification request was mailed to the address, and the
  /// owner has not yet accepted it.
  /// - "rejected" : A verification request was mailed to the address, and the
  /// owner rejected it.
  /// - "expired" : A verification request was mailed to the address, and it
  /// expired without verification.
  core.String? verificationStatus;

  Delegate({
    this.delegateEmail,
    this.verificationStatus,
  });

  Delegate.fromJson(core.Map json_)
      : this(
          delegateEmail: json_.containsKey('delegateEmail')
              ? json_['delegateEmail'] as core.String
              : null,
          verificationStatus: json_.containsKey('verificationStatus')
              ? json_['verificationStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegateEmail != null) 'delegateEmail': delegateEmail!,
        if (verificationStatus != null)
          'verificationStatus': verificationStatus!,
      };
}

/// A draft email in the user's mailbox.
class Draft {
  /// The immutable ID of the draft.
  core.String? id;

  /// The message content of the draft.
  Message? message;

  Draft({
    this.id,
    this.message,
  });

  Draft.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (message != null) 'message': message!,
      };
}

/// Resource definition for Gmail filters.
///
/// Filters apply to specific messages instead of an entire email thread.
class Filter {
  /// Action that the filter performs.
  FilterAction? action;

  /// Matching criteria for the filter.
  FilterCriteria? criteria;

  /// The server assigned ID of the filter.
  core.String? id;

  Filter({
    this.action,
    this.criteria,
    this.id,
  });

  Filter.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? FilterAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>)
              : null,
          criteria: json_.containsKey('criteria')
              ? FilterCriteria.fromJson(
                  json_['criteria'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (criteria != null) 'criteria': criteria!,
        if (id != null) 'id': id!,
      };
}

/// A set of actions to perform on a message.
class FilterAction {
  /// List of labels to add to the message.
  core.List<core.String>? addLabelIds;

  /// Email address that the message should be forwarded to.
  core.String? forward;

  /// List of labels to remove from the message.
  core.List<core.String>? removeLabelIds;

  FilterAction({
    this.addLabelIds,
    this.forward,
    this.removeLabelIds,
  });

  FilterAction.fromJson(core.Map json_)
      : this(
          addLabelIds: json_.containsKey('addLabelIds')
              ? (json_['addLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          forward: json_.containsKey('forward')
              ? json_['forward'] as core.String
              : null,
          removeLabelIds: json_.containsKey('removeLabelIds')
              ? (json_['removeLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addLabelIds != null) 'addLabelIds': addLabelIds!,
        if (forward != null) 'forward': forward!,
        if (removeLabelIds != null) 'removeLabelIds': removeLabelIds!,
      };
}

/// Message matching criteria.
class FilterCriteria {
  /// Whether the response should exclude chats.
  core.bool? excludeChats;

  /// The sender's display name or email address.
  core.String? from;

  /// Whether the message has any attachment.
  core.bool? hasAttachment;

  /// Only return messages not matching the specified query.
  ///
  /// Supports the same query format as the Gmail search box. For example,
  /// `"from:someuser@example.com rfc822msgid: is:unread"`.
  core.String? negatedQuery;

  /// Only return messages matching the specified query.
  ///
  /// Supports the same query format as the Gmail search box. For example,
  /// `"from:someuser@example.com rfc822msgid: is:unread"`.
  core.String? query;

  /// The size of the entire RFC822 message in bytes, including all headers and
  /// attachments.
  core.int? size;

  /// How the message size in bytes should be in relation to the size field.
  /// Possible string values are:
  /// - "unspecified"
  /// - "smaller" : Find messages smaller than the given size.
  /// - "larger" : Find messages larger than the given size.
  core.String? sizeComparison;

  /// Case-insensitive phrase found in the message's subject.
  ///
  /// Trailing and leading whitespace are be trimmed and adjacent spaces are
  /// collapsed.
  core.String? subject;

  /// The recipient's display name or email address.
  ///
  /// Includes recipients in the "to", "cc", and "bcc" header fields. You can
  /// use simply the local part of the email address. For example, "example" and
  /// "example@" both match "example@gmail.com". This field is case-insensitive.
  core.String? to;

  FilterCriteria({
    this.excludeChats,
    this.from,
    this.hasAttachment,
    this.negatedQuery,
    this.query,
    this.size,
    this.sizeComparison,
    this.subject,
    this.to,
  });

  FilterCriteria.fromJson(core.Map json_)
      : this(
          excludeChats: json_.containsKey('excludeChats')
              ? json_['excludeChats'] as core.bool
              : null,
          from: json_.containsKey('from') ? json_['from'] as core.String : null,
          hasAttachment: json_.containsKey('hasAttachment')
              ? json_['hasAttachment'] as core.bool
              : null,
          negatedQuery: json_.containsKey('negatedQuery')
              ? json_['negatedQuery'] as core.String
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          size: json_.containsKey('size') ? json_['size'] as core.int : null,
          sizeComparison: json_.containsKey('sizeComparison')
              ? json_['sizeComparison'] as core.String
              : null,
          subject: json_.containsKey('subject')
              ? json_['subject'] as core.String
              : null,
          to: json_.containsKey('to') ? json_['to'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludeChats != null) 'excludeChats': excludeChats!,
        if (from != null) 'from': from!,
        if (hasAttachment != null) 'hasAttachment': hasAttachment!,
        if (negatedQuery != null) 'negatedQuery': negatedQuery!,
        if (query != null) 'query': query!,
        if (size != null) 'size': size!,
        if (sizeComparison != null) 'sizeComparison': sizeComparison!,
        if (subject != null) 'subject': subject!,
        if (to != null) 'to': to!,
      };
}

/// Settings for a forwarding address.
class ForwardingAddress {
  /// An email address to which messages can be forwarded.
  core.String? forwardingEmail;

  /// Indicates whether this address has been verified and is usable for
  /// forwarding.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "verificationStatusUnspecified" : Unspecified verification status.
  /// - "accepted" : The address is ready to use for forwarding.
  /// - "pending" : The address is awaiting verification by the owner.
  core.String? verificationStatus;

  ForwardingAddress({
    this.forwardingEmail,
    this.verificationStatus,
  });

  ForwardingAddress.fromJson(core.Map json_)
      : this(
          forwardingEmail: json_.containsKey('forwardingEmail')
              ? json_['forwardingEmail'] as core.String
              : null,
          verificationStatus: json_.containsKey('verificationStatus')
              ? json_['verificationStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forwardingEmail != null) 'forwardingEmail': forwardingEmail!,
        if (verificationStatus != null)
          'verificationStatus': verificationStatus!,
      };
}

/// A record of a change to the user's mailbox.
///
/// Each history change may affect multiple messages in multiple ways.
class History {
  /// The mailbox sequence ID.
  core.String? id;

  /// Labels added to messages in this history record.
  core.List<HistoryLabelAdded>? labelsAdded;

  /// Labels removed from messages in this history record.
  core.List<HistoryLabelRemoved>? labelsRemoved;

  /// List of messages changed in this history record.
  ///
  /// The fields for specific change types, such as `messagesAdded` may
  /// duplicate messages in this field. We recommend using the specific
  /// change-type fields instead of this.
  core.List<Message>? messages;

  /// Messages added to the mailbox in this history record.
  core.List<HistoryMessageAdded>? messagesAdded;

  /// Messages deleted (not Trashed) from the mailbox in this history record.
  core.List<HistoryMessageDeleted>? messagesDeleted;

  History({
    this.id,
    this.labelsAdded,
    this.labelsRemoved,
    this.messages,
    this.messagesAdded,
    this.messagesDeleted,
  });

  History.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labelsAdded: json_.containsKey('labelsAdded')
              ? (json_['labelsAdded'] as core.List)
                  .map((value) => HistoryLabelAdded.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labelsRemoved: json_.containsKey('labelsRemoved')
              ? (json_['labelsRemoved'] as core.List)
                  .map((value) => HistoryLabelRemoved.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          messages: json_.containsKey('messages')
              ? (json_['messages'] as core.List)
                  .map((value) => Message.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          messagesAdded: json_.containsKey('messagesAdded')
              ? (json_['messagesAdded'] as core.List)
                  .map((value) => HistoryMessageAdded.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          messagesDeleted: json_.containsKey('messagesDeleted')
              ? (json_['messagesDeleted'] as core.List)
                  .map((value) => HistoryMessageDeleted.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (labelsAdded != null) 'labelsAdded': labelsAdded!,
        if (labelsRemoved != null) 'labelsRemoved': labelsRemoved!,
        if (messages != null) 'messages': messages!,
        if (messagesAdded != null) 'messagesAdded': messagesAdded!,
        if (messagesDeleted != null) 'messagesDeleted': messagesDeleted!,
      };
}

class HistoryLabelAdded {
  /// Label IDs added to the message.
  core.List<core.String>? labelIds;
  Message? message;

  HistoryLabelAdded({
    this.labelIds,
    this.message,
  });

  HistoryLabelAdded.fromJson(core.Map json_)
      : this(
          labelIds: json_.containsKey('labelIds')
              ? (json_['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelIds != null) 'labelIds': labelIds!,
        if (message != null) 'message': message!,
      };
}

class HistoryLabelRemoved {
  /// Label IDs removed from the message.
  core.List<core.String>? labelIds;
  Message? message;

  HistoryLabelRemoved({
    this.labelIds,
    this.message,
  });

  HistoryLabelRemoved.fromJson(core.Map json_)
      : this(
          labelIds: json_.containsKey('labelIds')
              ? (json_['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelIds != null) 'labelIds': labelIds!,
        if (message != null) 'message': message!,
      };
}

class HistoryMessageAdded {
  Message? message;

  HistoryMessageAdded({
    this.message,
  });

  HistoryMessageAdded.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
      };
}

class HistoryMessageDeleted {
  Message? message;

  HistoryMessageDeleted({
    this.message,
  });

  HistoryMessageDeleted.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
      };
}

/// IMAP settings for an account.
class ImapSettings {
  /// If this value is true, Gmail will immediately expunge a message when it is
  /// marked as deleted in IMAP.
  ///
  /// Otherwise, Gmail will wait for an update from the client before expunging
  /// messages marked as deleted.
  core.bool? autoExpunge;

  /// Whether IMAP is enabled for the account.
  core.bool? enabled;

  /// The action that will be executed on a message when it is marked as deleted
  /// and expunged from the last visible IMAP folder.
  /// Possible string values are:
  /// - "expungeBehaviorUnspecified" : Unspecified behavior.
  /// - "archive" : Archive messages marked as deleted.
  /// - "trash" : Move messages marked as deleted to the trash.
  /// - "deleteForever" : Immediately and permanently delete messages marked as
  /// deleted. The expunged messages cannot be recovered.
  core.String? expungeBehavior;

  /// An optional limit on the number of messages that an IMAP folder may
  /// contain.
  ///
  /// Legal values are 0, 1000, 2000, 5000 or 10000. A value of zero is
  /// interpreted to mean that there is no limit.
  core.int? maxFolderSize;

  ImapSettings({
    this.autoExpunge,
    this.enabled,
    this.expungeBehavior,
    this.maxFolderSize,
  });

  ImapSettings.fromJson(core.Map json_)
      : this(
          autoExpunge: json_.containsKey('autoExpunge')
              ? json_['autoExpunge'] as core.bool
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          expungeBehavior: json_.containsKey('expungeBehavior')
              ? json_['expungeBehavior'] as core.String
              : null,
          maxFolderSize: json_.containsKey('maxFolderSize')
              ? json_['maxFolderSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoExpunge != null) 'autoExpunge': autoExpunge!,
        if (enabled != null) 'enabled': enabled!,
        if (expungeBehavior != null) 'expungeBehavior': expungeBehavior!,
        if (maxFolderSize != null) 'maxFolderSize': maxFolderSize!,
      };
}

/// Labels are used to categorize messages and threads within the user's
/// mailbox.
///
/// The maximum number of labels supported for a user's mailbox is 10,000.
class Label {
  /// The color to assign to the label.
  ///
  /// Color is only available for labels that have their `type` set to `user`.
  LabelColor? color;

  /// The immutable ID of the label.
  core.String? id;

  /// The visibility of the label in the label list in the Gmail web interface.
  /// Possible string values are:
  /// - "labelShow" : Show the label in the label list.
  /// - "labelShowIfUnread" : Show the label if there are any unread messages
  /// with that label.
  /// - "labelHide" : Do not show the label in the label list.
  core.String? labelListVisibility;

  /// The visibility of messages with this label in the message list in the
  /// Gmail web interface.
  /// Possible string values are:
  /// - "show" : Show the label in the message list.
  /// - "hide" : Do not show the label in the message list.
  core.String? messageListVisibility;

  /// The total number of messages with the label.
  core.int? messagesTotal;

  /// The number of unread messages with the label.
  core.int? messagesUnread;

  /// The display name of the label.
  core.String? name;

  /// The total number of threads with the label.
  core.int? threadsTotal;

  /// The number of unread threads with the label.
  core.int? threadsUnread;

  /// The owner type for the label.
  ///
  /// User labels are created by the user and can be modified and deleted by the
  /// user and can be applied to any message or thread. System labels are
  /// internally created and cannot be added, modified, or deleted. System
  /// labels may be able to be applied to or removed from messages and threads
  /// under some circumstances but this is not guaranteed. For example, users
  /// can apply and remove the `INBOX` and `UNREAD` labels from messages and
  /// threads, but cannot apply or remove the `DRAFTS` or `SENT` labels from
  /// messages or threads.
  /// Possible string values are:
  /// - "system" : Labels created by Gmail.
  /// - "user" : Custom labels created by the user or application.
  core.String? type;

  Label({
    this.color,
    this.id,
    this.labelListVisibility,
    this.messageListVisibility,
    this.messagesTotal,
    this.messagesUnread,
    this.name,
    this.threadsTotal,
    this.threadsUnread,
    this.type,
  });

  Label.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? LabelColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labelListVisibility: json_.containsKey('labelListVisibility')
              ? json_['labelListVisibility'] as core.String
              : null,
          messageListVisibility: json_.containsKey('messageListVisibility')
              ? json_['messageListVisibility'] as core.String
              : null,
          messagesTotal: json_.containsKey('messagesTotal')
              ? json_['messagesTotal'] as core.int
              : null,
          messagesUnread: json_.containsKey('messagesUnread')
              ? json_['messagesUnread'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          threadsTotal: json_.containsKey('threadsTotal')
              ? json_['threadsTotal'] as core.int
              : null,
          threadsUnread: json_.containsKey('threadsUnread')
              ? json_['threadsUnread'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (id != null) 'id': id!,
        if (labelListVisibility != null)
          'labelListVisibility': labelListVisibility!,
        if (messageListVisibility != null)
          'messageListVisibility': messageListVisibility!,
        if (messagesTotal != null) 'messagesTotal': messagesTotal!,
        if (messagesUnread != null) 'messagesUnread': messagesUnread!,
        if (name != null) 'name': name!,
        if (threadsTotal != null) 'threadsTotal': threadsTotal!,
        if (threadsUnread != null) 'threadsUnread': threadsUnread!,
        if (type != null) 'type': type!,
      };
}

class LabelColor {
  /// The background color represented as hex string #RRGGBB (ex #000000).
  ///
  /// This field is required in order to set the color of a label. Only the
  /// following predefined set of color values are allowed: \#000000, #434343,
  /// #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff, \#fb4c2f, #ffad47,
  /// #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3, \#f6c5be, #ffe6c7,
  /// #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8, \#efa093, #ffd6a2,
  /// #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1, #fbc8d9, \#e66550, #ffbc6b,
  /// #fcda83, #44b984, #68dfa9, #6d9eeb, #b694e8, #f7a7c0, \#cc3a21, #eaa041,
  /// #f2c960, #149e60, #3dc789, #3c78d8, #8e63ce, #e07798, \#ac2b16, #cf8933,
  /// #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775, \#822111, #a46a21,
  /// #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c \#464646, #e7e7e7,
  /// #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff, \#711a36, #fbd3e0,
  /// #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5, \#594c05, #fbe983,
  /// #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1, \#c2c2c2, #4986e7,
  /// #2da2bb, #b99aff, #994a64, #f691b2, #ff7537, #ffad46, \#662e37, #ebdbde,
  /// #cca6ac, #094228, #42d692, #16a765
  core.String? backgroundColor;

  /// The text color of the label, represented as hex string.
  ///
  /// This field is required in order to set the color of a label. Only the
  /// following predefined set of color values are allowed: \#000000, #434343,
  /// #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff, \#fb4c2f, #ffad47,
  /// #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3, \#f6c5be, #ffe6c7,
  /// #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8, \#efa093, #ffd6a2,
  /// #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1, #fbc8d9, \#e66550, #ffbc6b,
  /// #fcda83, #44b984, #68dfa9, #6d9eeb, #b694e8, #f7a7c0, \#cc3a21, #eaa041,
  /// #f2c960, #149e60, #3dc789, #3c78d8, #8e63ce, #e07798, \#ac2b16, #cf8933,
  /// #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775, \#822111, #a46a21,
  /// #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c \#464646, #e7e7e7,
  /// #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff, \#711a36, #fbd3e0,
  /// #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5, \#594c05, #fbe983,
  /// #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1, \#c2c2c2, #4986e7,
  /// #2da2bb, #b99aff, #994a64, #f691b2, #ff7537, #ffad46, \#662e37, #ebdbde,
  /// #cca6ac, #094228, #42d692, #16a765
  core.String? textColor;

  LabelColor({
    this.backgroundColor,
    this.textColor,
  });

  LabelColor.fromJson(core.Map json_)
      : this(
          backgroundColor: json_.containsKey('backgroundColor')
              ? json_['backgroundColor'] as core.String
              : null,
          textColor: json_.containsKey('textColor')
              ? json_['textColor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (textColor != null) 'textColor': textColor!,
      };
}

/// Language settings for an account.
///
/// These settings correspond to the "Language settings" feature in the web
/// interface.
class LanguageSettings {
  /// The language to display Gmail in, formatted as an RFC 3066 Language Tag
  /// (for example `en-GB`, `fr` or `ja` for British English, French, or
  /// Japanese respectively).
  ///
  /// The set of languages supported by Gmail evolves over time, so please refer
  /// to the "Language" dropdown in the Gmail settings for all available
  /// options, as described in the language settings help article. A table of
  /// sample values is also provided in the Managing Language Settings guide Not
  /// all Gmail clients can display the same set of languages. In the case that
  /// a user's display language is not available for use on a particular client,
  /// said client automatically chooses to display in the closest supported
  /// variant (or a reasonable default).
  core.String? displayLanguage;

  LanguageSettings({
    this.displayLanguage,
  });

  LanguageSettings.fromJson(core.Map json_)
      : this(
          displayLanguage: json_.containsKey('displayLanguage')
              ? json_['displayLanguage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayLanguage != null) 'displayLanguage': displayLanguage!,
      };
}

/// Response for the ListDelegates method.
class ListDelegatesResponse {
  /// List of the user's delegates (with any verification status).
  ///
  /// If an account doesn't have delegates, this field doesn't appear.
  core.List<Delegate>? delegates;

  ListDelegatesResponse({
    this.delegates,
  });

  ListDelegatesResponse.fromJson(core.Map json_)
      : this(
          delegates: json_.containsKey('delegates')
              ? (json_['delegates'] as core.List)
                  .map((value) => Delegate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegates != null) 'delegates': delegates!,
      };
}

class ListDraftsResponse {
  /// List of drafts.
  ///
  /// Note that the `Message` property in each `Draft` resource only contains an
  /// `id` and a `threadId`. The messages.get method can fetch additional
  /// message details.
  core.List<Draft>? drafts;

  /// Token to retrieve the next page of results in the list.
  core.String? nextPageToken;

  /// Estimated total number of results.
  core.int? resultSizeEstimate;

  ListDraftsResponse({
    this.drafts,
    this.nextPageToken,
    this.resultSizeEstimate,
  });

  ListDraftsResponse.fromJson(core.Map json_)
      : this(
          drafts: json_.containsKey('drafts')
              ? (json_['drafts'] as core.List)
                  .map((value) => Draft.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          resultSizeEstimate: json_.containsKey('resultSizeEstimate')
              ? json_['resultSizeEstimate'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (drafts != null) 'drafts': drafts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resultSizeEstimate != null)
          'resultSizeEstimate': resultSizeEstimate!,
      };
}

/// Response for the ListFilters method.
class ListFiltersResponse {
  /// List of a user's filters.
  core.List<Filter>? filter;

  ListFiltersResponse({
    this.filter,
  });

  ListFiltersResponse.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? (json_['filter'] as core.List)
                  .map((value) => Filter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
      };
}

/// Response for the ListForwardingAddresses method.
class ListForwardingAddressesResponse {
  /// List of addresses that may be used for forwarding.
  core.List<ForwardingAddress>? forwardingAddresses;

  ListForwardingAddressesResponse({
    this.forwardingAddresses,
  });

  ListForwardingAddressesResponse.fromJson(core.Map json_)
      : this(
          forwardingAddresses: json_.containsKey('forwardingAddresses')
              ? (json_['forwardingAddresses'] as core.List)
                  .map((value) => ForwardingAddress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forwardingAddresses != null)
          'forwardingAddresses': forwardingAddresses!,
      };
}

class ListHistoryResponse {
  /// List of history records.
  ///
  /// Any `messages` contained in the response will typically only have `id` and
  /// `threadId` fields populated.
  core.List<History>? history;

  /// The ID of the mailbox's current history record.
  core.String? historyId;

  /// Page token to retrieve the next page of results in the list.
  core.String? nextPageToken;

  ListHistoryResponse({
    this.history,
    this.historyId,
    this.nextPageToken,
  });

  ListHistoryResponse.fromJson(core.Map json_)
      : this(
          history: json_.containsKey('history')
              ? (json_['history'] as core.List)
                  .map((value) => History.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          historyId: json_.containsKey('historyId')
              ? json_['historyId'] as core.String
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (history != null) 'history': history!,
        if (historyId != null) 'historyId': historyId!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListLabelsResponse {
  /// List of labels.
  ///
  /// Note that each label resource only contains an `id`, `name`,
  /// `messageListVisibility`, `labelListVisibility`, and `type`. The labels.get
  /// method can fetch additional label details.
  core.List<Label>? labels;

  ListLabelsResponse({
    this.labels,
  });

  ListLabelsResponse.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => Label.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

class ListMessagesResponse {
  /// List of messages.
  ///
  /// Note that each message resource contains only an `id` and a `threadId`.
  /// Additional message details can be fetched using the messages.get method.
  core.List<Message>? messages;

  /// Token to retrieve the next page of results in the list.
  core.String? nextPageToken;

  /// Estimated total number of results.
  core.int? resultSizeEstimate;

  ListMessagesResponse({
    this.messages,
    this.nextPageToken,
    this.resultSizeEstimate,
  });

  ListMessagesResponse.fromJson(core.Map json_)
      : this(
          messages: json_.containsKey('messages')
              ? (json_['messages'] as core.List)
                  .map((value) => Message.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          resultSizeEstimate: json_.containsKey('resultSizeEstimate')
              ? json_['resultSizeEstimate'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messages != null) 'messages': messages!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resultSizeEstimate != null)
          'resultSizeEstimate': resultSizeEstimate!,
      };
}

/// Response for the ListSendAs method.
class ListSendAsResponse {
  /// List of send-as aliases.
  core.List<SendAs>? sendAs;

  ListSendAsResponse({
    this.sendAs,
  });

  ListSendAsResponse.fromJson(core.Map json_)
      : this(
          sendAs: json_.containsKey('sendAs')
              ? (json_['sendAs'] as core.List)
                  .map((value) => SendAs.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sendAs != null) 'sendAs': sendAs!,
      };
}

class ListSmimeInfoResponse {
  /// List of SmimeInfo.
  core.List<SmimeInfo>? smimeInfo;

  ListSmimeInfoResponse({
    this.smimeInfo,
  });

  ListSmimeInfoResponse.fromJson(core.Map json_)
      : this(
          smimeInfo: json_.containsKey('smimeInfo')
              ? (json_['smimeInfo'] as core.List)
                  .map((value) => SmimeInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (smimeInfo != null) 'smimeInfo': smimeInfo!,
      };
}

class ListThreadsResponse {
  /// Page token to retrieve the next page of results in the list.
  core.String? nextPageToken;

  /// Estimated total number of results.
  core.int? resultSizeEstimate;

  /// List of threads.
  ///
  /// Note that each thread resource does not contain a list of `messages`. The
  /// list of `messages` for a given thread can be fetched using the threads.get
  /// method.
  core.List<Thread>? threads;

  ListThreadsResponse({
    this.nextPageToken,
    this.resultSizeEstimate,
    this.threads,
  });

  ListThreadsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          resultSizeEstimate: json_.containsKey('resultSizeEstimate')
              ? json_['resultSizeEstimate'] as core.int
              : null,
          threads: json_.containsKey('threads')
              ? (json_['threads'] as core.List)
                  .map((value) => Thread.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resultSizeEstimate != null)
          'resultSizeEstimate': resultSizeEstimate!,
        if (threads != null) 'threads': threads!,
      };
}

/// An email message.
class Message {
  /// The ID of the last history record that modified this message.
  core.String? historyId;

  /// The immutable ID of the message.
  core.String? id;

  /// The internal message creation timestamp (epoch ms), which determines
  /// ordering in the inbox.
  ///
  /// For normal SMTP-received email, this represents the time the message was
  /// originally accepted by Google, which is more reliable than the `Date`
  /// header. However, for API-migrated mail, it can be configured by client to
  /// be based on the `Date` header.
  core.String? internalDate;

  /// List of IDs of labels applied to this message.
  core.List<core.String>? labelIds;

  /// The parsed email structure in the message parts.
  MessagePart? payload;

  /// The entire email message in an RFC 2822 formatted and base64url encoded
  /// string.
  ///
  /// Returned in `messages.get` and `drafts.get` responses when the
  /// `format=RAW` parameter is supplied.
  core.String? raw;
  core.List<core.int> get rawAsBytes => convert.base64.decode(raw!);

  set rawAsBytes(core.List<core.int> bytes_) {
    raw =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Estimated size in bytes of the message.
  core.int? sizeEstimate;

  /// A short part of the message text.
  core.String? snippet;

  /// The ID of the thread the message belongs to.
  ///
  /// To add a message or draft to a thread, the following criteria must be met:
  /// 1. The requested `threadId` must be specified on the `Message` or
  /// `Draft.Message` you supply with your request. 2. The `References` and
  /// `In-Reply-To` headers must be set in compliance with the
  /// [RFC 2822](https://tools.ietf.org/html/rfc2822) standard. 3. The `Subject`
  /// headers must match.
  core.String? threadId;

  Message({
    this.historyId,
    this.id,
    this.internalDate,
    this.labelIds,
    this.payload,
    this.raw,
    this.sizeEstimate,
    this.snippet,
    this.threadId,
  });

  Message.fromJson(core.Map json_)
      : this(
          historyId: json_.containsKey('historyId')
              ? json_['historyId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          internalDate: json_.containsKey('internalDate')
              ? json_['internalDate'] as core.String
              : null,
          labelIds: json_.containsKey('labelIds')
              ? (json_['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          payload: json_.containsKey('payload')
              ? MessagePart.fromJson(
                  json_['payload'] as core.Map<core.String, core.dynamic>)
              : null,
          raw: json_.containsKey('raw') ? json_['raw'] as core.String : null,
          sizeEstimate: json_.containsKey('sizeEstimate')
              ? json_['sizeEstimate'] as core.int
              : null,
          snippet: json_.containsKey('snippet')
              ? json_['snippet'] as core.String
              : null,
          threadId: json_.containsKey('threadId')
              ? json_['threadId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (historyId != null) 'historyId': historyId!,
        if (id != null) 'id': id!,
        if (internalDate != null) 'internalDate': internalDate!,
        if (labelIds != null) 'labelIds': labelIds!,
        if (payload != null) 'payload': payload!,
        if (raw != null) 'raw': raw!,
        if (sizeEstimate != null) 'sizeEstimate': sizeEstimate!,
        if (snippet != null) 'snippet': snippet!,
        if (threadId != null) 'threadId': threadId!,
      };
}

/// A single MIME message part.
class MessagePart {
  /// The message part body for this part, which may be empty for container MIME
  /// message parts.
  MessagePartBody? body;

  /// The filename of the attachment.
  ///
  /// Only present if this message part represents an attachment.
  core.String? filename;

  /// List of headers on this message part.
  ///
  /// For the top-level message part, representing the entire message payload,
  /// it will contain the standard RFC 2822 email headers such as `To`, `From`,
  /// and `Subject`.
  core.List<MessagePartHeader>? headers;

  /// The MIME type of the message part.
  core.String? mimeType;

  /// The immutable ID of the message part.
  core.String? partId;

  /// The child MIME message parts of this part.
  ///
  /// This only applies to container MIME message parts, for example `multipart
  /// / * `. For non- container MIME message part types, such as `text/plain`,
  /// this field is empty. For more information, see RFC 1521.
  core.List<MessagePart>? parts;

  MessagePart({
    this.body,
    this.filename,
    this.headers,
    this.mimeType,
    this.partId,
    this.parts,
  });

  MessagePart.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body')
              ? MessagePartBody.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
          filename: json_.containsKey('filename')
              ? json_['filename'] as core.String
              : null,
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => MessagePartHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          partId: json_.containsKey('partId')
              ? json_['partId'] as core.String
              : null,
          parts: json_.containsKey('parts')
              ? (json_['parts'] as core.List)
                  .map((value) => MessagePart.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (filename != null) 'filename': filename!,
        if (headers != null) 'headers': headers!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (partId != null) 'partId': partId!,
        if (parts != null) 'parts': parts!,
      };
}

/// The body of a single MIME message part.
class MessagePartBody {
  /// When present, contains the ID of an external attachment that can be
  /// retrieved in a separate `messages.attachments.get` request.
  ///
  /// When not present, the entire content of the message part body is contained
  /// in the data field.
  core.String? attachmentId;

  /// The body data of a MIME message part as a base64url encoded string.
  ///
  /// May be empty for MIME container types that have no message body or when
  /// the body data is sent as a separate attachment. An attachment ID is
  /// present if the body data is contained in a separate attachment.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of bytes for the message part data (encoding notwithstanding).
  core.int? size;

  MessagePartBody({
    this.attachmentId,
    this.data,
    this.size,
  });

  MessagePartBody.fromJson(core.Map json_)
      : this(
          attachmentId: json_.containsKey('attachmentId')
              ? json_['attachmentId'] as core.String
              : null,
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          size: json_.containsKey('size') ? json_['size'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachmentId != null) 'attachmentId': attachmentId!,
        if (data != null) 'data': data!,
        if (size != null) 'size': size!,
      };
}

class MessagePartHeader {
  /// The name of the header before the `:` separator.
  ///
  /// For example, `To`.
  core.String? name;

  /// The value of the header after the `:` separator.
  ///
  /// For example, `someuser@example.com`.
  core.String? value;

  MessagePartHeader({
    this.name,
    this.value,
  });

  MessagePartHeader.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

class ModifyMessageRequest {
  /// A list of IDs of labels to add to this message.
  ///
  /// You can add up to 100 labels with each update.
  core.List<core.String>? addLabelIds;

  /// A list IDs of labels to remove from this message.
  ///
  /// You can remove up to 100 labels with each update.
  core.List<core.String>? removeLabelIds;

  ModifyMessageRequest({
    this.addLabelIds,
    this.removeLabelIds,
  });

  ModifyMessageRequest.fromJson(core.Map json_)
      : this(
          addLabelIds: json_.containsKey('addLabelIds')
              ? (json_['addLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          removeLabelIds: json_.containsKey('removeLabelIds')
              ? (json_['removeLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addLabelIds != null) 'addLabelIds': addLabelIds!,
        if (removeLabelIds != null) 'removeLabelIds': removeLabelIds!,
      };
}

class ModifyThreadRequest {
  /// A list of IDs of labels to add to this thread.
  ///
  /// You can add up to 100 labels with each update.
  core.List<core.String>? addLabelIds;

  /// A list of IDs of labels to remove from this thread.
  ///
  /// You can remove up to 100 labels with each update.
  core.List<core.String>? removeLabelIds;

  ModifyThreadRequest({
    this.addLabelIds,
    this.removeLabelIds,
  });

  ModifyThreadRequest.fromJson(core.Map json_)
      : this(
          addLabelIds: json_.containsKey('addLabelIds')
              ? (json_['addLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          removeLabelIds: json_.containsKey('removeLabelIds')
              ? (json_['removeLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addLabelIds != null) 'addLabelIds': addLabelIds!,
        if (removeLabelIds != null) 'removeLabelIds': removeLabelIds!,
      };
}

/// POP settings for an account.
class PopSettings {
  /// The range of messages which are accessible via POP.
  /// Possible string values are:
  /// - "accessWindowUnspecified" : Unspecified range.
  /// - "disabled" : Indicates that no messages are accessible via POP.
  /// - "fromNowOn" : Indicates that unfetched messages received after some past
  /// point in time are accessible via POP.
  /// - "allMail" : Indicates that all unfetched messages are accessible via
  /// POP.
  core.String? accessWindow;

  /// The action that will be executed on a message after it has been fetched
  /// via POP.
  /// Possible string values are:
  /// - "dispositionUnspecified" : Unspecified disposition.
  /// - "leaveInInbox" : Leave the message in the `INBOX`.
  /// - "archive" : Archive the message.
  /// - "trash" : Move the message to the `TRASH`.
  /// - "markRead" : Leave the message in the `INBOX` and mark it as read.
  core.String? disposition;

  PopSettings({
    this.accessWindow,
    this.disposition,
  });

  PopSettings.fromJson(core.Map json_)
      : this(
          accessWindow: json_.containsKey('accessWindow')
              ? json_['accessWindow'] as core.String
              : null,
          disposition: json_.containsKey('disposition')
              ? json_['disposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessWindow != null) 'accessWindow': accessWindow!,
        if (disposition != null) 'disposition': disposition!,
      };
}

/// Profile for a Gmail user.
class Profile {
  /// The user's email address.
  core.String? emailAddress;

  /// The ID of the mailbox's current history record.
  core.String? historyId;

  /// The total number of messages in the mailbox.
  core.int? messagesTotal;

  /// The total number of threads in the mailbox.
  core.int? threadsTotal;

  Profile({
    this.emailAddress,
    this.historyId,
    this.messagesTotal,
    this.threadsTotal,
  });

  Profile.fromJson(core.Map json_)
      : this(
          emailAddress: json_.containsKey('emailAddress')
              ? json_['emailAddress'] as core.String
              : null,
          historyId: json_.containsKey('historyId')
              ? json_['historyId'] as core.String
              : null,
          messagesTotal: json_.containsKey('messagesTotal')
              ? json_['messagesTotal'] as core.int
              : null,
          threadsTotal: json_.containsKey('threadsTotal')
              ? json_['threadsTotal'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (historyId != null) 'historyId': historyId!,
        if (messagesTotal != null) 'messagesTotal': messagesTotal!,
        if (threadsTotal != null) 'threadsTotal': threadsTotal!,
      };
}

/// Settings associated with a send-as alias, which can be either the primary
/// login address associated with the account or a custom "from" address.
///
/// Send-as aliases correspond to the "Send Mail As" feature in the web
/// interface.
class SendAs {
  /// A name that appears in the "From:" header for mail sent using this alias.
  ///
  /// For custom "from" addresses, when this is empty, Gmail will populate the
  /// "From:" header with the name that is used for the primary address
  /// associated with the account. If the admin has disabled the ability for
  /// users to update their name format, requests to update this field for the
  /// primary login will silently fail.
  core.String? displayName;

  /// Whether this address is selected as the default "From:" address in
  /// situations such as composing a new message or sending a vacation
  /// auto-reply.
  ///
  /// Every Gmail account has exactly one default send-as address, so the only
  /// legal value that clients may write to this field is `true`. Changing this
  /// from `false` to `true` for an address will result in this field becoming
  /// `false` for the other previous default address.
  core.bool? isDefault;

  /// Whether this address is the primary address used to login to the account.
  ///
  /// Every Gmail account has exactly one primary address, and it cannot be
  /// deleted from the collection of send-as aliases. This field is read-only.
  core.bool? isPrimary;

  /// An optional email address that is included in a "Reply-To:" header for
  /// mail sent using this alias.
  ///
  /// If this is empty, Gmail will not generate a "Reply-To:" header.
  core.String? replyToAddress;

  /// The email address that appears in the "From:" header for mail sent using
  /// this alias.
  ///
  /// This is read-only for all operations except create.
  core.String? sendAsEmail;

  /// An optional HTML signature that is included in messages composed with this
  /// alias in the Gmail web UI.
  ///
  /// This signature is added to new emails only.
  core.String? signature;

  /// An optional SMTP service that will be used as an outbound relay for mail
  /// sent using this alias.
  ///
  /// If this is empty, outbound mail will be sent directly from Gmail's servers
  /// to the destination SMTP service. This setting only applies to custom
  /// "from" aliases.
  SmtpMsa? smtpMsa;

  /// Whether Gmail should treat this address as an alias for the user's primary
  /// email address.
  ///
  /// This setting only applies to custom "from" aliases.
  core.bool? treatAsAlias;

  /// Indicates whether this address has been verified for use as a send-as
  /// alias.
  ///
  /// Read-only. This setting only applies to custom "from" aliases.
  /// Possible string values are:
  /// - "verificationStatusUnspecified" : Unspecified verification status.
  /// - "accepted" : The address is ready to use as a send-as alias.
  /// - "pending" : The address is awaiting verification by the owner.
  core.String? verificationStatus;

  SendAs({
    this.displayName,
    this.isDefault,
    this.isPrimary,
    this.replyToAddress,
    this.sendAsEmail,
    this.signature,
    this.smtpMsa,
    this.treatAsAlias,
    this.verificationStatus,
  });

  SendAs.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          isDefault: json_.containsKey('isDefault')
              ? json_['isDefault'] as core.bool
              : null,
          isPrimary: json_.containsKey('isPrimary')
              ? json_['isPrimary'] as core.bool
              : null,
          replyToAddress: json_.containsKey('replyToAddress')
              ? json_['replyToAddress'] as core.String
              : null,
          sendAsEmail: json_.containsKey('sendAsEmail')
              ? json_['sendAsEmail'] as core.String
              : null,
          signature: json_.containsKey('signature')
              ? json_['signature'] as core.String
              : null,
          smtpMsa: json_.containsKey('smtpMsa')
              ? SmtpMsa.fromJson(
                  json_['smtpMsa'] as core.Map<core.String, core.dynamic>)
              : null,
          treatAsAlias: json_.containsKey('treatAsAlias')
              ? json_['treatAsAlias'] as core.bool
              : null,
          verificationStatus: json_.containsKey('verificationStatus')
              ? json_['verificationStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (isDefault != null) 'isDefault': isDefault!,
        if (isPrimary != null) 'isPrimary': isPrimary!,
        if (replyToAddress != null) 'replyToAddress': replyToAddress!,
        if (sendAsEmail != null) 'sendAsEmail': sendAsEmail!,
        if (signature != null) 'signature': signature!,
        if (smtpMsa != null) 'smtpMsa': smtpMsa!,
        if (treatAsAlias != null) 'treatAsAlias': treatAsAlias!,
        if (verificationStatus != null)
          'verificationStatus': verificationStatus!,
      };
}

/// An S/MIME email config.
class SmimeInfo {
  /// Encrypted key password, when key is encrypted.
  core.String? encryptedKeyPassword;

  /// When the certificate expires (in milliseconds since epoch).
  core.String? expiration;

  /// The immutable ID for the SmimeInfo.
  core.String? id;

  /// Whether this SmimeInfo is the default one for this user's send-as address.
  core.bool? isDefault;

  /// The S/MIME certificate issuer's common name.
  core.String? issuerCn;

  /// PEM formatted X509 concatenated certificate string (standard base64
  /// encoding).
  ///
  /// Format used for returning key, which includes public key as well as
  /// certificate chain (not private key).
  core.String? pem;

  /// PKCS#12 format containing a single private/public key pair and certificate
  /// chain.
  ///
  /// This format is only accepted from client for creating a new SmimeInfo and
  /// is never returned, because the private key is not intended to be exported.
  /// PKCS#12 may be encrypted, in which case encryptedKeyPassword should be set
  /// appropriately.
  core.String? pkcs12;
  core.List<core.int> get pkcs12AsBytes => convert.base64.decode(pkcs12!);

  set pkcs12AsBytes(core.List<core.int> bytes_) {
    pkcs12 =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  SmimeInfo({
    this.encryptedKeyPassword,
    this.expiration,
    this.id,
    this.isDefault,
    this.issuerCn,
    this.pem,
    this.pkcs12,
  });

  SmimeInfo.fromJson(core.Map json_)
      : this(
          encryptedKeyPassword: json_.containsKey('encryptedKeyPassword')
              ? json_['encryptedKeyPassword'] as core.String
              : null,
          expiration: json_.containsKey('expiration')
              ? json_['expiration'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          isDefault: json_.containsKey('isDefault')
              ? json_['isDefault'] as core.bool
              : null,
          issuerCn: json_.containsKey('issuerCn')
              ? json_['issuerCn'] as core.String
              : null,
          pem: json_.containsKey('pem') ? json_['pem'] as core.String : null,
          pkcs12: json_.containsKey('pkcs12')
              ? json_['pkcs12'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptedKeyPassword != null)
          'encryptedKeyPassword': encryptedKeyPassword!,
        if (expiration != null) 'expiration': expiration!,
        if (id != null) 'id': id!,
        if (isDefault != null) 'isDefault': isDefault!,
        if (issuerCn != null) 'issuerCn': issuerCn!,
        if (pem != null) 'pem': pem!,
        if (pkcs12 != null) 'pkcs12': pkcs12!,
      };
}

/// Configuration for communication with an SMTP service.
class SmtpMsa {
  /// The hostname of the SMTP service.
  ///
  /// Required.
  core.String? host;

  /// The password that will be used for authentication with the SMTP service.
  ///
  /// This is a write-only field that can be specified in requests to create or
  /// update SendAs settings; it is never populated in responses.
  core.String? password;

  /// The port of the SMTP service.
  ///
  /// Required.
  core.int? port;

  /// The protocol that will be used to secure communication with the SMTP
  /// service.
  ///
  /// Required.
  /// Possible string values are:
  /// - "securityModeUnspecified" : Unspecified security mode.
  /// - "none" : Communication with the remote SMTP service is unsecured.
  /// Requires port 25.
  /// - "ssl" : Communication with the remote SMTP service is secured using SSL.
  /// - "starttls" : Communication with the remote SMTP service is secured using
  /// STARTTLS.
  core.String? securityMode;

  /// The username that will be used for authentication with the SMTP service.
  ///
  /// This is a write-only field that can be specified in requests to create or
  /// update SendAs settings; it is never populated in responses.
  core.String? username;

  SmtpMsa({
    this.host,
    this.password,
    this.port,
    this.securityMode,
    this.username,
  });

  SmtpMsa.fromJson(core.Map json_)
      : this(
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          securityMode: json_.containsKey('securityMode')
              ? json_['securityMode'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (securityMode != null) 'securityMode': securityMode!,
        if (username != null) 'username': username!,
      };
}

/// A collection of messages representing a conversation.
class Thread {
  /// The ID of the last history record that modified this thread.
  core.String? historyId;

  /// The unique ID of the thread.
  core.String? id;

  /// The list of messages in the thread.
  core.List<Message>? messages;

  /// A short part of the message text.
  core.String? snippet;

  Thread({
    this.historyId,
    this.id,
    this.messages,
    this.snippet,
  });

  Thread.fromJson(core.Map json_)
      : this(
          historyId: json_.containsKey('historyId')
              ? json_['historyId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          messages: json_.containsKey('messages')
              ? (json_['messages'] as core.List)
                  .map((value) => Message.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          snippet: json_.containsKey('snippet')
              ? json_['snippet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (historyId != null) 'historyId': historyId!,
        if (id != null) 'id': id!,
        if (messages != null) 'messages': messages!,
        if (snippet != null) 'snippet': snippet!,
      };
}

/// Vacation auto-reply settings for an account.
///
/// These settings correspond to the "Vacation responder" feature in the web
/// interface.
class VacationSettings {
  /// Flag that controls whether Gmail automatically replies to messages.
  core.bool? enableAutoReply;

  /// An optional end time for sending auto-replies (epoch ms).
  ///
  /// When this is specified, Gmail will automatically reply only to messages
  /// that it receives before the end time. If both `startTime` and `endTime`
  /// are specified, `startTime` must precede `endTime`.
  core.String? endTime;

  /// Response body in HTML format.
  ///
  /// Gmail will sanitize the HTML before storing it. If both
  /// `response_body_plain_text` and `response_body_html` are specified,
  /// `response_body_html` will be used.
  core.String? responseBodyHtml;

  /// Response body in plain text format.
  ///
  /// If both `response_body_plain_text` and `response_body_html` are specified,
  /// `response_body_html` will be used.
  core.String? responseBodyPlainText;

  /// Optional text to prepend to the subject line in vacation responses.
  ///
  /// In order to enable auto-replies, either the response subject or the
  /// response body must be nonempty.
  core.String? responseSubject;

  /// Flag that determines whether responses are sent to recipients who are not
  /// in the user's list of contacts.
  core.bool? restrictToContacts;

  /// Flag that determines whether responses are sent to recipients who are
  /// outside of the user's domain.
  ///
  /// This feature is only available for G Suite users.
  core.bool? restrictToDomain;

  /// An optional start time for sending auto-replies (epoch ms).
  ///
  /// When this is specified, Gmail will automatically reply only to messages
  /// that it receives after the start time. If both `startTime` and `endTime`
  /// are specified, `startTime` must precede `endTime`.
  core.String? startTime;

  VacationSettings({
    this.enableAutoReply,
    this.endTime,
    this.responseBodyHtml,
    this.responseBodyPlainText,
    this.responseSubject,
    this.restrictToContacts,
    this.restrictToDomain,
    this.startTime,
  });

  VacationSettings.fromJson(core.Map json_)
      : this(
          enableAutoReply: json_.containsKey('enableAutoReply')
              ? json_['enableAutoReply'] as core.bool
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          responseBodyHtml: json_.containsKey('responseBodyHtml')
              ? json_['responseBodyHtml'] as core.String
              : null,
          responseBodyPlainText: json_.containsKey('responseBodyPlainText')
              ? json_['responseBodyPlainText'] as core.String
              : null,
          responseSubject: json_.containsKey('responseSubject')
              ? json_['responseSubject'] as core.String
              : null,
          restrictToContacts: json_.containsKey('restrictToContacts')
              ? json_['restrictToContacts'] as core.bool
              : null,
          restrictToDomain: json_.containsKey('restrictToDomain')
              ? json_['restrictToDomain'] as core.bool
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableAutoReply != null) 'enableAutoReply': enableAutoReply!,
        if (endTime != null) 'endTime': endTime!,
        if (responseBodyHtml != null) 'responseBodyHtml': responseBodyHtml!,
        if (responseBodyPlainText != null)
          'responseBodyPlainText': responseBodyPlainText!,
        if (responseSubject != null) 'responseSubject': responseSubject!,
        if (restrictToContacts != null)
          'restrictToContacts': restrictToContacts!,
        if (restrictToDomain != null) 'restrictToDomain': restrictToDomain!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Set up or update a new push notification watch on this user's mailbox.
class WatchRequest {
  /// Filtering behavior of labelIds list specified.
  /// Possible string values are:
  /// - "include" : Only get push notifications for message changes relating to
  /// labelIds specified.
  /// - "exclude" : Get push notifications for all message changes except those
  /// relating to labelIds specified.
  core.String? labelFilterAction;

  /// List of label_ids to restrict notifications about.
  ///
  /// By default, if unspecified, all changes are pushed out. If specified then
  /// dictates which labels are required for a push notification to be
  /// generated.
  core.List<core.String>? labelIds;

  /// A fully qualified Google Cloud Pub/Sub API topic name to publish the
  /// events to.
  ///
  /// This topic name **must** already exist in Cloud Pub/Sub and you **must**
  /// have already granted gmail "publish" permission on it. For example,
  /// "projects/my-project-identifier/topics/my-topic-name" (using the Cloud
  /// Pub/Sub "v1" topic naming format). Note that the "my-project-identifier"
  /// portion must exactly match your Google developer project id (the one
  /// executing this watch request).
  core.String? topicName;

  WatchRequest({
    this.labelFilterAction,
    this.labelIds,
    this.topicName,
  });

  WatchRequest.fromJson(core.Map json_)
      : this(
          labelFilterAction: json_.containsKey('labelFilterAction')
              ? json_['labelFilterAction'] as core.String
              : null,
          labelIds: json_.containsKey('labelIds')
              ? (json_['labelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          topicName: json_.containsKey('topicName')
              ? json_['topicName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelFilterAction != null) 'labelFilterAction': labelFilterAction!,
        if (labelIds != null) 'labelIds': labelIds!,
        if (topicName != null) 'topicName': topicName!,
      };
}

/// Push notification watch response.
class WatchResponse {
  /// When Gmail will stop sending notifications for mailbox updates (epoch
  /// millis).
  ///
  /// Call `watch` again before this time to renew the watch.
  core.String? expiration;

  /// The ID of the mailbox's current history record.
  core.String? historyId;

  WatchResponse({
    this.expiration,
    this.historyId,
  });

  WatchResponse.fromJson(core.Map json_)
      : this(
          expiration: json_.containsKey('expiration')
              ? json_['expiration'] as core.String
              : null,
          historyId: json_.containsKey('historyId')
              ? json_['historyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiration != null) 'expiration': expiration!,
        if (historyId != null) 'historyId': historyId!,
      };
}
