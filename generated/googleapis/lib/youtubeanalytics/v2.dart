// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.youtubeAnalytics.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client youtubeAnalytics/v2';

/// Retrieves your YouTube Analytics data.
class YoutubeAnalyticsApi {
  /// Manage your YouTube account
  static const YoutubeScope = "https://www.googleapis.com/auth/youtube";

  /// View your YouTube account
  static const YoutubeReadonlyScope =
      "https://www.googleapis.com/auth/youtube.readonly";

  /// View and manage your assets and associated content on YouTube
  static const YoutubepartnerScope =
      "https://www.googleapis.com/auth/youtubepartner";

  /// View monetary and non-monetary YouTube Analytics reports for your YouTube
  /// content
  static const YtAnalyticsMonetaryReadonlyScope =
      "https://www.googleapis.com/auth/yt-analytics-monetary.readonly";

  /// View YouTube Analytics reports for your YouTube content
  static const YtAnalyticsReadonlyScope =
      "https://www.googleapis.com/auth/yt-analytics.readonly";

  final commons.ApiRequester _requester;

  GroupItemsResourceApi get groupItems => new GroupItemsResourceApi(_requester);
  GroupsResourceApi get groups => new GroupsResourceApi(_requester);
  ReportsResourceApi get reports => new ReportsResourceApi(_requester);

  YoutubeAnalyticsApi(http.Client client,
      {core.String rootUrl = "https://youtubeanalytics.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class GroupItemsResourceApi {
  final commons.ApiRequester _requester;

  GroupItemsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Removes an item from a group.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:**
  /// This parameter is intended exclusively for YouTube content partners that
  /// own and manage many different YouTube channels.
  ///
  /// The `onBehalfOfContentOwner` parameter indicates that the request's
  /// authorization credentials identify a YouTube user who is acting on behalf
  /// of the content owner specified in the parameter value. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The account that the user authenticates with must be
  /// linked to the specified YouTube content owner.
  ///
  /// [id] - The `id` parameter specifies the YouTube group item ID of the group
  /// item
  /// that is being deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EmptyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EmptyResponse> delete(
      {core.String onBehalfOfContentOwner,
      core.String id,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/groupItems';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EmptyResponse.fromJson(data));
  }

  /// Creates a group item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:**
  /// This parameter is intended exclusively for YouTube content partners that
  /// own and manage many different YouTube channels.
  ///
  /// The `onBehalfOfContentOwner` parameter indicates that the request's
  /// authorization credentials identify a YouTube user who is acting on behalf
  /// of the content owner specified in the parameter value. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The account that the user authenticates with must be
  /// linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupItem> insert(GroupItem request,
      {core.String onBehalfOfContentOwner, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/groupItems';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GroupItem.fromJson(data));
  }

  /// Returns a collection of group items that match the API request parameters.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:**
  /// This parameter is intended exclusively for YouTube content partners that
  /// own and manage many different YouTube channels.
  ///
  /// The `onBehalfOfContentOwner` parameter indicates that the request's
  /// authorization credentials identify a YouTube user who is acting on behalf
  /// of the content owner specified in the parameter value. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The account that the user authenticates with must be
  /// linked to the specified YouTube content owner.
  ///
  /// [groupId] - The `groupId` parameter specifies the unique ID of the group
  /// for which you
  /// want to retrieve group items.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupItemsResponse> list(
      {core.String onBehalfOfContentOwner,
      core.String groupId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (groupId != null) {
      _queryParams["groupId"] = [groupId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/groupItems';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListGroupItemsResponse.fromJson(data));
  }
}

class GroupsResourceApi {
  final commons.ApiRequester _requester;

  GroupsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a group.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:**
  /// This parameter is intended exclusively for YouTube content partners that
  /// own and manage many different YouTube channels.
  ///
  /// The `onBehalfOfContentOwner` parameter indicates that the request's
  /// authorization credentials identify a YouTube user who is acting on behalf
  /// of the content owner specified in the parameter value. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The account that the user authenticates with must be
  /// linked to the specified YouTube content owner.
  ///
  /// [id] - The `id` parameter specifies the YouTube group ID of the group that
  /// is
  /// being deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EmptyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EmptyResponse> delete(
      {core.String onBehalfOfContentOwner,
      core.String id,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/groups';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EmptyResponse.fromJson(data));
  }

  /// Creates a group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:**
  /// This parameter is intended exclusively for YouTube content partners that
  /// own and manage many different YouTube channels.
  ///
  /// The `onBehalfOfContentOwner` parameter indicates that the request's
  /// authorization credentials identify a YouTube user who is acting on behalf
  /// of the content owner specified in the parameter value. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The account that the user authenticates with must be
  /// linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> insert(Group request,
      {core.String onBehalfOfContentOwner, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/groups';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }

  /// Returns a collection of groups that match the API request parameters. For
  /// example, you can retrieve all groups that the authenticated user owns,
  /// or you can retrieve one or more groups by their unique IDs.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:**
  /// This parameter is intended exclusively for YouTube content partners that
  /// own and manage many different YouTube channels.
  ///
  /// The `onBehalfOfContentOwner` parameter indicates that the request's
  /// authorization credentials identify a YouTube user who is acting on behalf
  /// of the content owner specified in the parameter value. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The account that the user authenticates with must be
  /// linked to the specified YouTube content owner.
  ///
  /// [id] - The `id` parameter specifies a comma-separated list of the YouTube
  /// group
  /// ID(s) for the resource(s) that are being retrieved. Each group must be
  /// owned by the authenticated user. In a `group` resource, the `id` property
  /// specifies the group's YouTube group ID.
  ///
  /// Note that if you do not specify a value for the `id` parameter, then you
  /// must set the `mine` parameter to `true`.
  ///
  /// [mine] - This parameter can only be used in a properly authorized request.
  /// Set this
  /// parameter's value to true to retrieve all groups owned by the
  /// authenticated
  /// user.
  ///
  /// [pageToken] - The `pageToken` parameter identifies a specific page in the
  /// result set that
  /// should be returned. In an API response, the `nextPageToken` property
  /// identifies the next page that can be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupsResponse> list(
      {core.String onBehalfOfContentOwner,
      core.String id,
      core.bool mine,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (mine != null) {
      _queryParams["mine"] = ["${mine}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/groups';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListGroupsResponse.fromJson(data));
  }

  /// Modifies a group. For example, you could change a group's title.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:**
  /// This parameter is intended exclusively for YouTube content partners that
  /// own and manage many different YouTube channels.
  ///
  /// The `onBehalfOfContentOwner` parameter indicates that the request's
  /// authorization credentials identify a YouTube user who is acting on behalf
  /// of the content owner specified in the parameter value. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The account that the user authenticates with must be
  /// linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> update(Group request,
      {core.String onBehalfOfContentOwner, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/groups';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }
}

class ReportsResourceApi {
  final commons.ApiRequester _requester;

  ReportsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieve your YouTube Analytics reports.
  ///
  /// Request parameters:
  ///
  /// [ids] - Identifies the YouTube channel or content owner for which you are
  /// retrieving YouTube Analytics data.
  ///
  /// - To request data for a YouTube user, set the `ids` parameter value to
  ///   `channel==CHANNEL_ID`, where `CHANNEL_ID` specifies the unique YouTube
  ///   channel ID.
  /// - To request data for a YouTube CMS content owner, set the `ids` parameter
  ///   value to `contentOwner==OWNER_NAME`, where `OWNER_NAME` is the CMS name
  ///   of the content owner.
  /// required: true, pattern: [a-zA-Z]+==[a-zA-Z0-9_+-]+
  ///
  /// [includeHistoricalChannelData] - If set to true historical data (i.e.
  /// channel data from before the linking
  /// of the channel to the content owner) will be retrieved.",
  ///
  /// [currency] - The currency to which financial metrics should be converted.
  /// The default is
  /// US Dollar (USD). If the result contains no financial metrics, this flag
  /// will be ignored. Responds with an error if the specified currency is not
  /// recognized.",
  /// pattern: [A-Z]{3}
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a
  /// pagination mechanism along with the max-results parameter (one-based,
  /// inclusive).",
  /// minValue: 1
  ///
  /// [dimensions] - A comma-separated list of YouTube Analytics dimensions,
  /// such as `views` or
  /// `ageGroup,gender`. See the [Available
  /// Reports](/youtube/analytics/v2/available_reports) document for a list of
  /// the reports that you can retrieve and the dimensions used for those
  /// reports. Also see the [Dimensions](/youtube/analytics/v2/dimsmets/dims)
  /// document for definitions of those dimensions."
  /// pattern: [0-9a-zA-Z,]+
  ///
  /// [endDate] - The end date for fetching YouTube Analytics data. The value
  /// should be in
  /// `YYYY-MM-DD` format.
  /// required: true, pattern: [0-9]{4}-[0-9]{2}-[0-9]{2}
  ///
  /// [maxResults] - The maximum number of rows to include in the response.",
  /// minValue: 1
  ///
  /// [filters] - A list of filters that should be applied when retrieving
  /// YouTube Analytics
  /// data. The [Available Reports](/youtube/analytics/v2/available_reports)
  /// document identifies the dimensions that can be used to filter each report,
  /// and the [Dimensions](/youtube/analytics/v2/dimsmets/dims)  document
  /// defines
  /// those dimensions. If a request uses multiple filters, join them together
  /// with a semicolon (`;`), and the returned result table will satisfy both
  /// filters. For example, a filters parameter value of
  /// `video==dMH0bHeiRNg;country==IT` restricts the result set to include data
  /// for the given video in Italy.",
  ///
  /// [sort] - A comma-separated list of dimensions or metrics that determine
  /// the sort
  /// order for YouTube Analytics data. By default the sort order is ascending.
  /// The '`-`' prefix causes descending sort order.",
  /// pattern: [-0-9a-zA-Z,]+
  ///
  /// [startDate] - The start date for fetching YouTube Analytics data. The
  /// value should be in
  /// `YYYY-MM-DD` format.
  /// required: true, pattern: "[0-9]{4}-[0-9]{2}-[0-9]{2}
  ///
  /// [metrics] - A comma-separated list of YouTube Analytics metrics, such as
  /// `views` or
  /// `likes,dislikes`. See the
  /// [Available Reports](/youtube/analytics/v2/available_reports)  document for
  /// a list of the reports that you can retrieve and the metrics
  /// available in each report, and see the
  /// [Metrics](/youtube/analytics/v2/dimsmets/mets) document for definitions of
  /// those metrics.
  /// required: true, pattern: [0-9a-zA-Z,]+
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryResponse> query(
      {core.String ids,
      core.bool includeHistoricalChannelData,
      core.String currency,
      core.int startIndex,
      core.String dimensions,
      core.String endDate,
      core.int maxResults,
      core.String filters,
      core.String sort,
      core.String startDate,
      core.String metrics,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (ids != null) {
      _queryParams["ids"] = [ids];
    }
    if (includeHistoricalChannelData != null) {
      _queryParams["includeHistoricalChannelData"] = [
        "${includeHistoricalChannelData}"
      ];
    }
    if (currency != null) {
      _queryParams["currency"] = [currency];
    }
    if (startIndex != null) {
      _queryParams["startIndex"] = ["${startIndex}"];
    }
    if (dimensions != null) {
      _queryParams["dimensions"] = [dimensions];
    }
    if (endDate != null) {
      _queryParams["endDate"] = [endDate];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (filters != null) {
      _queryParams["filters"] = [filters];
    }
    if (sort != null) {
      _queryParams["sort"] = [sort];
    }
    if (startDate != null) {
      _queryParams["startDate"] = [startDate];
    }
    if (metrics != null) {
      _queryParams["metrics"] = [metrics];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/reports';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new QueryResponse.fromJson(data));
  }
}

/// Empty response.
class EmptyResponse {
  /// Apiary error details
  Errors errors;

  EmptyResponse();

  EmptyResponse.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    return _json;
  }
}

/// Describes one specific error.
class ErrorProto {
  /// Error arguments, to be used when building user-friendly error messages
  /// given the error domain and code.  Different error codes require different
  /// arguments.
  core.List<core.String> argument;

  /// Error code in the error domain. This should correspond to
  /// a value of the enum type whose name is in domain. See
  /// the core error domain in error_domain.proto.
  core.String code;

  /// Debugging information, which should not be
  /// shared externally.
  core.String debugInfo;

  /// Error domain. RoSy services can define their own
  /// domain and error codes. This should normally be
  /// the name of an enum type, such as: gdata.CoreErrorDomain
  core.String domain;

  /// A short explanation for the error, which can be shared outside Google.
  ///
  /// Please set domain, code and arguments whenever possible instead of this
  /// error message so that external APIs can build safe error messages
  /// themselves.
  ///
  /// External messages built in a RoSy interface will most likely refer to
  /// information and concepts that are not available externally and should not
  /// be exposed. It is safer if external APIs can understand the errors and
  /// decide what the error message should look like.
  core.String externalErrorMessage;

  /// Location of the error, as specified by the location type.
  ///
  /// If location_type is PATH, this should be a path to a field that's
  /// relative to the request, using FieldPath notation
  /// (net/proto2/util/public/field_path.h).
  ///
  /// Examples:
  ///   authenticated_user.gaia_id
  ///   resource.address[2].country
  core.String location;

  ///
  /// Possible string values are:
  /// - "PATH" : location is an xpath-like path pointing
  /// to the request field that caused the error.
  /// - "OTHER" : other location type which can safely be shared
  /// externally.
  /// - "PARAMETER" : Location is request paramater. This maps to the {@link
  /// PARAMETERS} in
  /// {@link MessageLocation}.
  core.String locationType;

  ErrorProto();

  ErrorProto.fromJson(core.Map _json) {
    if (_json.containsKey("argument")) {
      argument = (_json["argument"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("debugInfo")) {
      debugInfo = _json["debugInfo"];
    }
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("externalErrorMessage")) {
      externalErrorMessage = _json["externalErrorMessage"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("locationType")) {
      locationType = _json["locationType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (argument != null) {
      _json["argument"] = argument;
    }
    if (code != null) {
      _json["code"] = code;
    }
    if (debugInfo != null) {
      _json["debugInfo"] = debugInfo;
    }
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (externalErrorMessage != null) {
      _json["externalErrorMessage"] = externalErrorMessage;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (locationType != null) {
      _json["locationType"] = locationType;
    }
    return _json;
  }
}

/// Request Error information.
///
/// The presence of an error field signals that the operation
/// has failed.
class Errors {
  /// Global error code. Deprecated and ignored.
  /// Set custom error codes in ErrorProto.domain and ErrorProto.code
  /// instead.
  /// Possible string values are:
  /// - "BAD_REQUEST"
  /// - "FORBIDDEN"
  /// - "NOT_FOUND"
  /// - "CONFLICT"
  /// - "GONE"
  /// - "PRECONDITION_FAILED"
  /// - "INTERNAL_ERROR"
  /// - "SERVICE_UNAVAILABLE"
  core.String code;

  /// Specific error description and codes
  core.List<ErrorProto> error;

  /// Request identifier generated by the service, which can be
  /// used to identify the error in the logs
  core.String requestId;

  Errors();

  Errors.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("error")) {
      error = (_json["error"] as core.List)
          .map<ErrorProto>((value) => new ErrorProto.fromJson(value))
          .toList();
    }
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (error != null) {
      _json["error"] = error.map((value) => (value).toJson()).toList();
    }
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    return _json;
  }
}

/// A group.
class Group {
  /// The `contentDetails` object contains additional information about the
  /// group, such as the number and type of items that it contains.
  GroupContentDetails contentDetails;

  /// Apiary error details
  Errors errors;

  /// The Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the group.
  core.String id;

  /// Identifies the API resource's type. The value will be `youtube#group`.
  core.String kind;

  /// The `snippet` object contains basic information about the group, including
  /// its creation date and name.
  GroupSnippet snippet;

  Group();

  Group.fromJson(core.Map _json) {
    if (_json.containsKey("contentDetails")) {
      contentDetails =
          new GroupContentDetails.fromJson(_json["contentDetails"]);
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("snippet")) {
      snippet = new GroupSnippet.fromJson(_json["snippet"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (snippet != null) {
      _json["snippet"] = (snippet).toJson();
    }
    return _json;
  }
}

/// A group's content details.
class GroupContentDetails {
  /// The number of items in the group.
  core.String itemCount;

  /// The type of resources that the group contains.
  ///
  /// Valid values for this property are:
  ///  * `youtube#channel`
  ///  * `youtube#playlist`
  ///  * `youtube#video`
  ///  * `youtubePartner#asset`
  core.String itemType;

  GroupContentDetails();

  GroupContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("itemCount")) {
      itemCount = _json["itemCount"];
    }
    if (_json.containsKey("itemType")) {
      itemType = _json["itemType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (itemCount != null) {
      _json["itemCount"] = itemCount;
    }
    if (itemType != null) {
      _json["itemType"] = itemType;
    }
    return _json;
  }
}

/// A group item.
class GroupItem {
  /// Apiary error details
  Errors errors;

  /// The Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the group that contains the
  /// item.
  core.String groupId;

  /// The ID that YouTube uses to uniquely identify the `channel`, `video`,
  /// `playlist`, or `asset` resource that is included in the group. Note that
  /// this ID refers specifically to the inclusion of that resource in a
  /// particular group and is different than the channel ID, video ID,
  /// playlist ID, or asset ID that uniquely identifies the resource itself.
  /// The `resource.id` property's value specifies the unique channel, video,
  /// playlist, or asset ID.
  core.String id;

  /// Identifies the API resource's type. The value will be `youtube#groupItem`.
  core.String kind;

  /// The `resource` object contains information that identifies the item being
  /// added to the group.
  GroupItemResource resource;

  GroupItem();

  GroupItem.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("groupId")) {
      groupId = _json["groupId"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("resource")) {
      resource = new GroupItemResource.fromJson(_json["resource"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (groupId != null) {
      _json["groupId"] = groupId;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

class GroupItemResource {
  /// The channel, video, playlist, or asset ID that YouTube uses to uniquely
  /// identify the item that is being added to the group.
  core.String id;

  /// Identifies the type of resource being added to the group.
  ///
  /// Valid values for this property are:
  ///  * `youtube#channel`
  ///  * `youtube#playlist`
  ///  * `youtube#video`
  ///  * `youtubePartner#asset`
  core.String kind;

  GroupItemResource();

  GroupItemResource.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// A group snippet.
class GroupSnippet {
  /// The date and time that the group was created. The value is specified in
  /// ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
  core.String publishedAt;

  /// The group name. The value must be a non-empty string.
  core.String title;

  GroupSnippet();

  GroupSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("publishedAt")) {
      publishedAt = _json["publishedAt"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (publishedAt != null) {
      _json["publishedAt"] = publishedAt;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Response message for GroupsService.ListGroupItems.
class ListGroupItemsResponse {
  /// Apiary error details
  Errors errors;

  /// The Etag of this resource.
  core.String etag;

  /// A list of groups that match the API request parameters. Each item in the
  /// list represents a `groupItem` resource.
  core.List<GroupItem> items;

  /// Identifies the API resource's type. The value will be
  /// `youtube#groupItemListResponse`.
  core.String kind;

  ListGroupItemsResponse();

  ListGroupItemsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GroupItem>((value) => new GroupItem.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Response message for GroupsService.ListGroups.
class ListGroupsResponse {
  /// Apiary error details
  Errors errors;

  /// The Etag of this resource.
  core.String etag;

  /// A list of groups that match the API request parameters. Each item in the
  /// list represents a `group` resource.
  core.List<Group> items;

  /// Identifies the API resource's type. The value will be
  /// `youtube#groupListResponse`.
  core.String kind;

  /// The token that can be used as the value of the `pageToken` parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  ListGroupsResponse();

  ListGroupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Group>((value) => new Group.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for TargetedQueriesService.Query.
class QueryResponse {
  /// This value specifies information about the data returned in the `rows`
  /// fields. Each item in the `columnHeaders` list identifies a field returned
  /// in the `rows` value, which contains a list of comma-delimited data. The
  /// `columnHeaders` list will begin with the dimensions specified in the API
  /// request, which will be followed by the metrics specified in the API
  /// request. The order of both dimensions and metrics will match the ordering
  /// in the API request. For example, if the API request contains the
  /// parameters
  /// `dimensions=ageGroup,gender&metrics=viewerPercentage`, the API response
  /// will return columns in this order: `ageGroup`, `gender`,
  /// `viewerPercentage`.
  core.List<ResultTableColumnHeader> columnHeaders;

  /// When set, indicates that the operation failed.
  Errors errors;

  /// This value specifies the type of data included in the API response.
  /// For the query method, the kind property value will be
  /// `youtubeAnalytics#resultTable`.
  core.String kind;

  /// The list contains all rows of the result table. Each item in the list is
  /// an array that contains comma-delimited data corresponding to a single row
  /// of data. The order of the comma-delimited data fields will match the
  /// order of the columns listed in the `columnHeaders` field.
  ///
  /// If no data is available for the given query, the `rows` element will be
  /// omitted from the response.
  ///
  /// The response for a query with the `day` dimension will not contain rows
  /// for
  /// the most recent days.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object>> rows;

  QueryResponse();

  QueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("columnHeaders")) {
      columnHeaders = (_json["columnHeaders"] as core.List)
          .map<ResultTableColumnHeader>(
              (value) => new ResultTableColumnHeader.fromJson(value))
          .toList();
    }
    if (_json.containsKey("errors")) {
      errors = new Errors.fromJson(_json["errors"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("rows")) {
      rows = (_json["rows"] as core.List)
          .map<core.List<core.Object>>(
              (value) => (value as core.List).cast<core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columnHeaders != null) {
      _json["columnHeaders"] =
          columnHeaders.map((value) => (value).toJson()).toList();
    }
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (rows != null) {
      _json["rows"] = rows;
    }
    return _json;
  }
}

/// The description of a column of the result table.
class ResultTableColumnHeader {
  /// The type of the column (`DIMENSION` or `METRIC`).
  core.String columnType;

  /// The type of the data in the column (`STRING`, `INTEGER`, `FLOAT`, etc.).
  core.String dataType;

  /// The name of the dimension or metric.
  core.String name;

  ResultTableColumnHeader();

  ResultTableColumnHeader.fromJson(core.Map _json) {
    if (_json.containsKey("columnType")) {
      columnType = _json["columnType"];
    }
    if (_json.containsKey("dataType")) {
      dataType = _json["dataType"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columnType != null) {
      _json["columnType"] = columnType;
    }
    if (dataType != null) {
      _json["dataType"] = dataType;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}
