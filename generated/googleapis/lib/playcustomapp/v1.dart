// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unused_import, unnecessary_cast

library googleapis.playcustomapp.v1;

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

const core.String USER_AGENT = 'dart-api-client playcustomapp/v1';

/// API to create and publish custom Android apps
class PlaycustomappApi {
  /// View and manage your Google Play Developer account
  static const AndroidpublisherScope =
      "https://www.googleapis.com/auth/androidpublisher";

  final commons.ApiRequester _requester;

  AccountsResourceApi get accounts => new AccountsResourceApi(_requester);

  PlaycustomappApi(http.Client client,
      {core.String rootUrl = "https://playcustomapp.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AccountsResourceApi {
  final commons.ApiRequester _requester;

  AccountsCustomAppsResourceApi get customApps =>
      new AccountsCustomAppsResourceApi(_requester);

  AccountsResourceApi(commons.ApiRequester client) : _requester = client;
}

class AccountsCustomAppsResourceApi {
  final commons.ApiRequester _requester;

  AccountsCustomAppsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new custom app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [account] - Developer account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [CustomApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomApp> create(CustomApp request, core.String account,
      {core.String $fields, commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (account == null) {
      throw new core.ArgumentError("Parameter account is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;

    _uploadOptions = commons.UploadOptions.Default;
    if (_uploadMedia == null) {
      _url = 'playcustomapp/v1/accounts/' +
          commons.Escaper.ecapeVariable('$account') +
          '/customApps';
    } else {
      _url = '/upload/playcustomapp/v1/accounts/' +
          commons.Escaper.ecapeVariable('$account') +
          '/customApps';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CustomApp.fromJson(data));
  }
}

/// This resource represents a custom app.
class CustomApp {
  /// Default listing language in BCP 47 format.
  core.String languageCode;

  /// Output only. Package name of the created Android app. Only present in the
  /// API response.
  core.String packageName;

  /// Title for the Android app.
  core.String title;

  CustomApp();

  CustomApp.fromJson(core.Map _json) {
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}
