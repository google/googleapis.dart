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

/// Version History API - v1
///
/// Version History API - Prod
///
/// For more information, see <https://developers.chrome.com/versionhistory>
///
/// Create an instance of [VersionHistoryApi] to access these resources:
///
/// - [PlatformsResource]
///   - [PlatformsChannelsResource]
///     - [PlatformsChannelsVersionsResource]
///       - [PlatformsChannelsVersionsReleasesResource]
library versionhistory.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Version History API - Prod
class VersionHistoryApi {
  final commons.ApiRequester _requester;

  PlatformsResource get platforms => PlatformsResource(_requester);

  VersionHistoryApi(http.Client client,
      {core.String rootUrl = 'https://versionhistory.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PlatformsResource {
  final commons.ApiRequester _requester;

  PlatformsChannelsResource get channels =>
      PlatformsChannelsResource(_requester);

  PlatformsResource(commons.ApiRequester client) : _requester = client;

  /// Returns list of platforms that are available for a given product.
  ///
  /// The resource "product" has no resource name in its name.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The product, which owns this collection of platforms.
  /// Format: {product}
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Optional limit on the number of channels to include
  /// in the response. If unspecified, the server will pick an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListChannels` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPlatformsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPlatformsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/platforms';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPlatformsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PlatformsChannelsResource {
  final commons.ApiRequester _requester;

  PlatformsChannelsVersionsResource get versions =>
      PlatformsChannelsVersionsResource(_requester);

  PlatformsChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Returns list of channels that are available for a given platform.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The platform, which owns this collection of channels.
  /// Format: {product}/platforms/{platform}
  /// Value must have pattern `^\[^/\]+/platforms/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Optional limit on the number of channels to include
  /// in the response. If unspecified, the server will pick an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListChannels` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/channels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListChannelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PlatformsChannelsVersionsResource {
  final commons.ApiRequester _requester;

  PlatformsChannelsVersionsReleasesResource get releases =>
      PlatformsChannelsVersionsReleasesResource(_requester);

  PlatformsChannelsVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns list of version for the given platform/channel.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The channel, which owns this collection of versions.
  /// Format: {product}/platforms/{platform}/channels/{channel}
  /// Value must have pattern `^\[^/\]+/platforms/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter string. Format is a comma separated list of
  /// All comma separated filter clauses are conjoined with a logical "and".
  /// Valid field_names are "version", "name", "platform", and "channel". Valid
  /// operators are "\<", "\<=", "=", "\>=", and "\>". Channel comparison is
  /// done by distance from stable. Ex) stable \< beta, beta \< dev, canary \<
  /// canary_asan. Version comparison is done numerically. If version is not
  /// entirely written, the version will be appended with 0 in missing fields.
  /// Ex) version \> 80 becoms version \> 80.0.0.0 Name and platform are
  /// filtered by string comparison. Ex) "...?filter=channel\<=beta, version \>=
  /// 80 Ex) "...?filter=version \> 80, version \< 81
  ///
  /// [orderBy] - Optional. Ordering string. Valid order_by strings are
  /// "version", "name", "platform", and "channel". Optionally, you can append "
  /// desc" or " asc" to specify the sorting order. Multiple order_by strings
  /// can be used in a comma separated list. Ordering by channel will sort by
  /// distance from the stable channel (not alphabetically). A list of channels
  /// sorted in this order is: stable, beta, dev, canary, and canary_asan.
  /// Sorting by name may cause unexpected behaviour as it is a naive string
  /// sort. For example, 1.0.0.8 will be before 1.0.0.10 in descending order. If
  /// order_by is not specified the response will be sorted by version in
  /// descending order. Ex) "...?order_by=version asc" Ex)
  /// "...?order_by=platform desc, channel, version"
  ///
  /// [pageSize] - Optional. Optional limit on the number of versions to include
  /// in the response. If unspecified, the server will pick an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListVersions` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PlatformsChannelsVersionsReleasesResource {
  final commons.ApiRequester _requester;

  PlatformsChannelsVersionsReleasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns list of releases of the given version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version, which owns this collection of releases.
  /// Format:
  /// {product}/platforms/{platform}/channels/{channel}/versions/{version}
  /// Value must have pattern
  /// `^\[^/\]+/platforms/\[^/\]+/channels/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter string. Format is a comma separated list of
  /// All comma separated filter clauses are conjoined with a logical "and".
  /// Valid field_names are "version", "name", "platform", "channel", "fraction"
  /// "starttime", and "endtime". Valid operators are "\<", "\<=", "=", "\>=",
  /// and "\>". Channel comparison is done by distance from stable. must be a
  /// valid channel when filtering by channel. Ex) stable \< beta, beta \< dev,
  /// canary \< canary_asan. Version comparison is done numerically. Ex) 1.0.0.8
  /// \< 1.0.0.10. If version is not entirely written, the version will be
  /// appended with 0 for the missing fields. Ex) version \> 80 becoms version
  /// \> 80.0.0.0 When filtering by starttime or endtime, string must be in RFC
  /// 3339 date string format. Name and platform are filtered by string
  /// comparison. Ex) "...?filter=channel\<=beta, version \>= 80 Ex)
  /// "...?filter=version \> 80, version \< 81 Ex)
  /// "...?filter=starttime\>2020-01-01T00:00:00Z
  ///
  /// [orderBy] - Optional. Ordering string. Valid order_by strings are
  /// "version", "name", "starttime", "endtime", "platform", "channel", and
  /// "fraction". Optionally, you can append "desc" or "asc" to specify the
  /// sorting order. Multiple order_by strings can be used in a comma separated
  /// list. Ordering by channel will sort by distance from the stable channel
  /// (not alphabetically). A list of channels sorted in this order is: stable,
  /// beta, dev, canary, and canary_asan. Sorting by name may cause unexpected
  /// behaviour as it is a naive string sort. For example, 1.0.0.8 will be
  /// before 1.0.0.10 in descending order. If order_by is not specified the
  /// response will be sorted by starttime in descending order. Ex)
  /// "...?order_by=starttime asc" Ex) "...?order_by=platform desc, channel,
  /// startime desc"
  ///
  /// [pageSize] - Optional. Optional limit on the number of releases to include
  /// in the response. If unspecified, the server will pick an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListReleases` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListReleasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Each Channel is owned by a Platform and owns a collection of versions.
///
/// Possible Channels are listed in the Channel enum below. Not all Channels are
/// available for every Platform (e.g. CANARY does not exist for LINUX).
class Channel {
  /// Type of channel.
  /// Possible string values are:
  /// - "CHANNEL_TYPE_UNSPECIFIED"
  /// - "STABLE"
  /// - "BETA"
  /// - "DEV"
  /// - "CANARY"
  /// - "CANARY_ASAN"
  /// - "ALL"
  /// - "EXTENDED"
  core.String? channelType;

  /// Channel name.
  ///
  /// Format is "{product}/platforms/{platform}/channels/{channel}"
  core.String? name;

  Channel({
    this.channelType,
    this.name,
  });

  Channel.fromJson(core.Map _json)
      : this(
          channelType: _json.containsKey('channelType')
              ? _json['channelType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelType != null) 'channelType': channelType!,
        if (name != null) 'name': name!,
      };
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// Response message for ListChannels.
class ListChannelsResponse {
  /// The list of channels.
  core.List<Channel>? channels;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListChannelsResponse({
    this.channels,
    this.nextPageToken,
  });

  ListChannelsResponse.fromJson(core.Map _json)
      : this(
          channels: _json.containsKey('channels')
              ? (_json['channels'] as core.List)
                  .map((value) => Channel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channels != null) 'channels': channels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListPlatforms.
class ListPlatformsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of platforms.
  core.List<Platform>? platforms;

  ListPlatformsResponse({
    this.nextPageToken,
    this.platforms,
  });

  ListPlatformsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          platforms: _json.containsKey('platforms')
              ? (_json['platforms'] as core.List)
                  .map((value) => Platform.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (platforms != null) 'platforms': platforms!,
      };
}

/// Response message for ListReleases.
class ListReleasesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of releases.
  core.List<Release>? releases;

  ListReleasesResponse({
    this.nextPageToken,
    this.releases,
  });

  ListReleasesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          releases: _json.containsKey('releases')
              ? (_json['releases'] as core.List)
                  .map((value) => Release.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (releases != null) 'releases': releases!,
      };
}

/// Response message for ListVersions.
class ListVersionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of versions.
  core.List<Version>? versions;

  ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  ListVersionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          versions: _json.containsKey('versions')
              ? (_json['versions'] as core.List)
                  .map((value) => Version.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (versions != null) 'versions': versions!,
      };
}

/// Each Platform is owned by a Product and owns a collection of channels.
///
/// Available platforms are listed in Platform enum below. Not all Channels are
/// available for every Platform (e.g. CANARY does not exist for LINUX).
class Platform {
  /// Platform name.
  ///
  /// Format is "{product}/platforms/{platform}"
  core.String? name;

  /// Type of platform.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED"
  /// - "WIN"
  /// - "WIN64"
  /// - "MAC"
  /// - "LINUX"
  /// - "ANDROID"
  /// - "WEBVIEW"
  /// - "IOS"
  /// - "ALL"
  /// - "MAC_ARM64"
  /// - "LACROS"
  /// - "LACROS_ARM32"
  /// - "CHROMEOS"
  core.String? platformType;

  Platform({
    this.name,
    this.platformType,
  });

  Platform.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          platformType: _json.containsKey('platformType')
              ? _json['platformType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (platformType != null) 'platformType': platformType!,
      };
}

/// A Release is owned by a Version.
///
/// A Release contains information about the release(s) of its parent version.
/// This includes when the release began and ended, as well as what percentage
/// it was released at. If the version is released again, or if the serving
/// percentage changes, it will create another release under the version.
class Release {
  /// Rollout fraction.
  ///
  /// This fraction indicates the fraction of people that should receive this
  /// version in this release. If the fraction is not specified in
  /// ReleaseManager, the API will assume fraction is 1.
  core.double? fraction;

  /// Release name.
  ///
  /// Format is
  /// "{product}/platforms/{platform}/channels/{channel}/versions/{version}/releases/{release}"
  core.String? name;

  /// Timestamp interval of when the release was live.
  ///
  /// If end_time is unspecified, the release is currently live.
  Interval? serving;

  /// String containing just the version number.
  ///
  /// e.g. "84.0.4147.38"
  core.String? version;

  Release({
    this.fraction,
    this.name,
    this.serving,
    this.version,
  });

  Release.fromJson(core.Map _json)
      : this(
          fraction: _json.containsKey('fraction')
              ? (_json['fraction'] as core.num).toDouble()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          serving: _json.containsKey('serving')
              ? Interval.fromJson(
                  _json['serving'] as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fraction != null) 'fraction': fraction!,
        if (name != null) 'name': name!,
        if (serving != null) 'serving': serving!,
        if (version != null) 'version': version!,
      };
}

/// Each Version is owned by a Channel.
///
/// A Version only displays the Version number (e.g. 84.0.4147.38). A Version
/// owns a collection of releases.
class Version {
  /// Version name.
  ///
  /// Format is
  /// "{product}/platforms/{platform}/channels/{channel}/versions/{version}"
  /// e.g. "chrome/platforms/win/channels/beta/versions/84.0.4147.38"
  core.String? name;

  /// String containing just the version number.
  ///
  /// e.g. "84.0.4147.38"
  core.String? version;

  Version({
    this.name,
    this.version,
  });

  Version.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}
