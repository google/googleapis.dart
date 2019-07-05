// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.safebrowsing.v4;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client safebrowsing/v4';

/// Enables client applications to check web resources (most commonly URLs)
/// against Google-generated lists of unsafe web resources.
class SafebrowsingApi {
  final commons.ApiRequester _requester;

  EncodedFullHashesResourceApi get encodedFullHashes =>
      new EncodedFullHashesResourceApi(_requester);
  EncodedUpdatesResourceApi get encodedUpdates =>
      new EncodedUpdatesResourceApi(_requester);
  FullHashesResourceApi get fullHashes => new FullHashesResourceApi(_requester);
  ThreatHitsResourceApi get threatHits => new ThreatHitsResourceApi(_requester);
  ThreatListUpdatesResourceApi get threatListUpdates =>
      new ThreatListUpdatesResourceApi(_requester);
  ThreatListsResourceApi get threatLists =>
      new ThreatListsResourceApi(_requester);
  ThreatMatchesResourceApi get threatMatches =>
      new ThreatMatchesResourceApi(_requester);

  SafebrowsingApi(http.Client client,
      {core.String rootUrl = "https://safebrowsing.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class EncodedFullHashesResourceApi {
  final commons.ApiRequester _requester;

  EncodedFullHashesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Request parameters:
  ///
  /// [encodedRequest] - A serialized FindFullHashesRequest proto.
  ///
  /// [clientVersion] - The version of the client implementation.
  ///
  /// [clientId] - A client ID that (hopefully) uniquely identifies the client
  /// implementation
  /// of the Safe Browsing API.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FindFullHashesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FindFullHashesResponse> get(core.String encodedRequest,
      {core.String clientVersion, core.String clientId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (encodedRequest == null) {
      throw new core.ArgumentError("Parameter encodedRequest is required.");
    }
    if (clientVersion != null) {
      _queryParams["clientVersion"] = [clientVersion];
    }
    if (clientId != null) {
      _queryParams["clientId"] = [clientId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/encodedFullHashes/' +
        commons.Escaper.ecapeVariable('$encodedRequest');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FindFullHashesResponse.fromJson(data));
  }
}

class EncodedUpdatesResourceApi {
  final commons.ApiRequester _requester;

  EncodedUpdatesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [encodedRequest] - A serialized FetchThreatListUpdatesRequest proto.
  ///
  /// [clientVersion] - The version of the client implementation.
  ///
  /// [clientId] - A client ID that uniquely identifies the client
  /// implementation of the Safe
  /// Browsing API.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchThreatListUpdatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchThreatListUpdatesResponse> get(core.String encodedRequest,
      {core.String clientVersion, core.String clientId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (encodedRequest == null) {
      throw new core.ArgumentError("Parameter encodedRequest is required.");
    }
    if (clientVersion != null) {
      _queryParams["clientVersion"] = [clientVersion];
    }
    if (clientId != null) {
      _queryParams["clientId"] = [clientId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v4/encodedUpdates/' + commons.Escaper.ecapeVariable('$encodedRequest');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new FetchThreatListUpdatesResponse.fromJson(data));
  }
}

class FullHashesResourceApi {
  final commons.ApiRequester _requester;

  FullHashesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Finds the full hashes that match the requested hash prefixes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FindFullHashesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FindFullHashesResponse> find(FindFullHashesRequest request,
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

    _url = 'v4/fullHashes:find';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FindFullHashesResponse.fromJson(data));
  }
}

class ThreatHitsResourceApi {
  final commons.ApiRequester _requester;

  ThreatHitsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Reports a Safe Browsing threat list hit to Google. Only projects with
  /// TRUSTED_REPORTER visibility can use this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Empty> create(ThreatHit request, {core.String $fields}) {
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

    _url = 'v4/threatHits';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

class ThreatListUpdatesResourceApi {
  final commons.ApiRequester _requester;

  ThreatListUpdatesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Fetches the most recent threat list updates. A client can request updates
  /// for multiple lists at once.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchThreatListUpdatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchThreatListUpdatesResponse> fetch(
      FetchThreatListUpdatesRequest request,
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

    _url = 'v4/threatListUpdates:fetch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new FetchThreatListUpdatesResponse.fromJson(data));
  }
}

class ThreatListsResourceApi {
  final commons.ApiRequester _requester;

  ThreatListsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists the Safe Browsing threat lists available for download.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListThreatListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListThreatListsResponse> list({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/threatLists';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListThreatListsResponse.fromJson(data));
  }
}

class ThreatMatchesResourceApi {
  final commons.ApiRequester _requester;

  ThreatMatchesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Finds the threat entries that match the Safe Browsing lists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FindThreatMatchesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FindThreatMatchesResponse> find(FindThreatMatchesRequest request,
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

    _url = 'v4/threatMatches:find';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new FindThreatMatchesResponse.fromJson(data));
  }
}

/// The expected state of a client's local database.
class Checksum {
  /// The SHA256 hash of the client state; that is, of the sorted list of all
  /// hashes present in the database.
  core.String sha256;
  core.List<core.int> get sha256AsBytes {
    return convert.base64.decode(sha256);
  }

  set sha256AsBytes(core.List<core.int> _bytes) {
    sha256 =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Checksum();

  Checksum.fromJson(core.Map _json) {
    if (_json.containsKey("sha256")) {
      sha256 = _json["sha256"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sha256 != null) {
      _json["sha256"] = sha256;
    }
    return _json;
  }
}

/// The client metadata associated with Safe Browsing API requests.
class ClientInfo {
  /// A client ID that (hopefully) uniquely identifies the client implementation
  /// of the Safe Browsing API.
  core.String clientId;

  /// The version of the client implementation.
  core.String clientVersion;

  ClientInfo();

  ClientInfo.fromJson(core.Map _json) {
    if (_json.containsKey("clientId")) {
      clientId = _json["clientId"];
    }
    if (_json.containsKey("clientVersion")) {
      clientVersion = _json["clientVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientId != null) {
      _json["clientId"] = clientId;
    }
    if (clientVersion != null) {
      _json["clientVersion"] = clientVersion;
    }
    return _json;
  }
}

/// The constraints for this update.
class Constraints {
  /// A client's physical location, expressed as a ISO 31166-1 alpha-2
  /// region code.
  core.String deviceLocation;

  /// Requests the lists for a specific language. Expects ISO 639 alpha-2
  /// format.
  core.String language;

  /// Sets the maximum number of entries that the client is willing to have
  /// in the local database. This should be a power of 2 between 2**10 and
  /// 2**20. If zero, no database size limit is set.
  core.int maxDatabaseEntries;

  /// The maximum size in number of entries. The update will not contain more
  /// entries than this value.  This should be a power of 2 between 2**10 and
  /// 2**20.  If zero, no update size limit is set.
  core.int maxUpdateEntries;

  /// Requests the list for a specific geographic location. If not set the
  /// server may pick that value based on the user's IP address. Expects ISO
  /// 3166-1 alpha-2 format.
  core.String region;

  /// The compression types supported by the client.
  core.List<core.String> supportedCompressions;

  Constraints();

  Constraints.fromJson(core.Map _json) {
    if (_json.containsKey("deviceLocation")) {
      deviceLocation = _json["deviceLocation"];
    }
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("maxDatabaseEntries")) {
      maxDatabaseEntries = _json["maxDatabaseEntries"];
    }
    if (_json.containsKey("maxUpdateEntries")) {
      maxUpdateEntries = _json["maxUpdateEntries"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("supportedCompressions")) {
      supportedCompressions =
          (_json["supportedCompressions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceLocation != null) {
      _json["deviceLocation"] = deviceLocation;
    }
    if (language != null) {
      _json["language"] = language;
    }
    if (maxDatabaseEntries != null) {
      _json["maxDatabaseEntries"] = maxDatabaseEntries;
    }
    if (maxUpdateEntries != null) {
      _json["maxUpdateEntries"] = maxUpdateEntries;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (supportedCompressions != null) {
      _json["supportedCompressions"] = supportedCompressions;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Describes a Safe Browsing API update request. Clients can request updates
/// for
/// multiple lists in a single request.
/// NOTE: Field index 2 is unused.
/// NEXT: 5
class FetchThreatListUpdatesRequest {
  /// The client metadata.
  ClientInfo client;

  /// The requested threat list updates.
  core.List<ListUpdateRequest> listUpdateRequests;

  FetchThreatListUpdatesRequest();

  FetchThreatListUpdatesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("client")) {
      client = new ClientInfo.fromJson(_json["client"]);
    }
    if (_json.containsKey("listUpdateRequests")) {
      listUpdateRequests = (_json["listUpdateRequests"] as core.List)
          .map<ListUpdateRequest>(
              (value) => new ListUpdateRequest.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (client != null) {
      _json["client"] = (client).toJson();
    }
    if (listUpdateRequests != null) {
      _json["listUpdateRequests"] =
          listUpdateRequests.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class FetchThreatListUpdatesResponse {
  /// The list updates requested by the clients.
  core.List<ListUpdateResponse> listUpdateResponses;

  /// The minimum duration the client must wait before issuing any update
  /// request. If this field is not set clients may update as soon as they want.
  core.String minimumWaitDuration;

  FetchThreatListUpdatesResponse();

  FetchThreatListUpdatesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("listUpdateResponses")) {
      listUpdateResponses = (_json["listUpdateResponses"] as core.List)
          .map<ListUpdateResponse>(
              (value) => new ListUpdateResponse.fromJson(value))
          .toList();
    }
    if (_json.containsKey("minimumWaitDuration")) {
      minimumWaitDuration = _json["minimumWaitDuration"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (listUpdateResponses != null) {
      _json["listUpdateResponses"] =
          listUpdateResponses.map((value) => (value).toJson()).toList();
    }
    if (minimumWaitDuration != null) {
      _json["minimumWaitDuration"] = minimumWaitDuration;
    }
    return _json;
  }
}

/// Request to return full hashes matched by the provided hash prefixes.
class FindFullHashesRequest {
  /// Client metadata associated with callers of higher-level APIs built on top
  /// of the client's implementation.
  ClientInfo apiClient;

  /// The client metadata.
  ClientInfo client;

  /// The current client states for each of the client's local threat lists.
  core.List<core.String> clientStates;

  /// The lists and hashes to be checked.
  ThreatInfo threatInfo;

  FindFullHashesRequest();

  FindFullHashesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("apiClient")) {
      apiClient = new ClientInfo.fromJson(_json["apiClient"]);
    }
    if (_json.containsKey("client")) {
      client = new ClientInfo.fromJson(_json["client"]);
    }
    if (_json.containsKey("clientStates")) {
      clientStates = (_json["clientStates"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("threatInfo")) {
      threatInfo = new ThreatInfo.fromJson(_json["threatInfo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiClient != null) {
      _json["apiClient"] = (apiClient).toJson();
    }
    if (client != null) {
      _json["client"] = (client).toJson();
    }
    if (clientStates != null) {
      _json["clientStates"] = clientStates;
    }
    if (threatInfo != null) {
      _json["threatInfo"] = (threatInfo).toJson();
    }
    return _json;
  }
}

class FindFullHashesResponse {
  /// The full hashes that matched the requested prefixes.
  core.List<ThreatMatch> matches;

  /// The minimum duration the client must wait before issuing any find hashes
  /// request. If this field is not set, clients can issue a request as soon as
  /// they want.
  core.String minimumWaitDuration;

  /// For requested entities that did not match the threat list, how long to
  /// cache the response.
  core.String negativeCacheDuration;

  FindFullHashesResponse();

  FindFullHashesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("matches")) {
      matches = (_json["matches"] as core.List)
          .map<ThreatMatch>((value) => new ThreatMatch.fromJson(value))
          .toList();
    }
    if (_json.containsKey("minimumWaitDuration")) {
      minimumWaitDuration = _json["minimumWaitDuration"];
    }
    if (_json.containsKey("negativeCacheDuration")) {
      negativeCacheDuration = _json["negativeCacheDuration"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (matches != null) {
      _json["matches"] = matches.map((value) => (value).toJson()).toList();
    }
    if (minimumWaitDuration != null) {
      _json["minimumWaitDuration"] = minimumWaitDuration;
    }
    if (negativeCacheDuration != null) {
      _json["negativeCacheDuration"] = negativeCacheDuration;
    }
    return _json;
  }
}

/// Request to check entries against lists.
class FindThreatMatchesRequest {
  /// The client metadata.
  ClientInfo client;

  /// The lists and entries to be checked for matches.
  ThreatInfo threatInfo;

  FindThreatMatchesRequest();

  FindThreatMatchesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("client")) {
      client = new ClientInfo.fromJson(_json["client"]);
    }
    if (_json.containsKey("threatInfo")) {
      threatInfo = new ThreatInfo.fromJson(_json["threatInfo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (client != null) {
      _json["client"] = (client).toJson();
    }
    if (threatInfo != null) {
      _json["threatInfo"] = (threatInfo).toJson();
    }
    return _json;
  }
}

class FindThreatMatchesResponse {
  /// The threat list matches.
  core.List<ThreatMatch> matches;

  FindThreatMatchesResponse();

  FindThreatMatchesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("matches")) {
      matches = (_json["matches"] as core.List)
          .map<ThreatMatch>((value) => new ThreatMatch.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (matches != null) {
      _json["matches"] = matches.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListThreatListsResponse {
  /// The lists available for download by the client.
  core.List<ThreatListDescriptor> threatLists;

  ListThreatListsResponse();

  ListThreatListsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("threatLists")) {
      threatLists = (_json["threatLists"] as core.List)
          .map<ThreatListDescriptor>(
              (value) => new ThreatListDescriptor.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (threatLists != null) {
      _json["threatLists"] =
          threatLists.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A single list update request.
class ListUpdateRequest {
  /// The constraints associated with this request.
  Constraints constraints;

  /// The type of platform at risk by entries present in the list.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED" : Unknown platform.
  /// - "WINDOWS" : Threat posed to Windows.
  /// - "LINUX" : Threat posed to Linux.
  /// - "ANDROID" : Threat posed to Android.
  /// - "OSX" : Threat posed to OS X.
  /// - "IOS" : Threat posed to iOS.
  /// - "ANY_PLATFORM" : Threat posed to at least one of the defined platforms.
  /// - "ALL_PLATFORMS" : Threat posed to all defined platforms.
  /// - "CHROME" : Threat posed to Chrome.
  core.String platformType;

  /// The current state of the client for the requested list (the encrypted
  /// client state that was received from the last successful list update).
  core.String state;
  core.List<core.int> get stateAsBytes {
    return convert.base64.decode(state);
  }

  set stateAsBytes(core.List<core.int> _bytes) {
    state =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The types of entries present in the list.
  /// Possible string values are:
  /// - "THREAT_ENTRY_TYPE_UNSPECIFIED" : Unspecified.
  /// - "URL" : A URL.
  /// - "EXECUTABLE" : An executable program.
  /// - "IP_RANGE" : An IP range.
  /// - "CHROME_EXTENSION" : Chrome extension.
  /// - "FILENAME" : Filename.
  /// - "CERT" : CERT
  core.String threatEntryType;

  /// The type of threat posed by entries present in the list.
  /// Possible string values are:
  /// - "THREAT_TYPE_UNSPECIFIED" : Unknown.
  /// - "MALWARE" : Malware threat type.
  /// - "SOCIAL_ENGINEERING" : Social engineering threat type.
  /// - "UNWANTED_SOFTWARE" : Unwanted software threat type.
  /// - "POTENTIALLY_HARMFUL_APPLICATION" : Potentially harmful application
  /// threat type.
  /// - "SOCIAL_ENGINEERING_INTERNAL" : Social engineering threat type for
  /// internal use.
  /// - "API_ABUSE" : API abuse threat type.
  /// - "MALICIOUS_BINARY" : Malicious binary threat type.
  /// - "CSD_WHITELIST" : Client side detection whitelist threat type.
  /// - "CSD_DOWNLOAD_WHITELIST" : Client side download detection whitelist
  /// threat type.
  /// - "CLIENT_INCIDENT" : Client incident threat type.
  /// - "CLIENT_INCIDENT_WHITELIST" : Whitelist used when detecting client
  /// incident threats.
  /// This enum was never launched and should be re-used for the next list.
  /// - "APK_MALWARE_OFFLINE" : List used for offline APK checks in PAM.
  /// - "SUBRESOURCE_FILTER" : Patterns to be used for activating the
  /// subresource filter. Interstitial
  /// will not be shown for patterns from this list.
  /// - "SUSPICIOUS" : Entities that are suspected to present a threat.
  /// - "TRICK_TO_BILL" : Trick-to-bill threat list.
  /// - "HIGH_CONFIDENCE_ALLOWLIST" : Safe list to ship hashes of known safe URL
  /// expressions.
  core.String threatType;

  ListUpdateRequest();

  ListUpdateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("constraints")) {
      constraints = new Constraints.fromJson(_json["constraints"]);
    }
    if (_json.containsKey("platformType")) {
      platformType = _json["platformType"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("threatEntryType")) {
      threatEntryType = _json["threatEntryType"];
    }
    if (_json.containsKey("threatType")) {
      threatType = _json["threatType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (constraints != null) {
      _json["constraints"] = (constraints).toJson();
    }
    if (platformType != null) {
      _json["platformType"] = platformType;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (threatEntryType != null) {
      _json["threatEntryType"] = threatEntryType;
    }
    if (threatType != null) {
      _json["threatType"] = threatType;
    }
    return _json;
  }
}

/// An update to an individual list.
class ListUpdateResponse {
  /// A set of entries to add to a local threat type's list. Repeated to allow
  /// for a combination of compressed and raw data to be sent in a single
  /// response.
  core.List<ThreatEntrySet> additions;

  /// The expected SHA256 hash of the client state; that is, of the sorted list
  /// of all hashes present in the database after applying the provided update.
  /// If the client state doesn't match the expected state, the client must
  /// disregard this update and retry later.
  Checksum checksum;

  /// The new client state, in encrypted format. Opaque to clients.
  core.String newClientState;
  core.List<core.int> get newClientStateAsBytes {
    return convert.base64.decode(newClientState);
  }

  set newClientStateAsBytes(core.List<core.int> _bytes) {
    newClientState =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The platform type for which data is returned.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED" : Unknown platform.
  /// - "WINDOWS" : Threat posed to Windows.
  /// - "LINUX" : Threat posed to Linux.
  /// - "ANDROID" : Threat posed to Android.
  /// - "OSX" : Threat posed to OS X.
  /// - "IOS" : Threat posed to iOS.
  /// - "ANY_PLATFORM" : Threat posed to at least one of the defined platforms.
  /// - "ALL_PLATFORMS" : Threat posed to all defined platforms.
  /// - "CHROME" : Threat posed to Chrome.
  core.String platformType;

  /// A set of entries to remove from a local threat type's list. In practice,
  /// this field is empty or contains exactly one ThreatEntrySet.
  core.List<ThreatEntrySet> removals;

  /// The type of response. This may indicate that an action is required by the
  /// client when the response is received.
  /// Possible string values are:
  /// - "RESPONSE_TYPE_UNSPECIFIED" : Unknown.
  /// - "PARTIAL_UPDATE" : Partial updates are applied to the client's existing
  /// local database.
  /// - "FULL_UPDATE" : Full updates replace the client's entire local database.
  /// This means
  /// that either the client was seriously out-of-date or the client is
  /// believed to be corrupt.
  core.String responseType;

  /// The format of the threats.
  /// Possible string values are:
  /// - "THREAT_ENTRY_TYPE_UNSPECIFIED" : Unspecified.
  /// - "URL" : A URL.
  /// - "EXECUTABLE" : An executable program.
  /// - "IP_RANGE" : An IP range.
  /// - "CHROME_EXTENSION" : Chrome extension.
  /// - "FILENAME" : Filename.
  /// - "CERT" : CERT
  core.String threatEntryType;

  /// The threat type for which data is returned.
  /// Possible string values are:
  /// - "THREAT_TYPE_UNSPECIFIED" : Unknown.
  /// - "MALWARE" : Malware threat type.
  /// - "SOCIAL_ENGINEERING" : Social engineering threat type.
  /// - "UNWANTED_SOFTWARE" : Unwanted software threat type.
  /// - "POTENTIALLY_HARMFUL_APPLICATION" : Potentially harmful application
  /// threat type.
  /// - "SOCIAL_ENGINEERING_INTERNAL" : Social engineering threat type for
  /// internal use.
  /// - "API_ABUSE" : API abuse threat type.
  /// - "MALICIOUS_BINARY" : Malicious binary threat type.
  /// - "CSD_WHITELIST" : Client side detection whitelist threat type.
  /// - "CSD_DOWNLOAD_WHITELIST" : Client side download detection whitelist
  /// threat type.
  /// - "CLIENT_INCIDENT" : Client incident threat type.
  /// - "CLIENT_INCIDENT_WHITELIST" : Whitelist used when detecting client
  /// incident threats.
  /// This enum was never launched and should be re-used for the next list.
  /// - "APK_MALWARE_OFFLINE" : List used for offline APK checks in PAM.
  /// - "SUBRESOURCE_FILTER" : Patterns to be used for activating the
  /// subresource filter. Interstitial
  /// will not be shown for patterns from this list.
  /// - "SUSPICIOUS" : Entities that are suspected to present a threat.
  /// - "TRICK_TO_BILL" : Trick-to-bill threat list.
  /// - "HIGH_CONFIDENCE_ALLOWLIST" : Safe list to ship hashes of known safe URL
  /// expressions.
  core.String threatType;

  ListUpdateResponse();

  ListUpdateResponse.fromJson(core.Map _json) {
    if (_json.containsKey("additions")) {
      additions = (_json["additions"] as core.List)
          .map<ThreatEntrySet>((value) => new ThreatEntrySet.fromJson(value))
          .toList();
    }
    if (_json.containsKey("checksum")) {
      checksum = new Checksum.fromJson(_json["checksum"]);
    }
    if (_json.containsKey("newClientState")) {
      newClientState = _json["newClientState"];
    }
    if (_json.containsKey("platformType")) {
      platformType = _json["platformType"];
    }
    if (_json.containsKey("removals")) {
      removals = (_json["removals"] as core.List)
          .map<ThreatEntrySet>((value) => new ThreatEntrySet.fromJson(value))
          .toList();
    }
    if (_json.containsKey("responseType")) {
      responseType = _json["responseType"];
    }
    if (_json.containsKey("threatEntryType")) {
      threatEntryType = _json["threatEntryType"];
    }
    if (_json.containsKey("threatType")) {
      threatType = _json["threatType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additions != null) {
      _json["additions"] = additions.map((value) => (value).toJson()).toList();
    }
    if (checksum != null) {
      _json["checksum"] = (checksum).toJson();
    }
    if (newClientState != null) {
      _json["newClientState"] = newClientState;
    }
    if (platformType != null) {
      _json["platformType"] = platformType;
    }
    if (removals != null) {
      _json["removals"] = removals.map((value) => (value).toJson()).toList();
    }
    if (responseType != null) {
      _json["responseType"] = responseType;
    }
    if (threatEntryType != null) {
      _json["threatEntryType"] = threatEntryType;
    }
    if (threatType != null) {
      _json["threatType"] = threatType;
    }
    return _json;
  }
}

/// A single metadata entry.
class MetadataEntry {
  /// The metadata entry key. For JSON requests, the key is base64-encoded.
  core.String key;
  core.List<core.int> get keyAsBytes {
    return convert.base64.decode(key);
  }

  set keyAsBytes(core.List<core.int> _bytes) {
    key =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The metadata entry value. For JSON requests, the value is base64-encoded.
  core.String value;
  core.List<core.int> get valueAsBytes {
    return convert.base64.decode(value);
  }

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  MetadataEntry();

  MetadataEntry.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// The uncompressed threat entries in hash format of a particular prefix
/// length.
/// Hashes can be anywhere from 4 to 32 bytes in size. A large majority are 4
/// bytes, but some hashes are lengthened if they collide with the hash of a
/// popular URL.
///
/// Used for sending ThreatEntrySet to clients that do not support compression,
/// or when sending non-4-byte hashes to clients that do support compression.
class RawHashes {
  /// The number of bytes for each prefix encoded below.  This field can be
  /// anywhere from 4 (shortest prefix) to 32 (full SHA256 hash).
  core.int prefixSize;

  /// The hashes, in binary format, concatenated into one long string. Hashes
  /// are
  /// sorted in lexicographic order. For JSON API users, hashes are
  /// base64-encoded.
  core.String rawHashes;
  core.List<core.int> get rawHashesAsBytes {
    return convert.base64.decode(rawHashes);
  }

  set rawHashesAsBytes(core.List<core.int> _bytes) {
    rawHashes =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  RawHashes();

  RawHashes.fromJson(core.Map _json) {
    if (_json.containsKey("prefixSize")) {
      prefixSize = _json["prefixSize"];
    }
    if (_json.containsKey("rawHashes")) {
      rawHashes = _json["rawHashes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (prefixSize != null) {
      _json["prefixSize"] = prefixSize;
    }
    if (rawHashes != null) {
      _json["rawHashes"] = rawHashes;
    }
    return _json;
  }
}

/// A set of raw indices to remove from a local list.
class RawIndices {
  /// The indices to remove from a lexicographically-sorted local list.
  core.List<core.int> indices;

  RawIndices();

  RawIndices.fromJson(core.Map _json) {
    if (_json.containsKey("indices")) {
      indices = (_json["indices"] as core.List).cast<core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indices != null) {
      _json["indices"] = indices;
    }
    return _json;
  }
}

/// The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes or
/// compressed removal indices.
class RiceDeltaEncoding {
  /// The encoded deltas that are encoded using the Golomb-Rice coder.
  core.String encodedData;
  core.List<core.int> get encodedDataAsBytes {
    return convert.base64.decode(encodedData);
  }

  set encodedDataAsBytes(core.List<core.int> _bytes) {
    encodedData =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The offset of the first entry in the encoded data, or, if only a single
  /// integer was encoded, that single integer's value. If the field is empty or
  /// missing, assume zero.
  core.String firstValue;

  /// The number of entries that are delta encoded in the encoded data. If only
  /// a
  /// single integer was encoded, this will be zero and the single value will be
  /// stored in `first_value`.
  core.int numEntries;

  /// The Golomb-Rice parameter, which is a number between 2 and 28. This field
  /// is missing (that is, zero) if `num_entries` is zero.
  core.int riceParameter;

  RiceDeltaEncoding();

  RiceDeltaEncoding.fromJson(core.Map _json) {
    if (_json.containsKey("encodedData")) {
      encodedData = _json["encodedData"];
    }
    if (_json.containsKey("firstValue")) {
      firstValue = _json["firstValue"];
    }
    if (_json.containsKey("numEntries")) {
      numEntries = _json["numEntries"];
    }
    if (_json.containsKey("riceParameter")) {
      riceParameter = _json["riceParameter"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (encodedData != null) {
      _json["encodedData"] = encodedData;
    }
    if (firstValue != null) {
      _json["firstValue"] = firstValue;
    }
    if (numEntries != null) {
      _json["numEntries"] = numEntries;
    }
    if (riceParameter != null) {
      _json["riceParameter"] = riceParameter;
    }
    return _json;
  }
}

/// An individual threat; for example, a malicious URL or its hash
/// representation. Only one of these fields should be set.
class ThreatEntry {
  /// The digest of an executable in SHA256 format. The API supports both
  /// binary and hex digests. For JSON requests, digests are base64-encoded.
  core.String digest;
  core.List<core.int> get digestAsBytes {
    return convert.base64.decode(digest);
  }

  set digestAsBytes(core.List<core.int> _bytes) {
    digest =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A hash prefix, consisting of the most significant 4-32 bytes of a SHA256
  /// hash. This field is in binary format. For JSON requests, hashes are
  /// base64-encoded.
  core.String hash;
  core.List<core.int> get hashAsBytes {
    return convert.base64.decode(hash);
  }

  set hashAsBytes(core.List<core.int> _bytes) {
    hash =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A URL.
  core.String url;

  ThreatEntry();

  ThreatEntry.fromJson(core.Map _json) {
    if (_json.containsKey("digest")) {
      digest = _json["digest"];
    }
    if (_json.containsKey("hash")) {
      hash = _json["hash"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (digest != null) {
      _json["digest"] = digest;
    }
    if (hash != null) {
      _json["hash"] = hash;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// The metadata associated with a specific threat entry. The client is expected
/// to know the metadata key/value pairs associated with each threat type.
class ThreatEntryMetadata {
  /// The metadata entries.
  core.List<MetadataEntry> entries;

  ThreatEntryMetadata();

  ThreatEntryMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = (_json["entries"] as core.List)
          .map<MetadataEntry>((value) => new MetadataEntry.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A set of threats that should be added or removed from a client's local
/// database.
class ThreatEntrySet {
  /// The compression type for the entries in this set.
  /// Possible string values are:
  /// - "COMPRESSION_TYPE_UNSPECIFIED" : Unknown.
  /// - "RAW" : Raw, uncompressed data.
  /// - "RICE" : Rice-Golomb encoded data.
  core.String compressionType;

  /// The raw SHA256-formatted entries.
  RawHashes rawHashes;

  /// The raw removal indices for a local list.
  RawIndices rawIndices;

  /// The encoded 4-byte prefixes of SHA256-formatted entries, using a
  /// Golomb-Rice encoding. The hashes are converted to uint32, sorted in
  /// ascending order, then delta encoded and stored as encoded_data.
  RiceDeltaEncoding riceHashes;

  /// The encoded local, lexicographically-sorted list indices, using a
  /// Golomb-Rice encoding. Used for sending compressed removal indices. The
  /// removal indices (uint32) are sorted in ascending order, then delta encoded
  /// and stored as encoded_data.
  RiceDeltaEncoding riceIndices;

  ThreatEntrySet();

  ThreatEntrySet.fromJson(core.Map _json) {
    if (_json.containsKey("compressionType")) {
      compressionType = _json["compressionType"];
    }
    if (_json.containsKey("rawHashes")) {
      rawHashes = new RawHashes.fromJson(_json["rawHashes"]);
    }
    if (_json.containsKey("rawIndices")) {
      rawIndices = new RawIndices.fromJson(_json["rawIndices"]);
    }
    if (_json.containsKey("riceHashes")) {
      riceHashes = new RiceDeltaEncoding.fromJson(_json["riceHashes"]);
    }
    if (_json.containsKey("riceIndices")) {
      riceIndices = new RiceDeltaEncoding.fromJson(_json["riceIndices"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compressionType != null) {
      _json["compressionType"] = compressionType;
    }
    if (rawHashes != null) {
      _json["rawHashes"] = (rawHashes).toJson();
    }
    if (rawIndices != null) {
      _json["rawIndices"] = (rawIndices).toJson();
    }
    if (riceHashes != null) {
      _json["riceHashes"] = (riceHashes).toJson();
    }
    if (riceIndices != null) {
      _json["riceIndices"] = (riceIndices).toJson();
    }
    return _json;
  }
}

class ThreatHit {
  /// Client-reported identification.
  ClientInfo clientInfo;

  /// The threat entry responsible for the hit. Full hash should be reported for
  /// hash-based hits.
  ThreatEntry entry;

  /// The platform type reported.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED" : Unknown platform.
  /// - "WINDOWS" : Threat posed to Windows.
  /// - "LINUX" : Threat posed to Linux.
  /// - "ANDROID" : Threat posed to Android.
  /// - "OSX" : Threat posed to OS X.
  /// - "IOS" : Threat posed to iOS.
  /// - "ANY_PLATFORM" : Threat posed to at least one of the defined platforms.
  /// - "ALL_PLATFORMS" : Threat posed to all defined platforms.
  /// - "CHROME" : Threat posed to Chrome.
  core.String platformType;

  /// The resources related to the threat hit.
  core.List<ThreatSource> resources;

  /// The threat type reported.
  /// Possible string values are:
  /// - "THREAT_TYPE_UNSPECIFIED" : Unknown.
  /// - "MALWARE" : Malware threat type.
  /// - "SOCIAL_ENGINEERING" : Social engineering threat type.
  /// - "UNWANTED_SOFTWARE" : Unwanted software threat type.
  /// - "POTENTIALLY_HARMFUL_APPLICATION" : Potentially harmful application
  /// threat type.
  /// - "SOCIAL_ENGINEERING_INTERNAL" : Social engineering threat type for
  /// internal use.
  /// - "API_ABUSE" : API abuse threat type.
  /// - "MALICIOUS_BINARY" : Malicious binary threat type.
  /// - "CSD_WHITELIST" : Client side detection whitelist threat type.
  /// - "CSD_DOWNLOAD_WHITELIST" : Client side download detection whitelist
  /// threat type.
  /// - "CLIENT_INCIDENT" : Client incident threat type.
  /// - "CLIENT_INCIDENT_WHITELIST" : Whitelist used when detecting client
  /// incident threats.
  /// This enum was never launched and should be re-used for the next list.
  /// - "APK_MALWARE_OFFLINE" : List used for offline APK checks in PAM.
  /// - "SUBRESOURCE_FILTER" : Patterns to be used for activating the
  /// subresource filter. Interstitial
  /// will not be shown for patterns from this list.
  /// - "SUSPICIOUS" : Entities that are suspected to present a threat.
  /// - "TRICK_TO_BILL" : Trick-to-bill threat list.
  /// - "HIGH_CONFIDENCE_ALLOWLIST" : Safe list to ship hashes of known safe URL
  /// expressions.
  core.String threatType;

  /// Details about the user that encountered the threat.
  UserInfo userInfo;

  ThreatHit();

  ThreatHit.fromJson(core.Map _json) {
    if (_json.containsKey("clientInfo")) {
      clientInfo = new ClientInfo.fromJson(_json["clientInfo"]);
    }
    if (_json.containsKey("entry")) {
      entry = new ThreatEntry.fromJson(_json["entry"]);
    }
    if (_json.containsKey("platformType")) {
      platformType = _json["platformType"];
    }
    if (_json.containsKey("resources")) {
      resources = (_json["resources"] as core.List)
          .map<ThreatSource>((value) => new ThreatSource.fromJson(value))
          .toList();
    }
    if (_json.containsKey("threatType")) {
      threatType = _json["threatType"];
    }
    if (_json.containsKey("userInfo")) {
      userInfo = new UserInfo.fromJson(_json["userInfo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientInfo != null) {
      _json["clientInfo"] = (clientInfo).toJson();
    }
    if (entry != null) {
      _json["entry"] = (entry).toJson();
    }
    if (platformType != null) {
      _json["platformType"] = platformType;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    if (threatType != null) {
      _json["threatType"] = threatType;
    }
    if (userInfo != null) {
      _json["userInfo"] = (userInfo).toJson();
    }
    return _json;
  }
}

/// The information regarding one or more threats that a client submits when
/// checking for matches in threat lists.
class ThreatInfo {
  /// The platform types to be checked.
  core.List<core.String> platformTypes;

  /// The threat entries to be checked.
  core.List<ThreatEntry> threatEntries;

  /// The entry types to be checked.
  core.List<core.String> threatEntryTypes;

  /// The threat types to be checked.
  core.List<core.String> threatTypes;

  ThreatInfo();

  ThreatInfo.fromJson(core.Map _json) {
    if (_json.containsKey("platformTypes")) {
      platformTypes = (_json["platformTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("threatEntries")) {
      threatEntries = (_json["threatEntries"] as core.List)
          .map<ThreatEntry>((value) => new ThreatEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey("threatEntryTypes")) {
      threatEntryTypes =
          (_json["threatEntryTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("threatTypes")) {
      threatTypes = (_json["threatTypes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (platformTypes != null) {
      _json["platformTypes"] = platformTypes;
    }
    if (threatEntries != null) {
      _json["threatEntries"] =
          threatEntries.map((value) => (value).toJson()).toList();
    }
    if (threatEntryTypes != null) {
      _json["threatEntryTypes"] = threatEntryTypes;
    }
    if (threatTypes != null) {
      _json["threatTypes"] = threatTypes;
    }
    return _json;
  }
}

/// Describes an individual threat list. A list is defined by three parameters:
/// the type of threat posed, the type of platform targeted by the threat, and
/// the type of entries in the list.
class ThreatListDescriptor {
  /// The platform type targeted by the list's entries.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED" : Unknown platform.
  /// - "WINDOWS" : Threat posed to Windows.
  /// - "LINUX" : Threat posed to Linux.
  /// - "ANDROID" : Threat posed to Android.
  /// - "OSX" : Threat posed to OS X.
  /// - "IOS" : Threat posed to iOS.
  /// - "ANY_PLATFORM" : Threat posed to at least one of the defined platforms.
  /// - "ALL_PLATFORMS" : Threat posed to all defined platforms.
  /// - "CHROME" : Threat posed to Chrome.
  core.String platformType;

  /// The entry types contained in the list.
  /// Possible string values are:
  /// - "THREAT_ENTRY_TYPE_UNSPECIFIED" : Unspecified.
  /// - "URL" : A URL.
  /// - "EXECUTABLE" : An executable program.
  /// - "IP_RANGE" : An IP range.
  /// - "CHROME_EXTENSION" : Chrome extension.
  /// - "FILENAME" : Filename.
  /// - "CERT" : CERT
  core.String threatEntryType;

  /// The threat type posed by the list's entries.
  /// Possible string values are:
  /// - "THREAT_TYPE_UNSPECIFIED" : Unknown.
  /// - "MALWARE" : Malware threat type.
  /// - "SOCIAL_ENGINEERING" : Social engineering threat type.
  /// - "UNWANTED_SOFTWARE" : Unwanted software threat type.
  /// - "POTENTIALLY_HARMFUL_APPLICATION" : Potentially harmful application
  /// threat type.
  /// - "SOCIAL_ENGINEERING_INTERNAL" : Social engineering threat type for
  /// internal use.
  /// - "API_ABUSE" : API abuse threat type.
  /// - "MALICIOUS_BINARY" : Malicious binary threat type.
  /// - "CSD_WHITELIST" : Client side detection whitelist threat type.
  /// - "CSD_DOWNLOAD_WHITELIST" : Client side download detection whitelist
  /// threat type.
  /// - "CLIENT_INCIDENT" : Client incident threat type.
  /// - "CLIENT_INCIDENT_WHITELIST" : Whitelist used when detecting client
  /// incident threats.
  /// This enum was never launched and should be re-used for the next list.
  /// - "APK_MALWARE_OFFLINE" : List used for offline APK checks in PAM.
  /// - "SUBRESOURCE_FILTER" : Patterns to be used for activating the
  /// subresource filter. Interstitial
  /// will not be shown for patterns from this list.
  /// - "SUSPICIOUS" : Entities that are suspected to present a threat.
  /// - "TRICK_TO_BILL" : Trick-to-bill threat list.
  /// - "HIGH_CONFIDENCE_ALLOWLIST" : Safe list to ship hashes of known safe URL
  /// expressions.
  core.String threatType;

  ThreatListDescriptor();

  ThreatListDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("platformType")) {
      platformType = _json["platformType"];
    }
    if (_json.containsKey("threatEntryType")) {
      threatEntryType = _json["threatEntryType"];
    }
    if (_json.containsKey("threatType")) {
      threatType = _json["threatType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (platformType != null) {
      _json["platformType"] = platformType;
    }
    if (threatEntryType != null) {
      _json["threatEntryType"] = threatEntryType;
    }
    if (threatType != null) {
      _json["threatType"] = threatType;
    }
    return _json;
  }
}

/// A match when checking a threat entry in the Safe Browsing threat lists.
class ThreatMatch {
  /// The cache lifetime for the returned match. Clients must not cache this
  /// response for more than this duration to avoid false positives.
  core.String cacheDuration;

  /// The platform type matching this threat.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED" : Unknown platform.
  /// - "WINDOWS" : Threat posed to Windows.
  /// - "LINUX" : Threat posed to Linux.
  /// - "ANDROID" : Threat posed to Android.
  /// - "OSX" : Threat posed to OS X.
  /// - "IOS" : Threat posed to iOS.
  /// - "ANY_PLATFORM" : Threat posed to at least one of the defined platforms.
  /// - "ALL_PLATFORMS" : Threat posed to all defined platforms.
  /// - "CHROME" : Threat posed to Chrome.
  core.String platformType;

  /// The threat matching this threat.
  ThreatEntry threat;

  /// Optional metadata associated with this threat.
  ThreatEntryMetadata threatEntryMetadata;

  /// The threat entry type matching this threat.
  /// Possible string values are:
  /// - "THREAT_ENTRY_TYPE_UNSPECIFIED" : Unspecified.
  /// - "URL" : A URL.
  /// - "EXECUTABLE" : An executable program.
  /// - "IP_RANGE" : An IP range.
  /// - "CHROME_EXTENSION" : Chrome extension.
  /// - "FILENAME" : Filename.
  /// - "CERT" : CERT
  core.String threatEntryType;

  /// The threat type matching this threat.
  /// Possible string values are:
  /// - "THREAT_TYPE_UNSPECIFIED" : Unknown.
  /// - "MALWARE" : Malware threat type.
  /// - "SOCIAL_ENGINEERING" : Social engineering threat type.
  /// - "UNWANTED_SOFTWARE" : Unwanted software threat type.
  /// - "POTENTIALLY_HARMFUL_APPLICATION" : Potentially harmful application
  /// threat type.
  /// - "SOCIAL_ENGINEERING_INTERNAL" : Social engineering threat type for
  /// internal use.
  /// - "API_ABUSE" : API abuse threat type.
  /// - "MALICIOUS_BINARY" : Malicious binary threat type.
  /// - "CSD_WHITELIST" : Client side detection whitelist threat type.
  /// - "CSD_DOWNLOAD_WHITELIST" : Client side download detection whitelist
  /// threat type.
  /// - "CLIENT_INCIDENT" : Client incident threat type.
  /// - "CLIENT_INCIDENT_WHITELIST" : Whitelist used when detecting client
  /// incident threats.
  /// This enum was never launched and should be re-used for the next list.
  /// - "APK_MALWARE_OFFLINE" : List used for offline APK checks in PAM.
  /// - "SUBRESOURCE_FILTER" : Patterns to be used for activating the
  /// subresource filter. Interstitial
  /// will not be shown for patterns from this list.
  /// - "SUSPICIOUS" : Entities that are suspected to present a threat.
  /// - "TRICK_TO_BILL" : Trick-to-bill threat list.
  /// - "HIGH_CONFIDENCE_ALLOWLIST" : Safe list to ship hashes of known safe URL
  /// expressions.
  core.String threatType;

  ThreatMatch();

  ThreatMatch.fromJson(core.Map _json) {
    if (_json.containsKey("cacheDuration")) {
      cacheDuration = _json["cacheDuration"];
    }
    if (_json.containsKey("platformType")) {
      platformType = _json["platformType"];
    }
    if (_json.containsKey("threat")) {
      threat = new ThreatEntry.fromJson(_json["threat"]);
    }
    if (_json.containsKey("threatEntryMetadata")) {
      threatEntryMetadata =
          new ThreatEntryMetadata.fromJson(_json["threatEntryMetadata"]);
    }
    if (_json.containsKey("threatEntryType")) {
      threatEntryType = _json["threatEntryType"];
    }
    if (_json.containsKey("threatType")) {
      threatType = _json["threatType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cacheDuration != null) {
      _json["cacheDuration"] = cacheDuration;
    }
    if (platformType != null) {
      _json["platformType"] = platformType;
    }
    if (threat != null) {
      _json["threat"] = (threat).toJson();
    }
    if (threatEntryMetadata != null) {
      _json["threatEntryMetadata"] = (threatEntryMetadata).toJson();
    }
    if (threatEntryType != null) {
      _json["threatEntryType"] = threatEntryType;
    }
    if (threatType != null) {
      _json["threatType"] = threatType;
    }
    return _json;
  }
}

/// A single resource related to a threat hit.
class ThreatSource {
  /// Referrer of the resource. Only set if the referrer is available.
  core.String referrer;

  /// The remote IP of the resource in ASCII format. Either IPv4 or IPv6.
  core.String remoteIp;

  /// The type of source reported.
  /// Possible string values are:
  /// - "THREAT_SOURCE_TYPE_UNSPECIFIED" : Unknown.
  /// - "MATCHING_URL" : The URL that matched the threat list (for which
  /// GetFullHash returned a
  /// valid hash).
  /// - "TAB_URL" : The final top-level URL of the tab that the client was
  /// browsing when the
  /// match occurred.
  /// - "TAB_REDIRECT" : A redirect URL that was fetched before hitting the
  /// final TAB_URL.
  /// - "TAB_RESOURCE" : A resource loaded within the final TAB_URL.
  core.String type;

  /// The URL of the resource.
  core.String url;

  ThreatSource();

  ThreatSource.fromJson(core.Map _json) {
    if (_json.containsKey("referrer")) {
      referrer = _json["referrer"];
    }
    if (_json.containsKey("remoteIp")) {
      remoteIp = _json["remoteIp"];
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
    if (referrer != null) {
      _json["referrer"] = referrer;
    }
    if (remoteIp != null) {
      _json["remoteIp"] = remoteIp;
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

/// Details about the user that encountered the threat.
class UserInfo {
  /// The UN M.49 region code associated with the user's location.
  core.String regionCode;

  /// Unique user identifier defined by the client.
  core.String userId;
  core.List<core.int> get userIdAsBytes {
    return convert.base64.decode(userId);
  }

  set userIdAsBytes(core.List<core.int> _bytes) {
    userId =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  UserInfo();

  UserInfo.fromJson(core.Map _json) {
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}
