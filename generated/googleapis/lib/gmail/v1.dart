library googleapis.gmail.v1;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/** The Gmail REST API. */
class GmailApi {
  /** View and manage your mail */
  static const MailGoogleComScope = "https://mail.google.com/";

  /** Manage drafts and send emails */
  static const GmailComposeScope = "https://www.googleapis.com/auth/gmail.compose";

  /** View and modify but not delete your email */
  static const GmailModifyScope = "https://www.googleapis.com/auth/gmail.modify";

  /** View your emails messages and settings */
  static const GmailReadonlyScope = "https://www.googleapis.com/auth/gmail.readonly";


  final common_internal.ApiRequester _requester;

  UsersResourceApi get users => new UsersResourceApi(_requester);

  GmailApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "gmail/v1/users/");
}


/** Not documented yet. */
class UsersResourceApi {
  final common_internal.ApiRequester _requester;

  UsersDraftsResourceApi get drafts => new UsersDraftsResourceApi(_requester);
  UsersHistoryResourceApi get history => new UsersHistoryResourceApi(_requester);
  UsersLabelsResourceApi get labels => new UsersLabelsResourceApi(_requester);
  UsersMessagesResourceApi get messages => new UsersMessagesResourceApi(_requester);
  UsersThreadsResourceApi get threads => new UsersThreadsResourceApi(_requester);

  UsersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;
}


/** Not documented yet. */
class UsersDraftsResourceApi {
  final common_internal.ApiRequester _requester;

  UsersDraftsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new draft with the DRAFT label.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Draft].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Draft> create(Draft request, core.String userId, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$userId') + '/drafts';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/drafts';
    } else {
      _url = '/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/drafts';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Draft.fromJson(data));
  }

  /**
   * Immediately and permanently deletes the specified draft. Does not simply
   * trash it.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the draft to delete.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$userId') + '/drafts/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets the specified draft.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the draft to retrieve.
   *
   * [format] - The format to return the draft in.
   * Possible string values are:
   * - "full"
   * - "metadata"
   * - "minimal"
   * - "raw"
   *
   * Completes with a [Draft].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Draft> get(core.String userId, core.String id, {core.String format}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/drafts/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Draft.fromJson(data));
  }

  /**
   * Lists the drafts in the user's mailbox.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [maxResults] - Maximum number of drafts to return.
   *
   * [pageToken] - Page token to retrieve a specific page of results in the
   * list.
   *
   * Completes with a [ListDraftsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListDraftsResponse> list(core.String userId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/drafts';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDraftsResponse.fromJson(data));
  }

  /**
   * Sends the specified, existing draft to the recipients in the To, Cc, and
   * Bcc headers.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Message].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Message> send(Draft request, core.String userId, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$userId') + '/drafts/send';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/drafts/send';
    } else {
      _url = '/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/drafts/send';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /**
   * Replaces a draft's content.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the draft to update.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Draft].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Draft> update(Draft request, core.String userId, core.String id, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$userId') + '/drafts/' + common_internal.Escaper.ecapeVariable('$id');
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/drafts/' + common_internal.Escaper.ecapeVariable('$id');
    } else {
      _url = '/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/drafts/' + common_internal.Escaper.ecapeVariable('$id');
    }


    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Draft.fromJson(data));
  }

}


/** Not documented yet. */
class UsersHistoryResourceApi {
  final common_internal.ApiRequester _requester;

  UsersHistoryResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Lists the history of all changes to the given mailbox. History results are
   * returned in chronological order (increasing historyId).
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [labelId] - Only return messages with a label matching the ID.
   *
   * [maxResults] - The maximum number of history records to return.
   *
   * [pageToken] - Page token to retrieve a specific page of results in the
   * list.
   *
   * [startHistoryId] - Required. Returns history records after the specified
   * startHistoryId. The supplied startHistoryId should be obtained from the
   * historyId of a message, thread, or previous list response. History IDs
   * increase chronologically but are not contiguous with random gaps in between
   * valid IDs. Supplying an invalid or out of date startHistoryId typically
   * returns an HTTP 404 error code. A historyId is typically valid for at least
   * a week, but in some circumstances may be valid for only a few hours. If you
   * receive an HTTP 404 error response, your application should perform a full
   * sync. If you receive no nextPageToken in the response, there are no updates
   * to retrieve and you can store the returned historyId for a future request.
   *
   * Completes with a [ListHistoryResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListHistoryResponse> list(core.String userId, {core.String labelId, core.int maxResults, core.String pageToken, core.String startHistoryId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
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


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/history';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListHistoryResponse.fromJson(data));
  }

}


/** Not documented yet. */
class UsersLabelsResourceApi {
  final common_internal.ApiRequester _requester;

  UsersLabelsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new label.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * Completes with a [Label].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Label> create(Label request, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/labels';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Label.fromJson(data));
  }

  /**
   * Immediately and permanently deletes the specified label and removes it from
   * any messages and threads that it is applied to.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the label to delete.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$userId') + '/labels/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets the specified label.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the label to retrieve.
   *
   * Completes with a [Label].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Label> get(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/labels/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Label.fromJson(data));
  }

  /**
   * Lists all labels in the user's mailbox.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * Completes with a [ListLabelsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListLabelsResponse> list(core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/labels';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLabelsResponse.fromJson(data));
  }

  /**
   * Updates the specified label. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the label to update.
   *
   * Completes with a [Label].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Label> patch(Label request, core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/labels/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Label.fromJson(data));
  }

  /**
   * Updates the specified label.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the label to update.
   *
   * Completes with a [Label].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Label> update(Label request, core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/labels/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Label.fromJson(data));
  }

}


/** Not documented yet. */
class UsersMessagesResourceApi {
  final common_internal.ApiRequester _requester;

  UsersMessagesAttachmentsResourceApi get attachments => new UsersMessagesAttachmentsResourceApi(_requester);

  UsersMessagesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Immediately and permanently deletes the specified message. This operation
   * cannot be undone. Prefer messages.trash instead.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the message to delete.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets the specified message.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the message to retrieve.
   *
   * [format] - The format to return the message in.
   * Possible string values are:
   * - "full"
   * - "metadata"
   * - "minimal"
   * - "raw"
   *
   * [metadataHeaders] - When given and format is METADATA, only include headers
   * specified.
   *
   * Completes with a [Message].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Message> get(core.String userId, core.String id, {core.String format, core.List<core.String> metadataHeaders}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

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


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /**
   * Imports a message into only this user's mailbox, with standard email
   * delivery scanning and classification similar to receiving via SMTP. Does
   * not send a message.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [internalDateSource] - Source for Gmail's internal date of the message.
   * Possible string values are:
   * - "dateHeader"
   * - "receivedTime"
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Message].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Message> import(Message request, core.String userId, {core.String internalDateSource, common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (internalDateSource != null) {
      _queryParams["internalDateSource"] = [internalDateSource];
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages/import';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/messages/import';
    } else {
      _url = '/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/messages/import';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /**
   * Directly inserts a message into only this user's mailbox similar to IMAP
   * APPEND, bypassing most scanning and classification. Does not send a
   * message.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [internalDateSource] - Source for Gmail's internal date of the message.
   * Possible string values are:
   * - "dateHeader"
   * - "receivedTime"
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Message].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Message> insert(Message request, core.String userId, {core.String internalDateSource, common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (internalDateSource != null) {
      _queryParams["internalDateSource"] = [internalDateSource];
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/messages';
    } else {
      _url = '/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/messages';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /**
   * Lists the messages in the user's mailbox.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [includeSpamTrash] - Include messages from SPAM and TRASH in the results.
   *
   * [labelIds] - Only return messages with labels that match all of the
   * specified label IDs.
   *
   * [maxResults] - Maximum number of messages to return.
   *
   * [pageToken] - Page token to retrieve a specific page of results in the
   * list.
   *
   * [q] - Only return messages matching the specified query. Supports the same
   * query format as the Gmail search box. For example,
   * "from:someuser@example.com rfc822msgid: is:unread".
   *
   * Completes with a [ListMessagesResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListMessagesResponse> list(core.String userId, {core.bool includeSpamTrash, core.List<core.String> labelIds, core.int maxResults, core.String pageToken, core.String q}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

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


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMessagesResponse.fromJson(data));
  }

  /**
   * Modifies the labels on the specified message.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the message to modify.
   *
   * Completes with a [Message].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Message> modify(ModifyMessageRequest request, core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages/' + common_internal.Escaper.ecapeVariable('$id') + '/modify';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /**
   * Sends the specified message to the recipients in the To, Cc, and Bcc
   * headers.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Message].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Message> send(Message request, core.String userId, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages/send';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/messages/send';
    } else {
      _url = '/upload/gmail/v1/users/' + common_internal.Escaper.ecapeVariable('$userId') + '/messages/send';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /**
   * Moves the specified message to the trash.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the message to Trash.
   *
   * Completes with a [Message].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Message> trash(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages/' + common_internal.Escaper.ecapeVariable('$id') + '/trash';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /**
   * Removes the specified message from the trash.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the message to remove from Trash.
   *
   * Completes with a [Message].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Message> untrash(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages/' + common_internal.Escaper.ecapeVariable('$id') + '/untrash';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

}


/** Not documented yet. */
class UsersMessagesAttachmentsResourceApi {
  final common_internal.ApiRequester _requester;

  UsersMessagesAttachmentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the specified message attachment.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [messageId] - The ID of the message containing the attachment.
   *
   * [id] - The ID of the attachment.
   *
   * Completes with a [MessagePartBody].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<MessagePartBody> get(core.String userId, core.String messageId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (messageId == null) {
      throw new core.ArgumentError("Parameter messageId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/messages/' + common_internal.Escaper.ecapeVariable('$messageId') + '/attachments/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MessagePartBody.fromJson(data));
  }

}


/** Not documented yet. */
class UsersThreadsResourceApi {
  final common_internal.ApiRequester _requester;

  UsersThreadsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Immediately and permanently deletes the specified thread. This operation
   * cannot be undone. Prefer threads.trash instead.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - ID of the Thread to delete.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$userId') + '/threads/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets the specified thread.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the thread to retrieve.
   *
   * Completes with a [Thread].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Thread> get(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/threads/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Thread.fromJson(data));
  }

  /**
   * Lists the threads in the user's mailbox.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [includeSpamTrash] - Include threads from SPAM and TRASH in the results.
   *
   * [labelIds] - Only return threads with labels that match all of the
   * specified label IDs.
   *
   * [maxResults] - Maximum number of threads to return.
   *
   * [pageToken] - Page token to retrieve a specific page of results in the
   * list.
   *
   * [q] - Only return threads matching the specified query. Supports the same
   * query format as the Gmail search box. For example,
   * "from:someuser@example.com rfc822msgid: is:unread".
   *
   * Completes with a [ListThreadsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListThreadsResponse> list(core.String userId, {core.bool includeSpamTrash, core.List<core.String> labelIds, core.int maxResults, core.String pageToken, core.String q}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

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


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/threads';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListThreadsResponse.fromJson(data));
  }

  /**
   * Modifies the labels applied to the thread. This applies to all messages in
   * the thread.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the thread to modify.
   *
   * Completes with a [Thread].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Thread> modify(ModifyThreadRequest request, core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/threads/' + common_internal.Escaper.ecapeVariable('$id') + '/modify';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Thread.fromJson(data));
  }

  /**
   * Moves the specified thread to the trash.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the thread to Trash.
   *
   * Completes with a [Thread].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Thread> trash(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/threads/' + common_internal.Escaper.ecapeVariable('$id') + '/trash';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Thread.fromJson(data));
  }

  /**
   * Removes the specified thread from the trash.
   *
   * Request parameters:
   *
   * [userId] - The user's email address. The special value me can be used to
   * indicate the authenticated user.
   *
   * [id] - The ID of the thread to remove from Trash.
   *
   * Completes with a [Thread].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Thread> untrash(core.String userId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$userId') + '/threads/' + common_internal.Escaper.ecapeVariable('$id') + '/untrash';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Thread.fromJson(data));
  }

}



/** A draft email in the user's mailbox. */
class Draft {
  /** The immutable ID of the draft. */
  core.String id;

  /** The message content of the draft. */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}


/**
 * A record of a change to the user's mailbox. Each history contains a list of
 * the messages that were affected by this change.
 */
class History {
  /** The mailbox sequence ID. */
  core.String id;

  /** The messages that changed in this history record. */
  core.List<Message> messages;


  History();

  History.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("messages")) {
      messages = _json["messages"].map((value) => new Message.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * Labels are used to categorize messages and threads within the user's mailbox.
 */
class Label {
  /** The immutable ID of the label. */
  core.String id;

  /**
   * The visibility of the label in the label list in the Gmail web interface.
   * Possible string values are:
   * - "labelHide"
   * - "labelShow"
   * - "labelShowIfUnread"
   */
  core.String labelListVisibility;

  /**
   * The visibility of the label in the message list in the Gmail web interface.
   * Possible string values are:
   * - "hide"
   * - "show"
   */
  core.String messageListVisibility;

  /** The total number of messages with the label. */
  core.int messagesTotal;

  /** The number of unread messages with the label. */
  core.int messagesUnread;

  /** The display name of the label. */
  core.String name;

  /** The total number of threads with the label. */
  core.int threadsTotal;

  /** The number of unread threads with the label. */
  core.int threadsUnread;

  /**
   * The owner type for the label. User labels are created by the user and can
   * be modified and deleted by the user and can be applied to any message or
   * thread. System labels are internally created and cannot be added, modified,
   * or deleted. System labels may be able to be applied to or removed from
   * messages and threads under some circumstances but this is not guaranteed.
   * For example, users can apply and remove the INBOX and UNREAD labels from
   * messages and threads, but cannot apply or remove the DRAFTS or SENT labels
   * from messages or threads.
   * Possible string values are:
   * - "system"
   * - "user"
   */
  core.String type;


  Label();

  Label.fromJson(core.Map _json) {
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

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class ListDraftsResponse {
  /** List of drafts. */
  core.List<Draft> drafts;

  /** Token to retrieve the next page of results in the list. */
  core.String nextPageToken;

  /** Estimated total number of results. */
  core.int resultSizeEstimate;


  ListDraftsResponse();

  ListDraftsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("drafts")) {
      drafts = _json["drafts"].map((value) => new Draft.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resultSizeEstimate")) {
      resultSizeEstimate = _json["resultSizeEstimate"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class ListHistoryResponse {
  /** List of history records. */
  core.List<History> history;

  /** The ID of the mailbox's current history record. */
  core.String historyId;

  /** Page token to retrieve the next page of results in the list. */
  core.String nextPageToken;


  ListHistoryResponse();

  ListHistoryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("history")) {
      history = _json["history"].map((value) => new History.fromJson(value)).toList();
    }
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class ListLabelsResponse {
  /** List of labels. */
  core.List<Label> labels;


  ListLabelsResponse();

  ListLabelsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = _json["labels"].map((value) => new Label.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class ListMessagesResponse {
  /** List of messages. */
  core.List<Message> messages;

  /** Token to retrieve the next page of results in the list. */
  core.String nextPageToken;

  /** Estimated total number of results. */
  core.int resultSizeEstimate;


  ListMessagesResponse();

  ListMessagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("messages")) {
      messages = _json["messages"].map((value) => new Message.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resultSizeEstimate")) {
      resultSizeEstimate = _json["resultSizeEstimate"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class ListThreadsResponse {
  /** Page token to retrieve the next page of results in the list. */
  core.String nextPageToken;

  /** Estimated total number of results. */
  core.int resultSizeEstimate;

  /** List of threads. */
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
      threads = _json["threads"].map((value) => new Thread.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** An email message. */
class Message {
  /** The ID of the last history record that modified this message. */
  core.String historyId;

  /** The immutable ID of the message. */
  core.String id;

  /** List of IDs of labels applied to this message. */
  core.List<core.String> labelIds;

  /** The parsed email structure in the message parts. */
  MessagePart payload;

  /**
   * The entire email message in an RFC 2822 formatted and URL-safe base64
   * encoded string. Returned in messages.get and drafts.get responses when the
   * format=RAW parameter is supplied.
   */
  core.String raw;

  core.List<core.int> get rawAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(raw);
  }

  void set rawAsBytes(core.List<core.int> _bytes) {
    raw = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** Estimated size in bytes of the message. */
  core.int sizeEstimate;

  /** A short part of the message text. */
  core.String snippet;

  /**
   * The ID of the thread the message belongs to. To add a message or draft to a
   * thread, the following criteria must be met:
   * - The requested threadId must be specified on the Message or Draft.Message
   * you supply with your request.
   * - The References and In-Reply-To headers must be set in compliance with the
   * RFC 2822 standard.
   * - The Subject headers must match.
   */
  core.String threadId;


  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("labelIds")) {
      labelIds = _json["labelIds"];
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

  core.Map toJson() {
    var _json = new core.Map();
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    if (id != null) {
      _json["id"] = id;
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


/** A single MIME message part. */
class MessagePart {
  /**
   * The message part body for this part, which may be empty for container MIME
   * message parts.
   */
  MessagePartBody body;

  /**
   * The filename of the attachment. Only present if this message part
   * represents an attachment.
   */
  core.String filename;

  /**
   * List of headers on this message part. For the top-level message part,
   * representing the entire message payload, it will contain the standard RFC
   * 2822 email headers such as To, From, and Subject.
   */
  core.List<MessagePartHeader> headers;

  /** The MIME type of the message part. */
  core.String mimeType;

  /** The immutable ID of the message part. */
  core.String partId;

  /**
   * The child MIME message parts of this part. This only applies to container
   * MIME message parts, for example multipart / * . For non- container MIME
   * message part types, such as text/plain, this field is empty. For more
   * information, see RFC 1521.
   */
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
      headers = _json["headers"].map((value) => new MessagePartHeader.fromJson(value)).toList();
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("partId")) {
      partId = _json["partId"];
    }
    if (_json.containsKey("parts")) {
      parts = _json["parts"].map((value) => new MessagePart.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** The body of a single MIME message part. */
class MessagePartBody {
  /**
   * When present, contains the ID of an external attachment that can be
   * retrieved in a separate messages.attachments.get request. When not present,
   * the entire content of the message part body is contained in the data field.
   */
  core.String attachmentId;

  /**
   * The body data of a MIME message part. May be empty for MIME container types
   * that have no message body or when the body data is sent as a separate
   * attachment. An attachment ID is present if the body data is contained in a
   * separate attachment.
   */
  core.String data;

  core.List<core.int> get dataAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(data);
  }

  void set dataAsBytes(core.List<core.int> _bytes) {
    data = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** Total number of bytes in the body of the message part. */
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

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class MessagePartHeader {
  /** The name of the header before the : separator. For example, To. */
  core.String name;

  /**
   * The value of the header after the : separator. For example,
   * someuser@example.com.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class ModifyMessageRequest {
  /** A list of IDs of labels to add to this message. */
  core.List<core.String> addLabelIds;

  /** A list IDs of labels to remove from this message. */
  core.List<core.String> removeLabelIds;


  ModifyMessageRequest();

  ModifyMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addLabelIds")) {
      addLabelIds = _json["addLabelIds"];
    }
    if (_json.containsKey("removeLabelIds")) {
      removeLabelIds = _json["removeLabelIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (addLabelIds != null) {
      _json["addLabelIds"] = addLabelIds;
    }
    if (removeLabelIds != null) {
      _json["removeLabelIds"] = removeLabelIds;
    }
    return _json;
  }
}


/** Not documented yet. */
class ModifyThreadRequest {
  /** A list of IDs of labels to add to this thread. */
  core.List<core.String> addLabelIds;

  /** A list of IDs of labels to remove from this thread. */
  core.List<core.String> removeLabelIds;


  ModifyThreadRequest();

  ModifyThreadRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addLabelIds")) {
      addLabelIds = _json["addLabelIds"];
    }
    if (_json.containsKey("removeLabelIds")) {
      removeLabelIds = _json["removeLabelIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (addLabelIds != null) {
      _json["addLabelIds"] = addLabelIds;
    }
    if (removeLabelIds != null) {
      _json["removeLabelIds"] = removeLabelIds;
    }
    return _json;
  }
}


/** A collection of messages representing a conversation. */
class Thread {
  /** The ID of the last history record that modified this thread. */
  core.String historyId;

  /** The unique ID of the thread. */
  core.String id;

  /** The list of messages in the thread. */
  core.List<Message> messages;

  /** A short part of the message text. */
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
      messages = _json["messages"].map((value) => new Message.fromJson(value)).toList();
    }
    if (_json.containsKey("snippet")) {
      snippet = _json["snippet"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


