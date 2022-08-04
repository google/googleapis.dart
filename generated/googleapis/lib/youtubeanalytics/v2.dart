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

/// YouTube Analytics API - v2
///
/// Retrieves your YouTube Analytics data.
///
/// For more information, see <https://developers.google.com/youtube/analytics>
///
/// Create an instance of [YouTubeAnalyticsApi] to access these resources:
///
/// - [GroupItemsResource]
/// - [GroupsResource]
/// - [ReportsResource]
library youtubeAnalytics.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Retrieves your YouTube Analytics data.
class YouTubeAnalyticsApi {
  /// Manage your YouTube account
  static const youtubeScope = 'https://www.googleapis.com/auth/youtube';

  /// View your YouTube account
  static const youtubeReadonlyScope =
      'https://www.googleapis.com/auth/youtube.readonly';

  /// View and manage your assets and associated content on YouTube
  static const youtubepartnerScope =
      'https://www.googleapis.com/auth/youtubepartner';

  /// View monetary and non-monetary YouTube Analytics reports for your YouTube
  /// content
  static const ytAnalyticsMonetaryReadonlyScope =
      'https://www.googleapis.com/auth/yt-analytics-monetary.readonly';

  /// View YouTube Analytics reports for your YouTube content
  static const ytAnalyticsReadonlyScope =
      'https://www.googleapis.com/auth/yt-analytics.readonly';

  final commons.ApiRequester _requester;

  GroupItemsResource get groupItems => GroupItemsResource(_requester);
  GroupsResource get groups => GroupsResource(_requester);
  ReportsResource get reports => ReportsResource(_requester);

  YouTubeAnalyticsApi(http.Client client,
      {core.String rootUrl = 'https://youtubeanalytics.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class GroupItemsResource {
  final commons.ApiRequester _requester;

  GroupItemsResource(commons.ApiRequester client) : _requester = client;

  /// Removes an item from a group.
  ///
  /// Request parameters:
  ///
  /// [id] - The `id` parameter specifies the YouTube group item ID of the group
  /// item that is being deleted.
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:** This parameter is intended exclusively for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. The `onBehalfOfContentOwner` parameter indicates that the
  /// request's authorization credentials identify a YouTube user who is acting
  /// on behalf of the content owner specified in the parameter value. It allows
  /// content owners to authenticate once and get access to all their video and
  /// channel data, without having to provide authentication credentials for
  /// each individual channel. The account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
  async.Future<EmptyResponse> delete({
    core.String? id,
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (id != null) 'id': [id],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/groupItems';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return EmptyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a group item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:** This parameter is intended exclusively for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. The `onBehalfOfContentOwner` parameter indicates that the
  /// request's authorization credentials identify a YouTube user who is acting
  /// on behalf of the content owner specified in the parameter value. It allows
  /// content owners to authenticate once and get access to all their video and
  /// channel data, without having to provide authentication credentials for
  /// each individual channel. The account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
  async.Future<GroupItem> insert(
    GroupItem request, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/groupItems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupItem.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a collection of group items that match the API request parameters.
  ///
  /// Request parameters:
  ///
  /// [groupId] - The `groupId` parameter specifies the unique ID of the group
  /// for which you want to retrieve group items.
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:** This parameter is intended exclusively for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. The `onBehalfOfContentOwner` parameter indicates that the
  /// request's authorization credentials identify a YouTube user who is acting
  /// on behalf of the content owner specified in the parameter value. It allows
  /// content owners to authenticate once and get access to all their video and
  /// channel data, without having to provide authentication credentials for
  /// each individual channel. The account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
  async.Future<ListGroupItemsResponse> list({
    core.String? groupId,
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupId != null) 'groupId': [groupId],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/groupItems';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupItemsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GroupsResource {
  final commons.ApiRequester _requester;

  GroupsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a group.
  ///
  /// Request parameters:
  ///
  /// [id] - The `id` parameter specifies the YouTube group ID of the group that
  /// is being deleted.
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:** This parameter is intended exclusively for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. The `onBehalfOfContentOwner` parameter indicates that the
  /// request's authorization credentials identify a YouTube user who is acting
  /// on behalf of the content owner specified in the parameter value. It allows
  /// content owners to authenticate once and get access to all their video and
  /// channel data, without having to provide authentication credentials for
  /// each individual channel. The account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
  async.Future<EmptyResponse> delete({
    core.String? id,
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (id != null) 'id': [id],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/groups';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return EmptyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:** This parameter is intended exclusively for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. The `onBehalfOfContentOwner` parameter indicates that the
  /// request's authorization credentials identify a YouTube user who is acting
  /// on behalf of the content owner specified in the parameter value. It allows
  /// content owners to authenticate once and get access to all their video and
  /// channel data, without having to provide authentication credentials for
  /// each individual channel. The account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
  async.Future<Group> insert(
    Group request, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/groups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a collection of groups that match the API request parameters.
  ///
  /// For example, you can retrieve all groups that the authenticated user owns,
  /// or you can retrieve one or more groups by their unique IDs.
  ///
  /// Request parameters:
  ///
  /// [id] - The `id` parameter specifies a comma-separated list of the YouTube
  /// group ID(s) for the resource(s) that are being retrieved. Each group must
  /// be owned by the authenticated user. In a `group` resource, the `id`
  /// property specifies the group's YouTube group ID. Note that if you do not
  /// specify a value for the `id` parameter, then you must set the `mine`
  /// parameter to `true`.
  ///
  /// [mine] - This parameter can only be used in a properly authorized request.
  /// Set this parameter's value to true to retrieve all groups owned by the
  /// authenticated user.
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:** This parameter is intended exclusively for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. The `onBehalfOfContentOwner` parameter indicates that the
  /// request's authorization credentials identify a YouTube user who is acting
  /// on behalf of the content owner specified in the parameter value. It allows
  /// content owners to authenticate once and get access to all their video and
  /// channel data, without having to provide authentication credentials for
  /// each individual channel. The account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [pageToken] - The `pageToken` parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the
  /// `nextPageToken` property identifies the next page that can be retrieved.
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
  async.Future<ListGroupsResponse> list({
    core.String? id,
    core.bool? mine,
    core.String? onBehalfOfContentOwner,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (id != null) 'id': [id],
      if (mine != null) 'mine': ['${mine}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies a group.
  ///
  /// For example, you could change a group's title.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - This parameter can only be used in a properly
  /// authorized request. **Note:** This parameter is intended exclusively for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. The `onBehalfOfContentOwner` parameter indicates that the
  /// request's authorization credentials identify a YouTube user who is acting
  /// on behalf of the content owner specified in the parameter value. It allows
  /// content owners to authenticate once and get access to all their video and
  /// channel data, without having to provide authentication credentials for
  /// each individual channel. The account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
  async.Future<Group> update(
    Group request, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/groups';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ReportsResource {
  final commons.ApiRequester _requester;

  ReportsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieve your YouTube Analytics reports.
  ///
  /// Request parameters:
  ///
  /// [currency] - The currency to which financial metrics should be converted.
  /// The default is US Dollar (USD). If the result contains no financial
  /// metrics, this flag will be ignored. Responds with an error if the
  /// specified currency is not recognized.", pattern: \[A-Z\]{3}
  ///
  /// [dimensions] - A comma-separated list of YouTube Analytics dimensions,
  /// such as `views` or `ageGroup,gender`. See the \[Available
  /// Reports\](/youtube/analytics/v2/available_reports) document for a list of
  /// the reports that you can retrieve and the dimensions used for those
  /// reports. Also see the \[Dimensions\](/youtube/analytics/v2/dimsmets/dims)
  /// document for definitions of those dimensions." pattern: \[0-9a-zA-Z,\]+
  ///
  /// [endDate] - The end date for fetching YouTube Analytics data. The value
  /// should be in `YYYY-MM-DD` format. required: true, pattern:
  /// \[0-9\]{4}-\[0-9\]{2}-\[0-9\]{2}
  ///
  /// [filters] - A list of filters that should be applied when retrieving
  /// YouTube Analytics data. The \[Available
  /// Reports\](/youtube/analytics/v2/available_reports) document identifies the
  /// dimensions that can be used to filter each report, and the
  /// \[Dimensions\](/youtube/analytics/v2/dimsmets/dims) document defines those
  /// dimensions. If a request uses multiple filters, join them together with a
  /// semicolon (`;`), and the returned result table will satisfy both filters.
  /// For example, a filters parameter value of `video==dMH0bHeiRNg;country==IT`
  /// restricts the result set to include data for the given video in Italy.",
  ///
  /// [ids] - Identifies the YouTube channel or content owner for which you are
  /// retrieving YouTube Analytics data. - To request data for a YouTube user,
  /// set the `ids` parameter value to `channel==CHANNEL_ID`, where `CHANNEL_ID`
  /// specifies the unique YouTube channel ID. - To request data for a YouTube
  /// CMS content owner, set the `ids` parameter value to
  /// `contentOwner==OWNER_NAME`, where `OWNER_NAME` is the CMS name of the
  /// content owner. required: true, pattern: \[a-zA-Z\]+==\[a-zA-Z0-9_+-\]+
  ///
  /// [includeHistoricalChannelData] - If set to true historical data (i.e.
  /// channel data from before the linking of the channel to the content owner)
  /// will be retrieved.",
  ///
  /// [maxResults] - The maximum number of rows to include in the response.",
  /// minValue: 1
  ///
  /// [metrics] - A comma-separated list of YouTube Analytics metrics, such as
  /// `views` or `likes,dislikes`. See the \[Available
  /// Reports\](/youtube/analytics/v2/available_reports) document for a list of
  /// the reports that you can retrieve and the metrics available in each
  /// report, and see the \[Metrics\](/youtube/analytics/v2/dimsmets/mets)
  /// document for definitions of those metrics. required: true, pattern:
  /// \[0-9a-zA-Z,\]+
  ///
  /// [sort] - A comma-separated list of dimensions or metrics that determine
  /// the sort order for YouTube Analytics data. By default the sort order is
  /// ascending. The '`-`' prefix causes descending sort order.", pattern:
  /// \[-0-9a-zA-Z,\]+
  ///
  /// [startDate] - The start date for fetching YouTube Analytics data. The
  /// value should be in `YYYY-MM-DD` format. required: true, pattern:
  /// "\[0-9\]{4}-\[0-9\]{2}-\[0-9\]{2}
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter
  /// (one-based, inclusive).", minValue: 1
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
  async.Future<QueryResponse> query({
    core.String? currency,
    core.String? dimensions,
    core.String? endDate,
    core.String? filters,
    core.String? ids,
    core.bool? includeHistoricalChannelData,
    core.int? maxResults,
    core.String? metrics,
    core.String? sort,
    core.String? startDate,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currency != null) 'currency': [currency],
      if (dimensions != null) 'dimensions': [dimensions],
      if (endDate != null) 'endDate': [endDate],
      if (filters != null) 'filters': [filters],
      if (ids != null) 'ids': [ids],
      if (includeHistoricalChannelData != null)
        'includeHistoricalChannelData': ['${includeHistoricalChannelData}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (metrics != null) 'metrics': [metrics],
      if (sort != null) 'sort': [sort],
      if (startDate != null) 'startDate': [startDate],
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Empty response.
class EmptyResponse {
  /// Apiary error details
  Errors? errors;

  EmptyResponse({
    this.errors,
  });

  EmptyResponse.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
      };
}

/// Describes one specific error.
class ErrorProto {
  /// Error arguments, to be used when building user-friendly error messages
  /// given the error domain and code.
  ///
  /// Different error codes require different arguments.
  core.List<core.String>? argument;

  /// Error code in the error domain.
  ///
  /// This should correspond to a value of the enum type whose name is in
  /// domain. See the core error domain in error_domain.proto.
  core.String? code;

  /// Debugging information, which should not be shared externally.
  core.String? debugInfo;

  /// Error domain.
  ///
  /// RoSy services can define their own domain and error codes. This should
  /// normally be the name of an enum type, such as: gdata.CoreErrorDomain
  core.String? domain;

  /// A short explanation for the error, which can be shared outside Google.
  ///
  /// Please set domain, code and arguments whenever possible instead of this
  /// error message so that external APIs can build safe error messages
  /// themselves. External messages built in a RoSy interface will most likely
  /// refer to information and concepts that are not available externally and
  /// should not be exposed. It is safer if external APIs can understand the
  /// errors and decide what the error message should look like.
  core.String? externalErrorMessage;

  /// Location of the error, as specified by the location type.
  ///
  /// If location_type is PATH, this should be a path to a field that's relative
  /// to the request, using FieldPath notation
  /// (net/proto2/util/public/field_path.h). Examples:
  /// authenticated_user.gaia_id resource.address\[2\].country
  core.String? location;

  ///
  /// Possible string values are:
  /// - "PATH" : location is an xpath-like path pointing to the request field
  /// that caused the error.
  /// - "OTHER" : other location type which can safely be shared externally.
  /// - "PARAMETER" : Location is request parameter. This maps to the {@link
  /// PARAMETERS} in {@link MessageLocation}.
  core.String? locationType;

  ErrorProto({
    this.argument,
    this.code,
    this.debugInfo,
    this.domain,
    this.externalErrorMessage,
    this.location,
    this.locationType,
  });

  ErrorProto.fromJson(core.Map json_)
      : this(
          argument: json_.containsKey('argument')
              ? (json_['argument'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          debugInfo: json_.containsKey('debugInfo')
              ? json_['debugInfo'] as core.String
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          externalErrorMessage: json_.containsKey('externalErrorMessage')
              ? json_['externalErrorMessage'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          locationType: json_.containsKey('locationType')
              ? json_['locationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (argument != null) 'argument': argument!,
        if (code != null) 'code': code!,
        if (debugInfo != null) 'debugInfo': debugInfo!,
        if (domain != null) 'domain': domain!,
        if (externalErrorMessage != null)
          'externalErrorMessage': externalErrorMessage!,
        if (location != null) 'location': location!,
        if (locationType != null) 'locationType': locationType!,
      };
}

/// Request Error information.
///
/// The presence of an error field signals that the operation has failed.
class Errors {
  /// Global error code.
  ///
  /// Deprecated and ignored. Set custom error codes in ErrorProto.domain and
  /// ErrorProto.code instead.
  /// Possible string values are:
  /// - "BAD_REQUEST"
  /// - "FORBIDDEN"
  /// - "NOT_FOUND"
  /// - "CONFLICT"
  /// - "GONE"
  /// - "PRECONDITION_FAILED"
  /// - "INTERNAL_ERROR"
  /// - "SERVICE_UNAVAILABLE"
  core.String? code;

  /// Specific error description and codes
  core.List<ErrorProto>? error;

  /// Request identifier generated by the service, which can be used to identify
  /// the error in the logs
  core.String? requestId;

  Errors({
    this.code,
    this.error,
    this.requestId,
  });

  Errors.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          error: json_.containsKey('error')
              ? (json_['error'] as core.List)
                  .map((value) => ErrorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (error != null) 'error': error!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// A group.
class Group {
  /// The `contentDetails` object contains additional information about the
  /// group, such as the number and type of items that it contains.
  GroupContentDetails? contentDetails;

  /// Apiary error details
  Errors? errors;

  /// The Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the group.
  core.String? id;

  /// Identifies the API resource's type.
  ///
  /// The value will be `youtube#group`.
  core.String? kind;

  /// The `snippet` object contains basic information about the group, including
  /// its creation date and name.
  GroupSnippet? snippet;

  Group({
    this.contentDetails,
    this.errors,
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  Group.fromJson(core.Map json_)
      : this(
          contentDetails: json_.containsKey('contentDetails')
              ? GroupContentDetails.fromJson(json_['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          errors: json_.containsKey('errors')
              ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          snippet: json_.containsKey('snippet')
              ? GroupSnippet.fromJson(
                  json_['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (errors != null) 'errors': errors!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

/// A group's content details.
class GroupContentDetails {
  /// The number of items in the group.
  core.String? itemCount;

  /// The type of resources that the group contains.
  ///
  /// Valid values for this property are: * `youtube#channel` *
  /// `youtube#playlist` * `youtube#video` * `youtubePartner#asset`
  core.String? itemType;

  GroupContentDetails({
    this.itemCount,
    this.itemType,
  });

  GroupContentDetails.fromJson(core.Map json_)
      : this(
          itemCount: json_.containsKey('itemCount')
              ? json_['itemCount'] as core.String
              : null,
          itemType: json_.containsKey('itemType')
              ? json_['itemType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (itemCount != null) 'itemCount': itemCount!,
        if (itemType != null) 'itemType': itemType!,
      };
}

/// A group item.
class GroupItem {
  /// Apiary error details
  Errors? errors;

  /// The Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the group that contains the
  /// item.
  core.String? groupId;

  /// The ID that YouTube uses to uniquely identify the `channel`, `video`,
  /// `playlist`, or `asset` resource that is included in the group.
  ///
  /// Note that this ID refers specifically to the inclusion of that resource in
  /// a particular group and is different than the channel ID, video ID,
  /// playlist ID, or asset ID that uniquely identifies the resource itself. The
  /// `resource.id` property's value specifies the unique channel, video,
  /// playlist, or asset ID.
  core.String? id;

  /// Identifies the API resource's type.
  ///
  /// The value will be `youtube#groupItem`.
  core.String? kind;

  /// The `resource` object contains information that identifies the item being
  /// added to the group.
  GroupItemResource? resource;

  GroupItem({
    this.errors,
    this.etag,
    this.groupId,
    this.id,
    this.kind,
    this.resource,
  });

  GroupItem.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          groupId: json_.containsKey('groupId')
              ? json_['groupId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          resource: json_.containsKey('resource')
              ? GroupItemResource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (etag != null) 'etag': etag!,
        if (groupId != null) 'groupId': groupId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (resource != null) 'resource': resource!,
      };
}

class GroupItemResource {
  /// The channel, video, playlist, or asset ID that YouTube uses to uniquely
  /// identify the item that is being added to the group.
  core.String? id;

  /// Identifies the type of resource being added to the group.
  ///
  /// Valid values for this property are: * `youtube#channel` *
  /// `youtube#playlist` * `youtube#video` * `youtubePartner#asset`
  core.String? kind;

  GroupItemResource({
    this.id,
    this.kind,
  });

  GroupItemResource.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
      };
}

/// A group snippet.
class GroupSnippet {
  /// The date and time that the group was created.
  ///
  /// The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
  core.String? publishedAt;

  /// The group name.
  ///
  /// The value must be a non-empty string.
  core.String? title;

  GroupSnippet({
    this.publishedAt,
    this.title,
  });

  GroupSnippet.fromJson(core.Map json_)
      : this(
          publishedAt: json_.containsKey('publishedAt')
              ? json_['publishedAt'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publishedAt != null) 'publishedAt': publishedAt!,
        if (title != null) 'title': title!,
      };
}

/// Response message for GroupsService.ListGroupItems.
class ListGroupItemsResponse {
  /// Apiary error details
  Errors? errors;

  /// The Etag of this resource.
  core.String? etag;

  /// A list of groups that match the API request parameters.
  ///
  /// Each item in the list represents a `groupItem` resource.
  core.List<GroupItem>? items;

  /// Identifies the API resource's type.
  ///
  /// The value will be `youtube#groupItemListResponse`.
  core.String? kind;

  ListGroupItemsResponse({
    this.errors,
    this.etag,
    this.items,
    this.kind,
  });

  ListGroupItemsResponse.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => GroupItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// Response message for GroupsService.ListGroups.
class ListGroupsResponse {
  /// Apiary error details
  Errors? errors;

  /// The Etag of this resource.
  core.String? etag;

  /// A list of groups that match the API request parameters.
  ///
  /// Each item in the list represents a `group` resource.
  core.List<Group>? items;

  /// Identifies the API resource's type.
  ///
  /// The value will be `youtube#groupListResponse`.
  core.String? kind;

  /// The token that can be used as the value of the `pageToken` parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  ListGroupsResponse({
    this.errors,
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  ListGroupsResponse.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Group.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for TargetedQueriesService.Query.
class QueryResponse {
  /// This value specifies information about the data returned in the `rows`
  /// fields.
  ///
  /// Each item in the `columnHeaders` list identifies a field returned in the
  /// `rows` value, which contains a list of comma-delimited data. The
  /// `columnHeaders` list will begin with the dimensions specified in the API
  /// request, which will be followed by the metrics specified in the API
  /// request. The order of both dimensions and metrics will match the ordering
  /// in the API request. For example, if the API request contains the
  /// parameters `dimensions=ageGroup,gender&metrics=viewerPercentage`, the API
  /// response will return columns in this order: `ageGroup`, `gender`,
  /// `viewerPercentage`.
  core.List<ResultTableColumnHeader>? columnHeaders;

  /// When set, indicates that the operation failed.
  Errors? errors;

  /// This value specifies the type of data included in the API response.
  ///
  /// For the query method, the kind property value will be
  /// `youtubeAnalytics#resultTable`.
  core.String? kind;

  /// The list contains all rows of the result table.
  ///
  /// Each item in the list is an array that contains comma-delimited data
  /// corresponding to a single row of data. The order of the comma-delimited
  /// data fields will match the order of the columns listed in the
  /// `columnHeaders` field. If no data is available for the given query, the
  /// `rows` element will be omitted from the response. The response for a query
  /// with the `day` dimension will not contain rows for the most recent days.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object?>>? rows;

  QueryResponse({
    this.columnHeaders,
    this.errors,
    this.kind,
    this.rows,
  });

  QueryResponse.fromJson(core.Map json_)
      : this(
          columnHeaders: json_.containsKey('columnHeaders')
              ? (json_['columnHeaders'] as core.List)
                  .map((value) => ResultTableColumnHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          errors: json_.containsKey('errors')
              ? Errors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => value as core.List)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnHeaders != null) 'columnHeaders': columnHeaders!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
        if (rows != null) 'rows': rows!,
      };
}

/// The description of a column of the result table.
class ResultTableColumnHeader {
  /// The type of the column (`DIMENSION` or `METRIC`).
  core.String? columnType;

  /// The type of the data in the column (`STRING`, `INTEGER`, `FLOAT`, etc.).
  core.String? dataType;

  /// The name of the dimension or metric.
  core.String? name;

  ResultTableColumnHeader({
    this.columnType,
    this.dataType,
    this.name,
  });

  ResultTableColumnHeader.fromJson(core.Map json_)
      : this(
          columnType: json_.containsKey('columnType')
              ? json_['columnType'] as core.String
              : null,
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnType != null) 'columnType': columnType!,
        if (dataType != null) 'dataType': dataType!,
        if (name != null) 'name': name!,
      };
}
