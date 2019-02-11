// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.indexing.v3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client indexing/v3';

/// Notifies Google when your web pages change.
class IndexingApi {
  /// Submit data to Google for indexing
  static const IndexingScope = "https://www.googleapis.com/auth/indexing";

  final commons.ApiRequester _requester;

  UrlNotificationsResourceApi get urlNotifications =>
      new UrlNotificationsResourceApi(_requester);

  IndexingApi(http.Client client,
      {core.String rootUrl = "https://indexing.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class UrlNotificationsResourceApi {
  final commons.ApiRequester _requester;

  UrlNotificationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets metadata about a Web Document. This method can _only_ be used to
  /// query
  /// URLs that were previously seen in successful Indexing API notifications.
  /// Includes the latest `UrlNotification` received via this API.
  ///
  /// Request parameters:
  ///
  /// [url] - URL that is being queried.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UrlNotificationMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UrlNotificationMetadata> getMetadata(
      {core.String url, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (url != null) {
      _queryParams["url"] = [url];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/urlNotifications/metadata';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlNotificationMetadata.fromJson(data));
  }

  /// Notifies that a URL has been updated or deleted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublishUrlNotificationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublishUrlNotificationResponse> publish(UrlNotification request,
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

    _url = 'v3/urlNotifications:publish';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new PublishUrlNotificationResponse.fromJson(data));
  }
}

/// Output for PublishUrlNotification
class PublishUrlNotificationResponse {
  /// Description of the notification events received for this URL.
  UrlNotificationMetadata urlNotificationMetadata;

  PublishUrlNotificationResponse();

  PublishUrlNotificationResponse.fromJson(core.Map _json) {
    if (_json.containsKey("urlNotificationMetadata")) {
      urlNotificationMetadata = new UrlNotificationMetadata.fromJson(
          _json["urlNotificationMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (urlNotificationMetadata != null) {
      _json["urlNotificationMetadata"] = (urlNotificationMetadata).toJson();
    }
    return _json;
  }
}

/// `UrlNotification` is the resource used in all Indexing API calls.
/// It describes one event in the life cycle of a Web Document.
class UrlNotification {
  /// Creation timestamp for this notification.
  /// Users should _not_ specify it, the field is ignored at the request time.
  core.String notifyTime;

  /// The URL life cycle event that Google is being notified about.
  /// Possible string values are:
  /// - "URL_NOTIFICATION_TYPE_UNSPECIFIED" : Unspecified.
  /// - "URL_UPDATED" : The given URL (Web document) has been updated.
  /// - "URL_DELETED" : The given URL (Web document) has been deleted.
  core.String type;

  /// The object of this notification. The URL must be owned by the publisher
  /// of this notification and, in case of `URL_UPDATED` notifications, it
  /// _must_
  /// be crawlable by Google.
  core.String url;

  UrlNotification();

  UrlNotification.fromJson(core.Map _json) {
    if (_json.containsKey("notifyTime")) {
      notifyTime = _json["notifyTime"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (notifyTime != null) {
      _json["notifyTime"] = notifyTime;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Summary of the most recent Indexing API notifications successfully received,
/// for a given URL.
class UrlNotificationMetadata {
  /// Latest notification received with type `URL_REMOVED`.
  UrlNotification latestRemove;

  /// Latest notification received with type `URL_UPDATED`.
  UrlNotification latestUpdate;

  /// URL to which this metadata refers.
  core.String url;

  UrlNotificationMetadata();

  UrlNotificationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("latestRemove")) {
      latestRemove = new UrlNotification.fromJson(_json["latestRemove"]);
    }
    if (_json.containsKey("latestUpdate")) {
      latestUpdate = new UrlNotification.fromJson(_json["latestUpdate"]);
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latestRemove != null) {
      _json["latestRemove"] = (latestRemove).toJson();
    }
    if (latestUpdate != null) {
      _json["latestUpdate"] = (latestUpdate).toJson();
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}
