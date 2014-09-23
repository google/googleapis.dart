library googleapis.admin.email_migration_v2;

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

/** Email Migration API lets you migrate emails of users to Google backends. */
class AdminApi {
  /** Manage email messages of users on your domain */
  static const EmailMigrationScope = "https://www.googleapis.com/auth/email.migration";


  final common_internal.ApiRequester _requester;

  MailResourceApi get mail => new MailResourceApi(_requester);

  AdminApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "email/v2/users/");
}


/** Not documented yet. */
class MailResourceApi {
  final common_internal.ApiRequester _requester;

  MailResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Insert Mail into Google's Gmail backends
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [userKey] - The email or immutable id of the user
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future insert(MailItem request, core.String userKey, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;
    _downloadOptions = null;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$userKey') + '/mail';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/email/v2/users/' + common_internal.Escaper.ecapeVariable('$userKey') + '/mail';
    } else {
      _url = '/upload/email/v2/users/' + common_internal.Escaper.ecapeVariable('$userKey') + '/mail';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

}



/** JSON template for MailItem object in Email Migration API. */
class MailItem {
  /** Boolean indicating if the mail is deleted (used in Vault) */
  core.bool isDeleted;

  /** Boolean indicating if the mail is draft */
  core.bool isDraft;

  /** Boolean indicating if the mail is in inbox */
  core.bool isInbox;

  /** Boolean indicating if the mail is in 'sent mails' */
  core.bool isSent;

  /** Boolean indicating if the mail is starred */
  core.bool isStarred;

  /** Boolean indicating if the mail is in trash */
  core.bool isTrash;

  /** Boolean indicating if the mail is unread */
  core.bool isUnread;

  /** Kind of resource this is. */
  core.String kind;

  /** List of labels (strings) */
  core.List<core.String> labels;


  MailItem();

  MailItem.fromJson(core.Map _json) {
    if (_json.containsKey("isDeleted")) {
      isDeleted = _json["isDeleted"];
    }
    if (_json.containsKey("isDraft")) {
      isDraft = _json["isDraft"];
    }
    if (_json.containsKey("isInbox")) {
      isInbox = _json["isInbox"];
    }
    if (_json.containsKey("isSent")) {
      isSent = _json["isSent"];
    }
    if (_json.containsKey("isStarred")) {
      isStarred = _json["isStarred"];
    }
    if (_json.containsKey("isTrash")) {
      isTrash = _json["isTrash"];
    }
    if (_json.containsKey("isUnread")) {
      isUnread = _json["isUnread"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (isDeleted != null) {
      _json["isDeleted"] = isDeleted;
    }
    if (isDraft != null) {
      _json["isDraft"] = isDraft;
    }
    if (isInbox != null) {
      _json["isInbox"] = isInbox;
    }
    if (isSent != null) {
      _json["isSent"] = isSent;
    }
    if (isStarred != null) {
      _json["isStarred"] = isStarred;
    }
    if (isTrash != null) {
      _json["isTrash"] = isTrash;
    }
    if (isUnread != null) {
      _json["isUnread"] = isUnread;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    return _json;
  }
}


