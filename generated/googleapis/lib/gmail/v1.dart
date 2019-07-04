// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.gmail.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

const core.String USER_AGENT = 'dart-api-client gmail/v1';

/// Access Gmail mailboxes including sending user email.
class GmailApi {
  /// Read, compose, send, and permanently delete all your email from Gmail
  static const MailGoogleComScope = "https://mail.google.com/";

  /// Manage drafts and send emails
  static const GmailComposeScope =
      "https://www.googleapis.com/auth/gmail.compose";

  /// Insert mail into your mailbox
  static const GmailInsertScope =
      "https://www.googleapis.com/auth/gmail.insert";

  /// Manage mailbox labels
  static const GmailLabelsScope =
      "https://www.googleapis.com/auth/gmail.labels";

  /// View your email message metadata such as labels and headers, but not the
  /// email body
  static const GmailMetadataScope =
      "https://www.googleapis.com/auth/gmail.metadata";

  /// View and modify but not delete your email
  static const GmailModifyScope =
      "https://www.googleapis.com/auth/gmail.modify";

  /// View your email messages and settings
  static const GmailReadonlyScope =
      "https://www.googleapis.com/auth/gmail.readonly";

  /// Send email on your behalf
  static const GmailSendScope = "https://www.googleapis.com/auth/gmail.send";

  /// Manage your basic mail settings
  static const GmailSettingsBasicScope =
      "https://www.googleapis.com/auth/gmail.settings.basic";

  /// Manage your sensitive mail settings, including who can manage your mail
  static const GmailSettingsSharingScope =
      "https://www.googleapis.com/auth/gmail.settings.sharing";

  final commons.ApiRequester _requester;

  UsersResourceApi get users => new UsersResourceApi(_requester);

  GmailApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "gmail/v1/users/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersDraftsResourceApi get drafts => new UsersDraftsResourceApi(_requester);
  UsersHistoryResourceApi get history =>
      new UsersHistoryResourceApi(_requester);
  UsersLabelsResourceApi get labels => new UsersLabelsResourceApi(_requester);
  UsersMessagesResourceApi get messages =>
      new UsersMessagesResourceApi(_requester);
  UsersSettingsResourceApi get settings =>
      new UsersSettingsResourceApi(_requester);
  UsersThreadsResourceApi get threads =>
      new UsersThreadsResourceApi(_requester);

  UsersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the current user's Gmail profile.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Profile> getProfile(core.String userId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/profile';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Profile.fromJson(data));
  }

  /// Stop receiving push notifications for the given user mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future stop(core.String userId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') + '/stop';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Set up or update a push notification watch on the given user mailbox.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<WatchResponse> watch(WatchRequest request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/watch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WatchResponse.fromJson(data));
  }
}

class UsersDraftsResourceApi {
  final commons.ApiRequester _requester;

  UsersDraftsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new draft with the DRAFT label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Draft> create(Draft request, core.String userId,
      {core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = commons.Escaper.ecapeVariable('$userId') + '/drafts';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/drafts';
    } else {
      _url = '/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/drafts';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Draft.fromJson(data));
  }

  /// Immediately and permanently deletes the specified draft. Does not simply
  /// trash it.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future delete(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/drafts/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets the specified draft.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the draft to retrieve.
  ///
  /// [format] - The format to return the draft in.
  /// Possible string values are:
  /// - "full"
  /// - "metadata"
  /// - "minimal"
  /// - "raw"
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
  async.Future<Draft> get(core.String userId, core.String id,
      {core.String format, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/drafts/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Draft.fromJson(data));
  }

  /// Lists the drafts in the user's mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [includeSpamTrash] - Include drafts from SPAM and TRASH in the results.
  ///
  /// [maxResults] - Maximum number of drafts to return.
  ///
  /// [pageToken] - Page token to retrieve a specific page of results in the
  /// list.
  ///
  /// [q] - Only return draft messages matching the specified query. Supports
  /// the same query format as the Gmail search box. For example,
  /// "from:someuser@example.com rfc822msgid: is:unread".
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
  async.Future<ListDraftsResponse> list(core.String userId,
      {core.bool includeSpamTrash,
      core.int maxResults,
      core.String pageToken,
      core.String q,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (includeSpamTrash != null) {
      _queryParams["includeSpamTrash"] = ["${includeSpamTrash}"];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (q != null) {
      _queryParams["q"] = [q];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/drafts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDraftsResponse.fromJson(data));
  }

  /// Sends the specified, existing draft to the recipients in the To, Cc, and
  /// Bcc headers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Message> send(Draft request, core.String userId,
      {core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = commons.Escaper.ecapeVariable('$userId') + '/drafts/send';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/drafts/send';
    } else {
      _url = '/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/drafts/send';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Replaces a draft's content.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Draft> update(Draft request, core.String userId, core.String id,
      {core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = commons.Escaper.ecapeVariable('$userId') +
          '/drafts/' +
          commons.Escaper.ecapeVariable('$id');
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/drafts/' +
          commons.Escaper.ecapeVariable('$id');
    } else {
      _url = '/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/drafts/' +
          commons.Escaper.ecapeVariable('$id');
    }

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Draft.fromJson(data));
  }
}

class UsersHistoryResourceApi {
  final commons.ApiRequester _requester;

  UsersHistoryResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists the history of all changes to the given mailbox. History results are
  /// returned in chronological order (increasing historyId).
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [historyTypes] - History types to be returned by the function
  ///
  /// [labelId] - Only return messages with a label matching the ID.
  ///
  /// [maxResults] - The maximum number of history records to return.
  ///
  /// [pageToken] - Page token to retrieve a specific page of results in the
  /// list.
  ///
  /// [startHistoryId] - Required. Returns history records after the specified
  /// startHistoryId. The supplied startHistoryId should be obtained from the
  /// historyId of a message, thread, or previous list response. History IDs
  /// increase chronologically but are not contiguous with random gaps in
  /// between valid IDs. Supplying an invalid or out of date startHistoryId
  /// typically returns an HTTP 404 error code. A historyId is typically valid
  /// for at least a week, but in some rare circumstances may be valid for only
  /// a few hours. If you receive an HTTP 404 error response, your application
  /// should perform a full sync. If you receive no nextPageToken in the
  /// response, there are no updates to retrieve and you can store the returned
  /// historyId for a future request.
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
  async.Future<ListHistoryResponse> list(core.String userId,
      {core.List<core.String> historyTypes,
      core.String labelId,
      core.int maxResults,
      core.String pageToken,
      core.String startHistoryId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (historyTypes != null) {
      _queryParams["historyTypes"] = historyTypes;
    }
    if (labelId != null) {
      _queryParams["labelId"] = [labelId];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startHistoryId != null) {
      _queryParams["startHistoryId"] = [startHistoryId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/history';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListHistoryResponse.fromJson(data));
  }
}

class UsersLabelsResourceApi {
  final commons.ApiRequester _requester;

  UsersLabelsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Label> create(Label request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/labels';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Label.fromJson(data));
  }

  /// Immediately and permanently deletes the specified label and removes it
  /// from any messages and threads that it is applied to.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future delete(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/labels/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets the specified label.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Label> get(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/labels/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Label.fromJson(data));
  }

  /// Lists all labels in the user's mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<ListLabelsResponse> list(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/labels';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLabelsResponse.fromJson(data));
  }

  /// Updates the specified label. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Label> patch(Label request, core.String userId, core.String id,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/labels/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Label.fromJson(data));
  }

  /// Updates the specified label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Label> update(Label request, core.String userId, core.String id,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/labels/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Label.fromJson(data));
  }
}

class UsersMessagesResourceApi {
  final commons.ApiRequester _requester;

  UsersMessagesAttachmentsResourceApi get attachments =>
      new UsersMessagesAttachmentsResourceApi(_requester);

  UsersMessagesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes many messages by message ID. Provides no guarantees that messages
  /// were not already deleted or even existed at all.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future batchDelete(
      BatchDeleteMessagesRequest request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') + '/messages/batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Modifies the labels on the specified messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future batchModify(
      BatchModifyMessagesRequest request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') + '/messages/batchModify';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Immediately and permanently deletes the specified message. This operation
  /// cannot be undone. Prefer messages.trash instead.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future delete(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/messages/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets the specified message.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the message to retrieve.
  ///
  /// [format] - The format to return the message in.
  /// Possible string values are:
  /// - "full"
  /// - "metadata"
  /// - "minimal"
  /// - "raw"
  ///
  /// [metadataHeaders] - When given and format is METADATA, only include
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
  async.Future<Message> get(core.String userId, core.String id,
      {core.String format,
      core.List<core.String> metadataHeaders,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }
    if (metadataHeaders != null) {
      _queryParams["metadataHeaders"] = metadataHeaders;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/messages/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Imports a message into only this user's mailbox, with standard email
  /// delivery scanning and classification similar to receiving via SMTP. Does
  /// not send a message.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [deleted] - Mark the email as permanently deleted (not TRASH) and only
  /// visible in Google Vault to a Vault administrator. Only used for G Suite
  /// accounts.
  ///
  /// [internalDateSource] - Source for Gmail's internal date of the message.
  /// Possible string values are:
  /// - "dateHeader"
  /// - "receivedTime"
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
  async.Future<Message> import(Message request, core.String userId,
      {core.bool deleted,
      core.String internalDateSource,
      core.bool neverMarkSpam,
      core.bool processForCalendar,
      core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deleted != null) {
      _queryParams["deleted"] = ["${deleted}"];
    }
    if (internalDateSource != null) {
      _queryParams["internalDateSource"] = [internalDateSource];
    }
    if (neverMarkSpam != null) {
      _queryParams["neverMarkSpam"] = ["${neverMarkSpam}"];
    }
    if (processForCalendar != null) {
      _queryParams["processForCalendar"] = ["${processForCalendar}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = commons.Escaper.ecapeVariable('$userId') + '/messages/import';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/messages/import';
    } else {
      _url = '/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/messages/import';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Directly inserts a message into only this user's mailbox similar to IMAP
  /// APPEND, bypassing most scanning and classification. Does not send a
  /// message.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [deleted] - Mark the email as permanently deleted (not TRASH) and only
  /// visible in Google Vault to a Vault administrator. Only used for G Suite
  /// accounts.
  ///
  /// [internalDateSource] - Source for Gmail's internal date of the message.
  /// Possible string values are:
  /// - "dateHeader"
  /// - "receivedTime"
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
  async.Future<Message> insert(Message request, core.String userId,
      {core.bool deleted,
      core.String internalDateSource,
      core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (deleted != null) {
      _queryParams["deleted"] = ["${deleted}"];
    }
    if (internalDateSource != null) {
      _queryParams["internalDateSource"] = [internalDateSource];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = commons.Escaper.ecapeVariable('$userId') + '/messages';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/messages';
    } else {
      _url = '/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/messages';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Lists the messages in the user's mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [includeSpamTrash] - Include messages from SPAM and TRASH in the results.
  ///
  /// [labelIds] - Only return messages with labels that match all of the
  /// specified label IDs.
  ///
  /// [maxResults] - Maximum number of messages to return.
  ///
  /// [pageToken] - Page token to retrieve a specific page of results in the
  /// list.
  ///
  /// [q] - Only return messages matching the specified query. Supports the same
  /// query format as the Gmail search box. For example,
  /// "from:someuser@example.com rfc822msgid:<somemsgid@example.com> is:unread".
  /// Parameter cannot be used when accessing the api using the gmail.metadata
  /// scope.
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
  async.Future<ListMessagesResponse> list(core.String userId,
      {core.bool includeSpamTrash,
      core.List<core.String> labelIds,
      core.int maxResults,
      core.String pageToken,
      core.String q,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (includeSpamTrash != null) {
      _queryParams["includeSpamTrash"] = ["${includeSpamTrash}"];
    }
    if (labelIds != null) {
      _queryParams["labelIds"] = labelIds;
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (q != null) {
      _queryParams["q"] = [q];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/messages';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMessagesResponse.fromJson(data));
  }

  /// Modifies the labels on the specified message.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
      ModifyMessageRequest request, core.String userId, core.String id,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/messages/' +
        commons.Escaper.ecapeVariable('$id') +
        '/modify';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Sends the specified message to the recipients in the To, Cc, and Bcc
  /// headers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Message> send(Message request, core.String userId,
      {core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = commons.Escaper.ecapeVariable('$userId') + '/messages/send';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/messages/send';
    } else {
      _url = '/upload/gmail/v1/users/' +
          commons.Escaper.ecapeVariable('$userId') +
          '/messages/send';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Moves the specified message to the trash.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Message> trash(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/messages/' +
        commons.Escaper.ecapeVariable('$id') +
        '/trash';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Removes the specified message from the trash.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Message> untrash(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/messages/' +
        commons.Escaper.ecapeVariable('$id') +
        '/untrash';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }
}

class UsersMessagesAttachmentsResourceApi {
  final commons.ApiRequester _requester;

  UsersMessagesAttachmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the specified message attachment.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
      core.String userId, core.String messageId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (messageId == null) {
      throw new core.ArgumentError("Parameter messageId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/messages/' +
        commons.Escaper.ecapeVariable('$messageId') +
        '/attachments/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new MessagePartBody.fromJson(data));
  }
}

class UsersSettingsResourceApi {
  final commons.ApiRequester _requester;

  UsersSettingsDelegatesResourceApi get delegates =>
      new UsersSettingsDelegatesResourceApi(_requester);
  UsersSettingsFiltersResourceApi get filters =>
      new UsersSettingsFiltersResourceApi(_requester);
  UsersSettingsForwardingAddressesResourceApi get forwardingAddresses =>
      new UsersSettingsForwardingAddressesResourceApi(_requester);
  UsersSettingsSendAsResourceApi get sendAs =>
      new UsersSettingsSendAsResourceApi(_requester);

  UsersSettingsResourceApi(commons.ApiRequester client) : _requester = client;

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
  async.Future<AutoForwarding> getAutoForwarding(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        commons.Escaper.ecapeVariable('$userId') + '/settings/autoForwarding';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AutoForwarding.fromJson(data));
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
  async.Future<ImapSettings> getImap(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/imap';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ImapSettings.fromJson(data));
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
  async.Future<LanguageSettings> getLanguage(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/language';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new LanguageSettings.fromJson(data));
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
  async.Future<PopSettings> getPop(core.String userId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/pop';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PopSettings.fromJson(data));
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
  async.Future<VacationSettings> getVacation(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/vacation';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new VacationSettings.fromJson(data));
  }

  /// Updates the auto-forwarding setting for the specified account. A verified
  /// forwarding address must be specified when auto-forwarding is enabled.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
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
      AutoForwarding request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        commons.Escaper.ecapeVariable('$userId') + '/settings/autoForwarding';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AutoForwarding.fromJson(data));
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
      ImapSettings request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/imap';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ImapSettings.fromJson(data));
  }

  /// Updates language settings.
  ///
  /// If successful, the return object contains the displayLanguage that was
  /// saved for the user, which may differ from the value passed into the
  /// request. This is because the requested displayLanguage may not be directly
  /// supported by Gmail but have a close variant that is, and so the variant
  /// may be chosen and saved instead.
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
      LanguageSettings request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/language';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new LanguageSettings.fromJson(data));
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
  async.Future<PopSettings> updatePop(PopSettings request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/pop';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PopSettings.fromJson(data));
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
      VacationSettings request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/vacation';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new VacationSettings.fromJson(data));
  }
}

class UsersSettingsDelegatesResourceApi {
  final commons.ApiRequester _requester;

  UsersSettingsDelegatesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Adds a delegate with its verification status set directly to accepted,
  /// without sending any verification email. The delegate user must be a member
  /// of the same G Suite organization as the delegator user.
  ///
  /// Gmail imposes limtations on the number of delegates and delegators each
  /// user in a G Suite organization can have. These limits depend on your
  /// organization, but in general each user can have up to 25 delegates and up
  /// to 10 delegators.
  ///
  /// Note that a delegate user must be referred to by their primary email
  /// address, and not an email alias.
  ///
  /// Also note that when a new delegate is created, there may be up to a one
  /// minute delay before the new delegate is available for use.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
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
  async.Future<Delegate> create(Delegate request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/delegates';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Delegate.fromJson(data));
  }

  /// Removes the specified delegate (which can be of any verification status),
  /// and revokes any verification that may have been required for using it.
  ///
  /// Note that a delegate user must be referred to by their primary email
  /// address, and not an email alias.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
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
  async.Future delete(core.String userId, core.String delegateEmail,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (delegateEmail == null) {
      throw new core.ArgumentError("Parameter delegateEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/delegates/' +
        commons.Escaper.ecapeVariable('$delegateEmail');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets the specified delegate.
  ///
  /// Note that a delegate user must be referred to by their primary email
  /// address, and not an email alias.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
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
  async.Future<Delegate> get(core.String userId, core.String delegateEmail,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (delegateEmail == null) {
      throw new core.ArgumentError("Parameter delegateEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/delegates/' +
        commons.Escaper.ecapeVariable('$delegateEmail');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Delegate.fromJson(data));
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
  async.Future<ListDelegatesResponse> list(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/delegates';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDelegatesResponse.fromJson(data));
  }
}

class UsersSettingsFiltersResourceApi {
  final commons.ApiRequester _requester;

  UsersSettingsFiltersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a filter.
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
  async.Future<Filter> create(Filter request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/filters';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Filter.fromJson(data));
  }

  /// Deletes a filter.
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
  async.Future delete(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/filters/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
  async.Future<Filter> get(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/filters/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Filter.fromJson(data));
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
  async.Future<ListFiltersResponse> list(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/filters';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFiltersResponse.fromJson(data));
  }
}

class UsersSettingsForwardingAddressesResourceApi {
  final commons.ApiRequester _requester;

  UsersSettingsForwardingAddressesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a forwarding address. If ownership verification is required, a
  /// message will be sent to the recipient and the resource's verification
  /// status will be set to pending; otherwise, the resource will be created
  /// with verification status set to accepted.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
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
      ForwardingAddress request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/forwardingAddresses';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingAddress.fromJson(data));
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
  async.Future delete(core.String userId, core.String forwardingEmail,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (forwardingEmail == null) {
      throw new core.ArgumentError("Parameter forwardingEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/forwardingAddresses/' +
        commons.Escaper.ecapeVariable('$forwardingEmail');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
      core.String userId, core.String forwardingEmail,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (forwardingEmail == null) {
      throw new core.ArgumentError("Parameter forwardingEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/forwardingAddresses/' +
        commons.Escaper.ecapeVariable('$forwardingEmail');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingAddress.fromJson(data));
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
  async.Future<ListForwardingAddressesResponse> list(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/forwardingAddresses';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListForwardingAddressesResponse.fromJson(data));
  }
}

class UsersSettingsSendAsResourceApi {
  final commons.ApiRequester _requester;

  UsersSettingsSendAsSmimeInfoResourceApi get smimeInfo =>
      new UsersSettingsSendAsSmimeInfoResourceApi(_requester);

  UsersSettingsSendAsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a custom "from" send-as alias. If an SMTP MSA is specified, Gmail
  /// will attempt to connect to the SMTP service to validate the configuration
  /// before creating the alias. If ownership verification is required for the
  /// alias, a message will be sent to the email address and the resource's
  /// verification status will be set to pending; otherwise, the resource will
  /// be created with verification status set to accepted. If a signature is
  /// provided, Gmail will sanitize the HTML before saving it with the alias.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
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
  async.Future<SendAs> create(SendAs request, core.String userId,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/sendAs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SendAs.fromJson(data));
  }

  /// Deletes the specified send-as alias. Revokes any verification that may
  /// have been required for using it.
  ///
  /// This method is only available to service account clients that have been
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
  async.Future delete(core.String userId, core.String sendAsEmail,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets the specified send-as alias. Fails with an HTTP 404 error if the
  /// specified address is not a member of the collection.
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
  async.Future<SendAs> get(core.String userId, core.String sendAsEmail,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SendAs.fromJson(data));
  }

  /// Lists the send-as aliases for the specified account. The result includes
  /// the primary send-as address associated with the account as well as any
  /// custom "from" aliases.
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
  async.Future<ListSendAsResponse> list(core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/settings/sendAs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSendAsResponse.fromJson(data));
  }

  /// Updates a send-as alias. If a signature is provided, Gmail will sanitize
  /// the HTML before saving it with the alias.
  ///
  /// Addresses other than the primary address for the account can only be
  /// updated by service account clients that have been delegated domain-wide
  /// authority. This method supports patch semantics.
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
      SendAs request, core.String userId, core.String sendAsEmail,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SendAs.fromJson(data));
  }

  /// Updates a send-as alias. If a signature is provided, Gmail will sanitize
  /// the HTML before saving it with the alias.
  ///
  /// Addresses other than the primary address for the account can only be
  /// updated by service account clients that have been delegated domain-wide
  /// authority.
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
      SendAs request, core.String userId, core.String sendAsEmail,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SendAs.fromJson(data));
  }

  /// Sends a verification email to the specified send-as alias address. The
  /// verification status must be pending.
  ///
  /// This method is only available to service account clients that have been
  /// delegated domain-wide authority.
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
  async.Future verify(core.String userId, core.String sendAsEmail,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail') +
        '/verify';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class UsersSettingsSendAsSmimeInfoResourceApi {
  final commons.ApiRequester _requester;

  UsersSettingsSendAsSmimeInfoResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the specified S/MIME config for the specified send-as alias.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future delete(
      core.String userId, core.String sendAsEmail, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail') +
        '/smimeInfo/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets the specified S/MIME config for the specified send-as alias.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
      core.String userId, core.String sendAsEmail, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail') +
        '/smimeInfo/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SmimeInfo.fromJson(data));
  }

  /// Insert (upload) the given S/MIME config for the specified send-as alias.
  /// Note that pkcs12 format is required for the key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
      SmimeInfo request, core.String userId, core.String sendAsEmail,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail') +
        '/smimeInfo';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SmimeInfo.fromJson(data));
  }

  /// Lists S/MIME configs for the specified send-as alias.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
      core.String userId, core.String sendAsEmail,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail') +
        '/smimeInfo';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSmimeInfoResponse.fromJson(data));
  }

  /// Sets the default S/MIME config for the specified send-as alias.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future setDefault(
      core.String userId, core.String sendAsEmail, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (sendAsEmail == null) {
      throw new core.ArgumentError("Parameter sendAsEmail is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/settings/sendAs/' +
        commons.Escaper.ecapeVariable('$sendAsEmail') +
        '/smimeInfo/' +
        commons.Escaper.ecapeVariable('$id') +
        '/setDefault';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class UsersThreadsResourceApi {
  final commons.ApiRequester _requester;

  UsersThreadsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Immediately and permanently deletes the specified thread. This operation
  /// cannot be undone. Prefer threads.trash instead.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future delete(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/threads/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets the specified thread.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [id] - The ID of the thread to retrieve.
  ///
  /// [format] - The format to return the messages in.
  /// Possible string values are:
  /// - "full"
  /// - "metadata"
  /// - "minimal"
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
  async.Future<Thread> get(core.String userId, core.String id,
      {core.String format,
      core.List<core.String> metadataHeaders,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }
    if (metadataHeaders != null) {
      _queryParams["metadataHeaders"] = metadataHeaders;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/threads/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Thread.fromJson(data));
  }

  /// Lists the threads in the user's mailbox.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
  /// indicate the authenticated user.
  ///
  /// [includeSpamTrash] - Include threads from SPAM and TRASH in the results.
  ///
  /// [labelIds] - Only return threads with labels that match all of the
  /// specified label IDs.
  ///
  /// [maxResults] - Maximum number of threads to return.
  ///
  /// [pageToken] - Page token to retrieve a specific page of results in the
  /// list.
  ///
  /// [q] - Only return threads matching the specified query. Supports the same
  /// query format as the Gmail search box. For example,
  /// "from:someuser@example.com rfc822msgid: is:unread". Parameter cannot be
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
  async.Future<ListThreadsResponse> list(core.String userId,
      {core.bool includeSpamTrash,
      core.List<core.String> labelIds,
      core.int maxResults,
      core.String pageToken,
      core.String q,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (includeSpamTrash != null) {
      _queryParams["includeSpamTrash"] = ["${includeSpamTrash}"];
    }
    if (labelIds != null) {
      _queryParams["labelIds"] = labelIds;
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (q != null) {
      _queryParams["q"] = [q];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') + '/threads';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListThreadsResponse.fromJson(data));
  }

  /// Modifies the labels applied to the thread. This applies to all messages in
  /// the thread.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
      ModifyThreadRequest request, core.String userId, core.String id,
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
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/threads/' +
        commons.Escaper.ecapeVariable('$id') +
        '/modify';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Thread.fromJson(data));
  }

  /// Moves the specified thread to the trash.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Thread> trash(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/threads/' +
        commons.Escaper.ecapeVariable('$id') +
        '/trash';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Thread.fromJson(data));
  }

  /// Removes the specified thread from the trash.
  ///
  /// Request parameters:
  ///
  /// [userId] - The user's email address. The special value me can be used to
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
  async.Future<Thread> untrash(core.String userId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$userId') +
        '/threads/' +
        commons.Escaper.ecapeVariable('$id') +
        '/untrash';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Thread.fromJson(data));
  }
}

/// Auto-forwarding settings for an account.
class AutoForwarding {
  /// The state that a message should be left in after it has been forwarded.
  /// Possible string values are:
  /// - "archive"
  /// - "dispositionUnspecified"
  /// - "leaveInInbox"
  /// - "markRead"
  /// - "trash"
  core.String disposition;

  /// Email address to which all incoming messages are forwarded. This email
  /// address must be a verified member of the forwarding addresses.
  core.String emailAddress;

  /// Whether all incoming mail is automatically forwarded to another address.
  core.bool enabled;

  AutoForwarding();

  AutoForwarding.fromJson(core.Map _json) {
    if (_json.containsKey("disposition")) {
      disposition = _json["disposition"];
    }
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disposition != null) {
      _json["disposition"] = disposition;
    }
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

class BatchDeleteMessagesRequest {
  /// The IDs of the messages to delete.
  core.List<core.String> ids;

  BatchDeleteMessagesRequest();

  BatchDeleteMessagesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ids")) {
      ids = (_json["ids"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ids != null) {
      _json["ids"] = ids;
    }
    return _json;
  }
}

class BatchModifyMessagesRequest {
  /// A list of label IDs to add to messages.
  core.List<core.String> addLabelIds;

  /// The IDs of the messages to modify. There is a limit of 1000 ids per
  /// request.
  core.List<core.String> ids;

  /// A list of label IDs to remove from messages.
  core.List<core.String> removeLabelIds;

  BatchModifyMessagesRequest();

  BatchModifyMessagesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addLabelIds")) {
      addLabelIds = (_json["addLabelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("ids")) {
      ids = (_json["ids"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("removeLabelIds")) {
      removeLabelIds =
          (_json["removeLabelIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addLabelIds != null) {
      _json["addLabelIds"] = addLabelIds;
    }
    if (ids != null) {
      _json["ids"] = ids;
    }
    if (removeLabelIds != null) {
      _json["removeLabelIds"] = removeLabelIds;
    }
    return _json;
  }
}

/// Settings for a delegate. Delegates can read, send, and delete messages, as
/// well as view and add contacts, for the delegator's account. See "Set up mail
/// delegation" for more information about delegates.
class Delegate {
  /// The email address of the delegate.
  core.String delegateEmail;

  /// Indicates whether this address has been verified and can act as a delegate
  /// for the account. Read-only.
  /// Possible string values are:
  /// - "accepted"
  /// - "expired"
  /// - "pending"
  /// - "rejected"
  /// - "verificationStatusUnspecified"
  core.String verificationStatus;

  Delegate();

  Delegate.fromJson(core.Map _json) {
    if (_json.containsKey("delegateEmail")) {
      delegateEmail = _json["delegateEmail"];
    }
    if (_json.containsKey("verificationStatus")) {
      verificationStatus = _json["verificationStatus"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (delegateEmail != null) {
      _json["delegateEmail"] = delegateEmail;
    }
    if (verificationStatus != null) {
      _json["verificationStatus"] = verificationStatus;
    }
    return _json;
  }
}

/// A draft email in the user's mailbox.
class Draft {
  /// The immutable ID of the draft.
  core.String id;

  /// The message content of the draft.
  Message message;

  Draft();

  Draft.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}

/// Resource definition for Gmail filters. Filters apply to specific messages
/// instead of an entire email thread.
class Filter {
  /// Action that the filter performs.
  FilterAction action;

  /// Matching criteria for the filter.
  FilterCriteria criteria;

  /// The server assigned ID of the filter.
  core.String id;

  Filter();

  Filter.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = new FilterAction.fromJson(_json["action"]);
    }
    if (_json.containsKey("criteria")) {
      criteria = new FilterCriteria.fromJson(_json["criteria"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = (action).toJson();
    }
    if (criteria != null) {
      _json["criteria"] = (criteria).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}

/// A set of actions to perform on a message.
class FilterAction {
  /// List of labels to add to the message.
  core.List<core.String> addLabelIds;

  /// Email address that the message should be forwarded to.
  core.String forward;

  /// List of labels to remove from the message.
  core.List<core.String> removeLabelIds;

  FilterAction();

  FilterAction.fromJson(core.Map _json) {
    if (_json.containsKey("addLabelIds")) {
      addLabelIds = (_json["addLabelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("forward")) {
      forward = _json["forward"];
    }
    if (_json.containsKey("removeLabelIds")) {
      removeLabelIds =
          (_json["removeLabelIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addLabelIds != null) {
      _json["addLabelIds"] = addLabelIds;
    }
    if (forward != null) {
      _json["forward"] = forward;
    }
    if (removeLabelIds != null) {
      _json["removeLabelIds"] = removeLabelIds;
    }
    return _json;
  }
}

/// Message matching criteria.
class FilterCriteria {
  /// Whether the response should exclude chats.
  core.bool excludeChats;

  /// The sender's display name or email address.
  core.String from;

  /// Whether the message has any attachment.
  core.bool hasAttachment;

  /// Only return messages not matching the specified query. Supports the same
  /// query format as the Gmail search box. For example,
  /// "from:someuser@example.com rfc822msgid: is:unread".
  core.String negatedQuery;

  /// Only return messages matching the specified query. Supports the same query
  /// format as the Gmail search box. For example, "from:someuser@example.com
  /// rfc822msgid: is:unread".
  core.String query;

  /// The size of the entire RFC822 message in bytes, including all headers and
  /// attachments.
  core.int size;

  /// How the message size in bytes should be in relation to the size field.
  /// Possible string values are:
  /// - "larger"
  /// - "smaller"
  /// - "unspecified"
  core.String sizeComparison;

  /// Case-insensitive phrase found in the message's subject. Trailing and
  /// leading whitespace are be trimmed and adjacent spaces are collapsed.
  core.String subject;

  /// The recipient's display name or email address. Includes recipients in the
  /// "to", "cc", and "bcc" header fields. You can use simply the local part of
  /// the email address. For example, "example" and "example@" both match
  /// "example@gmail.com". This field is case-insensitive.
  core.String to;

  FilterCriteria();

  FilterCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("excludeChats")) {
      excludeChats = _json["excludeChats"];
    }
    if (_json.containsKey("from")) {
      from = _json["from"];
    }
    if (_json.containsKey("hasAttachment")) {
      hasAttachment = _json["hasAttachment"];
    }
    if (_json.containsKey("negatedQuery")) {
      negatedQuery = _json["negatedQuery"];
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("sizeComparison")) {
      sizeComparison = _json["sizeComparison"];
    }
    if (_json.containsKey("subject")) {
      subject = _json["subject"];
    }
    if (_json.containsKey("to")) {
      to = _json["to"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludeChats != null) {
      _json["excludeChats"] = excludeChats;
    }
    if (from != null) {
      _json["from"] = from;
    }
    if (hasAttachment != null) {
      _json["hasAttachment"] = hasAttachment;
    }
    if (negatedQuery != null) {
      _json["negatedQuery"] = negatedQuery;
    }
    if (query != null) {
      _json["query"] = query;
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (sizeComparison != null) {
      _json["sizeComparison"] = sizeComparison;
    }
    if (subject != null) {
      _json["subject"] = subject;
    }
    if (to != null) {
      _json["to"] = to;
    }
    return _json;
  }
}

/// Settings for a forwarding address.
class ForwardingAddress {
  /// An email address to which messages can be forwarded.
  core.String forwardingEmail;

  /// Indicates whether this address has been verified and is usable for
  /// forwarding. Read-only.
  /// Possible string values are:
  /// - "accepted"
  /// - "pending"
  /// - "verificationStatusUnspecified"
  core.String verificationStatus;

  ForwardingAddress();

  ForwardingAddress.fromJson(core.Map _json) {
    if (_json.containsKey("forwardingEmail")) {
      forwardingEmail = _json["forwardingEmail"];
    }
    if (_json.containsKey("verificationStatus")) {
      verificationStatus = _json["verificationStatus"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (forwardingEmail != null) {
      _json["forwardingEmail"] = forwardingEmail;
    }
    if (verificationStatus != null) {
      _json["verificationStatus"] = verificationStatus;
    }
    return _json;
  }
}

/// A record of a change to the user's mailbox. Each history change may affect
/// multiple messages in multiple ways.
class History {
  /// The mailbox sequence ID.
  core.String id;

  /// Labels added to messages in this history record.
  core.List<HistoryLabelAdded> labelsAdded;

  /// Labels removed from messages in this history record.
  core.List<HistoryLabelRemoved> labelsRemoved;

  /// List of messages changed in this history record. The fields for specific
  /// change types, such as messagesAdded may duplicate messages in this field.
  /// We recommend using the specific change-type fields instead of this.
  core.List<Message> messages;

  /// Messages added to the mailbox in this history record.
  core.List<HistoryMessageAdded> messagesAdded;

  /// Messages deleted (not Trashed) from the mailbox in this history record.
  core.List<HistoryMessageDeleted> messagesDeleted;

  History();

  History.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("labelsAdded")) {
      labelsAdded = (_json["labelsAdded"] as core.List)
          .map<HistoryLabelAdded>(
              (value) => new HistoryLabelAdded.fromJson(value))
          .toList();
    }
    if (_json.containsKey("labelsRemoved")) {
      labelsRemoved = (_json["labelsRemoved"] as core.List)
          .map<HistoryLabelRemoved>(
              (value) => new HistoryLabelRemoved.fromJson(value))
          .toList();
    }
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List)
          .map<Message>((value) => new Message.fromJson(value))
          .toList();
    }
    if (_json.containsKey("messagesAdded")) {
      messagesAdded = (_json["messagesAdded"] as core.List)
          .map<HistoryMessageAdded>(
              (value) => new HistoryMessageAdded.fromJson(value))
          .toList();
    }
    if (_json.containsKey("messagesDeleted")) {
      messagesDeleted = (_json["messagesDeleted"] as core.List)
          .map<HistoryMessageDeleted>(
              (value) => new HistoryMessageDeleted.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (labelsAdded != null) {
      _json["labelsAdded"] =
          labelsAdded.map((value) => (value).toJson()).toList();
    }
    if (labelsRemoved != null) {
      _json["labelsRemoved"] =
          labelsRemoved.map((value) => (value).toJson()).toList();
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    if (messagesAdded != null) {
      _json["messagesAdded"] =
          messagesAdded.map((value) => (value).toJson()).toList();
    }
    if (messagesDeleted != null) {
      _json["messagesDeleted"] =
          messagesDeleted.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class HistoryLabelAdded {
  /// Label IDs added to the message.
  core.List<core.String> labelIds;
  Message message;

  HistoryLabelAdded();

  HistoryLabelAdded.fromJson(core.Map _json) {
    if (_json.containsKey("labelIds")) {
      labelIds = (_json["labelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labelIds != null) {
      _json["labelIds"] = labelIds;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}

class HistoryLabelRemoved {
  /// Label IDs removed from the message.
  core.List<core.String> labelIds;
  Message message;

  HistoryLabelRemoved();

  HistoryLabelRemoved.fromJson(core.Map _json) {
    if (_json.containsKey("labelIds")) {
      labelIds = (_json["labelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labelIds != null) {
      _json["labelIds"] = labelIds;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}

class HistoryMessageAdded {
  Message message;

  HistoryMessageAdded();

  HistoryMessageAdded.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}

class HistoryMessageDeleted {
  Message message;

  HistoryMessageDeleted();

  HistoryMessageDeleted.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}

/// IMAP settings for an account.
class ImapSettings {
  /// If this value is true, Gmail will immediately expunge a message when it is
  /// marked as deleted in IMAP. Otherwise, Gmail will wait for an update from
  /// the client before expunging messages marked as deleted.
  core.bool autoExpunge;

  /// Whether IMAP is enabled for the account.
  core.bool enabled;

  /// The action that will be executed on a message when it is marked as deleted
  /// and expunged from the last visible IMAP folder.
  /// Possible string values are:
  /// - "archive"
  /// - "deleteForever"
  /// - "expungeBehaviorUnspecified"
  /// - "trash"
  core.String expungeBehavior;

  /// An optional limit on the number of messages that an IMAP folder may
  /// contain. Legal values are 0, 1000, 2000, 5000 or 10000. A value of zero is
  /// interpreted to mean that there is no limit.
  core.int maxFolderSize;

  ImapSettings();

  ImapSettings.fromJson(core.Map _json) {
    if (_json.containsKey("autoExpunge")) {
      autoExpunge = _json["autoExpunge"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("expungeBehavior")) {
      expungeBehavior = _json["expungeBehavior"];
    }
    if (_json.containsKey("maxFolderSize")) {
      maxFolderSize = _json["maxFolderSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoExpunge != null) {
      _json["autoExpunge"] = autoExpunge;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (expungeBehavior != null) {
      _json["expungeBehavior"] = expungeBehavior;
    }
    if (maxFolderSize != null) {
      _json["maxFolderSize"] = maxFolderSize;
    }
    return _json;
  }
}

/// Labels are used to categorize messages and threads within the user's
/// mailbox.
class Label {
  /// The color to assign to the label. Color is only available for labels that
  /// have their type set to user.
  LabelColor color;

  /// The immutable ID of the label.
  core.String id;

  /// The visibility of the label in the label list in the Gmail web interface.
  /// Possible string values are:
  /// - "labelHide"
  /// - "labelShow"
  /// - "labelShowIfUnread"
  core.String labelListVisibility;

  /// The visibility of the label in the message list in the Gmail web
  /// interface.
  /// Possible string values are:
  /// - "hide"
  /// - "show"
  core.String messageListVisibility;

  /// The total number of messages with the label.
  core.int messagesTotal;

  /// The number of unread messages with the label.
  core.int messagesUnread;

  /// The display name of the label.
  core.String name;

  /// The total number of threads with the label.
  core.int threadsTotal;

  /// The number of unread threads with the label.
  core.int threadsUnread;

  /// The owner type for the label. User labels are created by the user and can
  /// be modified and deleted by the user and can be applied to any message or
  /// thread. System labels are internally created and cannot be added,
  /// modified, or deleted. System labels may be able to be applied to or
  /// removed from messages and threads under some circumstances but this is not
  /// guaranteed. For example, users can apply and remove the INBOX and UNREAD
  /// labels from messages and threads, but cannot apply or remove the DRAFTS or
  /// SENT labels from messages or threads.
  /// Possible string values are:
  /// - "system"
  /// - "user"
  core.String type;

  Label();

  Label.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new LabelColor.fromJson(_json["color"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("labelListVisibility")) {
      labelListVisibility = _json["labelListVisibility"];
    }
    if (_json.containsKey("messageListVisibility")) {
      messageListVisibility = _json["messageListVisibility"];
    }
    if (_json.containsKey("messagesTotal")) {
      messagesTotal = _json["messagesTotal"];
    }
    if (_json.containsKey("messagesUnread")) {
      messagesUnread = _json["messagesUnread"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("threadsTotal")) {
      threadsTotal = _json["threadsTotal"];
    }
    if (_json.containsKey("threadsUnread")) {
      threadsUnread = _json["threadsUnread"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (labelListVisibility != null) {
      _json["labelListVisibility"] = labelListVisibility;
    }
    if (messageListVisibility != null) {
      _json["messageListVisibility"] = messageListVisibility;
    }
    if (messagesTotal != null) {
      _json["messagesTotal"] = messagesTotal;
    }
    if (messagesUnread != null) {
      _json["messagesUnread"] = messagesUnread;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (threadsTotal != null) {
      _json["threadsTotal"] = threadsTotal;
    }
    if (threadsUnread != null) {
      _json["threadsUnread"] = threadsUnread;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class LabelColor {
  /// The background color represented as hex string #RRGGBB (ex #000000). This
  /// field is required in order to set the color of a label. Only the following
  /// predefined set of color values are allowed:
  /// #000000, #434343, #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff,
  /// #fb4c2f, #ffad47, #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3,
  /// #f6c5be, #ffe6c7, #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8,
  /// #efa093, #ffd6a2, #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1, #fbc8d9,
  /// #e66550, #ffbc6b, #fcda83, #44b984, #68dfa9, #6d9eeb, #b694e8, #f7a7c0,
  /// #cc3a21, #eaa041, #f2c960, #149e60, #3dc789, #3c78d8, #8e63ce, #e07798,
  /// #ac2b16, #cf8933, #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775,
  /// #822111, #a46a21, #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c
  /// #464646, #e7e7e7, #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff,
  /// #711a36, #fbd3e0, #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5,
  /// #594c05, #fbe983, #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1,
  /// #c2c2c2, #4986e7, #2da2bb, #b99aff, #994a64, #f691b2, #ff7537, #ffad46,
  /// #662e37, #ebdbde, #cca6ac, #094228, #42d692, #16a765
  core.String backgroundColor;

  /// The text color of the label, represented as hex string. This field is
  /// required in order to set the color of a label. Only the following
  /// predefined set of color values are allowed:
  /// #000000, #434343, #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff,
  /// #fb4c2f, #ffad47, #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3,
  /// #f6c5be, #ffe6c7, #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8,
  /// #efa093, #ffd6a2, #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1, #fbc8d9,
  /// #e66550, #ffbc6b, #fcda83, #44b984, #68dfa9, #6d9eeb, #b694e8, #f7a7c0,
  /// #cc3a21, #eaa041, #f2c960, #149e60, #3dc789, #3c78d8, #8e63ce, #e07798,
  /// #ac2b16, #cf8933, #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775,
  /// #822111, #a46a21, #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c
  /// #464646, #e7e7e7, #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff,
  /// #711a36, #fbd3e0, #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5,
  /// #594c05, #fbe983, #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1,
  /// #c2c2c2, #4986e7, #2da2bb, #b99aff, #994a64, #f691b2, #ff7537, #ffad46,
  /// #662e37, #ebdbde, #cca6ac, #094228, #42d692, #16a765
  core.String textColor;

  LabelColor();

  LabelColor.fromJson(core.Map _json) {
    if (_json.containsKey("backgroundColor")) {
      backgroundColor = _json["backgroundColor"];
    }
    if (_json.containsKey("textColor")) {
      textColor = _json["textColor"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backgroundColor != null) {
      _json["backgroundColor"] = backgroundColor;
    }
    if (textColor != null) {
      _json["textColor"] = textColor;
    }
    return _json;
  }
}

/// Language settings for an account. These settings correspond to the "Language
/// settings" feature in the web interface.
class LanguageSettings {
  /// The language to display Gmail in, formatted as an RFC 3066 Language Tag
  /// (for example en-GB, fr or ja for British English, French, or Japanese
  /// respectively).
  ///
  /// The set of languages supported by Gmail evolves over time, so please refer
  /// to the "Language" dropdown in the Gmail settings  for all available
  /// options, as described in the language settings help article. A table of
  /// sample values is also provided in the Managing Language Settings guide
  ///
  /// Not all Gmail clients can display the same set of languages. In the case
  /// that a user's display language is not available for use on a particular
  /// client, said client automatically chooses to display in the closest
  /// supported variant (or a reasonable default).
  core.String displayLanguage;

  LanguageSettings();

  LanguageSettings.fromJson(core.Map _json) {
    if (_json.containsKey("displayLanguage")) {
      displayLanguage = _json["displayLanguage"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayLanguage != null) {
      _json["displayLanguage"] = displayLanguage;
    }
    return _json;
  }
}

/// Response for the ListDelegates method.
class ListDelegatesResponse {
  /// List of the user's delegates (with any verification status).
  core.List<Delegate> delegates;

  ListDelegatesResponse();

  ListDelegatesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("delegates")) {
      delegates = (_json["delegates"] as core.List)
          .map<Delegate>((value) => new Delegate.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (delegates != null) {
      _json["delegates"] = delegates.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListDraftsResponse {
  /// List of drafts.
  core.List<Draft> drafts;

  /// Token to retrieve the next page of results in the list.
  core.String nextPageToken;

  /// Estimated total number of results.
  core.int resultSizeEstimate;

  ListDraftsResponse();

  ListDraftsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("drafts")) {
      drafts = (_json["drafts"] as core.List)
          .map<Draft>((value) => new Draft.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resultSizeEstimate")) {
      resultSizeEstimate = _json["resultSizeEstimate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (drafts != null) {
      _json["drafts"] = drafts.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resultSizeEstimate != null) {
      _json["resultSizeEstimate"] = resultSizeEstimate;
    }
    return _json;
  }
}

/// Response for the ListFilters method.
class ListFiltersResponse {
  /// List of a user's filters.
  core.List<Filter> filter;

  ListFiltersResponse();

  ListFiltersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = (_json["filter"] as core.List)
          .map<Filter>((value) => new Filter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filter != null) {
      _json["filter"] = filter.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response for the ListForwardingAddresses method.
class ListForwardingAddressesResponse {
  /// List of addresses that may be used for forwarding.
  core.List<ForwardingAddress> forwardingAddresses;

  ListForwardingAddressesResponse();

  ListForwardingAddressesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("forwardingAddresses")) {
      forwardingAddresses = (_json["forwardingAddresses"] as core.List)
          .map<ForwardingAddress>(
              (value) => new ForwardingAddress.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (forwardingAddresses != null) {
      _json["forwardingAddresses"] =
          forwardingAddresses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListHistoryResponse {
  /// List of history records. Any messages contained in the response will
  /// typically only have id and threadId fields populated.
  core.List<History> history;

  /// The ID of the mailbox's current history record.
  core.String historyId;

  /// Page token to retrieve the next page of results in the list.
  core.String nextPageToken;

  ListHistoryResponse();

  ListHistoryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("history")) {
      history = (_json["history"] as core.List)
          .map<History>((value) => new History.fromJson(value))
          .toList();
    }
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (history != null) {
      _json["history"] = history.map((value) => (value).toJson()).toList();
    }
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListLabelsResponse {
  /// List of labels.
  core.List<Label> labels;

  ListLabelsResponse();

  ListLabelsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<Label>((value) => new Label.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListMessagesResponse {
  /// List of messages. Note that each message resource contains only an id and
  /// a threadId. Additional message details can be fetched using the
  /// messages.get method.
  core.List<Message> messages;

  /// Token to retrieve the next page of results in the list.
  core.String nextPageToken;

  /// Estimated total number of results.
  core.int resultSizeEstimate;

  ListMessagesResponse();

  ListMessagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List)
          .map<Message>((value) => new Message.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resultSizeEstimate")) {
      resultSizeEstimate = _json["resultSizeEstimate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resultSizeEstimate != null) {
      _json["resultSizeEstimate"] = resultSizeEstimate;
    }
    return _json;
  }
}

/// Response for the ListSendAs method.
class ListSendAsResponse {
  /// List of send-as aliases.
  core.List<SendAs> sendAs;

  ListSendAsResponse();

  ListSendAsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("sendAs")) {
      sendAs = (_json["sendAs"] as core.List)
          .map<SendAs>((value) => new SendAs.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sendAs != null) {
      _json["sendAs"] = sendAs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListSmimeInfoResponse {
  /// List of SmimeInfo.
  core.List<SmimeInfo> smimeInfo;

  ListSmimeInfoResponse();

  ListSmimeInfoResponse.fromJson(core.Map _json) {
    if (_json.containsKey("smimeInfo")) {
      smimeInfo = (_json["smimeInfo"] as core.List)
          .map<SmimeInfo>((value) => new SmimeInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (smimeInfo != null) {
      _json["smimeInfo"] = smimeInfo.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListThreadsResponse {
  /// Page token to retrieve the next page of results in the list.
  core.String nextPageToken;

  /// Estimated total number of results.
  core.int resultSizeEstimate;

  /// List of threads. Note that each thread resource does not contain a list of
  /// messages. The list of messages for a given thread can be fetched using the
  /// threads.get method.
  core.List<Thread> threads;

  ListThreadsResponse();

  ListThreadsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resultSizeEstimate")) {
      resultSizeEstimate = _json["resultSizeEstimate"];
    }
    if (_json.containsKey("threads")) {
      threads = (_json["threads"] as core.List)
          .map<Thread>((value) => new Thread.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resultSizeEstimate != null) {
      _json["resultSizeEstimate"] = resultSizeEstimate;
    }
    if (threads != null) {
      _json["threads"] = threads.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An email message.
class Message {
  /// The ID of the last history record that modified this message.
  core.String historyId;

  /// The immutable ID of the message.
  core.String id;

  /// The internal message creation timestamp (epoch ms), which determines
  /// ordering in the inbox. For normal SMTP-received email, this represents the
  /// time the message was originally accepted by Google, which is more reliable
  /// than the Date header. However, for API-migrated mail, it can be configured
  /// by client to be based on the Date header.
  core.String internalDate;

  /// List of IDs of labels applied to this message.
  core.List<core.String> labelIds;

  /// The parsed email structure in the message parts.
  MessagePart payload;

  /// The entire email message in an RFC 2822 formatted and base64url encoded
  /// string. Returned in messages.get and drafts.get responses when the
  /// format=RAW parameter is supplied.
  core.String raw;
  core.List<core.int> get rawAsBytes {
    return convert.base64.decode(raw);
  }

  set rawAsBytes(core.List<core.int> _bytes) {
    raw =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Estimated size in bytes of the message.
  core.int sizeEstimate;

  /// A short part of the message text.
  core.String snippet;

  /// The ID of the thread the message belongs to. To add a message or draft to
  /// a thread, the following criteria must be met:
  /// - The requested threadId must be specified on the Message or Draft.Message
  /// you supply with your request.
  /// - The References and In-Reply-To headers must be set in compliance with
  /// the RFC 2822 standard.
  /// - The Subject headers must match.
  core.String threadId;

  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("internalDate")) {
      internalDate = _json["internalDate"];
    }
    if (_json.containsKey("labelIds")) {
      labelIds = (_json["labelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = new MessagePart.fromJson(_json["payload"]);
    }
    if (_json.containsKey("raw")) {
      raw = _json["raw"];
    }
    if (_json.containsKey("sizeEstimate")) {
      sizeEstimate = _json["sizeEstimate"];
    }
    if (_json.containsKey("snippet")) {
      snippet = _json["snippet"];
    }
    if (_json.containsKey("threadId")) {
      threadId = _json["threadId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (internalDate != null) {
      _json["internalDate"] = internalDate;
    }
    if (labelIds != null) {
      _json["labelIds"] = labelIds;
    }
    if (payload != null) {
      _json["payload"] = (payload).toJson();
    }
    if (raw != null) {
      _json["raw"] = raw;
    }
    if (sizeEstimate != null) {
      _json["sizeEstimate"] = sizeEstimate;
    }
    if (snippet != null) {
      _json["snippet"] = snippet;
    }
    if (threadId != null) {
      _json["threadId"] = threadId;
    }
    return _json;
  }
}

/// A single MIME message part.
class MessagePart {
  /// The message part body for this part, which may be empty for container MIME
  /// message parts.
  MessagePartBody body;

  /// The filename of the attachment. Only present if this message part
  /// represents an attachment.
  core.String filename;

  /// List of headers on this message part. For the top-level message part,
  /// representing the entire message payload, it will contain the standard RFC
  /// 2822 email headers such as To, From, and Subject.
  core.List<MessagePartHeader> headers;

  /// The MIME type of the message part.
  core.String mimeType;

  /// The immutable ID of the message part.
  core.String partId;

  /// The child MIME message parts of this part. This only applies to container
  /// MIME message parts, for example multipart / * . For non- container MIME
  /// message part types, such as text/plain, this field is empty. For more
  /// information, see RFC 1521.
  core.List<MessagePart> parts;

  MessagePart();

  MessagePart.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = new MessagePartBody.fromJson(_json["body"]);
    }
    if (_json.containsKey("filename")) {
      filename = _json["filename"];
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.List)
          .map<MessagePartHeader>(
              (value) => new MessagePartHeader.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("partId")) {
      partId = _json["partId"];
    }
    if (_json.containsKey("parts")) {
      parts = (_json["parts"] as core.List)
          .map<MessagePart>((value) => new MessagePart.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = (body).toJson();
    }
    if (filename != null) {
      _json["filename"] = filename;
    }
    if (headers != null) {
      _json["headers"] = headers.map((value) => (value).toJson()).toList();
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (partId != null) {
      _json["partId"] = partId;
    }
    if (parts != null) {
      _json["parts"] = parts.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The body of a single MIME message part.
class MessagePartBody {
  /// When present, contains the ID of an external attachment that can be
  /// retrieved in a separate messages.attachments.get request. When not
  /// present, the entire content of the message part body is contained in the
  /// data field.
  core.String attachmentId;

  /// The body data of a MIME message part as a base64url encoded string. May be
  /// empty for MIME container types that have no message body or when the body
  /// data is sent as a separate attachment. An attachment ID is present if the
  /// body data is contained in a separate attachment.
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.base64.decode(data);
  }

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Number of bytes for the message part data (encoding notwithstanding).
  core.int size;

  MessagePartBody();

  MessagePartBody.fromJson(core.Map _json) {
    if (_json.containsKey("attachmentId")) {
      attachmentId = _json["attachmentId"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attachmentId != null) {
      _json["attachmentId"] = attachmentId;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (size != null) {
      _json["size"] = size;
    }
    return _json;
  }
}

class MessagePartHeader {
  /// The name of the header before the : separator. For example, To.
  core.String name;

  /// The value of the header after the : separator. For example,
  /// someuser@example.com.
  core.String value;

  MessagePartHeader();

  MessagePartHeader.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class ModifyMessageRequest {
  /// A list of IDs of labels to add to this message.
  core.List<core.String> addLabelIds;

  /// A list IDs of labels to remove from this message.
  core.List<core.String> removeLabelIds;

  ModifyMessageRequest();

  ModifyMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addLabelIds")) {
      addLabelIds = (_json["addLabelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("removeLabelIds")) {
      removeLabelIds =
          (_json["removeLabelIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addLabelIds != null) {
      _json["addLabelIds"] = addLabelIds;
    }
    if (removeLabelIds != null) {
      _json["removeLabelIds"] = removeLabelIds;
    }
    return _json;
  }
}

class ModifyThreadRequest {
  /// A list of IDs of labels to add to this thread.
  core.List<core.String> addLabelIds;

  /// A list of IDs of labels to remove from this thread.
  core.List<core.String> removeLabelIds;

  ModifyThreadRequest();

  ModifyThreadRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addLabelIds")) {
      addLabelIds = (_json["addLabelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("removeLabelIds")) {
      removeLabelIds =
          (_json["removeLabelIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addLabelIds != null) {
      _json["addLabelIds"] = addLabelIds;
    }
    if (removeLabelIds != null) {
      _json["removeLabelIds"] = removeLabelIds;
    }
    return _json;
  }
}

/// POP settings for an account.
class PopSettings {
  /// The range of messages which are accessible via POP.
  /// Possible string values are:
  /// - "accessWindowUnspecified"
  /// - "allMail"
  /// - "disabled"
  /// - "fromNowOn"
  core.String accessWindow;

  /// The action that will be executed on a message after it has been fetched
  /// via POP.
  /// Possible string values are:
  /// - "archive"
  /// - "dispositionUnspecified"
  /// - "leaveInInbox"
  /// - "markRead"
  /// - "trash"
  core.String disposition;

  PopSettings();

  PopSettings.fromJson(core.Map _json) {
    if (_json.containsKey("accessWindow")) {
      accessWindow = _json["accessWindow"];
    }
    if (_json.containsKey("disposition")) {
      disposition = _json["disposition"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessWindow != null) {
      _json["accessWindow"] = accessWindow;
    }
    if (disposition != null) {
      _json["disposition"] = disposition;
    }
    return _json;
  }
}

/// Profile for a Gmail user.
class Profile {
  /// The user's email address.
  core.String emailAddress;

  /// The ID of the mailbox's current history record.
  core.String historyId;

  /// The total number of messages in the mailbox.
  core.int messagesTotal;

  /// The total number of threads in the mailbox.
  core.int threadsTotal;

  Profile();

  Profile.fromJson(core.Map _json) {
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("messagesTotal")) {
      messagesTotal = _json["messagesTotal"];
    }
    if (_json.containsKey("threadsTotal")) {
      threadsTotal = _json["threadsTotal"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    if (messagesTotal != null) {
      _json["messagesTotal"] = messagesTotal;
    }
    if (threadsTotal != null) {
      _json["threadsTotal"] = threadsTotal;
    }
    return _json;
  }
}

/// Settings associated with a send-as alias, which can be either the primary
/// login address associated with the account or a custom "from" address.
/// Send-as aliases correspond to the "Send Mail As" feature in the web
/// interface.
class SendAs {
  /// A name that appears in the "From:" header for mail sent using this alias.
  /// For custom "from" addresses, when this is empty, Gmail will populate the
  /// "From:" header with the name that is used for the primary address
  /// associated with the account. If the admin has disabled the ability for
  /// users to update their name format, requests to update this field for the
  /// primary login will silently fail.
  core.String displayName;

  /// Whether this address is selected as the default "From:" address in
  /// situations such as composing a new message or sending a vacation
  /// auto-reply. Every Gmail account has exactly one default send-as address,
  /// so the only legal value that clients may write to this field is true.
  /// Changing this from false to true for an address will result in this field
  /// becoming false for the other previous default address.
  core.bool isDefault;

  /// Whether this address is the primary address used to login to the account.
  /// Every Gmail account has exactly one primary address, and it cannot be
  /// deleted from the collection of send-as aliases. This field is read-only.
  core.bool isPrimary;

  /// An optional email address that is included in a "Reply-To:" header for
  /// mail sent using this alias. If this is empty, Gmail will not generate a
  /// "Reply-To:" header.
  core.String replyToAddress;

  /// The email address that appears in the "From:" header for mail sent using
  /// this alias. This is read-only for all operations except create.
  core.String sendAsEmail;

  /// An optional HTML signature that is included in messages composed with this
  /// alias in the Gmail web UI.
  core.String signature;

  /// An optional SMTP service that will be used as an outbound relay for mail
  /// sent using this alias. If this is empty, outbound mail will be sent
  /// directly from Gmail's servers to the destination SMTP service. This
  /// setting only applies to custom "from" aliases.
  SmtpMsa smtpMsa;

  /// Whether Gmail should  treat this address as an alias for the user's
  /// primary email address. This setting only applies to custom "from" aliases.
  core.bool treatAsAlias;

  /// Indicates whether this address has been verified for use as a send-as
  /// alias. Read-only. This setting only applies to custom "from" aliases.
  /// Possible string values are:
  /// - "accepted"
  /// - "pending"
  /// - "verificationStatusUnspecified"
  core.String verificationStatus;

  SendAs();

  SendAs.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("isDefault")) {
      isDefault = _json["isDefault"];
    }
    if (_json.containsKey("isPrimary")) {
      isPrimary = _json["isPrimary"];
    }
    if (_json.containsKey("replyToAddress")) {
      replyToAddress = _json["replyToAddress"];
    }
    if (_json.containsKey("sendAsEmail")) {
      sendAsEmail = _json["sendAsEmail"];
    }
    if (_json.containsKey("signature")) {
      signature = _json["signature"];
    }
    if (_json.containsKey("smtpMsa")) {
      smtpMsa = new SmtpMsa.fromJson(_json["smtpMsa"]);
    }
    if (_json.containsKey("treatAsAlias")) {
      treatAsAlias = _json["treatAsAlias"];
    }
    if (_json.containsKey("verificationStatus")) {
      verificationStatus = _json["verificationStatus"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (isDefault != null) {
      _json["isDefault"] = isDefault;
    }
    if (isPrimary != null) {
      _json["isPrimary"] = isPrimary;
    }
    if (replyToAddress != null) {
      _json["replyToAddress"] = replyToAddress;
    }
    if (sendAsEmail != null) {
      _json["sendAsEmail"] = sendAsEmail;
    }
    if (signature != null) {
      _json["signature"] = signature;
    }
    if (smtpMsa != null) {
      _json["smtpMsa"] = (smtpMsa).toJson();
    }
    if (treatAsAlias != null) {
      _json["treatAsAlias"] = treatAsAlias;
    }
    if (verificationStatus != null) {
      _json["verificationStatus"] = verificationStatus;
    }
    return _json;
  }
}

/// An S/MIME email config.
class SmimeInfo {
  /// Encrypted key password, when key is encrypted.
  core.String encryptedKeyPassword;

  /// When the certificate expires (in milliseconds since epoch).
  core.String expiration;

  /// The immutable ID for the SmimeInfo.
  core.String id;

  /// Whether this SmimeInfo is the default one for this user's send-as address.
  core.bool isDefault;

  /// The S/MIME certificate issuer's common name.
  core.String issuerCn;

  /// PEM formatted X509 concatenated certificate string (standard base64
  /// encoding). Format used for returning key, which includes public key as
  /// well as certificate chain (not private key).
  core.String pem;

  /// PKCS#12 format containing a single private/public key pair and certificate
  /// chain. This format is only accepted from client for creating a new
  /// SmimeInfo and is never returned, because the private key is not intended
  /// to be exported. PKCS#12 may be encrypted, in which case
  /// encryptedKeyPassword should be set appropriately.
  core.String pkcs12;
  core.List<core.int> get pkcs12AsBytes {
    return convert.base64.decode(pkcs12);
  }

  set pkcs12AsBytes(core.List<core.int> _bytes) {
    pkcs12 =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  SmimeInfo();

  SmimeInfo.fromJson(core.Map _json) {
    if (_json.containsKey("encryptedKeyPassword")) {
      encryptedKeyPassword = _json["encryptedKeyPassword"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("isDefault")) {
      isDefault = _json["isDefault"];
    }
    if (_json.containsKey("issuerCn")) {
      issuerCn = _json["issuerCn"];
    }
    if (_json.containsKey("pem")) {
      pem = _json["pem"];
    }
    if (_json.containsKey("pkcs12")) {
      pkcs12 = _json["pkcs12"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (encryptedKeyPassword != null) {
      _json["encryptedKeyPassword"] = encryptedKeyPassword;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (isDefault != null) {
      _json["isDefault"] = isDefault;
    }
    if (issuerCn != null) {
      _json["issuerCn"] = issuerCn;
    }
    if (pem != null) {
      _json["pem"] = pem;
    }
    if (pkcs12 != null) {
      _json["pkcs12"] = pkcs12;
    }
    return _json;
  }
}

/// Configuration for communication with an SMTP service.
class SmtpMsa {
  /// The hostname of the SMTP service. Required.
  core.String host;

  /// The password that will be used for authentication with the SMTP service.
  /// This is a write-only field that can be specified in requests to create or
  /// update SendAs settings; it is never populated in responses.
  core.String password;

  /// The port of the SMTP service. Required.
  core.int port;

  /// The protocol that will be used to secure communication with the SMTP
  /// service. Required.
  /// Possible string values are:
  /// - "none"
  /// - "securityModeUnspecified"
  /// - "ssl"
  /// - "starttls"
  core.String securityMode;

  /// The username that will be used for authentication with the SMTP service.
  /// This is a write-only field that can be specified in requests to create or
  /// update SendAs settings; it is never populated in responses.
  core.String username;

  SmtpMsa();

  SmtpMsa.fromJson(core.Map _json) {
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("securityMode")) {
      securityMode = _json["securityMode"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (host != null) {
      _json["host"] = host;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (securityMode != null) {
      _json["securityMode"] = securityMode;
    }
    if (username != null) {
      _json["username"] = username;
    }
    return _json;
  }
}

/// A collection of messages representing a conversation.
class Thread {
  /// The ID of the last history record that modified this thread.
  core.String historyId;

  /// The unique ID of the thread.
  core.String id;

  /// The list of messages in the thread.
  core.List<Message> messages;

  /// A short part of the message text.
  core.String snippet;

  Thread();

  Thread.fromJson(core.Map _json) {
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List)
          .map<Message>((value) => new Message.fromJson(value))
          .toList();
    }
    if (_json.containsKey("snippet")) {
      snippet = _json["snippet"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    if (snippet != null) {
      _json["snippet"] = snippet;
    }
    return _json;
  }
}

/// Vacation auto-reply settings for an account. These settings correspond to
/// the "Vacation responder" feature in the web interface.
class VacationSettings {
  /// Flag that controls whether Gmail automatically replies to messages.
  core.bool enableAutoReply;

  /// An optional end time for sending auto-replies (epoch ms). When this is
  /// specified, Gmail will automatically reply only to messages that it
  /// receives before the end time. If both startTime and endTime are specified,
  /// startTime must precede endTime.
  core.String endTime;

  /// Response body in HTML format. Gmail will sanitize the HTML before storing
  /// it.
  core.String responseBodyHtml;

  /// Response body in plain text format.
  core.String responseBodyPlainText;

  /// Optional text to prepend to the subject line in vacation responses. In
  /// order to enable auto-replies, either the response subject or the response
  /// body must be nonempty.
  core.String responseSubject;

  /// Flag that determines whether responses are sent to recipients who are not
  /// in the user's list of contacts.
  core.bool restrictToContacts;

  /// Flag that determines whether responses are sent to recipients who are
  /// outside of the user's domain. This feature is only available for G Suite
  /// users.
  core.bool restrictToDomain;

  /// An optional start time for sending auto-replies (epoch ms). When this is
  /// specified, Gmail will automatically reply only to messages that it
  /// receives after the start time. If both startTime and endTime are
  /// specified, startTime must precede endTime.
  core.String startTime;

  VacationSettings();

  VacationSettings.fromJson(core.Map _json) {
    if (_json.containsKey("enableAutoReply")) {
      enableAutoReply = _json["enableAutoReply"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("responseBodyHtml")) {
      responseBodyHtml = _json["responseBodyHtml"];
    }
    if (_json.containsKey("responseBodyPlainText")) {
      responseBodyPlainText = _json["responseBodyPlainText"];
    }
    if (_json.containsKey("responseSubject")) {
      responseSubject = _json["responseSubject"];
    }
    if (_json.containsKey("restrictToContacts")) {
      restrictToContacts = _json["restrictToContacts"];
    }
    if (_json.containsKey("restrictToDomain")) {
      restrictToDomain = _json["restrictToDomain"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enableAutoReply != null) {
      _json["enableAutoReply"] = enableAutoReply;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (responseBodyHtml != null) {
      _json["responseBodyHtml"] = responseBodyHtml;
    }
    if (responseBodyPlainText != null) {
      _json["responseBodyPlainText"] = responseBodyPlainText;
    }
    if (responseSubject != null) {
      _json["responseSubject"] = responseSubject;
    }
    if (restrictToContacts != null) {
      _json["restrictToContacts"] = restrictToContacts;
    }
    if (restrictToDomain != null) {
      _json["restrictToDomain"] = restrictToDomain;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// Set up or update a new push notification watch on this user's mailbox.
class WatchRequest {
  /// Filtering behavior of labelIds list specified.
  /// Possible string values are:
  /// - "exclude"
  /// - "include"
  core.String labelFilterAction;

  /// List of label_ids to restrict notifications about. By default, if
  /// unspecified, all changes are pushed out. If specified then dictates which
  /// labels are required for a push notification to be generated.
  core.List<core.String> labelIds;

  /// A fully qualified Google Cloud Pub/Sub API topic name to publish the
  /// events to. This topic name **must** already exist in Cloud Pub/Sub and you
  /// **must** have already granted gmail "publish" permission on it. For
  /// example, "projects/my-project-identifier/topics/my-topic-name" (using the
  /// Cloud Pub/Sub "v1" topic naming format).
  ///
  /// Note that the "my-project-identifier" portion must exactly match your
  /// Google developer project id (the one executing this watch request).
  core.String topicName;

  WatchRequest();

  WatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("labelFilterAction")) {
      labelFilterAction = _json["labelFilterAction"];
    }
    if (_json.containsKey("labelIds")) {
      labelIds = (_json["labelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("topicName")) {
      topicName = _json["topicName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labelFilterAction != null) {
      _json["labelFilterAction"] = labelFilterAction;
    }
    if (labelIds != null) {
      _json["labelIds"] = labelIds;
    }
    if (topicName != null) {
      _json["topicName"] = topicName;
    }
    return _json;
  }
}

/// Push notification watch response.
class WatchResponse {
  /// When Gmail will stop sending notifications for mailbox updates (epoch
  /// millis). Call watch again before this time to renew the watch.
  core.String expiration;

  /// The ID of the mailbox's current history record.
  core.String historyId;

  WatchResponse();

  WatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    return _json;
  }
}
